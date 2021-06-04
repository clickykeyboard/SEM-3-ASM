.model small
.stack 100h
.data
.code

main proc
    
    mov bx, 5 ; for spaces
    mov cx, 5 ; for outer loop
    mov si, 1 ; for stars
    
    outer_loop:
        push cx    
        
        mov cx, bx
        print_space_loop:
            mov dx, ' '
            mov ah, 2
            int 21h
        loop print_space_loop
           
        mov cx, si
        print_star_loop:
            cmp cx, si      ; check if current loop value is equal to si
            je print_star   ; if it is, print star
            
            cmp cx, 1       ; check if current loop value is equal to the last loop
            je print_star   ; if it is, print star
            
            cmp si, 9       ; check if is the last iteration of star
            je print_star   ; if it is, just print the stars till cx
            
            mov dx, ' '     ; else print spaces
            mov ah, 2
            int 21h
            
            jmp try_loop_again
            
            print_star:
                mov dx, '*'
                mov ah, 2
                int 21h
            
            try_loop_again:
            
        loop print_star_loop
        
            mov dx, 10       
            mov ah, 2
            int 21h
            mov dx, 13
            mov ah, 2
            int 21h
            
            dec bx
            inc si
            inc si
            
            pop cx
    loop outer_loop
    
    main endp
end main
