ortaksg     SEGMENT PARA 'kod'
            ORG 100h
            ASSUME ss:ortaksg,ds:ortaksg,cs:ortaksg
basla:      JMP SIRALA
                n dw 3
 		arr dw 3,-14,89      
		count dw 3 dup(0)
		sonuc dw 3 dup(0)
SIRALA      PROC NEAR
            XOR SI,SI
	    XOR DI,DI
            XOR BX,BX   ; LEA BX,sonuc
	    MOV CX,n
	L1: PUSH CX
            MOV AX,arr[SI]
	    MOV CX,n
	    XOR DI,DI
	L2: CMP arr[DI],AX
	    JNG devam
	    INC count[SI]
     devam: ADD DI,2
            Loop L2
            POP CX
            ADD SI,2
            Loop L1
            MOV CX,n
	    XOR SI,SI
        L3: MOV BX,count[SI]
	    MOV AX,arr[SI]
	    SHL BX,1
	    MOV sonuc[BX],AX   ;MOV [BX],AX aynısıdır :)
	    ADD SI,2
            Loop L3	
            RET
SIRALA   ENDP
ortaksg  ENDS
         END basla			
