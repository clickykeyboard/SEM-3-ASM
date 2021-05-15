.model small
.stack 100h
.data
.code

main proc
    
   mov bx, 0
   mov ax, 5
   
   l:
        cmp bx, ax
        jle t
        
        jmp exit
    
    t:
         add bx, 5
         sub ax, 1
         
         jmp l    
         
   exit:
   
       mov dx, bx
       mov ah, 2
       int 21h
    
   main endp
end main
