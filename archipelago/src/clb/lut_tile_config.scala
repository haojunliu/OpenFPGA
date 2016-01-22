package fpga_components
{

import Chisel._
import scala.math._

object LutConstants { 
    // LUT CONFIG
    var VAR_NUM_INPUTS_PER_LUT = 4
    var VAR_NUM_OUTPUTS_PER_LUT = 1
    var VAR_NUM_CONFIGS_PER_LUT = 16
    var VAR_NUM_MUXES_PER_LUT = 1 
    // CLB CONFIG
    var VAR_NUM_CLB_IN = 16
    var VAR_NUM_CLB_OUT = 4
    var VAR_NUM_LUTS_PER_CLB = 4
    var VAR_NUM_CLB_LUT_CONFIGS = 64
    var VAR_NUM_CLB_MUX_CONFIGS = 4
    var VAR_TOTAL_MUX_CONFIGS = 4
}

}
