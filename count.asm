%include 'crow_funcs.asm'

SECTION .text
global  _start

_start:
    mov     ecx, 0
 
nextNumber:
    inc     ecx
    mov     eax, ecx
    add     eax, 48
    push    eax
    mov     eax, esp
    call    sprintLF

    pop     eax
    cmp     ecx, 10
    jne     nextNumber
    call    quit