#=======================================================================
# High-level Makefile for riscv-bmarks
#-----------------------------------------------------------------------
#
# Hard-hack. Builds multiple copies of every benchmark: a user-mode only version
# ("-testrun") and a supervisor-mode version that uses the RISC-V proxy kernel
# (plus 32 v 64bit).


default: all

MAKE=make -f Makefile.mk
SHELL:=/bin/bash

instname    = riscv-bmarks
instbasedir = ../../install

all:
	@echo
	@echo "Building RV32S benchmarks:"
	export SUPERVISOR_MODE=true; $(MAKE) clean && $(MAKE)
	@echo "Renaming files."
	for i in *.riscv; do mv $$i $${i/.riscv}.rv32s; done
	for i in *.riscv.dump; do mv $$i $${i/.riscv.dump}.rv32s.dump; done
	@echo
	@echo "Building RV32U benchmarks:"
	rm -rf *.o
	unset SUPERVISOR_MODE; unset RV64_MODE; $(MAKE)
	for i in *.riscv; do mv $$i $${i/.riscv}.rv32u; done
	for i in *.riscv.dump; do mv $$i $${i/.riscv.dump}.rv32u.dump; done
	for i in *.riscv.hex; do mv $$i $${i/.riscv.hex}.rv32u.hex; done
	rm -rf *.o
	@echo
	@echo "Building RV64S benchmarks:"
	export SUPERVISOR_MODE=true; export RV64_MODE=true; $(MAKE)
	@echo "Renaming files."
	for i in *.riscv; do mv $$i $${i/.riscv}.rv64s; done
	for i in *.riscv.dump; do mv $$i $${i/.riscv.dump}.rv64s.dump; done
	rm -rf *.riscv
	rm -rf *.riscv.hex
	rm -rf *.o
	@echo


run:
	$(MAKE) run

instname    = riscv-bmarks
instbasedir = ../../install
install_dir = $(instbasedir)/$(instname)

install: all
	mkdir -p $(install_dir)
	cp -r *.rv32s *.rv64s *.rv32u *.rv32u.hex $(install_dir)
#	cp -r *.rv32s *.rv64s *.rv32u *.rv32s.dump *.rv64s.dump *.rv32u.dump *.rv32u.hex $(install_dir)
	
	
	

clean:
	$(MAKE) clean
