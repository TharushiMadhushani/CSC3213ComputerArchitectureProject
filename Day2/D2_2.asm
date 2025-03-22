.model small
.stack 100h

.data
n db 1
m db 6

.code
start:

mov ax,@data
mov ds,ax

mov dl,m ;dl=6
sub dl,n  ;d1=6-1=5
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h
 

end start