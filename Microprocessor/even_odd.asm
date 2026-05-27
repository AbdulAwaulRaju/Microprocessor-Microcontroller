.model small
.stack 100h
.code

main proc

mov ah, 1
int 21h
sub al, '0'     ; convert input to number

mov bl, 2
div bl          ; AL / 2 → remainder in AH

cmp ah, 0
je even         ; if remainder = 0 → even

mov dl, 'O'     ; Odd case
jmp print

even:
mov dl, 'E'     ; Even case

print:
mov ah, 2
int 21h        ; display result

mov ah, 4ch
int 21h

main endp
end main
