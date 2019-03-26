*
PROCEDURE Fac_1300z
 PUBLIC pdIr, puNi, pdOc
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE vsEr+"-"+vdOc TO pdOc
 @0,0 Say " "              Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+022.5 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+000.4 TO vlIn
 @vLIN,mCLN+128.0 Say vNVE Font "&mLetRom",10 Style "NQ" Pict "@S30"
 STORE vlIn+001.2 TO vlIn
 @vLIN,mCLN+022.5 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+001.0 TO vlIn
 @vLIN,mCLN+128.0 Say vNFP Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+000.8 TO vlIn
 @vLIN,mCLN+022.5 Say vRUC Font "&mLetRom",11 Style "NQ"
 STORE vlIn+001.4 TO vlIn
 @vLIN,mCLN+128.0 Say pDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+000.3 TO vlIn
 @vLIN,mCLN+022.5 Say vFEM Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.8 TO vlIn
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
                @vLIN,mCLN+23.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+22.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+12      Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      @vLIN,mCLN+36 Say F1301DCR     Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+126.8 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+147.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+36.0 Say mFR1        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+36.0 Say mFR2        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+36.0 Say "@"         Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+36.0 Say "@"         Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+036 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.0 TO vlIn
 IF LEN(ALLTRIM(vcM3))<>0
      @vLIN,mCLN+55 Say AllTrim(vCM3)+" / "+AllTrim(vCM4)+" / "+AllTrim(vCM5) Font "&mLetAri",7 Style "NQ" Size 1,100 Pict "@S100"
 ENDIF
 STORE vlIn+0.9 TO vlIn
 IF f1300net-tvAl<>0
      @vLIN,mCLN+077 Say "Dcto/Red:"   Font "&mLetRom",11 Style "NQ"
      @vLIN,mCLN+092 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 ENDIF
 @vLIN,mCLN+111 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+128 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+142 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+147 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr, puNi, pdOc
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @0,0 Say " "            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+057 Say vFEM Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+014 Say vNOM Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 @vLIN,mCLN+057 Say vDNI Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+016 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.1 TO vlIn
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
                @vLIN,mCLN+4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
      ENDIF
      @vLIN,mCLN+14 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,45 Pict "@S48"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+062.9 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+13 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetRom",8  Style "NQ" Size 1,100  Pict "@S100"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+062.9 Say F1300TOT              Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 RELEASE puNi, pdIr
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
 DO dsP_1300z IN FAC0000A WITH "D"
ENDPROC
*
PROCEDURE Let_3110z
 PRIVATE pdIr, paDi
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 @0,0 Say Space(01)                                  Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,1,15)          Font "&mLetAri",8 Style "BQ"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN+31 Say F3110LET                          Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))<=14
      @vLIN,mCLN+48 Say F3110REF                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+75  Say "LIMA"                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+136 Say vSIG                             Font "&mLetAri",9 Style "BQ" Size 1,5.1
 @vLIN,mCLN+152 Say F3110TOT                         Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "99,999.99"
 STORE vlIn+0.3 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,16,15)         Font "&mLetAri",8 Style "BQ"
 ENDIF
 @vLIN,mCLN+95  Say F3110FEM                         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+116 Say F3110FVE                         Font "&mLetAri",9 Style "BQ"
 STORE vlIn+4.3 TO vlIn
 @vLIN,mCLN+30 Say "*** "+vFRA+" "+Replicate("*",80) Font "&mLetAri",9 Style "BQ" Size 1,82 Pict "@S84"
 STORE vlIn+3.2 TO vlIn
 IF LEN(ALLTRIM(f3110nom))<=46
      @vLIN,mCLN+36 Say F3110NOM                       Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S50"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110nom))>46
      @vLIN,mCLN+27 Say F3110NOM                       Font "&mLetAri",8 Style "BQ" Size 1,62 Pict "@S62"
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF LEN(pdIr)>46
      @vLIN,mCLN+35 Say pDIR                           Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+35 Say pDIR                           Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+35 Say F3110RUC                       Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+35 Say F3110ELE                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+74 Say F3110TEL                          Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.0 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+33 Say F3110ANO                       Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+33 Say F3110ANO                       Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 IF LEN(paDi)>46
      @vLIN,mCLN+35 Say pADI                           Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+35 Say pADI                           Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f3110aru))<>0
      @vLIN,mCLN+35 Say F3110ARU                       Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+35 Say F3110AEL                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+79 Say F3110ATL                          Font "&mLetAri",9 Style "BQ"
 RELEASE pdIr, paDi
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC pmEs
 @0,0 Say Space(01)                                   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11 Say Substr(Dtoc(vFEM),1,2)             Font "&mLetRom",11 Style "NQ"
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 @vLIN,mCLN+33 Say pMES                               Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+69 Say Substr(Dtoc(vFEM),7,4)             Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+17 Say vNOM                               Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S73"
 @vLIN,mCLN+113 Say vRUC                              Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+17 Say AllTrim(F3610DIR)+", "+F3610DIS    Font "&mLetRom",11 Style "NQ" Size 1,82 Pict "@S80"
 @vLIN,mCLN+125 Say "Ref: "+F3610CM1                  Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+125 Say F3610CM2                          Font "&mLetRom",11 Style "NQ" Pict "@S100"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.1 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      IF SUBSTR(f3611des, 1, 1)<>" "
           @vLIN,mCLN+16  Say F3611DES Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S83"
      ELSE
           @vLIN,mCLN+00  Say F3611DES Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S83"
      ENDIF
      IF f3611tot<>0
           @vLIN,mCLN+136 Say F3611TOT Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.9 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+16 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+136 Say tNET                    Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+123 Say F3610PIG                Font "&mLetRom",11 Style "NQ" Size 1,04 Pict "99"
 @vLIN,mCLN+136 Say F3610IGV                Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+132.8 Say vSIG                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136 Say tTOT                    Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 RELEASE pmEs
ENDPROC
*
PROCEDURE Deb_3610z
 PUBLIC pmEs
 SELECT caB_nota
 @0,0 Say Space(01)                                   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11 Say Substr(Dtoc(vFEM),1,2)             Font "&mLetRom",11 Style "NQ"
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 @vLIN,mCLN+33 Say pMES                               Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+69 Say Substr(Dtoc(vFEM),7,4)             Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+17 Say vNOM                               Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S73"
 @vLIN,mCLN+113 Say vRUC                              Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+17 Say AllTrim(F3610DIR)+", "+F3610DIS    Font "&mLetRom",11 Style "NQ" Size 1,82 Pict "@S80"
 @vLIN,mCLN+125 Say "Ref: "+F3610CM1                  Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+125 Say F3610CM2                          Font "&mLetRom",11 Style "NQ" Pict "@S100"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.1 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      IF SUBSTR(f3611des, 1, 1)<>" "
           @vLIN,mCLN+16 Say F3611DES  Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S83"
      ELSE
           @vLIN,mCLN+00 Say F3611DES  Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S83"
      ENDIF
      IF f3611tot<>0
           @vLIN,mCLN+136 Say F3611TOT Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.9 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "ND"
 @vLIN,mCLN+16 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+136 Say tNET                    Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+123 Say F3610PIG                Font "&mLetRom",11 Style "NQ" Size 1,04 Pict "99"
 @vLIN,mCLN+136 Say F3610IGV                Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+132.8 Say vSIG                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136 Say tTOT                    Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 RELEASE pmEs
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, puNi, ppAr, pdIr, plEt
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 @0,0 Say Space(01) Font "&mLetSwi",10 Style "BQ"
 DO CASE
      CASE vsEr="002"
           DO rm2_2600z
      OTHERWISE
           DO rm1_2600z
 ENDCASE
 RELEASE prUc, plUg, ppEs, ptPp, puNi, ppAr, pdIr, plEt
ENDPROC
*
PROCEDURE Rm1_2600z
 @vLIN,mCLN+11 Say F2600FEM              Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+11 Say F2600NOM              Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say pDIR                  Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+11 Say pRUC                  Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+78 Say F2600SER+"-"+F2600DOC Font "&mLetSwi",9  Style "NQ"
 STORE vlIn+1.35 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+11 Say F2600CM1 Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+2.35 TO vlIn
 @vLIN,mCLN+086.0 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+138.5 Say F2600FEM                           Font "&mLetSwi",10 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_2600z IN FAC0000A
      DO unI_2600z IN FAC0000A
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+3.5 Say vCAN   Font "&mLetRom",11 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+2.3 Say vCAN   Font "&mLetRom",11 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      @vLIN,mCLN+17.5 Say pUNI     Font "&mLetSwi",9  Style "NQ" Size 1,9  Pict "@S10"
      @vLIN,mCLN+27.5 Say vCOD+":" Font "&mLetSwi",9  Style "NQ" Size 1,15 Pict "@S15"
      @vLIN,mCLN+44.0 Say F2601DCR Font "&mLetSwi",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+1.3 TO vlIn
      SELECT itE_remi
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_2600z
           STORE vlIn+1.5 TO vlIn
      ENDIF
      SELECT deT_remi
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF LEN(ALLTRIM(f2600lug))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say "Punto de Partida:" Font "&mLetSwi",10 Style "BQ"
      @vLIN,mCLN+42 Say pPAR                Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f2600lug))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say "Punto de Llegada:" Font "&mLetSwi",10 Style "BQ"
      @vLIN,mCLN+42 Say pLUG                Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+7 Say F2600TNO                Font "&mLetSwi",9 Style "NQ"
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+071.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=6
           @vLIN,mCLN+089.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=11
           @vLIN,mCLN+117.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+7 Say F2600TRU                Font "&mLetSwi",9 Style "NQ"
 DO CASE
      CASE f2600mot=8
           @vLIN,mCLN+087.05 Say "x"        Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=14
           @vLIN,mCLN+117.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f2600mr1))=0 .OR. LEN(ALLTRIM(f2600pla))=0
      STORE "" TO plEt
 ELSE
      STORE "/" TO plEt
 ENDIF
 @vLIN,mCLN+18 Say AllTrim(F2600MR1)+pLET+AllTrim(F2600PLA) Font "&mLetSwi",9 Style "NQ"
 IF f2600mot=3
      @vLIN,mCLN+117.55 Say "x"             Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600LC1               Font "&mLetSwi",10 Style "NQ"
 IF f2600mot=9
      @vLIN,mCLN+117.55 Say "x"             Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600CHO               Font "&mLetSwi",10 Style "NQ"
 IF f2600mot=13
      @vLIN,mCLN+117.55 Say "x"             Font "&mLetSwi",10 Style "NQ"
 ENDIF
ENDPROC
*
PROCEDURE Rm2_2600z
 @vLIN,mCLN+11 Say F2600FEM              Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+11 Say F2600NOM              Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say pDIR                  Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+11 Say pRUC                  Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+78 Say F2600SER+"-"+F2600DOC Font "&mLetSwi",9  Style "NQ"
 STORE vlIn+1.35 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+11 Say F2600CM1           Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+2.35 TO vlIn
 @vLIN,mCLN+086.0 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+138.5 Say F2600FEM                           Font "&mLetSwi",10 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_2600z IN FAC0000A
      DO unI_2600z IN FAC0000A
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+3.5 Say vCAN   Font "&mLetRom",11 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+2.3 Say vCAN   Font "&mLetRom",11 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      @vLIN,mCLN+17.5 Say pUNI     Font "&mLetSwi",9  Style "NQ" Size 1,9    Pict "@S10"
      @vLIN,mCLN+27.5 Say vCOD+":" Font "&mLetSwi",9  Style "NQ" Size 1,15   Pict "@S15"
      @vLIN,mCLN+44.0 Say F2601DCR Font "&mLetSwi",11 Style "NQ" Size 1,75   Pict "@S75"
      STORE vlIn+1.3 TO vlIn
      SELECT itE_remi
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_2600z
           STORE vlIn+1.5 TO vlIn
      ENDIF
      SELECT deT_remi
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF LEN(ALLTRIM(f2600lug))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say "Punto de Partida:" Font "&mLetSwi",10 Style "BQ"
      @vLIN,mCLN+42 Say pPAR                Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f2600lug))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say "Punto de Llegada:" Font "&mLetSwi",10 Style "BQ"
      @vLIN,mCLN+42 Say pLUG                Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+7 Say F2600TNO                Font "&mLetSwi",9 Style "NQ"
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+085.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=6
           @vLIN,mCLN+117.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+7 Say F2600TDI                Font "&mLetSwi",9 Style "NQ"
 DO CASE
      CASE f2600mot=8
           @vLIN,mCLN+085.05 Say "x"        Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=11
           @vLIN,mCLN+117.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600TRU               Font "&mLetSwi",10 Style "NQ"
 IF f2600mot=3
      @vLIN,mCLN+117.55 Say "x"             Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f2600mr1))=0 .OR. LEN(ALLTRIM(f2600pla))=0
      STORE "" TO plEt
 ELSE
      STORE "/" TO plEt
 ENDIF
 @vLIN,mCLN+18 Say AllTrim(F2600MR1)+pLET+AllTrim(F2600PLA) Font "&mLetSwi",9 Style "NQ"
 IF f2600mot=9
      @vLIN,mCLN+117.55 Say "x" Font "&mLetSwi",10 Style "NQ"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600LC1   Font "&mLetSwi",10 Style "NQ"
 IF f2600mot=13
      @vLIN,mCLN+117.55 Say "x" Font "&mLetSwi",10 Style "NQ"
 ENDIF
ENDPROC
*
PROCEDURE Ite_2600z
 PUBLIC plL1, plL2, plL3
 STORE 01 TO plL1, plL2, plL3
 STORE 44 TO vcLn
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2602tdo+ ;
    f2602ser+f2602doc+ALLTRIM(f2602cod)+"*"
      IF f2602opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 44 TO vcLn
           STORE 01 TO plL1, plL2, plL3
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f2602un1="M"
                          @vLIN,mCLN+vCLN+3.0 Say F2602MLA       Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f2602un1="P"
                          @vLIN,mCLN+vCLN+0.0 Say F2602P11       Font "&mLetRom",11 Style "NQ" Size 1,5 Pict "999"
                          @vLIN,mCLN+vCLN+5.4 Say '"'            Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(f2602p12)<>"/"
                               @vLIN,mCLN+vCLN+6.6 Say F2602P12    Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+14.6 Say "x"                   Font "&mLetRom",11 Style "NQ" Size 1,1
                DO CASE
                     CASE f2602un2="M"
                          @vLIN,mCLN+vCLN+18.5 Say F2602MAN      Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f2602un2="P"
                          @vLIN,mCLN+vCLN+16.7 Say F2602P21      Font "&mLetRom",11 Style "NQ" Size 1,5 Pict "999"
                          @vLIN,mCLN+vCLN+22.7 Say '"'           Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(f2602p22)<>"/"
                               @vLIN,mCLN+vCLN+23.7 Say F2602P22   Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+vCLN+31.0 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                STORE vcLn+45 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+03.0 Say F2602MLA                     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "= ["+Str(F2602CTD,4,0)+"]"  Font "&mLetRom",11 Style "NQ"
                STORE vcLn+21 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,mCLN+vCLN+03.0 Say F2602MLA                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",11 Style "NQ" Size 1,1
                @vLIN,mCLN+vCLN+18.5 Say F2602MAN                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+31.0 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                STORE vcLn+45 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=11
                @vLIN,mCLN+vCLN+03.0 Say F2602CA1                    Font "&mLetRom",11 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+06.0 Say F2602MLA                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",11 Style "BQ" Size 1,1
                @vLIN,mCLN+vCLN+18.5 Say F2602CA2                    Font "&mLetRom",11 Style "NQ" Size 1,2   Pict "9"
                @vLIN,mCLN+vCLN+21.5 Say F2602MAN                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+vCLN+30.1 Say "= ["+Str(F2602CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                STORE vcLn+45 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3
ENDPROC
*
PROCEDURE Plc_2111b
 PARAMETER psTo
 PRIVATE pmAq, pfRa, pnOm, peSp, pfAm, pdEs, plAr, paNc
 STORE "INTERMAC-ISO|1" TO pmAq
 DO seL_0000a WITH muLt
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"PLC.DBF" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"PLC.DBF" TO mdBf
 ENDIF
 Use &mDBF Exclusive Alias Plc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 ZAP
 DO seL_0000a WITH muLt+1
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"PLC1.DBF" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"PLC1.DBF" TO mdBf
 ENDIF
 Use &mDBF Exclusive Alias Plc1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 ZAP
 DO seL_0000a WITH muLt+2
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"PLC2.DBF" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"PLC2.DBF" TO mdBf
 ENDIF
 Use &mDBF Exclusive Alias Plc2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 ZAP
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 SET ORDER TO F2111ESP
 SET FILTER TO f2111la1<>0 .AND. f2111an1<>0 .AND. f2111esp<>0 .AND. LEN(ALLTRIM(f2111tam))<>0 .AND. f2111est<>"9"
 GOTO TOP
 STORE 0 TO viTe
 DO WHILE  .NOT. EOF()
      IF psTo="1" .AND. f2111sto<=0
           SKIP
           LOOP
      ENDIF
      STORE f2111esp TO peSp
      STORE ALLTRIM(STR(peSp, 5, 2))+" MM "+ALLTRIM(f2111cod)+" "+ ;
            SUBSTR(f2111tam, 1, 8) TO pfAm
      STORE SUBSTR(f2111des, 1, 40) TO pdEs
      STORE STR(f2111la1*1000, 4, 0) TO plAr
      STORE STR(f2111an1*1000, 4, 0) TO paNc
      STORE viTe+1 TO viTe
      SELECT plC1
      APPEND BLANK
      DO CASE
           CASE viTe<10
                REPLACE frAse WITH "[FAMILY"+STR(viTe, 1, 0)+"]"
           CASE viTe<100
                REPLACE frAse WITH "[FAMILY"+STR(viTe, 2, 0)+"]"
           CASE viTe<1000
                REPLACE frAse WITH "[FAMILY"+STR(viTe, 3, 0)+"]"
           CASE viTe<10000
                REPLACE frAse WITH "[FAMILY"+STR(viTe, 4, 0)+"]"
           CASE viTe<100000
                REPLACE frAse WITH "[FAMILY"+STR(viTe, 5, 0)+"]"
      ENDCASE
      APPEND BLANK
      APPEND BLANK
      REPLACE frAse WITH "NAME="
      REPLACE vaLor WITH pfAm
      APPEND BLANK
      REPLACE frAse WITH "MXTRAVERSO="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "TOLLERANZA="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "SPESSORE="
      REPLACE vaLor WITH STR(peSp, 5, 2)
      APPEND BLANK
      REPLACE frAse WITH "LATO_MINIMO="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "ANTICIPO_BORDI="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "BORDOX="
      DO CASE
           CASE peSp<5
                REPLACE vaLor WITH "8"
           CASE peSp>=5 .AND. peSp<=6
                REPLACE vaLor WITH "10"
           CASE peSp=8
                REPLACE vaLor WITH "15"
           CASE peSp=10
                REPLACE vaLor WITH "20"
           CASE peSp=12
                REPLACE vaLor WITH "40"
           CASE peSp=15
                REPLACE vaLor WITH "50"
           CASE peSp=19
                REPLACE vaLor WITH "60"
           OTHERWISE
                REPLACE vaLor WITH "0"
      ENDCASE
      APPEND BLANK
      REPLACE frAse WITH "BORDOY="
      DO CASE
           CASE peSp<5
                REPLACE vaLor WITH "8"
           CASE peSp>=5 .AND. peSp<=6
                REPLACE vaLor WITH "10"
           CASE peSp=8
                REPLACE vaLor WITH "15"
           CASE peSp=10
                REPLACE vaLor WITH "20"
           CASE peSp=12
                REPLACE vaLor WITH "40"
           CASE peSp=15
                REPLACE vaLor WITH "50"
           CASE peSp=19
                REPLACE vaLor WITH "60"
           OTHERWISE
                REPLACE vaLor WITH "0"
      ENDCASE
      APPEND BLANK
      REPLACE frAse WITH "RIFILOX="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "RIFILOY="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "MINDISTZ="
      DO CASE
           CASE peSp<5
                REPLACE vaLor WITH "8"
           CASE peSp>=5 .AND. peSp<=6
                REPLACE vaLor WITH "10"
           CASE peSp=8
                REPLACE vaLor WITH "15"
           CASE peSp=10
                REPLACE vaLor WITH "20"
           CASE peSp=12
                REPLACE vaLor WITH "40"
           CASE peSp=15
                REPLACE vaLor WITH "50"
           CASE peSp=19
                REPLACE vaLor WITH "60"
           OTHERWISE
                REPLACE vaLor WITH "0"
      ENDCASE
      APPEND BLANK
      REPLACE frAse WITH "DELTA_RACK="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "COSTO_AVANZI="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "TIME="
      REPLACE vaLor WITH "5"
      APPEND BLANK
      REPLACE frAse WITH "MXTIPI_DIVERSI="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "PRIORITA="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "SPECULARE="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "LOW_EMISSION="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "PERPENDICOLARE_X="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "PERPENDICOLARE_Y="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "SAGOME_ESCLUSE_CN="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "ASPORTAZIONE_STRUTTURALE="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "PELLICOLA-TRAVERSI="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "OTTIMIZZA_CAVALLETTI="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "ASSEGNA_CAVALLETTI="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "POSTO_CAVALLETTI="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "INV_ACCOPPIATO="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "MOL_TRAVERSI="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "FORZA_BORDOX="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "FORZA_BORDOY="
      REPLACE vaLor WITH "0"
      APPEND BLANK
      REPLACE frAse WITH "RUOTABILE="
      REPLACE vaLor WITH "1"
      APPEND BLANK
      REPLACE frAse WITH "DESCRIZIONE="
      REPLACE vaLor WITH pdEs
      APPEND BLANK
      REPLACE frAse WITH "FORNITORE="
      REPLACE vaLor WITH ""
      APPEND BLANK
      REPLACE frAse WITH "STRATIFICATO="
      REPLACE vaLor WITH ""
      APPEND BLANK
      REPLACE frAse WITH "CN="
      REPLACE vaLor WITH pmAq
      APPEND BLANK
      REPLACE frAse WITH "BARCODE="
      REPLACE vaLor WITH ""
      APPEND BLANK
      STORE "" TO pfRa
      DO CASE
           CASE viTe<10
                STORE "N"+STR(viTe, 1, 0)+"=FAM=" TO pfRa
           CASE viTe<100
                STORE "N"+STR(viTe, 2, 0)+"=FAM=" TO pfRa
           CASE viTe<1000
                STORE "N"+STR(viTe, 3, 0)+"=FAM=" TO pfRa
           CASE viTe<10000
                STORE "N"+STR(viTe, 4, 0)+"=FAM=" TO pfRa
           CASE viTe<100000
                STORE "N"+STR(viTe, 5, 0)+"=FAM=" TO pfRa
      ENDCASE
      STORE pfRa+pfAm+";" TO pfRa
      STORE pfRa+"B="+plAr+";" TO pfRa
      STORE pfRa+"H="+paNc+";" TO pfRa
      STORE pfRa+"RX=0;" TO pfRa
      STORE pfRa+"RY=0;" TO pfRa
      DO CASE
           CASE peSp<5
                STORE pfRa+"BX=8;" TO pfRa
                STORE pfRa+"BY=8;" TO pfRa
                STORE pfRa+"DZ=8;" TO pfRa
           CASE peSp>=5 .AND. peSp<=6
                STORE pfRa+"BX=10;" TO pfRa
                STORE pfRa+"BY=10;" TO pfRa
                STORE pfRa+"DZ=10;" TO pfRa
           CASE peSp=8
                STORE pfRa+"BX=15;" TO pfRa
                STORE pfRa+"BY=15;" TO pfRa
                STORE pfRa+"DZ=15;" TO pfRa
           CASE peSp=10
                STORE pfRa+"BX=20;" TO pfRa
                STORE pfRa+"BY=20;" TO pfRa
                STORE pfRa+"DZ=20;" TO pfRa
           CASE peSp=12
                STORE pfRa+"BX=40;" TO pfRa
                STORE pfRa+"BY=40;" TO pfRa
                STORE pfRa+"DZ=40;" TO pfRa
           CASE peSp=15
                STORE pfRa+"BX=50;" TO pfRa
                STORE pfRa+"BY=50;" TO pfRa
                STORE pfRa+"DZ=50;" TO pfRa
           CASE peSp=19
                STORE pfRa+"BX=60;" TO pfRa
                STORE pfRa+"BY=60;" TO pfRa
                STORE pfRa+"DZ=60;" TO pfRa
           OTHERWISE
                STORE pfRa+"BX=0;" TO pfRa
                STORE pfRa+"BY=0;" TO pfRa
                STORE pfRa+"DZ=0;" TO pfRa
      ENDCASE
      STORE pfRa+"DISP=999999;" TO pfRa
      STORE pfRa+"AV=0;" TO pfRa
      STORE pfRa+"COST=0;" TO pfRa
      STORE pfRa+"DESCR="+pdEs+";" TO pfRa
      STORE pfRa+"FORNITORE=;" TO pfRa
      STORE pfRa+"MAGA_ESTERNO=0;" TO pfRa
      STORE pfRa+"GIACENZA_TOTALE=0;" TO pfRa
      STORE pfRa+"GIACENZA_PRENDIBILE=0;" TO pfRa
      STORE pfRa+"GIACENZA_IMPEGNATA=0;" TO pfRa
      STORE pfRa+"GIACENZA_ESTERNA=0;" TO pfRa
      STORE pfRa+"LOADER=0;" TO pfRa
      STORE pfRa+"TIME_SHEET=" TO pfRa
      STORE pfRa+SUBSTR(DTOC(DATE()), 1, 6)+SUBSTR(DTOC(DATE()), 9, 2)+ ;
            ";" TO pfRa
      SELECT plC2
      APPEND BLANK
      REPLACE frAse WITH pfRa
      APPEND BLANK
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      SKIP
 ENDDO
 SELECT plC1
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ALLTRIM(frAse)+ALLTRIM(vaLor) TO pfRa
      SELECT plC
      APPEND BLANK
      REPLACE frAse WITH pfRa
      SELECT plC1
      SKIP
 ENDDO
 SELECT plC
 APPEND BLANK
 APPEND BLANK
 REPLACE frAse WITH "[SHEETS]"
 APPEND BLANK
 SELECT plC2
 SET FILTER TO
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ALLTRIM(frAse) TO pfRa
      SELECT plC
      APPEND BLANK
      REPLACE frAse WITH pfRa
      SELECT plC2
      SKIP
 ENDDO
 SELECT plC
 GOTO TOP
 STORE "PRODUCTOS\PRODUCTOS.IMP" TO pnOm
 Copy to &pNOM SDF
 DO seL_0000a WITH muLt
 USE
 DO seL_0000a WITH muLt+1
 USE
 DO seL_0000a WITH muLt+2
 USE
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 SET FILTER TO
 DO orD_2111b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 WAIT CLEAR
 RELEASE pmAq, pfRa, pnOm, peSp, pfAm, pdEs, plAr, paNc
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
