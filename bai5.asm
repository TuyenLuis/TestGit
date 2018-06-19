
org 100h

; add your code here   
bat_dau:
    ; hien thi thong bao su dung ngat 21h, ah = 09
    mov ah, 09h
    lea dx, str
    int 21h ;hien thi xong
    
    ;doc ki tu tu ban phim dung ngat 16h, ah = 0
    mov ah, 0
    int 16h
    
    ;hien thi ki tu len man hinh dung ngat 10h, ah = 0Eh
    mov ah, 0eh ;al luu ma ASCII 
    int 10h  
    cmp al, 1bh  ;so sanh voi ki tu ESC
    je ket_thuc 
    ;xuong dong va ve dau dong voi ngat 21h
    mov ah, 02
    mov dl, 0dh ;xuong dong
    int 21h
    mov dl, 0ah ;ve dau dong
    int 21h
    jmp bat_dau
     
                           
;ket thuc chuong trinh voi ngat 21h, ah = 4ch 
ket_thuc:
    mov ah, 4ch
    int 21h                        
    str db "Nhan phim: $"                     
ret




