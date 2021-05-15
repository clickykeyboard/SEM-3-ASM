.model small
.stack 100h
.data
       
found db '@ is found $'
not_found db '@ is not found$'

var db  ?
array db 100 dup <?>

.code
main proc

    mov ax, @data
    mov ds, ax
    
    mov ah, 1      ; take input for N
    int 21h
    sub al, 48
    
    mov var, al 
    mov cl, 0 
    
    
    mov si, offset array
    L:
    
    
    cmp cl, var 
    je t  
    mov ah,1         ; input of an array
    int 21h
    mov [si],al
    
    
    inc si
    inc cl    
    
    
    jmp l
       
    T:       ; search for @ in inputted string
  
    mov cl, 0 
    
    
    mov si, offset array
    L1:
    
    
    cmp cl, var  ;loop condition
    je t1  
    
    
    cmp [si], '@'
    je t2
    
    
    inc si
    inc cl    
    
    
    jmp l1
    t1:  ;@ is not found
     lea dx,not_found
     mov ah,9
     int 21h
    jmp exit     
         
    t2: ;@ is found
    lea dx,found
    mov ah,9
    int 21h
    
    exit:
    
    main endp
end main
