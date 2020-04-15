; multi-segment executable file template.

data segment
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

    ;puf nokta..pufnoktakodlama
    ;if kolunun bos(false)kolu 
    ;varsa o kola giden etiket hazirlanir ve
    ;if dongusu sonundaki islem bu etikette 
    ;icra ettirilir.   
                     
    mov ax,0
    mov bx,0                 
                     
    mov ah,01 ;AL ye bir sayi aliyoruz
    int 21h
    
    cmp ax,0
    jne elsek
       mov bx,1 
       
       elsek:
       mov cx,5 
    
    
        
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
