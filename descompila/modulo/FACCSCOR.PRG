*
PROCEDURE Fac_1300z
 PUBLIC puNi, pnVe, pdDd, pdIs
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE "["+vsEr+"-"+vdOc+"]" TO pdDd
 STORE f1300nve TO pnVe
 STORE ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 IF AT("-", pnVe)<>0
      STORE SUBSTR(pnVe, 1, AT("-", pnVe)-1) TO pnVe
 ENDIF
 @0,0           Say Space(01)            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+012 Say F1300FEM             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+048 Say pNVE                 Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "@S17"
 @vLIN,mCLN+076 Say pDDD                 Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say F1300NOM             Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+076 Say vRUC                 Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+015 Say Lower(AllTrim(vDIR)) Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S78"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+019 Say F1300NFP             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+074 Say pDIS                 Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S78"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+5 TO vlIn
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
           @vLIN,mCLN+100      Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+116.5 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+116.0 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
      ENDIF
      @vLIN,mCLN+07 Say F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+127.0 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+145.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
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
      @vLIN,mCLN+07.0 Say mFR1        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+07.0 Say mFR2        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+07.0 Say " "         Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+07.0 Say " "         Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+010.0 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 @vLIN,mCLN+031.0 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12.0 Pict "999,999.99" Function "("
 @vLIN,mCLN+059.0 Say F1300NET      Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 @vLIN,mCLN+083.0 Say F1300PIG      Font "&mLetRom",11 Style "NQ" Size 1,03.0 Pict "99"
 @vLIN,mCLN+095.0 Say F1300IGV      Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 @vLIN,mCLN+138.0 Say vSIG          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+145.8 Say F1300TOT      Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+49 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 RELEASE puNi, pnVe, pdDd, pdIs
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pnVe, pdIs
 STORE f1300nve TO pnVe
 STORE ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 IF AT("-", pnVe)<>0
      STORE SUBSTR(pnVe, 1, AT("-", pnVe)-1) TO pnVe
 ENDIF
 @0,0 Say Space(01)                       Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+012 Say F1300FEM              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+047 Say pNVE                  Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "@S17"
 @vLIN,mCLN+076 Say "["+vSER+"-"+vDOC+"]" Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+012 Say F1300NOM              Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+076 Say vDNI                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+012 Say AllTrim(vDIR)         Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S78"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+016 Say F1300NFP              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+058 Say pDIS                  Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S78"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+5.3 TO vlIn
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
           @vLIN,mCLN+99       Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+114.5 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+114.0 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
      ENDIF
      @vLIN,mCLN+07 Say F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+128.0 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+144.8 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+012.0 Say tVAL                  Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 @vLIN,mCLN+030.0 Say F1300TOT-tVAL         Font "&mLetRom",11 Style "NQ" Size 1,12.0 Pict "999,999.99" Function "("
 @vLIN,mCLN+134.0 Say vSIG                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143.8 Say F1300TOT              Font "&mLetRom",11 Style "NQ" Size 1,11.4 Pict "999,999.99"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+48 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Npe_1300z
 DO dsP_1300z IN FAC0000A WITH "N"
ENDPROC
*
PROCEDURE Cot_1300z
 PUBLIC puNi, pfEm, pmEs
 STORE 00 TO vpAg
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 STORE " de "+ALLTRIM(pmEs)+" de " TO pmEs
 STORE "Lima, "+SUBSTR(DTOC(vfEm), 1, 2)+pmEs+SUBSTR(DTOC(vfEm), 7, 4) TO pfEm
 DO ccO_1300z WITH "1"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+12.5 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+06.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+16      Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+27 Say F1301DCR Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0 .AND. vtDd<>"C1"
           @vLIN,mCLN+115.0 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,19 Pict "99,999,999.9999"
           @vLIN,mCLN+134.5 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,17 Pict "99,999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+27 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      @vLIN,mCLN+106.0 Say "Sub-Total:" Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+133.8 Say tVAL         Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      IF tvAl<f1300tot
           @vLIN,mCLN+106 Say "Redond:"    Font "&mLetRom",10 Style "BQ"
      ELSE
           @vLIN,mCLN+106 Say "Dcto.:"     Font "&mLetRom",10 Style "BQ"
      ENDIF
      @vLIN,mCLN+133.8 Say F1300TOT-tVAL Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 @vLIN,mCLN+121.8 Say "==========" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN+115   Say vSIG         Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+133.8 Say F1300TOT     Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
 STORE vlIn+2.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Vendedor"      Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNVE            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN+24 Say "Cotización válida por 3 días" Font "&mLetRom",11 Style "NQ"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN    Say "Atentamente,"                 Font "&mLetRom",11 Style "NQI"
 RELEASE puNi, pfEm, pmEs
ENDPROC
*
PROCEDURE Cco_1300z
 PARAMETER ptPo
 STORE 00 TO vlIn
 @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "BQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN Say mDIR Font "&mLetAri",9  Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN Say "Cta.Cte.Banco de Crédito: S/ 191-2266257083" Font "&mLetAri",9  Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN Say "Cta.Cte.Banco de Crédito: US$ 191-2283216196" Font "&mLetAri",9  Style "NQ"
 STORE vlIn+2 TO vlIn
 IF ptPo="1"
      STORE vlIn+1.5 TO vlIn
      @vLIN,mCLN+101 Say pFEM Font "&mLetRom",12 Style "NQ"
      STORE vlIn+3 TO vlIn
 ENDIF
 @vLIN,mCLN+40 Say "COTIZACIÓN # "+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 STORE vlIn+4 TO vlIn
 IF ptPo="1"
      @vLIN,mCLN Say "Sres"                                   Font "&mLetRom",12 Style "BQ"
      STORE vlIn+1.4 TO vlIn
      @vLIN,mCLN Say vNOM                                     Font "&mLetRom",13 Style "BQ"
      STORE vlIn+2.5 TO vlIn
      @vLIN,mCLN Say "De nuestra consideración:"              Font "&mLetRom",12 Style "NQ"
      STORE vlIn+2.4 TO vlIn
      @vLIN,mCLN Say "Les presentamos la siguiente Proforma:" Font "&mLetRom",12 Style "NQ"
 ELSE
      STORE vlIn-2.5 TO vlIn
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Cantidad"            Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+16 Say "Unidad"              Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+27 Say "Producto"            Font "&mLetRom",10 Style "BQ"
 IF LEN(ALLTRIM(vtDd))=0
      @vLIN,mCLN+111.5 Say "Prec.Unitario" Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+130.2 Say "Precio Total"  Font "&mLetRom",10 Style "BQ"
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Des_1300z
 DO dsP_1300z IN FAC0000A WITH "D"
ENDPROC
*
PROCEDURE Let_3110z
 PUBLIC prF1, pfR2, pcL1, ptMn, pfEm, pfVe, pdIr, plEt, paDi
 STORE 08 TO ptMn
 STORE 00 TO pcL1
 STORE SUBSTR(DTOC(f3110fem), 7, 4)+" / "+SUBSTR(DTOC(f3110fem), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fem), 1, 2) TO pfEm
 STORE SUBSTR(DTOC(f3110fve), 7, 4)+" / "+SUBSTR(DTOC(f3110fve), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fve), 1, 2) TO pfVe
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 STORE f3110ser+"-"+f3110let TO plEt
 DO CASE
      CASE AT("*", f3110ref)=0 .AND. LEN(ALLTRIM(f3110ref))>14
           STORE UPPER(f3110ref) TO prF1
           STORE 9 TO ptMn
      CASE AT("*", f3110ref)=0
           STORE UPPER(f3110ref) TO prF1
           STORE 9 TO ptMn
           STORE ((14-LEN(ALLTRIM(f3110ref)))/2) TO pcL1
      OTHERWISE
           STORE 8 TO ptMn
           STORE SUBSTR(f3110ref, 1, AT("*", f3110ref)-1) TO prF1
 ENDCASE
 STORE pcL1+46.5 TO pcL1
 @0,0             Say Space(01)       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+027.5 Say pLET            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+pCL1  Say pRF1            Font "&mLetRom",pTMN Style "NQ"
 @vLIN,mCLN+074.5 Say "LIMA"          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+135.5 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141.8 Say F3110TOT        Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+093.3 Say pFEM            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+114.3 Say pFVE            Font "&mLetRom",11 Style "NQ"
 STORE vlIn+5.4 TO vlIn
 @vLIN,mCLN+027.0 Say vFRA            Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 IF f3110ren=1
      @vLIN,mCLN+95 Say "RECIBIDO"      Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+95 Say "RENOVADO"      Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+3.2 TO vlIn
 @vLIN,mCLN+28 Say F3110NOM           Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+40 Say pDIR               Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))<>0
      @vLIN,mCLN+35 Say F3110RUC        Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+35 Say "DNI:"+F3110ELE Font "&mLetRom",10 Style "NQ"
 ENDIF
 @vLIN,mCLN+70 Say F3110TEL           Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.6 TO vlIn
 @vLIN,mCLN+48 Say F3110ANO           Font "&mLetRom",9 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+40 Say pADI               Font "&mLetRom",9 Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+2.2 TO vlIn
 IF LEN(ALLTRIM(f3110aru))=0
      @vLIN,mCLN+36 Say F3110AEL        Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+36 Say F3110ARU        Font "&mLetRom",10 Style "NQ"
 ENDIF
 RELEASE prF1, pfR2, pcL1, ptMn, pfEm, pfVe, pdIr, plEt, paDi
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC prUc, pdIr, pdIs
 DO ruC_1300z IN FAC0000A
 DO CASE
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp))<=65
           STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIr
           STORE " " TO pdIs
      CASE LEN(ALLTRIM(vdIr)+", "+ALLTRIM(vdIs))<=65
           STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs) TO pdIr
           STORE "Dpto:"+SUBSTR(ALLTRIM(vdEp), 1, 35) TO pdIs
      OTHERWISE
           STORE ALLTRIM(vdIr) TO pdIr
           STORE "Dist/Dpt:"+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 ENDCASE
 @0,0 Say " "                              Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+14.0 Say vNOM                  Font "&mLetAri",9 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+71.0 Say "["+vSER+"-"+vDOC+"]" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+13.0 Say pRUC                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+113.8 Say Substr(vCM1,1,2)     Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+23.0 Say vFEM                  Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+113.8 Say Substr(vCM1,4,20)    Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
 STORE vlIn+3.1 TO vlIn
 @vLIN,mCLN+113.8 Say vCM2                 Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      IF f3611ite=1
           @vLIN,mCLN+15 Say F3611DES Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S82"
      ELSE
           @vLIN,mCLN    Say F3611DES Font "&mLetCou",10 Style "NQ"
      ENDIF
      IF f3611tot<>0
           IF f3611tot=ttOt
                @vLIN,mCLN+138 Say tNET                             Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+138 Say Round(F3611TOT/(1+(vPIG/100)),2) Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+16 Say "Direccion del Cliente: "+AllTrim(pDIR)+" "+AllTrim(pDIS) Font "&mLetAri",9 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+16 Say "Son:"+vFRA+" S.E.u.O."                                   Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+140 Say tNET     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+124 Say F3610PIG Font "&mLetRom",11 Style "NQ" Size 1,05 Pict "99"
 @vLIN,mCLN+140 Say F3610IGV Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+137 Say vSIG     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+140 Say tTOT     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE prUc, pdIr, pdIs
ENDPROC
*
PROCEDURE Deb_3610z
 DO crE_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, puNi, pdIr, ppLa, pfAc, plUd, pdDd
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 STORE ALLTRIM(f2600mr1)+"/"+ALLTRIM(f2600pla) TO ppLa
 STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pfAc
 IF LEN(ALLTRIM(f2600lug))<>0
      STORE ALLTRIM(f2600lud)+", "+ALLTRIM(f2600lup) TO plUd
 ELSE
      STORE ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO plUd
 ENDIF
 STORE "("+f2600ser+"-"+f2600doc+")" TO pdDd
 @0,0 Say Space(01)                               Font "&mLetRom",9 Style "BQ"
 @vLIN,mCLN+10 Say F2600NOM                       Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+10 Say pDIR                           Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+10 Say pRUC                           Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+42 Say F2600FEM                       Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+73 Say F2600FEM                       Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+14 Say F2600TNO                       Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+80 Say F2600LC1                       Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+09 Say AllTrim(F2600TDI)+","+F2600TDS Font "&mLetRom",9 Style "NQ" Pict "@S36" Size 1,33
 @vLIN,mCLN+80 Say AllTrim(F2600CIM)              Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+09 Say F2600TRU                       Font "&mLetRom",9 Style "NQ"
 @vLIN,mCLN+80 Say pPLA                           Font "&mLetRom",9 Style "NQ"
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+111.5 Say pFAC                     Font "&mLetRom",9 Style "NQ"
      @vLIN,mCLN+133.5 Say F2600FFA                 Font "&mLetRom",9 Style "NQ"
 ENDIF
 STORE vlIn+1.2 TO vlIn
 DO CASE
      CASE f2600mot=11
           @vLIN,mCLN+053.0 Say "x"                 Font "&mLetRom",9 Style "NQ"
      CASE f2600mot=7
           @vLIN,mCLN+092.0 Say "x"                 Font "&mLetRom",9 Style "NQ"
 ENDCASE
 @vLIN,mCLN+140.6 Say pDDD                        Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+015.6 Say "x"                 Font "&mLetRom",9 Style "NQ"
      CASE f2600mot=4
           @vLIN,mCLN+053.0 Say "x"                 Font "&mLetRom",9 Style "NQ"
      CASE f2600mot=14
           @vLIN,mCLN+092.0 Say "x"                 Font "&mLetRom",9 Style "NQ"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE f2600mot=6
           @vLIN,mCLN+015.6 Say "x"                 Font "&mLetRom",9 Style "NQ"
      CASE f2600mot=12
           @vLIN,mCLN+092.0 Say "x"                 Font "&mLetRom",9 Style "NQ"
 ENDCASE
 IF LEN(ALLTRIM(plUg))<>0 .AND. f2600mot<>5
      IF LEN(ALLTRIM(f2600lug))<>0
           @vLIN,mCLN+99.5 Say AllTrim(F2600LUG)      Font "&mLetRom",9 Style "NQ"
      ELSE
           @vLIN,mCLN+99.5 Say AllTrim(F2600DIR)      Font "&mLetRom",9 Style "NQ"
      ENDIF
 ENDIF
 STORE vlIn+1.3 TO vlIn
 DO CASE
      CASE f2600mot=8 .OR. f2600mot=12
           @vLIN,mCLN+015.6 Say "x"                 Font "&mLetRom",9 Style "NQ"
      CASE f2600mot=2 .OR. f2600mot=3
           @vLIN,mCLN+053.0 Say "x"                 Font "&mLetRom",9 Style "NQ"
      CASE f2600mot=13
           @vLIN,mCLN+092.0 Say "x"                 Font "&mLetRom",9 Style "NQ"
 ENDCASE
 IF LEN(ALLTRIM(plUg))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+99.5 Say pLUD                      Font "&mLetRom",9 Style "NQ"
 ENDIF
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.2 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT prOductos
      IF EOF() .OR. f2111tpo<>2
           STORE 1 TO ptPp
      ELSE
           STORE 2 TO ptPp
      ENDIF
      DO unI_2600z IN FAC0000A
      IF INT(f2601can)=f2601can
           @vLIN,mCLN+32 Say F2601CAN Font "&mLetRom",9 Style "NQ" Pict "999,999" Size 1,8
      ELSE
           @vLIN,mCLN+32 Say F2601CAN Font "&mLetRom",9 Style "NQ" Pict "999,999.999" Size 1,12
      ENDIF
      @vLIN,mCLN+47 Say pUNI        Font "&mLetRom",9 Style "NQ" Pict "@S20"        Size 1,20
      @vLIN,mCLN+63 Say F2601DCR    Font "&mLetRom",9 Style "NQ" Pict "@S65" Size 1,62
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+1.5 Say F2600CM1 Font "&mLetRom",9 Style "NQ"
 RELEASE prUc, plUg, ppEs, ptPp, puNi, pdIr, ppLa, pfAc, plUd, pdDd
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
PROCEDURE Cel_3610z
 PUBLIC plIn
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\OGOL.GPJ" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.GPJ" TO mdBf
 ENDIF
 @ vlIn, 0 SAY " "
 STORE vlIn+1.3 TO vlIn
 DO caB_cel IN FAC0000A
 STORE vlIn+1 TO vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Fecha de Emisión"          Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3610FEM                    Font "&mLetAri",9 Style "NQ"
 @vLIN,120 Say "ANULACIÓN DE LA OPERACIÓN" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Documento que modifica:"   Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO CASE
      CASE SUBSTR(f3610cm1, 1, 2)="FC"
           @vLIN,9 Say "Factura Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="FE"
           @vLIN,9 Say "Factura Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BC"
           @vLIN,9 Say "Boleta Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BE"
           @vLIN,9 Say "Boleta Electrónica"  Font "&mLetAri",9 Style "BQ"
 ENDCASE
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE SUBSTR(f3610cm1, 1, 2)="FE"
           @vLIN,36 Say "F"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BE"
           @vLIN,36 Say "F"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="FC"
           @vLIN,36 Say "E"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BC"
           @vLIN,36 Say "EB"+Substr(F3610CM1,5,12) Font "&mLetAri",9 Style "BQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Señor (es)"                Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say vNOM                        Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "RUC"                       Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3610RUC                    Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Tipo de Moneda"            Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f3610mon=1
           @vLIN,36 Say "Soles"              Font "&mLetAri",9 Style "NQ"
      CASE f3610mon=2
           @vLIN,36 Say "Dólar Americano"    Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 SELECT deT_nota
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 @vLIN,009 Say "Motivo o Sustento"         Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3611DES                    Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S85"
 SELECT caB_nota
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 @vLIN,008.0 Say "CANTIDAD"                Font "&mLetAri",8 Style "NQ"
 @vLIN,027.0 Say "UNIDAD DE MEDIDA"        Font "&mLetAri",8 Style "NQ"
 @vLIN,051.8 Say "DESCRIPCION"             Font "&mLetAri",8 Style "NQ"
 @vLIN,142.0 Say "VALOR UNITAR"            Font "&mLetAri",8 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE f3610net TO tnEt
 STORE f3610tot TO ttOt
 STORE 0 TO tvAl
 SELECT deT_nota
 SKIP
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,021.2 Say F3611CAN Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      @vLIN,027.0 Say F3611NUV Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "@S15"
      @vLIN,051.8 Say F3611DES Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S85"
      @vLIN,154.5 Say F3611PRE Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      DO liN_1300z IN FAC0000A WITH vlIn
      DO li2_3610z IN FAC0000A WITH vlIn
      STORE vlIn+1.2 TO vlIn
      STORE f3611pre*f3611can TO vtOt
      STORE tvAl+vtOt TO tvAl
      SKIP
 ENDDO
 STORE vlIn TO plIn
 DO fiN_1300z IN FAC0000A WITH "N3"
 IF vlIn>plIn .OR. vlIn=0 .OR. vlIn<70
      IF vlIn=0 .OR. vlIn<70
           STORE 70 TO vlIn
      ENDIF
      DO WHILE .T.
           IF plIn>vlIn
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_3610z IN FAC0000A WITH plIn
           STORE plIn+1 TO plIn
      ENDDO
 ENDIF
 SELECT caB_nota
 STORE vlIn+0.3 TO vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,08 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,112.2 Say "Sub Total Ventas"    Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tVAL                  Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Anticipos"           Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Dcto/Redond"         Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tVAL-tNET             Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Valor de Venta"      Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tNET                  Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "ISC"                 Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "IGV "+Str(F3610PIG,2,0)+"%" Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F3610IGV                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Otros Cargos"               Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                            Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Otros Tributos"             Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                            Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Importe Total"       Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F3610TOT              Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.5 TO vlIn
 @vLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE vtDo="N1"
           @vLIN,06.4 Say "Representación impresa de la Nota de Credito Electrónica"                                      Font "&mLetAri",7 Style "NQ"
      CASE vtDo="N3"
           @vLIN+0.0,06.4 Say "Representación impresa de la Nota de Credito Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @vLIN+1.5,06.4 Say "Puede verificarla utilizando su clave SOL."                                                Font "&mLetAri",7 Style "NQ"
 ENDCASE
 RELEASE plIn
ENDPROC
*
PROCEDURE Let_3110z
 PRIVATE pdIr, paDi, paRu
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 STORE ALLTRIM(f3110adi)+" "+ALLTRIM(f3110ads) TO paDi
 IF LEN(ALLTRIM(f3110aru))<>0
      STORE f3110aru TO paRu
 ELSE
      STORE f3110ael TO paRu
 ENDIF
 @0,0 Say Space(01)                                  Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,1,15)          Font "&mLetAri",8 Style "BQ"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 IF LEN(ALLTRIM(f3110ref))<=14
      @vLIN,mCLN+48 Say F3110REF                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+95  Say "LIMA"                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+136 Say vSIG                             Font "&mLetAri",9 Style "BQ" Size 1,5.1
 @vLIN,mCLN+152 Say F3110TOT                         Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "99,999.99"
 STORE vlIn+0.3 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,16,15)         Font "&mLetAri",8 Style "BQ"
 ENDIF
 @vLIN,mCLN+72  Say F3110FEM                         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+115 Say F3110FVE                         Font "&mLetAri",9 Style "BQ"
 STORE vlIn+4.3 TO vlIn
 @vLIN,mCLN+30 Say "*** "+vFRA+" "+Replicate("*",80) Font "&mLetAri",9 Style "BQ" Size 1,82 Pict "@S84"
 STORE vlIn+4.2 TO vlIn
 IF LEN(ALLTRIM(f3110nom))<=46
      @vLIN,mCLN+38 Say F3110NOM                       Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S50"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110nom))>46
      @vLIN,mCLN+28 Say F3110NOM                       Font "&mLetAri",8 Style "BQ" Size 1,62 Pict "@S62"
 ENDIF
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+35 Say pDIR                              Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+38 Say F3110RUC                       Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+38 Say F3110ELE                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+79 Say F3110TEL                          Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.0 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+44 Say F3110ANO                       Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+44 Say F3110ANO                       Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+38 Say pADI                              Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+38 Say pARU                              Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+79 Say F3110ATL                          Font "&mLetAri",9 Style "BQ"
 RELEASE pdIr, paDi, paRu
ENDPROC
*
PROCEDURE Tim_1300z
 PUBLIC pvAr, ptXt, ptD1, psR1, ptDi, prUc, pmOn, psUs, pmOt, ptOt
 = INKEY(0.5)
 STORE ALLTRIM(mpT3) TO mpT3
 DO CASE
      CASE vtDo="FE"
           SELECT caB_fact
           IF f1300cop>1
                RETURN
           ENDIF
           STORE mpT3+"Facturactiva-6-"+mrUc+"-"+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                 SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 7, 4)+"-F"+ ;
                 vsEr+"-"+ALLTRIM(STR(VAL(vdOc), 7, 0))+"-01.txt" TO pvAr
      CASE vtDo="BE"
           SELECT caB_fact
           IF f1300cop>1
                RETURN
           ENDIF
           STORE mpT3+"Facturactiva-6-"+mrUc+"-"+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                 SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 7, 4)+"-B"+ ;
                 vsEr+"-"+ALLTRIM(STR(VAL(vdOc), 7, 0))+"-03.txt" TO pvAr
      CASE vtDo="N1"
           SELECT caB_nota
           IF f3610cm1="F"
                STORE mpT3+"Facturactiva-6-"+mrUc+"-"+SUBSTR(DTOC(vfEm),  ;
                      1, 2)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 7,  ;
                      4)+"-"+SUBSTR(vsEr, 1, 1)+"0"+SUBSTR(vsEr, 2, 2)+ ;
                      "-"+ALLTRIM(STR(VAL(vdOc), 7, 0))+"-07.txt" TO pvAr
           ELSE
                STORE mpT3+"Facturactiva-6-"+mrUc+"-"+SUBSTR(DTOC(vfEm),  ;
                      1, 2)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 7,  ;
                      4)+"-"+SUBSTR(vsEr, 1, 1)+"0"+SUBSTR(vsEr, 2, 2)+ ;
                      "-"+ALLTRIM(STR(VAL(vdOc), 7, 0))+"-07.txt" TO pvAr
           ENDIF
      CASE vtDo="N2"
           SELECT caB_nota
           IF f3610cm1="F"
                STORE mpT3+"Facturactiva-6-"+mrUc+"-"+SUBSTR(DTOC(vfEm),  ;
                      1, 2)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 7,  ;
                      4)+"-"+SUBSTR(vsEr, 1, 1)+"0"+SUBSTR(vsEr, 2, 2)+ ;
                      "-"+ALLTRIM(STR(VAL(vdOc), 7, 0))+"-08.txt" TO pvAr
           ELSE
                STORE mpT3+"Facturactiva-6-"+mrUc+"-"+SUBSTR(DTOC(vfEm),  ;
                      1, 2)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 7,  ;
                      4)+"-"+SUBSTR(vsEr, 1, 1)+"0"+SUBSTR(vsEr, 2, 2)+ ;
                      "-"+ALLTRIM(STR(VAL(vdOc), 7, 0))+"-08.txt" TO pvAr
           ENDIF
 ENDCASE
 @ 2, 1 SAY ALLTRIM(pvAr)+"... Presionar una tecla para continuar..."  ;
   STYLE "BQ" SIZE 1, 140
 mkEy = INKEY(0)
 pTXT=FCreate("&pVAR")
 FSEEK(ptXt, 0, 2)
 DO CASE
      CASE vtDo="FE"
           STORE "01" TO ptD1
           STORE "F"+vsEr TO psR1
      CASE vtDo="BE"
           STORE "03" TO ptD1
           STORE "B"+vsEr TO psR1
      CASE vtDo="N1"
           STORE "07" TO ptD1
           STORE SUBSTR(vsEr, 1, 1)+"0"+SUBSTR(vsEr, 2, 2) TO psR1
      CASE vtDo="N2"
           STORE "08" TO ptD1
           STORE SUBSTR(vsEr, 1, 1)+"0"+SUBSTR(vsEr, 2, 2) TO psR1
 ENDCASE
 DO CASE
      CASE vtDo="FE" .OR. (vtDo="N1" .AND. vrUc<>" ") .OR. vtDo="N2"
           STORE vrUc TO prUc
           STORE "6" TO ptDi
      CASE (vtDo="BE" .AND. vdNi<>" ") .OR. (vtDo="N1" .AND. vdNi<>" ")
           STORE vdNi TO prUc
           STORE "0" TO ptDi
      CASE (vtDo="BE" .AND. vdNi=" ") .OR. (vtDo="N1" .AND. vdNi=" ")
           STORE "-" TO prUc
           STORE "-" TO ptDi
 ENDCASE
 DO CASE
      CASE vmOn=1
           STORE "PEN" TO pmOn
      CASE vmOn=2
           STORE "USD" TO pmOn
 ENDCASE
 DO CASE
      CASE vtDo="FE" .OR. vtDo="BE"
           STORE " " TO psUs
           STORE " " TO pmOt
      CASE vtDo="N1"
           STORE " " TO psUs
           STORE "01" TO pmOt
      CASE vtDo="N2"
           STORE " " TO psUs
           STORE "01" TO pmOt
 ENDCASE
 DO glI_1300z IN FAC0000A WITH "ï»¿Z;tipoDocumento;;"+ptD1
 DO glI_1300z IN FAC0000A WITH "Z;fechaEmision;;"+SUBSTR(DTOC(vfEm), 7,  ;
    4)+"-"+SUBSTR(DTOC(vfEm), 4, 2)+"-"+SUBSTR(DTOC(vfEm), 1, 2)
 DO glI_1300z IN FAC0000A WITH "Z;idTransaccion;;"+ptD1+vdOc
 DO glI_1300z IN FAC0000A WITH "A;serie;;"+psR1
 DO glI_1300z IN FAC0000A WITH "A;correlativo;;"+"0"+vdOc
 DO glI_1300z IN FAC0000A WITH "A;nombreEmisor;;"+vnOm
 DO glI_1300z IN FAC0000A WITH "A;tipoDocEmisor;;"+"6"
 DO glI_1300z IN FAC0000A WITH "A;numDocEmisor;;"+mrUc
 DO glI_1300z IN FAC0000A WITH "A;direccionOrigen;;"+mdIr
 DO glI_1300z IN FAC0000A WITH "A;tipoDocReceptor;;"+ptDi
 DO glI_1300z IN FAC0000A WITH "A;numDocReceptor;;"+prUc
 DO glI_1300z IN FAC0000A WITH "A;nombreReceptor;;"+vnOm
 IF LEN(ALLTRIM(vdIr))<>0
      DO glI_1300z IN FAC0000A WITH "A;direccionDestino;;"+vdIr
 ENDIF
 DO glI_1300z IN FAC0000A WITH "A;tipoMoneda;;"+pmOn
 IF vtDo="N1" .OR. vtDo="N2"
      SELECT deT_nota
      GOTO TOP
      SEEK vtDo+vsEr+vdOc
      DO glI_1300z IN FAC0000A WITH "A;sustento;;"+f3611des
      IF LEN(ALLTRIM(f3611cod))=0
           DO glI_1300z IN FAC0000A WITH "A;tipoMotivoNotaModificatoria;;01"
      ELSE
           DO glI_1300z IN FAC0000A WITH  ;
              "A;tipoMotivoNotaModificatoria;;"+ALLTRIM(f3611cod)
      ENDIF
      SELECT caB_nota
 ENDIF
 IF vtDo="FE" .OR. vtDo="BE"
      DO glI_1300z IN FAC0000A WITH "A;mntNeto;;"+ALLTRIM(STR(f1300tot- ;
         f1300igv, 12, 2))
 ELSE
      DO glI_1300z IN FAC0000A WITH "A;mntNeto;;"+ALLTRIM(STR(f3610tot- ;
         f3610igv, 12, 2))
 ENDIF
 IF vtDo="FE" .OR. vtDo="BE"
      DO glI_1300z IN FAC0000A WITH "A;mntTotalIgv;;"+ ;
         ALLTRIM(STR(f1300igv, 12, 2))
 ELSE
      DO glI_1300z IN FAC0000A WITH "A;mntTotalIgv;;"+ ;
         ALLTRIM(STR(f3610igv, 12, 2))
 ENDIF
 IF vtDo="FE" .OR. vtDo="BE"
      DO glI_1300z IN FAC0000A WITH "A;mntTotal;;"+ALLTRIM(STR(f1300tot,  ;
         12, 2))
 ELSE
      DO glI_1300z IN FAC0000A WITH "A;mntTotal;;"+ALLTRIM(STR(f3610tot,  ;
         12, 2))
 ENDIF
 IF vtDo="FE" .OR. vtDo="BE"
      DO glI_1300z IN FAC0000A WITH "A;fechaVencimiento;;"+ ;
         SUBSTR(DTOC(vfEm+vdIa), 7, 4)+"-"+SUBSTR(DTOC(vfEm+vdIa), 4, 2)+ ;
         "-"+SUBSTR(DTOC(vfEm+vdIa), 1, 2)
 ENDIF
 IF vmOn=2
      DO glI_1300z IN FAC0000A WITH "A;tipoCambioDestino;;"+ ;
         ALLTRIM(STR(vtCa, 7, 4))
 ENDIF
 DO glI_1300z IN FAC0000A WITH "A2;codImpuesto;1;"+"1000"
 IF vtDo="FE" .OR. vtDo="BE"
      DO glI_1300z IN FAC0000A WITH "A2;montoImpuesto;1;"+ ;
         ALLTRIM(STR(f1300igv, 12, 2))
 ELSE
      DO glI_1300z IN FAC0000A WITH "A2;montoImpuesto;1;"+ ;
         ALLTRIM(STR(f3610igv, 12, 2))
 ENDIF
 DO glI_1300z IN FAC0000A WITH "A2;tasaImpuesto;1;"+ALLTRIM(STR(vpIg/100,  ;
    05, 2))
 IF vtDo="FE" .OR. vtDo="BE"
      SELECT deT_fact
 ELSE
      SELECT deT_nota
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 IF vtDo="FE" .OR. vtDo="BE"
      STORE 0 TO ptOt
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           DO glI_1300z IN FAC0000A WITH "B;cantidadItem;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+ALLTRIM(STR(f1301can, 12, 4))
           DO glI_1300z IN FAC0000A WITH "B;unidadMedidaItem;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+SUBSTR(f1301nuv, 1, 3)
           DO glI_1300z IN FAC0000A WITH "B;codItem;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+f1301cod
           DO glI_1300z IN FAC0000A WITH "B;nombreItem;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+f1301dcr
           DO glI_1300z IN FAC0000A WITH "B;precioItem;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+ALLTRIM(STR(f1301to2/ ;
              f1301can, 12, 4))
           DO glI_1300z IN FAC0000A WITH "B;precioItemSinIgv;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+ALLTRIM(STR(f1301to1/ ;
              f1301can, 12, 4))
           DO glI_1300z IN FAC0000A WITH "B;montoItem;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+ALLTRIM(STR(f1301to1, 12, 2))
           DO glI_1300z IN FAC0000A WITH "B;descuentoMonto;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+ALLTRIM(STR(0, 12, 2))
           DO glI_1300z IN FAC0000A WITH "B;codAfectacionIgv;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+"10"
           DO glI_1300z IN FAC0000A WITH "B;tasaIgv;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+ALLTRIM(STR(vpIg/100, 05, 2))
           DO glI_1300z IN FAC0000A WITH "B;montoIgv;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+ALLTRIM(STR(f1301to2- ;
              f1301to1, 12, 2))
           DO glI_1300z IN FAC0000A WITH "B;idOperacion;"+ ;
              ALLTRIM(STR(f1301ite, 2, 0))+";"+"0"
           STORE ptOt+f1301to1 TO ptOt
           SKIP
      ENDDO
      SELECT caB_fact
      IF f1300net<>ptOt
           DO glI_1300z IN FAC0000A WITH "C;mntTotalDescuentos;;"+ ;
              ALLTRIM(STR((f1300net-ptOt)*-1, 12, 2))
      ENDIF
 ELSE
      SKIP
      DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
           DO glI_1300z IN FAC0000A WITH "B;cantidadItem;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+ALLTRIM(STR(f3611can, 12, 4))
           DO glI_1300z IN FAC0000A WITH "B;unidadMedidaItem;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+SUBSTR(f3611nuv, 1, 3)
           DO glI_1300z IN FAC0000A WITH "B;codItem;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+f3611cod
           DO glI_1300z IN FAC0000A WITH "B;nombreItem;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+f3611des
           DO glI_1300z IN FAC0000A WITH "B;precioItem;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+ALLTRIM(STR(f3611tot/ ;
              f3611can, 12, 4))
           DO glI_1300z IN FAC0000A WITH "B;precioItemSinIgv;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+ALLTRIM(STR(f3611pre, 12, 4))
           DO glI_1300z IN FAC0000A WITH "B;montoItem;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+ALLTRIM(STR(f3611pre* ;
              f3611can, 12, 2))
           DO glI_1300z IN FAC0000A WITH "B;descuentoMonto;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+ALLTRIM(STR(0, 12, 2))
           DO glI_1300z IN FAC0000A WITH "B;codAfectacionIgv;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+"10"
           DO glI_1300z IN FAC0000A WITH "B;tasaIgv;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+ALLTRIM(STR(vpIg/100, 05, 2))
           DO glI_1300z IN FAC0000A WITH "B;montoIgv;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+ALLTRIM(STR(f3611tot- ;
              (f3611pre*f3611can), 12, 2))
           DO glI_1300z IN FAC0000A WITH "B;idOperacion;"+ ;
              ALLTRIM(STR(f3611ite-1, 2, 0))+";"+"0"
           SKIP
      ENDDO
 ENDIF
 FCLOSE(ptXt)
 RELEASE pvAr, ptXt, ptD1, psR1, ptDi, prUc, pmOn, psUs, pmOt, ptOt
ENDPROC
*
