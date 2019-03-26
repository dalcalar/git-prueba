*
PROCEDURE Fac_1300z
 PUBLIC pdIr, pdIs, puNi, pmEs, pdD1, pmM1, paA1
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 STORE "Cta.Cte.No. 00-0000-332194 / Banco de la Nacion" TO mfR2
 DO CASE
      CASE vsEr="008"
           DO fc2_1300z
      OTHERWISE
           DO fc1_1300z
 ENDCASE
 RELEASE pdIr, pdIs, puNi, pmEs, pdD1, pmM1, paA1
ENDPROC
*
PROCEDURE Fc1_1300z
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO pdD1
 STORE SUBSTR(DTOC(vfEm), 9, 2) TO paA1
 STORE mcLn+128 TO pmM1
 DO CASE
      CASE SUBSTR(DTOC(vfEm), 4, 2)="02" .OR. SUBSTR(DTOC(vfEm), 4, 2)= ;
           "09" .OR. SUBSTR(DTOC(vfEm), 4, 2)="11" .OR. SUBSTR(DTOC(vfEm),  ;
           4, 2)="12"
           STORE mcLn+126 TO pmM1
      CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
           STORE mcLn+129 TO pmM1
      CASE SUBSTR(DTOC(vfEm), 4, 2)="08" .OR. SUBSTR(DTOC(vfEm), 4, 2)="10"
           STORE mcLn+127 TO pmM1
 ENDCASE
 @vLIN,mCLN+017 Say vNOM                  Font "&mLetRom",10 Style "NQ" Pict "@S50" Size 1,52
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+017 Say vRUC                  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+053 Say Substr(vCM1,1,30)     Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+089 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+115 Say pDD1                  Font "&mLetRom",10 Style "NQ"
 @vLIN,pMM1     Say pMES                  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+149 Say pAA1                  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+017 Say pDIR                  Font "&mLetRom",10 Style "NQ" Pict "@S50" Size 1,52
 @vLIN,mCLN+075 Say Substr(vCM1,1,11)     Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,17
 @vLIN,mCLN+093 Say vNFP                  Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,17
 @vLIN,mCLN+126 Say F1300TIM              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+145 Say vTCV                  Font "&mLetRom",10 Style "NQ" Pict "9.99" Size 1,7
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.1 TO vlIn
 IF vsEr="005"
      STORE vlIn+0.1 TO vlIn
 ENDIF
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
                @vLIN,mCLN+9.1 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+7.2 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+23     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,8  Pict "@S10"
      ENDIF
      @vLIN,mCLN+34 Say F1301DCR    Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           IF vpRe>999999999
                @vLIN,mCLN+112 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "9,999,999.99"
           ELSE
                @vLIN,mCLN+112 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           ENDIF
           @vLIN,mCLN+141 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "9,999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+34.0 Say mFR1        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+34.0 Say mFR2        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+34.0 Say " "         Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+34.0 Say " "         Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+17 Say vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Pict "@S100"        Size 1,100
 STORE vlIn+3.6 TO vlIn
 @vLIN,mCLN+009 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+019 Say tVAL            Font "&mLetRom",11 Style "NQ" Pict "9,999,999.99" Size 1,15
 IF tvAl<f1300net
      @vLIN,mCLN+39 Say "Red:"        Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+049 Say F1300NET-tVAL   Font "&mLetRom",11 Style "NQ" Pict "9,999,999.99" Size 1,15
 @vLIN,mCLN+070 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+079 Say F1300NET        Font "&mLetRom",11 Style "NQ" Pict "9,999,999.99" Size 1,15
 @vLIN,mCLN+099 Say F1300PIG        Font "&mLetRom",11 Style "NQ" Pict "99"           Size 1,03
 @vLIN,mCLN+102 Say "%"             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+111 Say F1300IGV        Font "&mLetRom",11 Style "NQ" Pict "9,999,999.99" Size 1,15
 @vLIN,mCLN+130 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+142 Say F1300TOT        Font "&mLetRom",11 Style "NQ" Pict "9,999,999.99" Size 1,15
ENDPROC
*
PROCEDURE Fc2_1300z
 @vLIN,mCLN+022 Say vFEM                  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+135 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN+022 Say vNOM                  Font "&mLetRom",10 Style "NQ" Pict "@S50" Size 1,52
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+022 Say pDIR                  Font "&mLetRom",10 Style "NQ" Pict "@S100" Size 1,102
 STORE vlIn+1.15 TO vlIn
 @vLIN,mCLN+022 Say vRUC                  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+079 Say Substr(vCM1,1,11)     Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,17
 @vLIN,mCLN+109 Say vNFP                  Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,17
 @vLIN,mCLN+149 Say vTCV                  Font "&mLetRom",10 Style "NQ" Pict "9.99" Size 1,7
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.1 TO vlIn
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
                @vLIN,mCLN+10.1 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+11.1 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+28.1    Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,8  Pict "@S10"
      ENDIF
      @vLIN,mCLN+38 Say F1301DCR     Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+113 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+141 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+34.0 Say mFR1         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+34.0 Say mFR2         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+34.0 Say " "          Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+34.0 Say " "          Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+014 Say vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Pict "@S100" Size 1,100
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+008 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+018 Say tVAL             Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 @vLIN,mCLN+048 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 @vLIN,mCLN+070 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+077 Say F1300NET         Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 @vLIN,mCLN+098 Say F1300PIG         Font "&mLetRom",11 Style "NQ" Pict "99"         Size 1,03
 @vLIN,mCLN+101 Say "%"              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+106 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 @vLIN,mCLN+130 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+014 Say vNOM                          Font "&mLetRom",10 Style "NQ" Pict "@S60" Size 1,62
 DO CASE
      CASE vsEr="008"
           @vLIN,mCLN+093 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+114 Say F1300TIM              Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+140 Say vFEM                  Font "&mLetRom",10 Style "NQ"
           STORE vlIn+1.4 TO vlIn
      OTHERWISE
           @vLIN,mCLN+083 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+112 Say vFEM                  Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+130 Say F1300TIM              Font "&mLetRom",10 Style "NQ"
           STORE vlIn+1.8 TO vlIn
 ENDCASE
 IF vsEr="002"
      STORE vlIn+0.2 TO vlIn
 ENDIF
 @vLIN,mCLN+014 Say pDIR           Font "&mLetRom",10 Style "NQ" Pict "@S60" Size 1,62
 DO CASE
      CASE vsEr="008"
           @vLIN,mCLN+110 Say "F/P:" Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+116 Say vNFP   Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+140 Say vDNI   Font "&mLetRom",10 Style "NQ"
      OTHERWISE
           @vLIN,mCLN+112 Say vDNI   Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+130 Say "F/P:" Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+136 Say vNFP   Font "&mLetRom",10 Style "NQ"
 ENDCASE
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.1 TO vlIn
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
           DO CASE
                CASE vsEr="008" .AND. INT(vcAn)<>vcAn
                     @vLIN,mCLN+06 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                CASE vsEr="008"
                     @vLIN,mCLN+08 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                CASE INT(vcAn)<>vcAn
                     @vLIN,mCLN+00 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                OTHERWISE
                     @vLIN,mCLN+02 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDCASE
           DO CASE
                CASE vsEr="008"
                     @vLIN,mCLN+25 Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
                OTHERWISE
                     @vLIN,mCLN+16 Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
           ENDCASE
      ENDIF
      DO CASE
           CASE vsEr="008"
                @vLIN,mCLN+33 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
           OTHERWISE
                @vLIN,mCLN+26 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      ENDCASE
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           DO CASE
                CASE vsEr="008"
                     @vLIN,mCLN+113 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
                     @vLIN,mCLN+140 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
                OTHERWISE
                     @vLIN,mCLN+123 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
                     @vLIN,mCLN+145 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
           ENDCASE
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 DO CASE
      CASE vsEr="008"
           IF tvAl<>f1300tot
                IF tvAl<f1300tot
                     @vLIN,mCLN+122 Say "Red.:"    Font "&mLetRom",11 Style "NQ"
                ELSE
                     @vLIN,mCLN+122 Say "Dcto.:"   Font "&mLetRom",11 Style "NQ"
                ENDIF
                @vLIN,mCLN+137 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
           ENDIF
           STORE vlIn+1.9 TO vlIn
           @vLIN,mCLN+9 Say vFRA+" S.E.u.O."   Font "&mLetRom",10 Style "NQ" Pict "@S100" Size 1,100
           @vLIN,mCLN+138 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
      OTHERWISE
           @vLIN,mCLN+9 Say vFRA+" S.E.u.O."   Font "&mLetRom",10 Style "NQ" Pict "@S100" Size 1,100
           IF tvAl<>f1300tot
                IF tvAl<f1300tot
                     @vLIN,mCLN+122 Say "Red.:"    Font "&mLetRom",11 Style "NQ"
                ELSE
                     @vLIN,mCLN+122 Say "Dcto.:"   Font "&mLetRom",11 Style "NQ"
                ENDIF
                @vLIN,mCLN+137 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
           ENDIF
           STORE vlIn+1.9 TO vlIn
           @vLIN,mCLN+141 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 ENDCASE
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
PROCEDURE Cre_3610z
 SELECT caB_nota
 @0,0 Say Space(01)          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+17 Say vNOM      Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S73"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+17 Say vRUC      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+135 Say F3610CM1 Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+17 Say vFEM      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+135 Say F3610CM2 Font "&mLetRom",11 Style "NQ" Pict "@S100"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.1 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN Say F3611DES        Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S83"
      IF f3611tot<>0
           @vLIN,mCLN+136 Say F3611TOT Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+16 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+123 Say F3610PIG        Font "&mLetRom",11 Style "NQ" Size 1,04 Pict "99"
 @vLIN,mCLN+136 Say F3610IGV        Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+4.1 TO vlIn
 @vLIN,mCLN+132.8 Say vSIG          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136 Say tTOT            Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
ENDPROC
*
PROCEDURE Deb_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC plUg, prUc, ptPp, plUd, ppLa, pfEm
 DO luG_2600z IN FAC0000A
 DO ruC_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 STORE DTOC(f2600fem) TO pfEm
 IF LEN(ALLTRIM(f2600lug))<>0
      STORE ALLTRIM(f2600lud)+","+f2600lup TO plUd
 ELSE
      STORE ALLTRIM(f2600dis)+","+f2600dep TO plUd
 ENDIF
 STORE ALLTRIM(f2600mr1)+"/"+f2600pla TO ppLa
 @0,0 Say Space(01)                   Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+25.8 Say Substr(pFEM,1,2) Font "&mLetAri",10 Style "BQ"
 @vLIN,mCLN+32.2 Say Substr(pFEM,4,2) Font "&mLetAri",10 Style "BQ"
 @vLIN,mCLN+38.5 Say Substr(pFEM,7,4) Font "&mLetAri",10 Style "BQ"
 @vLIN,mCLN+75.2 Say Substr(pFEM,1,2) Font "&mLetAri",10 Style "BQ"
 @vLIN,mCLN+83.0 Say Substr(pFEM,4,2) Font "&mLetAri",10 Style "BQ"
 @vLIN,mCLN+89.0 Say Substr(pFEM,7,4) Font "&mLetAri",10 Style "BQ"
 STORE vlIn+3 TO vlIn
 @vLIN,mCLN+10 Say AllTrim(vADI)      Font "&mLetRom",10 Style "NQ"
 IF LEN(ALLTRIM(f2600lug))<>0
      @vLIN,mCLN+85 Say F2600LUG        Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+85 Say F2600DIR        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.55 TO vlIn
 @vLIN,mCLN+10 Say AllTrim(vADS)      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+85 Say pLUD               Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.95 TO vlIn
 @vLIN,mCLN+114 Say pPLA              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+014 Say F2600NOM          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN+114 Say F2600CIM          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN+018 Say pRUC              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.0 TO vlIn
 @vLIN,mCLN+114 Say F2600LC1          Font "&mLetRom",10 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.2 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      IF INT(f2601can)=f2601can
           @vLIN,mCLN+06.4 Say F2601CAN Font "&mLetRom",10 Style "NQ" Pict "999,999" Size 1,8
      ELSE
           @vLIN,mCLN+08.0 Say F2601CAN Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12
      ENDIF
      @vLIN,mCLN+022 Say F2601DCR     Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,83
      @vLIN,mCLN+128 Say F2601NUC     Font "&mLetRom",10 Style "NQ" Pict "@S04" Size 1,04
      STORE vlIn+1.56 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+030.6 Say "x" Font "&mLetRom",10 Style "NT"
      CASE f2600mot=11
           @vLIN,mCLN+063.7 Say "x" Font "&mLetRom",10 Style "NT"
      CASE f2600mot=8
           @vLIN,mCLN+109.2 Say "x" Font "&mLetRom",10 Style "NT"
      CASE f2600mot=10
           @vLIN,mCLN+134.1 Say "x" Font "&mLetRom",10 Style "NT"
      CASE f2600mot=13
           @vLIN,mCLN+153.9 Say "x" Font "&mLetRom",10 Style "NT"
 ENDCASE
 STORE vlIn+1 TO vlIn
 DO CASE
      CASE f2600mot=7
           @vLIN,mCLN+030.6 Say "x" Font "&mLetRom",10 Style "NT"
      CASE f2600mot=4
           @vLIN,mCLN+063.7 Say "x" Font "&mLetRom",10 Style "NT"
      CASE f2600mot=12
           @vLIN,mCLN+109.2 Say "x" Font "&mLetRom",10 Style "NT"
 ENDCASE
 STORE vlIn+1 TO vlIn
 DO CASE
      CASE f2600mot=6
           @vLIN,mCLN+030.6 Say "x" Font "&mLetRom",10 Style "NT"
      CASE f2600mot=2
           @vLIN,mCLN+063.7 Say "x" Font "&mLetRom",10 Style "NT"
      CASE f2600mot=9
           @vLIN,mCLN+109.2 Say "x" Font "&mLetRom",10 Style "NT"
 ENDCASE
 STORE vlIn+2.5 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="BE" .OR. f2600td1="BC" .OR. f2600td1= ;
    "FA" .OR. f2600td1="FE" .OR. f2600td1="FC"
      @vLIN,mCLN+30 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+50 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
 ENDIF
 RELEASE plUg, prUc, ptPp, plUd, ppLa, pfEm
ENDPROC
*
PROCEDURE BPa_4240z
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
 @pLIN,138 Say F1300NFP            Font "&mLetAri",9 Style "NT" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NT" Size 1,16 Pict "@S16"
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
 If File("&mDBF")
      @pLIN,9 Say "&mDBF" Bitmap Size 20,30 Isometric
 ENDIF
 STORE plIn+0.1 TO plIn
 @pLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
 @pLIN,009.0 Say mRAZ                            Font "&mLetRom",12 Style "BT"
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.3 TO plIn
 DO CASE
      CASE vtDo="FE" .OR. vtDo="FC"
           @pLIN,102.4 Say "FACTURA ELECTRÓNICA"         Font "&mLetAri",14 Style "BQ"
      CASE vtDo="BE" .OR. vtDo="BC"
           @pLIN,096.0 Say "BOLETA DE VENTA ELECTRÓNICA" Font "&mLetAri",13 Style "BQ"
 ENDCASE
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @pLIN,9 Say Substr(mDIR,1,pLEN)              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      @pLIN,9 Say AllTrim(mDIR)                    Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ENDIF
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 IF LEN(ALLTRIM(mdIr))>50
      @pLIN,9 Say AllTrim(Substr(mDIR,pLEN+1,90))  Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @pLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE plIn+0.7 TO plIn
 @pLIN,107.0 Say "N"                             Font "&mLetAri",17 Style "BQ"
 @pLIN,110.7 Say Chr(176)                        Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO CASE
      CASE vtDo="FE"
           @pLIN,115 Say "F"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BE"
           @pLIN,115 Say "B"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="FC"
           @pLIN,115 Say "E"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BC"
           @pLIN,115 Say "EB"+Substr(vSER,2,2)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
 ENDCASE
 DO coLbln
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @pLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @pLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @pLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 @pLIN,093.2 Say Replicate("-",55)             Font "&mLetAri",13 Style "NT"
 @pLIN,093.7 Say Replicate("-",55)             Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
PROCEDURE Bel_1300z
 PUBLIC puNi, ppZa, plIn, plI0
 STORE vlIn TO plIn
 @ plIn, 0 SAY " "
 STORE plIn+1 TO plIn
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
 @pLIN,138 Say F1300NFP            Font "&mLetAri",9 Style "NT" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NT" Size 1,18 Pict "@S18"
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
           @pLIN,27 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,3,0) Font "&mLetAri",8 Style "NQ" Size 1,65 Pict "@S65"
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
           @pLIN,06.4 Say "Representación impresa de la Boleta Electrónica"                                               Font "&mLetAri",7 Style "NQ"
      CASE vtDo="BC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Boleta de Venta Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.3,06.4 Say "Puede verificarla utilizando su clave SOL."                                                Font "&mLetAri",7 Style "NQ"
 ENDCASE
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
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
PROCEDURE Des_1300z
 PUBLIC pdC1, pdC2, puNi, pdCr
 STORE 28 TO mpAg
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
           CASE vlIn>mpAg-2
                DO cdE_1300z
      ENDCASE
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      DO pc2_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           @vLIN,mCLN Say pUNI        Font "&mLetRom",10 Style "NQ" Size 1,4 Pict "@S3"
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+0.0 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "99,999.99"
           ELSE
                @vLIN,mCLN+5.0 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "99,999"
           ENDIF
      ENDIF
      @vLIN,mCLN+78.5 Say Round(vPRE,2) Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.99"
      STORE LOWER(ALLTRIM(f1301dcr)) TO pdCr
      IF LEN(ALLTRIM(pdCr))<=50
           @vLIN,mCLN+16 Say pDCR Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
      ELSE
           STORE SUBSTR(pdCr, 01, 050) TO pdC1
           STORE SUBSTR(pdCr, 51, 100) TO pdC2
           IF RAT(" ", pdC1)=0
                @vLIN,mCLN+16 Say pDC1 Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-2
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+16 Say pDC2 Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ELSE
                STORE SUBSTR(pdC1, 1, RAT(" ", pdC1)) TO pdC1
                STORE SUBSTR(pdCr, LEN(ALLTRIM(pdC1))+1, 100) TO pdC2
                STORE ALLTRIM(pdC1) TO pdC1
                STORE ALLTRIM(pdC2) TO pdC2
                @vLIN,mCLN+16 Say pDC1    Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-2
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+16 Say pDC2 Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ENDIF
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
 @vLIN,mCLN    Say mRAZ                     Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+75 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetAri",10 Style "NQ"
 STORE vlIn+2.2 TO vlIn
 DO CASE
      CASE vtDo="FA" .OR. vtDo="FC" .OR. vtDo="FE"
           @vLIN,mCLN Say "Orden de Despacho de Factura No."+vSER+"-"+vDOC Font "&mLetAri",11 Style "NQU"
      CASE vtDo="BO" .OR. vtDo="BC" .OR. vtDo="BE"
           @vLIN,mCLN Say "Orden de Despacho de Boleta No." +vSER+"-"+vDOC Font "&mLetAri",11 Style "NQU"
      CASE vtDo="NP"
           @vLIN,mCLN Say "Orden de Despacho de NP No."     +vSER+"-"+vDOC Font "&mLetAri",11 Style "NQU"
 ENDCASE
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Cd1_1300z
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN     Say "Cliente"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+14  Say vNOM            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+66  Say "Hora"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+74  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+76  Say vTIM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Vendedor"      Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+14  Say vNVE            Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+66  Say "Fecha"         Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+74  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+76  Say vFEM            Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Observac"      Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+14  Say vCM1            Font "&mLetAri",9 Style "NT"
 IF LEN(ALLTRIM(vcM2))<>0
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN Say vCM2             Font "&mLetAri",9 Style "NT"
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",67)   Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN      Say "Und"          Font "&mLetAri",10 Style "NQ"
 @vLIN,mCLN+07   Say "Cant"         Font "&mLetAri",10 Style "NQ"
 @vLIN,mCLN+16   Say "Descripción"  Font "&mLetAri",10 Style "NQ"
 @vLIN,mCLN+83   Say "Precio"       Font "&mLetAri",10 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",67)   Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.4 TO vlIn
ENDPROC
*
