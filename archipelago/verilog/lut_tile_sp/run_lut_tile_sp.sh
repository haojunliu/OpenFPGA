#!/bin/bash
make
cp generated-src/lut_tile_sp_gen.v tools/lut_tile_sp_gen_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "lut4 lut5 lut6 lut6s clb xbar configs_latches lut_tile_sp_gen" --src-file lut_tile_sp_gen_old.v > lut_tile_sp_gen.v
mv lut_tile_sp_gen.v lut_tile_sp_gen_old.v
~/bin/python config_latches_replace.py --src-file lut_tile_sp_gen_old.v > lut_tile_sp_gen.v
mv lut_tile_sp_gen.v lut_tile_sp_gen_old.v
~/bin/python lut_tile_rename.py --src-file lut_tile_sp_gen_old.v > lut_tile_sp_gen.v
rm -rf lut_tile_sp_gen_old.v
