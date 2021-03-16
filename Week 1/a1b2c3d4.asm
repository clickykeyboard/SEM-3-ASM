.model small
.stack 100h
.data
.code

main proc
    
    mov dl, 49
    mov ah, 2
    int 21h
    
    mov dl, 32
    mov ah, 2
    int 21h
    
    mov dl, 'A'
    mov ah, 2
    int 21h
    
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, 50
    mov ah, 2
    int 21h   
    
    mov dl, 32
    mov ah, 2
    int 21h
    
    mov dl, 'B'
    mov ah, 2
    int 21h
    
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, 51
    mov ah, 2
    int 21h
    
    mov dl, 32
    mov ah, 2
    int 21h
    
    mov dl, 'C'
    mov ah, 2
    int 21h
    
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, 52
    mov ah, 2
    int 21h   
    
    mov dl, 32
    mov ah, 2
    int 21h
    
    mov dl, 'D'
    mov ah, 2
    int 21h
    
    main endp
end main
