# Makefile

# Default target
all: kernel.bin

# Build the kernel binary
kernel.bin: src/kernel/kernel.o
	ld -o kernel.bin -Ttext 0x1000 src/kernel/kernel.o --oformat binary

# Compile kernel object file
src/kernel/kernel.o: src/kernel/kernel.c
	gcc -ffreestanding -c src/kernel/kernel.c -o src/kernel/kernel.o

# Clean build artifacts
clean:
	rm -f src/kernel/*.o kernel.bin


