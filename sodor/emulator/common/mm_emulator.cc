#include <iostream>
#include <fstream>
#include "mm_types.h"
#include "mm_param.h"
#include "mm_model.h"
#include "mm_model.cc"

typedef mm_cache_line_data_t<MM_WORD_SIZE> mm_word_t;

mm_magic_memory_t<mm_word_t, refill_size>* mm = NULL;

extern "C" {

uint64_t *mm_init()
{
  uint64_t *mem = (uint64_t *) malloc(MEMORY_SIZE);
  assert(mem);
  mm = new mm_magic_memory_t<mm_word_t, refill_size>((char*)mem, MEMORY_SIZE, mem_latency);
  return mem;
}

void load_mem(uint64_t* mem, const char* fn)
{
  char* m = (char*)mem;
  std::ifstream in(fn);
  if (!in)
  {
    std::cerr << "could not open " << fn << std::endl;
    exit(-1);
  }

  std::string line;
  while (std::getline(in, line))
  {
    #define parse_nibble(c) ((c) >= 'a' ? (c)-'a'+10 : (c)-'0')
    for (ssize_t i = line.length()-2, j = 0; i >= 0; i -= 2, j++)
    {
      m[j] = (parse_nibble(line[i]) << 4) | parse_nibble(line[i+1]);
    }
    m += line.length()/2;
  }
}

void mm_tick_emulator(
  uint64_t   mem_req_val,
  uint64_t * mem_req_rdy,
  uint64_t   mem_req_store,
  uint64_t   mem_req_addr,
  uint64_t   mem_req_tag,

  uint64_t   mem_req_data_val,
  uint64_t * mem_req_data_rdy,
  uint64_t * mem_req_data_bits,

  uint64_t * mem_resp_val,
  uint64_t * mem_resp_tag,
  uint64_t * mem_resp_data)
{
  static int store_inflight = 0;
  static int store_count = 0;
  static uint64_t store_addr;

  static int clk_div = 0;
  bool clk_en = clk_div % mem_clock_divide == 0;

  if (clk_en && !mm->request_queue_full())
  {
    mm_cpu_cache_request_t<mm_word_t> mem_req;
    mem_req.valid = true;
    if (store_inflight && mem_req_data_val)
    {
      mem_req.addr = store_addr * (MM_WORD_SIZE*refill_size);
      memset(mem_req.bytemask, 1, sizeof(mem_req.bytemask));
      memcpy(&mem_req.data, mem_req_data_bits, MM_WORD_SIZE);
      mem_req.type = op_st;
      mm->request(mem_req);

      store_count = (store_count + 1) % refill_size;
      if (store_count == 0)
        store_inflight = 0;


//       fprintf(stderr, "\nPerforming Store: addr: 0x%x data: "
//         , mem_req.addr
//         );

//       for (int i=0; i < MM_WORD_SIZE; i++)
//          fprintf(stderr, "0x%x_%x ", (mem_req_data_bits[i] & 0xffff0000) >> 16, mem_req_data_bits[i] & 0xffff);
//       fprintf(stderr, "\n");

    }
    else if (!store_inflight && mem_req_val && !mem_req_store)
    {
      mem_req.addr = mem_req_addr * (MM_WORD_SIZE*refill_size);
      mem_req.tag = mem_req_tag;
      mem_req.type = op_ld;
      mm->request(mem_req);
    }
    else if (!store_inflight && mem_req_val)
    {
      store_inflight = 1;
      store_addr = mem_req_addr;
    }
  }

  if (clk_en)
    mm->tick();

  clk_en = false;
  if (++clk_div % mem_clock_divide == 0)
    clk_en = true, clk_div = 0;

  if(clk_en && !mm->response_queue_empty())
  {
    mm_cpu_cache_response_t<mm_word_t> resp;

    resp = mm->peek_response();
    mm->dequeue_response();

    *mem_resp_val = 1;
    *mem_resp_tag = resp.tag;
    memcpy(mem_resp_data, &resp.data, MM_WORD_SIZE);
  }
  else
    *mem_resp_val = 0;

  *mem_req_rdy = clk_en && !mm->request_queue_full() && !store_inflight;
  *mem_req_data_rdy = clk_en && !mm->request_queue_full() && store_inflight;
}

}
