#!/bin/bash
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
mv lut_tile.v lut_tile_old.v
# regenerate xbar
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python ../../lut_tile_sp/tools/config_latches_replace.py --src-file lut_tile_old.v > lut_tile.v
rm -rf lut_tile_old.v
cd ..
