*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr, pdOc
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE vsEr+"-"+vdOc TO pdOc
 @vLIN,mCLN+027.5 Say vNOM Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.80 TO vlIn
 @vLIN,mCLN+027.5 Say pDIR Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.95 TO vlIn
 @vLIN,mCLN+027.5 Say vRUC Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+111.0 Say vNFP Font "&mLetRom",12 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.95 TO vlIn
 @vLIN,mCLN+027.5 Say vCM1 Font "&mLetRom",12 Style "NQ" Size 1,20 Pict "@S20"
 @vLIN,mCLN+099.0 Say pDOC Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+138.0 Say vFEM Font "&mLetRom",12 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+5 TO vlIn
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
                @vLIN,mCLN+11 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+10 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+25    Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+35 Say F1301DCR   Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+111.0 Say vPRE Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.9999"
           @vLIN,mCLN+138.0 Say vTOT Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+35.0 Say mFR1           Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+35.0 Say mFR2           Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+35.0 Say "@"            Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+35.0 Say "@"            Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 IF tvAl<>f1300net
      @vLIN,mCLN+116.0 Say "Red/Dcto"    Font "&mLetRom",12 Style "NQ"
      @vLIN,mCLN+138.6 Say F1300NET-tVAL Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+138.0 Say F1300NET         Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.99"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+120.0 Say F1300PIG         Font "&mLetRom",12 Style "NQ" Size 1,03 Pict "999,999.99"
 @vLIN,mCLN+138.0 Say F1300IGV         Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.99"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+024.0 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetAri",9  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+125.0 Say vSIG             Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+138.0 Say F1300TOT         Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.99"
 RELEASE puNi, pdIr, pdOc
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+027.5 Say vNOM          Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+027.5 Say pDIR          Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.95 TO vlIn
 @vLIN,mCLN+027.5 Say vDNI          Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+111.0 Say vNFP          Font "&mLetRom",12 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.95 TO vlIn
 @vLIN,mCLN+027.5 Say vCM1          Font "&mLetRom",12 Style "NQ" Size 1,20 Pict "@S20"
 @vLIN,mCLN+099.0 Say vSER+"-"+vDOC Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+138.0 Say vFEM          Font "&mLetRom",12 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+5 TO vlIn
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
                @vLIN,mCLN+11 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+10 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+25    Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+35 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+111.0 Say vPRE Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.9999"
           @vLIN,mCLN+138.0 Say vTOT Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF tvAl<>f1300tot
      @vLIN,mCLN+116.0 Say "Red/Dcto"            Font "&mLetRom",12 Style "NQ"
      @vLIN,mCLN+138.6 Say F1300TOT-tVAL         Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+024.0 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetAri",9  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+125.0 Say vSIG                     Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+138.0 Say F1300TOT                 Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.99"
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
ENDPROC
*
PROCEDURE Cre_3610z
ENDPROC
*
PROCEDURE Deb_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, ppEs, plUg, plUd, ppLa
 DO ruC_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 STORE ppEs+" aprox." TO ppEs
 STORE ALLTRIM(f2600pla)+" / "+ALLTRIM(f2600mr1) TO ppLa
 IF LEN(ALLTRIM(f2600lug))<>0
      STORE ALLTRIM(f2600lug) TO plUg
 ELSE
      STORE ALLTRIM(f2600dir) TO plUg
 ENDIF
 IF LEN(ALLTRIM(f2600lug))<>0
      STORE ALLTRIM(f2600lud)+", "+ALLTRIM(f2600lup) TO plUd
 ELSE
      STORE ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO plUd
 ENDIF
 @0,0            Say Space(01)                  Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+34.0 Say Substr(Dtoc(F2600FEM),1,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+43.5 Say Substr(Dtoc(F2600FEM),4,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+53.5 Say Substr(Dtoc(F2600FEM),7,4) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+70.5 Say "("+vSER+"-"+vDOC+")"      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.10 TO vlIn
 @vLIN,mCLN+82.0 Say pLUG                       Font "&mLetRom",12 Style "NQ"
 STORE vlIn+0.20 TO vlIn
 @vLIN,mCLN+07.5 Say vADI                       Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.40 TO vlIn
 @vLIN,mCLN+82 Say pLUD                         Font "&mLetRom",12 Style "NQ"
 STORE vlIn+0.40 TO vlIn
 @vLIN,mCLN+07.5 Say AllTrim(vADS)              Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.60 TO vlIn
 @vLIN,mCLN+82.0 Say F2600NOM                   Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.30 TO vlIn
 @vLIN,mCLN+20.5 Say F2600FEM                   Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.40 TO vlIn
 @vLIN,mCLN+91.5 Say pRUC                       Font "&mLetRom",11 Style "NQ"
 STORE vlIn+4.00 TO vlIn
 @vLIN,mCLN+27.5 Say pPLA                       Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+81.5 Say F2600TNO                   Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.50 TO vlIn
 @vLIN,mCLN+27.5 Say F2600LC1                   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+91.5 Say F2600TRU                   Font "&mLetRom",11 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      @vLIN,mCLN+017 Say F2601DCR    Font "&mLetRom",11 Style "NQ" Pict "@S65"        Size 1,62
      @vLIN,mCLN+122 Say F2601NUC    Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
      IF INT(f2601can)=f2601can
           @vLIN,mCLN+106 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999"     Size 1,8
      ELSE
           @vLIN,mCLN+107 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
      ENDIF
      STORE vlIn+1.9 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+103.5 Say F2600TD1              Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+123.5 Say F2600FFA              Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.7 TO vlIn
      @vLIN,mCLN+103.5 Say F2600SR1+"-"+F2600DO1 Font "&mLetRom",11 Style "NQ"
 ENDIF
 RELEASE prUc, ppEs, plUg, plUd, ppLa
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
