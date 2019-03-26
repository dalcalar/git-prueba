*
PROCEDURE Fac_1300z
 PRIVATE pcLn, puNi, pdIr
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 @0,0           Say Space(01)                                           Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+15  Say vNOM                                                Font "&mLetRom",12 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+106 Say Substr(Dtoc(vFEM),1,2)                              Font "&mLetRom",12 Style "NQ"
 DO CASE
      CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
           @vLIN,mCLN+119 Say "  Enero  "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
           @vLIN,mCLN+119 Say "Febrero  "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
           @vLIN,mCLN+119 Say "  Marzo  "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
           @vLIN,mCLN+119 Say "  Abril  "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
           @vLIN,mCLN+119 Say "   Mayo  "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
           @vLIN,mCLN+119 Say "  Junio  "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
           @vLIN,mCLN+119 Say "  Julio  "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
           @vLIN,mCLN+119 Say "  Agosto "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
           @vLIN,mCLN+119 Say "Setiembre"                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
           @vLIN,mCLN+119 Say " Octubre "                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
           @vLIN,mCLN+119 Say "Noviembre"                                 Font "&mLetRom",12 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
           @vLIN,mCLN+119 Say "Diciembre"                                 Font "&mLetRom",12 Style "NQ"
 ENDCASE
 @vLIN,mCLN+150 Say Substr(Dtoc(vFEM),10,1) Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+15  Say pDIR                    Font "&mLetRom",12 Style "NQ" Size 1,55 Pict "@S57"
 @vLIN,mCLN+115 Say vSER+"-"+vDOC           Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+15  Say vRUC                    Font "&mLetRom",12 Style "NQ"
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
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+0 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+3 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15.5 Say pUNI Font "&mLetRom",12 Style "NQ" Size 1,7 Pict "@S7"
      ENDIF
      @vLIN,mCLN+26.5 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",12 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+114.4 Say vPRE               Font "&mLetRom",12 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+138.4 Say vTOT               Font "&mLetRom",12 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z
           STORE vlIn+1.4 TO vlIn
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
 IF f1300net-tvAl<>0
      @vLIN,mCLN+111 Say "V.Vta.Total:" Font "&mLetRom",12 Style "NQ"
      @vLIN,mCLN+138 Say tVAL           Font "&mLetRom",12 Style "NQ" Size 1,12 Pict "999,999.99"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN+111 Say "Dcto/Redond:" Font "&mLetRom",12 Style "NQ"
      @vLIN,mCLN+138 Say F1300NET-tVAL  Font "&mLetRom",12 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 ELSE
      STORE vlIn+1.3 TO vlIn
 ENDIF
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+013 Say vFRA+" S.E.u.O."  Font "&mLetAri",9  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN+138 Say F1300NET          Font "&mLetRom",12 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+122 Say F1300PIG          Font "&mLetRom",12 Style "NQ" Size 1,04 Pict "99"
 @vLIN,mCLN+138 Say F1300IGV          Font "&mLetRom",12 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+133 Say vSIG              Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+138 Say F1300TOT          Font "&mLetRom",12 Style "NQ" Size 1,12 Pict "999,999.99"
ENDPROC
*
PROCEDURE Bol_1300z
 @0,0           Say Space(01)                                           Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+14  Say vNOM                                                Font "&mLetRom",12 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+95  Say vDNI                                                Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+125 Say vSER+"-"+vDOC                                       Font "&mLetRom",12 Style "NQ"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+15  Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",12 Style "NQ" Size 1,45 Pict "@S47"
 @vLIN,mCLN+115 Say Substr(Dtoc(vFEM),1,2)                              Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+129 Say Substr(Dtoc(vFEM),4,2)                              Font "&mLetRom",12 Style "NQ"
 @vLIN,mCLN+140 Say Substr(Dtoc(vFEM),7,4)                              Font "&mLetRom",12 Style "NQ"
 STORE vlIn+5.2 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
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
                @vLIN,mCLN+0 Say vCAN   Font "&mLetRom",12 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+4.5 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+17.5 Say pUNI   Font "&mLetRom",12 Style "NQ" Size 1,5 Pict "@S5"
      ENDIF
      @vLIN,mCLN+30 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",12 Style "NQ" Size 1,50 Pict "@S52"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+108  Say vPRE                 Font "&mLetRom",12 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+134  Say vTOT                 Font "&mLetRom",12 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+30.5 Say F1301REF             Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z
           STORE vlIn+1.4 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 IF f1300tot-tvAl<>0
      @vLIN,mCLN+124 Say "Dct/Rd:"      Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+134 Say F1300TOT-tVAL  Font "&mLetRom",12 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 ENDIF
 @vLIN,mCLN+16 Say vFRA+" S.E.u.O."   Font "&mLetAri",9  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.5 TO vlIn
 IF f1300mon=2
      @vLIN,mCLN+120 Say vSIG           Font "&mLetRom",12 Style "NQ"
 ENDIF
 @vLIN,mCLN+134 Say F1300TOT          Font "&mLetRom",12 Style "NQ" Size 1,12 Pict "999,999.99"
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC puNi, pmEs
 STORE 38 TO mpAg
 STORE 00 TO vlIn
 DO cnP_1300z
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN     Say "Nombre:"                                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vNOM                                                Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+100 Say "Fecha:"                                            Font "&mLetAri",9 Style "BQ"
 DO feC_1300z IN FAC0000A WITH vlIn, 110
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Dirección:"                                        Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Telefono:"                                         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vTEL                                                Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Observaciones:"                                    Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vCM1                                                Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+110 Say "Vend:"                                             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vNVE                                                Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+110 Say "F.Pago:"                                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vNFP                                                Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",111)                                      Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4   Say "Cantidad"                                          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+16  Say "Unidad"                                            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+27  Say "Código"                                            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+44  Say "Descripción"                                       Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+122 Say "Prec.Unit"                                         Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+136 Say "Prec.Total"                                        Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",111)                                      Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      IF vlIn>mpAg-3
           DO cnP_1300z
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Pzas"     Font "&mLetSwi",11 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetSwi",11 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetSwi",11 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN             Font "&mLetSwi",11 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN             Font "&mLetSwi",11 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
                @vLIN,mCLN+27 Say vCOD               Font "&mLetSwi",11 Style "NQ" Size 1,15 Pict "@S15"
      ENDCASE
      @vLIN,mCLN+44 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetSwi",11 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+118 Say vPRE                   Font "&mLetSwi",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+135 Say vTOT                   Font "&mLetSwi",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+44 Say F1301REF                Font "&mLetSwi",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO cnP_1300z
           ENDIF
           @vLIN,mCLN+16 Say "Medidas:" Font "&mLetAri",8 Style "NQ"
           STORE vlIn+0.3 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z
           ENDIF
           DO itE_1300z
           STORE vlIn+1.5 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",111) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO cnP_1300z
 ENDIF
 @vLIN,mCLN+70 Say "Sub-Total:"    Font "&mLetSwi",11 Style "NQ"
 @vLIN,mCLN+87 Say tVAL            Font "&mLetSwi",11 Style "NQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+102 Say "Red."      Font "&mLetSwi",11 Style "NQ"
 ELSE
      @vLIN,mCLN+102 Say "Dcto.:"    Font "&mLetSwi",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+111 Say F1300TOT-tVAL  Font "&mLetSwi",11 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
 @vLIN,mCLN+128 Say vSIG           Font "&mLetSwi",11 Style "NQ"
 @vLIN,mCLN+134 Say F1300TOT       Font "&mLetSwi",11 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cnp_1300z
 STORE 00 TO vlIn
 @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetAri",14 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)           Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.3 TO vlIn
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
                          @vLIN,mCLN+16 Say "Pzas"     Font "&mLetRom",11 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN             Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN             Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+104 Say vPRE                   Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+125 Say vTOT                   Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+44 Say F1301REF                Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
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
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           @vLIN,mCLN+16 Say "Medidas:" Font "&mLetAri",8 Style "NQ"
           STORE vlIn+0.3 TO vlIn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
           DO itE_1300z
           STORE vlIn+1.5 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",104) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      @vLIN,mCLN+108   Say "Sub-Total:" Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+122.4 Say tVAL         Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      IF tvAl<f1300tot
           @vLIN,mCLN+108 Say "Redondeo:"  Font "&mLetRom",10 Style "BQ"
      ELSE
           @vLIN,mCLN+108 Say "Dcto.:"     Font "&mLetRom",10 Style "BQ"
      ENDIF
      @vLIN,mCLN+122.9 Say F1300TOT-tVAL Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+125.1 Say "========"   Font "&mLetAri",9  Style "NQ"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 @vLIN,mCLN+115   Say vSIG            Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+122.4 Say F1300TOT        Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Observaciones"    Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vCM1               Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Vendedor"         Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNVE               Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Forma de Pago"    Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNFP               Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN    Say "Atentamente,"     Font "&mLetRom",11 Style "NQI"
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
PROCEDURE Cde_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 SELECT tmP_hoja
 SEEK pgR1
 IF  .NOT. EOF()
      @vLIN,mCLN     Say FTMADES     Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+136 Say "Pagina:"   Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+148 Say vPAG        Font "&mLetRom",11 Style "NQ" Pict "99"
 ENDIF
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+140 Say vTIM           Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.3 TO vlIn
 @vLIN,mCLN+00  Say "Vendedor:"    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+14  Say vNVE           Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+70  Say "Fecha:"       Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+80  Say vFEM           Font "&mLetRom",11 Style "BQ"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+00  Say "Cliente:"     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+14  Say vNOM           Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136 Say vRUC           Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+14  Say AllTrim(vDIR)+", "+vDIS Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",113) Font "&mLetRom",10 Style "NT"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+00  Say "Código"       Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+25  Say "Cantidad"     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+38  Say "Unidad"       Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+50  Say "Descripción"  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",113) Font "&mLetRom",10 Style "NT"
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Ite_1300z
 PRIVATE plL1, plL2, plL3
 DO CASE
      CASE vtDo="CT" .OR. vtDo="NP"
           STORE 26 TO vcLn
      OTHERWISE
           STORE 15 TO vcLn
 ENDCASE
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           DO CASE
                CASE vtDo="CT" .OR. vtDo="NP"
                     STORE 26 TO vcLn
                OTHERWISE
                     STORE 15 TO vcLn
           ENDCASE
           DO CASE
                CASE vtDo="NP" .AND. vlIn>mpAg-3
                     DO cnP_1300z
                CASE vtDo="CT" .AND. vlIn>mpAg-3
                     DO ccO_1300z WITH "2"
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
                @vLIN,mCLN+vCLN+11.4 Say "x"                   Font "&mLetAri",9  Style "BQ" Size 1,1
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
                @vLIN,mCLN+vCLN+09.4 Say "x"                   Font "&mLetAri",9  Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+13.0 Say F1302MAN              Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20.0 Say "="+Str(F1302CTD,4,0) Font "&mLetRom",11 Style "NQ"
                STORE vcLn+28 TO vcLn
                STORE plL3+1 TO plL3
      ENDCASE
      SKIP
 ENDDO
 IF vtDo="CT" .AND. (plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3)
      STORE vlIn+1.2 TO vlIn
      STORE 01 TO plL1, plL2, plL3
      STORE 20 TO vcLn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+vCLN Say "Total cortes= "+AllTrim(Str(vCTD,6,0)) Font "&mLetRom",11 Style "NQ"
 ENDIF
ENDPROC
*
PROCEDURE Let_3110z
 STORE 00 TO mcLn
 @0,0 Say Space(01)                                           Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,1,15)                   Font "&mLetAri",8 Style "BQ"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN+31 Say F3110LET                                   Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))<=14
      @vLIN,mCLN+48 Say F3110REF                                Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+75  Say "LIMA"                                    Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+136 Say vSIG                                      Font "&mLetAri",9 Style "BQ" Size 1,5.1
 @vLIN,mCLN+152 Say F3110TOT                                  Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "99,999.99"
 STORE vlIn+0.3 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,16,15)                  Font "&mLetAri",8 Style "BQ"
 ENDIF
 @vLIN,mCLN+95  Say F3110FEM                                  Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+116 Say F3110FVE                                  Font "&mLetAri",9 Style "BQ"
 STORE vlIn+4.3 TO vlIn
 @vLIN,mCLN+30 Say "*** "+vFRA+" "+Replicate("*",80)          Font "&mLetAri",9 Style "BQ" Size 1,82 Pict "@S84"
 STORE vlIn+3.2 TO vlIn
 IF LEN(ALLTRIM(f3110nom))<=46
      @vLIN,mCLN+36 Say F3110NOM                                Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S50"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110nom))>46
      @vLIN,mCLN+27 Say F3110NOM                                Font "&mLetAri",8 Style "BQ" Size 1,62 Pict "@S62"
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF LEN(ALLTRIM(f3110dir))+LEN(ALLTRIM(f3110dis))>46
      @vLIN,mCLN+35 Say AllTrim(F3110DIR)+" "+AllTrim(F3110DIS) Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+35 Say AllTrim(F3110DIR)+" "+AllTrim(F3110DIS) Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+35 Say F3110RUC                                Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+35 Say F3110ELE                                Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+74  Say F3110TEL                                  Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.0 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+33 Say F3110ANO                                Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+33 Say F3110ANO                                Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 IF LEN(ALLTRIM(f3110adi))+LEN(ALLTRIM(f3110ads))>46
      @vLIN,mCLN+35 Say AllTrim(F3110ADI)+" "+AllTrim(F3110ADS) Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+35 Say AllTrim(F3110ADI)+" "+AllTrim(F3110ADS) Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f3110aru))<>0
      @vLIN,mCLN+35 Say F3110ARU                                Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+35 Say F3110AEL                                Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+79 Say F3110ATL                                   Font "&mLetAri",9 Style "BQ"
ENDPROC
*
PROCEDURE Cre_3610z
 SELECT caB_nota
 STORE 00 TO mcLn
 @0,0 Say Space(01)                                           Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+47 Say Substr(Dtoc(vFEM),1,2)+"        "+Substr(Dtoc(vFEM),4,2)+"          "+Substr(Dtoc(vFEM),7,4) Font "&mLetAri",11 Style "NQ"
 STORE vlIn+3.7 TO vlIn
 @vLIN,mCLN+21 Say vNOM                                       Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+28 Say AllTrim(F3610DIR)+", "+F3610DIS            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 @vLIN,mCLN+111 Say vRUC                                      Font "&mLetAri",9 Style "NQ"
 STORE vlIn+5.5 TO vlIn
 @vLIN,mCLN+10 Say "Ref: "+F3610CM1                           Font "&mLetAri",10 Style "NQ" Pict "@S100"
 STORE vlIn+2.2 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+10 Say F3611DES     Font "&mLetAri",10 Style "NQ" Size 1,80 Pict "@S100"
      IF f3611tot<>0
           @vLIN,mCLN+135 Say F3611TOT Font "&mLetAri",10 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+10 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+82 Say "T/Cambio:"              Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+94 Say vTCV                     Font "&mLetAri",9 Style "NQ" Size 1,10  Pict "99.999"
 STORE vlIn+0.2 TO vlIn
 @vLIN,mCLN+127.8 Say vSIG                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+139 Say tNET                    Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+127.8 Say vSIG                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+139 Say F3610IGV                Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+127.8 Say vSIG                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+139 Say tTOT                    Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Deb_3610z
 SELECT caB_nota
 STORE 03 TO mcLn
 @0,0 Say Space(01)                                 Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+18  Say vNOM                            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+18  Say AllTrim(F3610DIR)+", "+F3610DIS Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 @vLIN,mCLN+111 Say Substr(Dtoc(vFEM),1,2)          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+148 Say Substr(Dtoc(vFEM),10,1)         Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
           @vLIN,mCLN+124 Say "  Enero  "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
           @vLIN,mCLN+124 Say "Febrero  "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
           @vLIN,mCLN+124 Say "  Marzo  "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
           @vLIN,mCLN+124 Say "  Abril  "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
           @vLIN,mCLN+124 Say "   Mayo  "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
           @vLIN,mCLN+124 Say "  Junio  "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
           @vLIN,mCLN+124 Say "  Julio  "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
           @vLIN,mCLN+124 Say "  Agosto "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
           @vLIN,mCLN+124 Say "Setiembre"             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
           @vLIN,mCLN+124 Say " Octubre "             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
           @vLIN,mCLN+124 Say "Noviembre"             Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
           @vLIN,mCLN+124 Say "Diciembre"             Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+117 Say vRUC                            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+4.5 TO vlIn
 @vLIN,mCLN+33 Say "Ref: "+F3610CM1                 Font "&mLetAri",9 Style "NQ" Pict "@S100"
 STORE vlIn+1.8 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+33 Say F3611DES     Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S100"
      IF f3611tot<>0
           @vLIN,mCLN+137 Say F3611TOT Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "999,999.9999"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "ND"
 @vLIN,mCLN+82 Say "T/Cambio:"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+96 Say vTCV                    Font "&mLetAri",9 Style "NQ" Size 1,10  Pict "99.999"
 @vLIN,mCLN+123 Say vSIG                   Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+137 Say tNET                   Font "&mLetAri",9 Style "NQ" Size 1,13  Pict "999,999.99"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+123 Say vSIG                   Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+137 Say F3610IGV               Font "&mLetAri",9 Style "NQ" Size 1,13  Pict "999,999.99"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+7 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+123 Say vSIG                   Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+137 Say tTOT                   Font "&mLetAri",9 Style "NQ" Size 1,13  Pict "999,999.99"
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, puNi, ppAr
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 @0,0           Say Space(01)                                 Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+011 Say F2600SER+"-"+F2600DOC                     Font "&mLetAri",8  Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+020 Say F2600FEM                                  Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+071 Say F2600FEM                                  Font "&mLetAri",11 Style "NQ"
 STORE vlIn+5.7 TO vlIn
 @vLIN,mCLN+010 Say AllTrim(vADI)                             Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+092 Say AllTrim(F2600DIR)                         Font "&mLetAri",8  Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+016 Say vPDS                                      Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+038 Say vPPR                                      Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+061 Say vPDP                                      Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+099 Say AllTrim(F2600DIS)                         Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+145 Say AllTrim(F2600DEP)                         Font "&mLetAri",8  Style "NQ"
 STORE vlIn+3.9 TO vlIn
 @vLIN,mCLN+121 Say AllTrim(F2600MR1)+" / "+AllTrim(F2600PLA) Font "&mLetAri",8  Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+009 Say F2600NOM                                  Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+121 Say "F2600CIM"                                Font "&mLetAri",8  Style "NQ"
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE f2600td1="FA"
           @vLIN,mCLN+047 Say "RUC:"+F2600RUC                   Font "&mLetAri",8  Style "NQ"
      CASE f2600td1="BO"
           @vLIN,mCLN+047 Say "DNI:"+F2600ELE                   Font "&mLetAri",8  Style "NQ"
 ENDCASE
 @vLIN,mCLN+121 Say F2600LC1                                  Font "&mLetAri",8  Style "NQ"
 STORE vlIn+5.1 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      DO meD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_2600z IN FAC0000A
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+3.5 Say vCAN                     Font "&mLetAri",10 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+2.3 Say vCAN                     Font "&mLetAri",10 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      @vLIN,mCLN+18.5 Say pUNI                       Font "&mLetAri",10 Style "NQ" Size 1,9    Pict "@S10"
      @vLIN,mCLN+28.5 Say AllTrim(F2601DCR)+" "+cLAR Font "&mLetAri",10 Style "NQ" Size 1,75   Pict "@S75"
      STORE vlIn+1.8 TO vlIn
      SELECT itE_remi
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_2600z
           STORE vlIn+1.8 TO vlIn
      ENDIF
      SELECT deT_remi
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+07 Say F2600TNO              Font "&mLetAri",8 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+14Say F2600TRU              Font "&mLetAri",8 Style "NQ"
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+12 Say F2600TD1              Font "&mLetAri",8 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+12 Say F2600SR1+"-"+F2600DO1 Font "&mLetAri",8 Style "NQ"
 RELEASE prUc, plUg, ppEs, ptPp, puNi, ppAr
ENDPROC
*
PROCEDURE Ite_2600z_2
 PUBLIC plL1, plL2, plL3
 STORE 01 TO plL1, plL2, plL3
 STORE 42 TO vcLn
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2602tdo+ ;
    f2602ser+f2602doc+ALLTRIM(f2602cod)+"*"
      IF f2602opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.7 TO vlIn
           STORE 42 TO vcLn
           STORE 01 TO plL1, plL2, plL3
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f2602un1="M"
                          @vLIN,mCLN+vCLN+3.0 Say F2602MLA       Font "&mLetRom",12 Style "NQ" Size 1,8.2 Pict "99.999"
                     CASE f2602un1="P"
                          @vLIN,mCLN+vCLN+0.0 Say F2602P11       Font "&mLetRom",12 Style "NQ" Size 1,6 Pict "999"
                          @vLIN,mCLN+vCLN+5.9 Say '"'            Font "&mLetRom",12 Style "NQ"
                          IF ALLTRIM(f2602p12)<>"/"
                               @vLIN,mCLN+vCLN+7.6 Say F2602P12    Font "&mLetRom",12 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+16.1 Say "x"                   Font "&mLetRom",12 Style "NQ" Size 1,1
                DO CASE
                     CASE f2602un2="M"
                          @vLIN,mCLN+vCLN+20.5 Say F2602MAN      Font "&mLetRom",12 Style "NQ" Size 1,8.2 Pict "99.999"
                     CASE f2602un2="P"
                          @vLIN,mCLN+vCLN+18.7 Say F2602P21      Font "&mLetRom",12 Style "NQ" Size 1,6 Pict "999"
                          @vLIN,mCLN+vCLN+24.6 Say '"'           Font "&mLetRom",12 Style "NQ"
                          IF ALLTRIM(f2602p22)<>"/"
                               @vLIN,mCLN+vCLN+26.3 Say F2602P22   Font "&mLetRom",12 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+34.0 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetRom",12 Style "NQ"
                STORE vcLn+50 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+03.0 Say F2602MLA                     Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "= ["+Str(F2602CTD,4,0)+"]"  Font "&mLetRom",12 Style "NQ"
                STORE vcLn+26 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+03.0 Say F2602MLA                    Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",12 Style "NQ" Size 1,1
                @vLIN,mCLN+vCLN+18.5 Say F2602MAN                    Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+31.0 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetRom",12 Style "NQ"
                STORE vcLn+50 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=11
                @vLIN,mCLN+vCLN+03.0 Say F2602CA1                    Font "&mLetRom",12 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+06.0 Say F2602MLA                    Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",12 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+18.5 Say F2602CA2                    Font "&mLetRom",12 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+21.5 Say F2602MAN                    Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+30.1 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetRom",12 Style "NQ"
                STORE vcLn+50 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
PROCEDURE Ite_2600z
 PUBLIC plL1, plL2, plL3
 STORE 01 TO plL1, plL2, plL3
 STORE 52 TO vcLn
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2602tdo+ ;
    f2602ser+f2602doc+ALLTRIM(f2602cod)+"*"
      IF f2602opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.7 TO vlIn
           STORE 52 TO vcLn
           STORE 01 TO plL1, plL2, plL3
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f2602un1="M"
                          @vLIN,mCLN+vCLN+3.0 Say F2602MLA       Font "&mLetCou",10 Style "NQ" Size 1,8.2 Pict "99.999"
                     CASE f2602un1="P"
                          @vLIN,mCLN+vCLN+0.0 Say F2602P11       Font "&mLetCou",10 Style "NQ" Size 1,6 Pict "999"
                          @vLIN,mCLN+vCLN+5.9 Say '"'            Font "&mLetCou",10 Style "NQ"
                          IF ALLTRIM(f2602p12)<>"/"
                               @vLIN,mCLN+vCLN+7.6 Say F2602P12    Font "&mLetCou",10 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+16.1 Say "x"                   Font "&mLetCou",10 Style "NQ" Size 1,1
                DO CASE
                     CASE f2602un2="M"
                          @vLIN,mCLN+vCLN+20.5 Say F2602MAN      Font "&mLetCou",10 Style "NQ" Size 1,8.2 Pict "99.999"
                     CASE f2602un2="P"
                          @vLIN,mCLN+vCLN+18.7 Say F2602P21      Font "&mLetCou",10 Style "NQ" Size 1,6 Pict "999"
                          @vLIN,mCLN+vCLN+24.6 Say '"'           Font "&mLetCou",10 Style "NQ"
                          IF ALLTRIM(f2602p22)<>"/"
                               @vLIN,mCLN+vCLN+26.3 Say F2602P22   Font "&mLetCou",10 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+34.0 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetCou",10 Style "NQ"
                STORE vcLn+50 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+03.0 Say F2602MLA                     Font "&mLetCou",10 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "= ["+Str(F2602CTD,4,0)+"]"  Font "&mLetCou",10 Style "NQ"
                STORE vcLn+26 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+03.0 Say F2602MLA                    Font "&mLetCou",10 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetCou",10 Style "NQ" Size 1,1
                @vLIN,mCLN+vCLN+18.5 Say F2602MAN                    Font "&mLetCou",10 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+31.0 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetCou",10 Style "NQ"
                STORE vcLn+50 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=11
                @vLIN,mCLN+vCLN+03.0 Say F2602CA1                    Font "&mLetCou",10 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+06.0 Say F2602MLA                    Font "&mLetCou",10 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetCou",10 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+18.5 Say F2602CA2                    Font "&mLetCou",10 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+21.5 Say F2602MAN                    Font "&mLetCou",10 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+30.1 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetCou",10 Style "NQ"
                STORE vcLn+50 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3
ENDPROC
*
