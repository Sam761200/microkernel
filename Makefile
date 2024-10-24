CC = gcc
CFLAGS = -std=gnu99 -ffreestanding -O2 -Wall -Wextra -m32
LDFLAGS = -ffreestanding -O2 -nostdlib -m32

OBJS = src/boot.o src/kernel.o

all: my_microkernel.bin

src/boot.o: src/boot.asm
	nasm -f elf32 src/boot.asm -o src/boot.o

src/kernel.o: src/kernel.c
	$(CC) $(CFLAGS) -c src/kernel.c -o src/kernel.o

my_microkernel.bin: $(OBJS)
	$(CC) $(LDFLAGS) -T src/linker.ld -o my_microkernel.bin $(OBJS)

clean:
	rm -f src/*.o my_microkernel.bin
