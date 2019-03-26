*
PROCEDURE Fac_1300z
 PUBLIC psRr, paUt, puNi, pdIr
 DO diR_1300z IN FAC0000A
 DO CASE
      CASE SUBSTR(vsEr, 1, 1)="T"
           DO CASE
                CASE vsEr="T1F"
                     STORE "2291114030410128" TO psRr
                     STORE "0021845091567" TO paUt
                CASE vsEr="T4F"
                     STORE "2291115020600071" TO psRr
                     STORE "0021845092107" TO paUt
                CASE vsEr="T5F"
                     STORE "2291115020600020" TO psRr
                     STORE "0021845095809" TO paUt
           ENDCASE
           DO fa1_1300z
      OTHERWISE
           DO fa2_1300z
 ENDCASE
 RELEASE psRr, paUt, puNi, pdIr
ENDPROC
*
PROCEDURE Cab_1300z
 @ vlIn, mcLn+05.5 SAY "BMP\MABERLOG.JPG" BITMAP SIZE 6, 40 STRETCH
 STORE vlIn+8 TO vlIn
 @vLIN,mCLN+7 Say Upper(mRAZ)       Font "&mLetAri",11 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN   Say Replicate("-",38) Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 IF vsEr="T1F" .OR. vsEr="T1B"
      @vLIN,mCLN Say "Av.Mexico 475-477, La Victoria, Lima"      Font "&mLetRom",9 Style "BQ"
 ELSE
      @vLIN,mCLN Say "Av.Mexico 475-477, La Victoria, Lima"      Font "&mLetRom",9 Style "NQ"
 ENDIF
 STORE vlIn+1.1 TO vlIn
 IF vsEr="T4F" .OR. vsEr="T4B"
      @vLIN,mCLN Say "Av.Mexico 451-455, La Victoria, Lima"      Font "&mLetRom",9 Style "BQ"
 ELSE
      @vLIN,mCLN Say "Av.Mexico 451-455, La Victoria, Lima"      Font "&mLetRom",9 Style "NQ"
 ENDIF
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN Say "Tlfs: 472-5844, 421-7920, 265-5634, 471-8126" Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 IF vsEr="T7F" .OR. vsEr="T7B"
      @vLIN,mCLN Say "Jr.Andahuaylas 1326, La Victoria, Lima"    Font "&mLetRom",9 Style "BQ"
 ELSE
      @vLIN,mCLN Say "Jr.Andahuaylas 1326, La Victoria, Lima"    Font "&mLetRom",9 Style "NQ"
 ENDIF
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN Say "Tlf: 265-2076"                                Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 IF vsEr="T5F" .OR. vsEr="T5B"
      @vLIN,mCLN Say "Av.Alfredo Mendiola 6265, Los Olivos,Lima" Font "&mLetRom",9 Style "BQ"
 ELSE
      @vLIN,mCLN Say "Av.Alfredo Mendiola 6265, Los Olivos,Lima" Font "&mLetRom",9 Style "NQ"
 ENDIF
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN Say "Tlfs: 528-3399, 220-1723"                     Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("-",38)                              Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+14 Say "www.maberti.com.pe"                        Font "&mLetAri",8  Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+14.5 Say "RUC: "+mRUC                              Font "&mLetAri",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                           Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
ENDPROC
*
PROCEDURE Fin_1300z
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN    Say "Forma de Pago:"  Font "&mLetCou",7 Style "NQ"
 @vLIN,mCLN+18 Say vNFP              Font "&mLetCou",7 Style "NQ" Pict "@S30" Size 1,30
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "Vendedor:"       Font "&mLetCou",7 Style "NQ"
 @vLIN,mCLN+18 Say vNVE              Font "&mLetCou",7 Style "NQ" Pict "@S30" Size 1,30
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN    Say "Autorizacion:"   Font "&mLetCou",7 Style "NQ"
 @vLIN,mCLN+17 Say pAUT              Font "&mLetCou",7 Style "NQ"
 STORE vlIn+7 TO vlIn
 @vLIN,mCLN    Say "GRACIAS POR SU PREFERENCIA"                        Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN    Say Substr(Str(mTC2,5,3),1,1)+Substr(Str(mTC2,5,3),3,3) Font "&mLetCou",7  Style "NQ"
ENDPROC
*
PROCEDURE Fa1_1300z
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
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      STORE SUBSTR(puNi, 1, 7) TO puNi
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
PROCEDURE Fa2_1300z
 PUBLIC ppEr
 DO peR_1300z IN FAC0000A WITH "1", 0
 DO deT_1300z IN FAC0000A WITH "1"
 @0,0            Say " "           Font "&mLetSwi",10 Style "NQ"
 @vLIN,mCLN+09.5 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+70.0 Say vNFP          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+00.4 TO vlIn
 IF ppEr=1
      @vLIN,mCLN+100 Say "Comprobante de Percepcion - Venta Interna" Font "&mLetRom",10 Style "BQ"
 ENDIF
 STORE vlIn+00.9 TO vlIn
 @vLIN,mCLN+09.5 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vRUC          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.8 Say vVEN          Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+79.0 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vCM2          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+67.7 Say vTCA          Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+84.0 Say vCM6          Font "&mLetRom",10 Style "BQ"
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
      STORE SUBSTR(puNi, 1, 7) TO puNi
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+3.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+2.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      DO pc1_1300z IN FAC0000A
      IF vpEr=1
           STORE ROUND(f1301to2*vpPe/100, 2) TO viPe
      ELSE
           STORE 0 TO viPe
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="M"
           @vLIN,mCLN+25 Say AllTrim(F1301DCR)+" "+AllTrim(F1301REF) Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      ELSE
           @vLIN,mCLN+25 Say AllTrim(F1301DCR)                       Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      ENDIF
      IF vtOt<>0
           @vLIN,mCLN+125.4 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0 .AND. mlL0="S"
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+42 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      IF viPe<>0
           @vLIN,mCLN+111.9 Say vIPE  Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 DO CASE
      CASE tpEr>0
           STORE vlIn-4 TO vlIn
           @vLIN,mCLN+02  Say vCM3                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           @vLIN,mCLN+42    Say "Operacion sujeta a Percepcion del IGV "+Str(vPPE,5,2)+"%" Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           @vLIN,mCLN+111.9 Say tPER                                          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
           STORE vlIn+0.2 TO vlIn
           @vLIN,mCLN+110.4 Say "_________"                                   Font "&mLetRom",11 Style "NT" Size 1,12
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+02  Say vCM4                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+42    Say "Total a pagar con Percepcion"                Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           @vLIN,mCLN+111.9 Say F1300TOT+tPER                                 Font "&mLetRom",11 Style "NT" Size 1,12 Pict "999,999.99"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+110.4 Say "_________"                                   Font "&mLetRom",11 Style "NT" Size 1,12
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+02  Say vCM5                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
      CASE mdTr=1 .AND. mcIa="MB"
           STORE vlIn-4 TO vlIn
           @vLIN,mCLN+02  Say vCM3                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           @vLIN,mCLN+42 Say "Operacion sujeta al SPOT D.Leg.940"             Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+42 Say "Cta.Cte.No. 00-004-004132 / Banco de la Nacion" Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+02  Say vCM5                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
      CASE mdTr=1 .AND. mcIa="DS"
           STORE vlIn-4 TO vlIn
           @vLIN,mCLN+02  Say vCM3                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           @vLIN,mCLN+42 Say "Operacion sujeta al SPOT D.Leg.940"             Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+42 Say "Cta.Cte.No. 00-004-004418 / Banco de la Nacion" Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
           STORE vlIn+1.3 TO vlIn
           @vLIN,mCLN+02  Say vCM5                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
      CASE LEN(ALLTRIM(vcM3))<>0
           STORE vlIn-4 TO vlIn
           @vLIN,mCLN+02  Say vCM3                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM4                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN+02  Say vCM5                                            Font "&mLetAri",7  Style "NQ" Size 1,100 Pict "@S100"
 ENDCASE
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+053 Say tVAL          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+116 Say F1300IGV      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+132 Say vSIG          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+53.2 Say vFRA+" S.E.u.O." Font "&mLetAri",10 Style "NQ" Size 1,100 Pict "@S100"
 RELEASE ppEr
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC psRr, paUt, puNi, pdIr
 DO diR_1300z IN FAC0000A
 DO CASE
      CASE SUBSTR(vsEr, 1, 1)="T"
           DO CASE
                CASE vsEr="T1B"
                     STORE "2291114030410112" TO psRr
                     STORE "0021845091567" TO paUt
                CASE vsEr="T4B"
                     STORE "2291115020600034" TO psRr
                     STORE "0021845092107" TO paUt
                CASE vsEr="T5B"
                     STORE "2291113020410111" TO psRr
                     STORE "0021845095998" TO paUt
           ENDCASE
           DO bo1_1300z
      OTHERWISE
           DO bo2_1300z
 ENDCASE
 RELEASE psRr, paUt, puNi, pdIr
ENDPROC
*
PROCEDURE Bo1_1300z
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
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+1 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
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
 @0,0 Say " "                     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+013 Say vFEM          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+040 Say vCM1          Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+075 Say vSER+"-"+vDOC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+099 Say vVEN          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+013 Say vNOM          Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+013 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 @vLIN,mCLN+092 Say vNFP          Font "&mLetRom",11 Style "NQ" Size 1,10 Pict "@S10"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+073 Say "DNI:"+vDNI   Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.5 TO vlIn
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
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                IF INT(vcAn)<>vcAn
                     @vLIN,mCLN+4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
                ENDIF
                @vLIN,mCLN+21 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDCASE
      @vLIN,mCLN+33 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+130.9 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+146.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+052.3 Say vTCA             Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 @vLIN,mCLN+075.5 Say tVAL             Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+113.0 Say F1300TOT-tVAL    Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+140.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+146.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+052.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
ENDPROC
*
PROCEDURE Per_1300z
 @0,0             Say " "                   Font "&mLetSwi",11 Style "NQ"
 @vLIN,mCLN+008.0 Say F1300NOM              Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+006.0 Say F1300RUC              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+060.0 Say F1300SER+"-"+F1300DOC Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+015.0 Say F1300FEM              Font "&mLetRom",11 Style "NQ"
 STORE vlIn+5.8 TO vlIn
 @vLIN,mCLN+001.0 Say "Fact"                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+013.0 Say Substr(F1300CM1,4,11) Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+038.0 Say F1300FEM              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+062.0 Say F1300NET              Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+083.0 Say F1300PIG              Font "&mLetRom",11 Style "NQ" Size 1,06 Pict "99.99"
 @vLIN,mCLN+105.0 Say F1300TOT              Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+130.0 Say F1300TOT+F1300NET     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 DO fiN_1300z IN FAC0000A WITH "PC"
 @vLIN,mCLN+105.0 Say F1300TOT              Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
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
PROCEDURE It1_1300z
 PARAMETER pfAc
 PUBLIC plL1, plL2, plL3, pfRa, vpL1, vpL2
 STORE 01 TO plL1, plL2, plL3
 STORE 00 TO vcLn
 SELECT itE_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3 .OR. (vcLn>27 .AND. vtPo=5)
           STORE vlIn+1 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 00 TO vcLn
      ENDIF
      IF ALLTRIM(f1302p12)="/"
           STORE " " TO vpL1
      ELSE
           STORE ALLTRIM(f1302p12) TO vpL1
      ENDIF
      IF ALLTRIM(f1302p22)="/"
           STORE " " TO vpL2
      ELSE
           STORE ALLTRIM(f1302p22) TO vpL2
      ENDIF
      STORE 1 TO psWu
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+vCLN+0 Say "["               Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+vCLN+2 Say F1302CTD          Font "&mLetRom",11 Style "NQU" Pict "999"
                @vLIN,mCLN+vCLN+6 Say "]"               Font "&mLetRom",11 Style "NQ"
                DO CASE
                     CASE vtPo=5 .AND. f1302un1+f1302un2="MM"
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+16 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+17 Say F1302MAN Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          STORE vcLn+27 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="PP" .AND. vpL1+ ;
                          vpL2="  "
                          @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetRom",11 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+13 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+14 Say F1302P21 Font "&mLetRom",11 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+18 Say '"'      Font "&mLetAri",8  Style "NQ"
                          STORE vcLn+27 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="PP" .AND. vpL1+ ;
                          vpL2<>"  "
                          @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetRom",11 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+12 Say vPL1     Font "&mLetRom",11 Style "NQ"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetRom",11 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+24 Say vPL2     Font "&mLetRom",11 Style "NQ"
                          STORE vcLn+50 TO vcLn
                          STORE plL1+12 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="MP" .AND. vpL2=" "
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetRom",11 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8  Style "NQ"
                          STORE vcLn+27 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="MP"
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetRom",11 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+24 Say vPL2     Font "&mLetRom",11 Style "NQ"
                          STORE vcLn+50 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="PM" .AND. vpL1=" "
                          @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetRom",11 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302MAN Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          STORE vcLn+27 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="PM"
                          @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetRom",11 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+12 Say vPL1     Font "&mLetRom",11 Style "NQ"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302MAN Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          STORE vcLn+50 TO vcLn
                          STORE plL1+12 TO plL1
                     CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                          @vLIN,mCLN+vCLN+7 Say F1302MLA  Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          STORE vcLn+18 TO vcLn
                          STORE plL2+10 TO plL2
                     CASE vtPo=4
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+16 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+17 Say F1302MAN Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          STORE vcLn+27 TO vcLn
                          STORE plL3+10 TO plL3
                     CASE vtPo=7
                          STORE "" TO pfRa
                          IF f1302ca1=1
                               STORE "L-" TO pfRa
                          ELSE
                               STORE " -" TO pfRa
                          ENDIF
                          IF f1302ca3=1
                               STORE pfRa+"L-" TO pfRa
                          ELSE
                               STORE pfRa+" -" TO pfRa
                          ENDIF
                          IF f1302ca4=1
                               STORE pfRa+"C-" TO pfRa
                          ELSE
                               STORE pfRa+" -" TO pfRa
                          ENDIF
                          IF f1302ca2=1
                               STORE pfRa+"C" TO pfRa
                          ELSE
                               STORE pfRa+" " TO pfRa
                          ENDIF
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+16 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+17 Say F1302MAN Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+26 Say pFRA     Font "&mLetRom",11 Style "NQ"
                          STORE vcLn+32 TO vcLn
                          STORE mlL3+10 TO plL3
                     CASE vtPo=11
                          @vLIN,mCLN+vCLN+07 Say F1302CA1 Font "&mLetRom",11 Style "NQ"
                          @vLIN,mCLN+vCLN+09 Say F1302MLA Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8  Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302CA2 Font "&mLetRom",11 Style "NQ"
                          @vLIN,mCLN+vCLN+21 Say F1302MAN Font "&mLetRom",11 Style "NQ" Pict "99.999"
                          STORE vcLn+28 TO vcLn
                          STORE plL1+10 TO plL1
                ENDCASE
           CASE mpRt="2"
                @vLIN,mCLN+vCLN+0 Say "["               Font "&mLetCou",8 Style "NQ"
                @vLIN,mCLN+vCLN+2 Say F1302CTD          Font "&mLetCou",8 Style "NQU" Pict "999"
                @vLIN,mCLN+vCLN+6 Say "]"               Font "&mLetCou",8 Style "NQ"
                DO CASE
                     CASE vtPo=5 .AND. f1302un1+f1302un2="MM"
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+16 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+17 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          STORE vcLn+27 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="PP" .AND. vpL1+ ;
                          vpL2="  "
                          @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetCou",8 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+13 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+14 Say F1302P21 Font "&mLetCou",8 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+18 Say '"'      Font "&mLetCou",8 Style "NQ"
                          STORE vcLn+27 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="PP" .AND. vpL1+ ;
                          vpL2<>"  "
                          @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetCou",8 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+12 Say vPL1     Font "&mLetCou",8 Style "NQ"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetCou",8 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+24 Say vPL2     Font "&mLetCou",8 Style "NQ"
                          STORE vcLn+50 TO vcLn
                          STORE plL1+12 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="MP" .AND. vpL2=" "
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetCou",8 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8 Style "NQ"
                          STORE vcLn+27 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="MP"
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetCou",8 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+24 Say vPL2     Font "&mLetCou",8 Style "NQ"
                          STORE vcLn+50 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="PM" .AND. vpL1=" "
                          @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetCou",8 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          STORE vcLn+27 TO vcLn
                          STORE plL1+10 TO plL1
                     CASE vtPo=5 .AND. f1302un1+f1302un2="PM"
                          @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetCou",8 Style "NQ" Pict "999"
                          @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+12 Say vPL1     Font "&mLetCou",8 Style "NQ"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          STORE vcLn+50 TO vcLn
                          STORE plL1+12 TO plL1
                     CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                          @vLIN,mCLN+vCLN+7 Say F1302MLA  Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          STORE vcLn+18 TO vcLn
                          STORE plL2+10 TO plL2
                     CASE vtPo=4
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+16 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+17 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          STORE vcLn+27 TO vcLn
                          STORE plL3+10 TO plL3
                     CASE vtPo=7
                          STORE "" TO pfRa
                          IF f1302ca1=1
                               STORE "L-" TO pfRa
                          ELSE
                               STORE " -" TO pfRa
                          ENDIF
                          IF f1302ca3=1
                               STORE pfRa+"L-" TO pfRa
                          ELSE
                               STORE pfRa+" -" TO pfRa
                          ENDIF
                          IF f1302ca4=1
                               STORE pfRa+"C-" TO pfRa
                          ELSE
                               STORE pfRa+" -" TO pfRa
                          ENDIF
                          IF f1302ca2=1
                               STORE pfRa+"C" TO pfRa
                          ELSE
                               STORE pfRa+" " TO pfRa
                          ENDIF
                          @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+16 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+17 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+26 Say pFRA     Font "&mLetCou",8 Style "NQ"
                          STORE vcLn+32 TO vcLn
                          STORE mlL3+10 TO plL3
                     CASE vtPo=11
                          @vLIN,mCLN+vCLN+07 Say F1302CA1 Font "&mLetCou",8 Style "NQ"
                          @vLIN,mCLN+vCLN+09 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+vCLN+19 Say F1302CA2 Font "&mLetCou",8 Style "NQ"
                          @vLIN,mCLN+vCLN+21 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                          STORE vcLn+28 TO vcLn
                          STORE plL1+10 TO plL1
                ENDCASE
      ENDCASE
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3, pfRa, vpL1, vpL2
ENDPROC
*
PROCEDURE Des_1300z
 DO dsP_1300z IN FAC0000A WITH "D"
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
 @vLIN,mCLN+35 Say pDIR                              Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+35 Say F3110RUC                       Font "&mLetAri",9 Style "BQ"
 ELSE
      @vLIN,mCLN+35 Say F3110ELE                       Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vLIN,mCLN+35 Say F3110RUC                          Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+74 Say F3110TEL                          Font "&mLetAri",9 Style "BQ"
 STORE vlIn+3.0 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+33 Say F3110ANO                       Font "&mLetAri",8 Style "BQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+33 Say F3110ANO                       Font "&mLetAri",9 Style "BQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+35 Say pADI                              Font "&mLetAri",8 Style "BQ" Size 1,56 Pict "@S56"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+35 Say pARU                              Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+79 Say F3110ATL                          Font "&mLetAri",9 Style "BQ"
 RELEASE pdIr, paDi, paRu
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC pmEs
 SELECT caB_nota
 @0,0 Say Space(01)                                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11 Say Substr(Dtoc(vFEM),1,2)          Font "&mLetRom",11 Style "NQ"
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 @vLIN,mCLN+33 Say pMES                            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+69 Say Substr(Dtoc(vFEM),7,4)          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+17 Say vNOM                            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S73"
 @vLIN,mCLN+113 Say vRUC                           Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+17 Say AllTrim(F3610DIR)+", "+F3610DIS Font "&mLetRom",11 Style "NQ" Size 1,82 Pict "@S80"
 @vLIN,mCLN+125 Say "Ref: "+F3610CM1               Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+125 Say F3610CM2                       Font "&mLetRom",11 Style "NQ" Pict "@S100"
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
 @vLIN,mCLN+16  Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+136 Say tNET                     Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+123 Say F3610PIG                 Font "&mLetRom",11 Style "NQ" Size 1,04 Pict "99"
 @vLIN,mCLN+136 Say F3610IGV                 Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+132.8 Say vSIG                   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136 Say tTOT                     Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 RELEASE pmEs
ENDPROC
*
PROCEDURE Deb_3610z
 PUBLIC pmEs
 SELECT caB_nota
 @0,0 Say Space(01)                                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11 Say Substr(Dtoc(vFEM),1,2)          Font "&mLetRom",11 Style "NQ"
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 @vLIN,mCLN+33 Say pMES                            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+69 Say Substr(Dtoc(vFEM),7,4)          Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+17 Say vNOM                            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S73"
 @vLIN,mCLN+113 Say vRUC                           Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+17 Say AllTrim(F3610DIR)+", "+F3610DIS Font "&mLetRom",11 Style "NQ" Size 1,82 Pict "@S80"
 @vLIN,mCLN+125 Say "Ref: "+F3610CM1               Font "&mLetRom",11 Style "NQ" Pict "@S100"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+125 Say F3610CM2                       Font "&mLetRom",11 Style "NQ" Pict "@S100"
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
      DO meD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
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
 DO CASE
      CASE f2600mot=3
           @vLIN,mCLN+117.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600LC1               Font "&mLetSwi",10 Style "NQ"
 DO CASE
      CASE f2600mot=9
           @vLIN,mCLN+117.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600CHO               Font "&mLetSwi",10 Style "NQ"
 DO CASE
      CASE f2600mot=13
           @vLIN,mCLN+117.55 Say "x"        Font "&mLetSwi",10 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE Rm2_2600z
 @vLIN,mCLN+11 Say F2600FEM Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+11 Say F2600NOM Font "&mLetSwi",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11 Say pDIR     Font "&mLetSwi",10 Style "NQ"
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
      DO meD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
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
 @vLIN,mCLN+7 Say F2600TNO Font "&mLetSwi",9 Style "NQ"
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+085.55 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=6
           @vLIN,mCLN+117.55 Say "x" Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+7 Say F2600TDI Font "&mLetSwi",9 Style "NQ"
 DO CASE
      CASE f2600mot=8
           @vLIN,mCLN+085.05 Say "x" Font "&mLetSwi",10 Style "NQ"
      CASE f2600mot=11
           @vLIN,mCLN+117.55 Say "x" Font "&mLetSwi",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+18 Say F2600TRU Font "&mLetSwi",10 Style "NQ"
 IF f2600mot=3
      @vLIN,mCLN+117.55 Say "x" Font "&mLetSwi",10 Style "NQ"
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
 @vLIN,mCLN+18 Say F2600LC1 Font "&mLetSwi",10 Style "NQ"
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
PROCEDURE BPa_4240z
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
 ZAP
 DO seL_0000a WITH muLt+1
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"PLC1.DBF" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"PLC1.DBF" TO mdBf
 ENDIF
 Use &mDBF Exclusive Alias Plc1
 ZAP
 DO seL_0000a WITH muLt+2
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"PLC2.DBF" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"PLC2.DBF" TO mdBf
 ENDIF
 Use &mDBF Exclusive Alias Plc2
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
 WAIT CLEAR
 RELEASE pmAq, pfRa, pnOm, peSp, pfAm, pdEs, plAr, paNc
ENDPROC
*
