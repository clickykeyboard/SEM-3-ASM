print_string macro string_name
    lea dx, string_name
    mov ah, 9
    int 21h
endm

.model small
.stack 100h
.data

string_1 dw "string 1$"
string_2 dw "string 2$"
string_3 dW "string 3$"

.code

newline proc
        mov dx, 10
        mov ah, 2
        int 21h
        mov dx, 13
        mov ah, 2
        int 21h
        
        ret
newline endp

main proc
    
    mov ax, @data
    mov ds, ax
    
    print_string string_1
    call newline
    print_string string_2
    call newline
    print_string string_3
    
    
    main endp
end main
