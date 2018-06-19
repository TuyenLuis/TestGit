
org 100h

; add your code here
bat_dau:
    ;doc du lieu tu ban phim bang ngat 16h, ah = 0
    mov ah, 0
    int 16h ; ma ASCII duoc luu trong al
    
    ;ki tu b  = 62 h
    cmp al, 62h
    jnz khac
        mov al,03h ;00000011 D1, D0 = 1
        out 61h, al ;dua ra cong 61h
        jmp bat_dau 
    
    khac:
        mov al, 0 ;00000000  D1, D0 = 0
        out 61h, al ;dua ra cong 61h
        jmp bat_dau
    
    ;ket thuc chuong trinh bang ngat 21h, ah = 4ch
    mov ah, 4ch
    int 21h

ret


;*Bai nay khong chac nhe =))*


