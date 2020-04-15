;sometimes you want your register to be 
;big then 8 bits or 16 bitss orr 32 bit..
;let's expand your registers :)
my_ss SEGMENT PARA STACK 'yigin'
      db 128 dup(?) 
my_ss ENDS

my_ds SEGMENT PARA 'veri'
      str1 db "zeynep"
      str2 db 6 dup(?)
my_ds ENDS

my_cs SEGMENT PARA 'kod'
      ASSUME ss:my_ss,ds:my_ds,cs:my_cs
      
   ANA PROC FAR  
    
    push ds
    xor ax,ax
    push ax
    mov ax,my_ds
    mov ds,ax
    
    mov al,12h
    cbw ;all time it does al=>ax
        ;we see that it clears the ah^^
        ;convert byte to word
        ; ax <=  al
        ;cwd is another using type of this:) 
        ; dx ax <= ax
        ;double word = duppo  
        ;cbw clock cycles: 2
        ;xor clock cycles :3 
        
    
    RETF
ENDP ANA
my_cs ENDS
END ANA

