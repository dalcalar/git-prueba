*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 @0,0 Say Space(01) Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE mcIa="CR" .AND. vsEr="001"
           DO fa1_1300z
      CASE mcIa="CR" .AND. (vsEr="003" .OR. vsEr="004")
           DO fa2_1300z
      CASE mcIa="CR" .AND. SUBSTR(vsEr, 1, 1)="T"
           STORE 0 TO vlIn
           STORE "USAFIKA15030516" TO psRr
           STORE "0023845123959" TO paUt
           DO faT_1300z
 ENDCASE
 RELEASE puNi
ENDPROC
*
PROCEDURE FaT_1300z
 PUBLIC psWu, ppL1, ppL2
 DO caB_1300z
 @vLIN,mCLN    Say "Ticket FACTURA No.    "+vSER+"-"+vDOC      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Serie: "+pSRR                              Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                           Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "CLIENTE: "+vNOM                            Font "&mLetCou",8  Style "NQ" Size 1,45 Pict "@S45"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "RUC    : "+vRUC                            Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say vDIR                                        Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say AllTrim(vDIS)+","+AllTrim(vDEP)             Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "FECHA  : "+Dtoc(vFEM)                      Font "&mLetCou",8  Style "NQ"
 @vLIN,mCLN+32 Say "HORA: "+F1300TIM                           Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                           Font "&mLetCou",8  Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+1 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      @vLIN,mCLN Say Upper(F1301DCR) Font "&mLetCou",8 Style "NQ" Size 1,28 Pict "@S28"
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ENDIF
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+39 Say vTOT Font "&mLetCou",8 Style "NQ" Pict "99,999.99"
      ENDIF
      STORE vlIn+1 TO vlIn
      IF f1301can=1 .AND. f1301to1=0
      ELSE
           @vLIN,mCLN Say "Ctd:" Font "&mLetCou",8 Style "NQ"
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+05 Say vCAN Font "&mLetCou",8 Style "NQ" Pict "999,999.9999"
                @vLIN,mCLN+22 Say pUNI Font "&mLetCou",8 Style "NQ" Pict "@S5"
           ELSE
                @vLIN,mCLN+05 Say vCAN Font "&mLetCou",8 Style "NQ" Pict "999,999"
                @vLIN,mCLN+16 Say pUNI Font "&mLetCou",8 Style "NQ" Pict "@S5"
           ENDIF
      ENDIF
      IF vtOt<>0
           @vLIN,mCLN+30 Say "PU:" Font "&mLetCou",8 Style "NQ"
           @vLIN,mCLN+34 Say vPRE  Font "&mLetCou",8 Style "NQ" Pict "99,999.99"
      ENDIF
      STORE vlIn+1 TO vlIn
      SELECT itE_fact
      GOTO TOP
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE 0 TO psWu
           DO it1_1300z WITH "F"
           IF psWu<>0
                STORE vlIn+1 TO vlIn
           ENDIF
      ENDIF
      SELECT deT_fact
      SKIP
      IF  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           STORE vlIn+0.5 TO vlIn
      ENDIF
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN    Say Replicate("-",38) Font "&mLetCou",8 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "T/C:"            Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+06 Say vTCA              Font "&mLetCou",8 Style "NQ" Pict "9.999"
 @vLIN,mCLN+19 Say "SUB-TOTAL:"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+38 Say tVAL              Font "&mLetCou",8 Style "NQ" Pict "999,999.99"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+19 Say "DCTO/RED :"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+36.6 Say F1300NET-tVAL   Font "&mLetCou",8 Style "NQ" Pict "999,999.99" Function "("
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+19 Say "NETO     :"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+38 Say F1300NET          Font "&mLetCou",8 Style "NQ" Pict "999,999.99"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+19 Say "IGV    % :"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+25 Say F1300PIG          Font "&mLetCou",8 Style "NQ" Pict "99"
 @vLIN,mCLN+38 Say F1300IGV          Font "&mLetCou",8 Style "NQU" Pict "999,999.99"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+19 Say "TOTAL    :"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+34 Say vSIG              Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+38 Say F1300TOT          Font "&mLetCou",8 Style "NQ" Pict "999,999.99"
 DO fiN_1300z
 RELEASE psWu, ppL1, ppL2
ENDPROC
*
PROCEDURE Fa1_1300z
 @vLIN,mCLN+11.0 Say vFEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1 Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+71.0 Say vNFP Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say vRUC          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.5 Say vNVE          Font "&mLetRom",9  Style "NQ" Pict "@S30"
 @vLIN,mCLN+70.0 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11.0 Say vCM2          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+77.0 Say vTCA          Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 STORE vlIn+3.4 TO vlIn
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
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+5.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+4.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+25     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDIF
      @vLIN,mCLN+35 Say F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+125.4 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+52 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z WITH "FA"
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
 @vLIN,mCLN+2 Say vCM3 Font "&mLetAri",7 Style "NQ" Size 1,100 Pict "@S100"
 DO CASE
      CASE mdTr=1
           @vLIN,mCLN+42 Say "Operacion sujeta al SPOT D.Leg.940"             Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+42 Say "Cta.Cte.No. 00-074018955 / Banco de la Nacion"  Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           STORE vlIn+1.3 TO vlIn
      CASE LEN(ALLTRIM(vcM3))<>0
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.4 TO vlIn
      OTHERWISE
           STORE vlIn+2.8 TO vlIn
 ENDCASE
 @vLIN,mCLN+02  Say vCM5          Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+053 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+116 Say F1300IGV      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+132 Say vSIG          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+53 Say vFRA+" S.E.u.O." Font "&mLetAri",10 Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Fa2_1300z
 @vLIN,mCLN+11.0 Say vFEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1 Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+71.0 Say vNFP Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say vRUC          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.5 Say vNVE          Font "&mLetRom",9  Style "NQ" Pict "@S30"
 @vLIN,mCLN+70.0 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11.0 Say vCM2          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+77.0 Say vTCA          Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 STORE vlIn+3.4 TO vlIn
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
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+5.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+4.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
                ENDIF
                @vLIN,mCLN+25 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDCASE
      DO pc1_1300z IN FAC0000A
      @vLIN,mCLN+35 Say F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      IF vtOt<>0
           @vLIN,mCLN+125.4 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+52 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z WITH "FA"
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+2 Say vCM3 Font "&mLetAri",7 Style "NQ" Size 1,100 Pict "@S100"
 DO CASE
      CASE mdTr=1
           @vLIN,mCLN+42 Say "Operacion sujeta al SPOT D.Leg.940"             Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+42 Say "Cta.Cte.No. 00-074018955 / Banco de la Nacion"  Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           STORE vlIn+1.3 TO vlIn
      CASE LEN(ALLTRIM(vcM3))<>0
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.4 TO vlIn
      OTHERWISE
           STORE vlIn+2.8 TO vlIn
 ENDCASE
 @vLIN,mCLN+02  Say vCM5          Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+053 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+116 Say F1300IGV      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+132 Say vSIG          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+53 Say vFRA+" S.E.u.O." Font "&mLetAri",10 Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Cab_1300z
 @vLIN,mCLN+3.5  Say "Corporacion Cristalum S.A.C."        Font "&mLetAri",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+14   Say "Jr.Rio Pucartambo Mz.CH1 Lote 20"    Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+06   Say "Urb.Villa del Norte,Los Olivos,Lima" Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN      Say Replicate("-",38)                     Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+14.5 Say "RUC: 20523630556"                    Font "&mLetAri",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN      Say Replicate("-",38)                     Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
ENDPROC
*
PROCEDURE Fin_1300z
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN    Say "Forma de Pago:"             Font "&mLetCou",7  Style "NQ"
 @vLIN,mCLN+18 Say vNFP                         Font "&mLetCou",7  Style "NQ" Pict "@S30" Size 1,30
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "Vendedor:"                  Font "&mLetCou",7  Style "NQ"
 @vLIN,mCLN+18 Say vNVE                         Font "&mLetCou",7  Style "NQ" Pict "@S30" Size 1,30
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN    Say "Autorizacion:"              Font "&mLetCou",7  Style "NQ"
 @vLIN,mCLN+17 Say pAUT                         Font "&mLetCou",7  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)            Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "GRACIAS POR SU PREFERENCIA" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+1  Say mEMA                         Font "&mLetAri",7  Style "NQ"
 STORE vlIn+5 TO vlIn
 @vLIN,mCLN    Say "."                          Font "&mLetCou",8  Style "NQ"
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC psRr, paUt, puNi
 DO CASE
      CASE SUBSTR(vsEr, 1, 1)="T"
           STORE 0 TO vlIn
           STORE "USAFIKA15030516" TO psRr
           STORE "0023845123959" TO paUt
           DO boT_1300z
      OTHERWISE
           DO bo2_1300z
 ENDCASE
 RELEASE psRr, paUt, puNi
ENDPROC
*
PROCEDURE BoT_1300z
 PUBLIC psWu, ppL1, ppL2
 DO caB_1300z
 @vLIN,mCLN    Say "Ticket BOLETA No.    "+vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Serie: "+pSRR                        Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                     Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "CLIENTE: "+vNOM                      Font "&mLetCou",8  Style "NQ" Size 1,45 Pict "@S45"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "DNI    : "+vDNI                      Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "FECHA  : "+Dtoc(vFEM)                Font "&mLetCou",8  Style "NQ"
 @vLIN,mCLN+32 Say "HORA: "+F1300TIM                     Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                     Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
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
      STORE SUBSTR(puNi, 1, 7) TO puNi
      @vLIN,mCLN Say Upper(F1301DCR) Font "&mLetCou",8 Style "NQ" Size 1,28 Pict "@S28"
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ENDIF
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+39 Say vTOT Font "&mLetCou",8 Style "NQ" Pict "99,999.99"
      ENDIF
      STORE vlIn+1 TO vlIn
      IF f1301can=1 .AND. f1301to1=0
      ELSE
           @vLIN,mCLN Say "Ctd:"    Font "&mLetCou",8 Style "NQ"
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+05 Say vCAN Font "&mLetCou",8 Style "NQ" Pict "999,999.9999"
                @vLIN,mCLN+22 Say pUNI Font "&mLetCou",8 Style "NQ" Pict "@S5"
           ELSE
                @vLIN,mCLN+05 Say vCAN Font "&mLetCou",8 Style "NQ" Pict "999,999"
                @vLIN,mCLN+16 Say pUNI Font "&mLetCou",8 Style "NQ" Pict "@S5"
           ENDIF
      ENDIF
      IF vtOt<>0
           @vLIN,mCLN+30 Say "PU:" Font "&mLetCou",8 Style "NQ"
           @vLIN,mCLN+34 Say vPRE  Font "&mLetCou",8 Style "NQ" Pict "99,999.99"
      ENDIF
      STORE vlIn+1 TO vlIn
      SELECT itE_fact
      GOTO TOP
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE 0 TO psWu
           DO it1_1300z WITH "B"
           IF psWu<>0
                STORE vlIn+1 TO vlIn
           ENDIF
      ENDIF
      SELECT deT_fact
      SKIP
      IF  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           STORE vlIn+0.5 TO vlIn
      ENDIF
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN    Say Replicate("-",38) Font "&mLetCou",8 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "T/C:"            Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+06 Say vTCA              Font "&mLetCou",8 Style "NQ" Pict "9.999"
 @vLIN,mCLN+19 Say "SUB-TOTAL:"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+38 Say tVAL              Font "&mLetCou",8 Style "NQ" Pict "999,999.99"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+19 Say "DCTO/RED :"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+36.6 Say F1300TOT-tVAL   Font "&mLetCou",8 Style "NQU" Pict "999,999.99" Function "("
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+19 Say "TOTAL    :"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+34 Say vSIG              Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+38 Say F1300TOT          Font "&mLetCou",8 Style "NQ" Pict "999,999.99"
 DO fiN_1300z
 RELEASE psWu, ppL1, ppL2
ENDPROC
*
PROCEDURE Bo2_1300z
 @0,0 Say Space(01) Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+012 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+040 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+070 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+093 Say vVEN          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+077 Say "DNI:"+vDNI   Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(vDEP) Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+077 Say vNFP          Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "@S10"
 STORE vlIn+4.8 TO vlIn
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
                     @vLIN,mCLN+4 Say vCAN             Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3 Say vCAN             Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                DO CASE
                     CASE vcTd<>0
                          @vLIN,mCLN+18 Say "Piezas"   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                     OTHERWISE
                          @vLIN,mCLN+18 Say F1301NUV   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                ENDCASE
                @vLIN,mCLN+28 Say vCOD+":"           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
      ENDCASE
      @vLIN,mCLN+46 Say AllTrim(F1301DCR) Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123.9 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+141.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ALLTRIM(f1302cod)+"*"=ALLTRIM(vcOd)+"*"
           DO itE_1300z WITH "BO"
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+045.3 Say vTCA          Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 @vLIN,mCLN+073.5 Say tVAL          Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+110.0 Say F1300TOT-tVAL Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+134.0 Say vSIG          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142.5 Say F1300TOT      Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+048.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC puNi
 STORE 00 TO vlIn, mcLn
 STORE 38 TO mpAg
 @0,0 Say " " Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE vsEr="003"
           DO np2_1300z
      OTHERWISE
           DO np1_1300z
 ENDCASE
 RELEASE puNi
ENDPROC
*
PROCEDURE Np1_1300z
 STORE vlIn+10.1 TO vlIn
 @vLIN,mCLN+12  Say vNOM                                                    Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+99  Say vRUC                                                    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+136 Say Substr(Dtoc(vFEM),1,2)+"        "+Substr(Dtoc(vFEM),4,2)+"       "+Substr(Dtoc(vFEM),7,4) Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.8 TO vlIn
 @vLIN,mCLN+12 Say AllTrim(vDIR)+", "+AllTrim(vDIS)+", "+AllTrim(F1300DEP) Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 @vLIN,mCLN+99 Say vTEL                                                    Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+4.2 TO vlIn
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
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+4 Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,12 Pict "9999.9999"
           ELSE
                @vLIN,mCLN+7 Say vCAN  Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN+16 Say pUNI    Font "&mLetRom",10 Style "NQ" Size 1,3 Pict "@S4"
      ENDIF
      @vLIN,mCLN      Say F1301ITE Font "&mLetRom",10 Style "NQ" Size 1,3  Pict "99"
      @vLIN,mCLN+23.0 Say F1301COD Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
      @vLIN,mCLN+40.5 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+127 Say vPRE                   Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+148 Say vTOT                   Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO itE_1300z WITH "NP"
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 STORE 39 TO vlIn
 @vLIN,mCLN+74 Say "Sub-Total:"   Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+88 Say tVAL           Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 IF tvAl<f1300tot
      @vLIN,mCLN+103 Say "Redon:"   Font "&mLetRom",11 Style "BQ"
 ELSE
      @vLIN,mCLN+103 Say "Dcto.:"   Font "&mLetRom",11 Style "BQ"
 ENDIF
 @vLIN,mCLN+112 Say F1300TOT-tVAL Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
 IF f1300mon=2
      @vLIN,mCLN+136 Say "US$"      Font "&mLetRom",11 Style "BQ"
 ENDIF
 @vLIN,mCLN+147 Say F1300TOT      Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE Np2_1300z
 PUBLIC puNi, pdIr, pmEs
 DO diR_1300z IN FAC0000A
 DO cnP_1300z IN FAC0000A
 STORE vlIn+0.7 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN     Say "Nombre:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "BQ"
           DO feC_1300z IN FAC0000A WITH vlIn, 120
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Dirección:"                                        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say pDIR             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Telefono:"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vTEL             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Observaciones:" Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vCM1             Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+110 Say "Vend:"          Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNVE             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+110 Say "F.Pago:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNFP             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+001 Say "Cantidad"       Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+016 Say "Unidad"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+027 Say "Código"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+044 Say "Descripción"    Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+125 Say "Prec.Unit"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+142 Say "Prec.Total"     Font "&mLetAri",9 Style "BQ"
           STORE vlIn+0.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
      CASE mpRt="2"
           @vLIN,mCLN     Say "Nombre:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vNOM             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           @vLIN,mCLN+110 Say "Fecha:"         Font "&mLetAri",9 Style "BQ"
           DO feC_1300z IN FAC0000A WITH vlIn, 120
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Dirección:"                                        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say pDIR             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Telefono:"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vTEL             Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN     Say "Observaciones:" Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+021 Say vCM1             Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+110 Say "Vend:"          Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNVE             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+110 Say "F.Pago:"        Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+120 Say vNFP             Font "&mLetAri",9 Style "NQ"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+004 Say "Cantidad"       Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+016 Say "Unidad"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+027 Say "Código"         Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+044 Say "Descripción"    Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+119 Say "Prec.Unit"      Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+133 Say "Prec.Total"     Font "&mLetAri",9 Style "BQ"
           STORE vlIn+0.4 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)   Font "&mLetAri",9 Style "NT"
 ENDCASE
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
           DO cnP_1300z IN FAC0000A
      ENDIF
      DO unI_1300z IN FAC0000A
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+65 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
           CASE mpRt="2"
                @vLIN,mCLN+45 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      ENDCASE
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ELSE
           DO CASE
                CASE mpRt="1"
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN+7 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                     @vLIN,mCLN+32 Say vCOD+":" Font "&mLetRom",10 Style "NQ"
                CASE mpRt="2"
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN+4 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN+3 Say vCAN   Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+16 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
                     @vLIN,mCLN+27 Say vCOD+":" Font "&mLetRom",10 Style "NQ"
           ENDCASE
      ENDIF
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+134.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
                     @vLIN,mCLN+151.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+119.2 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
                     @vLIN,mCLN+136.4 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,11.4 Pict "999,999.99"
           ENDCASE
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+44 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
                CASE mpRt="2"
                     @vLIN,mCLN+44 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
           ENDCASE
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO cnP_1300z IN FAC0000A
           ENDIF
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+16 Say "Medidas:" Font "&mLetRom",11 Style "NQ"
                CASE mpRt="2"
                     @vLIN,mCLN    Say "Medidas:" Font "&mLetRom",11 Style "NQ"
           ENDCASE
           STORE vlIn+0.3 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z IN FAC0000A
           ENDIF
           DO itE_1300z WITH "NP"
           STORE vlIn+1.5 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z IN FAC0000A
           ENDIF
           @vLIN,mCLN+39 Say "Sub-Total:"    Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+65 Say tVAL            Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
           IF tvAl<f1300tot
                @vLIN,mCLN+79 Say "Red."       Font "&mLetRom",11 Style "BQ"
           ELSE
                @vLIN,mCLN+79 Say "Dcto.:"     Font "&mLetRom",11 Style "BQ"
           ENDIF
           @vLIN,mCLN+112 Say F1300TOT-tVAL  Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
           @vLIN,mCLN+127 Say vSIG           Font "&mLetRom",11 Style "BQ"
           @vLIN,mCLN+150 Say F1300TOT       Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
      CASE mpRt="2"
           @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
           STORE vlIn+1.4 TO vlIn
           IF vlIn>mpAg-3
                DO cnP_1300z IN FAC0000A
           ENDIF
           @vLIN,mCLN+73 Say "Sub-Total:"    Font "&mLetAri",9  Style "BQ"
           @vLIN,mCLN+87 Say tVAL            Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
           IF tvAl<f1300tot
                @vLIN,mCLN+102 Say "Red."      Font "&mLetAri",9  Style "BQ"
           ELSE
                @vLIN,mCLN+102 Say "Dcto.:"    Font "&mLetAri",9  Style "BQ"
           ENDIF
           @vLIN,mCLN+111 Say F1300TOT-tVAL  Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99" Function "("
           @vLIN,mCLN+128 Say vSIG           Font "&mLetAri",9  Style "BQ"
           @vLIN,mCLN+133 Say F1300TOT       Font "&mLetRom",11 Style "BQ" Size 1,13 Pict "999,999.99"
 ENDCASE
 RELEASE puNi, pdIr, pmEs
ENDPROC
*
PROCEDURE Cnp_1300z
 STORE 00 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
           STORE vlIn+0.5 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)           Font "&mLetAri",9  Style "NT"
      CASE mpRt="2"
           @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
           STORE vlIn+0.5 TO vlIn
           @vLIN,mCLN Say Replicate("_",110)           Font "&mLetAri",9  Style "NT"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
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
 IF LEN(ALLTRIM(vcM1))=0 .AND. LEN(ALLTRIM(f1300cm2))=0
      @vLIN,mCLN    Say "Cliente"       Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+12 Say ":"             Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+14 Say vNOM            Font "&mLetAri",9 Style "NQ"
 ELSE
      @vLIN,mCLN    Say "Cliente"       Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+19 Say ":"             Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+21 Say vNOM            Font "&mLetAri",9 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN    Say "Observaciones" Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+19 Say ":"             Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+21 Say vCM1            Font "&mLetAri",9 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN+21 Say F1300CM2        Font "&mLetAri",9 Style "NQ"
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)    Font "&mLetSwi",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+03.2 Say "Cantidad"       Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+16.0 Say "Med/Unid"       Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+30.0 Say "Código"         Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+47.0 Say "Descripción"    Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",110)    Font "&mLetSwi",9 Style "NT"
 STORE vlIn+1.6 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
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
      ENDCASE
      @vLIN,mCLN+30 Say F1301COD                 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
      @vLIN,mCLN+47 Say F1301DCR                 Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO cdE_1300z
           ENDIF
           DO itE_1300z WITH "DE"
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",110) Font "&mLetSwi",9 Style "NT"
ENDPROC
*
PROCEDURE Cde_1300z
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
 @vLIN,mCLN+135 Say "Pagina: "+Str(vPAG,2,0)                             Font "&mLetAri",9  Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN     Say Replicate("_",110)                                   Font "&mLetSwi",9  Style "NT"
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Cot_1300z
 SELECT caB_fact
 STORE 13 TO mcLn
 STORE 00 TO vpAg
 DO ccO_1300z WITH "1"
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
           DO ccO_1300z WITH "2"
      ENDIF
      DO CASE
           CASE f1301can=1 .AND. f1301to1=0
                STORE f1301can TO vcAn
           OTHERWISE
                DO CASE
                     CASE vcTd<>0
                          STORE vcTd TO vcAn
                          @vLIN,mCLN+16 Say "Pzas"     Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                     CASE vtPo=2
                          STORE f1301pie TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                     OTHERWISE
                          STORE f1301can TO vcAn
                          @vLIN,mCLN+16 Say F1301NUV   Font "&mLetSwi",9 Style "NQ" Size 1,7 Pict "@S7"
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+2 Say vCAN             Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+1 Say vCAN             Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
      @vLIN,mCLN+27 Say F1301DCR Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0 .AND. LEN(ALLTRIM(vtDd))=0
           @vLIN,mCLN+107 Say vPRE                   Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
           @vLIN,mCLN+127 Say vTOT                   Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.3 TO vlIn
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
           @vLIN,mCLN+44 Say F1301REF                Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
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
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO ccO_1300z WITH "2"
           ENDIF
           DO itE_1300z WITH "CT"
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 @vLIN,mCLN Say Replicate("_",104) Font "&mLetAri",9 Style "NT"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      @vLIN,mCLN+106   Say "Sub-Total:"  Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+122.4 Say tVAL          Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+106   Say "Dcto.:"      Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+122.4 Say tVAL-F1300TOT Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
      @vLIN,mCLN+122.1 Say "========"    Font "&mLetSwi",9  Style "NQ"
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z WITH "2"
      ENDIF
 ENDIF
 @vLIN,mCLN+115   Say vSIG             Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+122.4 Say F1300TOT         Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Observaciones"     Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                 Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vCM1                Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Vendedor"          Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                 Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNVE                Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Forma de Pago"     Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"                 Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNFP                Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN    Say "Atentamente,"      Font "&mLetRom",11 Style "NQI"
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
 @vLIN,mCLN Say Replicate("_",104)                                 Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+4.8   Say "Cantidad"                                   Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+16    Say "Unidad"                                     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+27    Say "Producto"                                   Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+104   Say "Prec.Unitario"                              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+124.2 Say "Precio Total"                               Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",104)                                 Font "&mLetAri",9  Style "NT"
 STORE vlIn+1.6 TO vlIn
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
           STORE 21 TO vcLn
 ENDCASE
 SELECT itE_fact
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           DO CASE
                CASE ptDo="CT"
                     STORE 12 TO vcLn
                OTHERWISE
                     STORE 21 TO vcLn
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
 ENDDO
ENDPROC
*
PROCEDURE Let_3110z
 @0,0 Say Space(01)                                  Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.5 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>15
      @vLIN,mCLN+35 Say Substr(F3110REF,1,16)          Font "&mLetAri",8 Style "BQ"
 ENDIF
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN+23 Say F3110LET                          Font "&mLetAri",9 Style "BQ"
 IF LEN(ALLTRIM(f3110ref))<=14
      @vLIN,mCLN+40 Say F3110REF                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+86  Say "LIMA"                           Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+123 Say vSIG                             Font "&mLetAri",9 Style "BQ" Size 1,5.1
 @vLIN,mCLN+131 Say F3110TOT                         Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+0.4 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>15
      @vLIN,mCLN+35 Say Substr(F3110REF,17,15)         Font "&mLetAri",8 Style "BQ"
 ENDIF
 @vLIN,mCLN+62  Say F3110FEM                         Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+104 Say F3110FVE                         Font "&mLetAri",9 Style "BQ"
 STORE vlIn+4.6 TO vlIn
 @vLIN,mCLN+36 Say "*** "+vFRA+" "+Replicate("*",80) Font "&mLetAri",9 Style "BQ" Size 1,82 Pict "@S84"
 STORE vlIn+3.6 TO vlIn
 IF LEN(ALLTRIM(f3110nom))<=46
      @vLIN,mCLN+30 Say F3110NOM Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S50"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110nom))>46
      @vLIN,mCLN+30 Say F3110NOM Font "&mLetAri",8 Style "BQ" Size 1,62 Pict "@S62"
 ENDIF
 STORE vlIn+1.0 TO vlIn
 @vLIN,mCLN+30 Say F3110DIR    Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+64 Say F3110DIS    Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.2 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+30 Say F3110RUC Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+30 Say F3110ELE Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+64  Say F3110TEL   Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.4 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+32 Say F3110ANO Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+32 Say F3110ANO Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+30 Say F3110ADI    Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+30 Say F3110ADS    Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 @vLIN,mCLN+64 Say F3110ATL    Font "&mLetAri",9 Style "BQ"
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110aru))<>0
      @vLIN,mCLN+30 Say F3110ARU Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+30 Say F3110AEL Font "&mLetAri",9 Style "BQ"
 ENDIF
ENDPROC
*
PROCEDURE Deb_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, puNi, ppAr, plEt
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 @0,0           Say Space(01)                          Font "&mLetSwi",8 Style "BT"
 @vLIN,mCLN+014 Say F2600FEM                           Font "&mLetSwi",8 Style "NT"
 @vLIN,mCLN+042 Say F2600TIM                           Font "&mLetSwi",8 Style "NT"
 @vLIN,mCLN+080 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetSwi",7 Style "NT"
 STORE vlIn+0.9 TO vlIn
 @vLIN,mCLN+014 Say F2600NOM                           Font "&mLetSwi",8 Style "NT"
 STORE vlIn+0.9 TO vlIn
 @vLIN,mCLN+014 Say pLUG                               Font "&mLetSwi",8 Style "NT"
 STORE vlIn+0.9 TO vlIn
 @vLIN,mCLN+014 Say pRUC                               Font "&mLetSwi",8 Style "NT"
 @vLIN,mCLN+042 Say F2600SER+"-"+F2600DOC              Font "&mLetSwi",8 Style "NT"
 STORE vlIn+0.9 TO vlIn
 @vLIN,mCLN+014 Say pPAR                               Font "&mLetSwi",8 Style "NT"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+014 Say F2600TNO                           Font "&mLetSwi",8 Style "NT"
 @vLIN,mCLN+075 Say F2600TRU                           Font "&mLetSwi",8 Style "NT"
 STORE vlIn+1.75 TO vlIn
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+026.70 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=6
           @vLIN,mCLN+039.10 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=8
           @vLIN,mCLN+059.40 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=2
           @vLIN,mCLN+095.10 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=9
           @vLIN,mCLN+120.10 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=14
           @vLIN,mCLN+147.10 Say "x" Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+4 TO vlIn
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      DO meD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_2600z IN FAC0000A
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+09.5 Say vCAN   Font "&mLetSwi",9 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+08.3 Say vCAN   Font "&mLetSwi",9 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      @vLIN,mCLN+022.5 Say pUNI     Font "&mLetSwi",9 Style "NQ" Size 1,9    Pict "@S10"
      @vLIN,mCLN+035.0 Say F2601DCR Font "&mLetSwi",9 Style "NQ" Size 1,75   Pict "@S75"
      @vLIN,mCLN+135.0 Say F2601PES Font "&mLetSwi",9 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+118 Say "Peso Total:" Font "&mLetSwi",9 Style "BQ"
 @vLIN,mCLN+135 Say F2600PES      Font "&mLetSwi",9 Style "NQ" Size 1,14.3 Pict "999,999.9999"
 RELEASE prUc, plUg, ppEs, ptPp, puNi, ppAr, plEt
ENDPROC
*
PROCEDURE Cre_3610z
 SELECT caB_nota
 @0,0 Say Space(01)                                 Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+15  Say vNOM                            Font "&mLetRom",11 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+15  Say AllTrim(F3610DIR)+", "+F3610DIS Font "&mLetRom",11 Style "NQ" Size 1,52 Pict "@S50"
 @vLIN,mCLN+87  Say vRUC                            Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+15  Say vNVE                            Font "&mLetRom",11 Style "NQ" Size 1,52 Pict "@S50"
 @vLIN,mCLN+126 Say F3610FEM                        Font "&mLetRom",11 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+15  Say F3610CM1                        Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+4.5 TO vlIn
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+10     Say F3611DES Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S100"
      IF f3611tot<>0
           @vLIN,mCLN+095 Say F3611CAN Font "&mLetRom",11 Style "NQ" Size 1,19 Pict "999,999.9999"
           @vLIN,mCLN+115 Say F3611PRE Font "&mLetRom",11 Style "NQ" Size 1,19 Pict "999,999.9999"
           @vLIN,mCLN+135 Say F3611TOT Font "&mLetRom",11 Style "NQ" Size 1,19 Pict "999,999.9999"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+10 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+075.0 Say tNET                  Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 @vLIN,mCLN+103.0 Say F3610IGV              Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
 @vLIN,mCLN+126.8 Say vSIG                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+135.0 Say tTOT                  Font "&mLetRom",11 Style "NQ" Size 1,13 Pict "999,999.99"
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
PROCEDURE Fel_1300z
 PUBLIC puNi, ppZa, plIn, plI0
 STORE vlIn TO plIn
 @ plIn, 0 SAY " "
 DO caB_fel
 STORE plIn+1 TO plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300FEM               Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300FEM+F1300DIA      Font "&mLetAri",9 Style "NQ"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "RUC"                  Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300RUC               Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Forma de Pago"        Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NFP               Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Dirección"         Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300DIR            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Tipo de Moneda"    Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f1300mon=1
           @pLIN,138 Say "Soles"           Font "&mLetAri",9 Style "NQ"
      CASE f1300mon=2
           @pLIN,138 Say "Dólar Americano" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,034 Say F1300DIS            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "T/Cambio"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,143 Say vTCA                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,034 Say F1300DEP            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Guía de Remisión"  Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say vCM1                Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "@S12"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Observaciones"     Font "&mLetAri",9 Style "BQ"
 @pLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,034 Say F1300CM2            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 STORE plIn+0.5 TO plIn
 DO deT_fel_chi IN FAC0000A
 STORE plIn-0.5 TO plIn
 STORE plIn-vlIn TO plI0
 IF plI0<35
      DO WHILE .T.
           IF plI0>=35
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_1300z IN FAC0000A WITH plIn
           STORE plIn+0.5 TO plIn
           STORE plI0+0.5 TO plI0
      ENDDO
 ENDIF
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 @pLIN,08 Say "Son: "+vFRA+" S.E.u.O."       Font "&mLetAri",8  Style "NT" Size 1,100 Pict "@S100"
 @pLIN,112.2 Say "OP.GRAVADAS"               Font "&mLetAri",8  Style "NT"
 @pLIN,137.8 Say vSIG                        Font "&mLetAri",8  Style "NT"
 @pLIN,153.2 Say tVAL                        Font "&mLetAri",8  Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.4 TO plIn
 @pLIN,06.4 Say Replicate("-",127)           Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)           Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)           Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 SELECT caB_fact
 @pLIN,012.2 Say "OP.INAFECTAS"               Font "&mLetAri",8 Style "NT"
 @pLIN,037.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,053.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,062.2 Say "OTROS CARGOS"               Font "&mLetAri",8 Style "NT"
 @pLIN,087.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,103.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,112.2 Say "DCTO/REDOND"                Font "&mLetAri",8 Style "NT"
 @pLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,153.2 Say F1300NET-tVAL                Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 @pLIN,012.2 Say "OP.EXONERADAS"              Font "&mLetAri",8 Style "NT"
 @pLIN,037.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,053.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,062.2 Say "OTROS TRIBUTOS"             Font "&mLetAri",8 Style "NT"
 @pLIN,087.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,103.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,112.2 Say "IGV "+Str(F1300PIG,2,0)+"%" Font "&mLetAri",8 Style "NT"
 @pLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,153.2 Say F1300IGV                     Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li3_1300z IN FAC0000A WITH plIn
 @pLIN,012.2 Say "OP.GRATUITAS"               Font "&mLetAri",8 Style "NT"
 @pLIN,037.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,053.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,062.2 Say "FLETE"                      Font "&mLetAri",8 Style "NT"
 @pLIN,087.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,103.2 Say 0                            Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 @pLIN,112.2 Say "TOTAL"                      Font "&mLetAri",8 Style "NT"
 @pLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NT"
 @pLIN,153.2 Say F1300TOT                     Font "&mLetAri",8 Style "BT" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.5 TO plIn
 @pLIN,06.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)            Font "&mLetAri",13 Style "NT"
 STORE plIn+1.2 TO plIn
 DO CASE
      CASE vtDo="FE"
           @pLIN+0.0,06.4 Say "Representación impresa de la Factura Electrónica"                                  Font "&mLetAri",7 Style "NQ"
           @pLIN+1.2,06.4 Say "Para consultar y/o imprimir el documento ingrese a"                                Font "&mLetAri",7 Style "NQ"
           @pLIN+2.4,06.4 Say "https://dev.invoice2u.pe/portal/login.jsf"                                         Font "&mLetAri",7 Style "NQ"
           STORE plIn+2.4 TO plIn
      CASE vtDo="FC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Factura Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.2,06.4 Say "Puede verificarla utilizando su clave SOL."                                        Font "&mLetAri",7 Style "NQ"
           STORE plIn+1.2 TO plIn
 ENDCASE
 DO feI_4240z
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
ENDPROC
*
PROCEDURE Cab_Fel
 PRIVATE pdIr, plEn
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\OGOL.GPJ" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.GPJ" TO mdBf
 ENDIF
 DO coLbln
 @pLIN,93.2 Say Replicate("-",55)                               Font "&mLetAri",13 Style "NT"
 @pLIN,93.7 Say Replicate("-",55)                               Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,102.1 Say "R.U.C. N"                                     Font "&mLetAri",16 Style "BQ"
 @pLIN,120.7 Say Chr(176)                                       Font "&mLetAri",16 Style "BQ"
 @pLIN,124.2 Say mRUC                                           Font "&mLetRom",16 Style "BQ"
 If File("&mDBF")
      @pLIN,7 Say "&mDBF" Bitmap Size 14,22 Isometric
 ENDIF
 STORE plIn+0.1 TO plIn
 @pLIN,120.5 Say Chr(6)                                         Font "&mLetAri",16 Style "BT"
 STORE plIn+0.6 TO plIn
 @pLIN,033.0 Say mRAZ                                           Font "&mLetRom",12 Style "BT"
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO CASE
      CASE ALLTRIM(mtIp)="0000"
           @pLIN,033.0 Say "Jr.Rio Paucartambo Mz. CH1 Lote 20"   Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      CASE ALLTRIM(mtIp)="0001"
           @pLIN,033.0 Say "Calle San Hernan 6295"                Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      CASE ALLTRIM(mtIp)="0003"
           @pLIN,033.0 Say "Av. Alfredo Mendiola Mza. C1 Lote 29" Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ENDCASE
 STORE plIn+0.5 TO plIn
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.3 TO plIn
 DO CASE
      CASE vtDo="FE"
           @pLIN,102.4 Say "FACTURA ELECTRÓNICA"                  Font "&mLetAri",14 Style "BQ"
      CASE vtDo="BE"
           @pLIN,096.0 Say "BOLETA DE VENTA ELECTRÓNICA"          Font "&mLetAri",13 Style "BQ"
 ENDCASE
 STORE plIn+0.7 TO plIn
 DO CASE
      CASE ALLTRIM(mtIp)="0000"
           @pLIN,033.0 Say "Urb. Villa Norte, Los Olivos"         Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      CASE ALLTRIM(mtIp)="0001"
           @pLIN,033.0 Say "Urb. Santa Luisa, Los Olivos"         Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      CASE ALLTRIM(mtIp)="0003"
           @pLIN,033.0 Say "Urb. Villa Norte, Los Olivos"         Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ENDCASE
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.2 TO plIn
 @pLIN,33 Say "Teléfonos: "+mTEL                                Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 STORE plIn+1.1 TO plIn
 @pLIN,107.0 Say "N"                                            Font "&mLetAri",17 Style "BQ"
 @pLIN,110.7 Say Chr(176)                                       Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO CASE
      CASE vtDo="FE"
           @pLIN,115 Say "F"+vSER+"-"+vDOC                        Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BE"
           @pLIN,115 Say "B"+vSER+"-"+vDOC                        Font "&mLetAri",17 Style "BQ"
      CASE vtDo="FC"
           @pLIN,115 Say "E"+vSER+"-"+vDOC                        Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BC"
           @pLIN,115 Say "EB"+Substr(vSER,2,2)+"-"+vDOC           Font "&mLetAri",17 Style "BQ"
 ENDCASE
 DO coLbln
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.2 TO plIn
 @pLIN,33 Say mEMA                                              Font "&mLetAri",9  Style "NT" Size 1,90 Pict "@S70"
 STORE plIn+0.4 TO plIn
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 @pLIN,093.0 Say "|"                                            Font "&mLetAri",13 Style "NT"
 @pLIN,159.1 Say "|"                                            Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 @pLIN,93.2 Say Replicate("-",55)                               Font "&mLetAri",13 Style "NT"
 @pLIN,93.7 Say Replicate("-",55)                               Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
PROCEDURE Bel_1300z
 PUBLIC puNi, ppZa, plIn, plI0
 STORE vlIn TO plIn
 @ plIn, 0 SAY " "
 STORE plIn+1 TO plIn
 DO caB_fel
 STORE plIn+1 TO plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300FEM               Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300FEM+F1300DIA      Font "&mLetAri",9 Style "NQ"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "DNI"               Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300ELE            Font "&mLetAri",9 Style "NQ"
 @pLIN,108 Say "Forma de Pago"     Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NFP            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S18"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Dirección"         Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300DIR            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Tipo de Moneda"    Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f1300mon=1
           @pLIN,138 Say "Soles"           Font "&mLetAri",9 Style "NQ"
      CASE f1300mon=2
           @pLIN,138 Say "Dolar Americano" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,033 Say F1300DIS            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "T/Cambio"          Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,143 Say vTCA                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,033 Say F1300DEP            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @pLIN,108 Say "Guia de Remisión"  Font "&mLetAri",9 Style "BQ"
 @pLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,138 Say vCM1                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S10"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,009 Say "Observaciones"     Font "&mLetAri",9 Style "BQ"
 @pLIN,031 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @pLIN,033 Say F1300CM2            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 @pLIN,011.0 Say "CODIGO"          Font "&mLetAri",8 Style "NQ"
 @pLIN,027.0 Say "DESCRIPCION"     Font "&mLetAri",8 Style "NQ"
 @pLIN,111.9 Say "UNIDAD"          Font "&mLetAri",8 Style "NQ"
 @pLIN,125.6 Say "CANTIDAD"        Font "&mLetAri",8 Style "NQ"
 @pLIN,142.4 Say "PRECIO-UNITA"    Font "&mLetAri",8 Style "NQ"
 STORE plIn+0.5 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      DO toT_pzasz IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_1300z IN FAC0000A
      DO pc2_1300z IN FAC0000A
      IF ppZa=0
           @pLIN,27 Say AllTrim(F1301DCR)                         Font "&mLetAri",8 Style "NQ" Size 1,65 Pict "@S65"
      ELSE
           @pLIN,27 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,4,0) Font "&mLetAri",8 Style "NQ" Size 1,65 Pict "@S65"
      ENDIF
      IF vtOt<>0
           @pLIN,008.0 Say vCOD  Font "&mLetAri",8 Style "NQ" Size 1,10 Pict "@S13"
           @pLIN,112.5 Say pUNI  Font "&mLetAri",8 Style "NQ" Size 1,7  Pict "@S7"
           @pLIN,136.8 Say vCAN  Font "&mLetAri",8 Style "NQ" Size 1,20 Pict "9,999,999.9999"
           @pLIN,155.2 Say vPRE  Font "&mLetAri",8 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      ENDIF
      DO liN_1300z IN FAC0000A WITH plIn
      DO li2_1300z IN FAC0000A WITH plIn
      STORE plIn+1.1 TO plIn
      SKIP
 ENDDO
 STORE plIn-vlIn TO plI0
 IF plI0<35
      DO WHILE .T.
           IF plI0>=35
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_1300z IN FAC0000A WITH plIn
           STORE plIn+0.5 TO plIn
           STORE plI0+0.5 TO plI0
      ENDDO
 ENDIF
 DO liN_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 @pLIN,08 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetAri",8 Style "NQ" Size 1,100 Pict "@S100"
 @pLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 SELECT caB_fact
 IF f1300tot-tvAl>0
      @pLIN,112.5 Say "REDONDEO"         Font "&mLetAri",8 Style "NQ"
      @pLIN,154.5 Say F1300TOT-tVAL      Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 ELSE
      @pLIN,112.5 Say "DESCUENTO"        Font "&mLetAri",8 Style "NQ"
      @pLIN,154.5 Say tVAL-F1300TOT      Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 ENDIF
 STORE plIn+0.6 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li4_1300z IN FAC0000A WITH plIn
 @pLIN,112.2 Say "TOTAL"               Font "&mLetAri",8 Style "NQ"
 @pLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @pLIN,154.5 Say F1300TOT              Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE plIn+0.7 TO plIn
 @pLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE plIn+1.3 TO plIn
 DO CASE
      CASE vtDo="BE"
           @pLIN+0.0,06.4 Say "Representación impresa de la Boleta Electrónica"                                  Font "&mLetAri",7 Style "NQ"
           @pLIN+1.2,06.4 Say "Para consultar y/o imprimir el documento ingrese a"                                Font "&mLetAri",7 Style "NQ"
           @pLIN+2.4,06.4 Say "https://dev.invoice2u.pe/portal/login.jsf"                                         Font "&mLetAri",7 Style "NQ"
           STORE plIn+2.5 TO plIn
      CASE vtDo="BC"
           @pLIN+0.0,06.4 Say "Representación impresa de la Boleta Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @pLIN+1.3,06.4 Say "Puede verificarla utilizando su clave SOL."                                       Font "&mLetAri",7 Style "NQ"
           STORE plIn+1.3 TO plIn
 ENDCASE
 DO feI_4240z
 STORE plIn TO vlIn
 RELEASE puNi, ppZa, plIn, plI0
ENDPROC
*
PROCEDURE FeI_4240z
 PUBLIC plL1, plL2, plL3, psW0
 STORE plIn+1 TO plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      DO prD_1300z IN FAC0000A
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      DO toT_pzasz IN FAC0000A
      SELECT deT_fact
      STORE plIn+1.5 TO plIn
      @pLIN,007 Say F1301DCR   Font "&mLetAri",9 Style "BQ" Size 1,75 Pict "@S75"
      @pLIN,144 Say "Pzas:"    Font "&mLetAri",9 Style "BQ"
      @pLIN,155 Say pPZA       Font "&mLetAri",9 Style "BQ" Size 1,10 Pict "9,999"
      STORE plIn+1.5 TO plIn
      @pLIN,007 Say "Medidas:" Font "&mLetAri",9 Style "NQ"
      STORE plIn-1 TO plIn
      SELECT itE_fact
      GOTO TOP
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE 20 TO vcLn
           STORE 00 TO psW0
           STORE 01 TO plL1, plL2, plL3
           DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"= ;
              f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
                IF f1302opc="S"
                     SKIP
                     LOOP
                ENDIF
                IF psW0=0
                     STORE plIn+1 TO plIn
                     STORE 01 TO psW0
                ENDIF
                IF plL1>5 .OR. plL2>7 .OR. plL3>5
                     STORE plIn+1 TO plIn
                     STORE 01 TO plL1, plL2, plL3
                     STORE 20 TO vcLn
                ENDIF
                @pLIN,vCLN+02 Say F1302CTD Font "&mLetAri",8 Style "NQ" Pict "9999" Size 1,6
                @pLIN,vCLN-02 Say "["      Font "&mLetAri",8 Style "BQ"
                @pLIN,vCLN+03 Say "]"      Font "&mLetAri",8 Style "BQ"
                DO CASE
                     CASE vtPo=5
                          DO CASE
                               CASE f1302un1="M"
                                    @pLIN,vCLN+11.6 Say "x"         Font "&mLetAri",8 Style "NQ" Size 1,1
                                    @pLIN,vCLN+09.8 Say F1302MLA    Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                               CASE f1302un1="P"
                                    @pLIN,vCLN+14.4 Say "x"         Font "&mLetAri",8 Style "NQ" Size 1,1
                                    @pLIN,vCLN+07.7 Say F1302P11    Font "&mLetAri",8 Style "NQ" Size 1,3.6 Pict "999"
                                    @pLIN,vCLN+08.3 Say '"'         Font "&mLetAri",8 Style "NQ"
                                    IF ALLTRIM(f1302p12)<>"/"
                                         @pLIN,vCLN+09.4 Say F1302P12 Font "&mLetAri",8 Style "NQ"
                                    ENDIF
                          ENDCASE
                          DO CASE
                               CASE f1302un2="M"
                                    @pLIN,vCLN+18.2 Say F1302MAN    Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                               CASE f1302un2="P"
                                    @pLIN,vCLN+18.2 Say F1302P21    Font "&mLetAri",8 Style "NQ" Size 1,3.6 Pict "999"
                                    @pLIN,vCLN+18.8 Say '"'         Font "&mLetAri",8 Style "NQ"
                                    IF ALLTRIM(f1302p22)<>"/"
                                         @pLIN,vCLN+19.9 Say F1302P22 Font "&mLetAri",8 Style "NQ"
                                    ENDIF
                          ENDCASE
                          STORE vcLn+30 TO vcLn
                          STORE plL1+1 TO plL1
                     CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                          @pLIN,vCLN+09.8 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          STORE vcLn+16 TO vcLn
                          STORE plL2+1 TO plL2
                     CASE vtPo=4 .OR. vtPo=7
                          @pLIN,vCLN+14.2 Say "x"      Font "&mLetAri",8 Style "NQ" Size 1,1
                          @pLIN,vCLN+10.8 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          @pLIN,vCLN+23.2 Say F1302MAN Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                          STORE vcLn+26 TO vcLn
                          STORE plL3+1 TO plL3
                ENDCASE
                SKIP
           ENDDO
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3, psW0
ENDPROC
*
PROCEDURE Cel_3610z
 PUBLIC plIn
 STORE 0 TO vlIn
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\OGOL.PMB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.PMB" TO mdBf
 ENDIF
 @ vlIn, 0 SAY " "
 STORE vlIn+1.3 TO vlIn
 DO caB_cel
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
           @vLIN,36 Say "B"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
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
      @vLIN,051.8 Say F3611DES Font "&mLetAri",9 Style "NQ" Size 1,77 Pict "@S80"
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
           @pLIN+1.2,06.4 Say "Para consultar y/o imprimir el documento ingrese a"                                        Font "&mLetAri",7 Style "NQ"
           @pLIN+2.4,06.4 Say "https://dev.invoice2u.pe/portal/login.jsf"                                                 Font "&mLetAri",7 Style "NQ"
      CASE vtDo="N3"
           @vLIN+0.0,06.4 Say "Representación impresa de la Nota de Credito Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @vLIN+1.5,06.4 Say "Puede verificarla utilizando su clave SOL."                                                Font "&mLetAri",7 Style "NQ"
 ENDCASE
 RELEASE plIn
ENDPROC
*
PROCEDURE Cab_Cel
 PRIVATE pdIr, plEn
 DO coLbln
 @vLIN,090.2 Say Replicate("-",57)               Font "&mLetAri",13 Style "NT"
 @vLIN,090.7 Say Replicate("-",57)               Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,102.1 Say "R.U.C. N"                      Font "&mLetAri",16 Style "BQ"
 @vLIN,120.7 Say Chr(176)                        Font "&mLetAri",16 Style "BQ"
 @vLIN,124.2 Say mRUC                            Font "&mLetRom",16 Style "BQ"
 If File("&mDBF")
      @vLIN,9 Say "&mDBF" Bitmap Size 20,30 Isometric
 ENDIF
 STORE vlIn+0.1 TO vlIn
 @vLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.3 TO vlIn
 DO CASE
      CASE vtDo="N1" .OR. vtDo="N3"
           @vLIN,092.4 Say "NOTA DE CRÉDITO ELECTRÓNICA" Font "&mLetAri",14 Style "BQ"
      CASE vtDo="N2" .OR. vtDo="N4"
           @vLIN,093.0 Say "NOTA DE DÉBITO ELECTRÓNICA"  Font "&mLetAri",14 Style "BQ"
 ENDCASE
 STORE vlIn+0.7 TO vlIn
 @vLIN,009.0 Say mRAZ                            Font "&mLetRom",12 Style "BT"
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @vLIN,9 Say Substr(mDIR,1,pLEN)              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      @vLIN,9 Say AllTrim(mDIR)                    Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,107.0 Say "N"                             Font "&mLetAri",17 Style "BQ"
 @vLIN,110.7 Say Chr(176)                        Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO ceL_nro IN FAC0000A
 DO coLbln
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      @vLIN,9 Say AllTrim(Substr(mDIR,pLEN+1,90))  Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE vlIn+0.7 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 @vLIN,090.2 Say Replicate("-",57)               Font "&mLetAri",13 Style "NT"
 @vLIN,090.7 Say Replicate("-",57)               Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
PROCEDURE Tim_1300z
 PUBLIC pvAr, ptXt, pcCc, pcUb, pfFf, psWz
 = INKEY(0.5)
 IF mpT3="FACT\" .AND.  .NOT. DIRECTORY("FACT")
      MD ("Fact")
 ENDIF
 STORE ALLTRIM(mpT3) TO mpT3
 = INKEY(0.01)
 DO CASE
      CASE vtDo="FE"
           STORE mpT3+"FA_"+ALLTRIM(vsEr)+"_"+vdOc+".txt" TO pvAr
      CASE vtDo="BE"
           STORE mpT3+"BO_"+ALLTRIM(vsEr)+"_"+vdOc+".txt" TO pvAr
      CASE vtDo="N1"
           STORE mpT3+"NC_"+ALLTRIM(vsEr)+"_"+vdOc+".txt" TO pvAr
      CASE vtDo="N2"
           STORE mpT3+"ND_"+ALLTRIM(vsEr)+"_"+vdOc+".txt" TO pvAr
 ENDCASE
 pTXT=FCreate("&pVAR")
 FSEEK(ptXt, 0, 2)
 DO CASE
      CASE vtDo="FE"
           SELECT caB_fact
           DO glI_1300z WITH '{'
           DO glI_1300z WITH '"close2u":{'
           DO glI_1300z WITH '"tipoIntegracion":"OFFLINE",'
           DO glI_1300z WITH '"tipoPlantilla":"01",'
           DO glI_1300z WITH '"tipoRegistro":"PRECIOS_SIN_IGV"'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"datosDocumento":{'
           DO glI_1300z WITH '"condicionPago":"'+ALLTRIM(f1300nfp)+'",'
           STORE DTOC(f1300fem) TO pfFf
           STORE SUBSTR(pfFf, 7, 4)+"-"+SUBSTR(pfFf, 4, 2)+"-"+ ;
                 SUBSTR(pfFf, 1, 2) TO pfFf
           DO glI_1300z WITH '"fechaEmision":"'+pfFf+'",'
           STORE DTOC(f1300fem+f1300dia) TO pfFf
           STORE SUBSTR(pfFf, 7, 4)+"-"+SUBSTR(pfFf, 4, 2)+"-"+ ;
                 SUBSTR(pfFf, 1, 2) TO pfFf
           DO glI_1300z WITH '"fechaVencimiento":"'+pfFf+'",'
           DO CASE
                CASE UPPER(f1300nfp)="CONTADO"
                     DO glI_1300z WITH '"formaPago":"EFECTIVO",'
                CASE UPPER(f1300nfp)="VISA"
                     DO glI_1300z WITH '"formaPago":"TARJETA_DEBITO",'
                CASE UPPER(f1300nfp)="MASTERCARD"
                     DO glI_1300z WITH '"formaPago":"TARJETA_DEBITO",'
                OTHERWISE
                     DO glI_1300z WITH '"formaPago":"OTROS_MEDIO_PAGO",'
           ENDCASE
           DO glI_1300z WITH '"glosa":"'+ALLTRIM(f1300cm2)+'",'
           DO glI_1300z WITH '"horaEmision":"'+f1300tim+'",'
           DO CASE
                CASE f1300mon=1
                     DO glI_1300z WITH '"moneda":"PEN",'
                CASE f1300mon=2
                     DO glI_1300z WITH '"moneda":"USD",'
           ENDCASE
           DO glI_1300z WITH '"numero":'+ALLTRIM(STR(VAL(f1300doc), 7, 0))+','
           DO glI_1300z WITH '"puntoEmisor":"'+ALLTRIM(mtIp)+'",'
           DO glI_1300z WITH '"serie":"F'+f1300ser+'"'
           DO glI_1300z WITH '},'
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc
           DO glI_1300z WITH '"detalleDocumento":['
           DO glI_1300z WITH '{'
           DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+ ;
              vsEr+vdOc
                STORE f1301cod TO pcCc
                SELECT prOductos
                SEEK ALLTRIM(pcCc)+"*"
                IF EOF()
                     STORE " " TO pcUb
                ELSE
                     STORE f2111cub TO pcUb
                ENDIF
                SELECT deT_fact
                DO glI_1300z WITH '"cantidad":'+ALLTRIM(STR(f1301can, 12,  ;
                   4))+','
                DO glI_1300z WITH '"codigoProducto":"'+ALLTRIM(f1301cod)+'",'
                DO glI_1300z WITH '"codigoProductoSunat":"'+ALLTRIM(pcUb)+'",'
                DO glI_1300z WITH '"descripcion":"'+ALLTRIM(f1301des)+'",'
                DO glI_1300z WITH '"descuento":null,'
                DO glI_1300z WITH '"numeroOrden":'+ALLTRIM(STR(f1301ite,  ;
                   2, 0))+','
                DO glI_1300z WITH '"valorVentaUnitarioItem":'+ ;
                   ALLTRIM(STR(f1301to1/f1301can, 12, 4))+','
                DO glI_1300z WITH  ;
                   '"tipoAfectacion":"GRAVADO_OPERACION_ONEROSA",'
                DO glI_1300z WITH '"unidadMedida":"'+ALLTRIM(f1301nuv)+'"'
                SKIP
                IF EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+vsEr+vdOc
                     DO glI_1300z WITH '}'
                ELSE
                     DO glI_1300z WITH '},'
                     DO glI_1300z WITH '{'
                ENDIF
           ENDDO
           SELECT caB_fact
           DO glI_1300z WITH '],'
           DO glI_1300z WITH '"emisor":{'
           DO glI_1300z WITH '"correo":"'+ALLTRIM(meMa)+'",'
           DO glI_1300z WITH '"domicilioFiscal":{'
           DO glI_1300z WITH '"departamento":"LIMA",'
           DO CASE
                CASE ALLTRIM(mtIp)="0000"
                     DO glI_1300z WITH  ;
                        '"direccion":"Jr.Rio Paucartambo Mz. CH1 Lote 20",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":" LIMA ",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Villa del Norte"'
                CASE ALLTRIM(mtIp)="0001"
                     DO glI_1300z WITH '"direccion":"Calle San Hernan 6295",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":"LIMA",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Santa Luisa"'
                CASE ALLTRIM(mtIp)="0003"
                     DO glI_1300z WITH  ;
                        '"direccion":"Av. Alfredo Mendiola Mza. C1 Lote 29",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":"LIMA",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Villa del Norte"'
           ENDCASE
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"nombreLegal":"Corporacion Cristalum S.A.C.",'
           DO glI_1300z WITH '"numeroDocumentoIdentidad":"20523630556",'
           DO glI_1300z WITH '"tipoDocumentoIdentidad":"RUC"'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"informacionAdicional":{'
           DO glI_1300z WITH '"tipoOperacion":"VENTA_INTERNA",'
           DO glI_1300z WITH '"vendedor":"'+ALLTRIM(f1300nve)+'"'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"receptor":{'
           IF LEN(ALLTRIM(f1300nte))=0
                STORE "administracion@cristalum.com.pe" TO pcCc
           ELSE
                STORE ALLTRIM(f1300nte) TO pcCc
           ENDIF
           DO glI_1300z WITH '"correo":"'+pcCc+'",'
           DO glI_1300z WITH '"domicilioFiscal":{'
           DO glI_1300z WITH '"departamento":"'+ALLTRIM(f1300dep)+'",'
           DO glI_1300z WITH '"direccion":"'+ALLTRIM(f1300dir)+'",'
           DO glI_1300z WITH '"distrito":"'+ALLTRIM(f1300dis)+'",'
           DO glI_1300z WITH '"pais":"PERU",'
           DO glI_1300z WITH '"provincia":null,'
           DO glI_1300z WITH '"ubigeo":null,'
           DO glI_1300z WITH '"urbanizacion":" "'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"nombreLegal":"'+ALLTRIM(f1300nom)+'",'
           DO glI_1300z WITH '"numeroDocumentoIdentidad":"'+f1300ruc+'",'
           DO glI_1300z WITH '"tipoDocumentoIdentidad":"RUC"'
           DO glI_1300z WITH '}'
           DO glI_1300z WITH '}'
      CASE vtDo="BE"
           SELECT caB_fact
           DO glI_1300z WITH '{'
           DO glI_1300z WITH '"close2u":{'
           DO glI_1300z WITH '"tipoIntegracion":"OFFLINE",'
           DO glI_1300z WITH '"tipoPlantilla":"01",'
           DO glI_1300z WITH '"tipoRegistro":"PRECIOS_CON_IGV"'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"datosDocumento":{'
           DO glI_1300z WITH '"condicionPago":"'+ALLTRIM(f1300nfp)+'",'
           STORE DTOC(f1300fem) TO pfFf
           STORE SUBSTR(pfFf, 7, 4)+"-"+SUBSTR(pfFf, 4, 2)+"-"+ ;
                 SUBSTR(pfFf, 1, 2) TO pfFf
           DO glI_1300z WITH '"fechaEmision":"'+pfFf+'",'
           STORE DTOC(f1300fem+f1300dia) TO pfFf
           STORE SUBSTR(pfFf, 7, 4)+"-"+SUBSTR(pfFf, 4, 2)+"-"+ ;
                 SUBSTR(pfFf, 1, 2) TO pfFf
           DO glI_1300z WITH '"fechaVencimiento":"'+pfFf+'",'
           DO CASE
                CASE UPPER(f1300nfp)="CONTADO"
                     DO glI_1300z WITH '"formaPago":"EFECTIVO",'
                CASE UPPER(f1300nfp)="VISA"
                     DO glI_1300z WITH '"formaPago":"TARJETA_DEBITO",'
                CASE UPPER(f1300nfp)="MASTERCARD"
                     DO glI_1300z WITH '"formaPago":"TARJETA_DEBITO",'
                OTHERWISE
                     DO glI_1300z WITH '"formaPago":"OTROS_MEDIO_PAGO",'
           ENDCASE
           DO glI_1300z WITH '"glosa":"'+ALLTRIM(f1300cm2)+'",'
           DO glI_1300z WITH '"horaEmision":"'+f1300tim+'",'
           DO CASE
                CASE f1300mon=1
                     DO glI_1300z WITH '"moneda":"PEN",'
                CASE f1300mon=2
                     DO glI_1300z WITH '"moneda":"USD",'
           ENDCASE
           DO glI_1300z WITH '"numero":'+ALLTRIM(STR(VAL(f1300doc), 7, 0))+','
           DO glI_1300z WITH '"puntoEmisor":"'+ALLTRIM(mtIp)+'",'
           DO glI_1300z WITH '"serie":"B'+f1300ser+'"'
           DO glI_1300z WITH '},'
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc
           DO glI_1300z WITH '"detalleDocumento":['
           DO glI_1300z WITH '{'
           DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+ ;
              vsEr+vdOc
                STORE f1301cod TO pcCc
                SELECT prOductos
                SEEK ALLTRIM(pcCc)+"*"
                IF EOF()
                     STORE " " TO pcUb
                ELSE
                     STORE f2111cub TO pcUb
                ENDIF
                SELECT deT_fact
                DO glI_1300z WITH '"cantidad":'+ALLTRIM(STR(f1301can, 12,  ;
                   4))+','
                DO glI_1300z WITH '"codigoProducto":"'+ALLTRIM(f1301cod)+'",'
                DO glI_1300z WITH '"codigoProductoSunat":"'+ALLTRIM(pcUb)+'",'
                DO glI_1300z WITH '"descripcion":"'+ALLTRIM(f1301des)+'",'
                DO glI_1300z WITH '"descuento":null,'
                DO glI_1300z WITH '"numeroOrden":'+ALLTRIM(STR(f1301ite,  ;
                   2, 0))+','
                DO glI_1300z WITH '"precioVentaUnitarioItem":'+ ;
                   ALLTRIM(STR(f1301to1/f1301can, 12, 4))+','
                DO glI_1300z WITH  ;
                   '"tipoAfectacion":"GRAVADO_OPERACION_ONEROSA",'
                DO glI_1300z WITH '"unidadMedida":"'+ALLTRIM(f1301nuv)+'"'
                SKIP
                IF EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+vsEr+vdOc
                     DO glI_1300z WITH '}'
                ELSE
                     DO glI_1300z WITH '},'
                     DO glI_1300z WITH '{'
                ENDIF
           ENDDO
           SELECT caB_fact
           DO glI_1300z WITH '],'
           DO glI_1300z WITH '"emisor":{'
           DO glI_1300z WITH '"correo":"'+ALLTRIM(meMa)+'",'
           DO glI_1300z WITH '"domicilioFiscal":{'
           DO glI_1300z WITH '"departamento":"LIMA",'
           DO CASE
                CASE ALLTRIM(mtIp)="0000"
                     DO glI_1300z WITH  ;
                        '"direccion":"Jr.Rio Paucartambo Mz. CH1 Lote 20",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":" LIMA ",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Villa del Norte"'
                CASE ALLTRIM(mtIp)="0001"
                     DO glI_1300z WITH '"direccion":"Calle San Hernan 6295",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":"LIMA",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Santa Luisa"'
                CASE ALLTRIM(mtIp)="0003"
                     DO glI_1300z WITH  ;
                        '"direccion":"Av. Alfredo Mendiola Mza. C1 Lote 29",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":"LIMA",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Villa del Norte"'
           ENDCASE
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"nombreLegal":"Corporacion Cristalum S.A.C.",'
           DO glI_1300z WITH '"numeroDocumentoIdentidad":"20523630556",'
           DO glI_1300z WITH '"tipoDocumentoIdentidad":"RUC"'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"informacionAdicional":{'
           DO glI_1300z WITH '"tipoOperacion":"VENTA_INTERNA",'
           DO glI_1300z WITH '"vendedor":"'+ALLTRIM(f1300nve)+'"'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"receptor":{'
           IF LEN(ALLTRIM(f1300nte))=0
                STORE "administracion@cristalum.com.pe" TO pcCc
           ELSE
                STORE ALLTRIM(f1300nte) TO pcCc
           ENDIF
           DO glI_1300z WITH '"correo":"'+pcCc+'",'
           DO glI_1300z WITH '"domicilioFiscal":{'
           DO glI_1300z WITH '"departamento":"'+ALLTRIM(f1300dep)+'",'
           DO glI_1300z WITH '"direccion":"'+ALLTRIM(f1300dir)+'",'
           DO glI_1300z WITH '"distrito":"'+ALLTRIM(f1300dis)+'",'
           DO glI_1300z WITH '"pais":"PERU",'
           DO glI_1300z WITH '"provincia":null,'
           DO glI_1300z WITH '"ubigeo":null,'
           DO glI_1300z WITH '"urbanizacion":" "'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"nombreLegal":"'+ALLTRIM(f1300nom)+'",'
           IF LEN(ALLTRIM(f1300ele))=0
                DO glI_1300z WITH '"numeroDocumentoIdentidad":"        ",'
           ELSE
                DO glI_1300z WITH '"numeroDocumentoIdentidad":"'+ ;
                   ALLTRIM(f1300ele)+'",'
           ENDIF
           DO glI_1300z WITH  ;
              '"tipoDocumentoIdentidad":"DOC_NACIONAL_DE_IDENTIDAD"'
           DO glI_1300z WITH '}'
           DO glI_1300z WITH '}'
      CASE vtDo="N1"
           SELECT caB_nota
           STORE 1 TO psWz
           DO CASE
                CASE SUBSTR(f3610cm1, 1, 2)="FE"
                     STORE 1 TO psWz
                CASE SUBSTR(f3610cm1, 1, 2)="BE"
                     STORE 2 TO psWz
           ENDCASE
           DO glI_1300z WITH '{'
           DO glI_1300z WITH '"close2u":{'
           DO glI_1300z WITH '"tipoIntegracion":"OFFLINE",'
           DO glI_1300z WITH '"tipoPlantilla":"01",'
           DO CASE
                CASE psWz=1
                     DO glI_1300z WITH '"tipoRegistro":"PRECIOS_SIN_IGV"'
                CASE psWz=2
                     DO glI_1300z WITH '"tipoRegistro":"PRECIOS_CON_IGV"'
           ENDCASE
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"comprobanteAjustado":{'
           STORE ALLTRIM(f3610cm2) TO pfFf
           STORE SUBSTR(pfFf, 7, 4)+"-"+SUBSTR(pfFf, 4, 2)+"-"+ ;
                 SUBSTR(pfFf, 1, 2) TO pfFf
           DO glI_1300z WITH '"fechaEmision":"'+pfFf+'",'
           STORE SUBSTR(f3610cm1, 8, 7) TO pfFf
           DO glI_1300z WITH '"numero":'+ALLTRIM(STR(VAL(pfFf), 7, 0))+','
           DO CASE
                CASE psWz=1
                     STORE SUBSTR(f3610cm1, 4, 3) TO pfFf
                     DO glI_1300z WITH '"serie":"F'+pfFf+'",'
                     DO glI_1300z WITH '"tipoDocumento":"FACTURA"'
                CASE psWz=2
                     STORE SUBSTR(f3610cm1, 4, 3) TO pfFf
                     DO glI_1300z WITH '"serie":"B'+pfFf+'",'
                     DO glI_1300z WITH '"tipoDocumento":"BOLETA"'
           ENDCASE
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"datosDocumento":{'
           STORE DTOC(f3610fem) TO pfFf
           STORE SUBSTR(pfFf, 7, 4)+"-"+SUBSTR(pfFf, 4, 2)+"-"+ ;
                 SUBSTR(pfFf, 1, 2) TO pfFf
           DO glI_1300z WITH '"fechaEmision":"'+pfFf+'",'
           DO glI_1300z WITH '"fechaVencimiento":null,'
           DO glI_1300z WITH '"formaPago":"EFECTIVO",'
           SELECT deT_nota
           GOTO TOP
           SEEK vtDo+vsEr+vdOc
           DO glI_1300z WITH '"glosa":"'+ALLTRIM(f3611des)+'",'
           SELECT caB_nota
           DO glI_1300z WITH '"horaEmision":"'+f3610tim+'",'
           DO CASE
                CASE f3610mon=1
                     DO glI_1300z WITH '"moneda":"PEN",'
                CASE f3610mon=2
                     DO glI_1300z WITH '"moneda":"USD",'
           ENDCASE
           DO glI_1300z WITH '"numero":'+ALLTRIM(STR(VAL(f3610doc), 7, 0))+','
           DO glI_1300z WITH '"puntoEmisor":"'+ALLTRIM(mtIp)+'",'
           DO glI_1300z WITH '"serie":"'+SUBSTR(f3610ser, 1, 1)+"0"+ ;
              SUBSTR(f3610ser, 2, 2)+'"'
           DO glI_1300z WITH '},'
           SELECT deT_nota
           GOTO TOP
           SEEK vtDo+vsEr+vdOc
           SKIP
           DO glI_1300z WITH '"detalleDocumento":['
           DO glI_1300z WITH '{'
           DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+ ;
              vsEr+vdOc
                STORE f3611cod TO pcCc
                SELECT prOductos
                SEEK ALLTRIM(pcCc)+"*"
                IF EOF()
                     STORE " " TO pcUb
                ELSE
                     STORE f2111cub TO pcUb
                ENDIF
                SELECT deT_nota
                DO glI_1300z WITH '"cantidad":'+ALLTRIM(STR(f3611can, 12,  ;
                   4))+','
                DO glI_1300z WITH '"codigoProducto":"'+ALLTRIM(f3611cod)+'",'
                DO glI_1300z WITH '"codigoProductoSunat":"'+ALLTRIM(pcUb)+'",'
                DO glI_1300z WITH '"descripcion":"'+ALLTRIM(f3611des)+'",'
                DO glI_1300z WITH '"descuento":null,'
                DO glI_1300z WITH '"numeroOrden":'+ALLTRIM(STR(f3611ite-1,  ;
                   2, 0))+','
                IF psWz=1
                     DO glI_1300z WITH '"valorVentaUnitarioItem":'+ ;
                        ALLTRIM(STR(f3611pre, 12, 4))+','
                ELSE
                     DO glI_1300z WITH '"precioVentaUnitarioItem":'+ ;
                        ALLTRIM(STR(f3611tot/f3611can, 12, 4))+','
                ENDIF
                DO glI_1300z WITH  ;
                   '"tipoAfectacion":"GRAVADO_OPERACION_ONEROSA",'
                DO glI_1300z WITH '"unidadMedida":"'+ALLTRIM(f3611nuv)+'"'
                SKIP
                IF EOF() .OR. f3611tdo+f3611ser+f3611doc<>vtDo+vsEr+vdOc
                     DO glI_1300z WITH '}'
                ELSE
                     DO glI_1300z WITH '},'
                     DO glI_1300z WITH '{'
                ENDIF
           ENDDO
           SELECT caB_nota
           DO glI_1300z WITH '],'
           DO glI_1300z WITH '"emisor":{'
           DO glI_1300z WITH '"correo":"'+ALLTRIM(meMa)+'",'
           DO glI_1300z WITH '"domicilioFiscal":{'
           DO glI_1300z WITH '"departamento":"LIMA",'
           DO CASE
                CASE ALLTRIM(mtIp)="0000"
                     DO glI_1300z WITH  ;
                        '"direccion":"Jr.Rio Paucartambo Mz. CH1 Lote 20",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":" LIMA ",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Villa del Norte"'
                CASE ALLTRIM(mtIp)="0001"
                     DO glI_1300z WITH '"direccion":"Calle San Hernan 6295",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":"LIMA",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Santa Luisa"'
                CASE ALLTRIM(mtIp)="0003"
                     DO glI_1300z WITH  ;
                        '"direccion":"Av. Alfredo Mendiola Mza. C1 Lote 29",'
                     DO glI_1300z WITH '"distrito":"Los Olivos",'
                     DO glI_1300z WITH '"pais":"PERU",'
                     DO glI_1300z WITH '"provincia":"LIMA",'
                     DO glI_1300z WITH '"ubigeo":"150117",'
                     DO glI_1300z WITH '"urbanizacion":"Villa del Norte"'
           ENDCASE
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"nombreLegal":"Corporacion Cristalum S.A.C.",'
           DO glI_1300z WITH '"numeroDocumentoIdentidad":"20523630556",'
           DO glI_1300z WITH '"tipoDocumentoIdentidad":"RUC"'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"informacionAdicional":{'
           DO glI_1300z WITH '"tipoOperacion":null'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"motivo":"ANULACION_OPERACION",'
           DO glI_1300z WITH '"receptor":{'
           STORE f3610cm1 TO pfFf
           SELECT caB_fact
           STORE SUBSTR(pfFf, 1, 2)+SUBSTR(pfFf, 4, 3)+SUBSTR(pfFf, 8, 7)  ;
                 TO pfFf
           SEEK pfFf
           STORE f1300nte TO pfFf
           SELECT caB_nota
           IF LEN(ALLTRIM(pfFf))=0
                STORE "administracion@cristalum.com.pe" TO pcCc
           ELSE
                STORE ALLTRIM(pfFf) TO pcCc
           ENDIF
           DO glI_1300z WITH '"correo":"'+pcCc+'",'
           DO glI_1300z WITH '"domicilioFiscal":{'
           DO glI_1300z WITH '"departamento":"'+ALLTRIM(f3610dep)+'",'
           DO glI_1300z WITH '"direccion":"'+ALLTRIM(f3610dir)+'",'
           DO glI_1300z WITH '"distrito":"'+ALLTRIM(f3610dis)+'",'
           DO glI_1300z WITH '"pais":"PERU",'
           DO glI_1300z WITH '"provincia":null,'
           DO glI_1300z WITH '"ubigeo":null,'
           DO glI_1300z WITH '"urbanizacion":" "'
           DO glI_1300z WITH '},'
           DO glI_1300z WITH '"nombreLegal":"'+ALLTRIM(f3610nom)+'",'
           IF psWz=1
                DO glI_1300z WITH '"numeroDocumentoIdentidad":"'+f3610ruc+'",'
                DO glI_1300z WITH '"tipoDocumentoIdentidad":"RUC"'
           ELSE
                IF LEN(ALLTRIM(f3610ele))=0
                     DO glI_1300z WITH '"numeroDocumentoIdentidad":"        ",'
                ELSE
                     DO glI_1300z WITH '"numeroDocumentoIdentidad":"'+ ;
                        f3610ele+'",'
                ENDIF
                DO glI_1300z WITH  ;
                   '"tipoDocumentoIdentidad":"DOC_NACIONAL_DE_IDENTIDAD"'
           ENDIF
           DO glI_1300z WITH '}'
           DO glI_1300z WITH '}'
      CASE vtDo="N2"
 ENDCASE
 DO glI_1300z WITH " "
 FCLOSE(ptXt)
 RELEASE pvAr, ptXt, pcCc, pcUb, pfFf, psWz
ENDPROC
*
PROCEDURE Gli_1300z
 PARAMETER pvA1
 FPUTS(ptXt, pvA1)
 FSEEK(ptXt, 0, 2)
ENDPROC
*
