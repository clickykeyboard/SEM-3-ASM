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
    je if_true
    jne not_true
    
    true:
        lea dx, equal
        mov ah, 9
        int 21h
        jmp exit
    
    not_true:
        lea dx, not_equal
        mov ah, 9
        int 21h
        jmp exit
        
    exit:
    
    main endp
end main
