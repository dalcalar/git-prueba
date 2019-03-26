*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 DO CASE
      CASE vsEr="002"
           DO fa2_1300z
      CASE vsEr="006"
           DO fa2_1300z
      CASE vsEr="003"
           DO fa3_1300z
      CASE vsEr="001"
           DO fa1_1300z
 ENDCASE
 RELEASE puNi, pdIr
ENDPROC
*
PROCEDURE Fa1_1300z
 @vLIN,mCLN+12  Say vNOM                   Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+12  Say pDIR                   Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+81  Say vSER+"-"+vDOC          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+012 Say vRUC                   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+114 Say Substr(Dtoc(vFEM),1,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+122 Say Substr(Dtoc(vFEM),4,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+131 Say Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQ"
 STORE vlIn+4.6 TO vlIn
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
      DO unI_1300z IN FAC0000A
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                     OTHERWISE
                          STORE f1301can TO vcAn
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+01.9 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+00.8 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+11.5 Say pUNI    Font "&mLetRom",10 Style "NQ" Size 1,5.5 Pict "@S8"
      ENDCASE
      @vLIN,mCLN+22.5 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+105.1 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+125.5 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.8 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF f1300net-tvAl<>0
      @vLIN,mCLN+115.0 Say "Dcto/Red:"   Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+129.4 Say F1300NET-tVAL Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+008.0 Say vFRA             Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+128.5 Say F1300NET         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+128.5 Say F1300IGV         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+119.5 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+128.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
ENDPROC
*
PROCEDURE Fa2_1300z
 @vLIN,mCLN+22.0 Say vSER+"-"+vDOC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+67.0 Say vRUC          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+22.0 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+22 Say pDIR            Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+3.8 TO vlIn
 @vLIN,mCLN+008.8 Say vNFP         Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+051.0 Say vFEM         Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+077.0 Say vFEM+vDIA    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+105.0 Say vCM1         Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+133.8 Say vNVE         Font "&mLetRom",11 Style "NQ"
 STORE vlIn+3.8 TO vlIn
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
      DO unI_1300z IN FAC0000A
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                     OTHERWISE
                          STORE f1301can TO vcAn
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+19.9 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+18.8 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+31.5 Say pUNI    Font "&mLetRom",10 Style "NQ" Size 1,5.5 Pict "@S8"
      ENDCASE
      @vLIN,mCLN+40.5 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+111.1 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+125.7 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
           @vLIN,mCLN+149.5 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF f1300net-tvAl<>0
      @vLIN,mCLN+125.0 Say "Dcto/Red:"   Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+150.4 Say F1300NET-tVAL Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 ENDIF
 @vLIN,mCLN+144 Say vSIG               Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+007.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+085.0 Say tVAL             Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+103.0 Say F1300NET-tVAL    Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+119.0 Say F1300NET         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134.8 Say F1300IGV         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+149.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
ENDPROC
*
PROCEDURE Fa3_1300z
 @vLIN,mCLN+74  Say vSER+"-"+vDOC          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+22  Say vNOM                   Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+22  Say pDIR                   Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+022 Say vRUC                   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+132 Say Substr(Dtoc(vFEM),1,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+140 Say Substr(Dtoc(vFEM),4,2) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+148 Say Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQ"
 STORE vlIn+3.8 TO vlIn
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
      DO unI_1300z IN FAC0000A
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                     OTHERWISE
                          STORE f1301can TO vcAn
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+09.9 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+08.8 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+21.5 Say pUNI    Font "&mLetRom",10 Style "NQ" Size 1,5.5 Pict "@S8"
      ENDCASE
      @vLIN,mCLN+32.5 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+121.1 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+141.5 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF f1300net-tvAl<>0
      @vLIN,mCLN+125.0 Say "Dcto/Red:"   Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+143.4 Say F1300NET-tVAL Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+010.0 Say "Son:"+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+090.0 Say F1300NET         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+110.8 Say F1300IGV         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.99"
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 DO CASE
      CASE vsEr="002"
           DO bo2_1300z
      CASE vsEr="006"
           DO bo2_1300z
      CASE vsEr="003"
           DO bo3_1300z
 ENDCASE
 RELEASE puNi, pdIr
ENDPROC
*
PROCEDURE Bo2_1300z
 @vLIN,mCLN+26.0 Say vSER+"-"+vDOC Font "&mLetRom",11 Style "NQ"
 IF LEN(ALLTRIM(vdNi))<>0
      @vLIN,mCLN+58 Say "DNI:"+vDNI  Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+26    Say vNOM         Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+26    Say pDIR         Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN+008.8 Say vCM1         Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+058.0 Say vNFP         Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+087.0 Say vFEM         Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+105.0 Say vFEM+vDIA    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+128.8 Say vNVE         Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 STORE vlIn+4.3 TO vlIn
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
      DO unI_1300z IN FAC0000A
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                     OTHERWISE
                          STORE f1301can TO vcAn
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+28.0 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+26.9 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+39.5 Say pUNI    Font "&mLetRom",10 Style "NQ" Size 1,5.5 Pict "@S8"
      ENDCASE
      @vLIN,mCLN+49.5 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,70 Pict "@S70"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+121.5 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+139.5 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 IF tvAl<>f1300tot
      @vLIN,mCLN+130.0 Say "Dcto/Red:"   Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+141.5 Say tVAL-F1300TOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 ENDIF
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+014.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 @vLIN,mCLN+129.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+139.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Bo3_1300z
 @vLIN,mCLN+86.0 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+25.0 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 IF LEN(ALLTRIM(vdNi))<>0
      @vLIN,mCLN+122 Say vDNI  Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+025 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+122 Say vFEM Font "&mLetRom",11 Style "NQ"
 STORE vlIn+3.6 TO vlIn
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
      DO unI_1300z IN FAC0000A
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                     OTHERWISE
                          STORE f1301can TO vcAn
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+10.2 Say vCAN          Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+09.3 Say vCAN          Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+24 Say pUNI               Font "&mLetRom",10 Style "NQ" Size 1,5.5 Pict "@S8"
      ENDCASE
      @vLIN,mCLN+34 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,70 Pict "@S70"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+124.1 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+141.5 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+34 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100  Pict "@S100"
 IF tvAl<>f1300tot
      @vLIN,mCLN+130 Say "Dcto/Red:"   Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+141 Say tVAL-F1300TOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF f1300mon=2
      @vLIN,mCLN+130.0 Say vSIG Font "&mLetRom",10 Style "NQ"
 ENDIF
 @vLIN,mCLN+139 Say F1300TOT  Font "&mLetRom",10 Style "BQ" Size 1,12.4 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cot_1300z
 PRIVATE puNi
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
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                     OTHERWISE
                          STORE f1301can TO vcAn
                ENDCASE
                DO CASE
                     CASE vcTd<>0
                          STORE "Piezas" TO puNi
                     OTHERWISE
                          STORE f1301nuv TO puNi
                ENDCASE
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+16 Say pUNI   Font "&mLetAri",9 Style "NQ" Size 1,7 Pict "@S7"
                          IF INT(vcAn)<>vcAn
                               @vLIN,mCLN+7 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                          ELSE
                               @vLIN,mCLN+6 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "999,999"
                          ENDIF
                     CASE mpRt="2"
                          @vLIN,mCLN+16 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,7 Pict "@S7"
                          IF INT(vcAn)<>vcAn
                               @vLIN,mCLN+2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                          ELSE
                               @vLIN,mCLN+1 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                          ENDIF
                ENDCASE
      ENDCASE
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetAri",9  Style "NQ" Size 1,60 Pict "@S62"
           CASE mpRt="2"
                @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S62"
      ENDCASE
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+133 Say vTOT Font "&mLetAri",9  Style "NQ" Size 1,14 Pict "999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+127 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.99"
           ENDCASE
      ENDIF
      STORE vlIn+1.3 TO vlIn
      DO CASE
           CASE mpRt="1" .AND. vtPo=10 .AND. vsRr=1 .AND. LEN(ALLTRIM(vfOt))<>0
                IF LEN(ALLTRIM(muNi))=0
                     STORE mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO vfOt
                ELSE
                     STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO vfOt
                ENDIF
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
           OTHERWISE
                SELECT itE_fact
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO veR_lock
                IF  .NOT. EOF() .AND. ALLTRIM(f1302cod)+"*"=ALLTRIM(vcOd)+"*"
                     @vLIN,mCLN+16 Say "Medidas:" Font "&mLetAri",8 Style "NQ"
                     STORE vlIn+1.2 TO vlIn
                     IF vlIn>mpAg-3
                          DO ccO_1300z WITH "2"
                     ENDIF
                     DO itE_1300z
                     STORE vlIn+1.4 TO vlIn
                ENDIF
      ENDCASE
      IF mvIs=1 .OR. mpRt="1"
           STORE vlIn+0.2 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_fact
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+099   Say "Sub-Total:" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+131.4 Say tVAL         Font "&mLetRom",12 Style "BQ" Size 1,15 Pict "999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+099   Say "Sub-Total:" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+131.4 Say tVAL         Font "&mLetRom",12 Style "BQ" Size 1,15 Pict "999,999.99"
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
                     @vLIN,mCLN+99 Say "Redondeo:"   Font "&mLetRom",12 Style "BQ"
                ELSE
                     @vLIN,mCLN+99 Say "Descuento:"  Font "&mLetRom",12 Style "BQ"
                ENDIF
                @vLIN,mCLN+132.0 Say F1300TOT-tVAL Font "&mLetRom",12 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
           CASE mpRt="1"
                IF tvAl<f1300tot
                     @vLIN,mCLN+99 Say "Redondeo:"   Font "&mLetRom",12 Style "BQ"
                ELSE
                     @vLIN,mCLN+99 Say "Descuento:"  Font "&mLetRom",12 Style "BQ"
                ENDIF
                @vLIN,mCLN+132.0 Say F1300TOT-tVAL Font "&mLetRom",12 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
           CASE mpRt="2"
                IF tvAl<f1300tot
                     @vLIN,mCLN+106 Say "Redond:"    Font "&mLetRom",10 Style "BQ"
                ELSE
                     @vLIN,mCLN+106 Say "Dcto.:"     Font "&mLetRom",10 Style "BQ"
                ENDIF
                @vLIN,mCLN+122.4 Say F1300TOT-tVAL Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99" Function "("
      ENDCASE
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+125.0 Say "========" Font "&mLetRom",10 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN+125.0 Say "========" Font "&mLetRom",10 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN+122.4 Say "========" Font "&mLetRom",10 Style "NQ"
      ENDCASE
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+118   Say vSIG     Font "&mLetRom",12 Style "BQ"
           @vLIN,mCLN+131.4 Say F1300TOT Font "&mLetRom",12 Style "BQ" Size 1,15 Pict "999,999.99"
      CASE mpRt="1"
           @vLIN,mCLN+118   Say vSIG     Font "&mLetRom",12 Style "BQ"
           @vLIN,mCLN+131.4 Say F1300TOT Font "&mLetRom",12 Style "BQ" Size 1,15 Pict "999,999.99"
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
           @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",12 Style "NQ"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",12 Style "BQ"
           @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",12 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="1"
           @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",12 Style "NQ"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",12 Style "BQ"
           @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",12 Style "NQ" Size 1,70 Pict "@S70"
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
           @vLIN,mCLN    Say "Vendedor" Font "&mLetRom",12 Style "NQ"
           @vLIN,mCLN+22 Say ":"        Font "&mLetRom",12 Style "BQ"
           @vLIN,mCLN+24 Say vVEN       Font "&mLetRom",12 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="1"
           @vLIN,mCLN    Say "Vendedor" Font "&mLetRom",12 Style "NQ"
           @vLIN,mCLN+22 Say ":"        Font "&mLetRom",12 Style "BQ"
           @vLIN,mCLN+24 Say vVEN       Font "&mLetRom",12 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="2"
           @vLIN,mCLN    Say "Vendedor" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"        Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vVEN       Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",12 Style "NQ"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",12 Style "BQ"
           @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",12 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="1"
           @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",12 Style "NQ"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",12 Style "BQ"
           @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",12 Style "NQ" Size 1,70 Pict "@S70"
      CASE mpRt="2"
           @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
           @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 ENDCASE
 STORE vlIn+3.4 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN Say "Atentamente," Font "&mLetRom",12 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN Say "Atentamente," Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN Say "Atentamente," Font "&mLetRom",11 Style "NQI"
 ENDCASE
 STORE vlIn+3.4 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN Say F1300NVE Font "&mLetRom",12 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN Say F1300NVE Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN Say F1300NVE Font "&mLetRom",11 Style "NQI"
 ENDCASE
ENDPROC
*
PROCEDURE CCo_1300z
 PARAMETER ptPo
 PRIVATE pfEm
 IF ptPo="1"
      DO CASE
           CASE SUBSTR(DTOC(vfEm), 4, 2)="01"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Enero de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="02"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Febrero de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="03"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Marzo de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="04"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Abril de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="05"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Mayo de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="06"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Junio de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="07"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Julio de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="08"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Agosto de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="09"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Setiembre de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="10"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Octubre de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="11"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Noviembre de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
           CASE SUBSTR(DTOC(vfEm), 4, 2)="12"
                STORE "Chiclayo, "+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                      " de Diciembre de "+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
      ENDCASE
 ENDIF
 STORE 00 TO vlIn
 @vLIN,mCLN     Say mRAZ Font "&mLetRom",14 Style "BQ"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+0.2 Say mDIR Font "&mLetAri",8 Style "NQ"
 STORE vlIn+1.1 TO vlIn
 IF ptPo="1"
      STORE vlIn+3 TO vlIn
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+102 Say pFEM Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN+102 Say pFEM Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN+102 Say pFEM Font "&mLetRom",11 Style "NQI"
      ENDCASE
      STORE vlIn+3 TO vlIn
 ENDIF
 @vLIN,mCLN+40 Say "COTIZACIÓN # "+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 STORE vlIn+4 TO vlIn
 DO CASE
      CASE ptPo="1" .AND. mvIs=1
           @vLIN,mCLN Say "Sres"                                   Font "&mLetRom",12 Style "BQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say vNOM                                     Font "&mLetRom",13 Style "BQ"
           STORE vlIn+2.5 TO vlIn
           @vLIN,mCLN Say "De nuestra consideración:"              Font "&mLetRom",12 Style "NQ"
           STORE vlIn+2.4 TO vlIn
           @vLIN,mCLN Say "Les presentamos la siguiente Proforma:" Font "&mLetRom",12 Style "NQ"
      CASE ptPo="1" .AND. mpRt="1"
           @vLIN,mCLN Say "Sres"                                   Font "&mLetRom",12 Style "BQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say vNOM                                     Font "&mLetRom",13 Style "BQ"
           STORE vlIn+2.5 TO vlIn
           @vLIN,mCLN Say "De nuestra consideración:"              Font "&mLetRom",12 Style "NQ"
           STORE vlIn+2.4 TO vlIn
           @vLIN,mCLN Say "Les presentamos la siguiente Proforma:" Font "&mLetRom",12 Style "NQ"
      CASE ptPo="1" .AND. mpRt="2"
           @vLIN,mCLN Say "Sres"                                     Font "&mLetRom",12 Style "BQI"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say vNOM                                       Font "&mLetRom",13 Style "BQI"
           STORE vlIn+2.5 TO vlIn
           @vLIN,mCLN Say "De nuestra consideración:"                Font "&mLetRom",11 Style "NQI"
           STORE vlIn+2.4 TO vlIn
           @vLIN,mCLN+3 Say "Les presentamos la siguiente Proforma:" Font "&mLetRom",11 Style "NQI"
      CASE ptPo="2"
           STORE vlIn-2.5 TO vlIn
 ENDCASE
 STORE vlIn+1.5 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+3.2   Say "Cantidad"     Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+16    Say "Unidad"       Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+27    Say "Producto"     Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+124.3 Say "Precio Total" Font "&mLetRom",10 Style "BQ"
      CASE mpRt="1"
           @vLIN,mCLN+3.2   Say "Cantidad"     Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+16    Say "Unidad"       Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+27    Say "Producto"     Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+124.3 Say "Precio Total" Font "&mLetRom",10 Style "BQ"
      CASE mpRt="2"
           @vLIN,mCLN+4.8   Say "Cantidad"     Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+16    Say "Unidad"       Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+27    Say "Producto"     Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+124.3 Say "Precio Total" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Npe_1300z
ENDPROC
*
PROCEDURE Des_1300z
 STORE 00 TO vpAg
 STORE 06 TO mcLn
 STORE 38 TO mpAg
 DO cdE_1300z
 @vLIN,mCLN+130 Say "Hora"            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+138 Say ":"               Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+140 Say vTIM              Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+130 Say "Fecha"           Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+138 Say ":"               Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+140 Say vFEM              Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN     Say "Cliente"         Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(vcM1))=0 .AND. LEN(ALLTRIM(vcM2))=0
      @vLIN,mCLN+12 Say ":"             Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+14 Say vNOM            Font "&mLetAri",9 Style "NQ"
 ELSE
      @vLIN,mCLN+19 Say ":"             Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+21 Say vNOM            Font "&mLetAri",9 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN    Say "Observaciones" Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+19 Say ":"             Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+21 Say vCM1            Font "&mLetAri",9 Style "NQ"
      IF LEN(ALLTRIM(vcM2))<>0
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+21 Say vCM2         Font "&mLetAri",9 Style "NQ"
      ENDIF
 ENDIF
 STORE vlIn+1 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+02.2 Say "Cantidad"    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+16.0 Say "Med/Unid"    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+30.0 Say "Código"      Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+47.0 Say "Descripción" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.6 TO vlIn
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
           DO cdE_1300z
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
                @vLIN,mCLN+30 Say vCOD             Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
      ENDCASE
      @vLIN,mCLN+47 Say F1301DCR                 Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      DO veR_lock
      IF  .NOT. EOF() .AND. ALLTRIM(f1302cod)+"*"=ALLTRIM(vcOd)+"*"
           IF vlIn>mpAg-3
                DO cdE_1300z
           ENDIF
           DO it2_1300z
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
      DO veR_lock
 ENDDO
 SELECT coN_fact
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 IF EOF()
      RETURN
 ENDIF
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO veR_lock
 STORE 00 TO vpAg, vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT coN_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      DO veR_lock
      IF EOF()
           SELECT deT_fact
           SKIP
           DO veR_lock
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-2
           DO coB_1300z
      ENDIF
      SELECT deT_fact
      @vLIN,mCLN    Say F1301CAN                   Font "&mLetRom",12 Style "BQ" Size 1,7 Pict "9999"
      @vLIN,mCLN+10 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",12 Style "BQ"
      STORE f1301can TO vcAn
      STORE vlIn+1.6 TO vlIn
      SELECT coN_fact
      DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc+ ;
         ALLTRIM(f1304cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF vlIn>mpAg-2
                DO coB_1300z
           ENDIF
           STORE f1304cdg TO ccDg
           SELECT prOductos
           SEEK ALLTRIM(ccDg)+"*"
           DO veR_lock
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
                @vLIN,mCLN+12 Say vCUN  Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+11 Say vCUN  Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN+26 Say vNUV     Font "&mLetRom",10 Style "NQ" Size 1,07 Pict "@S7"
           @vLIN,mCLN+37 Say F1304CDG Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
           @vLIN,mCLN+54 Say cDCR     Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
           STORE vlIn+1.3 TO vlIn
           SKIP
           DO veR_lock
      ENDDO
      SELECT deT_fact
      SKIP
      DO veR_lock
 ENDDO
ENDPROC
*
PROCEDURE Cde_1300z
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
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "Orden de Despacho de Factura No."+vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="BO"
           @vLIN,mCLN Say "Orden de Despacho de Boleta No." +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="NP"
           @vLIN,mCLN Say "PROFORMA No." +vSER+"-"+vDOC                    Font "&mLetAri",12 Style "NQ"
 ENDCASE
 @vLIN,mCLN+140 Say "Pagina: "+Str(vPAG,2,0)                             Font "&mLetAri",9  Style "NQ"
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Cob_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "Orden de Obra de Factura No."+vSER+"-"+vDOC        Font "&mLetAri",12 Style "NQ"
      CASE vtDo="BO"
           @vLIN,mCLN Say "Orden de Obra de Boleta No." +vSER+"-"+vDOC        Font "&mLetAri",12 Style "NQ"
      CASE vtDo="NP"
           @vLIN,mCLN Say "Orden de Obra de N.Pedido No." +vSER+"-"+vDOC      Font "&mLetAri",12 Style "NQ"
      CASE vtDo="CT"
           @vLIN,mCLN Say "Relación de Obra de Cotización No." +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
 ENDCASE
 @vLIN,mCLN+135 Say "Pagina: "+Str(vPAG,2,0)                                Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.3 TO vlIn
 IF vpAg=1
      STORE vlIn+0.3 TO vlIn
      @vLIN,mCLN     Say "Cliente"                                            Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+016 Say ":"                                                  Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+018 Say vNOM                                                 Font "&mLetAri",10 Style "NQ"
      @vLIN,mCLN+106 Say "Fecha"                                              Font "&mLetAri",10 Style "NQ"
      @vLIN,mCLN+119 Say ":"                                                  Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+121 Say vFEM                                                 Font "&mLetAri",10 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN     Say "Dirección"                                          Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+016 Say ":"                                                  Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+018 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP)  Font "&mLetAri",10 Style "NQ"
      @vLIN,mCLN+106 Say "Hora"                                               Font "&mLetAri",10 Style "NQ"
      @vLIN,mCLN+119 Say ":"                                                  Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+121 Say vTIM                                                 Font "&mLetAri",10 Style "NQ"
      STORE vlIn+1 TO vlIn
      DO liN_0000a WITH 93, vlIn
      STORE vlIn+1.6 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Ite_1300z
 PRIVATE plL1, plL2, plL3
 DO CASE
      CASE mpRt="1"
           STORE 18 TO vcLn
      CASE mpRt="2"
           STORE 16 TO vcLn
 ENDCASE
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
           DO CASE
                CASE mpRt="1"
                     STORE 18 TO vcLn
                CASE mpRt="2"
                     STORE 16 TO vcLn
           ENDCASE
      ENDIF
      DO CASE
           CASE vtPo=5 .AND. mpRt="1"
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,mCLN+vCLN+3 Say F1302MLA         Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,mCLN+vCLN     Say F1302P11       Font "&mLetAri",9 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+4.7 Say '"'            Font "&mLetAri",9 Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,mCLN+vCLN+5.9 Say F1302P12    Font "&mLetAri",9 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+07.4 Say "x"                   Font "&mLetAri",9 Style "NQ" Size 1,1
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,mCLN+vCLN+16 Say F1302MAN        Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,mCLN+vCLN+13.5 Say F1302P21      Font "&mLetAri",9 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+18.3 Say '"'           Font "&mLetAri",9 Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,mCLN+vCLN+19.5 Say F1302P22   Font "&mLetAri",9 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+25.5 Say "="+Str(F1302CTD,4,0) Font "&mLetAri",9 Style "NQ"
                STORE plL1+1 TO plL1
                STORE vcLn+35 TO vcLn
           CASE vtPo=5 .AND. mpRt="2"
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,mCLN+vCLN+3 Say F1302MLA         Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,mCLN+vCLN     Say F1302P11       Font "&mLetRom",11 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+4.7 Say '"'            Font "&mLetCou",9  Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,mCLN+vCLN+5.9 Say F1302P12    Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+12.4 Say "x"                   Font "&mLetRom",11 Style "BQ" Size 1,1
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
                STORE plL1+1 TO plL1
                STORE vcLn+33 TO vcLn
           CASE (vtPo=6 .OR. vtPo=8 .OR. vtPo=9) .AND. mpRt="1"
                @vLIN,mCLN+vCLN+2   Say F1302MLA               Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "="+Str(F1302CTD,4,0)  Font "&mLetAri",9 Style "NQ"
                STORE plL2+2 TO plL2
                STORE vcLn+22 TO vcLn
           CASE (vtPo=6 .OR. vtPo=8 .OR. vtPo=9) .AND. mpRt="2"
                @vLIN,mCLN+vCLN+2   Say F1302MLA               Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "="+Str(F1302CTD,4,0)  Font "&mLetRom",11 Style "NQ"
                STORE plL2+2 TO plL2
                STORE vcLn+18 TO vcLn
           CASE (vtPo=4 .OR. vtPo=7) .AND. mpRt="1"
                @vLIN,mCLN+vCLN+2   Say F1302MLA               Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "x"                    Font "&mLetRom",11 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+13  Say F1302MAN               Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20  Say "="+Str(F1302CTD,4,0)  Font "&mLetRom",11 Style "NQ"
                STORE plL3+1 TO plL3
                STORE vcLn+32 TO vcLn
           CASE (vtPo=4 .OR. vtPo=7) .AND. mpRt="2"
                @vLIN,mCLN+vCLN+2   Say F1302MLA               Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "x"                    Font "&mLetRom",11 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+13  Say F1302MAN               Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20  Say "="+Str(F1302CTD,4,0)  Font "&mLetRom",11 Style "NQ"
                STORE plL3+1 TO plL3
                STORE vcLn+28 TO vcLn
      ENDCASE
      SKIP
      DO veR_lock
 ENDDO
ENDPROC
*
PROCEDURE It2_1300z
 PRIVATE plL1, plL2, plL3
 STORE 01 TO plL1, plL2, plL3
 STORE 16 TO vcLn
 SELECT itE_fact
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
           STORE 16 TO vcLn
           IF vlIn>mpAg-3
                DO cdE_1300z
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
                          @vLIN,mCLN+vCLN+16.2 Say F1302MAN    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,mCLN+vCLN+14.2 Say F1302P21    Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,mCLN+vCLN+18.2 Say '"'         Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,mCLN+vCLN+19.4 Say F1302P22 Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+25.7 Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+28.1 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                DO CASE
                     CASE vtDo="CT"
                          STORE vcLn+42 TO vcLn
                     OTHERWISE
                          STORE vcLn+36 TO vcLn
                ENDCASE
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2    Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4  Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+12.3 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                DO CASE
                     CASE vtDo="CT"
                          STORE vcLn+22 TO vcLn
                     OTHERWISE
                          STORE vcLn+16 TO vcLn
                ENDCASE
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+09.4 Say "x"                 Font "&mLetRom",11 Style "NQ" Size 1,1
                @vLIN,mCLN+vCLN+12.8 Say F1302MAN            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20.0 Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+23.0 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                DO CASE
                     CASE vtDo="CT"
                          STORE vcLn+32 TO vcLn
                     OTHERWISE
                          STORE vcLn+26 TO vcLn
                ENDCASE
                STORE plL3+1 TO plL3
      ENDCASE
      SKIP
      DO veR_lock
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
 PUBLIC prUc, plUg, ppEs, ptPp
 DO ruC_2600z IN PAI2600Z
 DO luG_2600z IN PAI2600Z
 DO peS_2600z IN PAI2600Z
 STORE ppEs+" aprox." TO ppEs
 DO CASE
      CASE mvIs=1
           @0,0 Say Space(01)           Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+15.5 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           IF f2600td1="BO" .OR. f2600td1="FA"
                @vLIN,mCLN+46.5 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+74.5 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
           ENDIF
      CASE mpRt="1"
           @0,0 Say Space(01)           Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+15.5 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           IF f2600td1="BO" .OR. f2600td1="FA"
                @vLIN,mCLN+46.5 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+74.5 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
           ENDIF
      CASE mpRt="2"
           @0,0 Say Space(01)           Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+15.5 Say F2600FEM Font "&mLetRom",10 Style "NQ"
           IF f2600td1="BO" .OR. f2600td1="FA"
                @vLIN,mCLN+46.5 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+74.5 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
           ENDIF
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+15.5 Say F2600NOM Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+15.5 Say F2600NOM Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+15.5 Say F2600NOM Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+15.5 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+15.5 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+15.5 Say AllTrim(F2600DIR)+", "+AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+15.5 Say pRUC     Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+67.8 Say F2600FEM Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+15.5 Say pRUC     Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+67.8 Say F2600FEM Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+15.5 Say pRUC     Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+67.8 Say F2600FEM Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.35 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+16 Say F2600CM1              Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+80 Say F2600SER+"-"+F2600DOC Font "&mLetRom",9  Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+16 Say F2600CM1              Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+80 Say F2600SER+"-"+F2600DOC Font "&mLetRom",9  Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+16 Say F2600CM1              Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+80 Say F2600SER+"-"+F2600DOC Font "&mLetRom",9  Style "NQ"
 ENDCASE
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mvIs=1
           @vLIN,mCLN+32.5 Say AllTrim(vADI)+", "+AllTrim(vADS)        Font "&mLetRom",10 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mpRt="1"
           @vLIN,mCLN+32.5 Say AllTrim(vADI)+", "+AllTrim(vADS)        Font "&mLetRom",10 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mpRt="2"
           @vLIN,mCLN+32.5 Say AllTrim(vADI)+", "+AllTrim(vADS)        Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mvIs=1
           @vLIN,mCLN+32.5 Say pLUG Font "&mLetRom",10 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mpRt="1"
           @vLIN,mCLN+32.5 Say pLUG Font "&mLetRom",10 Style "NQ"
      CASE LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5 .AND. mpRt="2"
           @vLIN,mCLN+32.5 Say pLUG Font "&mLetRom",10 Style "NQ"
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
 STORE vlIn+0.1 TO vlIn
 DO CASE
      CASE f2600mot=13 .AND. mvIs=1
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=13 .AND. mpRt="1"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=13 .AND. mpRt="2"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+12 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
           IF f2600pes<>0
                @vLIN,mCLN+53 Say pPES Font "&mLetRom",10 Style "NQ"
           ENDIF
      CASE mpRt="1"
           @vLIN,mCLN+12 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
           IF f2600pes<>0
                @vLIN,mCLN+53 Say pPES Font "&mLetRom",10 Style "NQ"
           ENDIF
      CASE mpRt="2"
           @vLIN,mCLN+12 Say F2600LC1 Font "&mLetRom",10 Style "NQ"
           IF f2600pes<>0
                @vLIN,mCLN+53 Say pPES Font "&mLetRom",10 Style "NQ"
           ENDIF
 ENDCASE
 STORE vlIn+0.1 TO vlIn
 DO CASE
      CASE f2600mot=1 .AND. mvIs=1
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=7 .AND. mvIs=1
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=1 .AND. mpRt="1"
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=7 .AND. mpRt="1"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=1 .AND. mpRt="2"
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=7 .AND. mpRt="2"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.2 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+26 Say F2600TNO Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+26 Say F2600TNO Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+26 Say F2600TNO Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+0.25 TO vlIn
 DO CASE
      CASE f2600mot=6 .AND. mvIs=1
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE (f2600mot=2 .OR. f2600mot=3) .AND. mvIs=1
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=6 .AND. mpRt="1"
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE (f2600mot=2 .OR. f2600mot=3) .AND. mpRt="1"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=6 .AND. mpRt="2"
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE (f2600mot=2 .OR. f2600mot=3) .AND. mpRt="2"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+11 Say F2600TRU          Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+56 Say AllTrim(F2600CIM) Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+11 Say F2600TRU          Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+56 Say AllTrim(F2600CIM) Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+11 Say F2600TRU          Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+56 Say AllTrim(F2600CIM) Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+0.35 TO vlIn
 DO CASE
      CASE f2600mot=8 .AND. mvIs=1
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=12 .AND. mvIs=1
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=8 .AND. mpRt="1"
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=12 .AND. mpRt="1"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=8 .AND. mpRt="2"
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=12 .AND. mpRt="2"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.05 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+11 Say F2600MR1 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PLA Font "&mLetRom",10 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+11 Say F2600MR1 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PLA Font "&mLetRom",10 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+11 Say F2600MR1 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PLA Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+0.25 TO vlIn
 DO CASE
      CASE f2600mot=11 .AND. mvIs=1
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=10 .AND. mvIs=1
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=11 .AND. mpRt="1"
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=10 .AND. mpRt="1"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=11 .AND. mpRt="2"
           @vLIN,mCLN+100.70 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=10 .AND. mpRt="2"
           @vLIN,mCLN+122.05 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.25 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+11 Say F2600MR2 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PL2 Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=4
                     @vLIN,mCLN+100.70 Say "x"               Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=5
                     @vLIN,mCLN+122.05 Say "x"               Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+132.90 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="1"
           @vLIN,mCLN+11 Say F2600MR2 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PL2 Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=4
                     @vLIN,mCLN+100.70 Say "x"               Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=5
                     @vLIN,mCLN+122.05 Say "x"               Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+132.90 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      CASE mpRt="2"
           @vLIN,mCLN+11 Say F2600MR2 Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+52 Say F2600PL2 Font "&mLetRom",10 Style "NQ"
           DO CASE
                CASE f2600mot=4
                     @vLIN,mCLN+100.70 Say "x"               Font "&mLetRom",10 Style "NQ"
                CASE f2600mot=5
                     @vLIN,mCLN+122.05 Say "x"               Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+132.90 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
           ENDCASE
 ENDCASE
 STORE vlIn+3.8 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 IF RLOCK()
      UNLOCK
 ENDIF
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
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 DO CASE
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mvIs=1
           @vLIN,mCLN+25 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mpRt="1"
           @vLIN,mCLN+25 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
      CASE LEN(ALLTRIM(f2600cm2))<>0 .AND. mpRt="2"
           @vLIN,mCLN+25 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
 ENDCASE
 STORE vlIn+1 TO vlIn
 DO CASE
      CASE mvIs=1
           @vLIN,mCLN+151 Say "("+mCOD+")" Font "&mLetRom",9  Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+151 Say "("+mCOD+")" Font "&mLetRom",9  Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+151 Say "("+mCOD+")" Font "&mLetRom",9  Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
