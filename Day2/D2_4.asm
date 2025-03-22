.model small
.stack 100h

.data
n db 7
m db 3
r db ?

.code
start:

mov ax,@data
mov ds,ax

mov ah,00
mov al,n ;al=7
div m  ;al=7/3  ah=1

mov r,ah  ;r=1

mov dl,al ;dl=2
add dl,48  ;2+48=50

mov ah,02h
int 21h

mov dl,10 ;nexline
mov ah,02h
int 21h


mov dl,r ;dl=1
add dl,48 ;dl=1+48=49

mov ah,02h
int 21h


mov ax,4c00h
int 21h
 

end start