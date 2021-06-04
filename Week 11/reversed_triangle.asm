.model small
.stack 100h
.data
.code

main proc
    
    mov cx, 4
    mov bx, 0
    mov si, 7
    
    outer_loop:
        push cx
        
        mov cx, bx
        
        cmp bx, 0
        je skip_space
        
        inner_loop_space:
        
            mov dx, ' '
            mov ah, 2
            int 21h
    
        loop inner_loop_space
        
        skip_space:
        mov cx, si
        inner_loop_star:
            
            mov dx, '*'
            mov ah, 2
            int 21h
        
        loop inner_loop_star
        
        dec si ; stars
        dec si ; stars
        
        
        inc bx ; for space
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
