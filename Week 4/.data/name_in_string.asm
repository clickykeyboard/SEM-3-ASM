.model small
.stack 100h
.data
string db 'Badr Ijaz 012$'

.code
main proc
    
    mov ax, @data                  
    mov ds, ax                     
    
    lea dx, string         ; load effective address -> loads the entire string and puts it to dl
    mov ah, 9
    int 21h

    main endp
end main
