;we can find some deterministic 
;things on strings  
;and change them with another thing
;with scas operations
;now look at the codes  
;oh sorry you dont need scas you can do same 
;thing with cmp :))).

my_ss SEGMENT PARA STACK 'yigin'
      db 128 dup(?) 
my_ss ENDS

my_ds SEGMENT PARA 'veri'
      dizi db "zeynep@hotmail.com"
      b db "tekrargiriniz$"
      a db "dogrulandi$"

my_ds ENDS

my_cs SEGMENT PARA 'kod'
      ASSUME ss:my_ss,ds:my_ds,cs:my_cs
      
   ANA PROC FAR  
    
    push ds
    xor ax,ax
    push ax
    mov ax,my_ds
    mov ds,ax
    
    xor ax,ax
    lea si,dizi
    mov cx,18
    mov al,"e"

dongu: cmp al,[si] 
       je degis
       devam: 
       inc si   
       loop dongu
       
       jmp son
       degis:
       mov [si],"3" 
       jmp devam
       son:
       
    RETF
ENDP ANA
my_cs ENDS
END ANA
