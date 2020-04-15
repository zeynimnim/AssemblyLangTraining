;sometimes you want your register to be 
;big then 8 bits or 16 bitss orr 32 bit..
;let's expand your registers :)
my_ss SEGMENT PARA STACK 'yigin'
      db 128 dup(?) 
my_ss ENDS

my_ds SEGMENT PARA 'veri'
      a dw 2
      b dw 3
my_ds ENDS

my_cs SEGMENT PARA 'kod'
      ASSUME ss:my_ss,ds:my_ds,cs:my_cs
      
   ANA PROC FAR  
    
    push ds
    xor ax,ax
    push ax
    mov ax,my_ds
    mov ds,ax
  
  ;stacktaki demek stackin o an isaret etti yerdir  
  ;push 17 demek 17 degerini stacka at demek
  ;pop 17 demek stacktaki degeri 17'ye at demek
  ;ki 17=a tarzi bir atama
  ;algoritmalar tarihinde gorulmemistir
  ;pop ve push komutlari YALNIZCA WORD ile calisir
  ;8 bit atanamaz ve de cekilemez
  ;cunku stack adresleri word seklinde tanimlidir
  ;0000h gibi  
  
  mov ax,a
  mov bx,b
  push ax
  push bx 
  pop ax
  pop bx 
  ;neyi once push yaptiysan en son onu 
  ;pop lamalisin
  ;burada xyzzyx olmali ama xyzxyz olmus
  ;yani ax ve bx switch yapmis  
  ;xchg 4 clockcycle (ax lisi 3 cc)
  ;bu switch komutlarimiz 10 clock cycle
  
   
    
    RETF
ENDP ANA
my_cs ENDS
END ANA

