#!/bin/bash
vsim -c -do 'run 120ns; quit' multi_consumer_tb
