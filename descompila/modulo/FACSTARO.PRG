*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr, piTe, puLi
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 @vLIN,mCLN+11.5 Say vFEM                Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+46.8 Say vCM1                Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+71.0 Say vNFP                Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+01.2 TO vlIn
 @vLIN,mCLN+11.5 Say vNOM                Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+11.5 Say pDIR                Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.4 TO vlIn
 @vLIN,mCLN+11.5 Say vRUC                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+42.0 Say vVEN                Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+71.0 Say vTEL                Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.4 TO vlIn
 @vLIN,mCLN+11.5 Say vCM2                Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+69.0 Say vTCA                Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+79.5 Say vSER+"-"+vDOC       Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3 TO vlIn
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
                @vLIN,mCLN+2.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+1.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDIF
      @vLIN,mCLN+30 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+130.4 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+145.7 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ALLTRIM(f1302cod)+"*"=ALLTRIM(vcOd)+"*"
           DO itE_1300z IN FAC0000A
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
 @vLIN,mCLN+054 Say tVAL             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+117 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+055 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 RELEASE puNi, pdIr, piTe, puLi
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC pmEs
 @0,0 Say Space(01)                                                     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+014 Say F1300FEM                                            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+045 Say F1300ELE                                            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+070 Say Substr(F1300CM1,1,16)                               Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say vDOC                                                Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+014 Say vNOM                                                Font "&mLetRom",11 Style "BQI" Size 1,70 Pict "@S73"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+014 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S73"
 STORE vlIn+3.2 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+19 Say "Pzas"     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+19 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+19 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN             Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN             Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+29 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123 Say vPRE                   Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+144 Say vTOT                   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF RLOCK()
           UNLOCK
      ENDIF
      IF  .NOT. EOF()
           DO itE_1300z IN FACLIMAT
           STORE vlIn+1.4 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+045.3 Say vTCA                 Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 @vLIN,mCLN+073.5 Say tVAL                 Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+110.0 Say F1300TOT-tVAL        Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+134.0 Say vSIG                 Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142.5 Say F1300TOT             Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+048.0 Say vFRA+" S.E.u.O."     Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 RELEASE pmEs
ENDPROC
*
PROCEDURE Cnp_1300z
 STORE 00 TO vlIn
 @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)           Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC pmEs
 STORE 00 TO vpAg
 STORE 38 TO mpAg
 DO cnP_1300z
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN     Say "Nombre:"                                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vNOM                                                Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+110 Say "Fecha:"                                            Font "&mLetAri",9 Style "BQ"
 DO feC_1300z IN FAC0000A WITH vlIn, 120
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Dirección:"                                        Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Telefono:"                                         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say F1300TEL                                            Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Observaciones:"                                    Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vCM1                                                Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+110 Say "Vend:"                                             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vNVE                                                Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+110 Say "F.Pago:"                                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vNFP                                                Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)                                      Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4   Say "Cantidad"                                          Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+16  Say "Unidad"                                            Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+27  Say "Código"                                            Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+44  Say "Descripción"                                       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+119 Say "Prec.Unit"                                         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+133 Say "Prec.Total"                                        Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)                                      Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
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
                          @vLIN,mCLN+16 Say "Pzas"     Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "@S10"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "@S10"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "@S10"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN             Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN             Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
                @vLIN,mCLN+27 Say vCOD               Font "&mLetRom",11 Style "NQ"
      ENDCASE
      @vLIN,mCLN+44 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+118 Say vPRE                   Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+135 Say vTOT                   Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF RLOCK()
           UNLOCK
      ENDIF
      IF  .NOT. EOF()
           DO itE_1300z IN FACLIMAT
           STORE vlIn+1.4 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",110)   Font "&mLetSwi",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO cnP_1300z
 ENDIF
 @vLIN,mCLN+73 Say "Sub-Total:"      Font "&mLetAri",9  Style "BQ"
 @vLIN,mCLN+87 Say tVAL              Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+102 Say "Red."        Font "&mLetAri",9  Style "BQ"
 ELSE
      @vLIN,mCLN+102 Say "Dcto.:"      Font "&mLetAri",9  Style "BQ"
 ENDIF
 @vLIN,mCLN+111 Say F1300TOT-tVAL    Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
 @vLIN,mCLN+128 Say vSIG             Font "&mLetAri",9  Style "BQ"
 @vLIN,mCLN+133 Say F1300TOT         Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 RELEASE pmEs
ENDPROC
*
PROCEDURE CCo_1300z
 PARAMETER ptPo
 STORE 00 TO vlIn
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
 @vLIN,mCLN+104   Say "Prec.Unitario" Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+124.2 Say "Precio Total"  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",104)    Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Cot_1300z
 STORE 00 TO vpAg
 DO ccO_1300z WITH "1"
 SELECT deT_fact
 GOTO TOP
 IF RLOCK()
      UNLOCK
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      DO CASE
           CASE vtPo=2
                STORE f1301pie TO vcAn
           OTHERWISE
                STORE f1301can TO vcAn
      ENDCASE
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      DO CASE
           CASE vcAn=1 .AND. f1301to2=0
           CASE INT(vcAn)<>vcAn
                @vLIN,mCLN+2  Say vCAN               Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                @vLIN,mCLN+16 Say F1301NUV           Font "&mLetSwi",9 Style "NQ" Size 1,7  Pict "@S7"
           OTHERWISE
                @vLIN,mCLN+1  Say vCAN               Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
                @vLIN,mCLN+16 Say F1301NUV           Font "&mLetSwi",9 Style "NQ" Size 1,7  Pict "@S7"
      ENDCASE
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+107 Say vPRE                   Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+127 Say vTOT                   Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
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
           @ vlIn, 00 SAY " "
           @ vlIn, mcLn+20 SAY vfOt BITMAP STYLE "Q"
           STORE vlIn+17 TO vlIn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
      ENDIF
      DO itE_1300z WITH "1"
      IF EOF()
           SELECT deT_fact
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      @vLIN,mCLN Say "Medidas:" Font "&mLetSwi",8 Style "NQ"
      DO itE_1300z WITH "2"
      IF vcLn>120
           STORE vlIn+1.2 TO vlIn
           STORE 12 TO vcLn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
      ENDIF
      @vLIN,mCLN+vCLN Say "Total cortes= "+AllTrim(Str(vCTD,6,0)) Font "&mLetSwi",9 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      SELECT deT_fact
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
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
      @vLIN,mCLN+106   Say "Dcto.:"      Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+122.4 Say tVAL-F1300TOT Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
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
 @vLIN,mCLN+115   Say vSIG             Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+122.4 Say F1300TOT         Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Observaciones"     Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                 Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vCM1                Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Vendedor"          Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                 Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say F1300NVE            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Forma de Pago"     Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                 Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say F1300NFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN    Say "Atentamente,"      Font "&mLetRom",11 Style "NQI"
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
 @vLIN,mCLN+135 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN     Say Replicate("_",110)       Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Des_1300z
 STORE 00 TO vpAg
 STORE 38 TO mpAg
 DO cdE_1300z
 @vLIN,mCLN+106 Say "Hora"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say F1300TIM        Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Cliente"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+19  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vNOM            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "Fecha"         Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vFEM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Observaciones" Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+19  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vCM1            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "Vendedor"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say F1300NVE        Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+21  Say F1300CM2        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "F.Pago"        Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say F1300NFP        Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)  Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4   Say "Cantidad"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+16  Say "Med/Uni"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+27  Say "Descripción"   Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+119 Say "Prec.Unit"     Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+133 Say "Prec.Total"    Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)  Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO itE_1300z WITH "1"
      IF  .NOT. EOF()
           SELECT deT_fact
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      DO CASE
           CASE vtPo=2
                STORE f1301pie TO vcAn
           OTHERWISE
                STORE f1301can TO vcAn
      ENDCASE
      DO CASE
           CASE vcAn=1 .AND. f1301to2=0
           CASE INT(vcAn)<>vcAn
                @vLIN,mCLN+2  Say vCAN               Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                @vLIN,mCLN+16 Say F1301NUV           Font "&mLetSwi",9 Style "NQ" Size 1,7  Pict "@S7"
           OTHERWISE
                @vLIN,mCLN+1  Say vCAN               Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
                @vLIN,mCLN+16 Say F1301NUV           Font "&mLetSwi",9 Style "NQ" Size 1,7  Pict "@S7"
      ENDCASE
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+118 Say vPRE                   Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+135 Say vTOT                   Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO itE_1300z WITH "1"
      IF EOF()
           SELECT deT_fact
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      IF vcTd=0
           STORE f1301can TO vcTd
           @vLIN,mCLN+16 Say F1301NUV                Font "&mLetSwi",9 Style "NQ" Size 1,07 Pict "@S7"
      ELSE
           @vLIN,mCLN+16 Say "Piezas"                Font "&mLetSwi",9 Style "NQ" Size 1,07 Pict "@S7"
      ENDIF
      IF INT(vcTd)<>vcTd
           @vLIN,mCLN+2 Say vCTD                     Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+1 Say vCTD                     Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
      ENDIF
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+118 Say vPRE                   Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+135 Say vTOT                   Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN Say "Medidas:"                     Font "&mLetSwi",9 Style "NQ"
      STORE vlIn+0.3 TO vlIn
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      DO itE_1300z WITH "2"
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      SELECT deT_fact
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO cdE_1300z
 ENDIF
 @vLIN,mCLN+73  Say "Sub-Total:"   Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+87  Say tVAL           Font "&mLetAri",9 Style "BQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+102 Say "Redon:"    Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+102 Say "Dcto.:"    Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+111 Say F1300TOT-tVAL  Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
 @vLIN,mCLN+128 Say vSIG           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+133 Say F1300TOT       Font "&mLetAri",9 Style "BQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Ite_1300z
 PARAMETER ptPo
 PRIVATE plL1, plL2, plL3
 SELECT itE_fact
 GOTO TOP
 IF RLOCK()
      UNLOCK
 ENDIF
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 IF RLOCK()
      UNLOCK
 ENDIF
 IF EOF()
      RETURN
 ENDIF
 IF ptPo="1"
      RETURN
 ENDIF
 DO CASE
      CASE vtDo="CT"
           STORE 12 TO vcLn
      OTHERWISE
           STORE 16 TO vcLn
 ENDCASE
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           DO CASE
                CASE vtDo="CT"
                     STORE 12 TO vcLn
                OTHERWISE
                     STORE 16 TO vcLn
           ENDCASE
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
                          @vLIN,mCLN+vCLN+3 Say F1302MLA         Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,mCLN+vCLN+0.0 Say F1302P11       Font "&mLetSwi",9 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+4.7 Say '"'            Font "&mLetCou",9 Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,mCLN+vCLN+5.9 Say F1302P12    Font "&mLetSwi",9 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+11.4 Say "x"                   Font "&mLetSwi",9 Style "BQ" Size 1,1
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,mCLN+vCLN+16 Say F1302MAN        Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,mCLN+vCLN+13.5 Say F1302P21      Font "&mLetSwi",9 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+18.3 Say '"'           Font "&mLetCou",9 Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,mCLN+vCLN+19.5 Say F1302P22   Font "&mLetSwi",9 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+24.5 Say "="+Str(F1302CTD,4,0) Font "&mLetSwi",9 Style "NQ"
                STORE vcLn+33 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2   Say F1302MLA               Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "="+Str(F1302CTD,4,0)  Font "&mLetSwi",9 Style "NQ"
                STORE vcLn+18 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+09.4 Say "x"                   Font "&mLetSwi",9 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+13.0 Say F1302MAN              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20.0 Say "="+Str(F1302CTD,4,0) Font "&mLetSwi",9 Style "NQ"
                STORE vcLn+28 TO vcLn
                STORE plL3+1 TO plL3
      ENDCASE
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Let_3110z
ENDPROC
*
PROCEDURE Deb_3610z
ENDPROC
*
PROCEDURE Cre_3610z
ENDPROC
*
PROCEDURE Rem_2600z
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
