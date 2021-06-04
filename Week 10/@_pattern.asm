.model small
.stack 100h
.data
.code
main proc
    
    
    mov cx, 3
    mov bx, 1
    
    outer_loop:
        push cx
        
        mov cx, bx
        
        inner_loop:
            mov dx, '@'
            mov ah, 2
            int 21h
        loop inner_loop
        
        mov dx, 10
        mov ah, 2
        int 21h
        mov dx, 13
        mov ah, 2
        int 21h
        
        
        inc bx
        pop cx
    loop outer_loop
   
    main endp
end main
