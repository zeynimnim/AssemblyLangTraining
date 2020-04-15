;SORU:3 tip ogrenci var;basarili,but,kalan
;esik degerin alti direk kaliyor bute girmiyor
;ortalama nota kalanlarin notu etki etmiyor
;ortalamanin ustu basariliiort ile esik arasi bute girer
;trick: lea yi kullanmadik cunku ayni diziye ikinci defa
;ulasmamiz gerekti.. 0 layip kullanabilirdik ama

ortaksg   SEGMENT PARA 'kod'
          ORG 100h
          ASSUME ss:ortaksg,ds:ortaksg,cs:ortaksg
Basla:    JMP NOTLAR
          kalan dw 0
          but dw 0
          basarili dw 0
          topnot dw 0
          esik db 40
          mark db 12,45,98,67,89 
          ogrencisayisi dw 5 

NOTLAR    PROC NEAR
          
          xor ax,ax
          mov cx,ogrencisayisi
          xor bx,bx
          
       L1:mov al,mark[bx]
          cmp al,esik
          jb kaldi
          cbw; al->ax
          add topnot,ax
          jmp son
    kaldi:inc kalan 
      son:inc bx
          Loop L1
          
          xor dx,dx
          mov cx,ogrencisayisi
          sub cx,kalan;cx te esik ogrenci sayisi
          mov ax,topnot
          div cx;al de ortalama var ah 00  
          
          xor bx,bx
          mov cx,ogrencisayisi
       L2:mov ah,mark[bx]
          cmp ah,al
          jb auvvv
          inc basarili
    auvvv:inc bx
          Loop L2
          
          mov cx,ogrencisayisi
          sub cx,kalan
          sub cx,basarili
          mov but,cx
        

         RET; RET komutunun amaci push ve poplari temizlemektir, baska fonksiyonda da push popu kullanilabilir kilsr
ENDP NOTLAR    
ortaksg  ENDS
         END Basla