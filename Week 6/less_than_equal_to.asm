.model small
.stack 100h
.data
var1 db 50
var2 db 49

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov bl, var2
    cmp var1, bl
    
    jle true
    
    mov dl, 'f'
    mov ah, 2
    int 21h 
    jmp exit
    
    true:
        mov dl, 't'
        mov ah, 2
        int 21h
    
    exit:
   
    main endp
end main
