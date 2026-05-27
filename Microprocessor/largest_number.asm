.model small
.stack 100h
.code

main proc

; first number input
mov ah, 1
int 21h
sub al, '0'
mov bl, al

; second number input
mov ah, 1
int 21h
sub al, '0'

; compare numbers
cmp bl, al
jg first_is_large   ; jump if BL > AL

mov dl, al          ; AL is largest
jmp print

first_is_large:
mov dl, bl          ; BL is largest

print:
add dl, '0'         ; convert back to ASCII
mov ah, 2
int 21h             ; print result

mov ah, 4ch
int 21h

main endp
end main
