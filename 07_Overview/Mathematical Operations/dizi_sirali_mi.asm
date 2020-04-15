;dizinin kucukten buyuge 
;sirali olup olmadigini kontrol eder.

my_ss SEGMENT PARA STACK 'yigin'
      dw 20 dup(?)
my_ss ENDS

my_ds SEGMENT PARA 'veri'
      dizi db 1,2,9,4,8
      n dw 5
      tip db ?
my_ds ENDS

my_cs SEGMENT PARA 'code'
      ASSUME ss:my_ss,ds:my_ds,cs:my_cs
 SIRALA PROC FAR  
    push ds
    xor ax,ax
    push ax
    mov ax,my_ds
    mov ds,ax
    
    xor ax,ax
    xor cx,cx 
    xor si,si
    mov cx,n
    lea si,dizi
    dec cx
 L1:mov al,[si]
    cmp al,[si+1]
    ja sirasizmi
    inc si
    Loop L1 
    jmp sirali
    sirasizmi:
    cmp cx,n
    je sirali
    mov tip,0;sirasiz 
    jmp son
    sirali: mov tip,1;sirali  
    son:
    
 RETF   
 ENDP SIRALA
ENDS my_cs
END SIRALA
    
    
       
      
