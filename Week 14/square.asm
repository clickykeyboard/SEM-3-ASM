.model small
.stack 100h
.data
.code

draw macro rows columns times 
    mov ah, 2
    mov dh, rows
    mov dl, columns
    int 10h
    
    mov ah, 9
    mov al, '$'
    mov bl, 0001110B
    mov cx, times
    int 10h   
endm

main proc
         
    draw 10 0 10  ; upper horizontal  line
    draw 16 0 10 ; lower horizontal line
    
    ; left vertical line
    
    draw 11 0 1
    draw 12 0 1
    draw 13 0 1
    draw 14 0 1
    draw 15 0 1
    
    ; right vertical line
    draw 11 9 1
    draw 12 9 1
    draw 13 9 1
    draw 14 9 1
    draw 15 9 1
    
    main endp
end main
