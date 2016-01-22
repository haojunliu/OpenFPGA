#=======================================================================
# UCB Chisel C++ Simulator Generator: Makefile 
#-----------------------------------------------------------------------
# Brian Zimmer (bmzimmer@eecs.berkeley.edu)
# Christopher Celio (celio@eecs.berkeley.edu)
#
# This makefile will generate an emulator from chisel code

# Three different processors are provided. To switch between which 
# processor you would like to build, change the bash environment 
# variable $MK_TARGET_PROC as follows:
#   "export MK_TARGET_PROC=rv32_1stage"
#   "export MK_TARGET_PROC=rv32_2stage"
#   "export MK_TARGET_PROC=rv32_5stage"
#   "export MK_TARGET_PROC=rv32_ucode"
#   "export MK_TARGET_PROC=riscv-boom"

MK_TARGET_PROC?=rv32_1stage

src_files := Makefile src/${MK_TARGET_PROC}/*scala
emulator_timestamp := emulator/${MK_TARGET_PROC}/generated-src/timestamp

SBT:= java -Xmx1024M -Xss8M -XX:MaxPermSize=128M -jar sbt-launch.jar
options=Sodor.Top --backend c --debug --targetDir ../emulator/${MK_TARGET_PROC}/generated-src
#options=Sodor.Top --backend c --debug --checkPorts --vcd --targetDir ../emulator/${MK_TARGET_PROC}/generated-src

target:
	@echo "  " 
	@echo "   The current make target is: ${MK_TARGET_PROC}"
	@echo "     Call 'make run-emulator' to build and run all tests and benchmarks."
	@echo "     Use 'export MK_TARGET_PROC=rv32_5stage' (etc.) to change to another processor."
	@echo "  " 

compile:
	cd sbt; ${SBT} "project ${MK_TARGET_PROC}" "run $(options)"

shell:
	cd sbt; ${SBT} "project ${MK_TARGET_PROC}" shell

debug:
	cd sbt; ${SBT} "project ${MK_TARGET_PROC}" "last run"

console:
	cd sbt; ${SBT} "project ${MK_TARGET_PROC}" console

$(emulator_timestamp): $(src_files)
	cd sbt; ${SBT} "project ${MK_TARGET_PROC}" "run $(options)"
	date > $(emulator_timestamp); 


install/bin/fesvr: riscv-fesvr/fesvr/*.cc
	cd riscv-fesvr; mkdir -p build; cd build; ../configure --prefix=$(PWD)/install; make; make install

install/riscv-pk32/bin/riscv-pk: riscv-pk/pk/*.c riscv-pk/pk/*.h riscv-pk/pk/*.S
	cd riscv-pk; rm -r build; mkdir -p build; cd build; ../configure --prefix=$(PWD)/install/riscv-pk32 --host=riscv && CFLAGS="-mabi=32" LDFLAGS="-mabi=32" make && make install

install/riscv-pk64/bin/riscv-pk: riscv-pk/pk/*.c riscv-pk/pk/*.h riscv-pk/pk/*.S
	cd riscv-pk; rm -r build; mkdir -p build; cd build; ../configure --prefix=$(PWD)/install/riscv-pk64 --host=riscv && make && make install

run-emulator: $(emulator_timestamp) install/bin/fesvr # install/riscv-pk32/bin/riscv-pk install/riscv-pk64/bin/riscv-pk
	cd emulator/${MK_TARGET_PROC}; make run;

clean-tests:
	make clean-tests -C emulator/${MK_TARGET_PROC}

clean:
	rm -rf sbt/project/boot sbt/project/target sbt/target sbt/${MK_TARGET_PROC}/target emulator/${MK_TARGET_PROC}/generated-src/Tile.*
	make clean -C emulator/${MK_TARGET_PROC}

.PHONY: run-emulator target clean

