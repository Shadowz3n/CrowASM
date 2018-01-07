; Time
; Compile with: nasm -f elf time.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 time.o -o time
%include        'crow_funcs.asm'
 
SECTION .data
msg        db      'Seconds since Jan 01 1970: ', 0h
 
SECTION .text
global  _start
 
_start:
    mov     eax, msg
    call    sprint
    mov     eax, 13
    int     80h

    call    iprintLF
    call    quit