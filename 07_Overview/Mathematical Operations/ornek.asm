ortaksg SEGMENT PARA 'kod'
        ORG 100h
        ASSUME cs:ortaksg,ss:ortaksg,ds:ortaksg
Basla:  JMP ANA
        sayi1 dw 0FFFFh
        toplam dd 0

ANA PROC NEAR
       
       XOR ax,ax
       LEA si,sayi1
       LEA di,toplam         
       MOV ax,[si]
       ADD ax,22FFh
       MOV [di],ax
       ADC word ptr [di+2],0 
       
        RET
ANA     ENDP   
ortaksg ENDS
        END Basla