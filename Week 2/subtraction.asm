.model small
.stack 100h
.data
.code
main proc

    mov al, 4
    mov bl, 2 
    
    sub al, bl
    add al, 48
    
    mov dl, al
    
    mov ah, 2
    int 21h
    
    main endp
end main