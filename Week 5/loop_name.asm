.model small
.stack 100h
.data 
first_name db 'b', 'a', 'd', 'r'
second_name db 'i', 'j', 'a', 'z'
.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    
    mov si, offset first_name
    
    mov cx, 4
    
    first_loop: 
    
    mov dl, [si]
    mov ah, 2
    int 21h
    
    inc si
    
    loop first_loop
    
    mov dx, ' '
    mov ah, 2
    int 21h
    
    mov si, offset second_name
    
    mov cx, 4
    
    second_loop: 
    
    mov dl, [si]
    mov ah, 2
    int 21h
    
    inc si
    
    loop second_loop
  
    main endp
end main
