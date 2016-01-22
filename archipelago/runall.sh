#!/bin/bash
# Christopher Celio
# 2012 Feb 14
#
# The "runall.sh" script runs through all $PROCS found in this repository -
# compiles the Chisel code, builds the resulting C++ simulators, and runs a set
# of simple tests on them.
#
# Call "./runall.sh clean" to run "make clean" on all processors.

# procs=(rv32_1stage rv32_2stage rv32_5stage rv32_ucode riscv-boom)
procs=(`(cd src; ls -d r*)`)

echo ""
echo ""
if [ "$1" == "clean" ] 
then
echo Cleaning all processors...
else
echo Running all processors...
fi

for proc in ${procs[@]}; do
   time_stamp=$(date +%Y-%m-%d_%Hh%Mm%Ss)
   echo " "
   echo "*****************************************************************"
   echo "RUNNING MICRO-ARCHITECTURE: " $proc "  " 
   echo "*****************************************************************"
   echo " "
   if [ "$1" == "clean" ] 
   then
      export MK_TARGET_PROC=$proc; make clean; 
   elif [ "$1" == "cpi" ]
   then
      grep CPI emulator/$proc/*.riscv.out;
   elif [ "$1" == "bp" ]
   then
      grep Acc emulator/$proc/*.riscv.out;
   elif [ "$1" == "stats" ]
   then
      grep "#" emulator/$proc/*.riscv.out;
   elif [ "$1" == "clean-tests" ]
   then
      export MK_TARGET_PROC=$proc; make clean-tests; 
   else
      export MK_TARGET_PROC=$proc; make run-emulator; 
#      export MK_TARGET_PROC=$proc; make run-emulator && cd emulator/$proc/ && vcd2vpd cpu.vcd cpu.vpd && cd ../..;
   fi
done
