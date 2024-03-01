# yoctosim
AVR On-Board Computer (OBC) Simulator Demo.

## Vision
Yoctosim is an integrated in-repo satellite simulator primarily targeted towards CubeSat systems.

## Status
Currently works as a simplistic AVR QEMU emulation demo (ATmega2560).

## Dependencies
- UNIX-like Host Computer.
- AVR QEMU System (qemu-system-avr).
- AVR Developer Toolchain (avr-gcc, avr-gdb, etc).

## Usage
To build the `demo.elf` binary:
```
$ ./build.sh
```

Then to initialize the QEMU AVR System and run the generated `demo.elf` binary:
```
$ ./run.sh
```

This process will be tough or impossible to interrupt/terminate, so to conveniently kill it:
```
$ ./kill.sh
```

Lastly, to hook into the running emulator remotely using the debugger, run:
```
$ ./debug.sh
```

Frequently these must be run in separate terminal sessions.

## Components
- Main Satellite Computer (QEMU).
- Serial Ports / Peripheral Connections (QEMU / GDB).

### Potential (Future) Components
- Environmental Simulations.
  - Thermal Model (MATLAB / CAD).
  - ADCS Model (MATLAB / CAD).
  - COMMS Model (MATLAB).
  - Camera Model (3D Rendering).

