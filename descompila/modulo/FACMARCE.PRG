*
PROCEDURE Fac_1300z
 PRIVATE pdIr
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 @0,0            Say Space(01)     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11.0 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say vNOM          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11.0 Say vRUC          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vVEN          Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+68.5 Say vTEL          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11.0 Say vCM2          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+77.5 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.3 TO vlIn
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
                @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+16 Say mUNI   Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+26 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+125.5 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+143.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
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
      @vLIN,mCLN+26.0 Say mFR1        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+26.0 Say mFR2        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+26.0 Say " "         Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+26.0 Say " "         Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+053 Say tVAL             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+072 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+093 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+113 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+130.3 Say vSIG           Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+055 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC pdIr
 DO diR_1300z IN FAC0000A
 @0,0           Say " "           Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11  Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+65  Say vVEN          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+74  Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11  Say vNOM          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11  Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11  Say F1300ELE      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11  Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 STORE vlIn+3.3 TO vlIn
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
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas"   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN             Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN             Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+26 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123.7 Say vPRE                 Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+141.0 Say vTOT                 Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 IF f1300tot-tvAl<>0
      @vLIN,mCLN+124  Say "Sub-Total:"          Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+140  Say tVAL                  Font "&mLetRom",10 Style "BQ" Size 1,11.4 Pict "999,999.99"
      STORE vlIn+1.2 TO vlIn
      @vLIN,mCLN+124  Say "Dcto/Red:"           Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+141  Say F1300TOT-tVAL         Font "&mLetRom",10 Style "BQ" Size 1,11.4 Pict "999,999.99" Function "("
 ELSE
      STORE vlIn+1.2 TO vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+016  Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",9  Style "BQ" Size 1,120  Pict "@S120"
 STORE vlIn+0.3 TO vlIn
 @vLIN,mCLN+137  Say vSIG                     Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+140  Say F1300TOT                 Font "&mLetRom",10 Style "BQ" Size 1,11.4 Pict "999,999.99"
ENDPROC
*
PROCEDURE Npe_1300z
 DO deS_1300z
ENDPROC
*
PROCEDURE Cot_1300z
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
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas"   Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN   Say vCAN             Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN-1 Say vCAN             Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+27 Say F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      STORE vlIn+1.6 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           @vLIN,mCLN+16 Say "Medidas:" Font "&mLetSwi",9 Style "NQ"
           DO itE_1300z
           STORE vlIn+1.8 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",104)   Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      @vLIN,mCLN+106 Say "Sub-Total:"  Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+123 Say tVAL          Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+106 Say "Dcto.:"      Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+123 Say tVAL-F1300TOT Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+125 Say "========"    Font "&mLetSwi",9  Style "NQ"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 @vLIN,mCLN+115 Say vSIG           Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+123 Say F1300TOT       Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99"
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
 @vLIN,mCLN+24 Say F1300NVE        Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say F1300NFP        Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN    Say "Atentamente,"  Font "&mLetRom",11 Style "NQI"
ENDPROC
*
PROCEDURE CCo_1300z
 PARAMETER ptPo
 STORE 00 TO vlIn
 @vLIN,mCLN Say mRZ1 Font "&mLetRom",14 Style "BQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "BQ"
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
 @vLIN,mCLN+104.2 Say "Prec.Unitario" Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+124.3 Say "Precio Total"  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",104)    Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Des_1300z
 STORE 07 TO mcLn
 STORE 38 TO mpAg
 STORE 00 TO vpAg
 DO cdE_1300z
 IF f1300cop>1
      @vLIN,mCLN    Say "Copia"       Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+19 Say ":"           Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+23 Say F1300COP      Font "&mLetAri",9 Style "NQ" Pict "99"
 ENDIF
 @vLIN,mCLN+106 Say "Hora"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vTIM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Cliente"       Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+19  Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+21  Say vNOM            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "Fecha"         Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vFEM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Observaciones" Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+19  Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+21  Say vCM1            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "Vendedor"      Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vNVE            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+21  Say F1300CM2        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "F.Pago"        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vNFP            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)  Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+3     Say "Cantidad"    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+16    Say "Med/Uni"     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+27    Say "Descripción" Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120.5 Say "Prec.Unit"   Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+134.5 Say "Prec.Total"  Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)  Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas"   Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN   Say vCAN             Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN-1 Say vCAN             Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+27 Say F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+116 Say vPRE                   Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+133 Say vTOT                   Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.6 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO cdE_1300z
           ENDIF
           @vLIN,mCLN+16 Say "Medidas:" Font "&mLetSwi",9 Style "NQ"
           DO itE_1300z
           STORE vlIn+1.6 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO cdE_1300z
 ENDIF
 @vLIN,mCLN+60  Say "Sub-Total:"   Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+77  Say tVAL           Font "&mLetRom",12 Style "NQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+96 Say "Redon:"     Font "&mLetRom",12 Style "NQ"
 ELSE
      @vLIN,mCLN+96 Say "Dcto.:"     Font "&mLetRom",12 Style "NQ"
 ENDIF
 @vLIN,mCLN+109 Say F1300TOT-tVAL  Font "&mLetRom",12 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
 @vLIN,mCLN+125 Say vSIG           Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+133 Say F1300TOT       Font "&mLetRom",12 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cde_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "Orden de Despacho de Factura No."+vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="BO"
           @vLIN,mCLN Say "Orden de Despacho de Boleta No." +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="NP"
           @vLIN,mCLN Say "PROFORMA No." +vSER+"-"+vDOC                    Font "&mLetAri",12 Style "NQ"
 ENDCASE
 @vLIN,mCLN+128 Say "Pagina: "+Str(vPAG,2,0)+"  ("+mCIA+")" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN     Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Ite_1300z
 PRIVATE plL1, plL2, plL3
 DO CASE
      CASE (vtDo="CT" .OR. vtDo="NP") .AND. vtPo=5
           STORE 49 TO vcLn
           STORE 02 TO plL1, plL2, plL3
      CASE (vtDo="CT" .OR. vtDo="NP") .AND. (vtPo=6 .OR. vtPo=8 .OR. vtPo=9)
           STORE 34 TO vcLn
           STORE 02 TO plL1, plL2, plL3
      CASE (vtDo="CT" .OR. vtDo="NP") .AND. (vtPo=4 .OR. vtPo=7)
           STORE 44 TO vcLn
           STORE 02 TO plL1, plL2, plL3
      OTHERWISE
           STORE 16 TO vcLn
           STORE 01 TO plL1, plL2, plL3
 ENDCASE
 IF vtDo="NP"
      STORE vcLn+2 TO vcLn
 ENDIF
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 16 TO vcLn
           DO CASE
                CASE vtDo="CT" .AND. vlIn>mpAg-3
                     DO ccO_1300z WITH "2"
                CASE vlIn>mpAg-3
                     DO cdE_1300z
           ENDCASE
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
                @vLIN,mCLN+vCLN+11.4 Say "x"                   Font "&mLetSwi",9  Style "BQ" Size 1,1
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
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA              Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+09.4 Say "x"                   Font "&mLetSwi",9  Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+13.0 Say F1302MAN              Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20.0 Say "="+Str(F1302CTD,4,0) Font "&mLetRom",11 Style "NQ"
                STORE vcLn+28 TO vcLn
                STORE plL3+1 TO plL3
      ENDCASE
      IF vtDo="NP"
           STORE vcLn+2 TO vcLn
      ENDIF
      SKIP
 ENDDO
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
 PUBLIC prUc, plUg, ppEs, ptPp
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 STORE ppEs+" aprox." TO ppEs
 @0,0 Say Space(01)            Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+19 Say F2600FEM    Font "&mLetRom",10 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="BC" .OR. f2600td1="BE" .OR. f2600td1= ;
    "FA" .OR. f2600td1="FC" .OR. f2600td1="FE"
      @vLIN,mCLN+48 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+79 Say F2600FFA Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+19 Say F2600NOM                      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19.0 Say pRUC                        Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+71.5 Say F2600FEM                    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+19 Say F2600CM1                      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+82 Say "["+F2600SER+"-"+F2600DOC+"]" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.45 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+32 Say AllTrim(vADI)+", "+AllTrim(vADS) Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+32 Say pLUG Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+67 Say F2600CHO Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=7
           @vLIN,mCLN+127.2 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+0.2 TO vlIn
 @vLIN,mCLN+14 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
 IF f2600pes<>0
      @vLIN,mCLN+67 Say pPES  Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+28 Say F2600TNO Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE f2600mot=6
           @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=2 .OR. f2600mot=3
           @vLIN,mCLN+127.2 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+14 Say F2600TRU          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+71 Say AllTrim(F2600CIM) Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE f2600mot=8
           @vLIN,mCLN+103.4 Say "x"    Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=12
           @vLIN,mCLN+127.2 Say "x"    Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+14 Say F2600MR1       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+67 Say F2600PLA       Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE f2600mot=11
           @vLIN,mCLN+103.4 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=10
           @vLIN,mCLN+127.2 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+14 Say F2600MR2 Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+67 Say F2600PL2 Font "&mLetRom",10 Style "NQ"
 DO CASE
      CASE f2600mot=4
           @vLIN,mCLN+103.4 Say "x"               Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=5
           @vLIN,mCLN+127.2 Say "x"               Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+136.5 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
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
                @vLIN,mCLN+7.4 Say F2601CAJ Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say "Cajas"  Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
           CASE ptPp=1 .AND. INT(f2601can)=f2601can
                @vLIN,mCLN+7.4 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
           CASE ptPp=1
                @vLIN,mCLN+9.1 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
                @vLIN,mCLN+25  Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
      ENDCASE
      @vLIN,mCLN+59 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      IF f2601pie>0 .AND. (vtPo=2 .OR. vtPo=3) .AND. vmOt<>2 .AND. vmOt<>3
           @vLIN,mCLN+136 Say F2601PIE Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,15
           @vLIN,mCLN+152 Say F2601NUV Font "&mLetRom",11 Style "NQ" Pict "@S20" Size 1,20
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF LEN(ALLTRIM(f2600cm2))<>0
      @vLIN,mCLN+6 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+152 Say "("+mCOD+")" Font "&mLetRom",9  Style "NQ"
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
 @pLIN,009.0 Say "&mDBF" Bitmap Size 20,30 Isometric
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
