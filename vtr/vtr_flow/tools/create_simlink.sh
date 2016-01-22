ln -s ../fpgaGen/bit_conf_gen.py bit_conf_gen.py              
ln -s ../fpgaGen/bit_frame.py bit_frame.py                    
ln -s ../fpgaGen/bitgen_lut.py bitgen_lut.py                  
ln -s ../bsWrapperGen/bsWrapperGen.py bsWrapperGen.py         
ln -s ../fpgaGen/clean.sh clean.sh                            
ln -s ../fpgaGen/edge_order.txt edge_order.txt                
ln -s ../fpgaGen/ff_xbar_gen.py ff_xbar_gen.py                
ln -s ../fpgaGen/fpga_bits_gen.py fpga_bits_gen.py            
ln -s ../fpgaGen/fpgaGen.py fpgaGen.py                        
ln -s ../fpgaGen/ioGen.py ioGen.py                            
ln -s ../fpgaGen/io_tile_gen io_tile_gen                      
ln -s ../fpgaGen/ipin_chanxy_bitgen.py ipin_chanxy_bitgen.py  
ln -s ../fpgaGen/lut_tile_gen lut_tile_gen                    
ln -s ../fpgaGen/main.py main.py                              
ln -s ../fpgaGen/route_modules.py route_modules.py            
ln -s ../fpgaGen/sbcbGen.py sbcbGen.py                        
ln -s ../fpgaGen/scala_src scala_src                         

ln -s ../reRoute/main.py        reRouteMain.py
ln -s ../reRoute/fpga_net.py    fpga_net.py
ln -s ../reRoute/place.py       place.py
ln -s ../reRoute/route.py       route.py
ln -s ../reRoute/ble.py         ble.py
ln -s ../reRoute/preprocess.py  preprocess.py

ln -s ../rePack/lut.py          lut.py
ln -s ../rePack/latch.py        latch.py
ln -s ../rePack/rePack.py       rePack.py

rm -rf gen_src gen_bit_config
mkdir gen_src
mkdir gen_bit_config
