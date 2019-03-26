*
PROCEDURE Fac_1300z
 PUBLIC pdIr, pdIs, puNi
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 DO CASE
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp))<=65
           STORE " " TO pdIs
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs))<=65
           STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs) TO pdIr
           STORE "Dpto:"+SUBSTR(ALLTRIM(vdEp), 1, 35) TO pdIs
      OTHERWISE
           STORE ALLTRIM(vdIr) TO pdIr
           STORE "Dist/Dpt:"+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 ENDCASE
 @0,0          Say " "  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+07 Say vFEM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+07 Say vNOM Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+07 Say pDIR Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+07 Say vRUC Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+35 Say pDIS Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(f1300cm1))<=30
      @vLIN,mCLN+35 Say F1300CM1 Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+008 Say F1300NVE              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+065 Say F1300NFP              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+126 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",10 Style "NQ"
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
                @vLIN,mCLN+0.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+0.0 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+14     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+26 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123.4 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+140.9 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z IN FACLIMAT
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
 IF LEN(ALLTRIM(f1300cm1))>30
      @vLIN,mCLN+16 Say F1300CM1 Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+16 Say F1300CM2       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN Say vFRA+" S.E.u.O."  Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3 TO vlIn
 @vLIN,mCLN+037 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+046 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+063 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+069 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+085 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+092 Say F1300NET      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+107 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+110 Say F1300IGV      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+127 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+136 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr, pdIs, puNi
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, piTe, puLi
 @vLIN,mCLN+007 Say vFEM                             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+090 Say F1300TIM                         Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+007 Say vNOM                             Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+088 Say vDNI                             Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+007 Say vDIR                             Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+088 Say vCM1                             Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+007 Say AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+120 Say vSER+"-"+vDOC                    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.8 TO vlIn
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
                     @vLIN,mCLN+5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+19 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDCASE
      @vLIN,mCLN+29 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123.9 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+141.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
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
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+006.0 Say vFRA                 Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 @vLIN,mCLN+142.5 Say F1300TOT-tVAL        Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+142.5 Say tVAL                 Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012.0 Say vNFP                 Font "&mLetRom",10 Style "NQ" Size 1,10
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+135.5 Say vSIG                 Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142.5 Say F1300TOT             Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+1.0 TO vlIn
 @vLIN,mCLN+012.0 Say vTCA                 Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 RELEASE puNi, pdIr, piTe, puLi
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Lima"
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC puNi, pmEs
 DO np1_1300z
 DO np1_1300z
 RELEASE puNi, pmEs
ENDPROC
*
PROCEDURE Np1_1300z
 STORE 00 TO vlIn
 DO cnP_1300z
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN     Say "Nombre:"        Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "BQ"
 DO feC_1300z IN FAC0000A WITH vlIn, 120
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Dirección:"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Telefono:"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21 Say vTEL              Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
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
                @vLIN,mCLN+27 Say vCOD+":" Font "&mLetRom",10 Style "NQ"
      ENDCASE
      DO pc2_1300z IN FAC0000A
      @vLIN,mCLN+45 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      IF vtOt<>0
           @vLIN,mCLN+119.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+130.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+44 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO cnP_1300z
           ENDIF
           @vLIN,mCLN Say "Medidas:" Font "&mLetRom",11 Style "NQ"
           STORE vlIn+0.3 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z
           ENDIF
           DO itE_1300z IN FACLIMAT
           STORE vlIn+1.5 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO cnP_1300z
 ENDIF
 @vLIN,mCLN+73 Say "Sub-Total:"   Font "&mLetAri",9  Style "BQ"
 @vLIN,mCLN+87 Say tVAL           Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+102 Say "Red."     Font "&mLetAri",9  Style "BQ"
 ELSE
      @vLIN,mCLN+102 Say "Dcto.:"   Font "&mLetAri",9  Style "BQ"
 ENDIF
 @vLIN,mCLN+111 Say F1300TOT-tVAL Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
 @vLIN,mCLN+128 Say vSIG          Font "&mLetAri",9  Style "BQ"
 @vLIN,mCLN+133 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cnp_1300z
 STORE 00 TO vlIn
 @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Let_3110z
ENDPROC
*
PROCEDURE Deb_3610z
ENDPROC
*
PROCEDURE Cre_3610z
 SELECT caB_nota
 @0,0 Say Space(01)                       Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+018 Say vNOM                  Font "&mLetRom",11 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+125 Say "("+vSER+"-"+vDOC+")" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+018 Say vRUC                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+100 Say F3610CM1              Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+025 Say vFEM                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+100 Say F3610CM2              Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+4.3 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+04 Say F3611DES     Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S100"
      IF f3611tot<>0
           @vLIN,mCLN+138 Say F3611TOT Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.8 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+14 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+133 Say vSIG                    Font "&mLetSwi",9  Style "NQ"
 @vLIN,mCLN+138 Say tNET                    Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+133 Say vSIG                    Font "&mLetSwi",9  Style "NQ"
 @vLIN,mCLN+138 Say F3610IGV                Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+133 Say vSIG                    Font "&mLetSwi",9  Style "NQ"
 @vLIN,mCLN+138 Say tTOT                    Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
PROCEDURE Des_1300z
 PRIVATE pdEs, pdC1, pdC2, puNi
 STORE 00 TO vpAg, vlIn
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      SELECT deT_fact
      DO CASE
           CASE piMp="*" .AND. (ptP1=SUBSTR(vcOd, 1, 1) .OR. ptP2= ;
                SUBSTR(vcOd, 1, 1) .OR. ptP3=SUBSTR(vcOd, 1, 1) .OR. ptP4= ;
                SUBSTR(vcOd, 1, 1))
                SKIP
                LOOP
           CASE piMp<>SUBSTR(vcOd, 1, 1) .AND. piMp<>"*"
                SKIP
                LOOP
      ENDCASE
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      IF vmD3=2
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      DO CASE
           CASE vlIn=0 .OR. vpAg=0
                DO cdE_1300z
                DO cd1_1300z
           CASE vlIn>mpAg-3
                DO cdE_1300z
      ENDCASE
      SELECT deT_fact
      DO CASE
           CASE vtPo=2
                STORE f1301pie TO vcAn
           OTHERWISE
                STORE f1301can TO vcAn
      ENDCASE
      DO CASE
           CASE vcAn=1 .AND. f1301to2=0
                STORE " " TO puNi
           CASE INT(vcAn)<>vcAn
                STORE f1301nuv TO puNi
                @vLIN,mCLN+7.5 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,15 Pict "999,999.9999"
           OTHERWISE
                STORE f1301nuv TO puNi
                @vLIN,mCLN+8.0 Say vCAN Font "&mLetRom",12 Style "NQ" Size 1,9  Pict "999,999"
      ENDCASE
      @vLIN,mCLN Say pUNI Font "&mLetRom",12 Style "NQ" Size 1,6  Pict "@S6"
      STORE ALLTRIM(f1301dcr)+" "+clAr TO pdEs
      IF LEN(ALLTRIM(pdEs))<=40
           @vLIN,mCLN+28 Say pDES Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
      ELSE
           STORE SUBSTR(pdEs, 01, 040) TO pdC1
           STORE SUBSTR(pdEs, 41, 100) TO pdC2
           IF RAT(" ", pdC1)=0
                @vLIN,mCLN+28 Say pDC1 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-3
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+28 Say pDC2 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ELSE
                STORE SUBSTR(pdC1, 1, RAT(" ", pdC1)) TO pdC1
                STORE SUBSTR(pdEs, LEN(ALLTRIM(pdC1))+1, 100) TO pdC2
                STORE ALLTRIM(pdC1) TO pdC1
                STORE ALLTRIM(pdC2) TO pdC2
                @vLIN,mCLN+28 Say pDC1 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-3
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+28 Say pDC2 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      SELECT deT_fact
      DO CASE
           CASE piMp="*" .AND. (ptP1=SUBSTR(vcOd, 1, 1) .OR. ptP2= ;
                SUBSTR(vcOd, 1, 1) .OR. ptP3=SUBSTR(vcOd, 1, 1) .OR. ptP4= ;
                SUBSTR(vcOd, 1, 1))
                SKIP
                LOOP
           CASE piMp<>SUBSTR(vcOd, 1, 1) .AND. piMp<>"*"
                SKIP
                LOOP
      ENDCASE
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      IF vmD3=2
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      DO CASE
           CASE vlIn=0 .OR. vpAg=0
                DO cdE_1300z
                DO cd1_1300z
           CASE vlIn>mpAg-3
                DO cdE_1300z
      ENDCASE
      SELECT deT_fact
      IF vcTd=0
           STORE f1301can TO vcTd
           STORE f1301nuv TO puNi
      ELSE
           STORE "Pzas" TO puNi
      ENDIF
      IF INT(vcTd)<>vcTd
           @vLIN,mCLN+7.5 Say vCTD Font "&mLetRom",12 Style "NQ" Size 1,15 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+8.0 Say vCTD Font "&mLetRom",12 Style "NQ" Size 1,9  Pict "999,999"
      ENDIF
      @vLIN,mCLN        Say pUNI Font "&mLetRom",12 Style "NQ" Size 1,7  Pict "@S7"
      STORE ALLTRIM(f1301dcr)+" "+clAr TO pdEs
      IF LEN(ALLTRIM(pdEs))<=40
           @vLIN,mCLN+28 Say pDES Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
      ELSE
           STORE SUBSTR(pdEs, 01, 040) TO pdC1
           STORE SUBSTR(pdEs, 41, 100) TO pdC2
           IF RAT(" ", pdC1)=0
                @vLIN,mCLN+28 Say pDC1 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-3
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+28 Say pDC2 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ELSE
                STORE SUBSTR(pdC1, 1, RAT(" ", pdC1)) TO pdC1
                STORE SUBSTR(pdEs, LEN(ALLTRIM(pdC1))+1, 100) TO pdC2
                STORE ALLTRIM(pdC1) TO pdC1
                STORE ALLTRIM(pdC2) TO pdC2
                @vLIN,mCLN+28 Say pDC1 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                IF LEN(ALLTRIM(pdC2))<>0
                     STORE vlIn+1.3 TO vlIn
                     IF vlIn>mpAg-3
                          DO cdE_1300z
                     ENDIF
                     @vLIN,mCLN+28 Say pDC2 Font "&mLetRom",12 Style "NQ" Size 1,60 Pict "@S60"
                ENDIF
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO cdE_1300z
      ENDIF
      @vLIN,mCLN+4 Say "MED:" Font "&mLetAri",8 Style "NQ"
      DO itE_1300z
      STORE vlIn+1.5 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 RELEASE pdEs, pdC1, pdC2, puNi
ENDPROC
*
PROCEDURE Cde_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN    Say mRZ1                     Font "&mLetAri",12 Style "NQ"
 @vLIN,mCLN+70 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetAri",12 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE piMp="V"
           @vLIN,mCLN+73 Say "Vidrios"  Font "&mLetRom",13 Style "BQ"
      CASE piMp="A"
           @vLIN,mCLN+69 Say "Aluminio" Font "&mLetRom",13 Style "BQ"
      OTHERWISE
           @vLIN,mCLN+74 Say "Varios"   Font "&mLetRom",13 Style "BQ"
 ENDCASE
 STORE vlIn+2 TO vlIn
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "Orden de Despacho de Factura No."+vSER+"-"+vDOC Font "&mLetAri",12 Style "NQU"
      CASE vtDo="BO"
           @vLIN,mCLN Say "Orden de Despacho de Boleta No." +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQU"
      CASE vtDo="NP"
           @vLIN,mCLN Say "PROFORMA No." +vSER+"-"+vDOC                    Font "&mLetAri",12 Style "NQU"
 ENDCASE
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Cd1_1300z
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN     Say "Cliente"       Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+14  Say vNOM            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+63  Say "Hora"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+71  Say ":"             Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+73  Say vTIM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Vendedor"      Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+12  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+14  Say vNVE            Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+63  Say "Fecha"         Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+71  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+73  Say vFEM            Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Observaciones" Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+18  Say ":"             Font "&mLetAri",9 Style "BT"
 @vLIN,mCLN+20  Say vCM1            Font "&mLetAri",9 Style "NT"
 IF LEN(ALLTRIM(vcM2))<>0
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN Say vCM2             Font "&mLetAri",9 Style "NT"
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",65)  Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Unid"         Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+12  Say "Cantidad"     Font "&mLetAri",11 Style "NQ"
 @vLIN,mCLN+28  Say "Descripción"  Font "&mLetAri",11 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",65)  Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Ite_1300z
 PUBLIC plL1, plL2, plL3, pxL1, pxL2, pxL3
 STORE 2 TO pxL1
 STORE 3 TO pxL2
 STORE 2 TO pxL3
 SELECT itE_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 STORE 13 TO vcLn
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>pxL1 .OR. plL2>pxL2 .OR. plL3>pxL3
           STORE vlIn+1.3 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 13 TO vcLn
           IF vlIn>mpAg-3
                DO cdE_1300z
           ENDIF
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,mCLN+vCLN+3 Say F1302MLA         Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,mCLN+vCLN+0.0 Say F1302P11       Font "&mLetRom",12 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+4.7 Say '"'            Font "&mLetCou",9 Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,mCLN+vCLN+5.9 Say F1302P12    Font "&mLetRom",12 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+11.4 Say "x"                   Font "&mLetRom",12 Size 1,1 Style "BQ"
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,mCLN+vCLN+16 Say F1302MAN        Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,mCLN+vCLN+13.5 Say F1302P21      Font "&mLetRom",12 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+18.3 Say '"'           Font "&mLetCou",9 Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,mCLN+vCLN+19.5 Say F1302P22   Font "&mLetRom",12 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+24.5 Say "="+Str(F1302CTD,4,0) Font "&mLetRom",12 Style "NQ"
                STORE vcLn+33 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F1302MLA               Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+10.4 Say "x"                    Font "&mLetRom",12 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+14.5 Say F1302MAN               Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+23.0 Say "= "+Str(F1302CTD,4,0) Font "&mLetRom",12 Style "NQ"
                STORE vcLn+31 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2   Say F1302MLA               Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "="+Str(F1302CTD,4,0)  Font "&mLetRom",12 Style "NQ"
                STORE vcLn+18 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=11
                @vLIN,mCLN+vCLN+02.0 Say F1302CA1              Font "&mLetRom",12 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+05.0 Say F1302MLA              Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+12.4 Say "x"                   Font "&mLetRom",12 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+16.0 Say F1302CA2              Font "&mLetRom",12 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+19.0 Say F1302MAN              Font "&mLetRom",12 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+26.0 Say "="+Str(F1302CTD,4,0) Font "&mLetRom",12 Style "NQ"
                STORE vcLn+34 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3, pxL1, pxL2, pxL3
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, ppEs
 DO ruC_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 STORE ppEs+" aprox." TO ppEs
 @0,0            Say Space(01)                                 Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+34.0 Say Substr(Dtoc(F2600FEM),1,2)                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+43.5 Say Substr(Dtoc(F2600FEM),4,2)                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+53.5 Say Substr(Dtoc(F2600FEM),7,4)                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+70.5 Say "("+vSER+"-"+vDOC+")"                     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.10 TO vlIn
 IF LEN(ALLTRIM(f2600lug))<>0
      @vLIN,mCLN+82.0 Say AllTrim(F2600LUG)                      Font "&mLetRom",12 Style "NQ"
 ELSE
      @vLIN,mCLN+82.0 Say AllTrim(F2600DIR)                      Font "&mLetRom",12 Style "NQ"
 ENDIF
 STORE vlIn+0.20 TO vlIn
 @vLIN,mCLN+07.5 Say vADI                                      Font "&mLetRom",12 Style "NQ"
 STORE vlIn+1.40 TO vlIn
 IF LEN(ALLTRIM(f2600lug))<>0
      @vLIN,mCLN+82 Say AllTrim(F2600LUD)+", "+AllTrim(F2600LUP) Font "&mLetRom",12 Style "NQ"
 ELSE
      @vLIN,mCLN+82 Say AllTrim(F2600DIS)+", "+AllTrim(F2600DEP) Font "&mLetRom",12 Style "NQ"
 ENDIF
 STORE vlIn+0.40 TO vlIn
 @vLIN,mCLN+07.5 Say AllTrim(vADS)                             Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.60 TO vlIn
 @vLIN,mCLN+82.0 Say F2600NOM                                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+0.30 TO vlIn
 @vLIN,mCLN+20.5 Say F2600FEM                                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.40 TO vlIn
 @vLIN,mCLN+91.5 Say pRUC                                      Font "&mLetRom",11 Style "NQ"
 STORE vlIn+4.00 TO vlIn
 @vLIN,mCLN+27.5 Say AllTrim(F2600PLA)+" / "+AllTrim(F2600MR1) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+81.5 Say F2600TNO                                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.50 TO vlIn
 @vLIN,mCLN+27.5 Say F2600LC1                                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+91.5 Say F2600TRU                                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+4.0 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      @vLIN,mCLN+017 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      @vLIN,mCLN+122 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
      DO CASE
           CASE INT(f2601can)=f2601can
                @vLIN,mCLN+106.0 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999"     Size 1,8
           OTHERWISE
                @vLIN,mCLN+107   Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
      ENDCASE
      STORE vlIn+1.9 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+103.5 Say F2600TD1              Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+123.5 Say F2600FFA              Font "&mLetRom",11 Style "NQ"
      STORE vlIn+1.7 TO vlIn
      @vLIN,mCLN+103.5 Say F2600SR1+"-"+F2600DO1 Font "&mLetRom",11 Style "NQ"
 ENDIF
 RELEASE prUc, ppEs
ENDPROC
*
