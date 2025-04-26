.model small
.stack 100h
.data
m1 db "ENter the number :$"
m2 db " Hi $"
m3 db " bye $"
n1 db 0

.code
mov ax,@data
mov ds,ax

mov dx,offset m1
mov ah,09h
int 21h

mov ah,01h ;3+48=51
int 21h

mov dl,al;  al=51  dl=51
sub dl,48 ;dl=51-48=3
mov n1,dl ;n=3

mov dl,10 ;next line
mov ah,02h
int 21h

cmp n1,5
je msg1
jne msg2

msg1:
mov dx,offset m2
mov ah,09h
int 21h
jmp endn

msg2:
mov dx,offset m3
mov ah,09h
int 21h
jmp endn

endn:
mov ax,4c00h
int 21h
end