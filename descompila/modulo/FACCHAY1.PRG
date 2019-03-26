*
PROCEDURE Fac_1300z
 PUBLIC pdIr, pdOc, pdIa, pmEs, paNo, puNi, pvAl
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE 00 TO pvAl
 STORE LOWER(pdIr) TO pdIr
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(vfEm), 9, 1) TO paNo
 @vLIN,mCLN+029.0 Say pDIA Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+049.0 Say pMES Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+073.5 Say pANO Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+090.0 Say pDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+010.0 Say vNOM Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+109.0 Say vRUC Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+010.0 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,90 Pict "@S93"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.9 TO vlIn
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
                @vLIN,mCLN+1 Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+0 Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+14.5 Say pUNI  Font "&mLetRom",10 Style "NQ" Size 1,4  Pict "@S10"
      ENDIF
      @vLIN,mCLN+21.5 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF f1301to1<>0
           STORE ROUND(f1301pre/(1+(vpIg/100))*f1301can, 2) TO vtOt
           STORE ROUND(vtOt/vcAn, 4) TO vpRe
           STORE vcAn*vpRe TO vtOt
           STORE pvAl+vtOt TO pvAl
           STORE ROUND(f1301pre*f1301can, 2) TO vtOt
           STORE ROUND(vtOt/vcAn, 4) TO vpRe
           STORE vcAn*vpRe TO vtOt
      ELSE
           STORE 0 TO vpRe, vtOt
      ENDIF
      IF vtOt<>0
           @vLIN,mCLN+111.0 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+135.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+21.5 Say F1301REF Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+2.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+21.5 Say mFR1           Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+21.5 Say mFR2           Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+21.5 Say "@"            Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+21.5 Say "@"            Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+135.0 Say F1300NET-pVAL    Font "&mLetRom",10 Style "NQ" Size 1,12    Pict "999,999.99" Function "("
 STORE vlIn+2.5 TO vlIn
 @vLIN,mCLN+008.5 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100   Pict "@S100"
 @vLIN,mCLN+135.0 Say F1300NET         Font "&mLetRom",10 Style "NQ" Size 1,011.4 Pict "999,999.99"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+115.4 Say F1300PIG         Font "&mLetRom",10 Style "NQ" Size 1,004.0 Pict "99"
 @vLIN,mCLN+134.0 Say F1300IGV         Font "&mLetRom",10 Style "NQ" Size 1,011.4 Pict "999,999.99"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+117.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+135.0 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,011.4 Pict "999,999.99"
 RELEASE pdIr, pdOc, pdIa, pmEs, paNo, puNi, pvAl
ENDPROC
*
PROCEDURE Bol_1300z
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
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
