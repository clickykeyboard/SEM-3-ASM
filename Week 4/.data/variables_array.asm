.model small
.stack 100h
.data
arr db '1', '2', '3', '4'

.code
main proc
    
    mov ax, @data                  ; code segment accesses the data segment
    mov ds, ax                     ; ds stands for data segment
    
    
    mov si, offset arr             ; si stands for stack index
                                   ; starting address of the array stored in SI register, 
                                   ; - > offset here defines the starting address of the array
    
    
    mov dl, [si + 3]               ; si contains offset, means address of 1 in 'arr' variable
    mov ah, 2
    int 21h
    
    mov dl, [si + 2]
    mov ah, 2
    int 21h
    
    mov dl, [si + 1]
    mov ah, 2
    int 21h
    
    mov dl, [si]
    mov ah, 2
    int 21h 
     
    
    main endp
end main
