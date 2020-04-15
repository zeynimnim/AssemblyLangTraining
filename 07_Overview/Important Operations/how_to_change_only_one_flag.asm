;soo let's get opposite of ZF flag 
;but other flags should be kept their values 

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
    
    ;sf zf ? af ? pf ? cf
    ;1  0  0 1  1  0 1  0
    ;0  1  0 0  0  0 0  0  xor with 40h
    ;1  1  0 1  1  0 1  0
    ;we get the oposite of zf only
    pushf
    lahf; get the values of flags to "ah" register
    xor ah,40h
    popf
    sahf; 
    
;you can look the flags and see that only zf changed.
    
    RETF
ENDP ANA
my_cs ENDS
END ANA

