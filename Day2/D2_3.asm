.model small
.stack 100h

.data
n db 2
m db 4

.code
start:

mov ax,@data
mov ds,ax

mov al,n ;al=2
mul m  ;2*3

mov dl,al ;dl=6
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h
 

end start