.model small
.stack 100h
.data 
.code

main proc
    
    mov dl, 097
    
    mov cx, 26
    
    alphabet_loop: 
    
    mov ah, 2
    int 21h
    
    inc si
    inc dl
    
    loop alphabet_loop
 
    main endp
end main
