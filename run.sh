#!/bin/bash

# Create the QEMU instance and run the demo
qemu-system-avr -S -s -nographic -machine mega2560 -bios demo.elf &

# Echo this process' PID
PID=$!
echo $PID >> pid

# Return emulator to the foreground
wait $PID
