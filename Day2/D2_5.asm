.model small
.stack 100h

.data
n db "Number 01:"
a db 2
m db "Number 02:"
b db 3

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset n
mov ah,09h
int 21h
mov dx,a

mov dx,10
mov ah,02h
int 21h

mov dx,offset m
mov ah,09h
int 21h
mov dx,b
mov ah,09h
int 21h
 
mov ax,4c00h
int 21h
 

end start