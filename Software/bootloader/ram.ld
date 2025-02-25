MEMORY 
{

/*	bootloader ram	*/

	ram    : ORIGIN = 0x00000000, LENGTH = 0x00002fff
	eram   : ORIGIN = 0x00003000, LENGTH = 0

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
