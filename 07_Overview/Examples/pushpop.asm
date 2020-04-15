; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
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
    
    mov cx,6
    mov si,5
    mov bx,1
    mov ax,si
    mov di,1
    mov dx,0
    
   l1: push ax
    div di
    add bx,ax 
       pop ax       ;push ve pop x in asýl deðerini saklayýp ortaya çýkarmaya yararrr..
    mul si
    inc di
    loop l1     
     
    
    

    
            
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
