*
PROCEDURE Fac_1300z
 PUBLIC pdIr, pdIs, puNi, pdCc, pcM1, pcM2
 STORE " " TO pcM1, pcM2
 IF LEN(ALLTRIM(f1300cm1))<=30
      STORE f1300cm1 TO pcM1
 ELSE
      STORE f1300cm1 TO pcM2
 ENDIF
 STORE "["+vsEr+"-"+vdOc+"]" TO pdCc
 DO deT_1300z IN FAC0000A WITH "1"
 DO CASE
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp))<=70
           DO diR_1300z IN FAC0000A
           STORE " " TO pdIs
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs))<=70
           STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs) TO pdIr
           STORE "Dpto:"+SUBSTR(ALLTRIM(vdEp), 1, 35) TO pdIs
      OTHERWISE
           STORE ALLTRIM(vdIr) TO pdIr
           STORE "Dist/Dpt:"+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 ENDCASE
 @0,0           Say " "      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+13  Say vFEM     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13  Say vNOM     Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13  Say pDIR     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13  Say vRUC     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40  Say pDIS     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+40  Say pCM1     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+017 Say F1300NVE Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+065 Say F1300NFP Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+126 Say pDCC     Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+5.8 TO vlIn
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
                @vLIN,mCLN Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+14 Say pUNI  Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+26 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+120 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+140 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+26.0 Say mFR1        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+26.0 Say mFR2        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      STORE vlIn+01.2 TO vlIn
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+16  Say pCM2             Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+12  Say F1300CM2         Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+1.5 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN+046 Say tVAL             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+069 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+092 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+109 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+127 Say vSIG             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+136 Say F1300TOT         Font "&mLetRom",11 Style "BQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr, pdIs, puNi, pdCc, pcM1, pcM2
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @0,0 Say Space(01)                 Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+12 Say vFEM             Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+12 Say vNOM             Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+12 Say pDIR             Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+12 Say vSER+"-"+vDOC    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40 Say vCM1             Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+80 Say vTEL             Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vCM2            Font "&mLetRom",12 Style "NQ"
 IF LEN(ALLTRIM(vdNi))<>0
      @vLIN,mCLN+70 Say " DNI: "+vDNI Font "&mLetRom",10 Style "NQ"
 ENDIF
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.8 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+4   Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+2.8 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      DO pc2_1300z IN FAC0000A
      @vLIN,mCLN+28 Say F1301DCR   Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF vtOt<>0
           @vLIN,mCLN+121.0 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+142.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+007 Say vFRA          Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN+134 Say vSIG          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142 Say tVAL          Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+19 Say F1300NVE       Font "&mLetRom",10 Style "NQ" Size 1,11.4
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN+134 Say vSIG          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142 Say F1300TOT-tVAL Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99" Function "("
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+134 Say vSIG          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142 Say F1300TOT      Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN+19 Say F1300NFP       Font "&mLetRom",10 Style "NQ" Size 1,11.4
 RELEASE puNi, pdIr
ENDPROC
*
PROCEDURE Npe_1300z
 DO dsP_1300z IN FAC0000A WITH "N"
 DO dsP_1300z IN FAC0000A WITH "N"
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Lima"
ENDPROC
*
PROCEDURE Let_3110z
 PUBLIC prF1, pfR2, pcL1, ptMn, pfEm, pfVe, prEn, pdIr, paDi
 STORE 08 TO ptMn
 STORE 00 TO pcL1
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 STORE SUBSTR(DTOC(f3110fem), 7, 4)+" / "+SUBSTR(DTOC(f3110fem), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fem), 1, 2) TO pfEm
 STORE SUBSTR(DTOC(f3110fve), 7, 4)+" / "+SUBSTR(DTOC(f3110fve), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fve), 1, 2) TO pfVe
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
 IF f3110ren=1
      STORE "RECIBIDO" TO prEn
 ELSE
      STORE "RENOVADO" TO prEn
 ENDIF
 STORE pcL1+46.5 TO pcL1
 @0,0 Say Space(01)                         Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+027.5 Say F3110SER+"-"+F3110LET Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+pCL1  Say pRF1                  Font "&mLetRom",pTMN Style "NQ"
 @vLIN,mCLN+074.5 Say "LIMA"                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+135.5 Say vSIG                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141.8 Say F3110TOT              Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+093.3 Say pFEM                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+114.3 Say pFVE                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+5.4 TO vlIn
 @vLIN,mCLN+27 Say vFRA                     Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+95 Say pREN                     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.2 TO vlIn
 @vLIN,mCLN+28 Say F3110NOM                 Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+40 Say pDIR                     Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))<>0
      @vLIN,mCLN+35 Say F3110RUC              Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+35 Say "DNI:"+F3110ELE       Font "&mLetRom",10 Style "NQ"
 ENDIF
 @vLIN,mCLN+70 Say F3110TEL                 Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.6 TO vlIn
 @vLIN,mCLN+48 Say F3110ANO                 Font "&mLetRom",9  Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+40 Say pADI                     Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+2.2 TO vlIn
 IF LEN(ALLTRIM(f3110aru))=0
      @vLIN,mCLN+36 Say F3110AEL              Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+36 Say F3110ARU              Font "&mLetRom",10 Style "NQ"
 ENDIF
 RELEASE prF1, pfR2, pcL1, ptMn, pfEm, pfVe, prEn, pdIr, paDi
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC prUc, pdIr, pdIs
 SELECT caB_nota
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
 @0,0            Say " "                     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11.0 Say vFEM                    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+41.8 Say vCM1                    Font "&mLetRom",11 Style "NQ" Size 1,20 Pict "@S20"
 @vLIN,mCLN+72.0 Say vCM2                    Font "&mLetRom",11 Style "NQ" Size 1,20 Pict "@S20"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11.0 Say vNOM                    Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11.0 Say pDIR                    Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11.0 Say pRUC                    Font "&mLetRom",11 Style "NQ"
 IF LEN(ALLTRIM(pdIs))=0
      @vLIN,mCLN+69 Say "["+vSER+"-"+vDOC+"]"  Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+34 Say pDIS                   Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(pdIs))>0
      @vLIN,mCLN+69 Say " ["+vSER+"-"+vDOC+"]" Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+003 Say "Descripción"            Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
 @vLIN,mCLN+135 Say "V.V.Total"              Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+2 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+3 Say F3611DES     Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           IF f3611tot=ttOt
                @vLIN,mCLN+133 Say tNET Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+133 Say Round(F3611TOT/(1+(vPIG/100)),2) Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+09 Say vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3.8 TO vlIn
 @vLIN,mCLN+099 Say tNET            Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+120 Say F3610IGV        Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+138 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say tTOT            Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE prUc, pdIr, pdIs
ENDPROC
*
PROCEDURE Deb_3610z
 DO crE_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, pdIr, paDi, ppAr
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 @0,0 Say Space(01)                        Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+15.5 Say F2600FEM              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+70.5 Say F2600FEM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+15.5 Say F2600NOM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+15.5 Say pDIR                  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+15.5 Say pRUC                  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+65.0 Say F2600SER+"-"+F2600DOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+16 Say F2600CM1                Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.5 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="BE" .OR. f2600td1="BC" .OR. f2600td1= ;
    "FA" .OR. f2600td1="FE" .OR. f2600td1="FC"
      @vLIN,mCLN+085.5 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+113.5 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
 ENDIF
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.6 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT prOductos
      IF EOF() .OR. f2111tpo<>2
           STORE 1 TO ptPp
      ELSE
           STORE 2 TO ptPp
      ENDIF
      SELECT deT_remi
      DO CASE
           CASE INT(f2601can)=f2601can
                @vLIN,mCLN+01 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+19 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
           OTHERWISE
                @vLIN,mCLN+02 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
                @vLIN,mCLN+19 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
      ENDCASE
      @vLIN,mCLN+40 Say F2601DCR         Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+17 Say F2600MR1                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+37 Say F2600PLA                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+57 Say F2600MR2                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+77 Say F2600PL2                       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+17 Say AllTrim(F2600CIM)              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+17 Say F2600LC1                       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say pPAR                        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.9 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say pLUG                        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+4.4 TO vlIn
 @vLIN,mCLN+11 Say F2600TNO                       Font "&mLetRom",8 Style "NQ"
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN+11 Say AllTrim(F2600TDI)+","+F2600TDS Font "&mLetRom",8 Style "NQ" Pict "@S36" Size 1,33
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+11 Say F2600TRU                       Font "&mLetRom",8 Style "NQ"
 RELEASE prUc, plUg, ppEs, ptPp, pdIr, paDi, ppAr
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
PROCEDURE Des_1300z
 PUBLIC pdC1, pdC2, puNi, pdCr, ppZa
 STORE 00 TO vpAg, vlIn
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO prD_1300z IN FAC0000A
      IF vmD3=2
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      DO CASE
           CASE vlIn=0 .OR. vpAg=0
                DO cdE_1300z
                DO cd1_1300z
                SELECT deT_fact
           CASE vlIn>mpAg-3
                DO cdE_1300z
                SELECT deT_fact
      ENDCASE
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      DO toT_pzasz IN FAC0000A
      SELECT deT_fact
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+21.5 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+22.0 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN Say pUNI         Font "&mLetAri",9 Style "NQ" Size 1,6 Pict "@S6"
      ENDIF
      @vLIN,mCLN+028 Say F1301DCR    Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
      @vLIN,mCLN+124 Say "Pzas:"     Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+135 Say pPZA        Font "&mLetAri",9 Style "BQ" Size 1,10 Pict "9,999"
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      @vLIN,007 Say "Medidas:" Font "&mLetAri",9 Style "NQ"
      SELECT itE_fact
      GOTO TOP
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE 20 TO vcLn
           STORE 00 TO psW0
           STORE 01 TO plL1, plL2, plL3
           DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"= ;
              f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
                IF f1302opc="S"
                     SKIP
                     LOOP
                ENDIF
                IF psW0=0
                     STORE vlIn+1 TO vlIn
                     STORE 01 TO psW0
                ENDIF
                IF plL1>5 .OR. plL2>7 .OR. plL3>7
                     STORE vlIn+1 TO vlIn
                     STORE 01 TO plL1, plL2, plL3
                     STORE 20 TO vcLn
                ENDIF
                @vLIN,vCLN+02 Say F1302CTD Font "&mLetAri",8 Style "NQ" Pict "9999" Size 1,6
                @vLIN,vCLN-02 Say "["      Font "&mLetAri",8 Style "BQ"
                @vLIN,vCLN+03 Say "]"      Font "&mLetAri",8 Style "BQ"
                DO CASE
                     CASE vtPo=5
                          DO CASE
                               CASE f1302un1="M"
                                    @vLIN,vCLN+11.6 Say "x"         Font "&mLetAri",8 Style "NQ" Size 1,1
                                    @vLIN,vCLN+09.8 Say F1302MLA    Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                               CASE f1302un1="P"
                                    @vLIN,vCLN+14.4 Say "x"         Font "&mLetAri",8 Style "NQ" Size 1,1
                                    @vLIN,vCLN+07.7 Say F1302P11    Font "&mLetAri",8 Style "NQ" Size 1,3.6 Pict "999"
                                    @vLIN,vCLN+08.3 Say '"'         Font "&mLetAri",8 Style "NQ"
                                    IF ALLTRIM(f1302p12)<>"/"
                                         @vLIN,vCLN+09.4 Say F1302P12 Font "&mLetAri",8 Style "NQ"
                                    ENDIF
                          ENDCASE
                          DO CASE
                               CASE f1302un2="M"
                                    @vLIN,vCLN+18.2 Say F1302MAN    Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                               CASE f1302un2="P"
                                    @vLIN,vCLN+18.2 Say F1302P21    Font "&mLetAri",8 Style "NQ" Size 1,3.6 Pict "999"
                                    @vLIN,vCLN+18.8 Say '"'         Font "&mLetAri",8 Style "NQ"
                                    IF ALLTRIM(f1302p22)<>"/"
                                         @vLIN,vCLN+19.9 Say F1302P22 Font "&mLetAri",8 Style "NQ"
                                    ENDIF
                          ENDCASE
                          STORE vcLn+28 TO vcLn
                          STORE plL1+1 TO plL1
                     CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                          @vLIN,vCLN+09.8 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          STORE vcLn+16 TO vcLn
                          STORE plL2+1 TO plL2
                     CASE vtPo=4 .OR. vtPo=7
                          @vLIN,vCLN+14.2 Say "x"      Font "&mLetAri",8 Style "NQ" Size 1,1
                          @vLIN,vCLN+10.8 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          @vLIN,vCLN+23.2 Say F1302MAN Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          STORE vcLn+26 TO vcLn
                          STORE plL3+1 TO plL3
                ENDCASE
                SKIP
           ENDDO
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 RELEASE pdC1, pdC2, puNi, pdCr
ENDPROC
*
PROCEDURE Cde_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN     Say mRAZ                     Font "&mLetAri",12 Style "NQ"
 @vLIN,mCLN+131 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetAri",12 Style "NQ"
 STORE vlIn+3.5 TO vlIn
 DO CASE
      CASE vtDo="FA" .OR. vtDo="FC" .OR. vtDo="FE"
           @vLIN,mCLN Say "Orden de Despacho de Factura No."+vSER+"-"+vDOC Font "&mLetAri",12 Style "NQU"
      CASE vtDo="BO" .OR. vtDo="BC" .OR. vtDo="BE"
           @vLIN,mCLN Say "Orden de Despacho de Boleta No." +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQU"
      CASE vtDo="NP"
           @vLIN,mCLN Say "Orden de Despacho de NP No."     +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQU"
 ENDCASE
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Cd1_1300z
 SELECT caB_fact
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN     Say "Cliente"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+14  Say vNOM            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+123 Say "Hora"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+131 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+133 Say vTIM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Vendedor"      Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+14  Say vNVE            Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+123 Say "Fecha"         Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+131 Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+133 Say vFEM            Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Observaciones" Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+18  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+20  Say vCM1            Font "&mLetAri",9 Style "NT"
 IF LEN(ALLTRIM(vcM2))<>0
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN Say vCM2             Font "&mLetAri",9 Style "NT"
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",105)  Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Unid"          Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+12  Say "Cantidad"      Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+28  Say "Descripción"   Font "&mLetAri",11 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",105)  Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Fel_1300z
 PUBLIC puNi, ppZa, plIn, plI0
 STORE vlIn TO plIn
 @ plIn, 0 SAY " "
 DO caB_fel
 STORE plIn+1 TO plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 SELECT caB_fact
 @pLIN,009 Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300FEM               Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300FEM+F1300DIA      Font "&mLetAri",9 Style "NQ"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "RUC"               Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300RUC            Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Forma de Pago"     Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NFP            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Dirección"         Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300DIR            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Tipo de Moneda"    Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f1300mon=1
           @pLIN,138 Say "Soles"           Font "&mLetAri",9 Style "NQ"
      CASE f1300mon=2
           @pLIN,138 Say "Dólar Americano" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,034 Say F1300DIS            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "T/Cambio"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,143 Say vTCA                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,034 Say F1300DEP            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Guía de Remisión"  Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say vCM1                Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "@S12"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Observaciones"     Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300CM2            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 STORE plIn+0.5 TO plIn
 DO deT_fel_chi IN FAC0000A
 STORE plIn-0.5 TO plIn
 STORE plIn-vlIn TO plI0
 IF plI0<35
      DO WHILE .T.
           IF plI0>=35
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_1300z IN FAC0000A WITH plIn
           STORE plIn+0.5 TO plIn
           STORE plI0+0.5 TO plI0
      ENDDO
 ENDIF
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 @pLIN,08 Say "Son: "+vFRA+" S.E.u.O."       Font "&mLetAri",8  Style "NT" Size 1,100 Pict "@S100"
 @pLIN,112.2 Say "OP.GRAVADAS"               Font "&mLetAri",8  Style "NT"
 @pLIN,137.8 Say vSIG                        Font "&mLetAri",8  Style "NT"
 @pLIN,153.2 Say tVAL                        Font "&mLetAri",8  Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.4 TO plIn
 @pLIN,06.4 Say Replicate("-",127)           Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)           Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)           Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 SELECT caB_fact
 @pLIN,012.2 Say "OP.INAFECTAS"               Font "&mLetAri",8 Style "NT"
 @pLIN,037.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,053.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,062.2 Say "OTROS CARGOS"               Font "&mLetAri",8 Style "NT"
 @pLIN,087.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,103.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,112.2 Say "DCTO/REDOND"                Font "&mLetAri",8 Style "NT"
 @pLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,153.2 Say F1300NET-tVAL                Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 @pLIN,012.2 Say "OP.EXONERADAS"              Font "&mLetAri",8 Style "NT"
 @pLIN,037.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,053.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,062.2 Say "OTROS TRIBUTOS"             Font "&mLetAri",8 Style "NT"
 @pLIN,087.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,103.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,112.2 Say "IGV "+Str(F1300PIG,2,0)+"%" Font "&mLetAri",8 Style "NT"
 @pLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,153.2 Say F1300IGV                     Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 @pLIN,012.2 Say "OP.GRATUITAS"               Font "&mLetAri",8 Style "NT"
 @pLIN,037.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,053.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,062.2 Say "FLETE"                      Font "&mLetAri",8 Style "NT"
 @pLIN,087.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,103.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,112.2 Say "TOTAL"                      Font "&mLetAri",8 Style "NT"
 @pLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,153.2 Say F1300TOT                     Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.5 TO plIn
 @pLIN,06.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 STORE plIn+1.2 TO plIn
 DO CASE
      CASE vtDo="FE"
           @pLIN,06.4 Say "Representación impresa de la Factura Electrónica"                                      Font "&mLetAri",7 Style "NQ"
      CASE vtDo="FC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Factura Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.2,06.4 Say "Puede verificarla utilizando su clave SOL."                                        Font "&mLetAri",7 Style "NQ"
 ENDCASE
 DO feI_1300z
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
ENDPROC
*
PROCEDURE Cab_Fel
 PRIVATE pdIr, plEn
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\OGOL.GPJ" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.GPJ" TO mdBf
 ENDIF
 DO coLbln
 @pLIN,93.2 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 @pLIN,93.7 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,102.1 Say "R.U.C. N"                    Font "&mLetAri",16 Style "BQ"
 @pLIN,120.7 Say Chr(176)                      Font "&mLetAri",16 Style "BQ"
 @pLIN,124.2 Say mRUC                          Font "&mLetRom",16 Style "BQ"
 STORE plIn+0.1 TO plIn
 @pLIN,120.5 Say Chr(6)                        Font "&mLetAri",16 Style "BT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 If File("&mDBF")
      @pLIN,009.0 Say "&mDBF" Bitmap Size 20,30 Isometric
 ENDIF
 STORE plIn+1.3 TO plIn
 @pLIN,040.0 Say mRAZ                          Font "&mLetRom",11 Style "BT"
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE plIn+0.3 TO plIn
 DO CASE
      CASE vtDo="FE" .OR. vtDo="FC"
           @pLIN,102.4 Say "FACTURA ELECTRÓNICA"         Font "&mLetAri",14 Style "BQ"
      CASE vtDo="BE" .OR. vtDo="BC"
           @pLIN,096.0 Say "BOLETA DE VENTA ELECTRÓNICA" Font "&mLetAri",13 Style "BQ"
 ENDCASE
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @pLIN,40 Say Substr(mDIR,1,pLEN)           Font "&mLetAri",9  Style "NT" Size 1,90 Pict "@S70"
 ELSE
      @pLIN,40 Say AllTrim(mDIR)                 Font "&mLetAri",9  Style "NT" Size 1,90 Pict "@S70"
 ENDIF
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 IF LEN(ALLTRIM(mdIr))>50
      @pLIN,40 Say AllTrim(Substr(mDIR,pLEN+1,90)) Font "&mLetAri",9  Style "NT" Size 1,90 Pict "@S70"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @pLIN,40 Say "Teléfonos: "+mTEL         Font "&mLetAri",9  Style "NT" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE plIn+0.7 TO plIn
 @pLIN,107.0 Say "N"                           Font "&mLetAri",17 Style "BQ"
 @pLIN,110.7 Say Chr(176)                      Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO CASE
      CASE vtDo="FE"
           @pLIN,115 Say "F"+vSER+"-"+vDOC       Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BE"
           @pLIN,115 Say "B"+vSER+"-"+vDOC       Font "&mLetAri",17 Style "BQ"
      CASE vtDo="FC"
           @pLIN,115 Say "E"+vSER+"-"+vDOC       Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BC"
           @pLIN,115 Say "EB"+Substr(vSER,2,2)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
 ENDCASE
 DO coLbln
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @pLIN,40 Say "Teléfonos: "+mTEL         Font "&mLetAri",9  Style "NT" Size 1,90 Pict "@S70"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @pLIN,40 Say "e-Mail : "+mEMA           Font "&mLetAri",9  Style "NT" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @pLIN,40 Say "e-Mail : "+mEMA           Font "&mLetAri",9  Style "NT" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 @pLIN,93.2 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 @pLIN,93.7 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
PROCEDURE Bel_1300z
 PUBLIC puNi, ppZa, plIn, plI0
 STORE vlIn TO plIn
 @ plIn, 0 SAY " "
 STORE plIn+1 TO plIn
 SELECT caB_fact
 DO caB_fel
 STORE plIn+1 TO plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300FEM               Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300FEM+F1300DIA      Font "&mLetAri",9 Style "NQ"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "DNI"               Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300ELE            Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Forma de Pago"     Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NFP            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S18"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Dirección"         Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300DIR            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Tipo de Moneda"    Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f1300mon=1
           @pLIN,138 Say "Soles"           Font "&mLetAri",9 Style "NQ"
      CASE f1300mon=2
           @pLIN,138 Say "Dolar Americano" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,033 Say F1300DIS            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "T/Cambio"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,143 Say vTCA                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,033 Say F1300DEP            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Guia de Remisión"  Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say vCM1                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S10"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Observaciones"     Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300CM2            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 @pLIN,011.0 Say "CODIGO"          Font "&mLetAri",8 Style "NQ"
 @pLIN,027.0 Say "DESCRIPCION"     Font "&mLetAri",8 Style "NQ"
 @pLIN,111.9 Say "UNIDAD"          Font "&mLetAri",8 Style "NQ"
 @pLIN,125.6 Say "CANTIDAD"        Font "&mLetAri",8 Style "NQ"
 @pLIN,142.4 Say "PRECIO-UNITA"    Font "&mLetAri",8 Style "NQ"
 STORE plIn+0.5 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      DO toT_pzasz IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_1300z IN FAC0000A
      DO pc2_1300z IN FAC0000A
      IF ppZa=0
           @pLIN,27 Say AllTrim(F1301DCR)                         Font "&mLetAri",8 Style "NQ" Size 1,65 Pict "@S65"
      ELSE
           @pLIN,27 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,4,0) Font "&mLetAri",8 Style "NQ" Size 1,65 Pict "@S65"
      ENDIF
      IF vtOt<>0
           @pLIN,008.0 Say vCOD  Font "&mLetAri",8 Style "NQ" Size 1,10 Pict "@S13"
           @pLIN,112.5 Say pUNI  Font "&mLetAri",8 Style "NQ" Size 1,7  Pict "@S7"
           @pLIN,136.8 Say vCAN  Font "&mLetAri",8 Style "NQ" Size 1,20 Pict "9,999,999.9999"
           @pLIN,155.2 Say vPRE  Font "&mLetAri",8 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      ENDIF
      DO liN_1300z IN FAC0000A WITH plIn
      DO li2_1300z IN FAC0000A WITH plIn
      STORE plIn+1.1 TO plIn
      SKIP
 ENDDO
 STORE plIn-vlIn TO plI0
 IF plI0<35
      DO WHILE .T.
           IF plI0>=35
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_1300z IN FAC0000A WITH plIn
           STORE plIn+0.5 TO plIn
           STORE plI0+0.5 TO plI0
      ENDDO
 ENDIF
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 @pLIN,08 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 @pLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 SELECT caB_fact
 IF f1300tot-tvAl>0
      @pLIN,112.5 Say "REDONDEO"         Font "&mLetAri",8 Style "NQ"
      @pLIN,154.5 Say F1300TOT-tVAL      Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 ELSE
      @pLIN,112.5 Say "DESCUENTO"        Font "&mLetAri",8 Style "NQ"
      @pLIN,154.5 Say tVAL-F1300TOT      Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 ENDIF
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 @pLIN,112.2 Say "TOTAL"               Font "&mLetAri",8 Style "NQ"
 @pLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @pLIN,154.5 Say F1300TOT              Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.7 TO plIn
 @pLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
 DO CASE
      CASE vtDo="BE"
           @pLIN,06.4 Say "Representación impresa de la Boleta Electrónica"                                      Font "&mLetAri",7 Style "NQ"
      CASE vtDo="BC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Boleta Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.3,06.4 Say "Puede verificarla utilizando su clave SOL."                                       Font "&mLetAri",7 Style "NQ"
 ENDCASE
 DO feI_1300z
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
ENDPROC
*
PROCEDURE FeI_1300z
 PUBLIC plL1, plL2, plL3, psW0
 STORE plIn+3 TO plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO prD_1300z IN FAC0000A
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      DO toT_pzasz IN FAC0000A
      SELECT deT_fact
      STORE plIn+1.5 TO plIn
      @pLIN,007 Say F1301DCR   Font "&mLetAri",9 Style "BQ" Size 1,75 Pict "@S75"
      @pLIN,144 Say "Pzas:"    Font "&mLetAri",9 Style "BQ"
      @pLIN,155 Say pPZA       Font "&mLetAri",9 Style "BQ" Size 1,10 Pict "9,999"
      STORE plIn+1.5 TO plIn
      @pLIN,007 Say "Medidas:" Font "&mLetAri",9 Style "NQ"
      STORE plIn-1 TO plIn
      SELECT itE_fact
      GOTO TOP
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE 20 TO vcLn
           STORE 00 TO psW0
           STORE 01 TO plL1, plL2, plL3
           DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"= ;
              f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
                IF f1302opc="S"
                     SKIP
                     LOOP
                ENDIF
                IF psW0=0
                     STORE plIn+1 TO plIn
                     STORE 01 TO psW0
                ENDIF
                IF plL1>5 .OR. plL2>7 .OR. plL3>7
                     STORE plIn+1 TO plIn
                     STORE 01 TO plL1, plL2, plL3
                     STORE 20 TO vcLn
                ENDIF
                @pLIN,vCLN+02 Say F1302CTD Font "&mLetAri",8 Style "NQ" Pict "9999" Size 1,6
                @pLIN,vCLN-02 Say "["      Font "&mLetAri",8 Style "BQ"
                @pLIN,vCLN+03 Say "]"      Font "&mLetAri",8 Style "BQ"
                DO CASE
                     CASE vtPo=5
                          DO CASE
                               CASE f1302un1="M"
                                    @pLIN,vCLN+11.6 Say "x"         Font "&mLetAri",8 Style "NQ" Size 1,1
                                    @pLIN,vCLN+09.8 Say F1302MLA    Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                               CASE f1302un1="P"
                                    @pLIN,vCLN+14.4 Say "x"         Font "&mLetAri",8 Style "NQ" Size 1,1
                                    @pLIN,vCLN+07.7 Say F1302P11    Font "&mLetAri",8 Style "NQ" Size 1,3.6 Pict "999"
                                    @pLIN,vCLN+08.3 Say '"'         Font "&mLetAri",8 Style "NQ"
                                    IF ALLTRIM(f1302p12)<>"/"
                                         @pLIN,vCLN+09.4 Say F1302P12 Font "&mLetAri",8 Style "NQ"
                                    ENDIF
                          ENDCASE
                          DO CASE
                               CASE f1302un2="M"
                                    @pLIN,vCLN+18.2 Say F1302MAN    Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                               CASE f1302un2="P"
                                    @pLIN,vCLN+18.2 Say F1302P21    Font "&mLetAri",8 Style "NQ" Size 1,3.6 Pict "999"
                                    @pLIN,vCLN+18.8 Say '"'         Font "&mLetAri",8 Style "NQ"
                                    IF ALLTRIM(f1302p22)<>"/"
                                         @pLIN,vCLN+19.9 Say F1302P22 Font "&mLetAri",8 Style "NQ"
                                    ENDIF
                          ENDCASE
                          STORE vcLn+28 TO vcLn
                          STORE plL1+1 TO plL1
                     CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                          @pLIN,vCLN+09.8 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          STORE vcLn+16 TO vcLn
                          STORE plL2+1 TO plL2
                     CASE vtPo=4 .OR. vtPo=7
                          @pLIN,vCLN+14.2 Say "x"      Font "&mLetAri",8 Style "NQ" Size 1,1
                          @pLIN,vCLN+10.8 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          @pLIN,vCLN+23.2 Say F1302MAN Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          STORE vcLn+26 TO vcLn
                          STORE plL3+1 TO plL3
                ENDCASE
                SKIP
           ENDDO
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3, psW0
ENDPROC
*
PROCEDURE Cel_3610z
 PUBLIC plIn
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\OGOL.GPJ" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.GPJ" TO mdBf
 ENDIF
 @ vlIn, 0 SAY " "
 STORE vlIn+1.3 TO vlIn
 DO caB_cel IN FAC0000A
 STORE vlIn+1 TO vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Fecha de Emisión"          Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3610FEM                    Font "&mLetAri",9 Style "NQ"
 @vLIN,120 Say "ANULACIÓN DE LA OPERACIÓN" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Documento que modifica:"   Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO CASE
      CASE SUBSTR(f3610cm1, 1, 2)="FC"
           @vLIN,9 Say "Factura Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="FE"
           @vLIN,9 Say "Factura Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BC"
           @vLIN,9 Say "Boleta Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BE"
           @vLIN,9 Say "Boleta Electrónica"  Font "&mLetAri",9 Style "BQ"
 ENDCASE
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE SUBSTR(f3610cm1, 1, 2)="FE"
           @vLIN,36 Say "F"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BE"
           @vLIN,36 Say "B"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="FC"
           @vLIN,36 Say "E"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BC"
           @vLIN,36 Say "EB"+Substr(F3610CM1,5,12) Font "&mLetAri",9 Style "BQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Señor (es)"                Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say vNOM                        Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "RUC"                       Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3610RUC                    Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Tipo de Moneda"            Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f3610mon=1
           @vLIN,36 Say "Soles"              Font "&mLetAri",9 Style "NQ"
      CASE f3610mon=2
           @vLIN,36 Say "Dólar Americano"    Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 SELECT deT_nota
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 @vLIN,009 Say "Motivo o Sustento"         Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3611DES                    Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S85"
 SELECT caB_nota
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 @vLIN,008.0 Say "CANTIDAD"                Font "&mLetAri",8 Style "NQ"
 @vLIN,027.0 Say "UNIDAD DE MEDIDA"        Font "&mLetAri",8 Style "NQ"
 @vLIN,051.8 Say "DESCRIPCION"             Font "&mLetAri",8 Style "NQ"
 @vLIN,142.0 Say "VALOR UNITAR"            Font "&mLetAri",8 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE f3610net TO tnEt
 STORE f3610tot TO ttOt
 STORE 0 TO tvAl
 SELECT deT_nota
 SKIP
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,021.2 Say F3611CAN Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      @vLIN,027.0 Say F3611NUV Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "@S15"
      @vLIN,051.8 Say F3611DES Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S85"
      @vLIN,154.5 Say F3611PRE Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      DO liN_1300z IN FAC0000A WITH vlIn
      DO li2_3610z IN FAC0000A WITH vlIn
      STORE vlIn+1.2 TO vlIn
      STORE f3611pre*f3611can TO vtOt
      STORE tvAl+vtOt TO tvAl
      SKIP
 ENDDO
 STORE vlIn TO plIn
 DO fiN_1300z IN FAC0000A WITH "N3"
 IF vlIn>plIn .OR. vlIn=0 .OR. vlIn<70
      IF vlIn=0 .OR. vlIn<70
           STORE 70 TO vlIn
      ENDIF
      DO WHILE .T.
           IF plIn>vlIn
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_3610z IN FAC0000A WITH plIn
           STORE plIn+1 TO plIn
      ENDDO
 ENDIF
 SELECT caB_nota
 STORE vlIn+0.3 TO vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,08 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,112.2 Say "Sub Total Ventas"    Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tVAL                  Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Anticipos"           Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Dcto/Redond"         Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tVAL-tNET             Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Valor de Venta"      Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tNET                  Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "ISC"                 Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "IGV "+Str(F3610PIG,2,0)+"%" Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F3610IGV                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Otros Cargos"               Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                            Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Otros Tributos"             Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                            Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Importe Total"       Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F3610TOT              Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.5 TO vlIn
 @vLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE vtDo="N1"
           @vLIN,06.4 Say "Representación impresa de la Nota de Credito Electrónica"                                      Font "&mLetAri",7 Style "NQ"
      CASE vtDo="N3"
           @vLIN+0.0,06.4 Say "Representación impresa de la Nota de Credito Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @vLIN+1.5,06.4 Say "Puede verificarla utilizando su clave SOL."                                                Font "&mLetAri",7 Style "NQ"
 ENDCASE
 RELEASE plIn
ENDPROC
*
