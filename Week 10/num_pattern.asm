.model small
.stack 100h
.data

number dw '1'

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov bx, 1 
    mov cx, 6
  
    outer_loop:
        push cx
        
        mov cx, bx
        
        inner_loop:
        
            mov dx, ax
            mov ah, 2
            int 21h
            
        loop inner_loop
        
        mov dx, 10
        mov ah, 2
        int 21h
        mov dx, 13
        mov ah, 2
        int 21h
        
        inc number
        
        inc bx
        pop cx
    loop outer_loop
   
    main endp
end main
