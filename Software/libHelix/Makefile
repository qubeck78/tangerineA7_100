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
TARGET = libHelix

CC = riscv-none-embed-gcc -march=rv32im -c -O2 -I. -I../gfxLib -Ipub/ -Ireal/ -DHELIX_CONFIG_FIXEDPOINT
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


$(TARGET).a: mp3dec.o mp3tabs.o buffers.o bitstream.o huffman.o hufftabs.o dequant.o scalfact.o dct32.o dqchan.o imdct.o polyphase.o stproc.o subband.o trigtabs.o 
	$(AR) rcs $(TARGET).a mp3dec.o mp3tabs.o real/buffers.o real/bitstream.o real/huffman.o real/hufftabs.o real/dequant.o real/scalfact.o real/dct32.o real/dqchan.o real/imdct.o real/polyphase.o real/stproc.o real/subband.o real/trigtabs.o

mp3dec.o: mp3dec.c
	$(CC) -o mp3dec.o mp3dec.c 

mp3tabs.o: mp3tabs.c
	$(CC) -o mp3tabs.o mp3tabs.c 

buffers.o: real/buffers.c
	$(CC) -o real/buffers.o real/buffers.c 

bitstream.o: real/bitstream.c
	$(CC) -o real/bitstream.o real/bitstream.c 

scalfact.o: real/scalfact.c
	$(CC) -o real/scalfact.o real/scalfact.c 

huffman.o: real/huffman.c
	$(CC) -o real/huffman.o real/huffman.c 

hufftabs.o: real/hufftabs.c
	$(CC) -o real/hufftabs.o real/hufftabs.c 

dequant.o: real/dequant.c
	$(CC) -o real/dequant.o real/dequant.c 

dqchan.o: real/dqchan.c
	$(CC) -o real/dqchan.o real/dqchan.c 

dct32.o: real/dct32.c
	$(CC) -o real/dct32.o real/dct32.c 

imdct.o: real/dct32.c
	$(CC) -o real/imdct.o real/imdct.c 

polyphase.o: real/polyphase.c
	$(CC) -o real/polyphase.o real/polyphase.c 

stproc.o: real/stproc.c
	$(CC) -o real/stproc.o real/stproc.c 

subband.o: real/subband.c
	$(CC) -o real/subband.o real/subband.c 

trigtabs.o: real/trigtabs.c
	$(CC) -o real/trigtabs.o real/trigtabs.c 

clean:
	rm -f *.a *.o *.rec *.disasm *.elf *.mif *.mi *.bin *.map
	rm -f real/*.o
