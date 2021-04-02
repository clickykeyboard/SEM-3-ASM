.model small
.stack 100h
.data
.code

main proc
  
    mov ah, 1           ; input
    int 21h
    
    mov cl, al          ; <---\...
                        ; we don't put al to cl, since using ah and interrupt will alter al we have to store it in cl
    mov dl, 010
    mov ah, 2
    int 21h
    
    mov dl, 013
    mov ah, 2
    int 21h
    
    mov dl, cl
    mov ah, 2
    int 21h
 
    main endp
end main
