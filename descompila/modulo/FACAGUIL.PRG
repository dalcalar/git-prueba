*
PROCEDURE Fac_1300z
 PUBLIC pdIr, puNi
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 @vLIN,mCLN+05.0 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+44.0 Say vNVE          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+74.0 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+05.0 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+74.0 Say vRUC          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+05.0 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+74.0 Say vTEL          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+07.0 Say vNFP          Font "&mLetRom",10 Style "NQ" Pict "@S30"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.7 TO vlIn
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
                @vLIN,mCLN+117 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+116 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+100    Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN Say F1301DCR       Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+126.9 Say vPRE  Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+142.0 Say vTOT  Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN Say F1301REF    Font "&mLetRom",10 Style "NQ" Size 1,60   Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN     Say mFR1       Font "&mLetRom",10 Style "NQ" Size 1,75  Pict "@S75"
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN     Say mFR2       Font "&mLetRom",10 Style "NQ" Size 1,75  Pict "@S75"
 ELSE
      @vLIN,mCLN     Say "@"        Font "&mLetRom",10 Style "NQ" Size 1,75
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN     Say "@"        Font "&mLetRom",10 Style "NQ" Size 1,75
 ENDIF
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+001 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+014 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+037 Say F1300NET      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+071 Say F1300IGV      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134 Say vSIG          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F1300TOT      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+002 TO vlIn
 @vLIN,mCLN+055 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 RELEASE pdIr, puNi
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+005 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+042 Say vNVE          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+073 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+005 Say vNOM          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+073 Say vDNI          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+005 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+073 Say vTEL          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+122 Say vNFP          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3 TO vlIn
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
                @vLIN,mCLN+117 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+116 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+100    Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN Say F1301DCR       Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+126.9 Say vPRE  Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+142.0 Say vTOT  Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+058.0 Say "Sub-Total:"             Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+073.5 Say tVAL                     Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+097.0 Say "Dct/Red:"               Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+110.0 Say F1300TOT-tVAL            Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+134.0 Say vSIG                     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142.5 Say F1300TOT                 Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+002.0 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
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
 PUBLIC prUc, plUg, ptPp, pdIr, pdIs
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 STORE ALLTRIM(f2600dir) TO pdIr
 STORE ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIs
 @0,0 Say Space(01)           Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+15.5 Say F2600NOM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+15.5 Say pDIR     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+80.5 Say pDIS     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+15.5 Say pRUC     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+65.8 Say F2600FEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+80.5 Say F2600FEM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+26   Say F2600TNO Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+80.5 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+80.5 Say F2600CIM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+11   Say F2600TRU Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+80.5 Say F2600MR1 Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+90.0 Say F2600PLA Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+146.5 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+174.5 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
 ENDIF
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.8 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT prOductos
      IF EOF() .OR. f2111tpo<>2
           STORE 1 TO ptPp
      ELSE
           STORE 2 TO ptPp
      ENDIF
      SELECT deT_remi
      @vLIN,mCLN+07 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
      @vLIN,mCLN+25 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
      @vLIN,mCLN+59 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 RELEASE prUc, plUg, ptPp, pdIr, pdIs
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
