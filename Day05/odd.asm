;Write th assembly  language program to input a single digit 
;number and check if it is even or odd

.model small
.stack 100h
.data 
msg1 db "Enter an Integer : $"
msg2 db " This is even $"
msg3 db "this is odd $"
n db 0

.code
mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al  
sub dl,48 
mov n,dl 

mov dl,10 ;next line
mov ah,02h
int 21h

mov ah,00
mov bl,2
mov al,n
div bl;n/2=3/2=al=1  ah=1


cmp ah,0
je evenn
jne oddd

evenn:
mov dx,offset msg2
mov ah,09h
int 21h
jmp endn

oddd:
mov dx,offset msg3
mov ah,09h
int 21h
jmp endn

endn:
mov ax,4c00h
int 21h
end