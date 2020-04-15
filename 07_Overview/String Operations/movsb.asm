;Dizgi komutlarindan movsb yi inceleyecegiz.
;Move data from string to string
;si to di
;REP/REPE/REPZ/REPNE/REPNZ  
;REP komutu tek satiri tekrar eder
;Repeat String Operation Prefix 

;we can do nomination with two operations:
;movs or lods-stos 
;now look at the codes with movs nomination 
;AND NOT FORGET THE DO THAT:
;variables => show as ascii => elements 6 !!!
;i think i dont need to do xor for si and di
; because they are 0 first
;oh sorry we can do same thing with mov :)                           
                           

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
    
    xor ax,ax
    lea si,str1
    lea di,str2 
    mov cx,6
   dongu: mov al,[si]
          mov [di],al 
          inc si
          inc di 
   loop dongu 
        
    RETF
ENDP ANA
my_cs ENDS
END ANA

