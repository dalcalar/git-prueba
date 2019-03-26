*
PROCEDURE Fac_1300z
 PUBLIC pdIr, puNi, pdC1, pdEs
 DO diR_1300z IN FAC0000A
 STORE vsEr+"-"+vdOc TO pdC1
 @0,0            Say " "  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+09.0 Say vFEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1 Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+70.0 Say vNFP Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09.0 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09.0 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09.0 Say vRUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.8 Say vVEN Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+70.0 Say vTEL Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09.0 Say vCM2 Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+67.7 Say vTCA Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+78.5 Say pDC1 Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.4 TO vlIn
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
      DO unI_1300z IN FAC0000A
      STORE SUBSTR(puNi, 1, 7) TO puNi
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+3.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+2.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      DO pc1_1300z IN FAC0000A
      STORE ALLTRIM(f1301dcr)+" "+clAr TO pdEs
      @vLIN,mCLN+25 Say pDES       Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      IF vtOt<>0
           @vLIN,mCLN+125.4 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      IF mlL0="S" .AND. LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+27 Say F1301REF Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      IF mlLz="S"
           SELECT itE_fact
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF()
                DO it1_1300z
                STORE vlIn+1.3 TO vlIn
           ENDIF
           SELECT deT_fact
      ENDIF
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+053.0 Say tVAL             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075.0 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095.0 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+111.5 Say F1300PIG         Font "&mLetRom",11 Style "NQ" Size 1,04 Pict "99"
 @vLIN,mCLN+116.5 Say "%"              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+118.5 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+132.0 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141.0 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+055.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 RELEASE pdIr, puNi, pdC1, pdEs
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC pdIr, puNi, pdC1, pdEs
 DO diR_1300z IN FAC0000A
 STORE vsEr+"-"+vdOc TO pdC1
 @vLIN,mCLN+012 Say vFEM Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+040 Say vDNI Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+067 Say vCM1 Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+104 Say vVEN Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
 @vLIN,mCLN+097 Say pDC1 Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say pDIR Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
 STORE vlIn+2.5 TO vlIn
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
      DO unI_1300z IN FAC0000A
      STORE SUBSTR(puNi, 1, 7) TO puNi
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+21 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDCASE
      @vLIN,mCLN+33 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+125.9 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+143.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      IF mlL0="S" .AND. LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+33 Say F1301REF Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      IF mlLz="S"
           SELECT itE_fact
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. ALLTRIM(f1302cod)+"*"=ALLTRIM(vcOd)+"*"
                DO it1_1300z
                STORE vlIn+1.3 TO vlIn
           ENDIF
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+049.3 Say vTCA             Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 @vLIN,mCLN+075.5 Say tVAL             Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+113.0 Say F1300TOT-tVAL    Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+138.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+144.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+049.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 RELEASE pdIr, puNi, pdC1, pdEs
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC puNi, pcLn, pdC1
 STORE 00 TO mcLn, vlIn, vpAg
 STORE 30 TO mpAg
 STORE mcLn+82 TO pcLn
 DO cnP_1300z
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
           CASE vcTd<>0
                STORE vcTd TO vcAn
           CASE vtPo=2
                STORE f1301pie TO vcAn
           OTHERWISE
                STORE f1301can TO vcAn
      ENDCASE
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE "      " TO puNi
           CASE vcTd<>0
                STORE "Piezas" TO puNi
           OTHERWISE
                STORE f1301nuv TO puNi
      ENDCASE
      DO pc2_1300z IN FAC0000A
      DO CASE
           CASE vcAn=1 .AND. vtOt=0
           CASE INT(vcAn)<>vcAn
                @vLIN,mCLN+00.5 Say vCAN    Font "&mLetRom",9 Style "NQ" Size 1,13 Pict "999,999.9999"
                @vLIN,mCLN+12.5 Say pUNI    Font "&mLetAri",8 Style "NQ" Size 1,7  Pict "@S7"
           OTHERWISE
                @vLIN,mCLN+00.5 Say vCAN    Font "&mLetRom",9 Style "NQ" Size 1,7  Pict "999,999"
                @vLIN,mCLN+12.5 Say pUNI    Font "&mLetAri",8 Style "NQ" Size 1,7  Pict "@S7"
      ENDCASE
      @vLIN,mCLN+32.5 Say "  "            Font "&mLetAri",9 Style "NQ" Size 1,02 Pict "@S02"
      @vLIN,mCLN+23.0 Say F1301DCR        Font "&mLetAri",9 Style "NQ" Size 1,45 Pict "@S45"
      IF vtOt<>0
           @vLIN,mCLN+65 Say vTOT           Font "&mLetRom",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      DO CASE
           CASE vcAn=1 .AND. vtOt=0
           CASE INT(vcAn)<>vcAn
                @vLIN,pCLN+00.5 Say vCAN Font "&mLetRom",9 Style "NQ" Size 1,13 Pict "999,999.9999"
                @vLIN,pCLN+12.5 Say pUNI Font "&mLetAri",8 Style "NQ" Size 1,7  Pict "@S7"
           OTHERWISE
                @vLIN,pCLN+00.5 Say vCAN Font "&mLetRom",9 Style "NQ" Size 1,7  Pict "999,999"
                @vLIN,pCLN+12.5 Say pUNI Font "&mLetAri",8 Style "NQ" Size 1,7  Pict "@S7"
      ENDCASE
      @vLIN,pCLN+23 Say F1301DCR       Font "&mLetAri",9 Style "NQ" Size 1,58 Pict "@S60"
      IF mlL0="S" .AND. LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+23 Say F1301REF Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO cnP_1300z WITH "2"
           ENDIF
           DO it2_1300z
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 STORE vlIn-1 TO vlIn
 IF vlIn+1.2>mpAg-3
      DO cnP_1300z WITH "2"
 ENDIF
 @vLIN,mCLN+65 Say "________" Font "&mLetSwi",8 Style "NT"
 STORE vlIn+1.2 TO vlIn
 IF tvAl<>f1300tot
      IF vlIn+2.6>mpAg-3
           DO cnP_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+48 Say "Sub-Total:"   Font "&mLetSwi",8 Style "NQ"
      @vLIN,mCLN+65 Say tVAL           Font "&mLetRom",9 Style "NQ" Size 1,13 Pict "999,999.99"
      STORE vlIn+1.2 TO vlIn
      IF tvAl<f1300tot
           @vLIN,mCLN+48 Say "Redondeo:" Font "&mLetSwi",8 Style "NQ"
      ELSE
           @vLIN,mCLN+48 Say "Dcto:"     Font "&mLetSwi",8 Style "NQ"
      ENDIF
      @vLIN,mCLN+65 Say F1300TOT-tVAL  Font "&mLetRom",9 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
      STORE vlIn+0.2 TO vlIn
      @vLIN,mCLN+65 Say "________"     Font "&mLetSwi",8 Style "NT"
      STORE vlIn+1.2 TO vlIn
 ENDIF
 @vLIN,mCLN+58 Say vSIG              Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+65 Say F1300TOT          Font "&mLetRom",9 Style "NQ" Size 1,13 Pict "999,999.99"
 RELEASE puNi, pcLn, pdC1
ENDPROC
*
PROCEDURE Cnp_1300z
 PARAMETER ptPo
 STORE "PROFORMA No."+vsEr+"-"+vdOc TO pdC1
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN    Say pDC1        Font "&mLetRom",9 Style "BQ"
 @vLIN,mCLN+45 Say vVEN        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+53 Say "Fecha:"    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+62 Say vFEM        Font "&mLetAri",9 Style "NQ"
 @vLIN,pCLN    Say "O.D."+pDC1 Font "&mLetRom",9 Style "BQ"
 @vLIN,pCLN+45 Say vVEN        Font "&mLetAri",9 Style "NQ"
 @vLIN,pCLN+53 Say "Fecha:"    Font "&mLetAri",9 Style "NQ"
 @vLIN,pCLN+62 Say vFEM        Font "&mLetAri",9 Style "NQ"
 IF vpAg=1
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN+53 Say "Hora:"         Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+62 Say vTIM            Font "&mLetAri",9 Style "NQ"
      @vLIN,pCLN+53 Say "Hora:"         Font "&mLetAri",9 Style "NQ"
      @vLIN,pCLN+62 Say vTIM            Font "&mLetAri",9 Style "NQ"
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN+00 Say "Cliente:"      Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+10 Say vNOM            Font "&mLetAri",9 Style "NQ"
      @vLIN,pCLN+00 Say "Cliente:"      Font "&mLetAri",9 Style "NQ"
      @vLIN,pCLN+10 Say vNOM            Font "&mLetAri",9 Style "NQ"
      STORE vlIn+0.5 TO vlIn
      @vLIN,mCLN Say Replicate("_",57)  Font "&mLetSwi",9 Style "NT"
      @vLIN,pCLN Say Replicate("_",57)  Font "&mLetSwi",9 Style "NT"
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN+02.2 Say "Cantidad"    Font "&mLetAri",8 Style "NQ"
      @vLIN,mCLN+12.5 Say "Med/Unid"    Font "&mLetAri",8 Style "NQ"
      @vLIN,mCLN+23.0 Say "Descripción" Font "&mLetAri",8 Style "NQ"
      @vLIN,mCLN+71.0 Say "Total"       Font "&mLetAri",8 Style "NQ"
      @vLIN,pCLN+02.2 Say "Cantidad"    Font "&mLetAri",8 Style "NQ"
      @vLIN,pCLN+12.5 Say "Med/Unid"    Font "&mLetAri",8 Style "NQ"
      @vLIN,pCLN+23.0 Say "Descripción" Font "&mLetAri",8 Style "NQ"
 ENDIF
 STORE vlIn+0.3 TO vlIn
 @vLIN,mCLN Say Replicate("_",57) Font "&mLetSwi",9 Style "NT"
 @vLIN,pCLN Say Replicate("_",57) Font "&mLetSwi",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Cot_1300z
 SELECT caB_fact
 STORE 13 TO mcLn
 STORE 00 TO vpAg
 DO ccO_1300z WITH "1"
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
           DO ccO_1300z WITH "2"
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas"   Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN             Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN             Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+127 Say vTOT                   Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT prOductos
      IF vtPo=10 .AND. f2111ser=1 .AND. LEN(ALLTRIM(f2111fot))<>0 .AND.  ;
         mpRt="1"
           STORE vlIn+1 TO vlIn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
           STORE "DIB\"+ALLTRIM(f2111fot)+".BMP" TO vfOt
           @ vlIn, 00 SAY " "
           @ vlIn, mcLn+20 SAY vfOt BITMAP STYLE "Q"
           STORE vlIn+17 TO vlIn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
      ENDIF
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           @vLIN,mCLN Say "Medidas:" Font "&mLetSwi",8 Style "NQ"
           STORE vlIn+1.2 TO vlIn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
           DO it1_1300z
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",104)     Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      @vLIN,mCLN+106   Say "Sub-Total:"  Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+122.4 Say tVAL          Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      IF tvAl<f1300tot
           @vLIN,mCLN+106 Say "Redond:"    Font "&mLetRom",10 Style "BQ"
      ELSE
           @vLIN,mCLN+106 Say "Dcto.:"     Font "&mLetRom",10 Style "BQ"
      ENDIF
      @vLIN,mCLN+122.4 Say F1300TOT-tVAL Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+122.1 Say "========"    Font "&mLetSwi",9  Style "NQ"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 @vLIN,mCLN+115   Say vSIG         Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+122.4 Say F1300TOT     Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Vendedor"      Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNVE            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN    Say "Atentamente,"  Font "&mLetRom",11 Style "NQI"
ENDPROC
*
PROCEDURE CCo_1300z
 PARAMETER ptPo
 @0,0 Say " " Font "&mLetRom",8 Style "NQ"
 IF vlIn=0
      @vLIN,mCLN Say mRZ1 Font "&mLetRom",14 Style "BQ"
      STORE vlIn+2 TO vlIn
 ENDIF
 IF ptPo="1"
      STORE vlIn+3 TO vlIn
      DO CASE
           CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Enero de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Febrero de "+Substr(Dtoc(vFEM),7,4)   Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Marzo de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Abril de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Mayo de "+Substr(Dtoc(vFEM),7,4)      Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Junio de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Julio de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Agosto de "+Substr(Dtoc(vFEM),7,4)    Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Setiembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Octubre de "+Substr(Dtoc(vFEM),7,4)   Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Noviembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
                @vLIN,mCLN+102 Say "Puno, "+Substr(Dtoc(vFEM),1,2)+" de Diciembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
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
 @vLIN,mCLN Say Replicate("_",104)   Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4.8   Say "Cantidad"     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+16    Say "Unidad"       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+27    Say "Producto"     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+124.2 Say "Precio Total" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",104)   Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Des_1300z
 PUBLIC ptIp
 STORE 00 TO vpAg
 STORE 06 TO mcLn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE "**" TO ptIp
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vpAg=0 .OR. vlIn>mpAg .OR. vtIp<>ptIp
           DO CASE
                CASE vpAg=0
                     STORE 0 TO vlIn
                     STORE vtIp TO ptIp
                     DO cdE_1300z WITH ALLTRIM(vnTi)
                CASE vtIp<>ptIp
                     STORE vlIn+2 TO vlIn
                     IF vlIn>mpAg
                          STORE 0 TO vlIn
                     ENDIF
                     STORE vtIp TO ptIp
                     DO cdE_1300z WITH ALLTRIM(vnTi)
                CASE vlIn>mpAg
                     STORE 0 TO vlIn
           ENDCASE
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Pzas"   Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN           Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+30 Say F1301DCR                 Font "&mLetRom",10 Style "NQ" Size 1,70 Pict "@S73"
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ALLTRIM(f1302cod)+"*"=ALLTRIM(vcOd)+"*"
           IF vlIn>mpAg
                STORE 0 TO vlIn
           ENDIF
           DO it1_1300z
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 RELEASE ptIp
ENDPROC
*
PROCEDURE Cde_1300z
 PARAMETER pfRa
 DO CASE
      CASE mvIs=1 .AND. vpAg=0
           CLEAR
      CASE mvIs=1 .AND. vpAg<>0 .AND. vpAg>=miPg .AND. vpAg<=muPg
           mkEy = INKEY(0, "HM")
           DO CASE
                CASE mkEy=k_Esc
                     RETURN
                CASE mkEy=k_F10
                     DO reTorna
           ENDCASE
 ENDCASE
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN Say mRAZ Font "&mLetRom",12 Style "BQI"
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "Orden de Despacho de Factura No."+vSER+"-"+vDOC+"  "+pFRA Font "&mLetAri",12 Style "BQ"
      CASE vtDo="BO"
           @vLIN,mCLN Say "Orden de Despacho de Boleta No." +vSER+"-"+vDOC+"  "+pFRA Font "&mLetAri",12 Style "BQ"
 ENDCASE
 @vLIN,mCLN+130 Say "Pagina" Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+138 Say ":"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+140 Say vPAG     Font "&mLetAri",9 Style "NQ" Pict "999"
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+000 Say "Fecha"   Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+008 Say ":"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+010 Say vFEM      Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+130 Say "Hora"    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+138 Say ":"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+140 Say vTIM      Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Cliente" Font "&mLetAri",9 Style "NQ"
 IF LEN(ALLTRIM(vcM1))=0 .AND. LEN(ALLTRIM(vcM2))=0
      @vLIN,mCLN+12 Say ":"     Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+14 Say vNOM    Font "&mLetAri",9 Style "NQ"
 ELSE
      @vLIN,mCLN+19 Say ":"     Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+21 Say vNOM    Font "&mLetAri",9 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN    Say "Observaciones" Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+19 Say ":"     Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+21 Say vCM1    Font "&mLetAri",9 Style "NQ"
      IF LEN(ALLTRIM(vcM2))<>0
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+21 Say vCM2 Font "&mLetAri",9 Style "NQ"
      ENDIF
 ENDIF
 STORE vlIn+1 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+02.2 Say "Cantidad"    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+16.0 Say "Med/Unid"    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+30.0 Say "Descripción" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
ENDPROC
*
PROCEDURE It1_1300z
 PUBLIC plL1, plL2, plL3
 STORE 16 TO vcLn
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           IF vlIn>mpAg
                STORE 0 TO vlIn
                DO cdE_1300z WITH ALLTRIM(vnTi)
           ENDIF
           STORE 16 TO vcLn
           STORE 01 TO plL1, plL2, plL3
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,mCLN+vCLN+3 Say F1302MLA         Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,mCLN+vCLN+0.0 Say F1302P11       Font "&mLetRom",11 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+4.7 Say '"'            Font "&mLetCou",9  Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,mCLN+vCLN+5.9 Say F1302P12    Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+11.4 Say "x"                   Font "&mLetRom",11 Style "BQ" Size 1,1
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,mCLN+vCLN+16 Say F1302MAN        Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,mCLN+vCLN+13.5 Say F1302P21      Font "&mLetRom",11 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+18.3 Say '"'           Font "&mLetCou",9  Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,mCLN+vCLN+19.5 Say F1302P22   Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+24.5 Say "="+Str(F1302CTD,4,0) Font "&mLetRom",11 Style "NQ"
                STORE vcLn+33 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2   Say F1302MLA               Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "="+Str(F1302CTD,4,0)  Font "&mLetRom",11 Style "NQ"
                STORE vcLn+18 TO vcLn
                STORE plL2+2 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA              Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+09.4 Say "x"                   Font "&mLetRom",11 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+13.0 Say F1302MAN              Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20.0 Say "="+Str(F1302CTD,4,0) Font "&mLetRom",11 Style "NQ"
                STORE vcLn+28 TO vcLn
                STORE plL3+1 TO plL3
      ENDCASE
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE It2_1300z
 PUBLIC plL1, plL2, plL3, plLl
 STORE 06.5 TO vcLn
 STORE 02 TO plLl
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>plLl .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 06.5 TO vcLn
           STORE 01 TO plL1, plL2, plL3
           IF vlIn>mpAg-3
                DO cnP_1300z WITH "2"
           ENDIF
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,mCLN+vCLN+3.8 Say F1302MLA     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,mCLN+vCLN+0.1 Say F1302P11     Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,mCLN+vCLN+4.4 Say '"'          Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,mCLN+vCLN+5.6 Say F1302P12  Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+11.6 Say "x"                 Font "&mLetRom",11 Style "NQ" Size 1,1
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,mCLN+vCLN+16 Say F1302MAN      Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,mCLN+vCLN+13.7 Say F1302P21    Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,mCLN+vCLN+18.3 Say '"'         Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,mCLN+vCLN+19.5 Say F1302P22 Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+24.7 Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+27.1 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2    Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4  Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+12.3 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+09.4 Say "x"                 Font "&mLetRom",11 Style "NQ" Size 1,1
                @vLIN,mCLN+vCLN+12.8 Say F1302MAN            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20.0 Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+23.0 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
      ENDCASE
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,pCLN+vCLN+3.8 Say F1302MLA     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,pCLN+vCLN+0.1 Say F1302P11     Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,pCLN+vCLN+4.4 Say '"'          Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,pCLN+vCLN+5.6 Say F1302P12  Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,pCLN+vCLN+11.6 Say "x"                 Font "&mLetRom",11 Style "NQ" Size 1,1
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,pCLN+vCLN+16 Say F1302MAN      Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,pCLN+vCLN+13.7 Say F1302P21    Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,pCLN+vCLN+18.3 Say '"'         Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,pCLN+vCLN+19.5 Say F1302P22 Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,pCLN+vCLN+24.7 Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,pCLN+vCLN+27.1 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,pCLN+vCLN+2    Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,pCLN+vCLN+9.4  Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,pCLN+vCLN+12.3 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,pCLN+vCLN+02.0 Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,pCLN+vCLN+09.4 Say "x"                 Font "&mLetRom",11 Style "NQ" Size 1,1
                @vLIN,pCLN+vCLN+12.8 Say F1302MAN            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,pCLN+vCLN+20.0 Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,pCLN+vCLN+23.0 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
      ENDCASE
      DO CASE
           CASE vtPo=5
                STORE vcLn+37 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                STORE vcLn+24 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                STORE vcLn+32 TO vcLn
                STORE plL3+1 TO plL3
      ENDCASE
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Let_3110z
 PUBLIC pdC1, prEf, prE2, pfEm, pfVe, pdIr, pdI2
 STORE 02 TO mcLn
 STORE mpIl TO vlIn
 STORE f3110ser+"-"+f3110let TO pdC1
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO pdI2
 STORE SUBSTR(DTOC(f3110fem), 7, 4)+" / "+SUBSTR(DTOC(f3110fem), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fem), 1, 2) TO pfEm
 STORE SUBSTR(DTOC(f3110fve), 7, 4)+" / "+SUBSTR(DTOC(f3110fve), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fve), 1, 2) TO pfVe
 DO CASE
      CASE AT("*", f3110ref)=0
           STORE vlIn+0.8 TO vlIn
           STORE UPPER(f3110ref) TO prEf
      OTHERWISE
           STORE SUBSTR(f3110ref, 1, AT("*", f3110ref)-1) TO prEf
           STORE SUBSTR(f3110ref, AT("*", f3110ref)+1, 30) TO prE2
 ENDCASE
 @0,0 Say Space(01) Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE AT("*", f3110ref)=0 .AND. LEN(ALLTRIM(f3110ref))>14
           @vLIN,mCLN+46.5 Say pREF                                 Font "&mLetRom",9 Style "NQ"
      CASE AT("*", f3110ref)=0
           @vLIN,mCLN+46.5+((14-Len(AllTrim(F3110REF)))/2) Say pREF Font "&mLetRom",10 Style "NQ"
      OTHERWISE
           @vLIN,mCLN+46.5 Say pREF                                 Font "&mLetAri",8 Style "NQ"
           STORE vlIn+0.8 TO vlIn
 ENDCASE
 @vLIN,mCLN+027.0 Say pDC1            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+074.5 Say "PUNO"          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+093.3 Say pFEM            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+114.3 Say pFVE            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+133.8 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141.2 Say F3110TOT        Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+0.2 TO vlIn
 IF AT("*", f3110ref)<>0
      @vLIN,mCLN+46.5 Say pRE2          Font "&mLetAri",8 Style "NT"
 ENDIF
 STORE vlIn+4.8 TO vlIn
 @vLIN,mCLN+28 Say vFRA               Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+1.9 TO vlIn
 DO CASE
      CASE f3110ren=1
           @vLIN,mCLN+95 Say "RECIBIDO" Font "&mLetRom",10 Style "NQ"
      OTHERWISE
           @vLIN,mCLN+95 Say "RENOVADO" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+36 Say F3110NOM           Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+36 Say pDIR               Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+36 Say F3110RUC           Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+67 Say F3110TEL           Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+36 Say F3110ANO           Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+3 TO vlIn
 @vLIN,mCLN+36 Say pDI2               Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110aru))=0
      @vLIN,mCLN+36 Say F3110AEL        Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+36 Say F3110ARU        Font "&mLetRom",10 Style "NQ"
 ENDIF
 @vLIN,mCLN+67 Say F3110ATL           Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
ENDPROC
*
PROCEDURE Deb_3610z
 PUBLIC pdIr, ptOt
 STORE ALLTRIM(f3610dir)+", "+f3610dis TO pdIr
 STORE 00 TO mcLn
 STORE mpIy TO vlIn
 @vLIN,mCLN+19 Say vFEM     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19 Say vNOM     Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19 Say pDIR     Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vrUc))<>0
      @vLIN,mCLN+19 Say vRUC  Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+19 Say vDNI  Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19 Say F3610CM1 Font "&mLetRom",10 Style "NQ" Pict "@S42"
 STORE vlIn+4 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+10 Say F3611DES Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           IF f3611tot=ttOt
                STORE tnEt TO ptOt
           ELSE
                STORE ROUND(f3611tot/(1+vpIg/100), 2) TO ptOt
           ENDIF
           @vLIN,mCLN+145 Say pTOT Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 STORE mpIy+mpSy TO vlIn
 @vLIN,mCLN+15 Say vFRA+" S.E.u.O." Font "&mLetRom",11 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+4 TO vlIn
 @vLIN,mCLN+097 Say tNET            Font "&mLetRom",11 Style "NQ" Size 1,15  Pict "999,999.99"
 @vLIN,mCLN+117 Say F3610IGV        Font "&mLetRom",11 Style "NQ" Size 1,15  Pict "999,999.99"
 @vLIN,mCLN+142 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+145 Say tTOT            Font "&mLetRom",11 Style "NQ" Size 1,15  Pict "999,999.99"
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC pdIr, ptOt
 STORE ALLTRIM(f3610dir)+", "+f3610dis TO pdIr
 STORE mpIw TO vlIn
 STORE 00 TO mcLn
 @vLIN,mCLN+19 Say vFEM     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19 Say vNOM     Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19 Say pDIR     Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vrUc))<>0
      @vLIN,mCLN+19 Say vRUC  Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+19 Say vDNI  Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19 Say F3610CM1 Font "&mLetRom",10 Style "NQ" Pict "@S42"
 STORE vlIn+4 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+10 Say F3611DES                                Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           IF f3611tot=ttOt
                STORE tnEt TO ptOt
           ELSE
                STORE ROUND(f3611tot/(1+vpIg/100), 2) TO ptOt
           ENDIF
           @vLIN,mCLN+145 Say pTOT Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 STORE mpIw+mpSw TO vlIn
 @vLIN,mCLN+15 Say vFRA+" S.E.u.O." Font "&mLetRom",11 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+4 TO vlIn
 @vLIN,mCLN+097 Say tNET            Font "&mLetRom",11 Style "NQ" Size 1,15  Pict "999,999.99"
 @vLIN,mCLN+117 Say F3610IGV        Font "&mLetRom",11 Style "NQ" Size 1,15  Pict "999,999.99"
 @vLIN,mCLN+142 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+145 Say tTOT            Font "&mLetRom",11 Style "NQ" Size 1,15  Pict "999,999.99"
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC ppEs, plUg, prUc, ptPp
 DO luG_2600z IN PAI2600Z
 DO ruC_2600z IN PAI2600Z
 DO peS_2600z IN PAI2600Z
 STORE ppEs+" aprox." TO ppEs
 DO CASE
      CASE mvIs=1
           @0,0 Say Space(01)         Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+15 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           IF f2600td1="BO" .OR. f2600td1="FA"
                @vLIN,mCLN+46 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+74 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
           ENDIF
      CASE mpRt="1"
           @0,0 Say Space(01)         Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+15 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           IF f2600td1="BO" .OR. f2600td1="FA"
                @vLIN,mCLN+46 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+74 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
           ENDIF
      CASE mpRt="2"
           @0,0 Say Space(01)         Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+15 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           IF f2600td1="BO" .OR. f2600td1="FA"
                @vLIN,mCLN+46 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+74 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
           ENDIF
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+15 Say F2600NOM Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+15 Say F2600NOM Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+15 Say F2600NOM Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+15 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+15 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+15 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+15.0 Say pRUC     Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+67.5 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+82.0 Say "["+F2600SER+"-"+F2600DOC+"]" Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+15.0 Say pRUC     Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+67.5 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+82.0 Say "["+F2600SER+"-"+F2600DOC+"]" Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+15.0 Say pRUC     Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+67.5 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+82.0 Say "["+F2600SER+"-"+F2600DOC+"]" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+16 Say F2600CM1 Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+16 Say F2600CM1 Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+16 Say F2600CM1 Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.45 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mvIs=1
           @vLIN,mCLN+32 Say AllTrim(vADI)+", "+AllTrim(vADS) Font "&mLetRom",10 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mpRt="1"
           @vLIN,mCLN+32 Say AllTrim(vADI)+", "+AllTrim(vADS) Font "&mLetRom",10 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mpRt="2"
           @vLIN,mCLN+32 Say AllTrim(vADI)+", "+AllTrim(vADS) Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mvIs=1
           @vLIN,mCLN+32 Say pLUG Font "&mLetRom",10 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mpRt="1"
           @vLIN,mCLN+32 Say pLUG Font "&mLetRom",10 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mpRt="2"
           @vLIN,mCLN+32 Say pLUG Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+53 Say F2600CHO Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+53 Say F2600CHO Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+53 Say F2600CHO Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+12 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
           IF f2600pes<>0
                @vLIN,mCLN+53 Say pPES  Font "&mLetRom",10 Style "NQ"
           ENDIF
           DO CASE
                CASE f2600mot=1
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=7
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="1"
           @vLIN,mCLN+12 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
           IF f2600pes<>0
                @vLIN,mCLN+53 Say pPES  Font "&mLetRom",10 Style "NQ"
           ENDIF
           DO CASE
                CASE f2600mot=1
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=7
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="2"
           @vLIN,mCLN+12 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
           IF f2600pes<>0
                @vLIN,mCLN+53 Say pPES  Font "&mLetRom",10 Style "NQ"
           ENDIF
           DO CASE
                CASE f2600mot=1
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=7
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+26 Say F2600TNO Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=6
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=2 .OR. f2600mot=3
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="1"
           @vLIN,mCLN+26 Say F2600TNO Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=6
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=2 .OR. f2600mot=3
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="2"
           @vLIN,mCLN+26 Say F2600TNO Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=6
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=2 .OR. f2600mot=3
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
 ENDCASE
 STORE vlIn+1.25 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+11 Say F2600TRU          Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+56 Say AllTrim(F2600CIM) Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=8
                     @vLIN,mCLN+103.4 Say "x"    Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=12
                     @vLIN,mCLN+125.7 Say "x"    Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="1"
           @vLIN,mCLN+11 Say F2600TRU          Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+56 Say AllTrim(F2600CIM) Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=8
                     @vLIN,mCLN+103.4 Say "x"    Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=12
                     @vLIN,mCLN+125.7 Say "x"    Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="2"
           @vLIN,mCLN+11 Say F2600TRU          Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+56 Say AllTrim(F2600CIM) Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=8
                     @vLIN,mCLN+103.4 Say "x"    Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=12
                     @vLIN,mCLN+125.7 Say "x"    Font "&mLetRom",10 Style "NQ"
           ENDCASE
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+11 Say F2600MR1 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PLA Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=11
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=10
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="1"
           @vLIN,mCLN+11 Say F2600MR1 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PLA Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=11
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=10
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="2"
           @vLIN,mCLN+11 Say F2600MR1 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PLA Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=11
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=10
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
           ENDCASE
 ENDCASE
 STORE vlIn+1.25 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+11 Say F2600MR2 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PL2 Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=4
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=5
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+136.5 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="1"
           @vLIN,mCLN+11 Say F2600MR2 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PL2 Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=4
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=5
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+136.5 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="2"
           @vLIN,mCLN+11 Say F2600MR2 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PL2 Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=4
                     @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=5
                     @vLIN,mCLN+125.7 Say "x" Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+136.5 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
           ENDCASE
 ENDCASE
 STORE vlIn+4 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN PAI2600Z
      SELECT prOductos
      IF EOF() .OR. f2111tpo<>2
           STORE 1 TO ptPp
      ELSE
           STORE 2 TO ptPp
      ENDIF
      SELECT deT_remi
      DO CASE
           CASE (vmOt=2 .OR. vmOt=3) .AND. vtPo=2 .AND. mcAj=1 .AND.  ;
                f2601caj>0 .AND. mvIs=1
                @vLIN,mCLN+7.4 Say F2601CAJ Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say "Cajas"  Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE (vmOt=2 .OR. vmOt=3) .AND. vtPo=2 .AND. mcAj=1 .AND.  ;
                f2601caj>0 .AND. mpRt="1"
                @vLIN,mCLN+7.4 Say F2601CAJ Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say "Cajas"  Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE (vmOt=2 .OR. vmOt=3) .AND. vtPo=2 .AND. mcAj=1 .AND.  ;
                f2601caj>0 .AND. mpRt="2"
                @vLIN,mCLN+7.4 Say F2601CAJ Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say "Cajas"  Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE ptPp=1 .AND. INT(f2601can)=f2601can .AND. mvIs=1
                @vLIN,mCLN+7.4 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
           CASE ptPp=1 .AND. INT(f2601can)=f2601can .AND. mpRt="1"
                @vLIN,mCLN+7.4 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
           CASE ptPp=1 .AND. INT(f2601can)=f2601can .AND. mpRt="2"
                @vLIN,mCLN+7.4 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
           CASE ptPp=1 .AND. mvIs=1
                @vLIN,mCLN+10  Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
           CASE ptPp=1 .AND. mpRt="1"
                @vLIN,mCLN+10  Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
           CASE ptPp=1 .AND. mpRt="2"
                @vLIN,mCLN+10  Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
      ENDCASE
      DO CASE
           CASE vtPo=2 .AND. mvIs=1
                @vLIN,mCLN+36 Say cLAR Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE vtPo=2 .AND. mpRt="1"
                @vLIN,mCLN+36 Say cLAR Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE vtPo=2 .AND. mpRt="2"
                @vLIN,mCLN+36 Say cLAR Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
      ENDCASE
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+59 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
           CASE mpRt="1"
                @vLIN,mCLN+59 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
           CASE mpRt="2"
                @vLIN,mCLN+59 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      ENDCASE
      DO CASE
           CASE f2601pie>0 .AND. (vtPo=2 .OR. vtPo=3) .AND. vmOt<>2 .AND.  ;
                vmOt<>3 .AND. mvIs=1
                @vLIN,mCLN+136 Say F2601PIE Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,15
                @vLIN,mCLN+152 Say F2601NUV Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE f2601pie>0 .AND. (vtPo=2 .OR. vtPo=3) .AND. vmOt<>2 .AND.  ;
                vmOt<>3 .AND. mpRt="1"
                @vLIN,mCLN+136 Say F2601PIE Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,15
                @vLIN,mCLN+152 Say F2601NUV Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE f2601pie>0 .AND. (vtPo=2 .OR. vtPo=3) .AND. vmOt<>2 .AND.  ;
                vmOt<>3 .AND. mpRt="2"
                @vLIN,mCLN+136 Say F2601PIE Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,15
                @vLIN,mCLN+152 Say F2601NUV Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
      ENDCASE
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 STORE mpIr+45 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mvIs=1
           @vLIN,mCLN+6 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mpRt="1"
           @vLIN,mCLN+6 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mpRt="2"
           @vLIN,mCLN+6 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
 ENDCASE
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+152 Say "("+mCOD+")" Font "&mLetRom",9 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+152 Say "("+mCOD+")" Font "&mLetRom",9 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+152 Say "("+mCOD+")" Font "&mLetRom",9 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
