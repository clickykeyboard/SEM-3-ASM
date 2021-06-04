.model small
.stack 100h
.data

number dw '7'

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov bx, 7 
    mov cx, 7
  
    outer_loop:
        push cx
        
        mov cx, bx
        
        inner_loop:
        
            mov dx, number
            mov ah, 2
            int 21h
            
        loop inner_loop
        
        mov dx, 10
        mov ah, 2
        int 21h
        mov dx, 13
        mov ah, 2
        int 21h
        
        dec number
        
        dec bx
        pop cx
    loop outer_loop
   
    main endp
end main
