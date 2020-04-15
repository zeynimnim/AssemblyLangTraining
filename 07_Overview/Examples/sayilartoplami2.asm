; multi-segment executable file template.

data segment
toplam dw ? 
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

      mov toplam,0
      mov ax,0
      mov cx,10
      
      L1: add ax,cx
      Loop L1
      
     mov toplam,ax
     
     


           
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
