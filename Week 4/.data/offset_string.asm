.model small
.stack 100h
.data
string db 'hello world$'

.code
main proc
    
    mov ax, @data                  
    mov ds, ax                     
    
    mov dx, offset string
    
    mov ah, 9
    int 21h

    main endp
end main
