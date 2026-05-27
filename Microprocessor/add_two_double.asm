.model small
.stack 100h
.code

main proc

mov ah, 1
int 21h
sub al, '0'     ; convert ASCII to number
mov bl, al      ; store first digit

mov ah, 1
int 21h
sub al, '0'     ; second digit

add bl, al      ; addition of two numbers

add bl, '0'     ; convert back to ASCII for display
mov dl, bl
mov ah, 2
int 21h        ; print result

mov ah, 4ch
int 21h

main endp
end main
