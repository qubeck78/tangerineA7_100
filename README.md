# Tangerine A7_100 

Risc-V based system for Qmtech Artix Wukong board.

Features:
- nekoRv: Risc-V 32 IM Zicsr core running at 162.5MHz
- VGA controller with 720p output, 16-bit graphics + hardware text overlay
- axiDma controller with 64KB I/D 4-way cache connected to AMD MIG via axi4-full bus
- fast block data transfer engine within axiDma controller ( fast data copy, fill, shift )
- memory mapped floating point ALU
- serial interface for program upload / data transfer
- SPI interface ( SD-Card support )
- double PS-2 host controller for keyboard and mouse ( USB keyboards can be used in legacy PS2 mode )
- bsp, libraries, software examples in Software directory


System diagram

![blockdiagram](./doc/BlockDiagram.jpg)


Wukong board documentation:
https://github.com/ChinaQMTECH/QM_XC7A100T_WUKONG_BOARD/tree/master/V3

![wukongboard](./doc/WukongBoard.jpg)

