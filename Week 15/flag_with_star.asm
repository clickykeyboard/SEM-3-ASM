.model small
.stack 100h
.data
.code
main proc


    ; white
    
    mov ah, 6
    mov bh, 11111111B   
    
    mov ch, 15 ; starting row
    mov cl, 10 ; starting column
    mov dh, 30 ;ending row
    mov dl, 20 ;ending column
    int 10h 
     
    ; green
    
    mov ah, 6
    mov bh, 00101111B    
    
    mov ch, 15 ; starting row
    mov cl, 20 ; starting column
    mov dh, 30 ;ending row
    mov dl, 60;ending column
    int 10h
    
    ; stars
    
    ; cursor position 
    mov ah, 02
    mov bh, 0
    mov dh, 17 ; rows
    mov dl, 35 ; columns
    int 10h
    
    ; character
    mov ah, 09
    mov al, '*'
    mov bl, 00101111B
    mov bh, 0
    mov cx, 2
    int 10h
    
    ; cursor position 
    mov ah, 02
    mov bh, 0
    mov dh, 18 ; rows
    mov dl, 32 ; columns
    int 10h
    
    ; character
    mov ah, 09
    mov al, '*'
    mov bl, 00101111B
    mov bh, 0
    mov cx, 2
    int 10h
    
    ; cursor position 
    mov ah, 02
    mov bh, 0
    mov dh, 19 ; rows
    mov dl, 30 ; columns
    int 10h
    
    ; character
    mov ah, 09
    mov al, '*'
    mov bl, 00101111B
    mov bh, 0
    mov cx, 1
    int 10h
    
    ; cursor position 
    mov ah, 02
    mov bh, 0
    mov dh, 20 ; rows
    mov dl, 29 ; columns
    int 10h
    
    ; character
    mov ah, 09
    mov al, '*'
    mov bl, 00101111B
    mov bh, 0
    mov cx, 1
    int 10h
    
    ; cursor position 
    mov ah, 02
    mov bh, 0
    mov dh, 21 ; rows
    mov dl, 30 ; columns
    int 10h
    
    ; character
    mov ah, 09
    mov al, '*'
    mov bl, 00101111B
    mov bh, 0
    mov cx, 1
    int 10h
    
    ; cursor position 
    mov ah, 02
    mov bh, 0
    mov dh, 22 ; rows
    mov dl, 32 ; columns
    int 10h
    
    ; character
    mov ah, 09
    mov al, '*'
    mov bl, 00101111B
    mov bh, 0
    mov cx, 2
    int 10h
    
    ; cursor position 
    mov ah, 02
    mov bh, 0
    mov dh, 23 ; rows
    mov dl, 35 ; columns
    int 10h
    
    ; character
    mov ah, 09
    mov al, '*'
    mov bl, 00101111B
    mov bh, 0
    mov cx, 2
    int 10h
    
    ; cursor position 
    mov ah, 02
    mov bh, 0
    mov dh, 20 ; rows
    mov dl, 36 ; columns
    int 10h
    
    ; character
    mov ah, 09
    mov al, '*'
    mov bl, 00101111B
    mov bh, 0
    mov cx, 1
    int 10h
      
    
    mov dl, ' '
    int 21h
    
    main endp
end main