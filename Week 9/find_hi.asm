.model small
.stack 100h
.data

not_found db 'hi is not found in the inputted string$'
found db 'hi is found in the inputted string$'
input_string db 100 dup<?>

.code
main proc
    
    ; mov data into data segment
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h    
    sub al, 48 ; adjust from character to decimal number 
    
    mov bl, al ; mov al to bl for loop counter
    mov cl, 0  ; initialize counter
    
    mov si, offset input_string ; set stack index to 0 for input_string
    
    mov dl, 10
	mov ah, 2
	int 21h
	mov dl, 13
	mov ah, 2
	int 21h
                               
    loop_input:
         cmp cl, bl
         je done_loop_input ; jump to done_input label if the condition al == cl done
         
         mov ah, 1
         int 21h
         
         mov [si], al  ; shift input to each si of input_string
         
         inc cl
         inc si
         
         jmp loop_input
   
    done_loop_input: 
		
		mov dl, 10
		mov ah, 2
		int 21h
		mov dl, 13
		mov ah, 2
		int 21h
        
        mov si, offset input_string ; set stack index to 0 for input_string
        
        mov cl, 0                   ; use counter again for loop
        loop_through_string:
            cmp cl, bl                      ; loop till the entered input size
            je done_loop_through_string     ; if the condition is met "hi" was not found
            
            cmp [si], 'h'                   ; check if current index letter is h
            je first_condition_met          ; if it is check if the second one is i
            
			inc cl
			inc si
			
            jmp loop_through_string
            
            first_condition_met:
                cmp [si + 1], 'i'           ; if second index letter is i
                je second_condition_met     ; jump to found
				
				inc cl
				inc si
				
                jmp loop_through_string
                
                second_condition_met:
             
                    lea dx, found
                    mov ah, 9
                    int 21h
                    
                    mov ah, 4ch
                    int 21h
    
    done_loop_through_string:
        lea dx, not_found
        mov ah, 9
        int 21h    
    
    main endp
end main
