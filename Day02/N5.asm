;write an  assembly program to add two numbers and display the result
	;Number1:2
	;number2:3
	;Addition of num1 and num2:5

.model small
.stack 100h

.data
n db 5
m db 3
msg1 db "Number1: $" 
msg2 db "Number2: $" 
msg3 db "Addition of Number1 and number2: $" 

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov dl,n
add dl,48
mov ah,02h
int 21h

mov dl,10 ;this 3 lines will give new line
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov dl,m
add dl,48
mov ah,02h
int 21h

mov dl,10 ;this 3 lines will give new line
mov ah,02h
int 21h

mov dx,offset msg3
mov ah,09h
int 21h 

mov dl,n
add dl,m
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h
end start