.model small
.stack 100h
.data
.code

main proc
    
    mov ax, 0
    mov bx, 0
    
    cmp ax, bx
    
    jz jump_if_equal_to_zero
    jnz if_not_equal_to_zero
    
    jump_if_equal_to_zero:
        mov cx, '3'
        mov dx, cx
        mov ah, 2
        int 21h
        jmp exit
    
    if_not_equal_to_zero:
        mov cx, '1'
        mov dx, cx
        mov ah, 2
        int 21h
    
    exit:
    
    main endp
end main