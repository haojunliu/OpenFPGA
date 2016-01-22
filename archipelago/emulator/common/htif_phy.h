#ifndef _HTIF_PHY_H
#define _HTIF_PHY_H

#include <stdint.h>
#include <assert.h>
#include <string.h>
#include <unistd.h>

class htif_phy_t
{
 public:
  htif_phy_t(int _width, int fromfd, int tofd)
   : rx_buf_pos(0), rx_buf_len(0), tx_buf_pos(0), state_tx(0),
     fromhost_fd(fromfd), tohost_fd(tofd), width(_width)
  {
    memset(tx_buf, 0, sizeof(tx_buf));
    assert(64 % width == 0);
  }
  bool in_valid()
  {
    return state_tx == 0 && rx_buf_len > 0;
  }
  uint64_t in_bits()
  {
    return (rx_buf[rx_buf_pos/64] >> (rx_buf_pos%64)) & ((1L<<width)-1);
  }
  bool out_ready()
  {
    return state_tx == 1 && tx_buf_pos < 8*sizeof(tx_buf);
  }
  void tick(bool in_ready, bool out_valid, uint64_t out_bits)
  {
    if (in_ready && in_valid())
    {
      rx_buf_pos += width;
      if (rx_buf_pos == rx_buf_len)
        state_tx = 1;
    }
    else if(rx_buf_len == 0)
    {
      ssize_t bytes = read(fromhost_fd, rx_buf, sizeof(rx_buf));
      assert(bytes > 0);
      rx_buf_len = bytes*8;
    }

    if (out_ready() && out_valid)
    {
      tx_buf[tx_buf_pos/64] |= out_bits << (tx_buf_pos%64);
      tx_buf_pos += width;
      if (tx_buf_pos >= 64)
      {
        int data_size = (tx_buf[0] >> 4) & 0xFFF;
        if (tx_buf_pos == (1+data_size)*64)
        {
          assert(tx_buf_pos/8 == write(tohost_fd, tx_buf, tx_buf_pos/8));
          rx_buf_len = rx_buf_pos = tx_buf_pos = 0;
          memset(tx_buf, 0, sizeof(tx_buf));
          state_tx = 0;
        }
      }
    }
  }

 private:
  uint64_t rx_buf[257], tx_buf[257];
  ssize_t rx_buf_pos;
  ssize_t rx_buf_len;
  ssize_t tx_buf_pos;
  int state_tx;

  int fromhost_fd;
  int tohost_fd;
  int width;
};

#endif
