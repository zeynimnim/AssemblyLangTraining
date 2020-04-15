;Ucgenin tipini belirleyen algotirmanin kodu.
my_ss SEGMENT PARA STACK 'yigin'
      dw 20 dup(?)
my_ss ENDS 

my_ds SEGMENT PARA 'veri'
      kenar1 db 3
      kenar2 db 4
      kenar3 db 4
      tip db ? ;0,1,2
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
      xor bx,bx
      xor cx,cx
      xor dx,dx
      mov al,4
      mov bl,6
      mov cl,5
      mov dl,tip
      cmp al,bl
      jne kontrol_2  
      cmp al,cl
      jne ikizkenar
      mov dl,1 
      jmp son
kontrol_2:cmp al,cl
      je ikizkenar
      cmp bl,cl
      je ikizkenar
      mov dl,3 
      jmp son
ikizkenar:mov dl,2
      son:
        
      RETF
ENDP ANA  
my_cs ENDS
END ANA
