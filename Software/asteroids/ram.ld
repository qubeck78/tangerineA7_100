MEMORY 
{						         

/* dma ram  */
/*		 ram 	:   ORIGIN = 0x24000000, LENGTH = 0x0007ffff
		 eram   : ORIGIN = 0x24080000, LENGTH = 0
*/


/* fast ram - 256KB */
		ram 	: ORIGIN = 0x30000000, LENGTH = 0x3ffff 
		eram  : ORIGIN = 0x30040000, LENGTH = 0 

}


SECTIONS
{

	.text :
	{
    	__text_start = . ;

		*(.text)

		_etext = . ;
   } > ram

	.data :
	{
		_sdata = . ;
		__data_start = . ;

      *(.data)

		_edata = . ;
		edata = ALIGN( 0x10 ) ;
   } > ram


	.bss :
   {
      . = ALIGN(4);
      _sbss = .;
      *(.bss)
      *(.bss*)
      *(.sbss)
      *(.sbss*)
      *(COMMON)
      . = ALIGN(4);
      _ebss = .;
   } > ram 

	. = ALIGN(8);

	__bss_end__ = .;
   _end = __bss_end__;
   end = _end; 

	.eram :
	{
		__ramend = . ;
	} > eram
}
