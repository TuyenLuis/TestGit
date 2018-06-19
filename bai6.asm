
org 100h

; add your code here
;dat che do man hinh voi ngat 10h, ah = 0, al = 0
mov ah, 0
mov al, 0
int 10h; dat che do xong

;dat vi tri con tro voi ngat 10h, ah = 02 
mov dl, 20
call DAT_VI_TRI   
    
;in ki tu ra man hinh voi ngat 10h, ah = 09 
mov ah, 09
mov al, 31h; ki tu co ma ASCII 31h
mov cx, 1 ;do dai 1 ki tu  
mov bl, 47h  ;chu trang nen do
int 10h
 
;in ki tu tiep theo        
inc dl ;cot 21
call DAT_VI_TRI
mov ah, 09        
inc al  ;ki tu co ma ASCII 32h
int 10h 

;in ki tu tiep theo
inc dl ;cot 22
call DAT_VI_TRI
mov ah, 09
inc al  ;ki tu co ma ASCII 33h
int 10h 

;in ki tu tiep theo
inc dl ;cot 23
call DAT_VI_TRI
mov ah, 09
inc al  ;ki tu co ma ASCII 34h
int 10h                    

;in ki tu tiep theo
inc dl ;cot 24
call DAT_VI_TRI
mov ah, 09
inc al  ;ki tu co ma ASCII 35h
int 10h 

;in ki tu tiep theo
inc dl ;cot 25
call DAT_VI_TRI
mov ah, 09
inc al  ;ki tu co ma ASCII 36h
int 10h    

;ket thuc chuong trinh voi ngat 21h, ah = 4ch
mov ah, 4ch
int 21h   

DAT_VI_TRI Proc
    mov ah, 02h
    mov bh ,0; trang 0
    mov dh, 12; hang 12
    int 10h
    ret
DAT_VI_TRI Endp

ret




