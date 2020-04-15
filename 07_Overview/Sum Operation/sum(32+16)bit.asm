;sum 16 bit and 32 bit 
;it doesnt work for ffff+ffffffff
my_ss    SEGMENT PARA STACK 'yigin'
         dw 20 dup(?)
my_ss    ENDS

my_ds    SEGMENT PARA 'veri' 
         sayi1 dw 0FFFAh
         sayi2 dd 0FFFE1005h
         sonuc dd ?
          
my_ds    ENDS  

my_cs    SEGMENT PARA 'kod'    
         ASSUME ss:my_ss,ds:my_ds,cs:my_cs        
ANA PROC FAR
         push ds  
         xor ax,ax
         push ax
         mov ax,my_ds
         mov ds,ax 
    
         lea bx,sonuc
         mov ax,sayi2
         mov dx,sayi1
         add ax,dx
         mov [bx],ax 
         mov ax,[sayi2+2]
         adc [bx+2],ax
         
         
         
         
         
    
    
RETF
ENDP ANA
my_cs ENDS
END ANA


