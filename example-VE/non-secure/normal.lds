OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(_start_normal)

SECTIONS
{
	. = 0x0090B000;
	LOAD_ADR = . ;
	
	. = ALIGN(4);
	.text : { *(.text) }

	. = ALIGN(4);
	.data : { *(.data) }
		
	. = ALIGN(4);
	__bss_start = .;
	.bss : { *(.bss) }
	__bss_end = .;
}