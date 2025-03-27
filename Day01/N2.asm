.model small
.stack 100h

.data 
n db 2

.code 
start:

mov ax,@data
mov ds,ax

mov dl,n
add dl,48
mov ah,02h
int 21h


mov ax,4c00h
int 21h

end start