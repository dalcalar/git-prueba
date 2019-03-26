*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr, pdOc
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE vsEr+"-"+vdOc TO pdOc
 @vLIN,mCLN+09.0 Say vFEM Font "&mLetRom",10 Style "NT"
 @vLIN,mCLN+40.8 Say vCM1 Font "&mLetRom",10 Style "NT" Size 1,11 Pict "@S11"
 @vLIN,mCLN+70.0 Say vNFP Font "&mLetRom",10 Style "NT" Size 1,30 Pict "@S30"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+09.0 Say vNOM Font "&mLetRom",10 Style "NT" Size 1,78 Pict "@S80"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+09.0 Say pDIR Font "&mLetRom",10 Style "NT" Size 1,78 Pict "@S80"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+09.0 Say vRUC Font "&mLetRom",10 Style "NT"
 @vLIN,mCLN+40.8 Say vVEN Font "&mLetRom",10 Style "NT" Pict "@S30"
 @vLIN,mCLN+70.0 Say vTEL Font "&mLetRom",10 Style "NT"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+09.0 Say vCM2 Font "&mLetRom",10 Style "NT" Size 1,30 Pict "@S30"
 @vLIN,mCLN+67.7 Say vTCA Font "&mLetRom",10 Style "NT" Size 1,11 Pict "99.999"
 @vLIN,mCLN+78.5 Say pDOC Font "&mLetRom",10 Style "NT"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.4 TO vlIn
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
                @vLIN,mCLN+2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7    Pict "999,999"
           ENDIF
           @vLIN,mCLN+15   Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9    Pict "@S10"
      ENDIF
      @vLIN,mCLN+25 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,75   Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+129.4 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+144.7 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+25.0 Say mFR1         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+25.0 Say mFR2         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+25.0 Say "@"          Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+25.0 Say "@"          Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+54  Say tVAL             Font "&mLetRom",10 Style "NQ" Size 1,14.4 Pict "999,999.99"
 @vLIN,mCLN+75  Say F1300NET-tVAL    Font "&mLetRom",10 Style "NQ" Size 1,15.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+95  Say F1300NET         Font "&mLetRom",10 Style "NQ" Size 1,14.4 Pict "999,999.99"
 @vLIN,mCLN+117 Say F1300IGV         Font "&mLetRom",10 Style "NQ" Size 1,14.4 Pict "999,999.99"
 @vLIN,mCLN+134 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+143 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,14.4 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+55  Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 RELEASE puNi, pdIr, pdOc
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr, pdOc
 DO diR_1300z IN FAC0000A
 STORE vsEr+"-"+vdOc TO pdOc
 @vLIN,mCLN+012 Say vFEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+041 Say vDNI Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+067 Say vCM1 Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+104 Say vVEN Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+097 Say pDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+2.8 TO vlIn
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
                @vLIN,mCLN+2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7    Pict "999,999"
           ENDIF
           @vLIN,mCLN+18   Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9    Pict "@S10"
      ENDIF
      @vLIN,mCLN+28 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,75   Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+141 Say vTOT  Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+045.3 Say vTCA             Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 @vLIN,mCLN+073.5 Say tVAL             Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+110.0 Say F1300TOT-tVAL    Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+134.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+048.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 RELEASE puNi, pdIr, pdOc
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
 DO dsP_1300z IN FAC0000A WITH "S"
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
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
