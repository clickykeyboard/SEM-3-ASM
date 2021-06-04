formula macro a b
    mov al, a
    
    mov dl, 2
    mul dl
    
    sub al, b
    mov dl, al
       
    add dl, 48
    mov ah, 2
    int 21h
endm

newline macro
    mov dl, 10
    mov ah, 2
    int 21h
    mov dl, 13
    mov ah, 2
    int 21h
endm    

.model small
.stack 100h
.data
.code

main proc
    
    mov ah, 1   ; first input
    int 21h
    mov cl, al
    sub cl, 48
    
    newline
    
    mov ah, 1   ; second input
    int 21h
    mov bl, al
    sub bl, 48
    
    newline
    
    formula cl bl
    
    main endp
end main

