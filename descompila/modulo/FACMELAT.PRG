*
PROCEDURE Fac_1300z
 DO faC_1300z IN FAC0000A
ENDPROC
*
PROCEDURE Bol_1300z
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
 PUBLIC pdIr, paDi, pfRa, prF1, prF2, prF3, pnO1, pnO2, prUc, paRu
 STORE "" TO prF1, prF2, prF3, pnO1, pnO2
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 STORE "*** "+vfRa+" "+REPLICATE("*", 80) TO pfRa
 IF LEN(ALLTRIM(f3110ref))>14
      STORE SUBSTR(f3110ref, 1, 15) TO prF1
      STORE SUBSTR(f3110ref, 16, 15) TO prF2
 ELSE
      STORE f3110ref TO prF3
 ENDIF
 IF LEN(ALLTRIM(f3110nom))<=46
      STORE f3110nom TO pnO1
 ELSE
      STORE f3110nom TO pnO2
 ENDIF
 IF LEN(ALLTRIM(f3110ruc))=11
      STORE f3110ruc TO prUc
 ELSE
      STORE f3110ele TO prUc
 ENDIF
 IF LEN(ALLTRIM(f3110aru))<>0
      STORE f3110aru TO paRu
 ELSE
      STORE f3110ael TO paRu
 ENDIF
 @vLIN,mCLN+48  Say pRF1                       Font "&mLetAri",8  Style "NQ"
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN+48  Say pRF3                       Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+33  Say F3110LET                   Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+75  Say "LIMA"                     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+134 Say vSIG                       Font "&mLetRom",10 Style "NQ" Size 1,5.1
 @vLIN,mCLN+145 Say F3110TOT                   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+0.3 TO vlIn
 @vLIN,mCLN+48  Say pRF2                       Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+93  Say Substr(Dtoc(F3110FEM),7,4) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+100 Say Substr(Dtoc(F3110FEM),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+105 Say Substr(Dtoc(F3110FEM),1,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+114 Say Substr(Dtoc(F3110FVE),7,4) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+121 Say Substr(Dtoc(F3110FVE),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+126 Say Substr(Dtoc(F3110FVE),1,2) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+6.8 TO vlIn
 @vLIN,mCLN+30  Say pFRA                       Font "&mLetRom",10 Style "NQ" Size 1,82 Pict "@S84"
 STORE vlIn+3.6 TO vlIn
 @vLIN,mCLN+36  Say pNO1                       Font "&mLetRom",10 Style "NQ" Size 1,48 Pict "@S50"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+30  Say pNO2                       Font "&mLetRom",9  Style "NQ" Size 1,62 Pict "@S62"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+39  Say pRUC                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+70  Say F3110TEL                   Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.7 TO vlIn
 IF LEN(pdIr)>46
      @vLIN,mCLN+38 Say pDIR                     Font "&mLetRom",9  Style "NQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+38 Say pDIR                     Font "&mLetRom",10 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+3.1 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+38 Say F3110ANO                 Font "&mLetRom",9  Style "NQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+38 Say F3110ANO                 Font "&mLetRom",10 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN+38  Say pARU                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+70  Say F3110ATL                   Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.7 TO vlIn
 IF LEN(paDi)>46
      @vLIN,mCLN+38 Say pADI                     Font "&mLetRom",9  Style "NQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+38 Say pADI                     Font "&mLetRom",10 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 RELEASE pdIr, paDi, pfRa, prF1, prF2, prF3, pnO1, pnO2, prUc, paRu
ENDPROC
*
PROCEDURE Cre_3610z
 DO cr1_3610z WITH "NC"
ENDPROC
*
PROCEDURE Deb_3610z
 DO cr1_3610z WITH "ND"
ENDPROC
*
PROCEDURE Cr1_3610z
 PARAMETER ptDo
 SELECT caB_nota
 @vLIN,mCLN+022 Say F3610FEM                           Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+113 Say F3610TDO+":"+F3610SER+"-"+F3610DOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.55 TO vlIn
 @vLIN,mCLN+027 Say vNOM                               Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+1.55 TO vlIn
 @vLIN,mCLN+027 Say AllTrim(F3610DIR)+", "+F3610DIS    Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+1.70 TO vlIn
 @vLIN,mCLN+027 Say vRUC                               Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+113 Say F3610CM1                           Font "&mLetAri",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+140 Say F3610CM2                           Font "&mLetAri",10 Style "NQ" Pict "@S30"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.8 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+12 Say F3611DES     Font "&mLetCou",10 Style "NQ" Size 1,115 Pict "@S118"
      IF f3611tot<>0
           @vLIN,mCLN+140 Say F3611TOT Font "&mLetAri",10 Style "NQ" Size 1,15  Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 IF ptDo="NC"
      DO fiN_1300z IN FAC0000A WITH "NC"
 ELSE
      DO fiN_1300z IN FAC0000A WITH "ND"
 ENDIF
 @vLIN,mCLN+018.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+144.0 Say tNET             Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+144.0 Say F3610IGV         Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+135.1 Say vSIG             Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+144.0 Say tTOT             Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC plUg, pfAc, ppLa, paDi
 DO luG_2600z IN FAC0000A
 STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pfAc
 STORE ALLTRIM(f2600mr1)+"/"+f2600pla TO ppLa
 STORE ALLTRIM(vaDi)+", "+vaDs TO paDi
 @vLIN,mCLN+085.0 Say F2600TIM      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+135.0 Say vSER+"-"+vDOC Font "&mLetRom",9  Style "NQ"
 STORE vlIn+003.1 TO vlIn
 @vLIN,mCLN+020.0 Say F2600FEM      Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+059.0 Say F2600RUC      Font "&mLetRom",11 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+093.5 Say pFAC       Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+100.5 Say F2600FFA   Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+024.0 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+025.0 Say pvADI         Font "&mLetRom",11 Style "NT"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+025.0 Say pLUG          Font "&mLetRom",11 Style "NT"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+032.0 Say F2600TNO      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+020.0 Say F2600TRU      Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+069.0 Say pPLA          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+104.0 Say F2600LC1      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+000.2 TO vlIn
 @vLIN,mCLN+010.0 Say "RUC:"        Font "&mLetAri",9  Style "NQ"
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
 RELEASE plUg, pfAc, ppLa, paDi
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
