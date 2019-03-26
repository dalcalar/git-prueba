*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr, pvAl, pdCm
 STORE 00 TO pvAl
 STORE vsEr+"-"+vdOc TO pdCm
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 @vLIN,mCLN+012 Say vFEM        Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+075 Say vCM1        Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+088 Say Time()      Font "&mLetAri",9  Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+014 Say vNOM        Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+075 Say vNFP        Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S18"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+015 Say Lower(pDIR) Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S78"
 @vLIN,mCLN+076 Say vNVE        Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+015 Say vRUC        Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.1 TO vlIn
 @vLIN,mCLN+080 Say pDCM        Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
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
           @vLIN,mCLN+4  Say F1301COD Font "&mLetRom",9  Style "NQ" Size 1,4  Pict "@S10"
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+22 Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+21 Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+34.5  Say pUNI  Font "&mLetRom",10 Style "NQ" Size 1,4  Pict "@S10"
      ENDIF
      @vLIN,mCLN+40.5 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF f1301to1<>0
           STORE ROUND(f1301pro/(1+(vpIg/100))*f1301can, 2) TO vtOt
           STORE ROUND(vtOt/vcAn, 4) TO vpRe
           STORE vcAn*vpRe TO vtOt
           STORE pvAl+vtOt TO pvAl
           STORE ROUND(f1301pro*f1301can, 2) TO vtOt
           STORE ROUND(vtOt/vcAn, 4) TO vpRe
           STORE vcAn*vpRe TO vtOt
      ELSE
           STORE 0 TO vpRe, vtOt
      ENDIF
      IF vtOt<>0
           @vLIN,mCLN+125.4 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+150.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+40.5 Say mFR1           Font "&mLetRom",11 Style "NQ" Size 1,75  Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+40.5 Say mFR2           Font "&mLetRom",11 Style "NQ" Size 1,75  Pict "@S75"
 ELSE
      @vLIN,mCLN+40.5 Say " "            Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+40.5 Say " "            Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+035.5 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3.8 TO vlIn
 @vLIN,mCLN+048.0 Say pVAL             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+084.0 Say F1300NET-pVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+116.0 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+140.0 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+148.3 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE puNi, pdIr, pvAl, pdCm
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 STORE 00 TO tvAl
 SELECT caB_fact
 @vLIN,mCLN+001 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+059 Say vDNI          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+080 Say Time()        Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+001 Say vNOM          Font "&mLetRom",10 Style "NQ" Size 1,50 Pict "@S52"
 @vLIN,mCLN+059 Say vNVE          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+001 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,50 Pict "@S52"
 @vLIN,mCLN+089 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+105 Say vNFP          Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S18"
 @vLIN,mCLN+138 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
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
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+20.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+19.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+00      Say vCOD Font "&mLetRom",9  Style "NQ"
           @vLIN,mCLN+40      Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,4  Pict "@S4"
      ENDIF
      IF f1301to2<>0
           STORE ROUND(f1301pro*f1301can, 2) TO vtOt
           STORE ROUND(vtOt/vcAn, 4) TO vpRe
           STORE vcAn*vpRe TO vtOt
           STORE tvAl+vtOt TO tvAl
      ELSE
           STORE 0 TO vpRe, vtOt
      ENDIF
      @vLIN,mCLN+47.0 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,70 Pict "@S72"
      IF vtOt<>0
           @vLIN,mCLN+116.8 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+144.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+086 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 @vLIN,mCLN+116 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+137 Say vSIG          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F1300TOT      Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
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
 @vLIN,mCLN+48  Say pRF1       Font "&mLetAri",8 Style "BQ"
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN+31  Say F3110LET   Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+48  Say pRF3       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+75  Say "LIMA"     Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+136 Say vSIG       Font "&mLetAri",9 Style "BQ" Size 1,5.1
 @vLIN,mCLN+152 Say F3110TOT   Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "99,999.99"
 STORE vlIn+0.3 TO vlIn
 @vLIN,mCLN+48 Say pRF2        Font "&mLetAri",8 Style "BQ"
 @vLIN,mCLN+95  Say F3110FEM   Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+116 Say F3110FVE   Font "&mLetAri",9 Style "BQ"
 STORE vlIn+4.3 TO vlIn
 @vLIN,mCLN+30  Say pFRA       Font "&mLetAri",9 Style "BQ" Size 1,82 Pict "@S84"
 STORE vlIn+3.2 TO vlIn
 @vLIN,mCLN+36  Say pNO1       Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S50"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+27  Say pNO2       Font "&mLetAri",8 Style "BQ" Size 1,62 Pict "@S62"
 STORE vlIn+1.6 TO vlIn
 IF LEN(pdIr)>46
      @vLIN,mCLN+35 Say pDIR     Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+35 Say pDIR     Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+35  Say pRUC       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+74  Say F3110TEL   Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.0 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+33 Say F3110ANO Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+33 Say F3110ANO Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 IF LEN(paDi)>46
      @vLIN,mCLN+35 Say pADI     Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+35 Say pADI     Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+35 Say pARU        Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+79 Say F3110ATL    Font "&mLetAri",9 Style "BQ"
 RELEASE pdIr, paDi, pfRa, prF1, prF2, prF3, pnO1, pnO2, prUc, paRu
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC pdIr
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+005 Say vFEM                  Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+070 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",9  Style "NQ"
 @vLIN,mCLN+087 Say Time()                Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+005 Say vNOM                  Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+071 Say vRUC                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+007 Say pDIR                  Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+032 Say AllTrim(vCM1)         Font "&mLetRom",9 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+072 Say AllTrim(vCM2)         Font "&mLetRom",9 Style "NQ" Size 1,78 Pict "@S80"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+29.5 Say F3611DES                              Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           IF f3611tot=ttOt
                @vLIN,mCLN+143 Say tNET                             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+143 Say Round(F3611TOT/(1+(vPIG/100)),2) Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+035 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3.3 TO vlIn
 @vLIN,mCLN+094 Say tNET             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+120 Say F3610IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+136 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F3610TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr
ENDPROC
*
PROCEDURE Deb_3610z
 PUBLIC pdIr
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+005 Say vFEM                  Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+070 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",9  Style "NQ"
 @vLIN,mCLN+087 Say Time()                Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+005 Say vNOM                  Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+071 Say vRUC                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+007 Say pDIR                  Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+032 Say AllTrim(vCM1)         Font "&mLetRom",9 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+072 Say AllTrim(vCM2)         Font "&mLetRom",9 Style "NQ" Size 1,78 Pict "@S80"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+29.5 Say F3611DES Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           IF f3611tot=ttOt
                @vLIN,mCLN+143 Say tNET                             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+143 Say Round(F3611TOT/(1+(vPIG/100)),2) Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "ND"
 @vLIN,mCLN+035 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3.3 TO vlIn
 @vLIN,mCLN+094 Say tNET             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+120 Say F3610IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+136 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F3610TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, pdIr, pdOc, ppAr, pmOt
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 STORE ppEs+" aprox." TO ppEs
 STORE "["+f2600ser+"-"+f2600doc+"]" TO pdOc
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 DO CASE
      CASE f2600mot=1
           STORE "1" TO pmOt
      CASE f2600mot=7
           STORE "2" TO pmOt
      CASE f2600mot=6
           STORE "3" TO pmOt
      CASE f2600mot=11
           STORE "4" TO pmOt
      CASE f2600mot=4
           STORE "5" TO pmOt
      CASE f2600mot=2 .OR. f2600mot=3
           STORE "6" TO pmOt
      CASE f2600mot=8
           STORE "7" TO pmOt
      CASE f2600mot=12
           STORE "8" TO pmOt
      CASE f2600mot=9
           STORE "9" TO pmOt
      CASE f2600mot=10
           STORE "10" TO pmOt
      CASE f2600mot=14
           STORE "13" TO pmOt
      CASE f2600mot=5 .OR. f2600mot=13
           STORE "14" TO pmOt
 ENDCASE
 @vLIN,mCLN+13.0 Say F2600FEM                Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+65.0 Say Time()                  Font "&mLetRom",9  Style "NQ"
 @vLIN,mCLN+80.0 Say pDOC                    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+13.0 Say F2600NOM                Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13.0 Say pDIR                    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+13.0 Say pRUC                    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+70.5 Say F2600FEM                Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+01.0 Say F2600CM1                Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+50.0 Say F2600CHO                Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+10.0 Say F2600LC1                Font "&mLetRom",9  Style "NQ"
 IF f2600pes<>0
      @vLIN,mCLN+50 Say pPES                   Font "&mLetRom",9  Style "NQ"
 ENDIF
 @vLIN,mCLN+152 Say pMOT                     Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19.0 Say F2600TNO                Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+07.5 Say F2600TRU                Font "&mLetRom",9  Style "NQ"
 @vLIN,mCLN+52.0 Say AllTrim(F2600CIM)       Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+07.5 Say F2600MR1+" / "+F2600MR2 Font "&mLetRom",9  Style "NQ"
 @vLIN,mCLN+50.0 Say F2600PLA+" / "+F2600PL2 Font "&mLetRom",9  Style "NQ"
 STORE vlIn+3 TO vlIn
 @vLIN,mCLN+02 Say "Cantidad"                Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+25 Say "Unidad"                  Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+36 Say "Código"                  Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+59 Say "Descripción"             Font "&mLetRom",11 Style "BQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+1.6 TO vlIn
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
           CASE (vmOt=2 .OR. vmOt=3) .AND. vtPo=2 .AND. mcAj=1 .AND. f2601caj>0
                @vLIN,mCLN+5.4 Say F2601CAJ Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say "Cajas"  Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE ptPp=1 .AND. INT(f2601can)=f2601can
                @vLIN,mCLN+5.0 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
           CASE ptPp=1
                @vLIN,mCLN+6.6 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,13
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"         Size 1,20
      ENDCASE
      @vLIN,mCLN+36 Say F2601COD          Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      @vLIN,mCLN+59 Say F2601DCR          Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      IF f2601pie>0 .AND. (vtPo=2 .OR. vtPo=3) .AND. vmOt<>2 .AND. vmOt<>3
           @vLIN,mCLN+136 Say F2601PIE      Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,15
           @vLIN,mCLN+152 Say F2601NUV      Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF LEN(ALLTRIM(f2600cm2))<>0
      @vLIN,mCLN+5 Say AllTrim(F2600CM2)                 Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+05 Say "Punto de Partida:"              Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+28 Say pPAR                             Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+05 Say "Punto de Llegada:"              Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+28 Say pLUG                             Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. LEN(ALLTRIM(f2600lg2))<>0
      @vLIN,mCLN+05 Say "Punto Intermedio:"                      Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+28 Say AllTrim(F2600LG2)+", "+AllTrim(F2600LD2) Font "&mLetRom",10 Style "NQ"
 ENDIF
 RELEASE prUc, plUg, ppEs, ptPp, pdIr, pdOc, ppAr, pmOt
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
