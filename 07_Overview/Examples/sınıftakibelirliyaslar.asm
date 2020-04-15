; multi-segment executable file template.

data segment 
    a dw 14,12,15,10,17,13,14,16,13,12,14,12,15,10,17,13,14,16,13,12,14,12,15,10,17,13,14,16,13,12
    
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

        
        
mov count13,0
mov count14,0
mov count15,0
mov count16,0
mov cx,30


L1: cmp si,13
    je countt13
        cmp si,14
        je countt14
            cmp si,15
            je countt15
               cmp si,16
               je countt16
               
               devam:
               Loop L1
    
  jmp son
               
    countt13:
    inc count13
    devam
    
    countt14:
    inc count14
    devam
    
    countt15
    inc count15
    devam
    
    countt16
    inc count16
    devam
    
               
  son:             
               






















            
    lea dx, pkey
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
