add_two_numbers macro number_1 number_2
    mov dx, number_1
    add dx, number_2
    
    add dx, 48
    display_output dx
endm

display_output macro output_to_display
    mov dx, output_to_display
    mov ah, 2
    int 21h
endm

.model small
.stack 100h 
.data       
.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ax, 1
    mov bx, 2             
        
    add_two_numbers ax bx
    
    main endp
end main
