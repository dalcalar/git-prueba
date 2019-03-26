*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr, pdIa, pmEs, paNo
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO paNo
 @vLIN,mCLN+020.5 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.70 TO vlIn
 @vLIN,mCLN+020.5 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,120 Pict "@S123"
 STORE vlIn+1.55 TO vlIn
 @vLIN,mCLN+120.0 Say pDIA Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+133.0 Say pMES Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+146.0 Say pANO Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.10 TO vlIn
 @vLIN,mCLN+020.5 Say vRUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+040.8 Say vCM1 Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
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
                @vLIN,mCLN+9 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+8 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+20   Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+30 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+121.0 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+142.7 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+30.0 Say mFR1           Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+30.0 Say mFR2           Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+30.2 Say "@"            Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+30.2 Say "@"            Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 IF f1300net-tvAl<>0
      @vLIN,mCLN+120.0 Say "Dcto/Red:"   Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+142.7 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+16    Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 @vLIN,mCLN+142.7 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+126.7 Say F1300PIG         Font "&mLetRom",11 Style "NQ" Size 1,04.4 Pict "99"
 @vLIN,mCLN+142.7 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+142.7 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99"
 RELEASE puNi, pdIr, pdIa, pmEs, paNo
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr, pdIa, pmEs, paNo
 DO diR_1300z IN FAC0000A
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO paNo
 @vLIN,mCLN+021.5 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.90 TO vlIn
 @vLIN,mCLN+021.5 Say vDNI Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.40 TO vlIn
 @vLIN,mCLN+120.0 Say pDIA Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+133.0 Say pMES Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+146.0 Say pANO Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.20 TO vlIn
 @vLIN,mCLN+021.5 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S103"
 @vLIN,mCLN+042.8 Say vCM1 Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.4 TO vlIn
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
                @vLIN,mCLN+11 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+10 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+24    Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+34 Say F1301DCR   Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123.7 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+143.7 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.8 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 IF f1300tot-tvAl<>0
      @vLIN,mCLN+124.4 Say "Dcto/Red:"   Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+143.7 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+2.5 TO vlIn
 @vLIN,mCLN+016.5 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 @vLIN,mCLN+143.7 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99"
 RELEASE puNi, pdIr, pdIa, pmEs, paNo
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
ENDPROC
*
PROCEDURE Cre_3610z
ENDPROC
*
PROCEDURE Deb_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, puNi, ppAr, plEt, ppLa, pdIa, pmEs, paNo, pfAc
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE ALLTRIM(f2600mr1)+plEt+ALLTRIM(f2600pla) TO ppLa
 STORE SUBSTR(DTOC(f2600fem), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(f2600fem), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(f2600fem), 7, 4) TO paNo
 STORE f2600sr1+"-"+f2600do1 TO pfAc
 IF LEN(ALLTRIM(f2600mr1))=0 .OR. LEN(ALLTRIM(f2600pla))=0
      STORE "" TO plEt
 ELSE
      STORE "/" TO plEt
 ENDIF
 @0,0 Say Space(01)          Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+23.0 Say pDIA    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+33.0 Say pMES    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+41.2 Say pANO    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.5 TO vlIn
 @vLIN,mCLN+010 Say pPAR     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+080 Say pLUG     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+102 Say pPLA     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+010 Say F2600NOM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+102 Say F2600CIM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+016 Say pRUC     Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+102 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+031 Say F2600TNO Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+117 Say F2600TD1 Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+070 Say F2600TRU Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+117 Say pFAC     Font "&mLetRom",11 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.45 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      DO meD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_2600z IN FAC0000A
      @vLIN,mCLN+19 Say F2601DCR   Font "&mLetRom",11 Style "NQ" Size 1,75   Pict "@S75"
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+100.8 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+099.6 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      @vLIN,mCLN+121 Say pUNI      Font "&mLetRom",11 Style "NQ" Size 1,9    Pict "@S10"
      STORE vlIn+1.5 TO vlIn
      SKIP
 ENDDO
 RELEASE prUc, plUg, ppEs, ptPp, puNi, ppAr, plEt, ppLa, pdIa, pmEs, paNo, pfAc
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
