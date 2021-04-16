.model small 
.stack 100h 
.data 
name db 'Badr Ijaz$' 
roll_number db '012$' 
father_name db 'Ijaz Ahmad$' 
dashes db '-------$'
  
.code 
main proc
              
    mov ax, @data     
    mov ds, ax
              
    lea dx, name     
    mov ah, 9     
    int 21h
              
    mov dl, 10     
    mov ah, 2     
    int 21h     
    mov dl, 13     
    mov ah, 2     
    int 21h
              
    lea dx, dashes     
    mov ah, 9     
    int 21h
              
    mov dl, 10     
    mov ah, 2     
    int 21h    
    mov dl, 13     
    mov ah, 2     
    int 21h
              
    lea dx, roll_number     
    mov ah, 9     
    int 21h
              
    mov dl, 10     
    mov ah, 2     
    int 21h     
    mov dl, 13     
    mov ah, 2     
    int 21h
              
    lea dx, dashes     
    mov ah, 9     
    int 21h
              
    mov dl, 10     
    mov ah, 2     
    int 21h     
    mov dl, 13     
    mov ah, 2     
    int 21h
              
    lea dx, father_name     
    mov ah, 9     
    int 21h
                        
    main endp 
end main
