print_newline macro
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h    
endm

print_space macro
    mov dx, ' '
    mov ah, 2
    int 21h    
endm

print_data macro register
    mov dl, register
    cmp dl, 10
    jge adjustment_after_addition ; we will use this for adjusting 2 digit ASCII
    jmp continue_with_output
    
    adjustment_after_addition:
        mov al, 1
        mul dl
        
        aam     ; because aaa (adjustment after addition) doesn't work, just multiply with 1 and call aam
                ; for 2 digits
                
        mov right_digit, al
        mov left_digit, ah
        
        mov dl, left_digit
        add dl, 48
        mov ah, 2
        int 21h
        
        mov dl, right_digit
        add dl, 48
        mov ah, 2
        int 21h
        
        jmp exit_output
    continue_with_output:
    add dl, 48
    mov ah, 2
    int 21h
    
    exit_output:
endm

.model small
.stack 100h
.data
left_digit db 0
right_digit db 0
inner_loop_counter dw 1
inner_loop_value db 1
.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    mov bl, 1                  ; also for inner loop
    mov inner_loop_counter, bx ; for inner loop, but we 
                               ; --> will use this to decrease the number of times inner loop runs   
    mov cx, 7 ; for rows
    
    outer_loop:
        push cx
        
        mov cx, inner_loop_counter
        mov inner_loop_value, bl ; this resets inner loop value back to bl
        inner_loop:
            
            print_data inner_loop_value
            print_space
            
            add inner_loop_value, bl    ; adds the value of inner loop value by the incrementing bl
            
        loop inner_loop
        print_newline
        
        ; check if the loop has reached the middle
        cmp bx, 3
        
        ; if it has reached the middle, decrement the number of the times inner loop runs
        jg decrement_inner_loop_counter  
        
        inc inner_loop_counter
        jmp continue_with_loop
        
        
        decrement_inner_loop_counter:
            dec inner_loop_counter
            
        continue_with_loop:
        inc bl  ; this increases the starting value of every row     
        pop cx
    loop outer_loop
    
    main endp
end main
