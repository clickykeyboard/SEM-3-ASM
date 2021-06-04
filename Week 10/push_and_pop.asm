.model small
.stack 100h
.data
string db 'badr$'
.code
main proc 
    
    mov ax, @data
    mov ds, ax  
    
    mov si, offset string 
    
    mov cx, 4   
    push_values:
        mov bx,[si]
        push bx 
        inc si
    loop push_values
     
    mov cx, 4
    pop_values:
        pop dx
        mov ah,2
        int 21h        
    loop pop_values                         
    
    main endp
end main
