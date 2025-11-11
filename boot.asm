org 0x7C00

mov ah, 0x0E

mov si, hallo_text
print_loop:
    mov al, [si]
    cmp al, 0
    jz ende
    
    int 0x10
    inc si
    jmp print_loop

ende:
    jmp $

hallo_text: db 'H', 'a', 'l', 'l', 'o', 0

times 510 - ($ - $$) db 0
dw 0xAA55