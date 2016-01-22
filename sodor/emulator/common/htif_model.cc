#include "common.h"
#include "htif_model.h"

#include <unistd.h>
#include <stdio.h>
#include <stdexcept>

//#define DEBUG

enum
{
  APP_CMD_READ_MEM,
  APP_CMD_WRITE_MEM,
  APP_CMD_READ_CONTROL_REG,
  APP_CMD_WRITE_CONTROL_REG,
  APP_CMD_START,
  APP_CMD_STOP,
  APP_CMD_ACK,
  APP_CMD_NACK
};

#define APP_DATA_ALIGN 16
#define APP_MAX_DATA_SIZE 16
#define MEMSZ 0x10000000

struct packet
{
  uint16_t cmd;
  uint16_t seqno;
  uint32_t data_size;
  uint64_t addr;
  uint8_t  data[APP_MAX_DATA_SIZE];
};

class packet_error : public std::runtime_error
{
public:
  packet_error(const std::string& s) : std::runtime_error(s) {}
};

class io_error : public packet_error
{
public:
  io_error(const std::string& s) : packet_error(s) {}
};

#if 0
htif_t::htif_t(int _fromhost_fd, int _tohost_fd, uint64_t *_mem, int _asmtest)
    : fromhost_fd(_fromhost_fd)
    , tohost_fd(_tohost_fd)
    , mem(_mem)
    , asmtest(_asmtest)
    , seqno(1)
    , count(0)
    , start(0)
    , stop(0)
    , tohost(0)
    , fromhost_wen(0)
    , fromhost(0)
{
}
#endif

htif_t::htif_t(int _fromhost_fd, int _tohost_fd, mem_t<CM_WIDTH,CM_NUM_LINES> *_imem, mem_t<CM_WIDTH,CM_NUM_LINES> *_dmem, int _asmtest)
    : fromhost_fd(_fromhost_fd)
    , tohost_fd(_tohost_fd)
    , imem(_imem)
    , dmem(_dmem)
    , asmtest(_asmtest)
    , seqno(1)
    , count(0)
    , start(0)
    , stop(0)
    , tohost(0)
    , fromhost_wen(0)
    , fromhost(0)
{
}

void htif_t::send_packet(packet* p)
{
  while (1) try
    {
      int bytes = write(tohost_fd,p,offsetof(packet,data)+p->data_size);
      if (bytes == -1 || (size_t)bytes != offsetof(packet,data)+p->data_size)
        throw io_error("write failed");
      return;
    }
    catch (io_error e)
    {
      fprintf(stderr,"warning: %s\n",e.what());
    }
}

void htif_t::tick()
{
  if (fromhost_wen)
  {
    fromhost_wen = 0;
  }

  if (start)
  {
    count++;
    if (count == 1000)
      count = 0;
  }

  if ((count > 0) && !asmtest)
  {
    return;
  }

  packet p;
  int bytes = read(fromhost_fd,&p,sizeof(p));

  if (bytes == -1)
  {
    return;
  }

  if (p.seqno != seqno)
  {
    printf("nack bytes=%d p.seqno=%d seqno=%d p.cmd=%d p.addr=%016llx!\n", bytes, p.seqno, seqno, p.cmd, p.addr);
    return;
  }

#ifdef DEBUG
  printf("bytes=%d ", bytes);
  printf("p.cmd=%d  ", p.cmd);
  printf("p.addr=%08x ", p.addr);
  printf("p.data=%016llx %016llx \n", *((uint64_t*)&p.data[0]),*((uint64_t*)&p.data[8]));
#endif

  switch (p.cmd)
  {
  case APP_CMD_START:
    start = 1;
    {
      packet ackpacket = {APP_CMD_ACK,seqno,0,0};
      send_packet(&ackpacket);
      seqno++;
    }
    break;

  case APP_CMD_STOP:
    stop = 1;
    {
      packet ackpacket = {APP_CMD_ACK,seqno,0,0};
      send_packet(&ackpacket);
      seqno++;
    }
    break;

  case APP_CMD_READ_MEM:
    demand(p.addr % APP_DATA_ALIGN == 0, "misaligned address");
    demand(p.data_size % APP_DATA_ALIGN == 0, "misaligned data");
    demand(p.data_size <= APP_MAX_DATA_SIZE, "long read data");
    demand(p.addr <= MEMSZ && p.addr+p.data_size <= MEMSZ, "out of bounds");
    {
      packet ackpacket = {APP_CMD_ACK,seqno,0,0};
//      memcpy(ackpacket.data,(char*)&mem[p.addr >> 3], APP_MAX_DATA_SIZE);

#ifdef MEM_WIDTH_IS_64
      demand(CM_WIDTH == 64, "bad Chisel memory width"); 
#else
      demand(CM_WIDTH == 32, "bad Chisel memory width"); 
#endif
      for (int i=0; i < APP_MAX_DATA_SIZE; i+=(CM_WIDTH/8))
      {
#ifdef MEM_WIDTH_IS_64
         uint64_t temp = imem->get(dat_t<64>((p.addr + i) >> 3)).lo_word();
#else
         uint32_t temp = imem->get(dat_t<32>((p.addr + i) >> 2)).lo_word();
#endif

//         printf("READ MEM(idx=%d) ADDR:[0x%llx]: 0x%llx\n", ((p.addr + i) >> 3), p.addr, temp);
//         printf("ackpacket.dat size: %d, i=%d, tempaddr=0x%x addr=0x%x, cm_width=%d\n", sizeof(ackpacket.data), i, &temp, &(ackpacket.data), CM_WIDTH);
         memcpy( &((ackpacket.data)[i]), (char*) &temp, (CM_WIDTH/8));
         
         //write
//         memcpy((char*) &temp, &((p.data)[i]), (CM_WIDTH/8));
//         printf("Did I crash?\n");
         fflush(NULL);
      }
      ackpacket.data_size = APP_MAX_DATA_SIZE;
      send_packet(&ackpacket);
      seqno++;
    }
    break;

  case APP_CMD_WRITE_MEM:
    demand(p.addr % APP_DATA_ALIGN == 0, "misaligned address");
    demand(p.data_size % APP_DATA_ALIGN == 0, "misaligned data");
    demand(p.data_size <= bytes - offsetof(packet,data), "short packet");
    demand(p.addr <= MEMSZ && p.addr+p.data_size <= MEMSZ, "out of bounds");
//    memcpy(&mem[p.addr >> 3], p.data, APP_MAX_DATA_SIZE);

    //TODO pull out htif data in "w" chunks to put into "mem"
    demand((APP_MAX_DATA_SIZE % (CM_WIDTH/8))  == 0, "APP_MAX_DATA_SIZE not a multiple of Chisel memory width"); 
#ifdef MEM_WIDTH_IS_64
    demand(CM_WIDTH == 64, "bad Chisel memory width"); 
#else
    demand(CM_WIDTH == 32, "bad Chisel memory width"); 
#endif
    for (int i=0; i < APP_MAX_DATA_SIZE; i+=(CM_WIDTH/8))
    {
      // i is number of bytes through the payload
#ifdef MEM_WIDTH_IS_64
      uint64_t temp;
      memcpy((char*) &temp, &((p.data)[i]), (CM_WIDTH/8));
      
//      printf("WRITE MEM(idx=%d) ADDR:[0x%llx]: 0x%16llx, 0x%16llx\n", 
//         ((p.addr + i) >> 3), p.addr, temp, LIT<CM_WIDTH>(temp).lo_word());
      
//      mem->put(((p.addr + i) >> 3), LIT<CM_WIDTH>(temp));
      imem->put(((p.addr + i) >> 3), (temp));
      dmem->put(((p.addr + i) >> 3), (temp));
#else
      uint32_t temp;
      memcpy((char*) &temp, &((p.data)[i]), (CM_WIDTH/8));
      imem->put(((p.addr + i) >> 2), (temp));
      dmem->put(((p.addr + i) >> 2), (temp));

#endif
//      mem->print();
    }
    {
      packet ackpacket = {APP_CMD_ACK,seqno,0,0};
      send_packet(&ackpacket);
      seqno++;
    }
    break;

  case APP_CMD_READ_CONTROL_REG:
    demand(p.addr == 16,"bad control reg");
    demand(p.data_size == sizeof(tohost),"bad control reg size");
    {
      packet ackpacket = {APP_CMD_ACK,seqno,0,0};
      ackpacket.data_size = sizeof(tohost);
      memcpy(ackpacket.data,(char*)&tohost,APP_MAX_DATA_SIZE);
      send_packet(&ackpacket);
      seqno++;
    }
    break;

  case APP_CMD_WRITE_CONTROL_REG:
    demand(p.addr == 17,"bad control reg");
    demand(p.data_size == sizeof(fromhost),"bad control reg size");
    fromhost_wen = 1;
    fromhost = *(long long*)&p.data;
    {
      packet ackpacket = {APP_CMD_ACK,seqno,0,0};
      send_packet(&ackpacket);
      seqno++;
    }
    break;
  }
}
