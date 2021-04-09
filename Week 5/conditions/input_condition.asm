.model small
.stack 100h
.data
equal db 'equal$'
not_equal db 'not equal$'
.code

main proc
    
    mov ah, 1
    int 21h   
    mov bl, al ; first input
    
    mov ah, 1
    int 21h
    mov cl, al ; second input

    cmp cl, bl                  ; compare cl with bl
    
    je if_true					; jump conditional for equal
    jne not_true				; jump conditional for not equal
    
    if_true:
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
