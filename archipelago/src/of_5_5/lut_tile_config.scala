package fpga_components
{

import Chisel._
import scala.math._

object LutConstants { 
    // LUT CONFIG
    var VAR_NUM_INPUTS_PER_LUT = 6
    var VAR_NUM_OUTPUTS_PER_LUT = 1
    var VAR_NUM_CONFIGS_PER_LUT = 64
    var VAR_NUM_MUXES_PER_LUT = 1
    // CLB CONFIG
    var VAR_NUM_CLB_IN = 60
    var VAR_NUM_CLB_OUT = 10
    var VAR_NUM_LUTS_PER_CLB = 10
    var VAR_NUM_CLB_LUT_CONFIGS = 640
    var VAR_NUM_CLB_MUX_CONFIGS = 10
    var VAR_TOTAL_MUX_CONFIGS = 10
    var VAR_NUM_IPIN_PER_TILE = 33
    var VAR_NUM_OPIN_PER_TILE = 10
    var VAR_NUM_XBAR_INPUTS = 43
    var VAR_NUM_XBAR_OUTPUTS = 60
    var VAR_NUM_XBAR_PER_MUX_CONFIGS = 6
    var VAR_NUM_XBAR_CONFIGS = 360
    var VAR_TOTAL_XBAR_CONFIGS = 360
    var VAR_IPIN_INPUT_WIDTH = 16
    var VAR_IPIN_CONFIG_WIDTH = 4
    var VAR_NUM_CHANXY_PER_TILE = 80
    var TOTAL_CHANXY_IN = 880
    var VAR_CHANXY_INPUT_WIDTH_ARR = Array(11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11)
    var VAR_CHANXY_CONFIG_WIDTH_ARR = Array(4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4)
    var VAR_CHANXY_INPUT_START_ARR = Array(0,11,22,33,44,55,66,77,88,99,110,121,132,143,154,165,176,187,198,209,220,231,242,253,264,275,286,297,308,319,330,341,352,363,374,385,396,407,418,429,440,451,462,473,484,495,506,517,528,539,550,561,572,583,594,605,616,627,638,649,660,671,682,693,704,715,726,737,748,759,770,781,792,803,814,825,836,847,858,869)
    var VAR_CHANXY_CONFIG_START_ARR = Array(0,4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100,104,108,112,116,120,124,128,132,136,140,144,148,152,156,160,164,168,172,176,180,184,188,192,196,200,204,208,212,216,220,224,228,232,236,240,244,248,252,256,260,264,268,272,276,280,284,288,292,296,300,304,308,312,316)
    var VAR_LUT_CONFIGS_START = 0
    var VAR_LUT_CONFIGS_END = VAR_LUT_CONFIGS_START + VAR_NUM_CLB_LUT_CONFIGS - 1
    var VAR_MUX_CONFIGS_START = VAR_NUM_CLB_LUT_CONFIGS
    var VAR_MUX_CONFIGS_END = VAR_MUX_CONFIGS_START + VAR_TOTAL_MUX_CONFIGS - 1
    var VAR_XBAR_CONFIGS_START = VAR_MUX_CONFIGS_END + 1
    var VAR_XBAR_CONFIGS_END = VAR_XBAR_CONFIGS_START + VAR_TOTAL_XBAR_CONFIGS - 1
    var VAR_TOTAL_IPIN_CONFIGS = 132
    var VAR_SBCB_IPIN_CONFIGS_START = VAR_XBAR_CONFIGS_END + 1
    var VAR_SBCB_IPIN_CONFIGS_END = VAR_SBCB_IPIN_CONFIGS_START + VAR_TOTAL_IPIN_CONFIGS - 1
    var VAR_TOTAL_CHANXY_CONFIGS = 320
    var VAR_SBCB_CHANXY_CONFIGS_START = VAR_SBCB_IPIN_CONFIGS_END + 1
    var VAR_SBCB_CHANXY_CONFIGS_END = VAR_SBCB_CHANXY_CONFIGS_START + VAR_TOTAL_CHANXY_CONFIGS - 1
    var VAR_TOTAL_NUM_CONFIGS = VAR_SBCB_CHANXY_CONFIGS_END + 1
    var VAR_CONFIGS_FILE_DEPTH = 1 + (VAR_TOTAL_NUM_CONFIGS/32)
}

}

