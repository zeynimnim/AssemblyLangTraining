; multi-segment executable file template.

data segment
    dizi db 3,4,5
    enbuyuk db ?
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

    lea di,dizi
    mov bl,[di]
    mov cx,2
    
    dongu:
    inc di
    cmp bl,[di]
    jb degis
        devam:
        loop dongu
            
        jmp son
    degis:
    mov bl,[di]
    jmp devam
            son:
            
            mov enbuyuk,bl
           
            
   
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
