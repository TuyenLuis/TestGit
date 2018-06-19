
org 100h

DATA DB "HELLO","$"
;che do cong com1
mov ah,00
mov dx,00
mov al,0dah; 110=4800;11=BAC CHAN;0=1 BIT DUNG;10=7 BI   11011010
int 14h
;thiet lap duong truyen:
mov al,80h
mov dx,3fbh
out dx,al ;DLAB = 1
;gui so chia: n = (1.8432x10^6)/(4800x16) = 24 = 18h
mov ax,18h
mov dx,3f8h
out dx,al
mov al,ah
inc dx
out dx,al
;thiet lap tham so truyen:
mov al,82h
mov dx,03fbh
out dx,al  ;DLAB = 1
mov [SI],OFFSET DATA
;hoi bi trang thai cua thanh ghi
mov dx,03fdh
lap1:
    mov ah,01
    int 14h
    in al,dx
    and al,20h
    cmp al,20h
    jnz lap1
    mov al,[SI]
    cmp al,"$"
    je kt
kt:
int 20h

ret




