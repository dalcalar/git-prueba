*
PROCEDURE Fac_1300z
 PUBLIC pdIr, pdIs, puNi, pdCc, pdIa, pmEs, paNo
 STORE "Cta.Cte.No. 00-161-189332 / Banco de la Nacion" TO mfR2
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE "["+vsEr+"-"+vdOc+"]" TO pdCc
 STORE ALLTRIM(vdIr) TO vdIr
 STORE ALLTRIM(vdIs) TO vdIs
 STORE ALLTRIM(vdEp) TO vdEp
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO paNo
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
 @0,0           Say " "  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+027 Say vNOM Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+147 Say pDCC Font "&mLetRom",7  Style "NQ"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+027 Say pDIR Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+130 Say pDIA Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+143 Say pMES Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+152 Say pANO Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+027 Say vRUC Font "&mLetRom",10 Style "NQ"
 IF LEN(ALLTRIM(f1300cm1))<=30
      @vLIN,mCLN+90 Say F1300CM1 Font "&mLetRom",10 Style "NQ"
 ENDIF
 @vLIN,mCLN+118 Say pDIS Font "&mLetRom",10 Style "NQ"   
 STORE vlIn+4.1 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
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
                @vLIN,mCLN+10.1 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+14.7 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+24 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+37 Say F1301DCR    Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+126.4 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+147.9 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.5 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+141 Say vSIG             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+147 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+019 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+141 Say vSIG             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+147 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+141 Say vSIG             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+147 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+141 Say vSIG             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+147 Say F1300TOT         Font "&mLetRom",11 Style "BQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr, pdIs, puNi, pdCc, pdIa, pmEs, paNo
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr, pdIa, pmEs, paNo
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO paNo
 DO diR_1300z IN FAC0000A
 @0,0 Say Space(01)      Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+016.0 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+016.0 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+076.0 Say vDNI Font "&mLetRom",10 Style "NQ"   
 @vLIN,mCLN+094.4 Say pDIA Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+102.4 Say pMES Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+110.0 Say pANO Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+70 Say vSER+"-"+vDOC Font "&mLetRom",7 Style "NQ"   
 STORE vlIn+1.7 TO vlIn
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
                @vLIN,mCLN+1.0 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+5.2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      DO pc2_1300z IN FAC0000A
      @vLIN,mCLN+25 Say F1301DCR    Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF vtOt<>0
           @vLIN,mCLN+086.5 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+106.8 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.7 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+015.0 Say "Son:"+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+099.8 Say vSIG                    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+106.6 Say F1300TOT-tVAL           Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99" Function "("
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+099.8 Say vSIG                    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+105.5 Say F1300TOT                Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 RELEASE puNi, pdIr, pdIa, pmEs, paNo
ENDPROC
*
PROCEDURE Npe_1300z
 DO dsP_1300z IN FAC0000A WITH "N"
 DO dsP_1300z IN FAC0000A WITH "N"
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Cusco"
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
 IF f2600td1="BO" .OR. f2600td1="FA"
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
