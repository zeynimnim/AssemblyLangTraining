; multi-segment executable file template.

data segment
   string1 db "kac sayi vardir?$"
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

 mov ax,0 ;0 dan 25 e kadar teker teker sayilara boluncek
 mov bx,0 ;ax 5'e tam bolundugunde bu 1 artcak
 mov cx,25 ;adim sayimiz
 mov dl,5 ;bolen sayimiz
   
  dongu: 
   inc ax
   push ax
   div dl ;ah 0 oldugunda sayi tam bolunuyor demektir
   
    cmp ah,0
    je dongu2
    jne dongu3
  devam:
  loop dongu  
  
  jmp son  
    
  dongu3:
  pop ax
  jmp devam  
  
  dongu2:
  inc bx
  pop ax
  jmp devam
    
    
      son:
      
      mov ah,09h
      lea dx,string1
      int 21h
      
      mov ah,09h
      lea dx,bx
      int 21h
      
            
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
