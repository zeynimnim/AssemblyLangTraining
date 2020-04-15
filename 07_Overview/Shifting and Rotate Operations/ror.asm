;ror command shows the most significiant
;bit on the carry flag.. 
;So we can decide that this number
 ;positive or negative. 

stack segment 
    
    dw 64 dup (?)
     
ends

code segment
    
       mov ax,7
       ror ax,16
   
    
ends