.model small
.stack 100h
.data
.code     
main proc
    
    mov al, 8
    mov bl, 1
    
    add bl, al
    add bl, 48
    mov dl, bl
    
    mov ah, 2
    int 21h
   
    main endp
end main
