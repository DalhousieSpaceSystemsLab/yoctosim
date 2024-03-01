#!/bin/bash

# Build the demo using the AVR toolchain
avr-gcc -Wall -g -mmcu=atmega2560 -O2 -DMOCK -o demo.elf demo.c
