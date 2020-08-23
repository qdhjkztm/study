print:
    pusha
    mov ah, 0x0e
; keep this in mind:
; while (string[i] != 0) { print string[i]; i++ }

; the comparison for string end (null byte)
start:
    mov ax, [bx] ; 'bx' is the base address for the string
    cmp ax, 0 
    je done

    ; the part where we print with the BIOS help
    
    int 0x10 ; 'al' already contains the char

    ; increment pointer and do next loop
    add bx, 1
    jmp start

done:
    popa
    ret



print_nl:
    pusha
    
    mov ah, 0x0e
    mov al, 0x0a ; newline char
    int 0x10
    mov al, 0x0d ; carriage return
    int 0x10
    
    popa
    ret
