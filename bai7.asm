
org 100h

;thiet lap duong truyen:dat bit D7 co thanh ghi 3fbh len 1:
mov al,80h
mov dx,3fbh;nap dia chi
out dx,al   ;DLAB =1

;gui so chia
mov ax,08h;toc do truyen 14.400
mov dx,3f8h;dia chi phan thap so chia
out dx,al; chuyen phan cao so chia sang al
inc dx; dia chi phan cao so chia
out dx,al; nap phan cao so chia 

;thiet lap tham so truyen:
mov ah, 0;khoi tao cong COM
mov dx, 0
mov al,0cah ; 110=4800;01=BAC LE;0=1 BIT DUNG;10=7 BI 1100 1010
int 14h

;ket thuc ct
mov ah, 4ch
int 20h


ret




