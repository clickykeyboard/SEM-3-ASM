.model small
.stack 100h
.data

first_row db 6 dup ('@')

.code
main proc
    
 
    mov ax, @data
    mov ds, ax
    
    mov si, offset first_row  
    mov cx, 6
    
    first_loop:
        
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop first_loop
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
   
    mov si, offset first_row
    mov cx, 5
    
    second_loop:
        
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop second_loop
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov si, offset first_row
    mov cx, 4
    
    third_loop:
        
        mov dl, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop third_loop
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov si, offset first_row
    mov cx, 3
    
    fourth_loop:
        
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop fourth_loop
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov si, offset first_row
    mov cx, 2
    
    fifth_loop:
        
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop fifth_loop
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov dx, '@'
    mov ah, 2
    int 21h
   
    main endp
end main