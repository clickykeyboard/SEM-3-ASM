.model small
.stack 100h
.data
.code

main proc
    
    mov al, 'B'
    mov dl, al               
    
    mov ah, 2
    int 21h      
    
    mov al, 'a'
    mov dl, al
    
    mov ah, 2
    int 21h
    
    mov al, 'd'
    mov dl, al
    
    mov ah, 2
    int 21h
    
    mov al, 'r'
    mov dl, al
    
    mov ah, 2
    int 21h

    main endp
end main
