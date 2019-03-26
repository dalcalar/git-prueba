*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr, pvAl
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE 00 TO pvAl
 SELECT caB_fact
 @vLIN,mCLN+019 Say Substr(Dtoc(vFEM),1,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+032 Say Substr(Dtoc(vFEM),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+049 Say Substr(Dtoc(vFEM),9,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+120 Say "["+vSER+"-"+vDOC+"]"  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+022 Say vNOM                   Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+120 Say vRUC                   Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+022 Say Lower(pDIR)            Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S78"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+120 Say vCM1                   Font "&mLetRom",10 Style "NQ"
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
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+20.5 Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,4  Pict "@S7"
      ENDIF
      @vLIN,mCLN+30.5 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75.0 Pict "@S75"
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
      STORE vlIn+1.9 TO vlIn
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
 @vLIN,mCLN+035.5 Say vFRA+" S.E.u.O."     Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+138.3 Say "Dct/Red"            Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+148.3 Say F1300NET-pVAL        Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 STORE vlIn+3.8 TO vlIn
 @vLIN,mCLN+148.3 Say F1300NET             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+140.0 Say F1300PIG             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+148.3 Say F1300IGV             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+140.0 Say vSIG                 Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+148.3 Say F1300TOT             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE puNi, pdIr, pvAl
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 SELECT caB_fact
 STORE 00 TO tvAl
 @vLIN,mCLN+001 Say vNOM                   Font "&mLetRom",10 Style "NQ" Size 1,50 Pict "@S52"
 @vLIN,mCLN+119 Say Substr(Dtoc(vFEM),1,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+132 Say Substr(Dtoc(vFEM),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+149 Say Substr(Dtoc(vFEM),9,2) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+001 Say pDIR                   Font "&mLetRom",10 Style "NQ" Size 1,50 Pict "@S52"
 @vLIN,mCLN+119 Say vDNI                   Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+120 Say "["+vSER+"-"+vDOC+"]"  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+4.2 TO vlIn
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
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+01.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+00.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,8  Pict "999,999"
                ENDIF
                @vLIN,mCLN+20 Say pUNI      Font "&mLetRom",10 Style "NQ" Size 1,4 Pict "@S4"
      ENDCASE
      IF f1301to2<>0
           STORE ROUND(f1301pro*f1301can, 2) TO vtOt
           STORE ROUND(vtOt/vcAn, 4) TO vpRe
           STORE vcAn*vpRe TO vtOt
           STORE tvAl+vtOt TO tvAl
      ELSE
           STORE 0 TO vpRe, vtOt
      ENDIF
      @vLIN,mCLN+27.0 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,70 Pict "@S72"
      IF vtOt<>0
           @vLIN,mCLN+116.8 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+144.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.9 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 IF f1300tot-tvAl<>0
      @vLIN,mCLN+099 Say "Dc/Rd:"      Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+116 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99" Function "("
 ENDIF
 @vLIN,mCLN+137 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 RELEASE puNi, pdIr
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC puNi, pdIr, pmEs
 DO diR_1300z IN FAC0000A
 STORE 38 TO mpAg
 STORE 00 TO vlIn
 DO cnP_1300z IN FAC0000A
 STORE vlIn+0.7 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN     Say "Nombre:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "BQ"
           DO feC_1300z IN FAC0000A WITH vlIn, 120
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Dirección:"                                        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say pDIR             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Telefono:"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vTEL             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Observaciones:" Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vCM1             Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+110 Say "Vend:"          Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNVE             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+110 Say "F.Pago:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNFP             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+004 Say "Cantidad"       Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+016 Say "Unidad"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+027 Say "Código"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+044 Say "Descripción"    Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+119 Say "Prec.Unit"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+133 Say "Prec.Total"     Font "&mLetAri",9 Style "BQ"
           STORE vlIn+0.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
      CASE mpRt="1"
           @vLIN,mCLN     Say "Nombre:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "BQ"
           DO feC_1300z IN FAC0000A WITH vlIn, 120
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Dirección:"                                        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say pDIR             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Telefono:"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vTEL             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Observaciones:" Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vCM1             Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+110 Say "Vend:"          Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNVE             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+110 Say "F.Pago:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNFP             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+001 Say "Cantidad"       Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+016 Say "Unidad"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+027 Say "Código"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+044 Say "Descripción"    Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+125 Say "Prec.Unit"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+142 Say "Prec.Total"     Font "&mLetAri",9 Style "BQ"
           STORE vlIn+0.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
      CASE mpRt="2"
           @vLIN,mCLN     Say "Nombre:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "BQ"
           DO feC_1300z IN FAC0000A WITH vlIn, 120
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Dirección:"                                        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say pDIR             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Telefono:"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vTEL             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Observaciones:" Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vCM1             Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+110 Say "Vend:"          Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNVE             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+110 Say "F.Pago:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNFP             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+004 Say "Cantidad"       Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+016 Say "Unidad"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+027 Say "Código"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+044 Say "Descripción"    Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+119 Say "Prec.Unit"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+133 Say "Prec.Total"     Font "&mLetAri",9 Style "BQ"
           STORE vlIn+0.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
 ENDCASE
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
           DO cnP_1300z IN FAC0000A
      ENDIF
      DO unI_1300z IN FAC0000A
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+45 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
           CASE mpRt="1"
                @vLIN,mCLN+65 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
           CASE mpRt="2"
                @vLIN,mCLN+45 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      ENDCASE
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           CASE mvIs=1
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                @vLIN,mCLN+27 Say vCOD+":" Font "&mLetRom",10 Style "NQ"
           CASE mpRt="1"
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+7 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                @vLIN,mCLN+32 Say vCOD+":" Font "&mLetRom",10 Style "NQ"
           CASE mpRt="2"
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                @vLIN,mCLN+27 Say vCOD+":" Font "&mLetRom",10 Style "NQ"
      ENDCASE
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+123.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
                     @vLIN,mCLN+140.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
                CASE mpRt="1"
                     @vLIN,mCLN+134.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
                     @vLIN,mCLN+151.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+123.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
                     @vLIN,mCLN+140.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
           ENDCASE
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+44 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
                CASE mpRt="1"
                     @vLIN,mCLN+44 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
                CASE mpRt="2"
                     @vLIN,mCLN+44 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
           ENDCASE
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z IN FAC0000A
           ENDIF
           @vLIN,mCLN+73 Say "Sub-Total:"    Font "&mLetAri",9  Style "BQ"
           @vLIN,mCLN+87 Say tVAL            Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
           IF tvAl<f1300tot
                @vLIN,mCLN+102 Say "Red."      Font "&mLetAri",9  Style "BQ"
           ELSE
                @vLIN,mCLN+102 Say "Dcto.:"    Font "&mLetAri",9  Style "BQ"
           ENDIF
           @vLIN,mCLN+111 Say F1300TOT-tVAL  Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
           @vLIN,mCLN+128 Say vSIG           Font "&mLetAri",9  Style "BQ"
           @vLIN,mCLN+133 Say F1300TOT       Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
      CASE mpRt="1"
           @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z IN FAC0000A
           ENDIF
           @vLIN,mCLN+39 Say "Sub-Total:"    Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+65 Say tVAL            Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
           IF tvAl<f1300tot
                @vLIN,mCLN+79 Say "Red."       Font "&mLetRom",11 Style "BQ"
           ELSE
                @vLIN,mCLN+79 Say "Dcto.:"     Font "&mLetRom",11 Style "BQ"
           ENDIF
           @vLIN,mCLN+112 Say F1300TOT-tVAL  Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
           @vLIN,mCLN+127 Say vSIG           Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+150 Say F1300TOT       Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
      CASE mpRt="2"
           @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z IN FAC0000A
           ENDIF
           @vLIN,mCLN+73 Say "Sub-Total:"    Font "&mLetAri",9  Style "BQ"
           @vLIN,mCLN+87 Say tVAL            Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
           IF tvAl<f1300tot
                @vLIN,mCLN+102 Say "Red."      Font "&mLetAri",9  Style "BQ"
           ELSE
                @vLIN,mCLN+102 Say "Dcto.:"    Font "&mLetAri",9  Style "BQ"
           ENDIF
           @vLIN,mCLN+111 Say F1300TOT-tVAL  Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
           @vLIN,mCLN+128 Say vSIG           Font "&mLetAri",9  Style "BQ"
           @vLIN,mCLN+133 Say F1300TOT       Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 ENDCASE
 RELEASE puNi, pdIr, pmEs
ENDPROC
*
PROCEDURE Cnp_1300z
 STORE 00 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
           STORE vlIn+0.5 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)           Font "&mLetAri",9  Style "NT"
      CASE mpRt="1"
           @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
           STORE vlIn+0.5 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)           Font "&mLetAri",9  Style "NT"
      CASE mpRt="2"
           @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
           STORE vlIn+0.5 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)           Font "&mLetAri",9  Style "NT"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Lima"
ENDPROC
*
PROCEDURE Des_1300z
 PUBLIC psW0, puNi
 STORE 00 TO vpAg, psW0
 STORE 38 TO mpAg
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO pr1_1300z IN FAC0000A
      IF vtIp="10"
           STORE 1 TO psW0
           EXIT
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 IF psW0=0
      RETURN
 ENDIF
 SELECT caB_fact
 DO cdE_1300z
 @vLIN,mCLN+110 Say "Hora:"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vTIM             Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Cliente:"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+021 Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vFEM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Observaciones:" Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+021 Say vCM1             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+110 Say "Vend:"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vNVE             Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+000.0 Say "Cantidad"     Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+016.0 Say "Unidad"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+027.0 Say "Código"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+044.0 Say "Descripción"  Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vtIp<>"10"
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      DO CASE
           CASE vtPo=2
                STORE f1301pie TO vcAn
           OTHERWISE
                STORE f1301can TO vcAn
      ENDCASE
      DO unI_1300z
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+16 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDCASE
      IF ALLTRIM(UPPER(f1301dcr))+"*"=ALLTRIM(f1301dcr)+"*" .AND.  ;
         LEN(ALLTRIM(f1301dcr))>40
           @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,40 Pict "@S42"
      ELSE
           @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S62"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 STORE vlIn-1.2 TO vlIn
 @vLIN,mCLN+113 Say Replicate("_",20) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+118 Say "Recibi conforme" Font "&mLetAri",9 Style "NT"
 RELEASE psW0, puNi
ENDPROC
*
PROCEDURE Cde_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "O.D.Factura No."+vSER+"-"+vDOC  Font "&mLetAri",12 Style "NQ"
      CASE vtDo="BO"
           @vLIN,mCLN Say "O.D.Boleta No."+vSER+"-"+vDOC   Font "&mLetAri",12 Style "NQ"
      CASE vtDo="NP"
           @vLIN,mCLN Say "O.D.PROFORMA No."+vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
 ENDCASE
 @vLIN,mCLN+110 Say "Pagina: "+Str(vPAG,2,0)             Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN     Say Replicate("_",110)                   Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
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
 SELECT caB_nota
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
 STORE vlIn+4 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
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
 SELECT caB_nota
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
 STORE vlIn+4 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
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
 PUBLIC prUc
 DO ruC_2600z IN FAC0000A
 @vLIN,mCLN+012 Say Substr(Dtoc(F2600FEM),1,2)    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+025 Say Substr(Dtoc(F2600FEM),4,2)    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+042 Say Substr(Dtoc(F2600FEM),7,4)    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+072 Say Substr(Dtoc(F2600FEM),1,2)    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+085 Say Substr(Dtoc(F2600FEM),4,2)    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+102 Say Substr(Dtoc(F2600FEM),7,4)    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+135 Say "["+F2600SER+"-"+F2600DOC+"]" Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 IF f2600mot<>5
      @vLIN,mCLN+28 Say vADI              Font "&mLetRom",10 Style "NQ"
      DO CASE
           CASE LEN(ALLTRIM(f2600lug))<>0
                @vLIN,mCLN+102 Say F2600LUG Font "&mLetRom",10 Style "NQ"
           OTHERWISE
                @vLIN,mCLN+102 Say F2600DIR Font "&mLetRom",10 Style "NQ"
      ENDCASE
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN+28 Say vADS              Font "&mLetRom",10 Style "NQ"
      DO CASE
           CASE LEN(ALLTRIM(f2600lug))<>0
                @vLIN,mCLN+102 Say AllTrim(F2600LUD)+", "+AllTrim(F2600LUP) Font "&mLetRom",10 Style "NQ"
           OTHERWISE
                @vLIN,mCLN+102 Say AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
      ENDCASE
 ELSE
      STORE vlIn+1.5 TO vlIn
 ENDIF
 STORE vlIn+5.5 TO vlIn
 @vLIN,mCLN+112  Say F2600MR1+" / "+F2600PL1       Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+13.0 Say F2600NOM                      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+90   Say pRUC                          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+112  Say F2600CIM                      Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+112  Say F2600LC1                      Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      @vLIN,mCLN+012 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65"    Size 1,62
      @vLIN,mCLN+085 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
      @vLIN,mCLN+112 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
      STORE vlIn+1.4 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+19 Say F2600TNO Font "&mLetRom",9 Style "NQ"
 STORE vlIn+3.5 TO vlIn
 @vLIN,mCLN+19 Say F2600TRU Font "&mLetRom",9 Style "NQ"
 STORE vlIn+3.5 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+19 Say F2600CM1 Font "&mLetRom",10 Style "NQ"
 ENDIF
 RELEASE prUc
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
