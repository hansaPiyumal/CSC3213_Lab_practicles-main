;write an program to read two one digit 
;integer from user and do the arithmetic 
;operations as foloows the output

.model small
.stack 100h
.data

msg db "Enter the first number : $"
msg2 db "Enter the second number : $"
msg3 db "the Addition is : $"
msg4 db "the subtraction is : $"
msg5 db "the multiplication is : $"
msg6 db "the division quotient is : $"
msg7 db "the division reminder is : $"
n1 db 0
n2 db 0
n3 db 0
n4 db 0
n5 db 0
n6 db 0
n7 db 0

.code 
start:
mov ax,@data
mov ds,ax

mov dx,offset msg1 ;dx is string register
mov ah,09h;ah is function register
int 21h

mov ah,01h;3   al=48+3=51
int 21h

mov dl,al;  al=51  dl=51
sub dl,48 ;dl=51-48=3

mov n1,dl ;n1=3

mov dl,0ah ;next line
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al ;dl=48+2=50
sub dl,48 ;dl=50-48=2

mov n2,dl ;n2=2

mov dl,0ah ;next line
mov ah,02h
int 21h

mov dx,offset msg3
mov ah,09h
int 21h

mov dl,n1 ;dl=3
add dl,n2 ;dl=3+2=5
add dl,48 ;dl=5+48

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end 
