#!/bin/bash
rm -rf phy-imp
cp -r ../../phy-imp phy-imp
cd phy-imp/build/dc-syn
make clean > /dev/null 2>&1
make > /dev/null 2>&1
cd ../icc-par
make clean > /dev/null 2>&1
make > /dev/null 2>&1
