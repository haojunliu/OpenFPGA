#!/bin/bash
vsim -c -do 'run 30us; quit' multi_consumer_tb
