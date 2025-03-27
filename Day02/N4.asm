;write an  assembly program to devide two numbers and display the result 
.model small
.stack 100h

.data
n db 2
m db 5 
r db ?


.code
start:

mov ax,@data
mov ds,ax

mov ah,00
mov al,m
div n
mov r,ah

mov dl,al
add dl,48
mov ah,02h
int 21h

mov dl,10 ;this 3 lines will give new line
mov ah,02h
int 21h

mov dl,r
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h
end start