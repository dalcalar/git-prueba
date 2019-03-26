*
PROCEDURE Fac_1300z
 PUBLIC pdIr, puNi, pfEm, pmEs, pdOc
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 STORE SUBSTR(DTOC(vfEm), 1, 2)+pmEs+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
 @vLIN,mCLN+010 Say pFEM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+017 Say vNOM              Font "&mLetRom",10 Style "NQ" Pict "@S50" Size 1,52
 @vLIN,mCLN+122 Say vRUC              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.85 TO vlIn
 @vLIN,mCLN+017 Say pDIR              Font "&mLetRom",10 Style "NQ" Pict "@S50" Size 1,52
 @vLIN,mCLN+122 Say Substr(vCM1,1,30) Font "&mLetRom",10 Style "NQ" Pict "@S30"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+019 Say Substr(vCM2,1,30) Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+132 Say pDOC              Font "&mLetRom",10 Style "NQ"
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
                @vLIN,mCLN+7.1 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+6.2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+21     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "@S9"
      ENDIF
      @vLIN,mCLN+31 Say F1301DCR    Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+114 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+138 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.99"
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
      @vLIN,mCLN+31.0 Say mFR1          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+31.0 Say mFR2          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+31.0 Say " "           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+31.0 Say " "           Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+20.5 Say "Son:"+vFRA      Font "&mLetRom",10 Style "NQ" Pict "@S100" Size 1,100
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+134 Say tVAL              Font "&mLetRom",11 Style "BQ" Pict "999,999.99" Size 1,13
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+134 Say F1300NET-tVAL     Font "&mLetRom",11 Style "BQ" Pict "999,999.99" Size 1,13
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN+026 Say F1300NFP          Font "&mLetRom",9  Style "NQ" Pict "@S15"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+121 Say F1300PIG          Font "&mLetRom",10 Style "NQ" Pict "99"         Size 1,03
 @vLIN,mCLN+134 Say F1300IGV          Font "&mLetRom",11 Style "BQ" Pict "999,999.99" Size 1,13
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+026 Say F1300FEM+F1300DIA Font "&mLetRom",9  Style "NQ" Pict "@S10"
 @vLIN,mCLN+126 Say vSIG              Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+134 Say F1300TOT          Font "&mLetRom",11 Style "BQ" Pict "999,999.99" Size 1,13
 RELEASE pdIr, puNi, pfEm, pmEs, pdOc
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr, pdOc
 DO diR_1300z IN FAC0000A
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 @vLIN,mCLN+092 Say pDOC Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+018 Say vNOM Font "&mLetRom",10 Style "NQ" Pict "@S60" Size 1,62
 @vLIN,mCLN+137 Say vFEM Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+021 Say pDIR Font "&mLetRom",10 Style "NQ" Pict "@S60" Size 1,62
 @vLIN,mCLN+137 Say vDNI Font "&mLetRom",10 Style "NQ"
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
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+12.3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+11.5 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+26      Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+36 Say F1301DCR     Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+126 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+145 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+25 Say "Son:"+vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Pict "@S100" Size 1,100
 STORE vlIn+1.5 TO vlIn
 IF tvAl<>f1300tot
      IF tvAl<f1300tot
           @vLIN,mCLN+126 Say "Red.:"    Font "&mLetRom",10 Style "NQ"
      ELSE
           @vLIN,mCLN+126 Say "Dcto.:"   Font "&mLetRom",10 Style "NQ"
      ENDIF
      @vLIN,mCLN+141 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF f1300mon=2
      @vLIN,mCLN+134 Say vSIG          Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+141 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Pict "999,999.99" Size 1,13
 RELEASE puNi, pdIr, pdOc
ENDPROC
*
PROCEDURE Npe_1300z
 DO dsP_1300z IN FAC0000A WITH "N"
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Lima"
ENDPROC
*
PROCEDURE Des_1300z
 IF vsEr="001"
      STORE 38 TO mpAg
      DO de1_1300z WITH "V", " ", " ", " ", " "
      DO de1_1300z WITH "A", " ", " ", " ", " "
      DO fpR_0001a
      DO de1_1300z WITH "*", "V", "A", " ", " "
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE De1_1300z
 PARAMETER piMp, ptP1, ptP2, ptP3, ptP4
 STORE 00 TO vpAg, vlIn
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO itE_1300z WITH "1"
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
      DO CASE
           CASE vlIn=0 .AND. vpAg=0
                DO cdE_1300z WITH piMp
                DO cd1_1300z
           CASE vlIn>mpAg-3
                DO cdE_1300z WITH piMp
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
           CASE INT(vcAn)<>vcAn
                @vLIN,mCLN+2  Say vCAN     Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                @vLIN,mCLN+16 Say F1301NUV Font "&mLetSwi",9 Style "NQ" Size 1,7  Pict "@S7"
           OTHERWISE
                @vLIN,mCLN+1  Say vCAN     Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
                @vLIN,mCLN+16 Say F1301NUV Font "&mLetSwi",9 Style "NQ" Size 1,7  Pict "@S7"
      ENDCASE
      @vLIN,mCLN+27 Say F1301DCR         Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO itE_1300z WITH "1"
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
      DO CASE
           CASE vlIn=0 .AND. vpAg=0
                DO cdE_1300z WITH piMp
                DO cd1_1300z
           CASE vlIn>mpAg-3
                DO cdE_1300z WITH piMp
      ENDCASE
      SELECT deT_fact
      IF vcTd=0
           STORE f1301can TO vcTd
           @vLIN,mCLN+16 Say F1301NUV Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
      ELSE
           @vLIN,mCLN+16 Say "Piezas" Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
      ENDIF
      IF INT(vcTd)<>vcTd
           @vLIN,mCLN+2 Say vCTD      Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+1 Say vCTD      Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
      ENDIF
      @vLIN,mCLN+27 Say F1301DCR    Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN Say "Medidas:"                    Font "&mLetSwi",9 Style "NQ"
      STORE vlIn+0.3 TO vlIn
      IF vlIn>mpAg-3
           DO cdE_1300z WITH piMp
      ENDIF
      DO itE_1300z WITH "2"
      STORE vlIn+1.3 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
ENDPROC
*
PROCEDURE Cde_1300z
 PARAMETER piMp
 IF (mcIa="LT" .OR. mcIa="LC") .AND. vpAg=0 .AND. piMp="*"
      STORE 99 TO mkEy
      STORE "S" TO moPc
      DO ipR_0001a WITH "D1"
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           RETURN
      ENDIF
 ENDIF
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN Say mRZ1                   Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE piMp="V"
           @vLIN,mCLN+135 Say "Vidrios"  Font "&mLetAri",9 Style "NQ"
      CASE piMp="A"
           @vLIN,mCLN+135 Say "Aluminio" Font "&mLetAri",9 Style "NQ"
      OTHERWISE
           @vLIN,mCLN+135 Say "Varios"   Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE vlIn+2 TO vlIn
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
PROCEDURE Cd1_1300z
 @vLIN,mCLN+106 Say "Hora"         Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"            Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vTIM           Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Cliente"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+19  Say ":"            Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say vNOM           Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "Fecha"        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"            Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vFEM           Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+106 Say "Vendedor"     Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+118 Say ":"            Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+120 Say vNVE           Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4   Say "Cantidad"     Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+16  Say "Med/Uni"      Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+27  Say "Descripción"  Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Let_3110z
 PRIVATE pdIr, paDi, pfRa, prF1, prF2, prF3, pnO1, pnO2, prUc, paRu
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
 @vLIN,mCLN+049.5 Say pRF1                       Font "&mLetAri",8  Style "NQ"
 STORE vlIn+000.7 TO vlIn
 @vLIN,mCLN+034.0 Say F3110LET                   Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+049.5 Say pRF3                       Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+077.0 Say "LIMA"                     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+140.0 Say vSIG                       Font "&mLetRom",10 Style "NQ" Size 1,5.1
 @vLIN,mCLN+147.0 Say F3110TOT                   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+000.3 TO vlIn
 @vLIN,mCLN+049.5 Say pRF2                       Font "&mLetAri",8  Style "NQ"
 @vLIN,mCLN+095.0 Say Substr(Dtoc(F3110FEM),7,4) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+102.5 Say Substr(Dtoc(F3110FEM),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+108.0 Say Substr(Dtoc(F3110FEM),1,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+117.5 Say Substr(Dtoc(F3110FVE),7,4) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+125.0 Say Substr(Dtoc(F3110FVE),4,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+130.0 Say Substr(Dtoc(F3110FVE),1,2) Font "&mLetRom",10 Style "NQ"
 STORE vlIn+006.7 TO vlIn
 @vLIN,mCLN+032.0 Say pFRA                       Font "&mLetRom",10 Style "NQ" Size 1,82 Pict "@S84"
 STORE vlIn+003.6 TO vlIn
 @vLIN,mCLN+040.0 Say pNO1                       Font "&mLetRom",10 Style "NQ" Size 1,48 Pict "@S50"
 STORE vlIn+002.2 TO vlIn
 @vLIN,mCLN+040.0 Say pNO2                       Font "&mLetRom",9  Style "NQ" Size 1,62 Pict "@S62"
 STORE vlIn+001.8 TO vlIn
 @vLIN,mCLN+041.0 Say pRUC                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+070.0 Say F3110TEL                   Font "&mLetRom",10 Style "NQ"
 STORE vlIn+001.7 TO vlIn
 IF LEN(pdIr)>46
      @vLIN,mCLN+41 Say pDIR                       Font "&mLetRom",9  Style "NQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+41 Say pDIR                       Font "&mLetRom",10 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+3.1 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+39 Say F3110ANO                   Font "&mLetRom",9  Style "NQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+39 Say F3110ANO                   Font "&mLetRom",10 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+03.6 TO vlIn
 @vLIN,mCLN+41.0 Say pARU                        Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+70.0 Say F3110ATL                    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.7 TO vlIn
 IF LEN(paDi)>46
      @vLIN,mCLN+41 Say pADI                       Font "&mLetRom",9  Style "NQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+41 Say pADI                       Font "&mLetRom",10 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 RELEASE pdIr, paDi, pfRa, prF1, prF2, prF3, pnO1, pnO2, prUc, paRu
ENDPROC
*
PROCEDURE Cre_3610z
ENDPROC
*
PROCEDURE Deb_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, ppAr, plUg, puNi, pdIs, pfAc
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE ppEs+" aprox." TO ppEs
 STORE ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIs
 STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pfAc
 @vLIN,mCLN+016 Say F2600FEM              Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+071 Say F2600CM1              Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+16 Say F2600NOM               Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+16 Say AllTrim(F2600DIR)      Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+16 Say pDIS                   Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+16 Say pRUC                   Font "&mLetRom",9 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+038 Say pFAC               Font "&mLetRom",8 Style "NQ"
      @vLIN,mCLN+072 Say F2600FFA           Font "&mLetRom",8 Style "NQ"
 ENDIF
 @vLIN,mCLN+133 Say F2600SER+"-"+F2600DOC Font "&mLetRom",8 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+18 Say pPAR                   Font "&mLetRom",8 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+18 Say pLUG                   Font "&mLetRom",8 Style "NQ"
 STORE vlIn+1.40 TO vlIn
 @vLIN,mCLN+18 Say F2600TNO               Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+18 Say F2600TDI               Font "&mLetRom",9 Style "NQ"
 IF f2600mot=1
      @vLIN,mCLN+78 Say "x"                 Font "&mLetRom",9 Style "NQ"
 ENDIF
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+18 Say F2600TDS               Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+18 Say F2600TRU               Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+29 Say F2600MR1               Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+48 Say F2600PLA               Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+29 Say F2600CIM               Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+29 Say F2600CHO               Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.10 TO vlIn
 @vLIN,mCLN+29 Say F2600LC1               Font "&mLetRom",9 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.3 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      DO meD_2600z IN FAC0000A
      SELECT deT_remi
      DO unI_2600z IN FAC0000A
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      SELECT prOductos
      IF EOF() .OR. f2111tpo<>2
           STORE 1 TO ptPp
      ELSE
           STORE 2 TO ptPp
      ENDIF
      SELECT deT_remi
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+11.1 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+13.2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
      ENDIF
      @vLIN,mCLN+24 Say pUNI      Font "&mLetRom",10 Style "NQ" Size 1,8 Pict "@S10"
      @vLIN,mCLN+35 Say F2601DCR  Font "&mLetRom",10 Style "NQ" Pict "@S65" Size 1,62
      STORE vlIn+1.2 TO vlIn
      SELECT itE_remi
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_2600z
           STORE vlIn+1.3 TO vlIn
      ELSE
           STORE vlIn+0.1 TO vlIn
      ENDIF
      SELECT deT_remi
      SKIP
 ENDDO
 RELEASE prUc, plUg, ppEs, ptPp, ppAr, plUg, puNi, pdIs, pfAc
ENDPROC
*
PROCEDURE Ite_1300z
 PARAMETER ptPo
 PUBLIC plL1, plL2, plL3
 SELECT itE_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 IF EOF()
      RETURN
 ENDIF
 IF ptPo="1"
      RETURN
 ENDIF
 STORE 16 TO vcLn
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
           STORE 16 TO vcLn
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
 ENDDO
 RELEASE plL1, plL2, plL3
ENDPROC
*
PROCEDURE Ite_2600z
 PUBLIC plL1, plL2, plL3
 SELECT itE_remi
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 IF EOF()
      RETURN
 ENDIF
 STORE 22 TO vcLn
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2602tdo+ ;
    f2602ser+f2602doc+ALLTRIM(f2602cod)+"*"
      IF f2602opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 22 TO vcLn
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f2602un1="M"
                          @vLIN,mCLN+vCLN+3 Say F2602MLA         Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f2602un1="P"
                          @vLIN,mCLN+vCLN+0.0 Say F2602P11       Font "&mLetSwi",9 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+4.7 Say '"'            Font "&mLetCou",9 Style "NQ"
                          IF ALLTRIM(f2602p12)<>"/"
                               @vLIN,mCLN+vCLN+5.9 Say F2602P12    Font "&mLetSwi",9 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+11.4 Say "x"                   Font "&mLetSwi",9 Size 1,1 Style "BQ"
                DO CASE
                     CASE f2602un2="M"
                          @vLIN,mCLN+vCLN+16 Say F2602MAN        Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f2602un2="P"
                          @vLIN,mCLN+vCLN+13.5 Say F2602P21      Font "&mLetSwi",9 Style "NQ" Size 1,5   Pict "999"
                          @vLIN,mCLN+vCLN+18.3 Say '"'           Font "&mLetCou",9 Style "NQ"
                          IF ALLTRIM(f2602p22)<>"/"
                               @vLIN,mCLN+vCLN+19.5 Say F2602P22   Font "&mLetSwi",9 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+24.5 Say "="+Str(F2602CTD,4,0) Font "&mLetSwi",9 Style "NQ"
                STORE vcLn+33 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+2   Say F2602MLA               Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+9.4 Say "="+Str(F2602CTD,4,0)  Font "&mLetSwi",9 Style "NQ"
                STORE vcLn+18 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+02.0 Say F2602MLA              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+09.4 Say "x"                   Font "&mLetSwi",9 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+13.0 Say F2602MAN              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+20.0 Say "="+Str(F2602CTD,4,0) Font "&mLetSwi",9 Style "NQ"
                STORE vcLn+28 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=11
                @vLIN,mCLN+vCLN+02.0 Say F2602CA1              Font "&mLetSwi",9 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+05.0 Say F2602MLA              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+12.4 Say "x"                   Font "&mLetSwi",9 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+16.0 Say F2602CA2              Font "&mLetSwi",9 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+19.0 Say F2602MAN              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+26.0 Say "="+Str(F2602CTD,4,0) Font "&mLetSwi",9 Style "NQ"
                STORE vcLn+34 TO vcLn
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
