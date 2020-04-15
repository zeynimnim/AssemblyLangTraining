;we can do comparing strings
;with cmps operations
;now look at the codes with cmps nomination 

my_ss SEGMENT PARA STACK 'yigin'
      db 128 dup(?) 
my_ss ENDS

my_ds SEGMENT PARA 'veri'
      dizi1 dw 1,2,3,4,5
      dizi2 dw 1,7,3,4,5 
      b db "esitdegil$"
      a db "esit$"

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
    lea si,dizi1
    lea di,dizi2
    mov cx,5
dongu:mov ax,[si] ;diziyi db tanimlasaydik dogru atayamazdik
      cmp ax,[di]
      jne esitdegil
      add si,2
      add di,2
      loop dongu
      
     mov ah,09h
     lea dx,a
     int 21h 
     jmp son
     esitdegil: mov ah,09h
           lea dx,b
           int 21h
     son:    
    
    
    RETF
ENDP ANA
my_cs ENDS
END ANA
    