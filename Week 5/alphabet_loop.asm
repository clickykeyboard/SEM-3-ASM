.model small
.stack 100h
.data 
alphabet db 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    
    mov si, offset alphabet
    
    mov cx, 26
    
    alphabet_loop: 
    
    mov dl, [si]
    mov ah, 2
    int 21h
    
    inc si
    
    loop alphabet_loop
    
   
  
    main endp
end main
