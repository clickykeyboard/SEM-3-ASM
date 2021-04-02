.model small
.stack 100h
.data
name_roll db 'Badr 012'

.code
main proc
    
    mov ax, @data                  
    mov ds, ax                     
    
    mov si, offset name_roll
    
    mov dl, [si]
    mov ah, 2
    int 21h
	
	mov dl, [si + 1]
    mov ah, 2
    int 21h
	
	mov dl, [si + 2]
    mov ah, 2
    int 21h
	
	mov dl, [si + 3]
    mov ah, 2
    int 21h
	
	mov dl, [si + 4]
    mov ah, 2
    int 21h
	
	mov dl, [si + 5]
    mov ah, 2
    int 21h
	
	mov dl, [si + 6]
    mov ah, 2
    int 21h
	
	mov dl, [si + 7]
    mov ah, 2
    int 21h

    main endp
end main
