*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr, pvAl, prEd, pdOc
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE vsEr+"-"+vdOc TO pdOc
 STORE LOWER(vnVe) TO vnVe
 STORE 00 TO pvAl, prEd
 @vLIN,mCLN+089.0 Say vTIM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+135.0 Say pDOC Font "&mLetRom",9  Style "NQ"
 STORE vlIn+003.2 TO vlIn
 @vLIN,mCLN+022.5 Say vNOM Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+096.0 Say vRUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+132.2 Say vFEM Font "&mLetRom",11 Style "NQ"
 STORE vlIn+002.2 TO vlIn
 @vLIN,mCLN+022.9 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+096.0 Say vCM1 Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+131.9 Say vNVE Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S13"
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
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+21.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+22.2 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+36.9    Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+45 Say F1301DCR     Font "&mLetRom",10 Style "NQ" Size 1,82 Pict "@S85"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+129.0 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
           @vLIN,mCLN+147.5 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE pvAl+vtOt TO pvAl
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+45.0 Say mFR1         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+45.0 Say mFR2         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+45.0 Say "@"          Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+45.0 Say "@"          Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 IF f1300tot<>pvAl
      STORE ROUND(((f1300tot-pvAl)/(1+(f1300pig/100))), 2) TO prEd
      @vLIN,mCLN+129   Say "Redondeo:" Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+148.5 Say pRED        Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,12
 ENDIF
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+147.5 Say F1300NET       Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+000.1 TO vlIn
 @vLIN,mCLN+016.0 Say vFRA           Font "&mLetAri",9  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+01.85 TO vlIn
 @vLIN,mCLN+147.5 Say F1300IGV       Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+02.25 TO vlIn
 IF f1300mon=2
      @vLIN,mCLN+138 Say vSIG          Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+147.5 Say F1300TOT       Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE puNi, pdIr, pvAl, prEd, pdOc
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr, pvAl
 DO diR_1300z IN FAC0000A
 STORE 00 TO pvAl
 @vLIN,mCLN+087.0 Say vTIM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+134.0 Say vSER+"-"+vDOC Font "&mLetRom",9  Style "NQ"
 STORE vlIn+003.2 TO vlIn
 @vLIN,mCLN+021.9 Say vNOM          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+132.9 Say vFEM          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+001.1 TO vlIn
 @vLIN,mCLN+132.9 Say "Vended:"     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142.9 Say Lower(vNVE)   Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S13"
 STORE vlIn+001.0 TO vlIn
 @vLIN,mCLN+021.9 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S80"
 @vLIN,mCLN+132.0 Say vDNI          Font "&mLetRom",11 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.8 TO vlIn
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
                @vLIN,mCLN+20.2 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+20.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+35.5    Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+44 Say F1301DCR     Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,17 Pict "999,999.99"
           @vLIN,mCLN+146 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE pvAl+vtOt TO pvAl
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 IF f1300tot<>pvAl
      @vLIN,mCLN+130 Say "Redondeo:"   Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+146 Say F1300TOT-pVAL Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 ENDIF
 STORE vlIn+2.8 TO vlIn
 IF f1300mon=2
      @vLIN,mCLN+136 Say vSIG  Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+146 Say F1300TOT Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 RELEASE puNi, pdIr, pvAl
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
 PUBLIC plUg, pfAc, ppLa
 DO luG_2600z IN FAC0000A
 STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pfAc
 STORE ALLTRIM(f2600mr1)+"/"+f2600pla TO ppLa
 @vLIN,mCLN+085.0 Say F2600TIM                Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+135.0 Say vSER+"-"+vDOC           Font "&mLetRom",9  Style "NQ"
 STORE vlIn+003.1 TO vlIn
 @vLIN,mCLN+020.0 Say F2600FEM                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+059.0 Say F2600RUC                Font "&mLetRom",11 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+093.5 Say pFAC                 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+100.5 Say F2600FFA             Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+024.0 Say vNOM                    Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+025.0 Say AllTrim(vADI)+", "+vADS Font "&mLetRom",11 Style "NT"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+025.0 Say pLUG                    Font "&mLetRom",11 Style "NT"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+032.0 Say F2600TNO                Font "&mLetRom",11 Style "NQ"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+020.0 Say F2600TRU                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+069.0 Say pPLA                    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+104.0 Say F2600LC1                Font "&mLetRom",10 Style "NQ"
 STORE vlIn+000.2 TO vlIn
 @vLIN,mCLN+010.0 Say "RUC:"                  Font "&mLetAri",9  Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.5 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      @vLIN,mCLN+9 Say F2601DCR        Font "&mLetRom",11 Style "NQ" Pict "@S80" Size 1,83
      IF INT(f2601can)=f2601can
           @vLIN,mCLN+098.7 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
      ELSE
           @vLIN,mCLN+101.3 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,12
      ENDIF
      @vLIN,mCLN+118 Say F2601NUC      Font "&mLetRom",11 Style "NQ" Pict "@S04" Size 1,04
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 RELEASE plUg, pfAc, ppLa
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
