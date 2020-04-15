; multi-segment executable file template.

data segment
   dizi db 3,4,6,7,8,9,2,4,6
   tek db 0
   cift db 0
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
    
    
    lea si,dizi 
    mov ax,0
    mov dl,2
    mov cx,9  
     dongu:
     mov al,[si] 
     inc si
     div dl 
     cmp ah,0
     je ciftt
     jne tekk
        devam:
        loop dongu 
        
        jmp son
     
     ciftt:
       inc cift
       jmp devam
       
             
     tekk: 
       inc tek
       jmp devam
     
            son:
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
