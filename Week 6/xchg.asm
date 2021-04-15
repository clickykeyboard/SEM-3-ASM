.model small
.stack 100h
.data

var1 db 'a'
var2 db 'b'

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ah, var1            ; putting 'a' in ah
    xchg var2, ah           ; swapping var2 ('b') and ah('a') values
    mov var1, ah            ; putting 'b' in var 1
    
    mov dl, var1
    mov ah, 2
    int 21h
    
    mov dl, 10
    mov ah, 2
    int 21h
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, var2
    mov ah, 2
    int 21h
    
    main endp
end main 
