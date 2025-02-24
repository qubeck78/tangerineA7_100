
TARGET = boot
PORT = auto

AS = riscv-none-embed-as -march=rv32im 
CC = riscv-none-embed-gcc -march=rv32im -c -Os -I../gfxLib/
LIBGCC = "c:\Program Files\riscv-none-gcc\lib\gcc\riscv-none-embed\8.2.0\rv32im\ilp32\libgcc.a"

LD = riscv-none-embed-ld 

OBJCOPY = riscv-none-embed-objcopy
OBJDUMP = riscv-none-embed-objdump 

all: $(TARGET).bin $(TARGET).rec $(TARGET)_fr.rec $(TARGET).disasm $(TARGET).coe

$(TARGET).disasm: $(TARGET).elf
	$(OBJDUMP) --disassemble -S $(TARGET).elf > $(TARGET).disasm

$(TARGET).rec: $(TARGET).elf
	$(OBJCOPY) -O srec $(TARGET).elf $(TARGET).rec

$(TARGET).elf: startup.o diskio.o ff.o main.o
	$(LD) -T ram.ld startup.o main.o ../gfxLib/diskio.o ff.o -o $(TARGET).elf

$(TARGET)_fr.elf: startup.o diskio.o ff.o main.o
	$(LD) -T fastram.ld startup.o main.o ../gfxLib/diskio.o ff.o -o $(TARGET)_fr.elf

$(TARGET)_fr.rec: $(TARGET)_fr.elf
	$(OBJCOPY) -O srec $(TARGET)_fr.elf $(TARGET)_fr.rec


$(TARGET).bin: $(TARGET).elf
	$(OBJCOPY) -O binary $(TARGET).elf $(TARGET).bin

$(TARGET).mif: $(TARGET).bin
	bin2mif32 $(TARGET).bin $(TARGET).mif

$(TARGET).mi: $(TARGET).bin
	bin2mi32 $(TARGET).bin $(TARGET).mi

$(TARGET).coe: $(TARGET).bin
	bin2coe32 $(TARGET).bin $(TARGET).coe

main.o: main.c
	$(CC) -o main.o main.c 

diskio.o: ../gfxLib/diskio.c
	$(CC) -o ../gfxLib/diskio.o ../gfxLib/diskio.c

ff.o: ff.c
	$(CC) -o ff.o ff.c 


startup.o: startup.S
	$(CC) -o startup.o startup.S


clean:
	rm -f *.o *.rec *.disasm *.elf *.bin *.mif *.mi *.coe

send: $(TARGET)_fr.rec
	srecsend $(TARGET)_fr.rec $(PORT) 460800
