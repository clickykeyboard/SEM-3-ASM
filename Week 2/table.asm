.model small
.stack 100h
.data
.code

main proc


    mov dx, 'R'
    mov ah, 2
    int 21h

    mov dx, 'o'
    mov ah, 2
    int 21h

    mov dx, 'l'
    mov ah, 2
    int 21h

    mov dx, 'l'
    mov ah, 2
    int 21h

    mov dx, 09h
    mov ah, 2
    int 21h

    mov dx, 'N'
    mov ah, 2
    int 21h

    mov dx, 'a'
    mov ah, 2
    int 21h

    mov dx, 'm'
    mov ah, 2
    int 21h

    mov dx, 'e'
    mov ah, 2
    int 21h

    mov dx, 0Ah
    mov ah, 2
    int 21h

    mov dx, 0Dh
    mov ah, 2
    int 21h

    mov dx, '0'
    mov ah, 2
    int 21h

    mov dx, '1'
    mov ah, 2
    int 21h

    mov dx, '2'
    mov ah, 2
    int 21h

    mov dx, 09h
    mov ah, 2
    int 21h

    mov dx, 'B'
    mov ah, 2
    int 21h

    mov dx, 'a'
    mov ah, 2
    int 21h

    mov dx, 'd'
    mov ah, 2
    int 21h

    mov dx, 'r'
    mov ah, 2
    int 21h

    main endp
end main
