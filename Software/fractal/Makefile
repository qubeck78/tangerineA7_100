#
#to compile and send to board invoke 'make send'
#adjust com port number in 'send' section if sending fails
#
#if compilation fails, update paths to used libs ( libgcc.a, libstdc++.a, etc )
#
#program send utility
#https://github.com/qubeck78/srecsend
#

TARGET = fractal
PORT = auto
CC = riscv-none-embed-gcc -march=rv32im -c -O2 -I../gfxLib/
LD = riscv-none-embed-ld -T ram.ld
OBJCOPY = riscv-none-embed-objcopy
OBJDUMP = riscv-none-embed-objdump
OBJSIZE = riscv-none-embed-size

LIBGCC =   "c:\Program Files\riscv-none-gcc\lib\gcc\riscv-none-embed\8.2.0\rv32im\ilp32\libgcc.a"
LIBSTDCC = "c:\Program Files\riscv-none-gcc\riscv-none-embed\lib\rv32im\ilp32\libstdc++.a"
LIBC     = "c:\Program Files\riscv-none-gcc\riscv-none-embed\lib\rv32im\ilp32\libc.a"
LIBM     = "c:\Program Files\riscv-none-gcc\riscv-none-embed\lib\rv32im\ilp32\libm.a" 
LIBNOSYS = "c:\Program Files\riscv-none-gcc\riscv-none-embed\lib\rv32im\ilp32\libnosys.a"
LIBTANGERINE 		= "../gfxLib/libTangerine.a"
LIBTANGERINELITE 	= "../gfxLib/libTangerineLite.a"

all: $(TARGET).bin $(TARGET).rec $(TARGET).disasm 
	$(OBJSIZE) $(TARGET).elf

$(TARGET).disasm: $(TARGET).elf
	$(OBJDUMP) --disassemble -S $(TARGET).elf>$(TARGET).disasm

$(TARGET).rec: $(TARGET).elf
	$(OBJCOPY) -O srec $(TARGET).elf $(TARGET).rec

$(TARGET).elf: main.o startup.o
	$(LD) startup.o main.o $(LIBTANGERINELITE) $(LIBM) $(LIBC) $(LIBNOSYS) $(LIBGCC) -o $(TARGET).elf

$(TARGET).bin: $(TARGET).elf
	$(OBJCOPY) -O binary $(TARGET).elf $(TARGET).bin

main.o: main.cpp
	$(CC) -o main.o main.cpp 

startup.o: startup.S
	$(CC) -o startup.o startup.S


clean:
	rm -f *.o *.rec *.disasm *.elf *.mif *.mi *.bin *.map

send: $(TARGET).rec
	srecsend $(TARGET).rec $(PORT) 460800
	$(OBJSIZE) $(TARGET).elf
	
run: $(TARGET).rec
#	cp $(TARGET).rec "/c/Users/qubeck/Documents/Development/ProjektyGCCWindows/tangerineSOCEmulator/bin"
#	cd "/c/Users/qubeck/Documents/Development/ProjektyGCCWindows/tangerineSOCEmulator/bin" && ./tangerine.exe $(TARGET).rec
