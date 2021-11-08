.PHONY: all

# Build everything
all: bin/rffs_root.bin

# Test booting with the example root system
test_rffs_root: bin/rffs_root.bin
	qemu-system-i386 -fda $<

# Build the rffs_root example code
bin/rffs_root.bin: src/rffs_root.asm
	nasm -fbin $< -o $@
