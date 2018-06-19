
org 100h

; add your code here       
str db "HOC VIEN KTQS"
;dat che do ah = 0, al = 02
mov ah, 0
mov al, 02
int 10h ;dat che do xong
               
;dat vi tri con tro dung ngat 10h, ah = 02
mov ah, 02h
mov bh, 0; trang 0
mov dh, 20; hang 20
mov dl, 15; cot 15
int 10h
;hien dong chu su dung ngat 10h, ah= 13h
mov ah, 13h
mov al, 00 ; cap nhat thuoc tinh cua xau, khong cap nhat vi tri con tro
mov cx, 0dh; do dai xau ki tu la 13
mov bl, 0e4h; nen vang chu do
lea bp, str; nap dia chi cua xau
int 10h ; hien thi xau ra man hinh 

;ket thuc chuong trinh voi ngat 21h, ah = 4ch
mov ah, 4ch
int 21h




ret




