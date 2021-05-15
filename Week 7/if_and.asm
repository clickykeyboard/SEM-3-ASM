.model small
.stack 100h
.data
a db 2
b db 8
true_string db 'true$'
false_string db 'false$'

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    
    mov cl, a
    mov ch, b
    
    cmp cl, 5
    jle first_condition
    jmp false
    
    first_condition:
        cmp ch, 5
        jge second_condition
        jmp false
        
        second_condition:
           lea dx, true_string
           mov ah, 9
           int 21h
           
           mov ah, 4ch
           int 21h 
    false:
           lea dx, false_String
           mov ah, 9
           int 21h      
    
    
    main endp
end main
