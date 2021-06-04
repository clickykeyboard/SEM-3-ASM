.model small
.stack 100h
.data
.code

main proc
    
    mov cx, 3
    mov bx, 3
    mov si, 1
    
    outer_loop:
        push cx
        
        mov cx, bx
        inner_loop_space:
        
            mov dx, ' '
            mov ah, 2
            int 21h
    
        loop inner_loop_space
        
        mov cx, si 
        inner_loop_star:
            
            mov dx, '*'
            mov ah, 2
            int 21h
        
        loop inner_loop_star
        
        inc si
        inc si
        
        
        dec bx ; for space
        pop cx ; outer
        
        mov dx, 10
        mov ah, 2
        int 21h
        mov dx, 13
        mov ah, 2
        int 21h
        
    loop outer_loop
    
    
    main endp
end main
