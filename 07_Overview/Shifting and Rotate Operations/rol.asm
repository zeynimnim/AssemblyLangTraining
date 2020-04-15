;ror command shows the least significiant
;bit on the carry flag.. 
;So we can decide that this number
 ;odd or even. 

stack segment 
    
    dw 64 dup (?)
     
ends

code segment
    
       mov ax,7
       rol ax,16
   
    
ends