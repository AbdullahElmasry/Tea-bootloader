# Tea Bootloader ☕

A minimal x86 bootloader built from scratch for learning, experimentation, and eventually evolving into a more advanced boot system (**Tea-GRUB**).

---

## Overview

Tea Bootloader is a low-level project that demonstrates how a computer boots starting from the BIOS. It begins as a simple **512-byte boot sector** and will progressively evolve into a multi-stage bootloader with more advanced capabilities.

---

## Current Features

- 16-bit real mode bootloader  
- BIOS-based execution (`INT 0x10` for output)  
- Runs entirely from a single **512-byte boot sector**  
- Outputs text directly to screen  
- Compatible with QEMU  

---

## Architecture

- **Platform:** x86 (i386-compatible)  
- **Mode:** 16-bit real mode (initially)  
- **Boot Method:** BIOS boot sector (MBR-style)  
- **Emulator:** QEMU  

---

## Requirements

- `nasm`  
- `qemu-system-i386`  
- `make` (optional)  

### Install on Ubuntu

`sudo apt install nasm qemu-system-x86 make`

---
## Build

# Using Makefile
`make`

# Without Makefile
` nasm -f bin boot.asm -o boot.bin `


# Run
Using Makefile
`make run`

# Manually
`qemu-system-i386 -drive file=boot.bin,format=raw,if=floppy`

---
## Future Direction (Tea-GRUB)

Tea Bootloader is intended to grow into a more capable system similar in concept to a full bootloader like GRUB, but built step-by-step for learning purposes.
