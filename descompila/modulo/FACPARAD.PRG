*
PROCEDURE Fac_1300z
 PUBLIC pdIr, pdIs, puNi
 DO deT_1300z IN FAC0000A WITH "1"
 STORE ALLTRIM(vdIr) TO pdIr
 STORE ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 @0,0          Say " "                   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+12 Say vFEM                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+12 Say vNOM                  Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+12 Say pDIR                  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+12 Say pDIS                  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+12 Say vRUC                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+81 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",11 Style "NQ"
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
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+4.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+4.0 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      DO pc1_1300z IN FAC0000A
      @vLIN,mCLN+29 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF vtOt<>0
           @vLIN,mCLN+132.5 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+149.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z IN FACLIMAT
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
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
      @vLIN,mCLN+34.0 Say "@"         Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+34.0 Say "@"         Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+16 Say F1300CM1       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+16 Say F1300CM2       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+4 Say vFRA            Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3.1 TO vlIn
 @vLIN,mCLN+008 Say vTCA          Font "&mLetRom",11 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+036 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+062 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+087 Say F1300NET      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+115 Say F1300IGV      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+137 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+147 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr, pdIs, puNi
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC pdIr, pdIs, puNi
 STORE ALLTRIM(vdIr) TO pdIr
 STORE ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 @0,0 Say Space(01)                       Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+012 Say vFEM                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vNOM                  Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09 Say pDIR                   Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09 Say pDIS                   Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vDNI                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+083 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",11 Style "NQ"
 STORE vlIn+3.9 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO unI_1300z IN FAC0000A
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4   Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+2.8 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+18 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDCASE
      DO pc2_1300z IN FAC0000A
      @vLIN,mCLN+28 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF vtOt<>0
           @vLIN,mCLN+127.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+145.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z IN FACLIMAT
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+145.4 Say tVAL          Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+0.2 TO vlIn
 @vLIN,mCLN+007.0 Say vFRA          Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+1.0 TO vlIn
 @vLIN,mCLN+145.6 Say F1300TOT-tVAL Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99" Function "("
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+019.0 Say F1300NVE       Font "&mLetRom",10 Style "NQ" Size 1,11.4
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN+135.0 Say vSIG          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+145.4 Say F1300TOT      Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+019.0 Say F1300NFP      Font "&mLetRom",10 Style "NQ" Size 1,11.4
 RELEASE pdIr, pdIs, puNi
ENDPROC
*
PROCEDURE Cot_1300z
 PUBLIC puNi
 DO coLbln
 STORE 00 TO vpAg
 DO ccO_1300z WITH "1"
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO unI_1300z IN FAC0000A
                DO CASE
                     CASE mvIs=1
                          IF INT(vcAn)<>vcAn
                               @vLIN,mCLN-4 Say vCAN   Font "&mLetRom",12 Style "NQ" Size 1,17 Pict "999,999.9999"
                          ELSE
                               @vLIN,mCLN-3 Say vCAN   Font "&mLetRom",12 Style "NQ" Size 1,10 Pict "999,999"
                          ENDIF
                          @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",12 Style "NQ" Size 1,9 Pict "@S10"
                     CASE mpRt="1"
                          IF INT(vcAn)<>vcAn
                               @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                          ELSE
                               @vLIN,mCLN+3 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                          ENDIF
                          @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                     CASE mpRt="2"
                          IF INT(vcAn)<>vcAn
                               @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                          ELSE
                               @vLIN,mCLN+3 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                          ENDIF
                          @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                ENDCASE
      ENDCASE
      DO pc2_1300z IN FAC0000A
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+45 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",12 Style "NQ" Size 1,90 Pict "@S75"
                STORE vlIn+0.5 TO vlIn
           CASE mpRt="1"
                @vLIN,mCLN+45 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
           CASE mpRt="2"
                @vLIN,mCLN+45 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      ENDCASE
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+45 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
                CASE mpRt="1"
                     @vLIN,mCLN+45 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
                CASE mpRt="2"
                     @vLIN,mCLN+45 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
           ENDCASE
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT prOductos
      IF vtPo=10 .AND. f2111ser=1 .AND. LEN(ALLTRIM(f2111fot))<>0 .AND.  ;
         mpRt="1"
           STORE "DIB\"+ALLTRIM(f2111fot)+".BMP" TO vfOt
           STORE vlIn+1 TO vlIn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
           DO CASE
                CASE mvIs=1
                     @ vlIn, 00 SAY " "
                     @ vlIn, mcLn+20 SAY vfOt BITMAP STYLE "Q"
                CASE mpRt="1"
                     @ vlIn, 00 SAY " "
                     @ vlIn, mcLn+20 SAY vfOt BITMAP STYLE "Q"
                CASE mpRt="2"
                     @ vlIn, 00 SAY " "
                     @ vlIn, mcLn+20 SAY vfOt BITMAP STYLE "Q"
           ENDCASE
           STORE vlIn+17 TO vlIn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
      ENDIF
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN Say "Medidas:" Font "&mLetSwi",8 Style "NQ"
                CASE mpRt="1"
                     @vLIN,mCLN Say "Medidas:" Font "&mLetSwi",8 Style "NQ"
                CASE mpRt="2"
                     @vLIN,mCLN Say "Medidas:" Font "&mLetSwi",8 Style "NQ"
           ENDCASE
           DO itE_1300z IN FACLIMAT
           STORE vlIn+1.4 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN Say Replicate("_",104) Font "&mLetAri",9 Style "NT"
      CASE mpRt="1"
           @vLIN,mCLN Say Replicate("_",104) Font "&mLetAri",9 Style "NT"
      CASE mpRt="2"
           @vLIN,mCLN Say Replicate("_",104) Font "&mLetAri",9 Style "NT"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+106   Say "Sub-Total:" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+122.4 Say tVAL         Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+106   Say "Sub-Total:" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+122.4 Say tVAL         Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+106   Say "Sub-Total:" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+122.4 Say tVAL         Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      ENDCASE
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      DO CASE
           CASE mvIs=1
                IF tvAl<f1300tot
                     @vLIN,mCLN+110 Say "Redondeo:" Font "&mLetRom",10 Style "BQ"
                ELSE
                     @vLIN,mCLN+110 Say "Dcto.:"    Font "&mLetRom",10 Style "BQ"
                ENDIF
                @vLIN,mCLN+131 Say F1300TOT-tVAL  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
           CASE mpRt="1"
                IF tvAl<f1300tot
                     @vLIN,mCLN+110 Say "Redondeo:" Font "&mLetRom",10 Style "BQ"
                ELSE
                     @vLIN,mCLN+110 Say "Dcto.:"    Font "&mLetRom",10 Style "BQ"
                ENDIF
                @vLIN,mCLN+131 Say F1300TOT-tVAL  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
           CASE mpRt="2"
                IF tvAl<f1300tot
                     @vLIN,mCLN+110 Say "Redondeo:" Font "&mLetRom",10 Style "BQ"
                ELSE
                     @vLIN,mCLN+110 Say "Dcto.:"    Font "&mLetRom",10 Style "BQ"
                ENDIF
                @vLIN,mCLN+131 Say F1300TOT-tVAL  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
      ENDCASE
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+122.1 Say "========" Font "&mLetSwi",9 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN+122.1 Say "========" Font "&mLetSwi",9 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN+122.1 Say "========" Font "&mLetSwi",9 Style "NQ"
      ENDCASE
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+115   Say vSIG     Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+122.4 Say F1300TOT Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      CASE mpRt="1"
           @vLIN,mCLN+115   Say vSIG     Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+122.4 Say F1300TOT Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      CASE mpRt="2"
           @vLIN,mCLN+115   Say vSIG     Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+122.4 Say F1300TOT Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
 ENDCASE
 STORE vlIn+2.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="1"
           @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="2"
           @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN    Say "Vendedor" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"        Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vNVE       Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="1"
           @vLIN,mCLN    Say "Vendedor" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"        Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vNVE       Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="2"
           @vLIN,mCLN    Say "Vendedor" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"        Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vNVE       Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="1"
           @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="2"
           @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 ENDCASE
 STORE vlIn+3.4 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN Say "Atentamente," Font "&mLetRom",11 Style "NQI"
      CASE mpRt="1"
           @vLIN,mCLN Say "Atentamente," Font "&mLetRom",11 Style "NQI"
      CASE mpRt="2"
           @vLIN,mCLN Say "Atentamente," Font "&mLetRom",11 Style "NQI"
 ENDCASE
ENDPROC
*
PROCEDURE Cco_1300z
 PARAMETER ptPo
 STORE 00 TO vlIn
 @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "BQ"
 STORE vlIn+2 TO vlIn
 IF ptPo="1"
      STORE vlIn+3 TO vlIn
      DO CASE
           CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Enero de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Febrero de "+Substr(Dtoc(vFEM),7,4)   Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Marzo de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Abril de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Mayo de "+Substr(Dtoc(vFEM),7,4)      Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Junio de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Julio de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Agosto de "+Substr(Dtoc(vFEM),7,4)    Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Setiembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Octubre de "+Substr(Dtoc(vFEM),7,4)   Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Noviembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
                @vLIN,mCLN+100 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Diciembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
      ENDCASE
      STORE vlIn+3 TO vlIn
 ENDIF
 @vLIN,mCLN+40 Say "COTIZACIÓN # "+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 DO CASE
      CASE ptPo="1"
           STORE vlIn+4 TO vlIn
           @vLIN,mCLN Say "Sres"                                     Font "&mLetRom",12 Style "BQI"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say vNOM                                       Font "&mLetRom",13 Style "BQI"
           STORE vlIn+2.5 TO vlIn
           @vLIN,mCLN Say "De nuestra consideración:"                Font "&mLetRom",11 Style "NQI"
           STORE vlIn+2.4 TO vlIn
           @vLIN,mCLN+3 Say "Les presentamos la siguiente Proforma:" Font "&mLetRom",11 Style "NQI"
           STORE vlIn+1.5 TO vlIn
      CASE ptPo="2"
           STORE vlIn+3 TO vlIn
 ENDCASE
 @vLIN,mCLN Say Replicate("_",104)    Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4.8   Say "Cantidad"      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+16    Say "Unidad"        Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+27    Say "Producto"      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",104)    Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Des_1300z
 DO deS_1300z IN FACLIMAT
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC puNi, pmEs
 DO np1_1300z
 DO np1_1300z
 RELEASE puNi, pmEs
ENDPROC
*
PROCEDURE Np1_1300z
 STORE 00 TO vlIn
 DO cnP_1300z
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN     Say "Nombre:"        Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "BQ"
 DO feC_1300z IN FAC0000A WITH vlIn, 120
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Dirección:"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Telefono:"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21 Say vTEL              Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Observaciones:" Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vCM1             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+110 Say "Vend:"          Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vNVE             Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+110 Say "F.Pago:"        Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vNFP             Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4   Say "Cantidad"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+16  Say "Unidad"         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+27  Say "Código"         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+44  Say "Descripción"    Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+119 Say "Prec.Unit"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+133 Say "Prec.Total"     Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3
           DO cnP_1300z
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO unI_1300z IN FAC0000A
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                @vLIN,mCLN+27 Say vCOD+":" Font "&mLetRom",10 Style "NQ"
      ENDCASE
      DO pc2_1300z IN FAC0000A
      @vLIN,mCLN+45 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF vtOt<>0
           @vLIN,mCLN+119.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+130.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+44 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO cnP_1300z
           ENDIF
           @vLIN,mCLN Say "Medidas:" Font "&mLetRom",11 Style "NQ"
           STORE vlIn+0.3 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z
           ENDIF
           DO itE_1300z IN FACLIMAT
           STORE vlIn+1.5 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO cnP_1300z
 ENDIF
 @vLIN,mCLN+73 Say "Sub-Total:"   Font "&mLetAri",9  Style "BQ"
 @vLIN,mCLN+87 Say tVAL           Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+102 Say "Red."     Font "&mLetAri",9  Style "BQ"
 ELSE
      @vLIN,mCLN+102 Say "Dcto.:"   Font "&mLetAri",9  Style "BQ"
 ENDIF
 @vLIN,mCLN+111 Say F1300TOT-tVAL Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
 @vLIN,mCLN+128 Say vSIG          Font "&mLetAri",9  Style "BQ"
 @vLIN,mCLN+133 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cnp_1300z
 STORE 00 TO vlIn
 @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC prUc, pdIr, pdIs
 SELECT caB_nota
 DO ruC_1300z IN FAC0000A
 DO CASE
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp))<=65
           STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIr
           STORE " " TO pdIs
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs))<=65
           STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs) TO pdIr
           STORE "Dpto:"+SUBSTR(ALLTRIM(vdEp), 1, 35) TO pdIs
      OTHERWISE
           STORE ALLTRIM(vdIr) TO pdIr
           STORE "Dist/Dpt:"+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 ENDCASE
 @0,0            Say " "                     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11.0 Say vFEM                    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+41.8 Say vCM1                    Font "&mLetRom",11 Style "NQ" Size 1,20 Pict "@S20"
 @vLIN,mCLN+72.0 Say vCM2                    Font "&mLetRom",11 Style "NQ" Size 1,20 Pict "@S20"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say vNOM                      Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say pDIR                      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say pRUC                      Font "&mLetRom",11 Style "NQ"
 IF LEN(ALLTRIM(pdIs))=0
      @vLIN,mCLN+69 Say "["+vSER+"-"+vDOC+"]"  Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+34 Say pDIS                   Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(pdIs))>0
      @vLIN,mCLN+69 Say " ["+vSER+"-"+vDOC+"]" Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+003 Say "Descripción"            Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
 @vLIN,mCLN+135 Say "V.V.Total"              Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
 STORE vlIn+2 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+3 Say F3611DES     Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           IF f3611tot=ttOt
                @vLIN,mCLN+133 Say tNET Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+133 Say Round(F3611TOT/(1+(vPIG/100)),2) Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+09 Say vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3.8 TO vlIn
 @vLIN,mCLN+099 Say tNET     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+120 Say F3610IGV Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+138 Say vSIG     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say tTOT     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE prUc, pdIr, pdIs
ENDPROC
*
PROCEDURE Deb_3610z
 DO crE_3610z
ENDPROC
*
PROCEDURE Let_3110z
 PUBLIC prF1, pfR2, pcL1, ptMn
 STORE 08 TO ptMn
 STORE 00 TO pcL1
 DO CASE
      CASE AT("*", f3110ref)=0 .AND. LEN(ALLTRIM(f3110ref))>14
           STORE UPPER(f3110ref) TO prF1
           STORE 9 TO ptMn
      CASE AT("*", f3110ref)=0
           STORE UPPER(f3110ref) TO prF1
           STORE 9 TO ptMn
           STORE ((14-LEN(ALLTRIM(f3110ref)))/2) TO pcL1
      OTHERWISE
           STORE 8 TO ptMn
           STORE SUBSTR(f3110ref, 1, AT("*", f3110ref)-1) TO prF1
 ENDCASE
 @0,0 Say Space(01) Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+027.5     Say F3110SER+"-"+F3110LET Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+pCL1+46.5 Say pRF1                  Font "&mLetRom",pTMN Style "NQ"
           @vLIN,mCLN+074.5     Say "LIMA"                Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+135.5     Say vSIG                  Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+141.8     Say F3110TOT              Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
      CASE mpRt="1"
           @vLIN,mCLN+027.5     Say F3110SER+"-"+F3110LET Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+pCL1+46.5 Say pRF1                   Font "&mLetRom",pTMN Style "NQ"
           @vLIN,mCLN+074.5     Say "LIMA"                Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+135.5     Say vSIG                  Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+141.8     Say F3110TOT              Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
      CASE mpRt="2"
           @vLIN,mCLN+027.5     Say F3110SER+"-"+F3110LET Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+pCL1+46.5 Say pRF1                  Font "&mLetRom",pTMN Style "NQ"
           @vLIN,mCLN+074.5     Say "LIMA"                Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+135.5     Say vSIG                  Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+141.8     Say F3110TOT              Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 ENDCASE
 STORE vlIn+0.8 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+093.3 Say Substr(Dtoc(F3110FEM),7,4)+" / "+Substr(Dtoc(F3110FEM),4,2)+" / "+Substr(Dtoc(F3110FEM),1,2) Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+114.3 Say Substr(Dtoc(F3110FVE),7,4)+" / "+Substr(Dtoc(F3110FVE),4,2)+" / "+Substr(Dtoc(F3110FVE),1,2) Font "&mLetRom",11 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+093.3 Say Substr(Dtoc(F3110FEM),7,4)+" / "+Substr(Dtoc(F3110FEM),4,2)+" / "+Substr(Dtoc(F3110FEM),1,2) Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+114.3 Say Substr(Dtoc(F3110FVE),7,4)+" / "+Substr(Dtoc(F3110FVE),4,2)+" / "+Substr(Dtoc(F3110FVE),1,2) Font "&mLetRom",11 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+093.3 Say Substr(Dtoc(F3110FEM),1,2)+" / "+Substr(Dtoc(F3110FEM),4,2)+" / "+Substr(Dtoc(F3110FEM),7,4) Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+114.3 Say Substr(Dtoc(F3110FVE),1,2)+" / "+Substr(Dtoc(F3110FVE),4,2)+" / "+Substr(Dtoc(F3110FVE),7,4) Font "&mLetRom",11 Style "NQ"
 ENDCASE
 STORE vlIn+5.4 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+27 Say vFRA Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
      CASE mpRt="1"
           @vLIN,mCLN+27 Say vFRA Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
      CASE mpRt="2"
           @vLIN,mCLN+27 Say vFRA Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 ENDCASE
 STORE vlIn+2 TO vlIn
 DO CASE
      CASE f3110ren=1 .AND. mvIs=1
           @vLIN,mCLN+95 Say "RECIBIDO" Font "&mLetRom",10 Style "NQ"
      CASE f3110ren=1 .AND. mpRt="1"
           @vLIN,mCLN+95 Say "RECIBIDO" Font "&mLetRom",10 Style "NQ"
      CASE f3110ren=1 .AND. mpRt="2"
           @vLIN,mCLN+95 Say "RECIBIDO" Font "&mLetRom",10 Style "NQ"
      CASE mvIs=1
           @vLIN,mCLN+95 Say "RENOVADO" Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+95 Say "RENOVADO" Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+95 Say "RENOVADO" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+3.2 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+28 Say F3110NOM Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
      CASE mpRt="1"
           @vLIN,mCLN+28 Say F3110NOM Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
      CASE mpRt="2"
           @vLIN,mCLN+28 Say F3110NOM Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 ENDCASE
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+40 Say AllTrim(F3110DIR)+" "+AllTrim(F3110DIS) Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
      CASE mpRt="1"
           @vLIN,mCLN+40 Say AllTrim(F3110DIR)+" "+AllTrim(F3110DIS) Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
      CASE mpRt="2"
           @vLIN,mCLN+40 Say AllTrim(F3110DIR)+" "+AllTrim(F3110DIS) Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 DO CASE
      CASE mvIs=1
           IF LEN(ALLTRIM(f3110ruc))<>0
                @vLIN,mCLN+35 Say F3110RUC        Font "&mLetRom",10 Style "NQ"
           ELSE
                @vLIN,mCLN+35 Say "DNI:"+F3110ELE Font "&mLetRom",10 Style "NQ"
           ENDIF
           @vLIN,mCLN+70 Say F3110TEL Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           IF LEN(ALLTRIM(f3110ruc))<>0
                @vLIN,mCLN+35 Say F3110RUC        Font "&mLetRom",10 Style "NQ"
           ELSE
                @vLIN,mCLN+35 Say "DNI:"+F3110ELE Font "&mLetRom",10 Style "NQ"
           ENDIF
           @vLIN,mCLN+70 Say F3110TEL Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           IF LEN(ALLTRIM(f3110ruc))<>0
                @vLIN,mCLN+35 Say F3110RUC        Font "&mLetRom",10 Style "NQ"
           ELSE
                @vLIN,mCLN+35 Say "DNI:"+F3110ELE Font "&mLetRom",10 Style "NQ"
           ENDIF
           @vLIN,mCLN+70 Say F3110TEL Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+2.6 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+48 Say F3110ANO Font "&mLetRom",9 Style "NQ" Size 1,52 Pict "@S52"
      CASE mpRt="1"
           @vLIN,mCLN+48 Say F3110ANO Font "&mLetRom",9 Style "NQ" Size 1,52 Pict "@S52"
      CASE mpRt="2"
           @vLIN,mCLN+48 Say F3110ANO Font "&mLetRom",9 Style "NQ" Size 1,52 Pict "@S52"
 ENDCASE
 STORE vlIn+1.6 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+40 Say AllTrim(F3110ADI)+" "+AllTrim(F3110ADS) Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
      CASE mpRt="1"
           @vLIN,mCLN+40 Say AllTrim(F3110ADI)+" "+AllTrim(F3110ADS) Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
      CASE mpRt="2"
           @vLIN,mCLN+40 Say AllTrim(F3110ADI)+" "+AllTrim(F3110ADS) Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
 ENDCASE
 STORE vlIn+2.2 TO vlIn
 DO CASE
      CASE mvIs=1
           IF LEN(ALLTRIM(f3110aru))=0
                @vLIN,mCLN+36 Say F3110AEL Font "&mLetRom",10 Style "NQ"
           ELSE
                @vLIN,mCLN+36 Say F3110ARU Font "&mLetRom",10 Style "NQ"
           ENDIF
      CASE mpRt="1"
           IF LEN(ALLTRIM(f3110aru))=0
                @vLIN,mCLN+36 Say F3110AEL Font "&mLetRom",10 Style "NQ"
           ELSE
                @vLIN,mCLN+36 Say F3110ARU Font "&mLetRom",10 Style "NQ"
           ENDIF
      CASE mpRt="2"
           IF LEN(ALLTRIM(f3110aru))=0
                @vLIN,mCLN+36 Say F3110AEL Font "&mLetRom",10 Style "NQ"
           ELSE
                @vLIN,mCLN+36 Say F3110ARU Font "&mLetRom",10 Style "NQ"
           ENDIF
 ENDCASE
 RELEASE prF1, pfR2, pcL1, plN1, plN2, ptMn
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 STORE ppEs+" aprox." TO ppEs
 @0,0 Say Space(01)                                            Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+13 Say F2600FEM                              Font "&mLetRom",10 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+44 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+74 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+13 Say F2600NOM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13.0 Say pRUC                          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+65.5 Say F2600FEM                      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+80.0 Say "["+F2600SER+"-"+F2600DOC+"]" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+14 Say F2600CM1   Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.45 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
           @vLIN,mCLN+30 Say AllTrim(vADI)+", "+AllTrim(vADS) Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
           @vLIN,mCLN+30 Say pLUG Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+51 Say F2600CHO Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+10 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
 IF f2600pes<>0
      @vLIN,mCLN+51 Say pPES  Font "&mLetRom",10 Style "NQ"
 ENDIF
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+101.6 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=7
           @vLIN,mCLN+123.9 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+24 Say F2600TNO Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE f2600mot=6
           @vLIN,mCLN+101.6 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=2 .OR. f2600mot=3
           @vLIN,mCLN+123.9 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+24 Say F2600TNO Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE f2600mot=6
           @vLIN,mCLN+101.6 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=2 .OR. f2600mot=3
           @vLIN,mCLN+123.9 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+09 Say F2600MR1 Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+50 Say F2600PLA Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE f2600mot=11
           @vLIN,mCLN+101.6 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=10
           @vLIN,mCLN+123.9 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+09 Say F2600MR2 Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+50 Say F2600PL2 Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE f2600mot=4
           @vLIN,mCLN+101.6 Say "x"               Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=5
           @vLIN,mCLN+123.9 Say "x"               Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+134.7 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+4 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
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
                @vLIN,mCLN+23  Say "Cajas"  Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE ptPp=1 .AND. INT(f2601can)=f2601can
                @vLIN,mCLN+5.4 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+23  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
           CASE ptPp=1
                @vLIN,mCLN+08  Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
                @vLIN,mCLN+23  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
      ENDCASE
      DO CASE
           CASE vtPo=2
                @vLIN,mCLN+47 Say cLAR Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
      ENDCASE
      @vLIN,mCLN+34 Say F2601COD Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
      @vLIN,mCLN+70 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      DO CASE
           CASE f2601pie>0 .AND. (vtPo=2 .OR. vtPo=3) .AND. vmOt<>2 .AND.  ;
                vmOt<>3
                @vLIN,mCLN+134 Say F2601PIE Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,15
                @vLIN,mCLN+150 Say F2601NUV Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
      ENDCASE
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 DO CASE
      CASE LEN(ALLTRIM(f2600cm2))<>0
           @vLIN,mCLN+4 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
