.model small
.stack 100h
.data
.code

main proc
    
    mov ax, 1
    mov bx, 2
    
    cmp ax, bx
    
    jl add_numbers ; jump ax less than bx
    
    ; else
    
    sub ax, bx
    
    mov dx, ax
    mov ah, 2
    int 21h
    
    jmp exit
    
    add_numbers:
    
        add ax, bx
        
        mov dx, ax
        mov ah, 2
        int 21h
    
    exit:
 
    main endp
end main
