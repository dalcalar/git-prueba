*
PROCEDURE Fac_1300z
 PUBLIC pdIr, pdIs, puNi, pdCc
 STORE "Cta.Cte.No. 00-068-178525 / Banco de la Nacion" TO mfR2
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE "["+vsEr+"-"+vdOc+"]" TO pdCc
 STORE ALLTRIM(vdIr) TO vdIr
 STORE ALLTRIM(vdIs) TO vdIs
 STORE ALLTRIM(vdEp) TO vdEp
 DO CASE
      CASE LEN(ALLTRIM(pdIr))<=65
           STORE " " TO pdIs
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs))<=65
           STORE vdIr+", "+vdIs TO pdIr
           STORE "Dpto:"+SUBSTR(vdEp, 1, 35) TO pdIs
      OTHERWISE
           STORE vdIr TO pdIr
           STORE "Dist/Dpt:"+vdIs+", "+vdEp TO pdIs
 ENDCASE
 @0,0          Say " "  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+07 Say vFEM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+07 Say vNOM Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+07 Say pDIR Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+07 Say vRUC Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+35 Say pDIS Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(f1300cm1))<=30
      @vLIN,mCLN+35 Say F1300CM1 Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+065 Say F1300NFP   Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+126 Say pDCC       Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
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
                @vLIN,mCLN+0.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+0.0 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+14 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+26 Say F1301DCR    Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123.4 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+140.9 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
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
      @vLIN,mCLN+26.0 Say " "         Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+26.0 Say " "         Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 IF LEN(ALLTRIM(f1300cm1))>30
      @vLIN,mCLN+16 Say F1300CM1    Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+16 Say F1300CM2       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN Say vFRA+" S.E.u.O."  Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3 TO vlIn
 @vLIN,mCLN+037 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+046 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+063 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+069 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+085 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+092 Say F1300NET      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+107 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+110 Say F1300IGV      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+127 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+136 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr, pdIs, puNi
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @0,0 Say Space(01)                 Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+012 Say vFEM            Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vNOM            Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say pDIR            Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+040 Say vCM1            Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+080 Say vTEL            Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vCM2            Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+116 Say vSER+"-"+vDOC   Font "&mLetRom",10 Style "NQ"
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
      IF f1301can=1 .AND. f1301to1=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+4   Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+2.8 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      DO pc2_1300z IN FAC0000A
      @vLIN,mCLN+28 Say F1301DCR    Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF vtOt<>0
           @vLIN,mCLN+123.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+140.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+007 Say vFRA          Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+130 Say vSIG          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+139 Say tVAL          Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+130 Say vSIG          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+139 Say F1300TOT-tVAL Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99" Function "("
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+130 Say vSIG          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+139 Say F1300TOT      Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+1.5 TO vlIn
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
PROCEDURE Des_1300z
 DO dsP_1300z IN FAC0000A WITH "D"
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
 @vLIN,mCLN+11 Say vNOM                      Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say pDIR                      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say pRUC                      Font "&mLetRom",11 Style "NQ"
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
 STORE vlIn+2 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
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
 @vLIN,mCLN+099 Say tNET     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+120 Say F3610IGV Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+138 Say vSIG     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say tTOT     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE prUc, pdIr, pdIs
ENDPROC
*
PROCEDURE Deb_3610z
 DO crE_3610z
ENDPROC
*
PROCEDURE Let_3110z
 PUBLIC prF1, pfR2, pcL1, ptMn
 STORE 08 TO ptMn
 STORE 00 TO pcL1
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
 @0,0                 Say Space(01)             Font "&mLetRom",10   Style "NQ"
 @vLIN,mCLN+027.5     Say F3110SER+"-"+F3110LET Font "&mLetRom",11   Style "NQ"
 @vLIN,mCLN+pCL1+46.5 Say pRF1                  Font "&mLetRom",pTMN Style "NQ"
 @vLIN,mCLN+074.5     Say "LIMA"                Font "&mLetRom",11   Style "NQ"
 @vLIN,mCLN+135.5     Say vSIG                  Font "&mLetRom",11   Style "NQ"
 @vLIN,mCLN+141.8     Say F3110TOT              Font "&mLetRom",11   Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+093.3 Say Substr(Dtoc(F3110FEM),7,4)+" / "+Substr(Dtoc(F3110FEM),4,2)+" / "+Substr(Dtoc(F3110FEM),1,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+114.3 Say Substr(Dtoc(F3110FVE),7,4)+" / "+Substr(Dtoc(F3110FVE),4,2)+" / "+Substr(Dtoc(F3110FVE),1,2) Font "&mLetRom",11 Style "NQ"
 STORE vlIn+5.4 TO vlIn
 @vLIN,mCLN+27    Say vFRA                      Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 IF f3110ren=1
      @vLIN,mCLN+95 Say "RECIBIDO" Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+95 Say "RENOVADO" Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+3.2 TO vlIn
 @vLIN,mCLN+28 Say F3110NOM Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+40 Say AllTrim(F3110DIR)+" "+AllTrim(F3110DIS) Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))<>0
      @vLIN,mCLN+35 Say F3110RUC        Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+35 Say "DNI:"+F3110ELE Font "&mLetRom",10 Style "NQ"
 ENDIF
 @vLIN,mCLN+70 Say F3110TEL Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.6 TO vlIn
 @vLIN,mCLN+48 Say F3110ANO Font "&mLetRom",9 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+40 Say AllTrim(F3110ADI)+" "+AllTrim(F3110ADS) Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+2.2 TO vlIn
 IF LEN(ALLTRIM(f3110aru))=0
      @vLIN,mCLN+36 Say F3110AEL Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+36 Say F3110ARU Font "&mLetRom",10 Style "NQ"
 ENDIF
 RELEASE prF1, pfR2, pcL1, plN1, plN2, ptMn
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp
 PRIVATE ptOt
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 @0,0 Say Space(01)                        Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+15.5 Say F2600FEM              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+74.5 Say F2600FEM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+15.5 Say F2600NOM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+15.5 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+15.5 Say pRUC                  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+77.0 Say F2600SER+"-"+F2600DOC Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+16 Say F2600CM1                Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.5 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="BE" .OR. f2600td1="BC" .OR. f2600td1= ;
    "FA" .OR. f2600td1="FE" .OR. f2600td1="FC"
      @vLIN,mCLN+086.5 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+114.5 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
 ENDIF
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE 0 TO ptOt
 STORE vlIn+4.1 TO vlIn
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
      @vLIN,mCLN+40 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      STORE ptOt+(f2601co1*f2601can) TO ptOt
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
      @vLIN,mCLN+17 Say AllTrim(vADI)+", "+AllTrim(vADS) Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say pLUG                        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+3.9 TO vlIn
 @vLIN,mCLN+11 Say F2600TNO                       Font "&mLetRom",8 Style "NQ"
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN+11 Say AllTrim(F2600TDI)+","+F2600TDS Font "&mLetRom",8 Style "NQ" Pict "@S36" Size 1,33
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+11 Say F2600TRU                       Font "&mLetRom",8 Style "NQ"
 RELEASE prUc, plUg, ppEs, ptPp, ptOt
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
PROCEDURE Let_3110z
 PRIVATE pdIr, paDi, paRu
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 IF LEN(ALLTRIM(f3110aru))<>0
      STORE f3110aru TO paRu
 ELSE
      STORE f3110ael TO paRu
 ENDIF
 @0,0 Say Space(01)                                  Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,1,15)          Font "&mLetAri",8 Style "BQ"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 IF LEN(ALLTRIM(f3110ref))<=14
      @vLIN,mCLN+48 Say F3110REF                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+95  Say "LIMA"                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+136 Say vSIG                             Font "&mLetAri",9 Style "BQ" Size 1,5.1
 @vLIN,mCLN+152 Say F3110TOT                         Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "99,999.99"
 STORE vlIn+0.3 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,16,15)         Font "&mLetAri",8 Style "BQ"
 ENDIF
 @vLIN,mCLN+72  Say F3110FEM                         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+115 Say F3110FVE                         Font "&mLetAri",9 Style "BQ"
 STORE vlIn+4.3 TO vlIn
 @vLIN,mCLN+30 Say "*** "+vFRA+" "+Replicate("*",80) Font "&mLetAri",9 Style "BQ" Size 1,82 Pict "@S84"
 STORE vlIn+4.2 TO vlIn
 IF LEN(ALLTRIM(f3110nom))<=46
      @vLIN,mCLN+38 Say F3110NOM                       Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S50"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110nom))>46
      @vLIN,mCLN+28 Say F3110NOM                       Font "&mLetAri",8 Style "BQ" Size 1,62 Pict "@S62"
 ENDIF
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+35 Say pDIR                              Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+38 Say F3110RUC                       Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+38 Say F3110ELE                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+79 Say F3110TEL                          Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.0 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+44 Say F3110ANO                       Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+44 Say F3110ANO                       Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+38 Say pADI                              Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+38 Say pARU                              Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+79 Say F3110ATL                          Font "&mLetAri",9 Style "BQ"
 RELEASE pdIr, paDi, paRu
ENDPROC
*
PROCEDURE Fel_1300z
 PUBLIC puNi, ppZa, plIn, plI0
 STORE vlIn TO plIn
 SELECT caB_fact
 @ plIn, 0 SAY " "
 DO caB_fel
 STORE plIn+0.5 TO plIn
 @pLIN,06.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "RUC"                          Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300RUC                       Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Forma de Pago"                Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NFP                       Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say vNOM                           Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE                       Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Dirección"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300DIR                       Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Fecha de Vencimiento"         Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300FEM+F1300DIA              Font "&mLetAri",9 Style "NQ"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,034 Say F1300DIS                       Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "T/Cambio"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,143 Say vTCA                           Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,034 Say F1300DEP                       Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Guía de Remisión"             Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say vCM1                           Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "@S12"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Observaciones"                Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                            Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300CM2                       Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li6_1300z IN FAC0000A WITH plIn
 STORE plIn+0.5 TO plIn
 DO deT_chi
 STORE plIn-0.5 TO plIn
 STORE plIn-vlIn TO plI0
 IF plI0<32
      DO WHILE .T.
           IF plI0>=32
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li6_1300z IN FAC0000A WITH plIn
           STORE plIn+0.5 TO plIn
           STORE plI0+0.5 TO plI0
      ENDDO
 ENDIF
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 @pLIN,08 Say "Son: "+vFRA+" S.E.u.O."        Font "&mLetAri",8  Style "NT" Size 1,100 Pict "@S100"
 @pLIN,112.2 Say "OP.GRAVADAS"                Font "&mLetAri",8  Style "NT"
 @pLIN,137.8 Say vSIG                         Font "&mLetAri",8  Style "NT"
 @pLIN,153.2 Say tVAL                         Font "&mLetAri",8  Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.4 TO plIn
 @pLIN,06.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
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
 @pLIN,6.4 Say "Si la mercadería no es retirada de las 24 horas, la empresa no se responsabiliza por rayaduras, roturas o perdidas."                  Font "&mLetAri",7 Style "NTI"
 STORE plIn+1 TO plIn
 @pLIN,6.4 Say "Una vez salida la mercadería no habrá lugar a reclamos."                                                                              Font "&mLetAri",7 Style "NTI"
 @pLIN,6.4 Say Replicate("_",100)                                                                                                                     Font "&mLetAri",10 Style "NT"
 STORE plIn+1.2 TO plIn
 DO CASE
      CASE vtDo="FE"
           @pLIN,6.4 Say "Representación impresa de la Factura Electrónica"                                                                             Font "&mLetAri",7 Style "NT"
      CASE vtDo="FC"
           @pLIN,6.4 Say "Representación impresa de la Factura Electrónica gererada en el Sistema de Sunat. Puede verificarla utilizando su clave SOL." Font "&mLetAri",7 Style "NT"
 ENDCASE
 DO feI_1300z
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
ENDPROC
*
PROCEDURE Bel_1300z
 PUBLIC puNi, ppZa, plIn, plI0
 STORE vlIn TO plIn
 SELECT caB_fact
 @ plIn, 0 SAY " "
 STORE plIn+1 TO plIn
 DO caB_fel
 STORE plIn+1 TO plIn
 @pLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "DNI"                   Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300ELE                Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Forma de Pago"         Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NFP                Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"              Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say vNOM                    Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"              Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE                Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S18"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Dirección"             Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300DIR                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Fecha de Vencimiento"  Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300FEM+F1300DIA       Font "&mLetAri",9 Style "NQ"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,033 Say F1300DIS                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "T/Cambio"              Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,143 Say vTCA                    Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,033 Say F1300DEP                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Guia de Remisión"      Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say vCM1                    Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S10"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Observaciones"         Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                     Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300CM2                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li6_1300z IN FAC0000A WITH plIn
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li6_1300z IN FAC0000A WITH plIn
 DO deT_chi
 STORE plIn-vlIn TO plI0
 IF plI0<35
      DO WHILE .T.
           IF plI0>=35
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li6_1300z IN FAC0000A WITH plIn
           STORE plIn+0.5 TO plIn
           STORE plI0+0.5 TO plI0
      ENDDO
 ENDIF
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
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
 STORE plIn+1.2 TO plIn
 @pLIN,6.4 Say "Si la mercadería no es retirada de las 24 horas, la empresa no se responsabiliza por rayaduras, roturas o perdidas."                  Font "&mLetAri",7 Style "NTI"
 STORE plIn+1 TO plIn
 @pLIN,6.4 Say "Una vez salida la mercadería no habrá lugar a reclamos."                                                                              Font "&mLetAri",7 Style "NTI"
 @pLIN,6.4 Say Replicate("_",100)                                                                                                                     Font "&mLetAri",10 Style "NT"
 STORE plIn+1.2 TO plIn
 DO CASE
      CASE vtDo="BE"
           @pLIN,6.4 Say "Representación impresa de la Boleta Electrónica"                                                                             Font "&mLetAri",7 Style "NT"
      CASE vtDo="BC"
           @pLIN,6.4 Say "Representación impresa de la Boleta Electrónica gererada en el Sistema de Sunat. Puede verificarla utilizando su clave SOL." Font "&mLetAri",7 Style "NT"
 ENDCASE
 DO feI_1300z
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
ENDPROC
*
PROCEDURE Cab_Fel
 PRIVATE pdIr, plEn
 SELECT caB_fact
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\OGOL.PMB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.PMB" TO mdBf
 ENDIF
 DO coLbln
 @pLIN,93.2 Say Replicate("-",55)                Font "&mLetAri",13 Style "NT"
 @pLIN,93.7 Say Replicate("-",55)                Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,102.1 Say "R.U.C. N"                      Font "&mLetAri",16 Style "BQ"
 @pLIN,120.7 Say Chr(176)                        Font "&mLetAri",16 Style "BQ"
 @pLIN,124.2 Say mRUC                            Font "&mLetRom",16 Style "BQ"
 @pLIN,042.0 Say mRAZ                            Font "&mLetRom",12 Style "BT"
 If File("&mDBF")
      @vLIN,9 Say "&mDBF" Bitmap Size 20,30 Isometric
 ENDIF
 STORE plIn+0.1 TO plIn
 @pLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @pLIN,42 Say Substr(mDIR,1,pLEN)             Font "&mLetAri",7  Style "NT" Size 1,90 Pict "@S70"
 ELSE
      @pLIN,42 Say AllTrim(mDIR)                   Font "&mLetAri",7  Style "NT" Size 1,90 Pict "@S70"
 ENDIF
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+1.0 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      @pLIN,42 Say AllTrim(Substr(mDIR,pLEN+1,90)) Font "&mLetAri",7  Style "NT" Size 1,90 Pict "@S70"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @pLIN,42 Say "Teléfonos: "+mTEL           Font "&mLetAri",7  Style "NT" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE plIn+0.6 TO plIn
 DO CASE
      CASE vtDo="FE" .OR. vtDo="FC"
           @pLIN,102.4 Say "FACTURA ELECTRÓNICA"         Font "&mLetAri",14 Style "BT"
      CASE vtDo="BE" .OR. vtDo="BC"
           @pLIN,096.0 Say "BOLETA DE VENTA ELECTRÓNICA" Font "&mLetAri",13 Style "BQ"
 ENDCASE
 STORE plIn+0.4 TO plIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @pLIN,42 Say "Teléfonos: "+mTEL           Font "&mLetAri",7  Style "NT" Size 1,90 Pict "@S70"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @pLIN,42 Say "e-Mail : "+mEMA             Font "&mLetAri",7  Style "NT" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE plIn+0.3 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.4 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @pLIN,42 Say "e-Mail : "+mEMA             Font "&mLetAri",7  Style "NT" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE plIn+0.9 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,009.0 Say "Fecha de Emisión"              Font "&mLetAri",9  Style "BQ"
 @pLIN,031.0 Say ":"                             Font "&mLetAri",9  Style "BQ"
 @pLIN,033.0 Say F1300FEM                        Font "&mLetAri",9  Style "NQ"
 STORE plIn+1.3 TO plIn
 @pLIN,107.0 Say "N"                             Font "&mLetAri",17 Style "BT"
 @pLIN,110.7 Say Chr(176)                        Font "&mLetAri",17 Style "BT"
 DO coLblz
 DO CASE
      CASE vtDo="FE"
           @pLIN,115 Say "F"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BT"
      CASE vtDo="BE"
           @pLIN,115 Say "B"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BT"
      CASE vtDo="FC"
           @pLIN,115 Say "E"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BT"
      CASE vtDo="BC"
           @pLIN,115 Say "EB"+Substr(vSER,2,2)+"-"+vDOC Font "&mLetAri",17 Style "BT"
 ENDCASE
 DO coLbln
 @pLIN,009.0 Say "Hora:"                         Font "&mLetAri",9  Style "BQ"
 @pLIN,031.0 Say ":"                             Font "&mLetAri",9  Style "BQ"
 @pLIN,033.0 Say F1300TIM                        Font "&mLetAri",9  Style "NQ"
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,009.0 Say "Tipo de Moneda"                Font "&mLetAri",9  Style "BQ"
 @pLIN,031.0 Say ":"                             Font "&mLetAri",9  Style "BQ"
 DO CASE
      CASE f1300mon=1
           @pLIN,033 Say "Soles"                   Font "&mLetAri",9  Style "NQ"
      CASE f1300mon=2
           @pLIN,033 Say "Dolar Americano"         Font "&mLetAri",9  Style "NQ"
 ENDCASE
 STORE plIn+0.6 TO plIn
 @pLIN,93.2  Say Replicate("-",55)               Font "&mLetAri",13 Style "NT"
 @pLIN,93.7  Say Replicate("-",55)               Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
PROCEDURE Det_Chi
 @pLIN,008.0 Say "DESCRIPCION"     Font "&mLetAri",7 Style "BQ"
 @pLIN,113.0 Say "UNIDAD"          Font "&mLetAri",7 Style "BQ"
 @pLIN,126.9 Say "CANTIDAD"        Font "&mLetAri",7 Style "BQ"
 @pLIN,143.0 Say "PRECIO-UNITAR"   Font "&mLetAri",7 Style "BQ"
 STORE plIn+0.3 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li6_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li6_1300z IN FAC0000A WITH plIn
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li6_1300z IN FAC0000A WITH plIn
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
      DO CASE
           CASE vtDo="FC" .OR. vtDo="FE"
                DO pc1_1300z IN FAC0000A
           CASE vtDo="BC" .OR. vtDo="BE"
                DO pc2_1300z IN FAC0000A
      ENDCASE
      IF ppZa=0
           @pLIN,08 Say AllTrim(F1301DCR)                         Font "&mLetAri",8 Style "NQ" Size 1,65 Pict "@S65"
      ELSE
           @pLIN,08 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,3,0) Font "&mLetAri",8 Style "NQ" Size 1,65 Pict "@S65"
      ENDIF
      IF vtOt<>0
           @pLIN,112.5 Say pUNI  Font "&mLetAri",8 Style "NQ" Size 1,7  Pict "@S7"
           @pLIN,136.8 Say vCAN  Font "&mLetAri",8 Style "NQ" Size 1,20 Pict "9,999,999.9999"
           @pLIN,155.2 Say vPRE  Font "&mLetAri",8 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      ENDIF
      DO liN_1300z IN FAC0000A WITH plIn
      DO li6_1300z IN FAC0000A WITH plIn
      STORE plIn+1.1 TO plIn
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE FeI_1300z
 PUBLIC plL1, plL2, plL3, psW0
 STORE plIn+1 TO plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 SELECT deT_fact
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
                IF plL1>5 .OR. plL2>7 .OR. plL3>5
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
                          STORE vcLn+28 TO vcLn
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
      STORE mpTh+"DIB\OGOL.PMB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.PMB" TO mdBf
 ENDIF
 @ vlIn, 0 SAY " "
 STORE vlIn+1.3 TO vlIn
 DO caB_cel
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
      @vLIN,051.8 Say F3611DES Font "&mLetAri",9 Style "NQ" Size 1,77 Pict "@S80"
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
PROCEDURE Cab_Cel
 PRIVATE pdIr, plEn
 DO coLbln
 @vLIN,90.2 Say Replicate("-",57)              Font "&mLetAri",13 Style "NT"
 @vLIN,90.7 Say Replicate("-",57)              Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,102.1 Say "R.U.C. N"                    Font "&mLetAri",16 Style "BQ"
 @vLIN,120.7 Say Chr(176)                      Font "&mLetAri",16 Style "BQ"
 @vLIN,124.2 Say mRUC                          Font "&mLetRom",16 Style "BQ"
 DO coLbln
 If File("&mDBF")
      @vLIN,9 Say "&mDBF" Bitmap Size 20,30 Isometric
 ENDIF
 STORE vlIn+0.1 TO vlIn
 @vLIN,120.5 Say Chr(6)                        Font "&mLetAri",16 Style "BT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.3 TO vlIn
 DO CASE
      CASE vtDo="N1" .OR. vtDo="N3"
           @vLIN,092.4 Say "NOTA DE CRÉDITO ELECTRÓNICA" Font "&mLetAri",14 Style "BQ"
      CASE vtDo="N2" .OR. vtDo="N4"
           @vLIN,093.0 Say "NOTA DE DÉBITO ELECTRÓNICA"  Font "&mLetAri",14 Style "BQ"
 ENDCASE
 STORE vlIn+0.7 TO vlIn
 @vLIN,009.0 Say mRAZ                          Font "&mLetRom",12 Style "BT"
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @vLIN,9 Say Substr(mDIR,1,pLEN)            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      @vLIN,9 Say AllTrim(mDIR)                  Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,107.0 Say "N"                           Font "&mLetAri",17 Style "BQ"
 @vLIN,110.7 Say Chr(176)                      Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO ceL_nro IN FAC0000A
 DO coLbln
 @vLIN,090.0 Say "|"                            Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                            Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                            Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                            Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      @vLIN,9 Say AllTrim(Substr(mDIR,pLEN+1,90)) Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL          Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL          Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE vlIn+0.7 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 @vLIN,090.2 Say Replicate("-",57)             Font "&mLetAri",13 Style "NT"
 @vLIN,090.7 Say Replicate("-",57)             Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
