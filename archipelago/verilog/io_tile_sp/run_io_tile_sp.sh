#!/bin/bash
make
cp generated-src/io_tile_sp_gen.v tools/io_tile_sp_gen_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "lut4 lut5 lut6 lut6s clb xbar configs_latches io_tile_sp_gen" --src-file io_tile_sp_gen_old.v > io_tile_sp_gen.v
mv io_tile_sp_gen.v io_tile_sp_gen_old.v
~/bin/python config_latches_replace.py --src-file io_tile_sp_gen_old.v > io_tile_sp_gen.v
mv io_tile_sp_gen.v io_tile_sp_gen_old.v
~/bin/python io_tile_rename.py --src-file io_tile_sp_gen_old.v > io_tile_sp_gen.v
rm -rf io_tile_sp_gen_old.v
