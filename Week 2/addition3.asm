.model small
.stack 100h
.data
.code
main proc
    
    mov al, 4
    mov bl, 2
    mov cl, 2
    add al, bl
    add al, cl
    
    add dl, 48
   
    mov ah, 2
    int 21h

    main endp
end main
