                 
org 100h
                   
str db "CAU TRUC MAY TINH"                  
; add your code here 
;dat che do man hinh voi ngat 10h, ah =0, al = 03
mov ah, 0
mov al, 03
int 10h ; dat che do xong

;dat vi tri con tro dung ngat 10h, ah = 02
mov ah, 02h
mov bh, 0 ;trang 0
mov dh, 12; dong 12
mov dl, 30; cot 30
int 10h ;dat vi tri con tro xong

;in xau ra man hinh dung ngat 10h, ah = 13h
mov ah, 13h
mov al, 0 ;khong dat lai vi tri con tro
mov cx, 11h; do dai 17 ki tu
mov bl, 0e4h; nen vang chu do
lea bp, str; lay dia chi xau ki tu
int 10h ;int ki tu ra man hinh

;ket thuc chuong trinh voi ngat 21h, ah = 4ch
mov ah, 4ch
int 21h 

ret




