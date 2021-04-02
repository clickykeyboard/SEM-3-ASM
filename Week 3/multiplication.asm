.model small
.stack 100h
.data
.code

main proc
    
    mov al, 5
    mov bl, 5
    
    mul bl
    
    aam   ; ascii adjustment after multiplication
    
    mov cl, al
    mov ch, ah
    
    add cl, 48
    add ch, 48
    
    mov dl, ch

    mov ah, 2
    int 21h
    
    mov dl, cl

    mov ah, 2
    int 21h

    main endp
end main
