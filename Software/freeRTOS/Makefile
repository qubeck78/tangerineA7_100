#
#to compile and send to board invoke 'make send'
#adjust com port number in 'send' section if sending fails
#
#if compilation fails, update paths to used libs ( libgcc.a, libstdc++.a, etc )
#
#program send utility
#https://github.com/qubeck78/srecsend
#


PORT = auto
TARGET = libFreeRTOS

CC = riscv-none-embed-gcc -march=rv32im -c -O2 -I. -I../gfxLib -I../freeRTOS/include -I../freeRTOS/portable/GCC/RISC-V
LD = riscv-none-embed-ld -T ram.ld
NM = riscv-none-embed-nm -n
AR = riscv-none-embed-ar 
OBJCOPY = riscv-none-embed-objcopy
OBJDUMP = riscv-none-embed-objdump 
OBJSIZE = riscv-none-embed-size
SENDER = srecsend

LIBGCC =   "c:\Program Files\riscv-none-gcc\lib\gcc\riscv-none-embed\8.2.0\rv32im\ilp32\libgcc.a"
LIBSTDCC = "c:\Program Files\riscv-none-gcc\riscv-none-embed\lib\rv32im\ilp32\libstdc++.a"
LIBC     = "c:\Program Files\riscv-none-gcc\riscv-none-embed\lib\rv32im\ilp32\libc.a"
LIBM     = "c:\Program Files\riscv-none-gcc\riscv-none-embed\lib\rv32im\ilp32\libm.a" 
LIBNOSYS = "c:\Program Files\riscv-none-gcc\riscv-none-embed\lib\rv32im\ilp32\libnosys.a"
LIBTANGERINE 		= "../gfxLib/libTangerine.a"
LIBTANGERINELITE 	= "../gfxLib/libTangerineLite.a"

all: $(TARGET).a     

$(TARGET).disasm: $(TARGET).elf
	$(OBJDUMP) --disassemble -S $(TARGET).elf>$(TARGET).disasm


$(TARGET).a: tasks.o list.o queue.o heap_4.o portASM.o port.o
	$(AR) rcs $(TARGET).a tasks.o list.o queue.o portable/MemMang/heap_4.o portable/GCC/RISC-V/portASM.o portable/GCC/RISC-V/port.o


tasks.o:	tasks.c
	$(CC) -o tasks.o tasks.c 

list.o:		list.c
	$(CC) -o list.o list.c 

queue.o:	queue.c
	$(CC) -o queue.o queue.c 

heap_4.o:	portable/MemMang/heap_4.c
	$(CC) -o portable/MemMang/heap_4.o portable/MemMang/heap_4.c 

portASM.o:	portable/GCC/RISC-V/portASM.S
	$(CC) -o portable/GCC/RISC-V/portASM.o portable/GCC/RISC-V/portASM.S 

port.o:	portable/GCC/RISC-V/port.c
	$(CC) -o portable/GCC/RISC-V/port.o portable/GCC/RISC-V/port.c 

clean:
	rm -f *.o *.rec *.disasm *.elf *.mif *.mi *.bin *.map
	rm -f portable/MemMang/*.o
	rm -f portable/GCC/RISC-V/*.o
