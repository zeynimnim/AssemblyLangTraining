;We can rotate our number with using 
;shr and rcl 
;shl and rcr
;same commands
;and if we want to do
;mov bx,ax and xor ax,ax operation
;we can use 
;shl and rcl
;shr and rcr

stack segment 
    
    dw 64 dup (?)
     
ends

code segment
       
       mov ax,7
       xor bx,bx
       mov cx,16
    hi:shl ax,1
       rcr bx,1
       loop hi


ends