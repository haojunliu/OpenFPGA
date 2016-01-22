#include "mm_model.h"
#include "common.h"
#include <stdexcept>

//#define DEBUG

template<class word_t, int numwords>
mm_magic_memory_t<word_t,numwords>::mm_magic_memory_t(char* _mem, vaddr_t _memsz, int _latency)
 : mem(_mem), memsz(_memsz), latency(_latency), store_pos(0),
   resp(2*latency)
{
}

template<class word_t, int numwords>
bool mm_magic_memory_t<word_t,numwords>::request_queue_full()
{
  return req.valid;
}

template<class word_t, int numwords>
bool mm_magic_memory_t<word_t,numwords>::response_queue_empty()
{
  return !resp[0].valid;
}

template<class word_t, int numwords>
void mm_magic_memory_t<word_t,numwords>::request(mm_cpu_cache_request_t<word_t> r)
{
  demand(!request_queue_full(), "attempted to request() while blocked!");

  req = r;

  if (r.valid)
  {
    demand(store_pos == 0 || (r.addr == store_addr && r.type == op_st),
           "a store was interrupted by another access!");

    if (r.type == op_st)
    {
      if (store_pos == 0)
        store_addr = r.addr;

      set_word(r.addr + store_pos*sizeof(word_t),r.data,r.bytemask);

#ifdef DEBUG
      long long* ptr = (long long*)&r.data;
      fprintf(stderr, "store : addr=%016llx : data=", (long long)r.addr + store_pos*sizeof(word_t));
      for (int j = sizeof(word_t)/sizeof(long long)-1; j >= 0; j--)
        fprintf(stderr, "%016llx", ptr[j]);
      fprintf(stderr, "\n");
#endif

      store_pos = (store_pos + 1) % numwords;
    }
  }
}

template<class word_t, int numwords>
mm_cpu_cache_response_t<word_t> mm_magic_memory_t<word_t,numwords>::peek_response()
{
  return resp[0];
}

template<class word_t, int numwords>
void mm_magic_memory_t<word_t,numwords>::dequeue_response()
{
  demand(!response_queue_empty(),
         "attempted to get_response() while response_queue_empty!");

  resp[0].valid = false;
}

template<class word_t, int numwords>
void mm_magic_memory_t<word_t,numwords>::tick()
{
  for (int i = 0; i < (2*latency)-1; i++)
    resp[i] = resp[i+1];

  resp[(2*latency-1)].valid = false;

  if (req.valid)
  {
    if (req.type == op_ld)
    {
      int next;
      for (next = latency-1; (next < 2*latency) && resp[next].valid; next++);
      if ((next < (2*latency)-numwords) && req.valid && (req.type == op_ld))
      {
        for (int i = 0; i < numwords; i++)
        {
#ifdef DEBUG
          fprintf(stderr, "load  : addr=%016llx : data=", (long long)req.addr + i*sizeof(word_t));
          fflush(stdout);
#endif
          resp[next+i].valid = true;
          resp[next+i].type  = req.type;
          resp[next+i].tag   = req.tag;
          resp[next+i].data  = req.type == op_ld ? get_word(req.addr+(i*sizeof(word_t))) : word_t();

#ifdef DEBUG
          long long* ptr = (long long*)&resp[next+i].data;
          for (int j = sizeof(word_t)/sizeof(long long)-1; j >= 0; j--)
            fprintf(stderr, "%016llx", ptr[j]);
          fprintf(stderr, "\n");
#endif
        }
        mm_cache_t<word_t>::num_loads  += req.type == op_ld;
        mm_cache_t<word_t>::num_load_hits  += req.type == op_ld;
        req.valid = false;
      }
    }
    else if (req.type == op_st)
    {
      mm_cache_t<word_t>::num_stores += req.type == op_st;
      mm_cache_t<word_t>::num_store_hits += req.type == op_st;
      req.valid = false;
    }
  }
}

template<class word_t, int numwords>
word_t mm_magic_memory_t<word_t,numwords>::get_word(vaddr_t addr)
{
  demand(addr % sizeof(word_t) == 0, "misaligned load address %016llx", (long long)addr);
  addr %= memsz;
  //demand(addr < memsz, "load address %016llx out of bounds", (long long)addr);

  word_t retval;
  memcpy(retval.data, &mem[addr], sizeof(word_t));

  return retval;
}

template<class word_t, int numwords>
void mm_magic_memory_t<word_t,numwords>::set_word(vaddr_t addr, word_t word, bool bytemask[sizeof(word_t)])
{
  demand(addr % sizeof(word_t) == 0, "misaligned store address %016llx", (long long)addr);
  addr %= memsz;
  //demand(addr < memsz, "store address %016llx out of bounds", (long long)addr);

  char* dst = &mem[addr];
  const char* src = (const char*)&word;
  for (int i = 0; i < sizeof(word_t); i++)
    if (bytemask[i])
      dst[i] = src[i];
}
