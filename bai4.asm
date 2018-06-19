
org 100h



; add your code here  
;thiet lap che do man hinh voi ngat 10h, ah = 0, al = 13h
mov ah, 0
mov al, 13h
int 10h; thiet lap che do man hinh xong


mov dx, 60 ; hang 60
mov cx, 62 ; cot 62
;che do diem anh dung ngat 10h ,ah = 0ch
mov ah, 0ch ; mo che do diem anh
mov al, 1 ; bat diem anh
back:
    int 10h
    dec dx ;giam dx
    cmp dx, 30 ;so sanh
    jnz back 

ret




