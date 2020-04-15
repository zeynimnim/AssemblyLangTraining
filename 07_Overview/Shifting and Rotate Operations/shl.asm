;We can do number*2 operation 
;with using shl command  
;end of the command line 
;our number will be zero (same with shr)
stack segment 
    
    dw 64 dup (?)
     
ends

code segment
    
       mov ax,7
       shl ax,8
   
    
ends