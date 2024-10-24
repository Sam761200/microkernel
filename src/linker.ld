OUTPUT_FORMAT(elf32-i386)
ENTRY(start)

SECTIONS
{
    . = 0x100000;

    .text : {
        *(.multiboot)    /* Assurez-vous que le header multiboot soit au début */
        *(.text)         /* Ensuite le code kernel */
    }

    .data : {
        *(.data)
    }

    .bss : {
        *(.bss)          /* Données non initialisées */
    }
}
