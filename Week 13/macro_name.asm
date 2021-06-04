print_string macro string
    lea dx, string
    mov ah, 9
    int 21h
    
    print_newline
endm

print_newline macro
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
endm

.model small
.stack 100h
.data                     

name_ db 'Badr Ijaz$'
roll db '012$'
university db 'Lahore Garrison University$'
address db 'DHA Phase VI mein kidhr$'

.code

main proc
    
    mov ax, @data
    mov ds, ax
        
    print_string name_
    print_string roll
    print_string university
    print_string address
    
    main endp
end main
