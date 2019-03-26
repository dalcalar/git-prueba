*
PROCEDURE Fac_1300z
 PUBLIC pdIr, puNi, ppEr, pdOo
 DO diR_1300z IN FAC0000A
 DO peR_1300z IN FAC0000A WITH "1", 0
 DO deT_1300z IN FAC0000A WITH "1"
 STORE vsEr+"-"+vdOc TO pdOo
 @0,0 Say " " Font "&mLetSwi",10 Style "NQ"
 DO CASE
      CASE mcIa="AL"
           STORE "Cta.Cte.No. 00002040417 / Banco de la Nacion" TO mfR2
           DO fa1_1300z
      CASE mcIa="A1"
           STORE "Cta.Cte.No. 00-004-004132 / Banco de la Nacion" TO mfR2
           DO fa2_1300z
 ENDCASE
 RELEASE pdIr, puNi, ppEr, pdOo
ENDPROC
*
PROCEDURE Fa1_1300z
 @vLIN,mCLN+09.5 Say vFEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1 Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+72.0 Say vNFP Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+00.4 TO vlIn
 DO peR_1300z IN FAC0000A WITH "2", mcLn+103
 STORE vlIn+00.9 TO vlIn
 @vLIN,mCLN+09.5 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vRUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+41.8 Say vVEN Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+79.0 Say pDOO Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vCM2 Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+67.7 Say vTCA Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+84.0 Say vCM6 Font "&mLetRom",10 Style "BQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.2 TO vlIn
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
                @vLIN,mCLN+3.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+2.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+28 Say F1301DCR    Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+128.4 Say vPRE  Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+147.4 Say vTOT  Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+28 Say F1301REF Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      DO peR_1300z IN FAC0000A WITH "3", mcLn+115.9
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 DO CASE
      CASE tpEr>0
           DO peR_1300z IN FAC0000A WITH "4", 0
      CASE mdTr=1
           DO deT_1300z IN FAC0000A WITH "2"
 ENDCASE
 DO CASE
      CASE tpEr>0
           STORE vlIn-5.2 TO vlIn
           @vLIN,mCLN+002.0 Say vCM3          Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           @vLIN,mCLN+042.0 Say mFR1          Font "&mLetRom",11 Style "NQ" Size 1,75  Pict "@S75"
           @vLIN,mCLN+111.9 Say tPER          Font "&mLetRom",11 Style "NQ" Size 1,12  Pict "999,999.99"
           STORE vlIn+0.2 TO vlIn
           @vLIN,mCLN+110.4 Say "_________"   Font "&mLetRom",11 Style "NT" Size 1,12
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+002.0 Say vCM4          Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+042.0 Say mFR2          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           @vLIN,mCLN+111.9 Say F1300TOT+tPER Font "&mLetRom",11 Style "NT" Size 1,12 Pict "999,999.99"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+110.4 Say "_________"   Font "&mLetRom",11 Style "NT" Size 1,12
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+002.0 Say vCM5          Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.2 TO vlIn
      CASE mdTr=1
           STORE vlIn-5.2 TO vlIn
           @vLIN,mCLN+02.0 Say vCM3           Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           @vLIN,mCLN+42.0 Say mFR1           Font "&mLetRom",11 Style "NQ" Size 1,75  Pict "@S75"
           STORE vlIn+01.4 TO vlIn
           @vLIN,mCLN+02.0 Say vCM4           Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+00.1 TO vlIn
           @vLIN,mCLN+42.0 Say mFR2           Font "&mLetRom",11 Style "NQ" Size 1,75  Pict "@S75"
           STORE vlIn+01.3 TO vlIn
           @vLIN,mCLN+02.0 Say vCM5           Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.2 TO vlIn
      CASE LEN(ALLTRIM(vcM3))<>0
           STORE vlIn-5.2 TO vlIn
           @vLIN,mCLN+2.0 Say vCM3            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+2.0 Say vCM4            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+2.0 Say vCM5            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.2 TO vlIn
      OTHERWISE
           STORE vlIn-4 TO vlIn
 ENDCASE
 @vLIN,mCLN+17  Say "INCORPORADO AL REGIMEN DE BUENOS CONTRIBUYENTES SEGUN RES.INTENDENCIA No.0230050143973" Font "&mLetAri",8 Style "NQ"
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+058 Say tVAL              Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+078 Say F1300NET-tVAL     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+100 Say F1300NET          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+119 Say F1300IGV          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+137 Say vSIG              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+146 Say F1300TOT          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+58.2 Say vFRA+" S.E.u.O." Font "&mLetAri",10 Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Fa2_1300z
 @vLIN,mCLN+77.0 Say "Lima, Lima" Font "&mLetAri",7 Style "NQ"
 STORE vlIn+4 TO vlIn
 @vLIN,mCLN+09.5 Say vFEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1 Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+70.0 Say vNFP Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vRUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.8 Say vVEN Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+79.0 Say pDOO Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vCM2 Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+67.7 Say vTCA Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+84.0 Say vCM6 Font "&mLetRom",10 Style "BQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.2 TO vlIn
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
                @vLIN,mCLN+3.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+2.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+25 Say F1301DCR    Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+125.4 Say vPRE  Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.9 Say vTOT  Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+25 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      DO peR_1300z IN FAC0000A WITH "3", mcLn+115.9
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 DO CASE
      CASE mdTr=1
           STORE vlIn-4 TO vlIn
           @vLIN,mCLN+02  Say vCM3 Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           @vLIN,mCLN+42  Say mFR1 Font "&mLetRom",11 Style "NQ" Size 1,75  Pict "@S75"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4 Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+42  Say mFR2 Font "&mLetRom",11 Style "NQ" Size 1,75  Pict "@S75"
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+02  Say vCM5 Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
      CASE LEN(ALLTRIM(vcM3))<>0
           STORE vlIn-4 TO vlIn
           @vLIN,mCLN+02  Say vCM3 Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4 Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM5 Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
 ENDCASE
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+053 Say tVAL              Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+116 Say F1300IGV          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+132 Say vSIG              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+53.2 Say vFRA+" S.E.u.O." Font "&mLetAri",10 Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr, pdOo
 DO diR_1300z IN FAC0000A
 STORE vsEr+"-"+vdOc TO pdOo
 DO CASE
      CASE mcIa="AL"
           DO bo1_1300z
      CASE mcIa="A1"
           DO bo2_1300z
 ENDCASE
 RELEASE puNi, pdIr, pdOo
ENDPROC
*
PROCEDURE Bo1_1300z
 @vLIN,mCLN+012 Say vFEM Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+041 Say vDNI Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+067 Say vCM1 Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+104 Say vVEN Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vNOM Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+097 Say pDOO Font "&mLetRom",11 Style "NQ"
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
                @vLIN,mCLN+4 Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+3 Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18 Say pUNI    Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+25 Say F1301DCR   Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+119.5 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.4 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+25 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
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
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+048.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
ENDPROC
*
PROCEDURE Bo2_1300z
 @vLIN,mCLN+73 Say "Lima, Lima" Font "&mLetAri",7 Style "NQ"
 @vLIN,mCLN+012 Say vFEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+041 Say vDNI Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+067 Say vCM1 Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+104 Say vVEN Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+097 Say pDOO Font "&mLetRom",10 Style "NQ"
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
                @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+3 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+25 Say F1301DCR    Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+120.4 Say vPRE  Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.4 Say vTOT  Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+42 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
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
 PUBLIC pdC1, pdC2, puNi
 STORE 00 TO vpAg, vlIn
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      SELECT deT_fact
      DO CASE
           CASE piMp="*" .AND. (ptP1=SUBSTR(vcOd, 1, 1) .OR. ptP2= ;
                SUBSTR(vcOd, 1, 1) .OR. ptP3=SUBSTR(vcOd, 1, 1) .OR. ptP4= ;
                SUBSTR(vcOd, 1, 1))
                SKIP
                LOOP
           CASE piMp<>SUBSTR(vcOd, 1, 1) .AND. piMp<>"*"
                SKIP
                LOOP
      ENDCASE
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
           CASE vlIn>mpAg-3
                DO cdE_1300z
      ENDCASE
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+7.5 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,15 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+8.0 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN Say pUNI        Font "&mLetRom",10 Style "NQ" Size 1,6 Pict "@S6"
      ENDIF
      IF LEN(ALLTRIM(f1301dcr))<=40
           @vLIN,mCLN+28 Say F1301DCR Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
      ELSE
           STORE SUBSTR(f1301dcr, 01, 040) TO pdC1
           STORE SUBSTR(f1301dcr, 41, 100) TO pdC2
           IF RAT(" ", pdC1)=0
                @vLIN,mCLN+28 Say pDC1 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-3
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+28 Say pDC2 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ELSE
                STORE SUBSTR(pdC1, 1, RAT(" ", pdC1)) TO pdC1
                STORE SUBSTR(f1301dcr, LEN(ALLTRIM(pdC1))+1, 100) TO pdC2
                STORE ALLTRIM(pdC1) TO pdC1
                STORE ALLTRIM(pdC2) TO pdC2
                @vLIN,mCLN+28 Say pDC1 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-3
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+28 Say pDC2 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      SELECT deT_fact
      DO CASE
           CASE piMp="*" .AND. (ptP1=SUBSTR(vcOd, 1, 1) .OR. ptP2= ;
                SUBSTR(vcOd, 1, 1) .OR. ptP3=SUBSTR(vcOd, 1, 1) .OR. ptP4= ;
                SUBSTR(vcOd, 1, 1))
                SKIP
                LOOP
           CASE piMp<>SUBSTR(vcOd, 1, 1) .AND. piMp<>"*"
                SKIP
                LOOP
      ENDCASE
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      IF vmD3=2
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      DO CASE
           CASE vlIn=0 .OR. vpAg=0
                DO cdE_1300z
                DO cd1_1300z
           CASE vlIn>mpAg-3
                DO cdE_1300z
      ENDCASE
      SELECT deT_fact
      IF vcTd=0
           STORE f1301can TO vcTd
           STORE f1301nuv TO puNi
      ELSE
           STORE "Pzas" TO puNi
      ENDIF
      IF INT(vcTd)<>vcTd
           @vLIN,mCLN+7.5 Say vCTD Font "&mLetRom",12 Style "NQ" Size 1,15 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+8.0 Say vCTD Font "&mLetRom",12 Style "NQ" Size 1,9  Pict "999,999"
      ENDIF
      @vLIN,mCLN        Say pUNI Font "&mLetRom",12 Style "NQ" Size 1,7  Pict "@S7"
      IF LEN(ALLTRIM(f1301dcr))<=40
           @vLIN,mCLN+28 Say F1301DCR Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
      ELSE
           STORE SUBSTR(f1301dcr, 01, 040) TO pdC1
           STORE SUBSTR(f1301dcr, 41, 100) TO pdC2
           IF RAT(" ", pdC1)=0
                @vLIN,mCLN+28 Say pDC1 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-3
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+28 Say pDC2 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ELSE
                STORE SUBSTR(pdC1, 1, RAT(" ", pdC1)) TO pdC1
                STORE SUBSTR(f1301dcr, LEN(ALLTRIM(pdC1))+1, 100) TO pdC2
                STORE ALLTRIM(pdC1) TO pdC1
                STORE ALLTRIM(pdC2) TO pdC2
                @vLIN,mCLN+28 Say pDC1 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-3
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+28 Say pDC2 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      @vLIN,mCLN+4 Say "MED:" Font "&mLetAri",8 Style "NQ"
      DO itD_1300z
      STORE vlIn+1.5 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 RELEASE pdC1, pdC2, puNi
ENDPROC
*
PROCEDURE Cde_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN    Say mRZ1                     Font "&mLetAri",12 Style "NQ"
 @vLIN,mCLN+70 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetAri",12 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE piMp="V"
           @vLIN,mCLN+73 Say "Vidrios"  Font "&mLetRom",13 Style "BQ"
      CASE piMp="A"
           @vLIN,mCLN+69 Say "Aluminio" Font "&mLetRom",13 Style "BQ"
      OTHERWISE
           @vLIN,mCLN+74 Say "Varios"   Font "&mLetRom",13 Style "BQ"
 ENDCASE
 STORE vlIn+2 TO vlIn
 DO CASE
      CASE vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"
           @vLIN,mCLN Say "Orden de Despacho de Factura No."+vSER+"-"+vDOC Font "&mLetAri",12 Style "NQU"
      CASE vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC"
           @vLIN,mCLN Say "Orden de Despacho de Boleta No." +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQU"
      CASE vtDo="NP"
           @vLIN,mCLN Say "PROFORMA No." +vSER+"-"+vDOC                    Font "&mLetAri",12 Style "NQU"
 ENDCASE
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Cd1_1300z
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN     Say "Cliente"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+14  Say vNOM            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+63  Say "Hora"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+71  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+73  Say vTIM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Vendedor"      Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+14  Say vNVE            Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+63  Say "Fecha"         Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+71  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+73  Say vFEM            Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Observaciones" Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+18  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+20  Say vCM1            Font "&mLetAri",9 Style "NT"
 IF LEN(ALLTRIM(vcM2))<>0
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN Say vCM2             Font "&mLetAri",9 Style "NT"
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",65)  Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Unid"         Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+12  Say "Cantidad"     Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+28  Say "Descripción"  Font "&mLetAri",11 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",65)  Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE ItD_1300z
 PUBLIC plL1, plL2, plL3, pxL1, pxL2, pxL3
 STORE 2 TO pxL1
 STORE 3 TO pxL2
 STORE 2 TO pxL3
 SELECT itE_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 STORE 13 TO vcLn
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>pxL1 .OR. plL2>pxL2 .OR. plL3>pxL3
           STORE vlIn+1.3 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 13 TO vcLn
           IF vlIn>mpAg-3
                DO cdE_1300z
           ENDIF
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,mCLN+vCLN+3 Say F1302MLA         Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,mCLN+vCLN+0.0 Say F1302P11       Font "&mLetRom",12 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+4.7 Say '"'            Font "&mLetCou",9 Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,mCLN+vCLN+5.9 Say F1302P12    Font "&mLetRom",12 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+11.4 Say "x"                   Font "&mLetRom",12 Size 1,1 Style "BQ"
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,mCLN+vCLN+16 Say F1302MAN        Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,mCLN+vCLN+13.5 Say F1302P21      Font "&mLetRom",12 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+18.3 Say '"'           Font "&mLetCou",9 Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,mCLN+vCLN+19.5 Say F1302P22   Font "&mLetRom",12 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+24.5 Say "="+Str(F1302CTD,4,0) Font "&mLetRom",12 Style "NQ"
                STORE vcLn+33 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA               Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+10.4 Say "x"                    Font "&mLetRom",12 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+14.5 Say F1302MAN               Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+23.0 Say "= "+Str(F1302CTD,4,0) Font "&mLetRom",12 Style "NQ"
                STORE vcLn+31 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2   Say F1302MLA               Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "="+Str(F1302CTD,4,0)  Font "&mLetRom",12 Style "NQ"
                STORE vcLn+18 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=11
                @vLIN,mCLN+vCLN+02.0 Say F1302CA1              Font "&mLetRom",12 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+05.0 Say F1302MLA              Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+12.4 Say "x"                   Font "&mLetRom",12 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+16.0 Say F1302CA2              Font "&mLetRom",12 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+19.0 Say F1302MAN              Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+26.0 Say "="+Str(F1302CTD,4,0) Font "&mLetRom",12 Style "NQ"
                STORE vcLn+34 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3, pxL1, pxL2, pxL3
ENDPROC
*
PROCEDURE Let_3110z
ENDPROC
*
PROCEDURE Cre_3610z
 PRIVATE pdOo
 STORE "("+vsEr+"-"+vdOc+")" TO pdOo
 SELECT caB_nota
 @0,0 Say Space(01)          Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+018 Say vNOM     Font "&mLetRom",11 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+125 Say pDOO     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+018 Say vRUC     Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+100 Say F3610CM1 Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+025 Say vFEM     Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+100 Say F3610CM2 Font "&mLetRom",11 Style "NQ" Pict "@S100"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.3 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+04 Say F3611DES     Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S100"
      IF f3611tot<>0
           @vLIN,mCLN+138 Say F3611TOT Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.8 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+14 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+133 Say vSIG                    Font "&mLetSwi",9  Style "NQ"
 @vLIN,mCLN+138 Say tNET                    Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+133 Say vSIG                    Font "&mLetSwi",9  Style "NQ"
 @vLIN,mCLN+138 Say F3610IGV                Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+133 Say vSIG                    Font "&mLetSwi",9  Style "NQ"
 @vLIN,mCLN+138 Say tTOT                    Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 RELEASE pdOo
ENDPROC
*
PROCEDURE Deb_3610z
 DO crE_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, ppEs, plUg, plUd, ppLa, pdIa, pmEs, paNo, pdOo
 DO ruC_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 STORE ppEs+" aprox." TO ppEs
 STORE SUBSTR(DTOC(f2600fem), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(f2600fem), 4, 2) TO pmEs
 STORE SUBSTR(DTOC(f2600fem), 7, 4) TO paNo
 STORE "("+vsEr+"-"+vdOc+")" TO pdOo
 STORE ALLTRIM(f2600pla)+" / "+ALLTRIM(f2600mr1) TO ppLa
 IF LEN(ALLTRIM(f2600lug))<>0
      STORE ALLTRIM(f2600lug) TO plUg
      STORE ALLTRIM(f2600lud)+", "+ALLTRIM(f2600lup) TO plUd
 ELSE
      STORE ALLTRIM(f2600dir) TO plUg
      STORE ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO plUd
 ENDIF
 @0,0            Say " "           Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+34.0 Say pDIA          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+43.5 Say pMES          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+53.5 Say pANO          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+70.5 Say pDOO          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.10 TO vlIn
 @vLIN,mCLN+82.0 Say pLUG          Font "&mLetRom",12 Style "NQ"
 STORE vlIn+0.20 TO vlIn
 @vLIN,mCLN+07.5 Say vADI          Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.40 TO vlIn
 @vLIN,mCLN+82 Say pLUD            Font "&mLetRom",12 Style "NQ"
 STORE vlIn+0.40 TO vlIn
 @vLIN,mCLN+07.5 Say AllTrim(vADS) Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.60 TO vlIn
 @vLIN,mCLN+82.0 Say F2600NOM      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.30 TO vlIn
 @vLIN,mCLN+20.5 Say F2600FEM      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.40 TO vlIn
 @vLIN,mCLN+91.5 Say pRUC          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+4.00 TO vlIn
 @vLIN,mCLN+27.5 Say pPLA          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+81.5 Say F2600TNO      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.50 TO vlIn
 @vLIN,mCLN+27.5 Say F2600LC1      Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+91.5 Say F2600TRU      Font "&mLetRom",11 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      @vLIN,mCLN+017 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      @vLIN,mCLN+122 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
      DO CASE
           CASE INT(f2601can)=f2601can
                @vLIN,mCLN+106 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999"     Size 1,8
           OTHERWISE
                @vLIN,mCLN+107 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
      ENDCASE
      STORE vlIn+1.9 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF f2600td1="FA" .OR. f2600td1="BO" .OR. f2600td1="FE" .OR. f2600td1= ;
    "BE" .OR. f2600td1="FC" .OR. f2600td1="BC"
      @vLIN,mCLN+103.5 Say F2600TD1              Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+123.5 Say F2600FFA              Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.7 TO vlIn
      @vLIN,mCLN+103.5 Say F2600SR1+"-"+F2600DO1 Font "&mLetRom",11 Style "NQ"
 ENDIF
 RELEASE prUc, ppEs, plUg, plUd, ppLa, pdIa, pmEs, paNo, pdOo
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
 @pLIN,009 Say "RUC"                  Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300RUC               Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Forma de Pago"        Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NFP               Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
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
           @pLIN+0.0,06.4 Say "Representación impresa de la Factura Electrónica"                                  Font "&mLetAri",7 Style "NQ"
           @pLIN+1.2,06.4 Say "Para consultar y/o imprimir el documento ingrese a"                                Font "&mLetAri",7 Style "NQ"
           @pLIN+2.4,06.4 Say "http://www.vidrieriaalejo.com.pe/vfps/cpe/"                                        Font "&mLetAri",7 Style "NQ"
           STORE plIn+2.4 TO plIn
      CASE vtDo="FC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Factura Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.2,06.4 Say "Puede verificarla utilizando su clave SOL."                                        Font "&mLetAri",7 Style "NQ"
           STORE plIn+1.2 TO plIn
 ENDCASE
 DO feI_4240z
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
 DO CASE
      Case File("&mDBF")
           DO caB_fel1
      OTHERWISE
           DO caB_fel2
 ENDCASE
 @pLIN,93.2 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 @pLIN,93.7 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
PROCEDURE Cab_Fel1
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
      CASE vtDo="FE" .OR. vtDo="FC" .OR. vtDo="FA"
           @pLIN,102.4 Say "FACTURA ELECTRÓNICA"         Font "&mLetAri",14 Style "BQ"
      CASE vtDo="BE" .OR. vtDo="BC" .OR. vtDo="BO"
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
ENDPROC
*
PROCEDURE Cab_Fel2
 @pLIN,009.0 Say mRAZ                            Font "&mLetRom",13 Style "BT"
 @pLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE plIn+0.5 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.5 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @pLIN,9 Say Substr(mDIR,1,pLEN)              Font "&mLetAri",10 Style "NQ"
 ELSE
      @pLIN,9 Say AllTrim(mDIR)                    Font "&mLetAri",10 Style "NQ"
 ENDIF
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      @pLIN,9 Say AllTrim(Substr(mDIR,pLEN+1,90))  Font "&mLetAri",10 Style "NQ"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @pLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
 DO CASE
      CASE vtDo="FE" .OR. vtDo="FC" .OR. vtDo="FA"
           @pLIN,102.4 Say "FACTURA ELECTRÓNICA"         Font "&mLetAri",14 Style "BQ"
      CASE vtDo="BE" .OR. vtDo="BC" .OR. vtDo="BO"
           @pLIN,096.0 Say "BOLETA DE VENTA ELECTRÓNICA" Font "&mLetAri",13 Style "BQ"
 ENDCASE
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @pLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @pLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @pLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
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
 STORE plIn+0.8 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.8 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
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
 @pLIN,138 Say F1300NFP            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S18"
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
           @pLIN,27 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,4,0) Font "&mLetAri",8 Style "NQ" Size 1,65 Pict "@S65"
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
           @pLIN+0.0,06.4 Say "Representación impresa de la Boleta Electrónica"                                  Font "&mLetAri",7 Style "NQ"
           @pLIN+1.3,06.4 Say "Para consultar y/o imprimir el documento ingrese a"                               Font "&mLetAri",7 Style "NQ"
           @pLIN+2.5,06.4 Say "http://www.vidrieriaalejo.com.pe/vfps/cpe/"                                       Font "&mLetAri",7 Style "NQ"
           STORE plIn+2.5 TO plIn
      CASE vtDo="BC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Boleta Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.3,06.4 Say "Puede verificarla utilizando su clave SOL."                                       Font "&mLetAri",7 Style "NQ"
           STORE plIn+1.3 TO plIn
 ENDCASE
 DO feI_4240z
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
ENDPROC
*
PROCEDURE FeI_4240z
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
                          STORE vcLn+30 TO vcLn
                          STORE plL1+1 TO plL1
                     CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                          @pLIN,vCLN+09.8 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          STORE vcLn+16 TO vcLn
                          STORE plL2+1 TO plL2
                     CASE vtPo=4 .OR. vtPo=7
                          @pLIN,vCLN+14.2 Say "x"      Font "&mLetAri",8 Style "NQ" Size 1,1
                          @pLIN,vCLN+10.8 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          @pLIN,vCLN+23.2 Say F1302MAN Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          STORE vcLn+26 TO vcLn
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
      STORE mpTh+"DIB\OGOL.GPJ" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.GPJ" TO mdBf
 ENDIF
 @ vlIn, 0 SAY " "
 STORE vlIn+1.3 TO vlIn
 DO caB_cel IN FAC0000A
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
      @vLIN,051.8 Say F3611DES Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S85"
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
