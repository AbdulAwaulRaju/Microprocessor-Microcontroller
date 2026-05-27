.model small
.stack 100h
.code

main proc

; ----------------------
; Problem 1
; ----------------------
mov cx, 10
mov bl, 0      ; even count
mov bh, 0      ; odd count

l1:
mov ah, 1
int 21h
sub al, '0'

mov dl, 2
div dl

cmp ah, 0
je even_case

inc bh
jmp next1

even_case:
inc bl

next1:
loop l1


; ----------------------
; Problem 2
; ----------------------

mov cx, 10

mov ah, 1
int 21h
sub al, '0'

mov bl, al     ; max1
mov bh, 0      ; max2

dec cx

l2:
mov ah, 1
int 21h
sub al, '0'

cmp al, bl
jg max1

cmp al, bh
jg max2

jmp next2

max1:
mov bh, bl
mov bl, al
jmp next2

max2:
mov bh, al

next2:
loop l2

; sum of two largest numbers
mov al, bl
add al, bh

mov dl, al
add dl, '0'
mov ah, 2
int 21h

mov ah, 4ch
int 21h

main endp
end main
