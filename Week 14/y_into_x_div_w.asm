equation macro y x w
    div w
    
    mul y
    
    mov dl, al
    
    add dl, 48
    mov ah, 2
    int 21h
endm    

.model small
.stack 100h
.data
.code

main proc
    ; y * x / w
    
    mov ax, 4 ; x  
    
    mov bx, 2 ; w 
    
    mov cx, 4 ; y 
    
    equation cx ax bx
    
    main endp
end main