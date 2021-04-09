.model small
.stack 100h
.data
equal db 'equal$'
not_equal db 'not equal$' 

.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ah, 5
    mov bh, 6
    
    cmp ah, bh                  ; compare ah register value with bh
    je equal_condition          ; JE flag for checking cmp ah, bh. JE for jump if equal. JE takes a label
    
    lea dx, not_equal
    mov ah, 9
    int 21h
    
    jmp after_not_equal         ; unconditional jump. will jump after not equal
    
    equal_condition:            ; JE label
        lea dx, equal
        mov ah, 9
        int 21h
    
    after_not_equal:
    
    main endp
end main
