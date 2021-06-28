.model small
.stack 100h
.data
.code
main proc   
    
    ; white
    mov ah, 6
    mov bh, 11111111B    
    
    mov ch, 10 ; starting row
    mov cl, 10 ; starting column
    mov dh, 14 ;ending row
    mov dl, 60 ;ending column
    int 10h
    
    ; blue
    mov ah, 6
    mov bh, 00010000B    
    
    mov ch, 15 ; starting row
    mov cl, 10 ; starting column
    mov dh, 20 ;ending row
    mov dl, 60 ;ending column
    int 10h
    
    ; red
    mov ah, 6
    mov bh, 01000000B    
    
    mov ch, 21 ; starting row
    mov cl, 10 ; starting column
    mov dh, 26 ;ending row
    mov dl, 60 ;ending column
    int 10h
    
    
    
    
    mov dl, ' '
    int 21h
    
    main endp
end main