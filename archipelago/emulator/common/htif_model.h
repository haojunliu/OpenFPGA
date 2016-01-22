#ifndef __HTIF_H
#define __HTIF_H

//modified to talk to Chisel mem_t<w,d>, instead of a C++ (uint64_t*) memory
#define CM_WIDTH (32)
#define CM_NUM_LINES (32768)

#include "emulator.h"
#include <string.h>

struct packet;
#include <stdint.h>

class htif_t
{
public:
//  htif_t(int _fromhost_fd, int _tohost_fd, uint64_t *_mem, int _asmtest);
//  designed for harvard memories...
  htif_t(int _fromhost_fd, int _tohost_fd, mem_t<CM_WIDTH,CM_NUM_LINES> *_imem, mem_t<CM_WIDTH,CM_NUM_LINES> *_dmem, int _asmtest);
  void send_packet(packet* p);
  void tick();

  int fromhost_fd;
  int tohost_fd;
//  uint64_t *mem;
  mem_t<CM_WIDTH,CM_NUM_LINES> *imem;
  mem_t<CM_WIDTH,CM_NUM_LINES> *dmem;
  uint16_t seqno;
  int asmtest;
  int count;
  int start;
  int stop;
  int fromhost_wen;
  uint64_t fromhost;
  uint64_t tohost;
};

#endif // __HTIF_H
