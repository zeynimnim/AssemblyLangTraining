;algorithm of finding smallest element of array 
my_ss SEGMENT PARA STACK 'yigin'
      dw 128 dup(?) 
my_ss ENDS

my_ds SEGMENT PARA 'veri'
      dizi dw 3,5,2,6,4 
      min dw ?
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
     lea si,dizi 
     mov bx,[si] ;bx nominates minimum
     mov cx,5
     dec cx 
    
     
 dongu: mov ax,[si+2] 
        cmp ax,bx ;don't do [si+2] :))
        jg false 
        mov bx,ax
        devam:
        add si,2 
        loop dongu 
        cmp cx,0
        je son
        false:
        jmp devam 
        son: 
        mov min,bx
        
        
  
   
     
   
    
    RETF
ENDP ANA
my_cs ENDS
END ANA

