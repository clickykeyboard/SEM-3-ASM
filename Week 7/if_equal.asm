.model small
.stack 100h
.data
.code

main proc
    
    mov ah, 1
    int 21h
    
    mov bl, al
    
    mov ah, 1
    int 21h
    
    mov dl, al
    
    cmp dl, bl
    
    je equal
    
    mov dl, 10
    mov ah, 2
    int 21h
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, '2'
    mov ah, 2
    int 21h
    
    jmp exit
    
    equal:
      
      mov dl, 10
      mov ah, 2
      int 21h
      mov dl, 13
      mov ah, 2
      int 21h  
    
      mov dl, '1'
      mov ah, 2
      int 21h
   
    exit:    

    main endp
end main
