;How many odd or even numbers in our serie ?  

my_ss SEGMENT PARA 'yigin'
      db 20 dup(?)
my_ss ENDS  

my_ds SEGMENT PARA 'veri'
      dizi dw 1,2,3,4,5
      n dw 5; cx ile kullanacagiz   
my_ds ENDS 

my_cs SEGMENT PARA 'kod'  
      ASSUME ss:my_ss,ds:my_ds,cs:my_cs  
      ANA PROC FAR     
      push ds
      xor ax,ax
      push ax
      mov ax,my_ds
      mov ds,ax 
      
  
      lea si,dizi
      mov cx,n 
      xor dx,dx; tek sayilari sayar
      xor bx,bx; cift sayilari sayar 
   L1: xor ax,ax
       mov ax,[si]
       shr ax,1 
       JC tek_s
       INC bx
       jmp atla
tek_s:INC dx 
atla:  ADD si,2
       LOOP L1 
       RETF 

ANA ENDP     
my_cs ENDS

END ANA

        
   
      
       
