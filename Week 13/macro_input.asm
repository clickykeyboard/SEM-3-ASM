take_input macro
    mov si, offset string_1
    
    mov cx, 10
    input_loop:
    
        mov ah, 1
        int 21h
        
        mov [si], al
        
        inc si
    loop input_loop
    
    display_output
endm

display_output macro
    mov dl, 10
    mov ah, 2
    int 21h
    mov dl, 13
    mov ah, 2
    int 21h
    
    lea dx, string_1
    mov ah, 9
    int 21h
endm

.model small
.stack 100h
.data

string_1 dw 10 dup('$')   

.code   
main proc
    
    mov ax, @data
    mov ds, ax
    
    take_input
    
    main endp
end main
