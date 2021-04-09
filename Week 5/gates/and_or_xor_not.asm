.model small
.stack 100h
.data
.code

main proc
    
     mov bl, '1'
     mov bh, '2'
     
     and bl, bh     ; both inputs converted to binaries, and AND'd together
     mov dl, bl
     mov ah, 2
     int 21h
     
     mov bl, '1'
     mov bh, '2'
     
     or bl, bh      ; both inputs converted to binaries, and OR'd together
     mov dl, bl
     mov ah, 2
     int 21h
     
     mov bl, '1'
     mov bh, '2'
     
     xor bl, bh     ; both inputs converted to binaries, and XOR'd together
     mov dl, bl
     mov ah, 2
     int 21h
     
     mov bl, '1'
     
     not bl         ; input converted to binary, and NOT'd together
     mov dl, bl
     mov ah, 2
     int 21h
    
    
    
    
    main endp
end main