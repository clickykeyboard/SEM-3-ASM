.model small
.stack 100h
.data 
array_of_names db 'h', 'a', 'm', 'z', 'a'
.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    
    mov si, offset array_of_names
    
    mov cx, 5
    
    name_loop: 
    
    mov dl, [si]
    mov ah, 2
    int 21h
    
    inc si
    
    loop name_loop
        
    
    
    
    main endp
end main