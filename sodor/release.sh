#!/bin/bash

git submodule init
git submodule update
mv sbt/project/build.scala sbt/project/build.scala.bak
mv sbt/project/build.scala.jar-based sbt/project/build.scala
rm -rf src/rv32_5stage src/riscv-boom
rm -rf riscv-pk
rm README
mv README.release README
rm -rf chisel
rm -rf .git
rm -f ../sodor.tar.gz
(cd ..; tar czf sodor.tar.gz sodor)
