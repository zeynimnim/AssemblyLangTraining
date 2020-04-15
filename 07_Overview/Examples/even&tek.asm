; multi-segment executable file template.

data segment   
    str1 db " cift sayidir :)$"
    str2 db " tek sayidir :)$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

      mov ah,01
      int 21h
      
      mov dl,2
    
    
   div dl
   cmp ah,0
   je ciftt
   
     mov ah,09h
     lea dx,str2
     int 21h 
     
    jmp son  
    
     ciftt:
     mov ah,09h
     lea dx,str1
     int 21h 
                                
        son:                        
                                
   
    
    mov ax,4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
