
org 100h

; add your code here  
;dat che do man hinh dung ngat 10h, ah = 0, al = 06
mov ah, 0
mov al, 13h
int 10h ;dat che do man hinh xong
          
;dat vi tri diem anh (60, 60)
mov dx, 60; hang 60
mov cx, 60; cot 60
mov bh, 0; trang 0

back:
    mov ah, 0ch ;viet vao diem anh
    mov al, 01 ;mo diem anh
    int 10h  
    
    dec cx ;giam cx
    dec dx ;giam dx 
    cmp cx, 40 
    jnz back
  


;ket thuc chuong trinh bang ngat 21h, ah = 4ch
mov ah, 4ch
int 21h

ret




