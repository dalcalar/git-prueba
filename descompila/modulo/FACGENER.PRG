*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdOc, pdIr, pdIs, pdIa, pmEs, paNo
 DO deT_1300z IN FAC0000A WITH "1"
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 STORE ALLTRIM(vdIr) TO pdIr
 STORE SUBSTR(DTOC(f1300fem), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(f1300fem), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(f1300fem), 10, 1) TO paNo
 STORE ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 @0,0 Say Space(01)          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+016 Say F1300NOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+140 Say pDOC     Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+016 Say pDIR     Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S78"
 @vLIN,mCLN+108 Say pDIA     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+127 Say pMES     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+155 Say pANO     Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+016 Say vRUC     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+048 Say pDIS     Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S78"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.5 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to1=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+.6 Say vCAN        Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN    Say vCAN        Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
      ENDIF
      @vLIN,mCLN+17 Say pUNI+" "+F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+121.0 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+146.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+17.0 Say mFR1           Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+17.0 Say mFR2           Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+17.0 Say "@"            Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+17.0 Say "@"            Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 IF tvAl<>f1300net
      @vLIN,mCLN+130.0 Say "Red/Dcto:"   Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+146.0 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12.0 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+146.0 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+0.2 TO vlIn
 @vLIN,mCLN+012.0 Say vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+128.0 Say F1300PIG         Font "&mLetRom",11 Style "NQ" Size 1,03.0 Pict "99"
 @vLIN,mCLN+146.0 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+130.0 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+146.0 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 RELEASE puNi, pdOc, pdIr, pdIs, pdIa, pmEs, paNo
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @0,0 Say Space(01)                            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+008 Say Substr(Dtoc(F1300FEM),1,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+027 Say Substr(Dtoc(F1300FEM),4,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+055 Say Substr(Dtoc(F1300FEM),9,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+125 Say "["+vSER+"-"+vDOC+"]"      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+016 Say F1300NOM                   Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 IF LEN(ALLTRIM(vdNi))<>0
      @vLIN,mCLN+125 Say vDNI                    Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+016 Say pDIR                       Font "&mLetRom",11 Style "NQ" Size 1,90 Pict "@S93"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.6 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to1=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+.6 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN    Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
      ENDIF
      @vLIN,mCLN+17 Say pUNI+" "+F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+109.0 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+136.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+8.5 Say vFRA+" S.E.u.O." Font "&mLetAri",9  Style "NQ" Size 1,100 Pict "@S100"
 IF tvAl<>f1300net
      @vLIN,mCLN+118 Say "Red/Dcto:"   Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+136 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12.0 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+120 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 RELEASE puNi, pdIr
ENDPROC
*
PROCEDURE Npe_1300z
 DO dsP_1300z IN FAC0000A WITH "N"
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Lima"
ENDPROC
*
PROCEDURE Des_1300z
 DO dsP_1300z IN FAC0000A WITH "D"
ENDPROC
*
PROCEDURE Let_3110z
 PUBLIC prF1, pfR2, pcL1, ptMn, pfEm, pfVe, plEt, pdIr, prEn, paDi
 STORE SUBSTR(DTOC(f3110fem), 7, 4)+" / "+SUBSTR(DTOC(f3110fem), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fem), 1, 2) TO pfEm
 STORE SUBSTR(DTOC(f3110fve), 7, 4)+" / "+SUBSTR(DTOC(f3110fve), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fve), 1, 2) TO pfVe
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 STORE 08 TO ptMn
 STORE 00 TO pcL1
 STORE f3110ser+"-"+f3110let TO plEt
 IF f3110ren=1
      STORE "RECIBIDO" TO prEn
 ELSE
      STORE "RENOVADO" TO prEn
 ENDIF
 DO CASE
      CASE AT("*", f3110ref)=0 .AND. LEN(ALLTRIM(f3110ref))>14
           STORE UPPER(f3110ref) TO prF1
           STORE 9 TO ptMn
      CASE AT("*", f3110ref)=0
           STORE UPPER(f3110ref) TO prF1
           STORE 9 TO ptMn
           STORE ((14-LEN(ALLTRIM(f3110ref)))/2) TO pcL1
      OTHERWISE
           STORE 8 TO ptMn
           STORE SUBSTR(f3110ref, 1, AT("*", f3110ref)-1) TO prF1
 ENDCASE
 STORE pcL1+46.5 TO pcL1
 @0,0 Say Space(01)                   Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+027.5 Say pLET            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+pCL1  Say pRF1            Font "&mLetRom",pTMN Style "NQ"
 @vLIN,mCLN+074.5 Say "LIMA"          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+135.5 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141.8 Say F3110TOT        Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+093.3 Say pFEM            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+114.3 Say pFVE            Font "&mLetRom",11 Style "NQ"
 STORE vlIn+5.4 TO vlIn
 @vLIN,mCLN+27.0  Say vFRA            Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+95.0  Say pREN            Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.2 TO vlIn
 @vLIN,mCLN+28.0  Say F3110NOM        Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+40.0  Say pDIR            Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))<>0
      @vLIN,mCLN+35 Say F3110RUC        Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+35 Say "DNI:"+F3110ELE Font "&mLetRom",10 Style "NQ"
 ENDIF
 @vLIN,mCLN+70 Say F3110TEL           Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.6 TO vlIn
 @vLIN,mCLN+48 Say F3110ANO           Font "&mLetRom",9  Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+40 Say pADI               Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+2.2 TO vlIn
 IF LEN(ALLTRIM(f3110aru))=0
      @vLIN,mCLN+36 Say F3110AEL        Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+36 Say F3110ARU        Font "&mLetRom",10 Style "NQ"
 ENDIF
 RELEASE prF1, pfR2, pcL1, ptMn, pfEm, pfVe, plEt, pdIr, prEn, paDi
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC prUc, pdIr, pdIs
 DO ruC_1300z IN FAC0000A
 DO CASE
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp))<=65
           STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIr
           STORE " " TO pdIs
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs))<=65
           STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs) TO pdIr
           STORE "Dpto:"+SUBSTR(ALLTRIM(vdEp), 1, 35) TO pdIs
      OTHERWISE
           STORE ALLTRIM(vdIr) TO pdIr
           STORE "Dist/Dpt:"+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 ENDCASE
 @0,0 Say " "                              Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+14.0 Say vNOM                  Font "&mLetAri",9 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+71.0 Say "["+vSER+"-"+vDOC+"]" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+13.0 Say pRUC                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+113.8 Say Substr(vCM1,1,2)     Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+23.0 Say vFEM                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+113.8 Say Substr(vCM1,4,20)    Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
 STORE vlIn+3.1 TO vlIn
 @vLIN,mCLN+113.8 Say vCM2                 Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      IF f3611ite=1
           @vLIN,mCLN+15 Say F3611DES Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S82"
      ELSE
           @vLIN,mCLN    Say F3611DES Font "&mLetCou",10 Style "NQ"
      ENDIF
      IF f3611tot<>0
           IF f3611tot=ttOt
                @vLIN,mCLN+138 Say tNET                             Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+138 Say Round(F3611TOT/(1+(vPIG/100)),2) Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+16 Say "Direccion del Cliente: "+AllTrim(pDIR)+" "+AllTrim(pDIS) Font "&mLetAri",9 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+16 Say "Son:"+vFRA+" S.E.u.O."                                   Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+140 Say tNET     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+124 Say F3610PIG Font "&mLetRom",11 Style "NQ" Size 1,05 Pict "99"
 @vLIN,mCLN+140 Say F3610IGV Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+137 Say vSIG     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+140 Say tTOT     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE prUc, pdIr, pdIs
ENDPROC
*
PROCEDURE Deb_3610z
 DO crE_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, pdIr, pdOc, ppLa, pfAc, ppAr, ptNo
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 STORE "["+f2600ser+"-"+f2600doc+"]" TO pdOc
 STORE ALLTRIM(f2600mr1)+"/"+f2600pla TO ppLa
 STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pfAc
 STORE SUBSTR(f2600tno, 1, 24) TO ptNo
 @0,0 Say Space(01)               Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+22.0 Say F2600FEM     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+60.0 Say F2600TIM     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+22.0 Say F2600NOM     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+22.0 Say pDIR         Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+22.0 Say pRUC         Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+60.0 Say pDOC         Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+24 Say pPAR        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.2 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+24 Say pLUG        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+22 Say pTNO           Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+62 Say F2600TRU       Font "&mLetRom",10 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+96  Say pFAC       Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+124 Say F2600FFA   Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+22 Say F2600TDI       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+023.5 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=6
           @vLIN,mCLN+042.5 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=12
           @vLIN,mCLN+060.0 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=2 .OR. f2600mot=3
           @vLIN,mCLN+082.0 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.2 TO vlIn
 DO CASE
      CASE f2600mot=4
           @vLIN,mCLN+023.5 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=8
           @vLIN,mCLN+042.5 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=1
           @vLIN,mCLN+082.0 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=13
           @vLIN,mCLN+102.0 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.2 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      IF INT(f2601can)=f2601can
           @vLIN,mCLN+23.4 Say F2601CAN Font "&mLetRom",10 Style "NQ" Pict "999,999"     Size 1,8
      ELSE
           @vLIN,mCLN+26   Say F2601CAN Font "&mLetRom",10 Style "NQ" Pict "999,999.999" Size 1,12
      ENDIF
      @vLIN,mCLN+41      Say F2601NUV Font "&mLetRom",10 Style "NQ" Pict "@S10" Size 1,13
      @vLIN,mCLN+54      Say F2601DCR Font "&mLetRom",10 Style "NQ" Pict "@S65" Size 1,62
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+11 Say pPLA     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+56 Say F2600CIM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+12 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
 RELEASE prUc, plUg, ppEs, pdIr, pdOc, ppLa, pfAc, ppAr, ptNo
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
