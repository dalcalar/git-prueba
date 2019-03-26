*
PROCEDURE Fac_1300z
 PRIVATE pvAl
 SELECT caB_fact
 STORE 00 TO mcLn
 STORE 38 TO mpAg
 STORE mpIf TO vlIn
 @0,0 Say Space(01)                  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+14 Say vFEM              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+46 Say vCM1              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+14 Say vNOM              Font "&mLetRom",10 Style "BQ" Size 1,58 Pict "@S60"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+14 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",10 Style "NQ" Size 1,82 Pict "@S84"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+14 Say vRUC              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+47 Say vCLI              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+74 Say vTEL              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+14 Say Substr(vNVE,1,12)+"/"+Substr(F1300USU,1,8) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+47 Say Substr(vNFP,1,13) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+74 Say vSER+"-"+vDOC     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.7 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 STORE 0 TO pvAl
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN PVI1300Z
      DO meD_1300z IN PVI1300Z
      SELECT deT_fact
      IF vmD3=2
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+19 Say "Piezas"   Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+19 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+19 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                DO CASE
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*1000)<>vcAn*1000
                          @vLIN,mCLN+3   Say vCAN      Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*100)<>vcAn*100
                          @vLIN,mCLN+2.5 Say vCAN      Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.999"
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*10)<>vcAn*10
                          @vLIN,mCLN+2 Say vCAN        Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "999,999.99"
                     CASE INT(vcAn)<>vcAn
                          @vLIN,mCLN+1.5 Say vCAN      Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "999,999.9"
                     OTHERWISE
                          @vLIN,mCLN+0.5 Say vCAN      Font "&mLetRom",10 Style "NQ" Size 1,09 Pict "999,999"
                ENDCASE
      ENDCASE
      @vLIN,mCLN+29 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      STORE ROUND(f1301pre/(1+(vpIg/100)), 4) TO vpRe
      STORE ROUND(f1301can*vpRe, 2) TO vtO1
      IF tvL1<>0
           STORE ROUND(vtO1/tvL2, 6) TO vpOr
           STORE ROUND(tvL1*vpOr, 2) TO vpOr
           STORE vtO1+vpOr TO vtOt
      ELSE
           STORE vtO1 TO vtOt
      ENDIF
      STORE ROUND(vtOt/vcAn, 4) TO vpRe
      IF vtOt<>0
           @vLIN,mCLN+132 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+148 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.99"
           STORE pvAl+vtOt TO pvAl
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 SELECT caB_fact
 STORE mpIf+25.55 TO vlIn
 @vLIN,mCLN+5     Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.6 TO vlIn
 @vLIN,mCLN+31    Say pVAL             Font "&mLetRom",10 Style "NQ" Size 1,14  Pict "999,999.99"
 @vLIN,mCLN+60    Say F1300NET-pVAL    Font "&mLetRom",10 Style "NQ" Size 1,14  Pict "999,999.99" Function "("
 @vLIN,mCLN+87    Say F1300NET         Font "&mLetRom",10 Style "NQ" Size 1,14  Pict "999,999.99"
 @vLIN,mCLN+116.0 Say F1300IGV         Font "&mLetRom",10 Style "NQ" Size 1,14  Pict "999,999.99"
 @vLIN,mCLN+137.5 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+145.0 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,14  Pict "999,999.99"
ENDPROC
*
PROCEDURE Bol_1300z
 PRIVATE pvAl
 STORE 00 TO mcLn
 STORE 38 TO mpAg
 STORE mpIb TO vlIn
 STORE vlIn+0.05 TO vlIn
 @0,0 Say Space(01)              Font "&mLetRom",10 Style "NQ"
 DO feC_1300z IN PVI1300Z WITH vlIn, 14
 @vLIN,mCLN+71 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+13 Say vNOM          Font "&mLetRom",10 Style "BQ" Size 1,58 Pict "@S60"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+13 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",10 Style "NQ" Size 1,72 Pict "@S74"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+13 Say F1300ELE      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+44 Say vCM1          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+71 Say vTEL          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.7 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 STORE 0 TO pvAl
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN PVI1300Z
      DO meD_1300z IN PVI1300Z
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
                          @vLIN,mCLN+19 Say "Piezas"   Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+19 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+19 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                DO CASE
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*1000)<>vcAn*1000
                          @vLIN,mCLN+3   Say vCAN      Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*100)<>vcAn*100
                          @vLIN,mCLN+2.5 Say vCAN      Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.999"
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*10)<>vcAn*10
                          @vLIN,mCLN+2 Say vCAN        Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "999,999.99"
                     CASE INT(vcAn)<>vcAn
                          @vLIN,mCLN+1.5 Say vCAN      Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "999,999.9"
                     OTHERWISE
                          @vLIN,mCLN+0.5 Say vCAN      Font "&mLetRom",10 Style "NQ" Size 1,09 Pict "999,999"
                ENDCASE
      ENDCASE
      @vLIN,mCLN+29 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      STORE f1301pre TO vpRe
      STORE ROUND(f1301can*vpRe, 2) TO vtO1
      IF tvL1<>0
           STORE ROUND(vtO1/tvL2, 6) TO vpOr
           STORE ROUND(tvL1*vpOr, 2) TO vpOr
           STORE vtO1+vpOr TO vtOt
      ELSE
           STORE vtO1 TO vtOt
      ENDIF
      STORE ROUND(vtOt/vcAn, 4) TO vpRe
      IF vtOt<>0
           @vLIN,mCLN+122.0 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+141.5 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.99"
           STORE pvAl+vtOt TO pvAl
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 SELECT caB_fact
 STORE mpIb+26.3 TO vlIn
 @vLIN,mCLN+6     Say vFRA+" S.E.u.O."                           Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+141.5 Say pVAL                                       Font "&mLetRom",10 Style "NQ" Size 1,14  Pict "999,999.99"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+141.8 Say F1300TOT-pVAL                              Font "&mLetRom",10 Style "NQ" Size 1,14  Pict "999,999.99" Function "("
 STORE vlIn+0.9 TO vlIn
 @vLIN,mCLN+008.5 Say Substr(vNVE,1,12)+"/"+Substr(F1300USU,1,8) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 @vLIN,mCLN+131.0 Say vSIG                                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+141.5 Say F1300TOT                                   Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+008.5 Say Substr(vNFP,1,21)                          Font "&mLetRom",10 Style "NQ"
ENDPROC
*
PROCEDURE Npe_1300z
 STORE 06 TO mcLn
 STORE 38 TO mpAg
 STORE 00 TO vpAg, vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN PVI1300Z
      DO meD_1300z IN PVI1300Z
      SELECT deT_fact
      IF vmD3=2
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-2
           DO cnP_1300z
           SELECT deT_fact
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas"   Font "&mLetRom",11 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetRom",11 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                DO CASE
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*1000)<>vcAn*1000
                          @vLIN,mCLN+3   Say vCAN      Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.9999"
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*100)<>vcAn*100
                          @vLIN,mCLN+2.5 Say vCAN      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.999"
                     CASE INT(vcAn)<>vcAn .AND. INT(vcAn*10)<>vcAn*10
                          @vLIN,mCLN+2 Say vCAN        Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "999,999.99"
                     CASE INT(vcAn)<>vcAn
                          @vLIN,mCLN+1.5 Say vCAN      Font "&mLetRom",11 Style "NQ" Size 1,10 Pict "999,999.9"
                     OTHERWISE
                          @vLIN,mCLN+0.5 Say vCAN      Font "&mLetRom",11 Style "NQ" Size 1,09 Pict "999,999"
                ENDCASE
      ENDCASE
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN PVI1300Z
      IF vtOt<>0
           @vLIN,mCLN+135 Say vTOT                   Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 IF vlIn>mpAg-2
      DO cnP_1300z
 ELSE
      @vLIN,mCLN Say Replicate("_",110) Font "&mLetRom",11 Style "NT"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-2
           DO cnP_1300z
      ENDIF
 ENDIF
 SELECT caB_fact
 @vLIN,mCLN+73 Say "Sub-Total:"   Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+87 Say tVAL           Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+102 Say "Redond:"  Font "&mLetRom",11 Style "NQ"
 ELSE
      @vLIN,mCLN+102 Say "Dcto.:"   Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+111 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
 @vLIN,mCLN+128 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+133 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cnp_1300z
 SELECT caB_fact
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN     Say "Nota de Pedido No." +vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ"
 @vLIN,mCLN+135 Say "Pagina: "+Str(vPAG,2,0)            Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN     Say Replicate("_",110)                  Font "&mLetRom",11 Style "NT"
 STORE vlIn+1.3 TO vlIn
 IF vpAg=1
      STORE vlIn+0.3 TO vlIn
      @vLIN,mCLN     Say "Cliente"      Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+016 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+018 Say vNOM           Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+106 Say "Fecha"        Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+119 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+121 Say vFEM           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN     Say "Dirección"    Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+016 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+018 Say AllTrim(vDIR)+","+AllTrim(vDIS)+","+AllTrim(vDEP) Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+106 Say "Hora"         Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+119 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+121 Say vTIM           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN     Say "Vendedor"     Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+016 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+018 Say Substr(vNVE,1,12)+"/"+Substr(F1300USU,1,8) Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+106 Say "F.Pago"       Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+119 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+121 Say vNFP           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1 TO vlIn
      @vLIN,mCLN Say Replicate("_",110) Font "&mLetRom",11 Style "NT"
      STORE vlIn+1.4 TO vlIn
      @vLIN,mCLN+4   Say "Cantidad"     Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+16  Say "Med/Uni"      Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+27  Say "Código"       Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+44  Say "Descripción"  Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+133 Say "Prec.Total"   Font "&mLetRom",11 Style "BQ"
      STORE vlIn+0.4 TO vlIn
      @vLIN,mCLN Say Replicate("_",110) Font "&mLetRom",11 Style "NT"
      STORE vlIn+1.6 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Cot_1300z
 SELECT caB_fact
 STORE 13 TO mcLn
 STORE 00 TO vpAg, vlIn
 DO ccO_1300z WITH "1"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN PVI1300Z
      DO meD_1300z IN PVI1300Z
      SELECT deT_fact
      IF vmD3=2
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      IF vlIn>mpAg-2
           DO ccO_1300z WITH "2"
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas"   Font "&mLetRom",11 Style "NQ" Size 1,7 Pict "@S7"
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
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+1.3 TO vlIn
      SELECT prOductos
      IF vtPo=10 .AND. f2111ser=1 .AND. LEN(ALLTRIM(f2111fot))<>0 .AND.  ;
         mpRt="1"
           STORE "DIB\"+ALLTRIM(f2111fot)+".BMP" TO vfOt
           STORE vlIn+1 TO vlIn
           IF vlIn>mpAg-2
                DO ccO_1300z WITH "2"
           ENDIF
           @ vlIn, 00 SAY " "
           @ vlIn, mcLn+20 SAY vfOt BITMAP STYLE "Q"
           STORE vlIn+17 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 SELECT caB_fact
 IF vlIn>mpAg-2
      DO ccO_1300z WITH "2"
 ELSE
      @vLIN,mCLN Say Replicate("_",104) Font "&mLetRom",11 Style "NT"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-2
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 IF tvAl<>f1300tot
      IF vlIn+4.2>mpAg-2
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+106   Say "Sub-Total:"  Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+122.4 Say tVAL          Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF tvAl<f1300tot
           @vLIN,mCLN+106 Say "Redondeo:"  Font "&mLetRom",11 Style "BQ"
      ELSE
           @vLIN,mCLN+106 Say "Dcto.:"     Font "&mLetRom",11 Style "BQ"
      ENDIF
      @vLIN,mCLN+122.4 Say F1300TOT-tVAL Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
      STORE vlIn+1.4 TO vlIn
      @vLIN,mCLN+122.1 Say "========"    Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.4 TO vlIn
 ENDIF
 IF vlIn>mpAg-2
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN+106   Say "Total:"     Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+115   Say vSIG         Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+122.4 Say F1300TOT     Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.4 TO vlIn
 IF vlIn+6.4>mpAg-2
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Vendedor"      Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNVE            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN    Say "Atentamente,"  Font "&mLetRom",11 Style "NQI"
ENDPROC
*
PROCEDURE Cco_1300z
 PARAMETER ptPo
 STORE 00 TO vlIn
 @vLIN,mCLN Say mRZ1 Font "&mLetRom",14 Style "BQ"
 STORE vlIn+2 TO vlIn
 IF ptPo="1"
      STORE vlIn+3 TO vlIn
      DO CASE
           CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Enero de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Febrero de "+Substr(Dtoc(vFEM),7,4)   Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Marzo de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Abril de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Mayo de "+Substr(Dtoc(vFEM),7,4)      Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Junio de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Julio de "+Substr(Dtoc(vFEM),7,4)     Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Agosto de "+Substr(Dtoc(vFEM),7,4)    Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Setiembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Octubre de "+Substr(Dtoc(vFEM),7,4)   Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Noviembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
           CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
                @vLIN,mCLN+102 Say "Juliaca "+Substr(Dtoc(vFEM),1,2)+" de Diciembre de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
      ENDCASE
      STORE vlIn+3 TO vlIn
 ENDIF
 @vLIN,mCLN+40 Say "COTIZACIÓN # "+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 DO CASE
      CASE ptPo="1"
           STORE vlIn+4 TO vlIn
           @vLIN,mCLN Say "Sres"                                     Font "&mLetRom",11 Style "BQI"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say vNOM                                       Font "&mLetRom",12 Style "BQI"
           STORE vlIn+2.5 TO vlIn
           @vLIN,mCLN Say "De nuestra consideración:"                Font "&mLetRom",11 Style "NQI"
           STORE vlIn+2.4 TO vlIn
           @vLIN,mCLN+3 Say "Les presentamos la siguiente Proforma:" Font "&mLetRom",11 Style "NQI"
           STORE vlIn+1.5 TO vlIn
      CASE ptPo="2"
           STORE vlIn+3 TO vlIn
 ENDCASE
 @vLIN,mCLN Say Replicate("_",104) Font "&mLetRom",11 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4.8 Say "Cantidad" Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+16  Say "Unidad"   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+27  Say "Producto" Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",104) Font "&mLetRom",11 Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Des_1300z
 STORE 06 TO mcLn
 STORE 38 TO mpAg
 STORE 00 TO vpAg, vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF RLOCK()
           UNLOCK
      ENDIF
      IF EOF()
           SELECT deT_fact
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      DO prD_1300z IN PVI1300Z
      DO meD_1300z IN PVI1300Z
      SELECT deT_fact
      IF vcTd=0
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-2
           DO cdE_1300z
      ENDIF
      SELECT deT_fact
      @vLIN,mCLN+1  Say vCTD                       Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "999,999"
      @vLIN,mCLN+14 Say "Piezas"                   Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
      @vLIN,mCLN+27 Say F1301COD                   Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+46 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S80"
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-2
           DO cdE_1300z
      ENDIF
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF RLOCK()
           UNLOCK
      ENDIF
      DO itE_1300z
      STORE vlIn+2 TO vlIn
      SELECT deT_fact
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 IF vpAg>0
      @vLIN,mCLN Say Replicate("_",110) Font "&mLetRom",11 Style "NT"
 ENDIF
 STORE 00 TO vpAg, vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT coN_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF RLOCK()
           UNLOCK
      ENDIF
      IF EOF()
           SELECT deT_fact
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      DO prD_1300z IN PVI1300Z
      DO meD_1300z IN PVI1300Z
      SELECT deT_fact
      IF vpAg=0 .OR. vlIn>mpAg-2
           SELECT caB_fact
           DO coB_1300z
           SELECT deT_fact
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Piezas"   Font "&mLetRom",11 Style "NQ" Size 1,7 Pict "@S7"
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
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+1.6 TO vlIn
      STORE f1301can TO vcAn
      SELECT coN_fact
      DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc+ ;
         ALLTRIM(f1304cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF vlIn>mpAg-2
                SELECT caB_fact
                DO coB_1300z
                SELECT coN_fact
           ENDIF
           STORE f1304cdg TO ccDg
           SELECT prOductos
           SEEK ALLTRIM(ccDg)+"*"
           IF RLOCK()
                UNLOCK
           ENDIF
           IF EOF()
                STORE SPACE(80) TO cdCr
                STORE SPACE(30) TO vnUv
           ELSE
                STORE f2111dcr TO cdCr
                STORE f2111nuv TO vnUv
           ENDIF
           SELECT coN_fact
           IF f1304dst=0
                STORE f1304can TO vcUn
           ELSE
                STORE f1304cun-f1304dst TO vcUn
                STORE vcUn*vcAn TO vcUn
           ENDIF
           IF INT(vcUn)<>vcUn
                @vLIN,mCLN+12 Say vCUN  Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+11 Say vCUN  Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN+26 Say vNUV     Font "&mLetRom",11 Style "NQ" Size 1,07 Pict "@S7"
           @vLIN,mCLN+37 Say F1304CDG Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "@S15"
           @vLIN,mCLN+54 Say cDCR     Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
           STORE vlIn+1.3 TO vlIn
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
      ENDDO
      SELECT deT_fact
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 IF vpAg>0
      @vLIN,mCLN Say Replicate("_",110) Font "&mLetRom",11 Style "NT"
 ENDIF
ENDPROC
*
PROCEDURE Cde_1300z
 SELECT caB_fact
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "Orden de Despacho de Factura No."+vSER+"-"+vDOC   Font "&mLetRom",12 Style "NQ"
      CASE vtDo="BO"
           @vLIN,mCLN Say "Orden de Despacho de Boleta No." +vSER+"-"+vDOC   Font "&mLetRom",12 Style "NQ"
      CASE vtDo="NP"
           @vLIN,mCLN Say "Orden de Despacho de N.Pedido No." +vSER+"-"+vDOC Font "&mLetRom",12 Style "NQ"
      CASE vtDo="CT"
           @vLIN,mCLN Say "Orden de Cotización No." +vSER+"-"+vDOC           Font "&mLetRom",12 Style "NQ"
 ENDCASE
 @vLIN,mCLN+135 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN     Say Replicate("_",110)       Font "&mLetRom",11 Style "NT"
 STORE vlIn+1.3 TO vlIn
 IF vpAg=1
      STORE vlIn+0.3 TO vlIn
      @vLIN,mCLN     Say "Cliente"      Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+016 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+018 Say vNOM           Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+106 Say "Fecha"        Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+119 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+121 Say vFEM           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN     Say "Dirección"    Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+016 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+018 Say AllTrim(vDIR)+","+AllTrim(vDIS)+","+AllTrim(vDEP) Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+106 Say "Hora"         Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+119 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+121 Say vTIM           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN+106 Say "Vendedor"     Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+119 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+121 Say Substr(vNVE,1,12)+"/"+Substr(F1300USU,1,8) Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1 TO vlIn
      @vLIN,mCLN Say Replicate("_",110) Font "&mLetRom",11 Style "NT"
      STORE vlIn+1.4 TO vlIn
      @vLIN,mCLN     Say "Cantidad"     Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+14  Say "Unidad"       Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+27  Say "Código"       Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+46  Say "Descripción"  Font "&mLetRom",11 Style "NQ"
      STORE vlIn+0.4 TO vlIn
      @vLIN,mCLN Say Replicate("_",110) Font "&mLetRom",11 Style "NT"
      STORE vlIn+1.6 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Cob_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "Orden de Obra de Factura No."+vSER+"-"+vDOC        Font "&mLetRom",12 Style "NQ"
      CASE vtDo="BO"
           @vLIN,mCLN Say "Orden de Obra de Boleta No." +vSER+"-"+vDOC        Font "&mLetRom",12 Style "NQ"
      CASE vtDo="NP"
           @vLIN,mCLN Say "Orden de Obra de N.Pedido No." +vSER+"-"+vDOC      Font "&mLetRom",12 Style "NQ"
      CASE vtDo="CT"
           @vLIN,mCLN Say "Relación de Obra de Cotización No." +vSER+"-"+vDOC Font "&mLetRom",12 Style "NQ"
 ENDCASE
 @vLIN,mCLN+135 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN     Say Replicate("_",110)       Font "&mLetRom",11 Style "NT"
 STORE vlIn+1.3 TO vlIn
 IF vpAg=1
      STORE vlIn+0.3 TO vlIn
      @vLIN,mCLN     Say "Cliente"      Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+016 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+018 Say vNOM           Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+106 Say "Fecha"        Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+119 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+121 Say vFEM           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN     Say "Dirección"    Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+016 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+018 Say AllTrim(vDIR)+","+AllTrim(vDIS)+","+AllTrim(vDEP) Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+106 Say "Hora"         Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+119 Say ":"            Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+121 Say vTIM           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1 TO vlIn
      @vLIN,mCLN Say Replicate("_",110) Font "&mLetRom",11 Style "NT"
      STORE vlIn+1.6 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Ite_1300z
 PRIVATE plL1, plL2, plL3
 SELECT itE_fact
 STORE 16 TO vcLn
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF f1302opc="S"
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE 01 TO plL1, plL2, plL3
           STORE 16 TO vcLn
           STORE vlIn+1.2 TO vlIn
           IF vlIn>mpAg-2
                DO cdE_1300z
           ENDIF
      ENDIF
      SELECT itE_fact
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,mCLN+vCLN+3.8 Say (F1302MLA*100)  Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "9999.9"
                     CASE f1302un1="P"
                          @vLIN,mCLN+vCLN+0.1 Say F1302P11        Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,mCLN+vCLN+4.4 Say '"'             Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,mCLN+vCLN+5.6 Say F1302P12     Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+11.6 Say "x"                    Font "&mLetRom",11 Style "BQ"
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,mCLN+vCLN+16.2 Say (F1302MAN*100) Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "9999.9"
                     CASE f1302un2="P"
                          @vLIN,mCLN+vCLN+14.2 Say F1302P21       Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,mCLN+vCLN+18.2 Say '"'            Font "&mLetRom",11
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,mCLN+vCLN+19.4 Say F1302P22    Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+25.7 Say "="                    Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+28.1 Say F1302CTD               Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                STORE vcLn+42 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2    Say F1302MLA              Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+10.4 Say "="                   Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+13.3 Say F1302CTD              Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                STORE vcLn+22 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA              Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+09.4 Say "x"                   Font "&mLetRom",11 Style "NQ" Size 1,1
                @vLIN,mCLN+vCLN+12.8 Say F1302MAN              Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+21.0 Say "="                   Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+24.0 Say F1302CTD              Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                STORE vcLn+32 TO vcLn
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
