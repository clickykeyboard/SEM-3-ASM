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
    
    ; first half     
    draw 10 10 1
    draw 11 9 3
    draw 10 10 1
    draw 12 8 5
    draw 10 10 1
    draw 13 7 7
    
    ; second half
    draw 14 8 5
    draw 15 9 3
    draw 16 10 1
    
    
    
    
    main endp
end main
