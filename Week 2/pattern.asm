.model small
.stack 100h
.data
.code

main proc
    
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, 0Ah 
    mov ah, 2
    int 21h
    mov dl, 0Dh  
    mov ah, 2
    int 21h
    
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, 0Ah 
    mov ah, 2
    int 21h
    mov dl, 0Dh  
    mov ah, 2
    int 21h
    
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, 0Ah 
    mov ah, 2
    int 21h
    mov dl, 0Dh  
    mov ah, 2
    int 21h
    
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, '&'
    mov ah, 2
    int 21h
    mov dl, 0Ah 
    mov ah, 2
    int 21h
    mov dl, 0Dh  
    mov ah, 2
    int 21h
    
    main endp
end main
