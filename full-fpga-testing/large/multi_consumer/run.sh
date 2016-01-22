#!/bin/bash
vsim -c -do 'run 50us; quit' multi_consumer_tb
