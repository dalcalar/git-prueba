*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr, pdIa, pmEs, paNo, pdOc
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO pdIa
 STORE SUBSTR(DTOC(vfEm), 10, 1) TO paNo
 @0,0 Say " "                          Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+025.0 Say pDOC             Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+025.0 Say vNOM             Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+127.5 Say pDIA             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136.0 Say pMES             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+158.0 Say pANO             Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+144.0 Say "[INCSUN/15259]" Font "&mLetRom",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+025.0 Say pDIR             Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+025.0 Say vRUC             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+050.0 Say vCM1             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+144.0 Say vNFP             Font "&mLetRom",11 Style "NQ"
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
                @vLIN,mCLN+13 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+12 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+26    Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      @vLIN,mCLN+38 Say F1301DCR   Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+128.8 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+148.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.9 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+38.0 Say mFR1         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+38.0 Say mFR2         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+38.0 Say "@"          Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+38.0 Say "@"          Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+025 Say vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+148 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+148 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+137 Say F1300PIG         Font "&mLetRom",11 Style "NQ" Size 1,03 Pict "99"
 @vLIN,mCLN+148 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+148 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+145 Say vSIG             Font "&mLetRom",11 Style "NQ"
 RELEASE puNi, pdIr, pdIa, pmEs, paNo, pdOc
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr, pmEs
 DO diR_1300z IN FAC0000A
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 @0,0 Say " "                                 Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+014 Say vNOM                      Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 @vLIN,mCLN+094.0 Say Substr(Dtoc(vFEM),1,2)  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+110.0 Say pMES                    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143.2 Say Substr(Dtoc(vFEM),10,1) Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+016.0 Say pDIR                    Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 @vLIN,mCLN+123.0 Say vDNI                    Font "&mLetRom",11 Style "NQ"
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
                @vLIN,mCLN+4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15   Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+30 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,45 Pict "@S48"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+107 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+130 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+16 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetRom",8  Style "NQ" Size 1,100  Pict "@S100"
 @vLIN,mCLN+130.4 Say F1300TOT-tVAL         Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+033.0 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",8  Style "NQ"
 @vLIN,mCLN+130.0 Say F1300TOT              Font "&mLetRom",11 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+125.0 Say vSIG                  Font "&mLetRom",11 Style "NQ"
 RELEASE puNi, pdIr, pmEs
ENDPROC
*
PROCEDURE Npe_1300z
 DO dsP_1300z IN FAC0000A WITH "N"
 DO dsP_1300z IN FAC0000A WITH "N"
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Lima"
ENDPROC
*
PROCEDURE Des_1300z
 DO dsP_1300z IN FAC0000A WITH "D"
 DO dsP_1300z IN FAC0000A WITH "D"
ENDPROC
*
PROCEDURE Let_3110z
 PRIVATE pdIs, paDi, plNn
 IF LEN(ALLTRIM(f3110dir))+LEN(ALLTRIM(f3110dis))>46
      STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIs
 ELSE
      STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIs
 ENDIF
 IF LEN(ALLTRIM(f3110adi))+LEN(ALLTRIM(f3110ads))>46
      STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 ELSE
      STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 ENDIF
 STORE "*** "+vfRa+" "+REPLICATE("*", 80) TO plNn
 @0,0 Say Space(01)                          Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,1,15)  Font "&mLetAri",8 Style "BQ"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN+31 Say F3110LET                  Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))<=14
      @vLIN,mCLN+48 Say F3110REF               Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+75  Say "LIMA"                   Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+136 Say vSIG                     Font "&mLetAri",9 Style "BQ" Size 1,5.1
 @vLIN,mCLN+152 Say F3110TOT                 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "99,999.99"
 STORE vlIn+0.3 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,16,15) Font "&mLetAri",8 Style "BQ"
 ENDIF
 @vLIN,mCLN+95  Say F3110FEM                 Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+116 Say F3110FVE                 Font "&mLetAri",9 Style "BQ"
 STORE vlIn+4.3 TO vlIn
 @vLIN,mCLN+30 Say pLNN                      Font "&mLetAri",9 Style "BQ" Size 1,82 Pict "@S84"
 STORE vlIn+3.2 TO vlIn
 IF LEN(ALLTRIM(f3110nom))<=46
      @vLIN,mCLN+36 Say F3110NOM               Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S50"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110nom))>46
      @vLIN,mCLN+27 Say F3110NOM               Font "&mLetAri",8 Style "BQ" Size 1,62 Pict "@S62"
 ENDIF
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+35 Say pDIS                      Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+35 Say F3110RUC               Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+35 Say F3110ELE               Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+74 Say F3110TEL                  Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.0 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+33 Say F3110ANO               Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+33 Say F3110ANO               Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+35 Say pADI                      Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f3110aru))<>0
      @vLIN,mCLN+35 Say F3110ARU               Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+35 Say F3110AEL               Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+79 Say F3110ATL                  Font "&mLetAri",9 Style "BQ"
 RELEASE pdIs, paDi, plNn
ENDPROC
*
PROCEDURE Cre_3610z
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
 PUBLIC prUc, plUg, ppEs, ptPp, puNi, ppAr, pdOc
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE "["+f2600ser+"-"+f2600doc+"]" TO pdOc
 @0,0          Say " "      Font "&mLetSwi",10 Style "BQ"
 @vLIN,mCLN+38 Say F2600FEM Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+38 Say pPAR     Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+60 Say F2600NOM Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+40 Say pLUG     Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+14 Say pRUC     Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+64 Say pDOC     Font "&mLetSwi",9  Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+116.0 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetSwi",10 Style "NQ"
      @vLIN,mCLN+144.5 Say F2600FEM                           Font "&mLetSwi",10 Style "NQ"
 ENDIF
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
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
      @vLIN,mCLN+51.5 Say F2601DCR Font "&mLetSwi",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+1.97 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+040 Say F2600TNO Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+123 Say F2600TRU Font "&mLetSwi",9 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+019 Say F2600TDI Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN+028 Say AllTrim(F2600MR1)+"/"+AllTrim(F2600PLA) Font "&mLetSwi",9 Style "NQ"
 STORE vlIn+2.9 TO vlIn
 @vLIN,mCLN+031 Say F2600LC1                                Font "&mLetSwi",10 Style "NQ"
 RELEASE prUc, plUg, ppEs, ptPp, puNi, ppAr, pdOc
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
