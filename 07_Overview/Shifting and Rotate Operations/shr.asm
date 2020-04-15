; We can do number/2 operation 
;with using shr command  
;and if your number is odd
;asm do this operation:
;(number-1)/2

stack segment 
    
    dw 64 dup (?)
     
ends

code segment
    
       mov ax,7
       shr ax,8
   
    
ends