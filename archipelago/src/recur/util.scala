package recur

import Chisel._

object DataConverter
{
  def convert_Array_to_Bits (d_in: Array[Bits], depth: Int, iter: Int): Bits =
  {
    val return_bits = Bits (width = iter);

    if (iter == 1)  {
      return_bits := d_in(0);
    }
    else if (iter == 2) {
      return_bits := Cat (d_in(1), d_in(0));
    }
    else{
      return_bits := Cat (d_in(iter - 1), convert_Array_to_Bits(d_in, depth, iter - 1));
    }

    return return_bits
  }
}
