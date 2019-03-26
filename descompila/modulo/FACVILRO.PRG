*
PROCEDURE Fac_1300z
 PUBLIC pdIr, puNi
 DO diR_1300z IN FAC0000A
 @0,0            Say Space(01)     Font "&mLetAri",9  Style "NQ"
 @vLIN,mCLN+09.0 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+70.0 Say vNFP          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09.0 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09.0 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09.0 Say vRUC          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.8 Say vNVE          Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+70.0 Say vTEL          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+09.0 Say vCM2          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+67.7 Say vTCA          Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+78.5 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+1 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDIF
      @vLIN,mCLN+25 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+129.4 Say vPRE  Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+144.4 Say vTOT  Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+25 Say F1301REF Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+054 Say tVAL             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+117 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+055 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 RELEASE pdIr, puNi
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC pdIr, puNi
 DO diR_1300z IN FAC0000A
 @0,0           Say Space(01)     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+011 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+040 Say vDNI          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+066 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+103 Say vNVE          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+011 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+096 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+011 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+2.8 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
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
           @vLIN,mCLN+18   Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+28 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+122.5 Say vPRE  Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+142.0 Say vTOT  Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+28 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+065.5 Say tVAL             Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 @vLIN,mCLN+101.0 Say F1300TOT-tVAL    Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+132.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+141.0 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+046.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 RELEASE pdIr, puNi
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC plN1, plEt, pdC1, pdC2, puNi
 STORE 42 TO plEt
 STORE 28 TO mpAg
 SELECT tmP_hoja
 ZAP
 REINDEX
 SELECT tmP_hoja1
 ZAP
 REINDEX
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      STORE f1301dcr TO vdCr
      STORE f1301ref TO vrEf
      DO pc2_1300z IN FAC0000A
      SELECT tmP_hoja
      SEEK vgRu
      IF EOF()
           APPEND BLANK
           REPLACE ftMagru WITH vgRu
           REPLACE ftMades WITH ALLTRIM(vnGr)+" - "+vtDo+":"+vsEr+"-"+vdOc
      ENDIF
      SELECT tmP_hoja1
      SEEK vgRu+ALLTRIM(vcOd)+"*0"
      IF EOF()
           APPEND BLANK
           REPLACE ftMbgru WITH vgRu
           REPLACE ftMbcod WITH vcOd
           REPLACE ftMbrcc WITH 0
           REPLACE ftMbnuv WITH puNi
           REPLACE ftMbcan WITH vcAn
           REPLACE ftMbdes WITH ALLTRIM(vdCr)
           REPLACE ftMbref WITH vrEf
           REPLACE ftMbpre WITH vpRe
           REPLACE ftMbtot WITH vtOt
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT tmP_hoja
 GOTO TOP
 IF BOF()
      RETURN
 ENDIF
 SELECT tmP_hoja1
 GOTO TOP
 STORE 0 TO plN1, vpAg
 DO WHILE  .NOT. EOF()
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO cnP_1300z
           SELECT tmP_hoja1
      ENDIF
      DO CASE
           CASE ftMbrcc=0 .AND. plN1=0
                IF vlIn+1.4>mpAg-3 .AND. (LEN(ALLTRIM(ftMbdes))>plEt .OR.  ;
                   LEN(ALLTRIM(ftMbref))>0)
                     DO cnP_1300z
                     SELECT tmP_hoja1
                ENDIF
                IF INT(ftMbcan)<>ftMbcan
                     @vLIN,mCLN+2   Say FTMBCAN    Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+0.2 Say FTMBCAN    Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+14 Say Lower(FTMBNUV) Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "@S7"
                DO CASE
                     CASE LEN(ALLTRIM(ftMbdes))<=plEt
                          @vLIN,mCLN+23 Say AllTrim(FTMBDES)       Font "&mLetRom",10 Style "NQ"
                     CASE SUBSTR(ftMbdes, plEt+1, 1)=" "
                          @vLIN,mCLN+23 Say Substr(FTMBDES,1,pLET) Font "&mLetRom",10 Style "NQ"
                          STORE ALLTRIM(SUBSTR(ftMbdes, plEt+2, 50)) TO pdC1
                          STORE 1 TO plN1
                     OTHERWISE
                          STORE SUBSTR(ftMbdes, 1, plEt) TO pdC1
                          IF RAT(" ", pdC1)=0
                               @vLIN,mCLN+23 Say pDC1                Font "&mLetRom",10 Style "NQ"
                               STORE ALLTRIM(SUBSTR(ftMbdes, 1, plEt)) TO pdC1
                          ELSE
                               STORE ALLTRIM(SUBSTR(pdC1, 1, RAT(" ",  ;
                                     pdC1))) TO pdC1
                               @vLIN,mCLN+23 Say pDC1                Font "&mLetRom",10 Style "NQ"
                               STORE ALLTRIM(SUBSTR(ftMbdes,  ;
                                     LEN(ALLTRIM(pdC1))+1, 80)) TO pdC1
                          ENDIF
                          STORE 1 TO plN1
                ENDCASE
           CASE ftMbrcc=0
                @vLIN,mCLN+23 Say pDC1 Font "&mLetRom",10 Style "NQ"
                STORE 0 TO plN1
      ENDCASE
      STORE vlIn+1.4 TO vlIn
      IF plN1=0
           IF LEN(ALLTRIM(ftMbref))<>0
                STORE vlIn+1.3 TO vlIn
                @vLIN,mCLN+44 Say FTMBREF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
           ENDIF
           SKIP
      ENDIF
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",62) Font "&mLetSwi",9  Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-2
      DO cnP_1300z
 ENDIF
 @vLIN,mCLN+01 Say "Sub-Total:"  Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+17 Say tVAL          Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+34 Say "Red."     Font "&mLetRom",11 Style "BQ"
 ELSE
      @vLIN,mCLN+34 Say "Dcto.:"   Font "&mLetRom",11 Style "BQ"
 ENDIF
 @vLIN,mCLN+41 Say F1300TOT-tVAL Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
 @vLIN,mCLN+60 Say vSIG          Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+66 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 RELEASE plN1, plEt, pdC1, pdC2, puNi
ENDPROC
*
PROCEDURE Cnp_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 @vLIN,mCLN    Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 @vLIN,mCLN+70 Say "Pag:"         Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+78 Say vPAG           Font "&mLetRom",10 Style "NQ" Pict "99"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",62) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+00 Say vNVE           Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+50 Say vFEM           Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+70 Say vTIM           Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+00 Say "Cliente:"     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+10 Say vNOM           Font "&mLetRom",10 Style "BQ"
 IF LEN(ALLTRIM(vcM1))>0
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN+00 Say "Observ:"   Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+10 Say vCM1        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",62) Font "&mLetRom",10 Style "NT"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+00 Say "Cantidad"     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+14 Say "Unidad"       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+23 Say "Descripción"  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.3 TO vlIn
 @vLIN,mCLN Say Replicate("_",62) Font "&mLetRom",10 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Lima"
ENDPROC
*
PROCEDURE Des_1300z
 PUBLIC pgR1, plN1, plEt, pdC1, pdC2, pcLn, prCc, poPp, pcTd
 PUBLIC puNi, puN1, puN2, pmLa, pmAn, pp11, pp12, pp21, pp22
 STORE SPACE(02) TO pgR1
 STORE 40 TO plEt
 STORE 28 TO mpAg
 SELECT tmP_hoja
 ZAP
 REINDEX
 SELECT tmP_hoja1
 ZAP
 REINDEX
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      STORE f1301can TO vcAn
      STORE f1301dcr TO vdCr
      SELECT prOductos
      SELECT tmP_hoja
      SEEK vgRu
      IF EOF()
           APPEND BLANK
           REPLACE ftMagru WITH vgRu
           REPLACE ftMades WITH ALLTRIM(vnGr)+" - "+vtDo+":"+vsEr+"-"+vdOc
      ENDIF
      SELECT tmP_hoja1
      SEEK vgRu+ALLTRIM(vcOd)+"*0"
      IF EOF()
           APPEND BLANK
           REPLACE ftMbgru WITH vgRu
           REPLACE ftMbcod WITH vcOd
           REPLACE ftMbrcc WITH 0
           REPLACE ftMbnuv WITH puNi
           REPLACE ftMbcan WITH vcAn
           REPLACE ftMbdes WITH ALLTRIM(vdCr)
      ENDIF
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      STORE 1 TO pcLn
      DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"= ;
         f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
           IF f1302opc="S"
                SKIP
                LOOP
           ENDIF
           IF pcLn=1
                STORE f1302rcc TO prCc
           ENDIF
           STORE f1302opc TO poPp
           STORE f1302un1 TO puN1
           STORE f1302un2 TO puN2
           STORE f1302mla TO pmLa
           STORE f1302man TO pmAn
           STORE f1302p11 TO pp11
           STORE f1302p12 TO pp12
           STORE f1302p21 TO pp21
           STORE f1302p22 TO pp22
           STORE f1302ctd TO pcTd
           SELECT tmP_hoja1
           SEEK vgRu+ALLTRIM(vcOd)+"*"+STR(prCc, 3, 0)
           IF EOF()
                APPEND BLANK
                REPLACE ftMbgru WITH vgRu
                REPLACE ftMbcod WITH vcOd
                REPLACE ftMbtpo WITH vtPo
                REPLACE ftMbrcc WITH prCc
                REPLACE ftMbcan WITH pcTd
                REPLACE ftMccan WITH 0
                REPLACE ftMbopc WITH poPp
                REPLACE ftMbun1 WITH puN1
                REPLACE ftMbun2 WITH puN2
                REPLACE ftMbmla WITH pmLa
                REPLACE ftMbman WITH pmAn
                REPLACE ftMbp11 WITH pp11
                REPLACE ftMbp12 WITH pp12
                REPLACE ftMbp21 WITH pp21
                REPLACE ftMbp22 WITH pp22
                STORE 2 TO pcLn
           ELSE
                REPLACE ftMccan WITH pcTd
                REPLACE ftMcopc WITH poPp
                REPLACE ftMcun1 WITH puN1
                REPLACE ftMcun2 WITH puN2
                REPLACE ftMcmla WITH pmLa
                REPLACE ftMcman WITH pmAn
                REPLACE ftMcp11 WITH pp11
                REPLACE ftMcp12 WITH pp12
                REPLACE ftMcp21 WITH pp21
                REPLACE ftMcp22 WITH pp22
                STORE 1 TO pcLn
           ENDIF
           SELECT itE_fact
           SKIP
      ENDDO
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT tmP_hoja
 GOTO TOP
 IF BOF()
      RETURN
 ENDIF
 SELECT tmP_hoja1
 GOTO TOP
 STORE ftMbgru TO pgR1
 STORE 0 TO plN1, vpAg
 DO WHILE  .NOT. EOF()
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO cdE_1300z
           SELECT tmP_hoja1
      ENDIF
      DO CASE
           CASE ftMbrcc=0 .AND. plN1=0
                IF vlIn+1.4>mpAg-3 .AND. LEN(ALLTRIM(ftMbdes))>plEt
                     DO cdE_1300z
                     SELECT tmP_hoja1
                ENDIF
                @vLIN,mCLN Say Lower(FTMBCOD)                    Font "&mLetRom",10 Style "NQ" Size 1,15
                IF INT(ftMbcan)<>ftMbcan
                     @vLIN,mCLN+15   Say FTMBCAN                   Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+13.2 Say FTMBCAN                   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+27 Say Lower(FTMBNUV)                 Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "@S7"
                DO CASE
                     CASE LEN(ALLTRIM(ftMbdes))<=plEt
                          @vLIN,mCLN+37 Say AllTrim(FTMBDES)       Font "&mLetRom",10 Style "NQ"
                     CASE SUBSTR(ftMbdes, plEt+1, 1)=" "
                          @vLIN,mCLN+37 Say Substr(FTMBDES,1,pLET) Font "&mLetRom",10 Style "NQ"
                          STORE ALLTRIM(SUBSTR(ftMbdes, plEt+2, 50)) TO pdC1
                          STORE 1 TO plN1
                     OTHERWISE
                          STORE SUBSTR(ftMbdes, 1, plEt) TO pdC1
                          IF RAT(" ", pdC1)=0
                               @vLIN,mCLN+37 Say pDC1                Font "&mLetRom",10 Style "NQ"
                               STORE ALLTRIM(SUBSTR(ftMbdes, 1, plEt)) TO pdC1
                          ELSE
                               STORE ALLTRIM(SUBSTR(pdC1, 1, RAT(" ",  ;
                                     pdC1))) TO pdC1
                               @vLIN,mCLN+37 Say pDC1                Font "&mLetRom",10 Style "NQ"
                               STORE ALLTRIM(SUBSTR(ftMbdes,  ;
                                     LEN(ALLTRIM(pdC1))+1, 80)) TO pdC1
                          ENDIF
                          STORE 1 TO plN1
                ENDCASE
           CASE ftMbrcc=0
                @vLIN,mCLN+37 Say pDC1                 Font "&mLetRom",10 Style "NQ"
                STORE 0 TO plN1
           CASE ftMbtpo=5
                DO CASE
                     CASE ftMbun1="M"
                          @vLIN,mCLN+3.8 Say FTMBMLA     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE ftMbun1="P"
                          @vLIN,mCLN+0.1 Say FTMBP11     Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,mCLN+4.4 Say '"'         Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(ftMbp12)<>"/"
                               @vLIN,mCLN+5.6 Say FTMBP12  Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+11.6 Say "x"                Font "&mLetRom",11 Style "NQ" Size 1,1
                DO CASE
                     CASE ftMbun2="M"
                          @vLIN,mCLN+16.2 Say FTMBMAN    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE ftMbun2="P"
                          @vLIN,mCLN+14.2 Say FTMBP21    Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,mCLN+18.2 Say '"'        Font "&mLetRom",11 Style "NQ"
                          IF ALLTRIM(ftMbp22)<>"/"
                               @vLIN,mCLN+19.4 Say FTMBP22 Font "&mLetRom",11 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,mCLN+24.7 Say "="                Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+27.1 Say FTMBCAN            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                IF ftMccan<>0
                     DO CASE
                          CASE ftMcun1="M"
                               @vLIN,mCLN+40+3.8 Say FTMCMLA     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE ftMcun1="P"
                               @vLIN,mCLN+40+0.1 Say FTMCP11     Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                               @vLIN,mCLN+40+4.4 Say '"'         Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(ftMcp12)<>"/"
                                    @vLIN,mCLN+40+5.6 Say FTMCP12  Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+40+11.6 Say "x"                Font "&mLetRom",11 Style "NQ" Size 1,1
                     DO CASE
                          CASE ftMcun2="M"
                               @vLIN,mCLN+40+16.2 Say FTMCMAN    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE ftMcun2="P"
                               @vLIN,mCLN+40+14.2 Say FTMCP21    Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                               @vLIN,mCLN+40+18.2 Say '"'        Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(ftMcp22)<>"/"
                                    @vLIN,mCLN+40+19.4 Say FTMCP22 Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+40+24.7 Say "="                Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+40+27.1 Say FTMCCAN            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                ENDIF
                STORE 0 TO plN1
           CASE ftMbtpo=6 .OR. ftMbtpo=8 .OR. ftMbtpo=9
                @vLIN,mCLN+2    Say FTMBMLA       Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+9.4  Say "="           Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+12.3 Say FTMBCAN       Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                IF ftMccan<>0
                     @vLIN,mCLN+40+2    Say FTMCMLA Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+40+9.4  Say "="     Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+40+12.3 Say FTMCCAN Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                ENDIF
                STORE 0 TO plN1
           CASE ftMbtpo=4 .OR. ftMbtpo=7
                @vLIN,mCLN+02.0 Say FTMBMLA       Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+09.4 Say "x"           Font "&mLetRom",11 Style "NQ" Size 1,1
                @vLIN,mCLN+12.8 Say FTMBMAN       Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,mCLN+20.0 Say "="           Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+23.0 Say FTMBCAN       Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                IF ftMccan<>0
                     @vLIN,mCLN+40+02.0 Say FTMCMLA Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+40+09.4 Say "x"     Font "&mLetRom",11 Style "NQ" Size 1,1
                     @vLIN,mCLN+40+12.8 Say FTMCMAN Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+40+20.0 Say "="     Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+40+23.0 Say FTMCCAN Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                ENDIF
                STORE 0 TO plN1
      ENDCASE
      STORE vlIn+1.4 TO vlIn
      IF plN1=0
           SKIP
           IF  .NOT. EOF() .AND. pgR1<>ftMbgru
                STORE mpAg TO vlIn
                STORE ftMbgru TO pgR1
           ENDIF
      ENDIF
 ENDDO
 RELEASE pgR1, plN1, plEt, pdC1, pdC2, pcLn, prCc, poPp, pcTd
 RELEASE puNi, puN1, puN2, pmLa, pmAn, pp11, pp12, pp21, pp22
ENDPROC
*
PROCEDURE Cde_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 SELECT tmP_hoja
 SEEK pgR1
 IF  .NOT. EOF()
      @vLIN,mCLN    Say FTMADES        Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+70 Say "Pag:"         Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+78 Say vPAG           Font "&mLetRom",10 Style "NQ" Pict "99"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+00 Say vNVE              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+20 Say vFEM              Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+70 Say vTIM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+00 Say "Cliente:"        Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+10 Say vNOM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN Say Replicate("_",62)    Font "&mLetRom",10 Style "NT"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+00 Say "Código"          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+13 Say "Cantidad"        Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+27 Say "Unidad"          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+37 Say "Descripción"     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.3 TO vlIn
 @vLIN,mCLN Say Replicate("_",62)    Font "&mLetRom",10 Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Let_3110z
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
 @0,0 Say Space(01)                                Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+47 Say Substr(Dtoc(vFEM),1,2)+"        "+Substr(Dtoc(vFEM),4,2)+"          "+Substr(Dtoc(vFEM),7,4) Font "&mLetAri",11 Style "NQ"
 STORE vlIn+3.7 TO vlIn
 @vLIN,mCLN+21 Say vNOM                            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+28 Say AllTrim(F3610DIR)+", "+F3610DIS Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S50"
 @vLIN,mCLN+111 Say vRUC                           Font "&mLetAri",9 Style "NQ"
 STORE vlIn+5.5 TO vlIn
 @vLIN,mCLN+10 Say "Ref: "+F3610CM1                Font "&mLetAri",10 Style "NQ" Pict "@S100"
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
 @vLIN,mCLN+127.8 Say vSIG                  Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+139 Say tNET                    Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+127.8 Say vSIG                  Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+139 Say F3610IGV                Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+127.8 Say vSIG                  Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+139 Say tTOT                    Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Deb_3610z
 SELECT caB_nota
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
 @vLIN,mCLN+82 Say "T/Cambio:"             Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+96 Say vTCV                    Font "&mLetSwi",9 Style "NQ" Size 1,10  Pict "99.999"
 @vLIN,mCLN+123 Say vSIG                   Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+137 Say tNET                   Font "&mLetSwi",9 Style "NQ" Size 1,13  Pict "999,999.99"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+123 Say vSIG                   Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+137 Say F3610IGV               Font "&mLetSwi",9 Style "NQ" Size 1,13  Pict "999,999.99"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+7 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetSwi",8 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+123 Say vSIG                   Font "&mLetSwi",9 Style "NQ"
 @vLIN,mCLN+137 Say tTOT                   Font "&mLetSwi",9 Style "NQ" Size 1,13  Pict "999,999.99"
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC puNi, ppEs, plUg, prUc, pdDd, pdIr, pfFf, ppAr
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO peS_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE ppEs+" aprox." TO ppEs
 STORE "["+f2600ser+"-"+f2600doc+"]" TO pdDd
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pfFf
 @0,0 Say Space(01)            Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+13 Say F2600FEM    Font "&mLetRom",10 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+44 Say pFFF     Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+72 Say F2600FFA Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+13.0 Say F2600NOM  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13.0 Say pDIR      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13.0 Say pRUC      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+65.5 Say F2600FEM  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+80.0 Say pDDD      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+14.0 Say F2600CM1  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.45 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+30 Say pPAR     Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+30 Say pLUG     Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+51 Say F2600CHO    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+10 Say F2600LC1    Font "&mLetRom",10 Style "NQ"
 IF f2600pes<>0
      @vLIN,mCLN+51 Say pPES     Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+24 Say F2600TNO    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+09 Say F2600TRU    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+54 Say F2600CIM    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+09 Say F2600MR1    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+50 Say F2600PLA    Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.25 TO vlIn
 @vLIN,mCLN+09 Say F2600MR2    Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+50 Say F2600PL2    Font "&mLetRom",10 Style "NQ"
 IF f2600mot=5
      @vLIN,mCLN+134.5 Say "Consumo interno" Font "&mLetRom",10 Style "NQ"
 ENDIF
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      DO meD_2600z IN FAC0000A
      DO unI_2600z IN FAC0000A
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+7 Say vCAN                     Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+6 Say vCAN                     Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
      ENDIF
      @vLIN,mCLN+23 Say pUNI                       Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      @vLIN,mCLN+34 Say AllTrim(F2601DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+4 Say AllTrim(F2600CM2) Font "&mLetRom",11 Style "NQ"
 RELEASE puNi, ppEs, plUg, prUc, pdDd, pdIr, pfFf, ppAr
ENDPROC
*
PROCEDURE Re2_2600z
 PUBLIC puNi, pdDd, prZz, prUu, pdRc, pdIr, paDd, ppAr, plUg, ptPe
 DO paR_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 STORE "["+f2600ser+"-"+f2600doc+"]" TO pdDd
 STORE "Vidrieria de la Rosa E.I.R.L." TO prZz
 STORE "20207764711" TO prUu
 STORE "Av.Los Heroes 1297 - San Juan de Miraflores" TO pdRc
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 @0,0 Say Space(01)          Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+075 Say pDDD     Font "&mLetAri",9  Style "NT"
 STORE vlIn+2.5 TO vlIn
 @vLIN,mCLN+004 Say pRZZ     Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.05 TO vlIn
 @vLIN,mCLN+004 Say pRUU     Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.05 TO vlIn
 @vLIN,mCLN+004 Say pDRC     Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.05 TO vlIn
 @vLIN,mCLN+104 Say F2600PLA Font "&mLetAri",8  Style "NT"
 @vLIN,mCLN+120 Say F2600MR1 Font "&mLetAri",8  Style "NT"
 @vLIN,mCLN+145 Say F2600CIM Font "&mLetAri",7  Style "NT"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+04  Say F2600NOM Font "&mLetAri",9  Style "NT"
 @vLIN,mCLN+104 Say F2600PL2 Font "&mLetAri",8  Style "NT"
 @vLIN,mCLN+120 Say F2600MR2 Font "&mLetAri",8  Style "NT"
 STORE vlIn+1.05 TO vlIn
 @vLIN,mCLN+04  Say F2600RUC Font "&mLetAri",9  Style "NT"
 @vLIN,mCLN+105 Say F2600CHO Font "&mLetAri",8  Style "NT"
 @vLIN,mCLN+134 Say F2600LC1 Font "&mLetAri",7  Style "NT"
 STORE vlIn+1.05 TO vlIn
 @vLIN,mCLN+004 Say pDIR     Font "&mLetAri",8 Style "NT"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+007 Say pPAR     Font "&mLetAri",8 Style "NT"
 STORE vlIn+1.05 TO vlIn
 @vLIN,mCLN+007 Say pLUG     Font "&mLetAri",8 Style "NT"
 STORE vlIn+1.05 TO vlIn
 @vLIN,mCLN+07 Say F2600FEM  Font "&mLetAri",8 Style "NT"
 @vLIN,mCLN+40 Say F2600FEM  Font "&mLetAri",8 Style "NT"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE 0 TO ptPe
 STORE vlIn+3.5 TO vlIn
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
           @vLIN,mCLN+11 Say vCAN  Font "&mLetAri",8 Style "NQ" Size 1,15 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+10 Say vCAN  Font "&mLetAri",8 Style "NQ" Size 1,9  Pict "999,999"
      ENDIF
      @vLIN,mCLN+24 Say pUNI     Font "&mLetAri",8 Style "NQ" Size 1,9  Pict "@S10"
      @vLIN,mCLN+35 Say F2601DCR Font "&mLetAri",8 Style "NQ" Size 1,62 Pict "@S65"
      IF f2601pes<>0
           @vLIN,mCLN+141.8 Say Round(F2601PES*F2601CAN,4) Font "&mLetAri",8 Style "NQ" Size 1,13 Pict "999,999.9999"
      ENDIF
      IF f2601pes<>0
           STORE ptPe+ROUND(f2601pes*f2601can, 4) TO ptPe
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 IF ptPe<>0
      @vLIN,mCLN+124.0 Say "Total Kg" Font "&mLetRom",11 Style "NT"
      @vLIN,mCLN+140.4 Say pTPE       Font "&mLetRom",11 Style "NT" Size 1,13 Pict "999,999.99"
 ENDIF
 RELEASE puNi, pdDd, prZz, prUu, pdRc, pdIr, paDd, ppAr, plUg, ptPe
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
