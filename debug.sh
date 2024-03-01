#!/bin/bash

# Opens the debugger and automatically connects to the QEMU remote.
avr-gdb -ex 'target remote :1234' demo.elf
