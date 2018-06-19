
org 100h

;che do cong com1
mov ah,00
mov dx,00
mov al,0dah; 110=4800;11=BAC CHAN;0=1 BIT DUNG;10=7 BI  11011010
int 14h 

;thiet lap duong truyen:
mov al,80h
mov dx,3fbh ;DLAB = 1
out dx,al   

;gui so chia:
mov ax,18h
mov dx,3f8h
out dx,al
mov al,ah
inc dx
out dx,al

;hoi bi trang thai cua thanh ghi
mov dx,03fdh
lap1:
    mov ah,02
    int 14h
    in al,dx
    and al,01h
    cmp al,01h
    jnz lap1   

    ;nhan so lieu tu cong
    mov cx,00
    mov dx,03f8h
    in al,dx
    mov di:[200h],al
    inc di
    cmp al,1bh
    je kt
    jnz lap1
kt:
int 20h

ret




