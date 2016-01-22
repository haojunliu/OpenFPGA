#!/bin/bash
# 4_4_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_8_80/generated-src
cd ..
# 4_4_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_8_120/generated-src
cd ..
# 4_4_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_8_160/generated-src
cd ..
# 4_4_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_12_80/generated-src
cd ..
# 4_4_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_12_120/generated-src
cd ..
# 4_4_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_12_160/generated-src
cd ..
# 4_4_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_16_80/generated-src
cd ..
# 4_4_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_16_120/generated-src
cd ..
# 4_4_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_8_16_160/generated-src
cd ..
# 4_4_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_8_80/generated-src
cd ..
# 4_4_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_8_120/generated-src
cd ..
# 4_4_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_8_160/generated-src
cd ..
# 4_4_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_12_80/generated-src
cd ..
# 4_4_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_12_120/generated-src
cd ..
# 4_4_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_12_160/generated-src
cd ..
# 4_4_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_16_80/generated-src
cd ..
# 4_4_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_16_120/generated-src
cd ..
# 4_4_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_12_16_160/generated-src
cd ..
# 4_4_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_8_80/generated-src
cd ..
# 4_4_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_8_120/generated-src
cd ..
# 4_4_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_8_160/generated-src
cd ..
# 4_4_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_12_80/generated-src
cd ..
# 4_4_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_12_120/generated-src
cd ..
# 4_4_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_12_160/generated-src
cd ..
# 4_4_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_16_80/generated-src
cd ..
# 4_4_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_16_120/generated-src
cd ..
# 4_4_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_4_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_4_16_16_160/generated-src
cd ..
# 4_5_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_8_80/generated-src
cd ..
# 4_5_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_8_120/generated-src
cd ..
# 4_5_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_8_160/generated-src
cd ..
# 4_5_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_12_80/generated-src
cd ..
# 4_5_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_12_120/generated-src
cd ..
# 4_5_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_12_160/generated-src
cd ..
# 4_5_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_16_80/generated-src
cd ..
# 4_5_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_16_120/generated-src
cd ..
# 4_5_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_8_16_160/generated-src
cd ..
# 4_5_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_8_80/generated-src
cd ..
# 4_5_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_8_120/generated-src
cd ..
# 4_5_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_8_160/generated-src
cd ..
# 4_5_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_12_80/generated-src
cd ..
# 4_5_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_12_120/generated-src
cd ..
# 4_5_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_12_160/generated-src
cd ..
# 4_5_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_16_80/generated-src
cd ..
# 4_5_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_16_120/generated-src
cd ..
# 4_5_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_12_16_160/generated-src
cd ..
# 4_5_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_8_80/generated-src
cd ..
# 4_5_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_8_120/generated-src
cd ..
# 4_5_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_8_160/generated-src
cd ..
# 4_5_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_12_80/generated-src
cd ..
# 4_5_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_12_120/generated-src
cd ..
# 4_5_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_12_160/generated-src
cd ..
# 4_5_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_16_80/generated-src
cd ..
# 4_5_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_16_120/generated-src
cd ..
# 4_5_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_5_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_5_16_16_160/generated-src
cd ..
# 4_6_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_8_80/generated-src
cd ..
# 4_6_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_8_120/generated-src
cd ..
# 4_6_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_8_160/generated-src
cd ..
# 4_6_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_12_80/generated-src
cd ..
# 4_6_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_12_120/generated-src
cd ..
# 4_6_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_12_160/generated-src
cd ..
# 4_6_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_16_80/generated-src
cd ..
# 4_6_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_16_120/generated-src
cd ..
# 4_6_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_8_16_160/generated-src
cd ..
# 4_6_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_8_80/generated-src
cd ..
# 4_6_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_8_120/generated-src
cd ..
# 4_6_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_8_160/generated-src
cd ..
# 4_6_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_12_80/generated-src
cd ..
# 4_6_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_12_120/generated-src
cd ..
# 4_6_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_12_160/generated-src
cd ..
# 4_6_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_16_80/generated-src
cd ..
# 4_6_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_16_120/generated-src
cd ..
# 4_6_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_12_16_160/generated-src
cd ..
# 4_6_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_8_80/generated-src
cd ..
# 4_6_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_8_120/generated-src
cd ..
# 4_6_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_8_160/generated-src
cd ..
# 4_6_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_12_80/generated-src
cd ..
# 4_6_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_12_120/generated-src
cd ..
# 4_6_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_12_160/generated-src
cd ..
# 4_6_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_16_80/generated-src
cd ..
# 4_6_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_16_120/generated-src
cd ..
# 4_6_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_6_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_6_16_16_160/generated-src
cd ..
# 4_7_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_8_80/generated-src
cd ..
# 4_7_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_8_120/generated-src
cd ..
# 4_7_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_8_160/generated-src
cd ..
# 4_7_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_12_80/generated-src
cd ..
# 4_7_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_12_120/generated-src
cd ..
# 4_7_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_12_160/generated-src
cd ..
# 4_7_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_16_80/generated-src
cd ..
# 4_7_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_16_120/generated-src
cd ..
# 4_7_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_8_16_160/generated-src
cd ..
# 4_7_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_8_80/generated-src
cd ..
# 4_7_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_8_120/generated-src
cd ..
# 4_7_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_8_160/generated-src
cd ..
# 4_7_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_12_80/generated-src
cd ..
# 4_7_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_12_120/generated-src
cd ..
# 4_7_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_12_160/generated-src
cd ..
# 4_7_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_16_80/generated-src
cd ..
# 4_7_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_16_120/generated-src
cd ..
# 4_7_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_12_16_160/generated-src
cd ..
# 4_7_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_8_80/generated-src
cd ..
# 4_7_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_8_120/generated-src
cd ..
# 4_7_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_8_160/generated-src
cd ..
# 4_7_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_12_80/generated-src
cd ..
# 4_7_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_12_120/generated-src
cd ..
# 4_7_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_12_160/generated-src
cd ..
# 4_7_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_16_80/generated-src
cd ..
# 4_7_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_16_120/generated-src
cd ..
# 4_7_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_7_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_7_16_16_160/generated-src
cd ..
# 4_8_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_8_80/generated-src
cd ..
# 4_8_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_8_120/generated-src
cd ..
# 4_8_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_8_160/generated-src
cd ..
# 4_8_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_12_80/generated-src
cd ..
# 4_8_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_12_120/generated-src
cd ..
# 4_8_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_12_160/generated-src
cd ..
# 4_8_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_16_80/generated-src
cd ..
# 4_8_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_16_120/generated-src
cd ..
# 4_8_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_8_16_160/generated-src
cd ..
# 4_8_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_8_80/generated-src
cd ..
# 4_8_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_8_120/generated-src
cd ..
# 4_8_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_8_160/generated-src
cd ..
# 4_8_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_12_80/generated-src
cd ..
# 4_8_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_12_120/generated-src
cd ..
# 4_8_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_12_160/generated-src
cd ..
# 4_8_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_16_80/generated-src
cd ..
# 4_8_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_16_120/generated-src
cd ..
# 4_8_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_12_16_160/generated-src
cd ..
# 4_8_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_8_80/generated-src
cd ..
# 4_8_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_8_120/generated-src
cd ..
# 4_8_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_8_160/generated-src
cd ..
# 4_8_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_12_80/generated-src
cd ..
# 4_8_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_12_120/generated-src
cd ..
# 4_8_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_12_160/generated-src
cd ..
# 4_8_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_16_80/generated-src
cd ..
# 4_8_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_16_120/generated-src
cd ..
# 4_8_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_8_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_8_16_16_160/generated-src
cd ..
# 4_9_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_8_80/generated-src
cd ..
# 4_9_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_8_120/generated-src
cd ..
# 4_9_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_8_160/generated-src
cd ..
# 4_9_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_12_80/generated-src
cd ..
# 4_9_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_12_120/generated-src
cd ..
# 4_9_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_12_160/generated-src
cd ..
# 4_9_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_16_80/generated-src
cd ..
# 4_9_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_16_120/generated-src
cd ..
# 4_9_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_8_16_160/generated-src
cd ..
# 4_9_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_8_80/generated-src
cd ..
# 4_9_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_8_120/generated-src
cd ..
# 4_9_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_8_160/generated-src
cd ..
# 4_9_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_12_80/generated-src
cd ..
# 4_9_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_12_120/generated-src
cd ..
# 4_9_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_12_160/generated-src
cd ..
# 4_9_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_16_80/generated-src
cd ..
# 4_9_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_16_120/generated-src
cd ..
# 4_9_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_12_16_160/generated-src
cd ..
# 4_9_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_8_80/generated-src
cd ..
# 4_9_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_8_120/generated-src
cd ..
# 4_9_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_8_160/generated-src
cd ..
# 4_9_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_12_80/generated-src
cd ..
# 4_9_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_12_120/generated-src
cd ..
# 4_9_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_12_160/generated-src
cd ..
# 4_9_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_16_80/generated-src
cd ..
# 4_9_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_16_120/generated-src
cd ..
# 4_9_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_9_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_9_16_16_160/generated-src
cd ..
# 4_10_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_8_80/generated-src
cd ..
# 4_10_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_8_120/generated-src
cd ..
# 4_10_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_8_160/generated-src
cd ..
# 4_10_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_12_80/generated-src
cd ..
# 4_10_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_12_120/generated-src
cd ..
# 4_10_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_12_160/generated-src
cd ..
# 4_10_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_16_80/generated-src
cd ..
# 4_10_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_16_120/generated-src
cd ..
# 4_10_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_8_16_160/generated-src
cd ..
# 4_10_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_8_80/generated-src
cd ..
# 4_10_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_8_120/generated-src
cd ..
# 4_10_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_8_160/generated-src
cd ..
# 4_10_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_12_80/generated-src
cd ..
# 4_10_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_12_120/generated-src
cd ..
# 4_10_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_12_160/generated-src
cd ..
# 4_10_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_16_80/generated-src
cd ..
# 4_10_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_16_120/generated-src
cd ..
# 4_10_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_12_16_160/generated-src
cd ..
# 4_10_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_8_80/generated-src
cd ..
# 4_10_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_8_120/generated-src
cd ..
# 4_10_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_8_160/generated-src
cd ..
# 4_10_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_12_80/generated-src
cd ..
# 4_10_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_12_120/generated-src
cd ..
# 4_10_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_12_160/generated-src
cd ..
# 4_10_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_16_80/generated-src
cd ..
# 4_10_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_16_120/generated-src
cd ..
# 4_10_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_4_10_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_4_10_16_16_160/generated-src
cd ..
# 5_4_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_8_80/generated-src
cd ..
# 5_4_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_8_120/generated-src
cd ..
# 5_4_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_8_160/generated-src
cd ..
# 5_4_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_12_80/generated-src
cd ..
# 5_4_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_12_120/generated-src
cd ..
# 5_4_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_12_160/generated-src
cd ..
# 5_4_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_16_80/generated-src
cd ..
# 5_4_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_16_120/generated-src
cd ..
# 5_4_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_8_16_160/generated-src
cd ..
# 5_4_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_8_80/generated-src
cd ..
# 5_4_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_8_120/generated-src
cd ..
# 5_4_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_8_160/generated-src
cd ..
# 5_4_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_12_80/generated-src
cd ..
# 5_4_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_12_120/generated-src
cd ..
# 5_4_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_12_160/generated-src
cd ..
# 5_4_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_16_80/generated-src
cd ..
# 5_4_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_16_120/generated-src
cd ..
# 5_4_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_12_16_160/generated-src
cd ..
# 5_4_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_8_80/generated-src
cd ..
# 5_4_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_8_120/generated-src
cd ..
# 5_4_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_8_160/generated-src
cd ..
# 5_4_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_12_80/generated-src
cd ..
# 5_4_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_12_120/generated-src
cd ..
# 5_4_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_12_160/generated-src
cd ..
# 5_4_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_16_80/generated-src
cd ..
# 5_4_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_16_120/generated-src
cd ..
# 5_4_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_4_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_4_16_16_160/generated-src
cd ..
# 5_5_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_8_80/generated-src
cd ..
# 5_5_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_8_120/generated-src
cd ..
# 5_5_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_8_160/generated-src
cd ..
# 5_5_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_12_80/generated-src
cd ..
# 5_5_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_12_120/generated-src
cd ..
# 5_5_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_12_160/generated-src
cd ..
# 5_5_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_16_80/generated-src
cd ..
# 5_5_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_16_120/generated-src
cd ..
# 5_5_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_8_16_160/generated-src
cd ..
# 5_5_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_8_80/generated-src
cd ..
# 5_5_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_8_120/generated-src
cd ..
# 5_5_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_8_160/generated-src
cd ..
# 5_5_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_12_80/generated-src
cd ..
# 5_5_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_12_120/generated-src
cd ..
# 5_5_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_12_160/generated-src
cd ..
# 5_5_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_16_80/generated-src
cd ..
# 5_5_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_16_120/generated-src
cd ..
# 5_5_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_12_16_160/generated-src
cd ..
# 5_5_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_8_80/generated-src
cd ..
# 5_5_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_8_120/generated-src
cd ..
# 5_5_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_8_160/generated-src
cd ..
# 5_5_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_12_80/generated-src
cd ..
# 5_5_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_12_120/generated-src
cd ..
# 5_5_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_12_160/generated-src
cd ..
# 5_5_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_16_80/generated-src
cd ..
# 5_5_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_16_120/generated-src
cd ..
# 5_5_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_5_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_5_16_16_160/generated-src
cd ..
# 5_6_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_8_80/generated-src
cd ..
# 5_6_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_8_120/generated-src
cd ..
# 5_6_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_8_160/generated-src
cd ..
# 5_6_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_12_80/generated-src
cd ..
# 5_6_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_12_120/generated-src
cd ..
# 5_6_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_12_160/generated-src
cd ..
# 5_6_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_16_80/generated-src
cd ..
# 5_6_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_16_120/generated-src
cd ..
# 5_6_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_8_16_160/generated-src
cd ..
# 5_6_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_8_80/generated-src
cd ..
# 5_6_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_8_120/generated-src
cd ..
# 5_6_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_8_160/generated-src
cd ..
# 5_6_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_12_80/generated-src
cd ..
# 5_6_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_12_120/generated-src
cd ..
# 5_6_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_12_160/generated-src
cd ..
# 5_6_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_16_80/generated-src
cd ..
# 5_6_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_16_120/generated-src
cd ..
# 5_6_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_12_16_160/generated-src
cd ..
# 5_6_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_8_80/generated-src
cd ..
# 5_6_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_8_120/generated-src
cd ..
# 5_6_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_8_160/generated-src
cd ..
# 5_6_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_12_80/generated-src
cd ..
# 5_6_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_12_120/generated-src
cd ..
# 5_6_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_12_160/generated-src
cd ..
# 5_6_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_16_80/generated-src
cd ..
# 5_6_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_16_120/generated-src
cd ..
# 5_6_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_6_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_6_16_16_160/generated-src
cd ..
# 5_7_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_8_80/generated-src
cd ..
# 5_7_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_8_120/generated-src
cd ..
# 5_7_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_8_160/generated-src
cd ..
# 5_7_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_12_80/generated-src
cd ..
# 5_7_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_12_120/generated-src
cd ..
# 5_7_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_12_160/generated-src
cd ..
# 5_7_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_16_80/generated-src
cd ..
# 5_7_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_16_120/generated-src
cd ..
# 5_7_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_8_16_160/generated-src
cd ..
# 5_7_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_8_80/generated-src
cd ..
# 5_7_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_8_120/generated-src
cd ..
# 5_7_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_8_160/generated-src
cd ..
# 5_7_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_12_80/generated-src
cd ..
# 5_7_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_12_120/generated-src
cd ..
# 5_7_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_12_160/generated-src
cd ..
# 5_7_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_16_80/generated-src
cd ..
# 5_7_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_16_120/generated-src
cd ..
# 5_7_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_12_16_160/generated-src
cd ..
# 5_7_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_8_80/generated-src
cd ..
# 5_7_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_8_120/generated-src
cd ..
# 5_7_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_8_160/generated-src
cd ..
# 5_7_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_12_80/generated-src
cd ..
# 5_7_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_12_120/generated-src
cd ..
# 5_7_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_12_160/generated-src
cd ..
# 5_7_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_16_80/generated-src
cd ..
# 5_7_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_16_120/generated-src
cd ..
# 5_7_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_7_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_7_16_16_160/generated-src
cd ..
# 5_8_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_8_80/generated-src
cd ..
# 5_8_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_8_120/generated-src
cd ..
# 5_8_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_8_160/generated-src
cd ..
# 5_8_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_12_80/generated-src
cd ..
# 5_8_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_12_120/generated-src
cd ..
# 5_8_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_12_160/generated-src
cd ..
# 5_8_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_16_80/generated-src
cd ..
# 5_8_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_16_120/generated-src
cd ..
# 5_8_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_8_16_160/generated-src
cd ..
# 5_8_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_8_80/generated-src
cd ..
# 5_8_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_8_120/generated-src
cd ..
# 5_8_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_8_160/generated-src
cd ..
# 5_8_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_12_80/generated-src
cd ..
# 5_8_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_12_120/generated-src
cd ..
# 5_8_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_12_160/generated-src
cd ..
# 5_8_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_16_80/generated-src
cd ..
# 5_8_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_16_120/generated-src
cd ..
# 5_8_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_12_16_160/generated-src
cd ..
# 5_8_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_8_80/generated-src
cd ..
# 5_8_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_8_120/generated-src
cd ..
# 5_8_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_8_160/generated-src
cd ..
# 5_8_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_12_80/generated-src
cd ..
# 5_8_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_12_120/generated-src
cd ..
# 5_8_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_12_160/generated-src
cd ..
# 5_8_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_16_80/generated-src
cd ..
# 5_8_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_16_120/generated-src
cd ..
# 5_8_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_8_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_8_16_16_160/generated-src
cd ..
# 5_9_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_8_80/generated-src
cd ..
# 5_9_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_8_120/generated-src
cd ..
# 5_9_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_8_160/generated-src
cd ..
# 5_9_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_12_80/generated-src
cd ..
# 5_9_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_12_120/generated-src
cd ..
# 5_9_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_12_160/generated-src
cd ..
# 5_9_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_16_80/generated-src
cd ..
# 5_9_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_16_120/generated-src
cd ..
# 5_9_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_8_16_160/generated-src
cd ..
# 5_9_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_8_80/generated-src
cd ..
# 5_9_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_8_120/generated-src
cd ..
# 5_9_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_8_160/generated-src
cd ..
# 5_9_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_12_80/generated-src
cd ..
# 5_9_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_12_120/generated-src
cd ..
# 5_9_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_12_160/generated-src
cd ..
# 5_9_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_16_80/generated-src
cd ..
# 5_9_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_16_120/generated-src
cd ..
# 5_9_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_12_16_160/generated-src
cd ..
# 5_9_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_8_80/generated-src
cd ..
# 5_9_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_8_120/generated-src
cd ..
# 5_9_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_8_160/generated-src
cd ..
# 5_9_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_12_80/generated-src
cd ..
# 5_9_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_12_120/generated-src
cd ..
# 5_9_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_12_160/generated-src
cd ..
# 5_9_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_16_80/generated-src
cd ..
# 5_9_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_16_120/generated-src
cd ..
# 5_9_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_9_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_9_16_16_160/generated-src
cd ..
# 5_10_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_8_80/generated-src
cd ..
# 5_10_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_8_120/generated-src
cd ..
# 5_10_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_8_160/generated-src
cd ..
# 5_10_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_12_80/generated-src
cd ..
# 5_10_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_12_120/generated-src
cd ..
# 5_10_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_12_160/generated-src
cd ..
# 5_10_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_16_80/generated-src
cd ..
# 5_10_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_16_120/generated-src
cd ..
# 5_10_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_8_16_160/generated-src
cd ..
# 5_10_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_8_80/generated-src
cd ..
# 5_10_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_8_120/generated-src
cd ..
# 5_10_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_8_160/generated-src
cd ..
# 5_10_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_12_80/generated-src
cd ..
# 5_10_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_12_120/generated-src
cd ..
# 5_10_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_12_160/generated-src
cd ..
# 5_10_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_16_80/generated-src
cd ..
# 5_10_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_16_120/generated-src
cd ..
# 5_10_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_12_16_160/generated-src
cd ..
# 5_10_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_8_80/generated-src
cd ..
# 5_10_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_8_120/generated-src
cd ..
# 5_10_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_8_160/generated-src
cd ..
# 5_10_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_12_80/generated-src
cd ..
# 5_10_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_12_120/generated-src
cd ..
# 5_10_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_12_160/generated-src
cd ..
# 5_10_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_16_80/generated-src
cd ..
# 5_10_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_16_120/generated-src
cd ..
# 5_10_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_5_10_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_5_10_16_16_160/generated-src
cd ..
# 6_4_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_8_80/generated-src
cd ..
# 6_4_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_8_120/generated-src
cd ..
# 6_4_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_8_160/generated-src
cd ..
# 6_4_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_12_80/generated-src
cd ..
# 6_4_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_12_120/generated-src
cd ..
# 6_4_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_12_160/generated-src
cd ..
# 6_4_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_16_80/generated-src
cd ..
# 6_4_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_16_120/generated-src
cd ..
# 6_4_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_8_16_160/generated-src
cd ..
# 6_4_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_8_80/generated-src
cd ..
# 6_4_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_8_120/generated-src
cd ..
# 6_4_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_8_160/generated-src
cd ..
# 6_4_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_12_80/generated-src
cd ..
# 6_4_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_12_120/generated-src
cd ..
# 6_4_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_12_160/generated-src
cd ..
# 6_4_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_16_80/generated-src
cd ..
# 6_4_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_16_120/generated-src
cd ..
# 6_4_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_12_16_160/generated-src
cd ..
# 6_4_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_8_80/generated-src
cd ..
# 6_4_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_8_120/generated-src
cd ..
# 6_4_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_8_160/generated-src
cd ..
# 6_4_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_12_80/generated-src
cd ..
# 6_4_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_12_120/generated-src
cd ..
# 6_4_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_12_160/generated-src
cd ..
# 6_4_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_16_80/generated-src
cd ..
# 6_4_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_16_120/generated-src
cd ..
# 6_4_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_4_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_4_16_16_160/generated-src
cd ..
# 6_5_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_8_80/generated-src
cd ..
# 6_5_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_8_120/generated-src
cd ..
# 6_5_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_8_160/generated-src
cd ..
# 6_5_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_12_80/generated-src
cd ..
# 6_5_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_12_120/generated-src
cd ..
# 6_5_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_12_160/generated-src
cd ..
# 6_5_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_16_80/generated-src
cd ..
# 6_5_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_16_120/generated-src
cd ..
# 6_5_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_8_16_160/generated-src
cd ..
# 6_5_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_8_80/generated-src
cd ..
# 6_5_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_8_120/generated-src
cd ..
# 6_5_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_8_160/generated-src
cd ..
# 6_5_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_12_80/generated-src
cd ..
# 6_5_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_12_120/generated-src
cd ..
# 6_5_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_12_160/generated-src
cd ..
# 6_5_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_16_80/generated-src
cd ..
# 6_5_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_16_120/generated-src
cd ..
# 6_5_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_12_16_160/generated-src
cd ..
# 6_5_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_8_80/generated-src
cd ..
# 6_5_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_8_120/generated-src
cd ..
# 6_5_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_8_160/generated-src
cd ..
# 6_5_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_12_80/generated-src
cd ..
# 6_5_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_12_120/generated-src
cd ..
# 6_5_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_12_160/generated-src
cd ..
# 6_5_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_16_80/generated-src
cd ..
# 6_5_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_16_120/generated-src
cd ..
# 6_5_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_5_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_5_16_16_160/generated-src
cd ..
# 6_6_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_8_80/generated-src
cd ..
# 6_6_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_8_120/generated-src
cd ..
# 6_6_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_8_160/generated-src
cd ..
# 6_6_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_12_80/generated-src
cd ..
# 6_6_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_12_120/generated-src
cd ..
# 6_6_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_12_160/generated-src
cd ..
# 6_6_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_16_80/generated-src
cd ..
# 6_6_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_16_120/generated-src
cd ..
# 6_6_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_8_16_160/generated-src
cd ..
# 6_6_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_8_80/generated-src
cd ..
# 6_6_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_8_120/generated-src
cd ..
# 6_6_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_8_160/generated-src
cd ..
# 6_6_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_12_80/generated-src
cd ..
# 6_6_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_12_120/generated-src
cd ..
# 6_6_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_12_160/generated-src
cd ..
# 6_6_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_16_80/generated-src
cd ..
# 6_6_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_16_120/generated-src
cd ..
# 6_6_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_12_16_160/generated-src
cd ..
# 6_6_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_8_80/generated-src
cd ..
# 6_6_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_8_120/generated-src
cd ..
# 6_6_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_8_160/generated-src
cd ..
# 6_6_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_12_80/generated-src
cd ..
# 6_6_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_12_120/generated-src
cd ..
# 6_6_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_12_160/generated-src
cd ..
# 6_6_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_16_80/generated-src
cd ..
# 6_6_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_16_120/generated-src
cd ..
# 6_6_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_6_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_6_16_16_160/generated-src
cd ..
# 6_7_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_8_80/generated-src
cd ..
# 6_7_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_8_120/generated-src
cd ..
# 6_7_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_8_160/generated-src
cd ..
# 6_7_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_12_80/generated-src
cd ..
# 6_7_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_12_120/generated-src
cd ..
# 6_7_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_12_160/generated-src
cd ..
# 6_7_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_16_80/generated-src
cd ..
# 6_7_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_16_120/generated-src
cd ..
# 6_7_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_8_16_160/generated-src
cd ..
# 6_7_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_8_80/generated-src
cd ..
# 6_7_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_8_120/generated-src
cd ..
# 6_7_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_8_160/generated-src
cd ..
# 6_7_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_12_80/generated-src
cd ..
# 6_7_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_12_120/generated-src
cd ..
# 6_7_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_12_160/generated-src
cd ..
# 6_7_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_16_80/generated-src
cd ..
# 6_7_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_16_120/generated-src
cd ..
# 6_7_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_12_16_160/generated-src
cd ..
# 6_7_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_8_80/generated-src
cd ..
# 6_7_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_8_120/generated-src
cd ..
# 6_7_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_8_160/generated-src
cd ..
# 6_7_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_12_80/generated-src
cd ..
# 6_7_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_12_120/generated-src
cd ..
# 6_7_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_12_160/generated-src
cd ..
# 6_7_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_16_80/generated-src
cd ..
# 6_7_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_16_120/generated-src
cd ..
# 6_7_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_7_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_7_16_16_160/generated-src
cd ..
# 6_8_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_8_80/generated-src
cd ..
# 6_8_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_8_120/generated-src
cd ..
# 6_8_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_8_160/generated-src
cd ..
# 6_8_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_12_80/generated-src
cd ..
# 6_8_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_12_120/generated-src
cd ..
# 6_8_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_12_160/generated-src
cd ..
# 6_8_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_16_80/generated-src
cd ..
# 6_8_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_16_120/generated-src
cd ..
# 6_8_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_8_16_160/generated-src
cd ..
# 6_8_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_8_80/generated-src
cd ..
# 6_8_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_8_120/generated-src
cd ..
# 6_8_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_8_160/generated-src
cd ..
# 6_8_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_12_80/generated-src
cd ..
# 6_8_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_12_120/generated-src
cd ..
# 6_8_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_12_160/generated-src
cd ..
# 6_8_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_16_80/generated-src
cd ..
# 6_8_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_16_120/generated-src
cd ..
# 6_8_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_12_16_160/generated-src
cd ..
# 6_8_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_8_80/generated-src
cd ..
# 6_8_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_8_120/generated-src
cd ..
# 6_8_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_8_160/generated-src
cd ..
# 6_8_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_12_80/generated-src
cd ..
# 6_8_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_12_120/generated-src
cd ..
# 6_8_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_12_160/generated-src
cd ..
# 6_8_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_16_80/generated-src
cd ..
# 6_8_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_16_120/generated-src
cd ..
# 6_8_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_8_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_8_16_16_160/generated-src
cd ..
# 6_9_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_8_80/generated-src
cd ..
# 6_9_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_8_120/generated-src
cd ..
# 6_9_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_8_160/generated-src
cd ..
# 6_9_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_12_80/generated-src
cd ..
# 6_9_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_12_120/generated-src
cd ..
# 6_9_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_12_160/generated-src
cd ..
# 6_9_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_16_80/generated-src
cd ..
# 6_9_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_16_120/generated-src
cd ..
# 6_9_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_8_16_160/generated-src
cd ..
# 6_9_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_8_80/generated-src
cd ..
# 6_9_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_8_120/generated-src
cd ..
# 6_9_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_8_160/generated-src
cd ..
# 6_9_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_12_80/generated-src
cd ..
# 6_9_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_12_120/generated-src
cd ..
# 6_9_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_12_160/generated-src
cd ..
# 6_9_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_16_80/generated-src
cd ..
# 6_9_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_16_120/generated-src
cd ..
# 6_9_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_12_16_160/generated-src
cd ..
# 6_9_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_8_80/generated-src
cd ..
# 6_9_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_8_120/generated-src
cd ..
# 6_9_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_8_160/generated-src
cd ..
# 6_9_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_12_80/generated-src
cd ..
# 6_9_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_12_120/generated-src
cd ..
# 6_9_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_12_160/generated-src
cd ..
# 6_9_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_16_80/generated-src
cd ..
# 6_9_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_16_120/generated-src
cd ..
# 6_9_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_9_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_9_16_16_160/generated-src
cd ..
# 6_10_8_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_8_80/generated-src
cd ..
# 6_10_8_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_8_120/generated-src
cd ..
# 6_10_8_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_8_160/generated-src
cd ..
# 6_10_8_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_12_80/generated-src
cd ..
# 6_10_8_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_12_120/generated-src
cd ..
# 6_10_8_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_12_160/generated-src
cd ..
# 6_10_8_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_16_80/generated-src
cd ..
# 6_10_8_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_16_120/generated-src
cd ..
# 6_10_8_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_8_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_8_16_160/generated-src
cd ..
# 6_10_12_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_8_80/generated-src
cd ..
# 6_10_12_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_8_120/generated-src
cd ..
# 6_10_12_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_8_160/generated-src
cd ..
# 6_10_12_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_12_80/generated-src
cd ..
# 6_10_12_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_12_120/generated-src
cd ..
# 6_10_12_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_12_160/generated-src
cd ..
# 6_10_12_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_16_80/generated-src
cd ..
# 6_10_12_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_16_120/generated-src
cd ..
# 6_10_12_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_12_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_12_16_160/generated-src
cd ..
# 6_10_16_8_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_8_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_8_80/generated-src
cd ..
# 6_10_16_8_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_8_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_8_120/generated-src
cd ..
# 6_10_16_8_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_8_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_8_160/generated-src
cd ..
# 6_10_16_12_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_12_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_12_80/generated-src
cd ..
# 6_10_16_12_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_12_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_12_120/generated-src
cd ..
# 6_10_16_12_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_12_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_12_160/generated-src
cd ..
# 6_10_16_16_80
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_16_80 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_16_80/generated-src
cd ..
# 6_10_16_16_120
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_16_120 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_16_120/generated-src
cd ..
# 6_10_16_16_160
cd ../../src/lut_tile
rm -rf lut_tile_config.scala
ln -s config/lut_tile_config_6_10_16_16_160 lut_tile_config.scala
cd ../../verilog/lut_tile
make
mv generated-src/lut_tile.v tools/lut_tile_old.v
cd tools
~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v
~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v
~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v
rm -rf lut_tile_old.v
mv *v ../sweep/lut_tile_6_10_16_16_160/generated-src
cd ..
