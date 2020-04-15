; multi-segment executable file template.

data segment
    string1 db "zeynep"
    string2 db "zaynep" 
    a db "esit$"
    b db "esitdegil$"
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
     
     lea si,string1
     lea di,string2
      mov cx,6
      repe cmpsb
      je esit 
      
      mov ah,09h
      lea dx,b
      int 21h
             
      
  jmp son       
      esit:
       mov ah,09h
       lea dx,a
       int 21h
      son: 
       
    
            
         ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
