.model small
.stack 100h
.code

main proc

mov ah, 1
int 21h        ; keyboard input → AL (ASCII)

mov dl, al     ; copy input to DL
mov ah, 2
int 21h        ; print character

mov ah, 4ch    ; exit program
int 21h

main endp
end main
