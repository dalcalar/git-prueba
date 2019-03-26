*
PROCEDURE Fac_1300z
 PUBLIC puNi, pfEm, pmEs
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 @vLIN,mCLN+12  Say vNOM                                                Font "&mLetRom",10 Style "BQI" Size 1,52 Pict "@S52"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+12  Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",10 Style "NQ"  Size 1,52 Pict "@S52"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+09  Say vRUC                                                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+44  Say vCM1                                                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+95  Say Substr(Dtoc(vFEM),1,2)                              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+112 Say pMES                                                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say Substr(Dtoc(vFEM),9,1)                              Font "&mLetRom",11 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.8 TO vlIn
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
                @vLIN,mCLN+1 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+0 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN+17 Say pUNI   Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetAri",9 Style "NQ" Size 1,60  Pict "@S60"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+114 Say vPRE                   Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+136 Say vTOT                   Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z IN FAC0000A
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+11  Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+136 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+136 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+121 Say F1300PIG         Font "&mLetAri",9  Style "NQ" Size 1,04 Pict "99"
 @vLIN,mCLN+136 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+123 Say vSIG             Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+136 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 RELEASE puNi, pfEm, pmEs
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pfEm, pmEs
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 @vLIN,mCLN+12  Say vNOM                                                Font "&mLetRom",10 Style "BQI" Size 1,52 Pict "@S52"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+12  Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",10 Style "NQ"  Size 1,52 Pict "@S52"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+09  Say vDNI                                                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+95  Say Substr(Dtoc(vFEM),1,2)                              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+112 Say pMES                                                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say Substr(Dtoc(vFEM),9,1)                              Font "&mLetRom",11 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.8 TO vlIn
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
                @vLIN,mCLN+1 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+0 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN+17 Say pUNI   Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetAri",9 Style "NQ" Size 1,60  Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+114 Say vPRE                   Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+136 Say vTOT                   Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z IN FAC0000A
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 IF tvAl<>f1300tot
      @vLIN,mCLN+122 Say "Sub-Total:"         Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+138 Say tVAL                 Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+26 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 IF tvAl<>f1300tot
      IF tvAl<f1300tot
           @vLIN,mCLN+122 Say "Redondeo:"       Font "&mLetRom",10 Style "NQ"
      ELSE
           @vLIN,mCLN+122 Say "Dcto:"           Font "&mLetRom",10 Style "NQ"
      ENDIF
      @vLIN,mCLN+138.2 Say F1300TOT-tVAL      Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
 ENDIF
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+133 Say vSIG                    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+138 Say F1300TOT                Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Npe_1300z
ENDPROC
*
PROCEDURE Cot_1300z
ENDPROC
*
PROCEDURE Des_1300z
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
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
PROCEDURE Ite_1300z
 PARAMETER ptDo
 PRIVATE plL1, plL2, plL3
 STORE 01 TO plL1, plL2, plL3
 DO CASE
      CASE ptDo="CT"
           STORE 12 TO vcLn
      OTHERWISE
           STORE 16 TO vcLn
 ENDCASE
 SELECT itE_fact
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
                CASE ptDo="CT"
                     STORE 12 TO vcLn
                OTHERWISE
                     STORE 16 TO vcLn
           ENDCASE
           DO CASE
                CASE ptDo="NP" .AND. vlIn>mpAg-3
                     DO cnP_1300z
                CASE ptDo="DE" .AND. vlIn>mpAg-3
                     DO cdE_1300z
                CASE ptDo="CT" .AND. vlIn>mpAg-3
                     DO ccO_1300z WITH "2"
           ENDCASE
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
                @vLIN,mCLN+vCLN+24.7 Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+27.1 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                STORE vcLn+42 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2    Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4  Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+12.3 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                STORE vcLn+22 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+09.4 Say "x"                 Font "&mLetRom",11 Style "NQ" Size 1,1
                @vLIN,mCLN+vCLN+12.8 Say F1302MAN            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20.0 Say "="                 Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+vCLN+23.0 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
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
