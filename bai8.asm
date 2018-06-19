
org 100h

; add your code here  
bat_dau:
    ;doc 1 ki tu tu ban phim dung ngat 16h , ah = 0
    mov ah, 0                     
    int 16h 
    mov cl, al ;ma ki tu luu trong al
    ;in dong thong bao dung ngat 21h, ah = 09
    mov ah, 09h
    lea dx, str
    int 21h
    
           
    ;in ki tu vua nhan dung ngat 21h, ah = 02
    mov ah, 02
    mov dl, cl
    int 21h
    cmp al, 1bh ;so sanh voi ki tu ESC
    je ket_thuc
    
    ;xuong dong va lui dau dong de in thong bao
    mov dl, 0dh ;ki tu xuong dong
    int 21h   
    mov dl, 0ah ;ki tu lui dau dong
    int 21h
    jmp bat_dau
           
ket_thuc:
    ;ket thuc chuong trinh dung ngat 21h, ah = 4ch
    mov ah, 4ch
    int 21h
    str db "Phim duoc an la: $"

ret




