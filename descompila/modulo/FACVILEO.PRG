*
PROCEDURE Fac_1300z
 PRIVATE puNi
 @0,0 Say Space(01)                        Font "&mLetAri",9 Style "NQ"
 @vLIN,vCLN+22 Say Substr(Dtoc(vFEM),1,2)  Font "&mLetAri",9 Style "NQ"
 @vLIN,vCLN+72 Say Substr(Dtoc(vFEM),10,1) Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
           @vLIN,vCLN+39 Say "  Enero"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
           @vLIN,vCLN+39 Say " Febrero"  Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
           @vLIN,vCLN+39 Say "  Marzo"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
           @vLIN,vCLN+39 Say "  Abril"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
           @vLIN,vCLN+39 Say "   Mayo"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
           @vLIN,vCLN+39 Say "  Junio"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
           @vLIN,vCLN+39 Say "  Julio"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
           @vLIN,vCLN+39 Say " Agosto"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
           @vLIN,vCLN+39 Say "Setiembre" Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
           @vLIN,vCLN+39 Say " Octubre"  Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
           @vLIN,vCLN+39 Say "Noviembre" Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
           @vLIN,vCLN+39 Say "Diciembre" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE vlIn+2.45 TO vlIn
 @vLIN,mCLN+025 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+025 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+025 Say vRUC          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+072 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+116 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+4.5 TO vlIn
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
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          STORE "Pzas" TO puNi
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          STORE SUBSTR(f1301nuv, 1, 4) TO puNi
                     OTHERWISE
                          STORE f1301can TO vcAn
                          STORE SUBSTR(f1301nuv, 1, 4) TO puNi
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+16 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,14 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+15 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,8  Pict "999,999"
                ENDIF
                @vLIN,mCLN+30 Say pUNI    Font "&mLetRom",10 Style "NQ" Size 1,4 Pict "@S10"
      ENDCASE
      @vLIN,mCLN+36 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123.4 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+146.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.87 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 STORE mpIf+mpSf TO vlIn
 @vLIN,mCLN+25.5 Say "Son: "+vFRA+" S.E.u.O."  Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 IF f1300net-tvAl<>0
      @vLIN,mCLN+126.0 Say "Dcto:"       Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+145.8 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+145 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+127.5 Say F1300PIG       Font "&mLetRom",9  Style "NQ" Size 1,03 Pict "99"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN+145 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+137 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+145 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
ENDPROC
*
PROCEDURE Bol_1300z
 PRIVATE puNi
 @0,0 Say Space(01)                          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+012.0 Say vNOM                   Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN+077.0 Say vSER+"-"+vDOC          Font "&mLetRom",8  Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+012.0 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+069.0 Say vDNI                   Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+093.0 Say Substr(Dtoc(vFEM),1,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+100.0 Say Substr(Dtoc(vFEM),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+107.4 Say Substr(Dtoc(vFEM),7,4) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+4.2 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
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
                          STORE "Pzas" TO puNi
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          STORE SUBSTR(f1301nuv, 1, 4) TO puNi
                     OTHERWISE
                          STORE f1301can TO vcAn
                          STORE SUBSTR(f1301nuv, 1, 4) TO puNi
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+6.4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+5.4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+18 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDCASE
      @vLIN,mCLN+28 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+083.9 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+103.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.7 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN+15 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100  Pict "@S100"
 IF f1300tot-tvAl<>0
      @vLIN,mCLN+090 Say "Dcto:"       Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+103 Say F1300TOT-tVAL Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+1.95 TO vlIn
 IF f1300mon<>1
      @vLIN,mCLN+093 Say vSIG          Font "&mLetRom",11 Style "BQ"
 ENDIF
 @vLIN,mCLN+100.5 Say F1300TOT       Font "&mLetRom",11 Style "BQ" Size 1,11.4 Pict "999,999.99"
ENDPROC
*
PROCEDURE Npe_1300z
 STORE 00 TO vpAg
 STORE 00 TO mcLn
 DO cnP_1300z
 @vLIN,mCLN    Say "Cliente" Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+12 Say ":"       Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+14 Say vNOM      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN    Say "Fecha"   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+12 Say ":"       Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+14 Say vFEM      Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+64 Say "Hora"    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+70 Say ":"       Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+72 Say vTIM      Font "&mLetRom",11 Style "NQ"
 IF LEN(ALLTRIM(vcM1))<>0
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN    Say "Observac" Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+12 Say ":"        Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+14 Say vCM1       Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+02.2 Say "Cantidad"    Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+15.0 Say "Unid"        Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+25.0 Say "Descripción" Font "&mLetAri",9 Style "BT"
 STORE vlIn+1.7 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           DO veR_lock
           LOOP
      ENDIF
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
                          @vLIN,mCLN+15 Say "Pzas"   Font "&mLetRom",10 Style "NQ" Size 1,5 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+15 Say F1301NUV Font "&mLetRom",10 Style "NQ" Size 1,5 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+15 Say F1301NUV Font "&mLetRom",10 Style "NQ" Size 1,5 Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+1 Say vCAN           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+0 Say vCAN           Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      DO pc2_1300z IN FAC0000A
      @vLIN,mCLN+25 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN+40 Say vPRE  Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
      @vLIN,mCLN+54 Say vTOT  Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
      STORE vlIn+1.5 TO vlIn
      SELECT deT_fact
      SKIP
      DO veR_lock
 ENDDO
 STORE vlIn+1 TO vlIn
 SELECT caB_fact
 @vLIN,mCLN+45   Say vSIG     Font "&mLetRom",12 Style "BQ"
 @vLIN,mCLN+53.4 Say F1300TOT Font "&mLetRom",12 Style "BQ" Size 1,15 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cnp_1300z
 IF vpAg<>0
      IF mvIs=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
           mkEy = INKEY(0, "HM")
           DO CASE
                CASE mkEy=k_Esc
                     RETURN
                CASE mkEy=k_F10
                     DO reTorna
           ENDCASE
      ENDIF
 ELSE
      IF mvIs=1
           CLEAR
      ENDIF
 ENDIF
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN Say "PROFORMA No." +vSER+"-"+vDOC Font "&mLetRom",11 Style "BT"
 @vLIN,mCLN+64 Say "Pagina: "+Str(vPAG,2,0)   Font "&mLetRom",11 Style "NT"
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE Np1_1300z
 STORE mpIx TO vlIn
 STORE mpKx TO mcLn
 @vLIN,mCLN+021 Say vNOM                    Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+122 Say Substr(Dtoc(vFEM),1,2)  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+135 Say Substr(Dtoc(vFEM),4,2)  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+152 Say Substr(Dtoc(vFEM),10,1) Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+021 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+126 Say vTEL                   Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+035 Say vNFP                   Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+126 Say vRUC                   Font "&mLetAri",9 Style "NQ"
 STORE vlIn+4.2 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+21 Say "Pzas"   Font "&mLetRom",11 Style "NQ" Size 1,4 Pict "@S6"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+21 Say F1301NUV Font "&mLetRom",11 Style "NQ" Size 1,4 Pict "@S6"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+21 Say F1301NUV Font "&mLetRom",11 Style "NQ" Size 1,4 Pict "@S6"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4.5 Say vCAN         Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3.5 Say vCAN         Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+35 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+142.2 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
      ENDIF
      STORE vlIn+1.9 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 STORE mpIx+mpSx TO vlIn
 SELECT caB_fact
 IF f1300tot<>tvAl
      IF tvAl<f1300tot
           @vLIN,mCLN+126 Say "Red."     Font "&mLetRom",11 Style "NQ"
      ELSE
           @vLIN,mCLN+126 Say "Dcto.:"   Font "&mLetRom",11 Style "NQ"
      ENDIF
      @vLIN,mCLN+142.8 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+2.4 TO vlIn
 IF f1300mon<>1
      @vLIN,mCLN+131 Say vSIG       Font "&mLetRom",11 Style "BQ"
 ENDIF
 @vLIN,mCLN+142.2 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cot_1300z
 PUBLIC puNi
 STORE 13 TO mcLn
 STORE 00 TO vpAg
 DO ccO_1300z WITH "1"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           DO veR_lock
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
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDCASE
      IF ALLTRIM(UPPER(f1301dcr))+"*"=ALLTRIM(f1301dcr)+"*" .AND.  ;
         LEN(ALLTRIM(f1301dcr))>40
           @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,40 Pict "@S42"
      ELSE
           @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S62"
      ENDIF
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+107 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+126 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+44 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
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
      DO veR_lock
      IF  .NOT. EOF()
           @vLIN,mCLN Say "Medidas:" Font "&mLetSwi",8 Style "NQ"
           DO itE_1300z
           STORE vlIn+1.4 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",104) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      @vLIN,mCLN+105   Say "Sub-Total:" Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+123.4 Say tVAL         Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      IF tvAl<f1300tot
           @vLIN,mCLN+105 Say "Redondeo:"  Font "&mLetRom",11 Style "BQ"
      ELSE
           @vLIN,mCLN+105 Say "Dcto.:"     Font "&mLetRom",11 Style "BQ"
      ENDIF
      @vLIN,mCLN+124.1 Say F1300TOT-tVAL Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+123.1 Say "==========" Font "&mLetSwi",9 Style "NQ"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 @vLIN,mCLN+115   Say vSIG     Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+123.4 Say F1300TOT Font "&mLetRom",11 Style "BQ" Size 1,15 Pict "999,999.99"
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
 @vLIN,mCLN       Say "Cantidad"      Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+16    Say "Unidad"        Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+27    Say "Producto"      Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+105.5 Say "Prec.Unitario" Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+124.3 Say "Precio Total"  Font "&mLetRom",10 Style "BQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",104)    Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Ite_1300z
 PRIVATE plL1, plL2, plL3
 STORE 12 TO vcLn
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 12 TO vcLn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
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
      SKIP
      DO veR_lock
 ENDDO
 IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
      STORE vlIn+1.2 TO vlIn
      STORE 01 TO plL1, plL2, plL3
      STORE 12 TO vcLn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+vCLN Say "Total cortes= "+AllTrim(Str(vCTD,6,0)) Font "&mLetRom",11 Style "NQ"
 ENDIF
ENDPROC
*
PROCEDURE Des_1300z
 PRIVATE pdCr, pdC1, pdC2, pnUm
 STORE 00 TO vpAg
 STORE 06 TO mcLn
 STORE 38 TO mpAg
 SELECT caB_fact
 DO cdE_1300z
 @vLIN,mCLN+54 Say "Hora"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+60 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+62 Say vTIM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN    Say "Cliente"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+10 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+12 Say vNOM            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+54 Say "Fech"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+60 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+62 Say vFEM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN    Say "Observ"        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+10 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+12 Say vCM1            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+54 Say "Vend"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+60 Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+62 Say vNVE            Font "&mLetAri",9 Style "NQ"
 IF LEN(ALLTRIM(f1300cm2))<>0
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN+12 Say F1300CM2     Font "&mLetAri",9 Style "NQ"
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",55)  Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Cantidad"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+16 Say "Unid"          Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+23 Say "Descripción"   Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",55)  Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO it1_1300z WITH "1"
      IF  .NOT. EOF()
           SELECT deT_fact
           SKIP
           DO veR_lock
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
                @vLIN,mCLN+16 Say F1301NUV           Font "&mLetSwi",9 Style "NQ" Size 1,4  Pict "@S7"
           OTHERWISE
                @vLIN,mCLN+1  Say vCAN               Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
                @vLIN,mCLN+16 Say F1301NUV           Font "&mLetSwi",9 Style "NQ" Size 1,4  Pict "@S7"
      ENDCASE
      IF LEN(ALLTRIM(f1301dcr)+" "+ALLTRIM(clAr))>40
           STORE LOWER(ALLTRIM(f1301dcr)+" "+clAr) TO pdCr
           STORE SUBSTR(pdCr, 1, 40) TO pdC1
           STORE 40 TO pnUm
           IF RAT(" ", pdC1)<>0
                STORE RAT(" ", pdC1) TO pnUm
                STORE SUBSTR(pdCr, 1, pnUm) TO pdC1
           ENDIF
           STORE pnUm+1 TO pnUm
           STORE SUBSTR(pdCr, pnUm, 40) TO pdC2
      ELSE
           STORE LOWER(ALLTRIM(f1301dcr)+" "+clAr) TO pdC1
           STORE SPACE(40) TO pdC2
      ENDIF
      @vLIN,mCLN+23 Say pDC1    Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      IF LEN(ALLTRIM(pdC2))<>0
           STORE vlIn+1.1 TO vlIn
           @vLIN,mCLN+23 Say pDC2 Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO it1_1300z WITH "1"
      IF EOF()
           SELECT deT_fact
           SKIP
           DO veR_lock
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
           @vLIN,mCLN+16 Say F1301NUV                Font "&mLetSwi",9 Style "NQ" Size 1,4 Pict "@S6"
      ELSE
           @vLIN,mCLN+16 Say "Pzas"                  Font "&mLetSwi",9 Style "NQ" Size 1,4 Pict "@S6"
      ENDIF
      IF INT(vcTd)<>vcTd
           @vLIN,mCLN+2 Say vCTD                     Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+1 Say vCTD                     Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
      ENDIF
      IF LEN(ALLTRIM(f1301dcr)+" "+ALLTRIM(clAr))>40
           STORE LOWER(ALLTRIM(f1301dcr)+" "+clAr) TO pdCr
           STORE SUBSTR(pdCr, 1, 40) TO pdC1
           STORE 40 TO pnUm
           IF RAT(" ", pdC1)<>0
                STORE RAT(" ", pdC1) TO pnUm
                STORE SUBSTR(pdCr, 1, pnUm) TO pdC1
           ENDIF
           STORE pnUm+1 TO pnUm
           STORE SUBSTR(pdCr, pnUm, 40) TO pdC2
      ELSE
           STORE LOWER(ALLTRIM(f1301dcr)+" "+clAr) TO pdC1
           STORE SPACE(40) TO pdC2
      ENDIF
      @vLIN,mCLN+23 Say pDC1    Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      IF LEN(ALLTRIM(pdC2))<>0
           STORE vlIn+1.1 TO vlIn
           @vLIN,mCLN+23 Say pDC2 Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.6 TO vlIn
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      DO it1_1300z WITH "2"
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      SELECT deT_fact
      SKIP
      DO veR_lock
 ENDDO
 @vLIN,mCLN Say Replicate("_",55) Font "&mLetAri",9 Style "NT"
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
 @vLIN,mCLN+59 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN    Say Replicate("_",55)        Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE It1_1300z
 PARAMETER ptPo
 PRIVATE plL1, plL2, plL3, puL1, puL2, puL3
 SELECT itE_fact
 GOTO TOP
 DO veR_lock
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO veR_lock
 IF EOF()
      RETURN
 ENDIF
 IF ptPo="1"
      RETURN
 ENDIF
 DO CASE
      CASE vtPo=5
           STORE 08 TO vcLn
      CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
           STORE 16 TO vcLn
      CASE vtPo=4 .OR. vtPo=7
           STORE 14 TO vcLn
      CASE vtPo=11
           STORE 16 TO vcLn
 ENDCASE
 STORE 01 TO plL1, plL2, plL3
 STORE 02 TO puL1, puL3
 STORE 03 TO puL2
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      IF plL1>puL1 .OR. plL2>puL2 .OR. plL3>puL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           DO CASE
                CASE vtPo=5
                     STORE 08 TO vcLn
                CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                     STORE 16 TO vcLn
                CASE vtPo=4 .OR. vtPo=7
                     STORE 14 TO vcLn
                CASE vtPo=11
                     STORE 16 TO vcLn
           ENDCASE
           IF vlIn>mpAg-3
                DO cdE_1300z
           ENDIF
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
                @vLIN,mCLN+vCLN+11.4 Say "x"                   Font "&mLetSwi",9 Size 1,1 Style "BQ"
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
           CASE vtPo=11
                @vLIN,mCLN+vCLN+02.0 Say F1302CA1              Font "&mLetSwi",9 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+05.0 Say F1302MLA              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+12.4 Say "x"                   Font "&mLetSwi",9 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+16.0 Say F1302CA2              Font "&mLetSwi",9 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+19.0 Say F1302MAN              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+26.0 Say "="+Str(F1302CTD,4,0) Font "&mLetSwi",9 Style "NQ"
                STORE vcLn+34 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
      DO veR_lock
 ENDDO
ENDPROC
*
PROCEDURE Let_3110z
 STORE mpIl TO vlIn
 STORE mpKl TO mcLn
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
 STORE mpKw TO mcLn
 STORE mpIw TO vlIn
 @0,0 Say Space(01)                        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+24 Say Substr(Dtoc(vFEM),1,2)  Font "&mLetAri",11 Style "NQ"
 DO CASE
      CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
           @vLIN,mCLN+47 Say "  Enero"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
           @vLIN,mCLN+47 Say " Febrero"  Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
           @vLIN,mCLN+47 Say "  Marzo"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
           @vLIN,mCLN+47 Say "  Abril"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
           @vLIN,mCLN+47 Say "   Mayo"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
           @vLIN,mCLN+47 Say "  Junio"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
           @vLIN,mCLN+47 Say "  Julio"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
           @vLIN,mCLN+47 Say " Agosto"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
           @vLIN,mCLN+47 Say "Setiembre" Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
           @vLIN,mCLN+47 Say " Octubre"  Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
           @vLIN,mCLN+47 Say "Noviembre" Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
           @vLIN,mCLN+47 Say "Diciembre" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 @vLIN,mCLN+076 Say Substr(Dtoc(vFEM),10,1) Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+114 Say vRUC                    Font "&mLetAri",9 Style "NQ"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+29 Say vNOM                     Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+15 Say "Ref: "+F3610CM1         Font "&mLetAri",10 Style "NQ" Pict "@S100"
 STORE vlIn+4.3 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+24 Say F3611DES     Font "&mLetAri",10 Style "NQ" Size 1,80 Pict "@S100"
      IF f3611tot<>0
           @vLIN,mCLN+142 Say F3611TOT Font "&mLetAri",10 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.8 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_nota
 STORE mpIw+mpSw TO vlIn
 @vLIN,mCLN+25 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+146 Say tNET                    Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+146 Say F3610IGV                Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+135.8 Say vSIG                  Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+146 Say tTOT                    Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Deb_3610z
 SELECT caB_nota
 STORE mpKw TO mcLn
 STORE mpIw TO vlIn
 @0,0 Say Space(01)                        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+24 Say Substr(Dtoc(vFEM),1,2)  Font "&mLetAri",11 Style "NQ"
 DO CASE
      CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
           @vLIN,mCLN+47 Say "  Enero"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
           @vLIN,mCLN+47 Say " Febrero"  Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
           @vLIN,mCLN+47 Say "  Marzo"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
           @vLIN,mCLN+47 Say "  Abril"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
           @vLIN,mCLN+47 Say "   Mayo"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
           @vLIN,mCLN+47 Say "  Junio"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
           @vLIN,mCLN+47 Say "  Julio"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
           @vLIN,mCLN+47 Say " Agosto"   Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
           @vLIN,mCLN+47 Say "Setiembre" Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
           @vLIN,mCLN+47 Say " Octubre"  Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
           @vLIN,mCLN+47 Say "Noviembre" Font "&mLetAri",9 Style "NQ"
      CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
           @vLIN,mCLN+47 Say "Diciembre" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 @vLIN,mCLN+076 Say Substr(Dtoc(vFEM),10,1) Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+114 Say vRUC                    Font "&mLetAri",9 Style "NQ"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+29 Say vNOM                     Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+15 Say "Ref: "+F3610CM1         Font "&mLetAri",10 Style "NQ" Pict "@S100"
 STORE vlIn+4.3 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+24 Say F3611DES     Font "&mLetAri",10 Style "NQ" Size 1,80 Pict "@S100"
      IF f3611tot<>0
           @vLIN,mCLN+142 Say F3611TOT Font "&mLetAri",10 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.8 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_nota
 STORE mpIw+mpSw TO vlIn
 @vLIN,mCLN+25 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+146 Say tNET                    Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+146 Say F3610IGV                Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+135.8 Say vSIG                  Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+146 Say tTOT                    Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC plUg, prUc, ptPp
 DO luG_2600z IN PAI2600Z
 DO ruC_2600z IN PAI2600Z
 DO peS_2600z IN PAI2600Z
 @0,0 Say Space(01) Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+68 Say "["+F2600SER+"-"+F2600DOC+"]" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+15 Say F2600NOM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+15 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+15 Say pRUC     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.0 TO vlIn
 @vLIN,mCLN+100 Say Substr(Dtoc(F2600FEM),1,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+108 Say Substr(Dtoc(F2600FEM),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+113 Say Substr(Dtoc(F2600FEM),7,4) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+133 Say Substr(Dtoc(F2600FEM),1,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+140 Say Substr(Dtoc(F2600FEM),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+146 Say Substr(Dtoc(F2600FEM),7,4) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 @vLIN,mCLN+23 Say AllTrim(vADI)+", "+AllTrim(vADS) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+23 Say pLUG Font "&mLetRom",10 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+100 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+135 Say Substr(Dtoc(F2600FFA),1,2)         Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+140 Say Substr(Dtoc(F2600FFA),4,2)         Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+145 Say Substr(Dtoc(F2600FFA),7,4)         Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+4.2 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN PAI2600Z
      SELECT deT_remi
      DO CASE
           CASE INT(f2601can)=f2601can
                @vLIN,mCLN+12.7 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
           OTHERWISE
                @vLIN,mCLN+15.3 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.9999" Size 1,12
      ENDCASE
      @vLIN,mCLN+30 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S04" Size 1,04
      @vLIN,mCLN+48 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      STORE vlIn+1.8 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_remi
 STORE mpIr+mpSr TO vlIn
 STORE vlIn+6 TO vlIn
 @vLIN,mCLN+029 Say AllTrim(F2600MR1)+"/"+AllTrim(F2600PLA) Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+111 Say AllTrim(F2600CM1) Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+035 Say AllTrim(F2600CIM) Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+058 Say F2600TNO          Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+111 Say AllTrim(F2600CM2) Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN+035 Say F2600LC1          Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+073 Say F2600TRU          Font "&mLetRom",9 Style "NQ"
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
