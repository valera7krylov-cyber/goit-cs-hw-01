org  0x100

section .data
    a db 4
    b db 6
    c db 3
    resultMsg db 'Result: $'

section .text
_start:
    mov al, [b]
    sub al, [c]
    add al, [a]

    add al, 30h
    mov bl, al

    mov ah, 09h
    lea dx, resultMsg
    int 21h

    mov dl, bl
    mov ah, 02h
    int 21h

    mov ax, 4c00h
    int 21h