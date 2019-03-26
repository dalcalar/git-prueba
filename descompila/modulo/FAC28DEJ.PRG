*
PROCEDURE Fac_1300z
 PUBLIC pdIr, puNi
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE "Cta.Cte.No. 00161182761 / Banco de la Nacion" TO mfR2
 @vLIN,mCLN+09.0 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+70.0 Say vNFP          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.0 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.0 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.0 Say vRUC          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.8 Say vVEN          Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+75.5 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.0 Say vCM2          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+79.5 Say vTCA          Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
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
                @vLIN,mCLN+2 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+1 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+13   Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+25 Say F1301DCR    Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+129.4 Say vPRE  Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+144.7 Say vTOT  Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+25 Say F1301REF Font "&mLetRom",10 Style "NQ" Size 1,60   Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+25.0 Say mFR1         Font "&mLetRom",10 Style "NQ" Size 1,75  Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+25.0 Say mFR2         Font "&mLetRom",10 Style "NQ" Size 1,75  Pict "@S75"
 ELSE
      @vLIN,mCLN+25.0 Say " "          Font "&mLetRom",10 Style "NQ" Size 1,75
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+25.0 Say " "          Font "&mLetRom",10 Style "NQ" Size 1,75
 ENDIF
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+054 Say tVAL             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+117 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+002 TO vlIn
 @vLIN,mCLN+055 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 RELEASE pdIr, puNi
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+012  Say vFEM              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+042  Say Substr(vCM1,1,15) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+074  Say vSER+"-"+vDOC     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+012  Say vNOM              Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.30 TO vlIn
 @vLIN,mCLN+012  Say pDIR              Font "&mLetRom",10 Style "NQ" Size 1,76 Pict "@S79"
 STORE vlIn+1.40 TO vlIn
 @vLIN,mCLN+012  Say vCM2              Font "&mLetRom",10 Style "NQ"
 IF LEN(ALLTRIM(vdNi))<>0
      @vLIN,mCLN+81 Say "DNI: "+vDNI     Font "&mLetRom",10 Style "NQ"
 ENDIF
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.15 TO vlIn
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
                @vLIN,mCLN+2 Say vCAN  Font "&mLetRom",12 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+1 Say vCAN  Font "&mLetRom",12 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18   Say pUNI  Font "&mLetRom",12 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+32 Say F1301DCR   Font "&mLetRom",12 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+129.5 Say vPRE Font "&mLetRom",12 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+146.0 Say vTOT Font "&mLetRom",12 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.4 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+050.8 Say vTCA             Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 @vLIN,mCLN+078.0 Say tVAL             Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+114.0 Say F1300TOT-tVAL    Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+139.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+147.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+052.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 RELEASE puNi, pdIr
ENDPROC
*
PROCEDURE Npe_1300z
 DO dsP_1300z IN FAC0000A WITH "N"
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Cusco"
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
 SELECT caB_nota
 @0,0 Say Space(01)                       Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+018 Say vNOM                  Font "&mLetRom",11 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+125 Say "("+vSER+"-"+vDOC+")" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+018 Say vRUC                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+100 Say F3610CM1              Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+025 Say vFEM                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+100 Say F3610CM2              Font "&mLetRom",11 Style "NQ" Pict "@S100"
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
ENDPROC
*
PROCEDURE Deb_3610z
 DO crE_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, puNi, ppAr, plEt, pdIr, pfAc
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pfAc
 @0,0 Say Space(01)                      Font "&mLetSwi",10 Style "BQ"
 @vLIN,mCLN+11 Say F2600FEM              Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+11 Say F2600NOM              Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say pDIR                  Font "&mLetSwi",9 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+11 Say pRUC                  Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+77 Say F2600SER+"-"+F2600DOC Font "&mLetSwi",9  Style "NQ"
 STORE vlIn+1.35 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="BE" .OR. f2600td1="BC" .OR. f2600td1= ;
    "FA" .OR. f2600td1="FE" .OR. f2600td1="FC"
      @vLIN,mCLN+11 Say F2600CM1           Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+2.35 TO vlIn
 @vLIN,mCLN+086 Say pFAC                 Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+137 Say F2600FEM             Font "&mLetSwi",10 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.2 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_2600z IN FAC0000A
      DO unI_2600z IN FAC0000A
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+1.5 Say vCAN   Font "&mLetRom",11 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+0.3 Say vCAN   Font "&mLetRom",11 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      @vLIN,mCLN+17.5 Say pUNI     Font "&mLetSwi",10 Style "NQ" Size 1,9  Pict "@S10"
      @vLIN,mCLN+29.0 Say F2601DCR Font "&mLetSwi",10 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+1.3 TO vlIn
      SELECT deT_remi
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF LEN(ALLTRIM(f2600lug))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say "Punto de Partida:" Font "&mLetSwi",10 Style "BQ"
      @vLIN,mCLN+42 Say pPAR                Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f2600lug))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say "Punto de Llegada:" Font "&mLetSwi",10 Style "BQ"
      @vLIN,mCLN+42 Say pLUG                Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+7 Say F2600TNO Font "&mLetSwi",9 Style "NQ"
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+071.55 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=6
           @vLIN,mCLN+089.55 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=11
           @vLIN,mCLN+117.35 Say "x" Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+7 Say F2600TRU         Font "&mLetSwi",9 Style "NQ"
 DO CASE
      CASE f2600mot=8
           @vLIN,mCLN+087.05 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=14
           @vLIN,mCLN+117.35 Say "x" Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f2600mr1))=0 .OR. LEN(ALLTRIM(f2600pla))=0
      STORE "" TO plEt
 ELSE
      STORE "/" TO plEt
 ENDIF
 @vLIN,mCLN+18 Say AllTrim(F2600MR1)+pLET+AllTrim(F2600PLA) Font "&mLetSwi",9 Style "NQ"
 IF f2600mot=2
      @vLIN,mCLN+117.35 Say "x"      Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600LC1        Font "&mLetSwi",10 Style "NQ"
 IF f2600mot=9
      @vLIN,mCLN+117.35 Say "x"      Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600CHO        Font "&mLetSwi",10 Style "NQ"
 IF f2600mot=13
      @vLIN,mCLN+117.35 Say "x"      Font "&mLetSwi",10 Style "NQ"
 ENDIF
 RELEASE prUc, plUg, ppEs, ptPp, puNi, ppAr, plEt, pdIr, pfAc
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
 DO deT_fel
 STORE plIn-0.5 TO plIn
 STORE plIn-vlIn TO plI0
 IF plI0<74
      DO WHILE .T.
           IF plI0>=74
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
           STORE plIn+0.0 TO plIn
      CASE vtDo="FC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Factura Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.2,06.4 Say "Puede verificarla utilizando su clave SOL."                                        Font "&mLetAri",7 Style "NQ"
           STORE plIn+1.2 TO plIn
 ENDCASE
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
ENDPROC
*
PROCEDURE Det_Fel
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 @pLIN,011.0 Say "CODIGO"          Font "&mLetAri",7 Style "BQ"
 @pLIN,027.0 Say "DESCRIPCION"     Font "&mLetAri",7 Style "BQ"
 @pLIN,111.9 Say "UNIDAD"          Font "&mLetAri",7 Style "BQ"
 @pLIN,125.6 Say "CANTIDAD"        Font "&mLetAri",7 Style "BQ"
 @pLIN,142.0 Say "VALOR UNITAR"    Font "&mLetAri",7 Style "BQ"
 STORE plIn+0.3 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 STORE plIn+0.5 TO plIn
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
           @pLIN,27 Say AllTrim(F1301DCR)                         Font "&mLetAri",8 Style "NQ" Size 1,80 Pict "@S80"
      ELSE
           @pLIN,27 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,3,0) Font "&mLetAri",8 Style "NQ" Size 1,80 Pict "@S80"
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
 @pLIN,93.2 Say Replicate("-",55)                Font "&mLetAri",13 Style "NT"
 @pLIN,93.7 Say Replicate("-",55)                Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.4 TO plIn
 If File("&mDBF")
      @pLIN,7 Say "&mDBF" Bitmap Size 35,85 Isometric
 ENDIF
 STORE plIn+0.2 TO plIn
 @pLIN,102.1 Say "R.U.C. N"                      Font "&mLetAri",16 Style "BQ"
 @pLIN,120.7 Say Chr(176)                        Font "&mLetAri",16 Style "BQ"
 @pLIN,124.2 Say mRUC                            Font "&mLetRom",16 Style "BQ"
 STORE plIn+0.1 TO plIn
 @pLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
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
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,14 Say AllTrim(mDIR)                      Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
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
 @pLIN,14 Say "Teléfonos : "+mTEL                Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,14 Say "e-Mail : "+mEMA                   Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 @pLIN,93.2 Say Replicate("-",55)                Font "&mLetAri",13 Style "NT"
 @pLIN,93.7 Say Replicate("-",55)                Font "&mLetAri",13 Style "NT"
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
 IF plI0<74
      DO WHILE .T.
           IF plI0>=74
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
           STORE plIn+0.0 TO plIn
      CASE vtDo="BC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Boleta Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.3,06.4 Say "Puede verificarla utilizando su clave SOL."                                       Font "&mLetAri",7 Style "NQ"
           STORE plIn+1.3 TO plIn
 ENDCASE
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
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
 DO caB_cel
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
           @vLIN+0.0,6.4 Say "Representación impresa de la Nota de Credito Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
      CASE vtDo="N3"
           @vLIN+0.0,6.4 Say "Representación impresa de la Nota de Credito Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @vLIN+1.5,6.4 Say "Puede verificarla utilizando su clave SOL."                                                Font "&mLetAri",7 Style "NQ"
 ENDCASE
 RELEASE plIn
ENDPROC
*
PROCEDURE Cab_Cel
 PRIVATE pdIr, plEn
 DO coLbln
 @vLIN,090.2 Say Replicate("-",57)  Font "&mLetAri",13 Style "NT"
 @vLIN,091.0 Say Replicate("-",57)  Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.4 TO vlIn
 If .not.File("&mDBF")
      @vLIN,7 Say "&mDBF" Bitmap Size 35,82 Isometric
 ENDIF
 STORE vlIn+0.2 TO vlIn
 @vLIN,102.1 Say "R.U.C. N"         Font "&mLetAri",16 Style "BQ"
 @vLIN,120.7 Say Chr(176)           Font "&mLetAri",16 Style "BQ"
 @vLIN,124.2 Say mRUC               Font "&mLetRom",16 Style "BQ"
 STORE vlIn+0.1 TO vlIn
 @vLIN,120.5 Say Chr(6)             Font "&mLetAri",16 Style "BT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.3 TO vlIn
 DO CASE
      CASE vtDo="N1" .OR. vtDo="N3"
           @vLIN,92.4 Say "NOTA DE CRÉDITO ELECTRÓNICA" Font "&mLetAri",14 Style "BQ"
      CASE vtDo="N2" .OR. vtDo="N4"
           @vLIN,93.0 Say "NOTA DE DÉBITO ELECTRÓNICA"  Font "&mLetAri",14 Style "BQ"
 ENDCASE
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,14 Say AllTrim(mDIR)         Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 STORE vlIn+0.7 TO vlIn
 @vLIN,107.0 Say "N"                Font "&mLetAri",17 Style "BQ"
 @vLIN,110.7 Say Chr(176)           Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO ceL_nro IN FAC0000A
 DO coLbln
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,14 Say "Teléfonos : "+mTEL   Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,014 Say "e-Mail : "+mEMA     Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 @vLIN,090.2 Say Replicate("-",57)  Font "&mLetAri",13 Style "NT"
 @vLIN,091.0 Say Replicate("-",57)  Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
