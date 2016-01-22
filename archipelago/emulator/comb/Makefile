all: compile

basedir = ../..

DIR_NAME = comb
PROJ_NAME = Combinational

src_files := Makefile $(basedir)/src/$(DIR_NAME)/*.scala
emulator_timestamp := $(basedir)/emulator/$(DIR_NAME)/generated-src/timestamp

SBT:= java -Xmx8G -Xss1G -XX:MaxPermSize=8G -jar sbt-launch.jar
options = Combinational.CombinationalMain --backend c --compile --test --targetDir ../emulator/${DIR_NAME}/generated-src --genHarness

target:
	@echo "  " 
	@echo "   The current make target is: ${PROJ_NAME}"
	@echo "  " 

compile:
	cd $(basedir)/sbt; ${SBT} "project ${PROJ_NAME}" "run $(options)"

debug:
	cd $(basedir)/sbt; ${SBT} "project ${PROJ_NAME}" "last run"

$(emulator_timestamp): $(src_files)
	cd $(basedir)/sbt; ${SBT} "project ${PROJ_NAME}" "run $(options)"
	date > $(emulator_timestamp); 

clean:
	@echo "Not Cleaned"

.PHONY: all clean
