#!/bin/sh

arm-none-eabi-gdb --exec=./main.elf --symbols=./main.elf --nh \
		   -ex 'target extended-remote /dev/ttyACM0' \
		   -ex 'attach 1' \
		   -ex 'set mem inaccessible-by-default off' 
		   

