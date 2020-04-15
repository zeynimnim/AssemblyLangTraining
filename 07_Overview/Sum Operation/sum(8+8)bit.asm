
   ;8 bit A ve B sayilarini toplayan ve
;16 bitlik toplam degiskenine atayan
;kod parcacigimiz.

my_ss SEGMENT PARA 'yigin'
      db 20 dup(?)
my_ss ENDS

my_ds SEGMENT PARA 'veri'
      a db 1111b
      b db 1111b
      toplam dw ?
my_ds ENDS  

my_cs SEGMENT PARA 'kod'
      ASSUME SS:my_ss,DS:my_ds,CS:my_cs
      
ANA PROC FAR 
    push ds
    xor ax,ax
    push ax
    mov ax,my_ds
    mov ds,ax
    
    xor ax,ax
    xor bx,bx 
    mov al,a
    mov bl,b 
    add al,bl 
    mov toplam,ax
    
    RETF
ANA ENDP
my_cs ENDS
END ANA

         
