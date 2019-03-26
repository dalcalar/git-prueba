*
PROCEDURE Fac_1300z
 PUBLIC pmEs, pdIr, puNi
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 @vLIN,mCLN+17 Say vNOM              Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 DO feC_1300z IN FAC0000A WITH vlIn, 97
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+17 Say pDIR              Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+17 Say vRUC              Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+97 Say Substr(vCM1,1,30) Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S30"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+5.6 TO vlIn
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
           @vLIN,mCLN+3  Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.999"
           @vLIN,mCLN+16 Say pUNI Font "&mLetAri",9 Style "NQ" Size 1,9 Pict "@S10"
           @vLIN,mCLN+27 Say vCOD Font "&mLetAri",9 Style "NQ"
      ENDIF
      @vLIN,mCLN+38 Say F1301DCR Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+112 Say vPRE                 Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+140 Say vTOT                 Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 IF tvAl<>f1300net
      @vLIN,mCLN+140 Say "======="      Font "&mLetAri",9 Style "NQ"
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN+110 Say "Sub-Total:"   Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+140 Say tVAL           Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
      STORE vlIn+1.2 TO vlIn
      IF tvAl<f1300net
           @vLIN,mCLN+110 Say "Redondeo:" Font "&mLetAri",9 Style "NQ"
      ELSE
           @vLIN,mCLN+110 Say "Dcto.:"    Font "&mLetAri",9 Style "NQ"
      ENDIF
      @vLIN,mCLN+140 Say F1300NET-tVAL  Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN+140 Say "======="      Font "&mLetAri",9 Style "NQ"
 ENDIF
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+38.0 Say mFR1                 Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+38.0 Say mFR2                 Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+38.2 Say "@"                  Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+38.2 Say "@"                  Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+007 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+120 Say vSIG                     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+135 Say F1300NET                 Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+082 Say "T/Cambio:"              Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+094 Say vTCV                     Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+120 Say vSIG                     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+112 Say F1300PIG                 Font "&mLetAri",9 Style "NQ" Pict "99"
 @vLIN,mCLN+135 Say F1300IGV                 Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+120 Say vSIG                     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+135 Say F1300TOT                 Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 RELEASE pmEs, pdIr
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC pmEs
 @vLIN,mCLN+21 Say vNOM                    Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 DO feC_1300z IN FAC0000A WITH vlIn, 98
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+21 Say AllTrim(vDIR)+", "+vDIS Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,mCLN+98 Say F1300ELE                Font "&mLetAri",9 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+6.3 TO vlIn
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
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas" Font "&mLetAri",9 Style "NQ" Size 1,9 Pict "@S10"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV Font "&mLetAri",9 Style "NQ" Size 1,9 Pict "@S10"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV Font "&mLetAri",9 Style "NQ" Size 1,9 Pict "@S10"
                ENDCASE
                @vLIN,mCLN-1  Say vCAN             Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.999"
                @vLIN,mCLN+27 Say vCOD             Font "&mLetAri",9 Style "NQ"
      ENDCASE
      @vLIN,mCLN+38 Say F1301DCR                 Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S62"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+108 Say vPRE                 Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+131 Say vTOT                 Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 IF tvAl<>f1300tot
      @vLIN,mCLN+131 Say "======="             Font "&mLetAri",9 Style "NQ"
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN+110 Say "Sub-Total:"          Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+131 Say tVAL                  Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
      STORE vlIn+1.2 TO vlIn
      IF tvAl<f1300tot
           @vLIN,mCLN+110 Say "Redondeo:"        Font "&mLetAri",9 Style "NQ"
      ELSE
           @vLIN,mCLN+110 Say "Dcto.:"           Font "&mLetAri",9 Style "NQ"
      ENDIF
      @vLIN,mCLN+131 Say F1300TOT-tVAL         Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN+131 Say "======="             Font "&mLetAri",9 Style "NQ"
 ENDIF
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+007 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3 TO vlIn
 @vLIN,mCLN+085 Say "T/Cambio:"              Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+097 Say vTCV                     Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+120 Say vSIG                     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+131 Say F1300TOT                 Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 RELEASE pmEs
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC pmEs
 DO cnP_1300z
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN     Say "Nombre:"        Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "BQ"
 DO feC_1300z IN FAC0000A WITH vlIn, 120
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
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas" Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN           Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN           Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
                @vLIN,mCLN+27 Say vCOD             Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "@S15"
      ENDCASE
      @vLIN,mCLN+44 Say F1301DCR                 Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+118 Say vPRE                 Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+135 Say vTOT                 Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO cnP_1300z
 ENDIF
 @vLIN,mCLN+73 Say "Sub-Total:"   Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+87 Say tVAL           Font "&mLetAri",9 Style "BQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+102 Say "Redond:"  Font "&mLetAri",9 Style "NQ"
 ELSE
      @vLIN,mCLN+102 Say "Dcto.:"   Font "&mLetAri",9 Style "NQ"
 ENDIF
 @vLIN,mCLN+111 Say F1300TOT-tVAL Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 @vLIN,mCLN+128 Say vSIG          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+133 Say F1300TOT      Font "&mLetAri",9 Style "BQ" Size 1,13 Pict "999,999.99"
 RELEASE pmEs
ENDPROC
*
PROCEDURE Cnp_1300z
 DO inI_1300z IN FAC0000A WITH "NP"
 @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)           Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Cot_1300z
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
                          @vLIN,mCLN+16 Say "Piezas" Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN           Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN           Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+27 Say F1301DCR                 Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+107 Say vPRE                 Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+127 Say vTOT                 Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",104) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      @vLIN,mCLN+106   Say "Sub-Total:" Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+122.4 Say tVAL         Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      IF tvAl<f1300tot
           @vLIN,mCLN+106 Say "Redond:"    Font "&mLetRom",10 Style "BQ"
      ELSE
           @vLIN,mCLN+106 Say "Dcto.:"     Font "&mLetRom",10 Style "BQ"
      ENDIF
      @vLIN,mCLN+122.4 Say F1300TOT-tVAL Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+122.1 Say "========"    Font "&mLetSwi",9 Style "NQ"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 @vLIN,mCLN+115   Say vSIG         Font "&mLetAri",9  Style "NQ"
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
PROCEDURE Cco_1300z
 PARAMETER ptPo
 DO inI_1300z IN FAC0000A WITH "CT"
 @vLIN,mCLN Say " " Font "&mLetRom",14 Style "BQ"
 STORE vlIn+2 TO vlIn
 IF ptPo="1"
      STORE vlIn+3 TO vlIn
      DO CASE
           CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Enero de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Febrero de "+Substr(Dtoc(vFEM),7,4)   Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Marzo de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Abril de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Mayo de "+Substr(Dtoc(vFEM),7,4)      Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Junio de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Julio de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Agosto de "+Substr(Dtoc(vFEM),7,4)    Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Setiembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Octubre de "+Substr(Dtoc(vFEM),7,4)   Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Noviembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
                @vLIN,mCLN+102 Say "Lima, "+Substr(Dtoc(vFEM),1,2)+" de Diciembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
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
 @vLIN,mCLN+104   Say "Prec.Unitario" Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+124.2 Say "Precio Total"  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",104)    Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Des_1300z
ENDPROC
*
PROCEDURE Deb_3610z
 SELECT caB_nota
 @0,0 Say Space(01)          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+025 Say vNOM     Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+025 Say vRUC     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+125 Say F3610CM1 Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+034 Say vFEM     Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+125 Say F3610CM2 Font "&mLetAri",9 Style "NQ" Pict "@S100"
 STORE vlIn+5.1 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+16 Say F3611DES     Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           @vLIN,mCLN+142 Say F3611TOT Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "999,999.9999"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "ND"
 @vLIN,mCLN+014 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+099 Say "T/Cambio:"              Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+112 Say vTCV                     Font "&mLetRom",11 Style "NQ" Size 1,10  Pict "99.999"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+146 Say tNET                     Font "&mLetRom",11 Style "NQ" Size 1,13  Pict "999,999.99"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+146 Say F3610IGV                 Font "&mLetRom",11 Style "NQ" Size 1,13  Pict "999,999.99"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+130 Say vSIG                     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+146 Say tTOT                     Font "&mLetRom",11 Style "NQ" Size 1,13  Pict "999,999.99"
ENDPROC
*
PROCEDURE Cre_3610z
 SELECT caB_nota
 @vLIN,mCLN+21  Say vNOM     Font "&mLetRom",11 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+21  Say vRUC     Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+30  Say vFEM     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+121 Say F3610CM1 Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+121 Say F3610CM2 Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+4.2 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+12 Say F3611DES     Font "&mLetAri",10 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           @vLIN,mCLN+138 Say F3611TOT Font "&mLetAri",10 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+10 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+082   Say "T/Cambio:"           Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+094   Say vTCV                  Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE vlIn+0.2 TO vlIn
 @vLIN,mCLN+131.8 Say vSIG                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+145   Say tNET                  Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+131.8 Say vSIG                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+145   Say F3610IGV              Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+131.8 Say vSIG                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+145   Say tTOT                  Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC ppEs, ppLa, plUg, prUc, ppAr
 DO plA_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO ruC_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 @0,0 Say Space(01) Font "&mLetSwi",8 Style "NQ"
 DO CASE
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. mvIs=1
           @vLIN,mCLN+17 Say pPAR Font "&mLetSwi",8 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. mpRt="1"
           @vLIN,mCLN+17 Say pPAR Font "&mLetSwi",8 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. mpRt="2"
           @vLIN,mCLN+17 Say pPAR Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+1.9 TO vlIn
 DO CASE
      CASE f2600mot=1 .AND. mvIs=1
           @vLIN,mCLN+116.0 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetSwi",7 Style "NQ"
           @vLIN,mCLN+146.5 Say "X"                                Font "&mLetSwi",7 Style "NQ"
      CASE f2600mot=1 .AND. mpRt="1"
           @vLIN,mCLN+116.0 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetSwi",7 Style "NQ"
           @vLIN,mCLN+146.5 Say "X"                                Font "&mLetSwi",7 Style "NQ"
      CASE f2600mot=1 .AND. mpRt="2"
           @vLIN,mCLN+116.0 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetSwi",7 Style "NQ"
           @vLIN,mCLN+146.5 Say "X"                                Font "&mLetSwi",7 Style "NQ"
 ENDCASE
 STORE vlIn+1.1 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+17 Say pLUG Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+17 Say pLUG Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+17 Say pLUG Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+2.9 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+82 Say F2600FEM Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+82 Say F2600FEM Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+82 Say F2600FEM Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+0.9 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+2 Say F2600NOM Font "&mLetSwi",8 Style "NQ" Pict "@S50" Size 1,52
      CASE mpRt="1"
           @vLIN,mCLN+2 Say F2600NOM Font "&mLetSwi",8 Style "NQ" Pict "@S50" Size 1,52
      CASE mpRt="2"
           @vLIN,mCLN+2 Say F2600NOM Font "&mLetSwi",8 Style "NQ" Pict "@S50" Size 1,52
 ENDCASE
 STORE vlIn+2.1 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+15 Say pRUC Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+15 Say pRUC Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+15 Say pRUC Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+4.4 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+75 Say pPLA Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+75 Say pPLA Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+75 Say pPLA Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+86 Say F2600CIM Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+86 Say F2600CIM Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+86 Say F2600CIM Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+0.8 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+2 Say F2600TNO Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+2 Say F2600TNO Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+2 Say F2600TNO Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+1.0 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+18 Say F2600TRU Font "&mLetSwi",8 Style "NQ"
           @vLIN,mCLN+86 Say F2600LC1 Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+18 Say F2600TRU Font "&mLetSwi",8 Style "NQ"
           @vLIN,mCLN+86 Say F2600LC1 Font "&mLetSwi",8 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+18 Say F2600TRU Font "&mLetSwi",8 Style "NQ"
           @vLIN,mCLN+86 Say F2600LC1 Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+4.3 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+6  Say F2601CAN Font "&mLetAri",8 Style "NQ" Pict "999,999.999" Size 1,15
                @vLIN,mCLN+22 Say F2601NUV Font "&mLetAri",8 Style "NQ" Pict "@S10" Size 1,9
                @vLIN,mCLN+32 Say F2601COD Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+43 Say F2601DCR Font "&mLetAri",8 Style "NQ" Pict "@S60" Size 1,60
           CASE mpRt="1"
                @vLIN,mCLN+6  Say F2601CAN Font "&mLetAri",8 Style "NQ" Pict "999,999.999" Size 1,15
                @vLIN,mCLN+22 Say F2601NUV Font "&mLetAri",8 Style "NQ" Pict "@S10" Size 1,9
                @vLIN,mCLN+32 Say F2601COD Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+43 Say F2601DCR Font "&mLetAri",8 Style "NQ" Pict "@S60" Size 1,60
           CASE mpRt="2"
                @vLIN,mCLN+6  Say F2601CAN Font "&mLetAri",8 Style "NQ" Pict "999,999.999" Size 1,15
                @vLIN,mCLN+22 Say F2601NUV Font "&mLetAri",8 Style "NQ" Pict "@S10" Size 1,9
                @vLIN,mCLN+32 Say F2601COD Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+43 Say F2601DCR Font "&mLetAri",8 Style "NQ" Pict "@S60" Size 1,60
      ENDCASE
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 STORE vlIn+2.5 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(f2600cm1))<>0 .AND. mvIs=1
           @vLIN,mCLN+21 Say AllTrim(F2600CM1) Font "&mLetSwi",8 Style "NQ"
      CASE LEN(ALLTRIM(f2600cm1))<>0 .AND. mpRt="1"
           @vLIN,mCLN+21 Say AllTrim(F2600CM1) Font "&mLetSwi",8 Style "NQ"
      CASE LEN(ALLTRIM(f2600cm1))<>0 .AND. mpRt="2"
           @vLIN,mCLN+21 Say AllTrim(F2600CM1) Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mvIs=1
           @vLIN,mCLN+21 Say AllTrim(F2600CM2) Font "&mLetSwi",8 Style "NQ"
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mpRt="1"
           @vLIN,mCLN+21 Say AllTrim(F2600CM2) Font "&mLetSwi",8 Style "NQ"
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mpRt="2"
           @vLIN,mCLN+21 Say AllTrim(F2600CM2) Font "&mLetSwi",8 Style "NQ"
 ENDCASE
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE f2600pes<>0 .AND. mvIs=1
           @vLIN,mCLN+21 Say "Peso:" Font "&mLetSwi",8 Style "BQ"
           @vLIN,mCLN+33 Say pPES    Font "&mLetSwi",8 Style "NQ"
      CASE f2600pes<>0 .AND. mpRt="1"
           @vLIN,mCLN+21 Say "Peso:" Font "&mLetSwi",8 Style "BQ"
           @vLIN,mCLN+33 Say pPES    Font "&mLetSwi",8 Style "NQ"
      CASE f2600pes<>0 .AND. mpRt="2"
           @vLIN,mCLN+21 Say "Peso:" Font "&mLetSwi",8 Style "BQ"
           @vLIN,mCLN+33 Say pPES    Font "&mLetSwi",8 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
PROCEDURE Let_3110z
 @0,0 Say Space(01)                                  Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.5 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+37 Say Substr(F3110REF,1,15)          Font "&mLetAri",8 Style "BQ"
 ENDIF
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN+24 Say F3110LET                          Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))<=14
      @vLIN,mCLN+40 Say F3110REF                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+86  Say "LIMA"                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+126 Say vSIG                             Font "&mLetAri",9 Style "BQ" Size 1,5.1
 @vLIN,mCLN+131 Say F3110TOT                         Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+0.4 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+37 Say Substr(F3110REF,17,15)         Font "&mLetAri",8 Style "BQ"
 ENDIF
 @vLIN,mCLN+62  Say F3110FEM                         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+104 Say F3110FVE                         Font "&mLetAri",9 Style "BQ"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+104 Say "MOBLANDINO S.A.C."              Font "&mLetAri",9 Style "BQ"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+36 Say "*** "+vFRA+" "+Replicate("*",80) Font "&mLetAri",9 Style "BQ" Size 1,82 Pict "@S84"
 STORE vlIn+4.6 TO vlIn
 IF LEN(ALLTRIM(f3110nom))<=46
      @vLIN,mCLN+32 Say F3110NOM Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S50"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110nom))>46
      @vLIN,mCLN+32 Say F3110NOM Font "&mLetAri",8 Style "BQ" Size 1,62 Pict "@S62"
 ENDIF
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN+32 Say F3110DIR    Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+62 Say F3110DIS    Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+32 Say F3110RUC Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+32 Say F3110ELE Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+62  Say F3110TEL   Font "&mLetAri",9 Style "BQ"
 STORE vlIn+2.3 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+37 Say F3110ANO Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+37 Say F3110ANO Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+31 Say F3110ADI    Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+31 Say F3110ADS    Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 @vLIN,mCLN+64 Say F3110ATL    Font "&mLetAri",9 Style "BQ"
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110aru))<>0
      @vLIN,mCLN+31 Say F3110ARU Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+31 Say F3110AEL Font "&mLetAri",9 Style "BQ"
 ENDIF
ENDPROC
*
