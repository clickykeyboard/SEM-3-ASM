.model small
.stack 100h
.data
.code

main proc
    
    mov ax, 40
    mov bx, 8
    
    div bx          ; divide ax by bx
    
    aad             ; adjustment after division
    
    mov bx, dx      ; move remainder to bx (dx contains remainder of division)
    add bx, 48
    
    mov cl, al
    mov ch, ah
    
    add cl, 48
    add ch, 48
    
    mov dl, ch     ; print first byte of division
    mov ah, 2      ; print second
    int 21h
    
    mov dl, cl
    mov ah, 2
    int 21h
    
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dx, bx   ; move remainder from bx to dx (since we are done using data register)
    mov ah, 2
    int 21h
 
    main endp
end main
