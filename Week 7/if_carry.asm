.model small
.stack 100h
.data
carry db 'there is a carry after addition$'
no_carry db ' there is no carry after addition$' 

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov al, 255
    add al, 255
    
    jc true_if_carry
    
    true_if_carry:
        lea dx, carry
        mov ah, 9
        int 21h
        
        mov ah, 4ch
        int 21h
   
   lea dx, no_carry
   mov ah, 9
   int 21h
    
    main endp
end main
