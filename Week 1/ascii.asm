.model small
.stack 100h
.data
.code

main proc

    mov dl, 'a'
    mov ah, 2
    int 21h

    mov dl, 0Ah ; hex for new line
    mov ah, 2
    int 21h

    mov dl, 0Dh ; hex for return carriage
    mov ah, 2
    int 21h

    mov dl, 'b'
    mov ah, 2
    int 21h


    main endp
end main
