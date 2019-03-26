*
PROCEDURE Fac_1300z
 PUBLIC psRr, paUt, puNi, pdIs, pdOc
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 STORE ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIs
 DO CASE
      CASE SUBSTR(vsEr, 1, 1)="T"
           STORE "2291114030410454" TO psRr
           STORE "0023845095645" TO paUt
           DO fa1_1300z
      CASE vsEr="003"
           DO fa3_1300z
      OTHERWISE
           DO fa2_1300z
 ENDCASE
 RELEASE psRr, paUt, puNi, pdIs, pdOc
ENDPROC
*
PROCEDURE Cab_1300z
 @vLIN,mCLN+0.5  Say "Corporacion La Economica Lider SAC"  Font "&mLetAri",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+14   Say "Av.Universitaria 8071"               Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+06   Say "Urb.Virgen del Rosario, Comas, Lima" Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN      Say Replicate("-",38)                     Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+11   Say "www.laeconomicalider.com.pe"         Font "&mLetAri",8  Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+14.5 Say "RUC: 20600577418"                    Font "&mLetAri",8  Style "NQ"
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
PROCEDURE Fa1_1300z
 PUBLIC psWu, ppL1, ppL2
 DO caB_1300z
 @vLIN,mCLN    Say "Ticket FACTURA No.    "+vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Serie: "+pSRR                         Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                      Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "CLIENTE: "+vNOM                       Font "&mLetCou",8  Style "NQ" Size 1,45 Pict "@S45"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "RUC    : "+vRUC                       Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say vDIR                                   Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say pDIS                                   Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "FECHA  : "+Dtoc(vFEM)                 Font "&mLetCou",8  Style "NQ"
 @vLIN,mCLN+32 Say "HORA: "+F1300TIM                      Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                      Font "&mLetCou",8  Style "NQ"
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
 @0,0             Say " "  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+020.0 Say pDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+020.0 Say vFEM Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+040.8 Say vCM1 Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+116.0 Say vNFP Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+020.0 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+020.0 Say vDIR Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+0.2 TO vlIn
 @vLIN,mCLN+116.0 Say vRUC Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+020.0 Say pDIS Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+020.0 Say vCM2 Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+116.0 Say vNVE Font "&mLetRom",11 Style "NQ" Pict "@S30"
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
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+5.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+4.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+23     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDIF
      @vLIN,mCLN+34 Say F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+121.4 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
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
      @vLIN,mCLN+34.0 Say mFR1          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+34.0 Say mFR2          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+34.0 Say "@"           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+34.0 Say "@"           Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+117 Say Str(F1300PIG,2,0) Font "&mLetRom",11 Style "NQ" Size 1,03
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+041 Say tVAL              Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+063 Say F1300NET-tVAL     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+086 Say F1300NET          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+109 Say F1300IGV          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+130 Say vSIG              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+45.2 Say vFRA+" S.E.u.O." Font "&mLetAri",10 Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Fa3_1300z
 @0,0             Say " "  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+020.0 Say pDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+020.0 Say vFEM Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+040.8 Say vCM1 Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+124.0 Say vNFP Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+020.0 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+020.0 Say vDIR Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+020.0 Say pDIS Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+124.0 Say vRUC Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+020.0 Say vCM2 Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+124.0 Say vNVE Font "&mLetRom",11 Style "NQ" Pict "@S30"
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
      IF f1301can=1 .AND. f1301to1=0
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+5.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+4.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+25     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+36 Say F1301DCR Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+125.4 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
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
      @vLIN,mCLN+36.0 Say mFR1          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+36.0 Say mFR2          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+36.0 Say "@"           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+36.0 Say "@"           Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+051 Say tVAL              Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+073 Say F1300NET-tVAL     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+093 Say F1300NET          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+114 Say F1300IGV          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+132 Say vSIG              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+53.2 Say vFRA+" S.E.u.O." Font "&mLetAri",10 Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC psRr, paUt, puNi
 DO CASE
      CASE SUBSTR(vsEr, 1, 1)="T"
           STORE "2291114030410454" TO psRr
           STORE "0023845095645" TO paUt
           DO bo1_1300z
      CASE vsEr="004"
           DO bo4_1300z
      OTHERWISE
           DO bo2_1300z
 ENDCASE
 RELEASE psRr, paUt, puNi
ENDPROC
*
PROCEDURE Bo1_1300z
 PUBLIC psWu, ppL1, ppL2
 DO caB_1300z
 @vLIN,mCLN    Say "Ticket BOLETA No. "+vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN    Say "Serie: "+pSRR                     Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                  Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "CLIENTE: "+vNOM                   Font "&mLetCou",8  Style "NQ" Size 1,45 Pict "@S45"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "DNI    : "+vDNI                   Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "FECHA  : "+Dtoc(vFEM)             Font "&mLetCou",8  Style "NQ"
 @vLIN,mCLN+32 Say "HORA: "+F1300TIM                  Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38)                  Font "&mLetCou",8  Style "NQ"
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
           @vLIN,mCLN Say "Ctd:"     Font "&mLetCou",8 Style "NQ"
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
 @vLIN,mCLN+36.6 Say F1300TOT-tVAL   Font "&mLetCou",8 Style "NQ" Pict "999,999.99" Function "("
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+19 Say "TOTAL    :"      Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+34 Say vSIG              Font "&mLetCou",8 Style "NQ"
 @vLIN,mCLN+38 Say F1300TOT          Font "&mLetCou",8 Style "NQ" Pict "999,999.99"
 DO fiN_1300z
 RELEASE psWu, ppL1, ppL2
ENDPROC
*
PROCEDURE Bo2_1300z
 PUBLIC pdIr
 DO diR_1300z IN FAC0000A
 @0,0 Say Space(01)                        Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+019 Say vNOM                   Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+115 Say "["+vSER+"-"+vDOC+"]"  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+019 Say pDIR                   Font "&mLetRom",11 Style "NQ" Size 1,55 Pict "@S58"
 IF LEN(ALLTRIM(vdNi))<>0
      @vLIN,mCLN+105 Say vDNI                Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+137 Say Substr(Dtoc(vFEM),1,2) Font "&mLetRom",11 Style "NQ" Size 1,3
 @vLIN,mCLN+146 Say Substr(Dtoc(vFEM),4,2) Font "&mLetRom",11 Style "NQ" Size 1,3
 @vLIN,mCLN+153 Say Substr(Dtoc(vFEM),9,2) Font "&mLetRom",11 Style "NQ" Size 1,3
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.7 TO vlIn
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
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+7.2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+6   Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18.7   Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+29 Say F1301DCR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+128.2 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+144.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+018.5 Say "Son: "+vFRA  Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+130.7 Say "Dct/Red"     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+144.9 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN+144.9 Say F1300TOT      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr
ENDPROC
*
PROCEDURE Bo4_1300z
 PUBLIC pdIr
 DO diR_1300z IN FAC0000A
 @0,0 Say Space(01)                        Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+016 Say vNOM                   Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+115 Say "["+vSER+"-"+vDOC+"]"  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+016 Say pDIR                   Font "&mLetRom",11 Style "NQ" Size 1,55 Pict "@S58"
 IF LEN(ALLTRIM(vdNi))<>0
      @vLIN,mCLN+105 Say vDNI                Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+139 Say Substr(Dtoc(vFEM),1,2) Font "&mLetRom",11 Style "NQ" Size 1,3
 @vLIN,mCLN+148 Say Substr(Dtoc(vFEM),4,2) Font "&mLetRom",11 Style "NQ" Size 1,3
 @vLIN,mCLN+155 Say Substr(Dtoc(vFEM),9,2) Font "&mLetRom",11 Style "NQ" Size 1,3
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.5 TO vlIn
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
           STORE f1301can TO vcAn
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+6.2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+5   Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+18.2   Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+28.5 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+131.2 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+146.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      DO itE_1300z IN FAC0000A
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+017.5 Say "Son: "+vFRA  Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+123.2 Say "Dct/Red"     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+146.9 Say F1300TOT-tVAL Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN+146.9 Say F1300TOT      Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE pdIr
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
ENDPROC
*
PROCEDURE Let_3110z
 PUBLIC prF1, pfR2, pcL1, ptMn, plEt, pdIr, paDi, prEn, prUc, paRu
 STORE 08 TO ptMn
 STORE 00 TO pcL1
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
 STORE f3110ser+"-"+f3110let TO plEt
 STORE SUBSTR(DTOC(f3110fem), 7, 4)+" / "+SUBSTR(DTOC(f3110fem), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fem), 1, 2) TO pfEm
 STORE SUBSTR(DTOC(f3110fve), 7, 4)+" / "+SUBSTR(DTOC(f3110fve), 4, 2)+ ;
       " / "+SUBSTR(DTOC(f3110fve), 1, 2) TO pfVe
 STORE ALLTRIM(f3110dir)+" "+ALLTRIM(f3110dis) TO pdIr
 IF f3110ren=1
      STORE "RECIBIDO" TO prEn
 ELSE
      STORE "RENOVADO" TO prEn
 ENDIF
 IF LEN(ALLTRIM(f3110ruc))<>0
      STORE f3110ruc TO prUc
 ELSE
      STORE "DNI:"+f3110ele TO prUc
 ENDIF
 IF LEN(ALLTRIM(f3110aru))=0
      STORE f3110ael TO paRu
 ELSE
      STORE f3110aru TO paRu
 ENDIF
 @0,0             Say " "      Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+027.5 Say pLET     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+pCL1  Say pRF1     Font "&mLetRom",pTMN Style "NQ"
 @vLIN,mCLN+074.5 Say "LIMA"   Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+135.5 Say vSIG     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141.8 Say F3110TOT Font "&mLetRom",11 Style "NQ" Size 1,15 Pict "999,999.99"
 STORE vlIn+0.8 TO vlIn
 @vLIN,mCLN+093.3 Say pFEM     Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+114.3 Say pFVE     Font "&mLetRom",11 Style "NQ"
 STORE vlIn+5.4 TO vlIn
 @vLIN,mCLN+27    Say vFRA     Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+95    Say pREN     Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.2 TO vlIn
 @vLIN,mCLN+28    Say F3110NOM Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+40    Say pDIR     Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+35    Say pRUC     Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+70    Say F3110TEL Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.6 TO vlIn
 @vLIN,mCLN+48    Say F3110ANO Font "&mLetRom",9  Style "NQ" Size 1,52 Pict "@S52"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+40    Say pADI     Font "&mLetRom",9  Style "NQ" Size 1,60 Pict "@S62"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+36    Say pARU     Font "&mLetRom",10 Style "NQ"
 RELEASE prF1, pfR2, pcL1, ptMn, plEt, pdIr, paDi, prEn, prUc, paRu
ENDPROC
*
PROCEDURE Cre_3610z
 PUBLIC prUc, pdIr, pdIs, pdOc, pdO1
 SELECT caB_nota
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
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 IF LEN(ALLTRIM(pdIs))=0
      STORE pdOc TO pdO1
 ELSE
      STORE pdIs TO pdO1
 ENDIF
 @0,0            Say " "          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+11.0 Say vFEM         Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+41.8 Say vCM1         Font "&mLetRom",11 Style "NQ" Size 1,20 Pict "@S20"
 @vLIN,mCLN+72.0 Say vCM2         Font "&mLetRom",11 Style "NQ" Size 1,20 Pict "@S20"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say vNOM         Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say pDIR         Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+11   Say pRUC         Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+34   Say pDO1         Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(pdIs))>0
      @vLIN,mCLN+69 Say " "+pDOC    Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+003 Say "Descripción" Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
 @vLIN,mCLN+135 Say "V.V.Total"   Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
 SELECT deT_nota
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+2 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,mCLN+3 Say F3611DES     Font "&mLetCou",10 Style "NQ" Size 1,80 Pict "@S82"
      IF f3611tot<>0
           IF f3611tot=ttOt
                @vLIN,mCLN+133 Say tNET Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ELSE
                @vLIN,mCLN+133 Say Round(F3611TOT/(1+(vPIG/100)),2) Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "999,999.99"
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_nota
 DO fiN_1300z IN FAC0000A WITH "NC"
 @vLIN,mCLN+09 Say vFRA+" S.E.u.O." Font "&mLetAri",9  Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+3.8 TO vlIn
 @vLIN,mCLN+099 Say tNET            Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+120 Say F3610IGV        Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+138 Say vSIG            Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say tTOT            Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 RELEASE prUc, pdIr, pdIs, pdOc, pdO1
ENDPROC
*
PROCEDURE Deb_3610z
 DO crE_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PUBLIC prUc, plUg, ppEs, ptPp, pdIr
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 @0,0 Say Space(01)                        Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+15.5 Say F2600FEM              Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+74.5 Say F2600FEM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+15.5 Say F2600NOM              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+15.5 Say pDIR                  Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+15.5 Say pRUC                  Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+77.0 Say F2600SER+"-"+F2600DOC Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.35 TO vlIn
 @vLIN,mCLN+16 Say F2600CM1                Font "&mLetRom",10 Style "NQ"
 STORE vlIn+2.5 TO vlIn
 IF f2600td1="BO" .OR. f2600td1="FA"
      @vLIN,mCLN+086.5 Say F2600TD1+":"+F2600SR1+"-"+F2600DO1 Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+114.5 Say F2600FFA                           Font "&mLetRom",10 Style "NQ"
 ENDIF
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.1 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT prOductos
      IF EOF() .OR. f2111tpo<>2
           STORE 1 TO ptPp
      ELSE
           STORE 2 TO ptPp
      ENDIF
      SELECT deT_remi
      DO CASE
           CASE INT(f2601can)=f2601can
                @vLIN,mCLN+01 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999" Size 1,8
                @vLIN,mCLN+19 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"    Size 1,20
           OTHERWISE
                @vLIN,mCLN+02 Say F2601CAN Font "&mLetRom",11 Style "NQ" Pict "999,999.999" Size 1,12
                @vLIN,mCLN+19 Say F2601NUC Font "&mLetRom",11 Style "NQ" Pict "@S20"        Size 1,20
      ENDCASE
      @vLIN,mCLN+40 Say F2601DCR Font "&mLetRom",11 Style "NQ" Pict "@S65" Size 1,62
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+17 Say F2600MR1                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+37 Say F2600PLA                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+57 Say F2600MR2                       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+77 Say F2600PL2                       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+17 Say AllTrim(F2600CIM)              Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+17 Say F2600LC1                       Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say AllTrim(vADI)+", "+AllTrim(vADS) Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(vaDi))<>0 .AND. f2600mot<>5
      @vLIN,mCLN+17 Say pLUG                        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+3.9 TO vlIn
 @vLIN,mCLN+11 Say F2600TNO                       Font "&mLetRom",8 Style "NQ"
 STORE vlIn+1.1 TO vlIn
 @vLIN,mCLN+11 Say AllTrim(F2600TDI)+","+F2600TDS Font "&mLetRom",8 Style "NQ" Pict "@S36" Size 1,33
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+11 Say F2600TRU                       Font "&mLetRom",8 Style "NQ"
 RELEASE prUc, plUg, ppEs, ptPp, pdIr
ENDPROC
*
PROCEDURE BPa_4240z
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
      @vLIN,mCLN+vCLN+0 Say "["               Font "&mLetCou",8 Style "NQ"
      @vLIN,mCLN+vCLN+2 Say F1302CTD          Font "&mLetCou",8 Style "NQU" Pict "999"
      @vLIN,mCLN+vCLN+6 Say "]"               Font "&mLetCou",8 Style "NQ"
      DO CASE
           CASE vtPo=5 .AND. f1302un1+f1302un2="MM"
                @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                @vLIN,mCLN+vCLN+16 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+17 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                STORE vcLn+27 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=5 .AND. f1302un1+f1302un2="PP" .AND. vpL1+vpL2="  "
                @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetCou",8 Style "NQ" Pict "999"
                @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+13 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+14 Say F1302P21 Font "&mLetCou",8 Style "NQ" Pict "999"
                @vLIN,mCLN+vCLN+18 Say '"'      Font "&mLetCou",8 Style "NQ"
                STORE vcLn+27 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=5 .AND. f1302un1+f1302un2="PP" .AND. vpL1+vpL2<>"  "
                @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetCou",8 Style "NQ" Pict "999"
                @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+12 Say vPL1     Font "&mLetCou",8 Style "NQ"
                @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetCou",8 Style "NQ" Pict "999"
                @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+24 Say vPL2     Font "&mLetCou",8 Style "NQ"
                STORE vcLn+50 TO vcLn
                STORE plL1+02 TO plL1
           CASE vtPo=5 .AND. f1302un1+f1302un2="MP" .AND. vpL2=" "
                @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetCou",8 Style "NQ" Pict "999"
                @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8 Style "NQ"
                STORE vcLn+27 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=5 .AND. f1302un1+f1302un2="MP"
                @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+19 Say F1302P21 Font "&mLetCou",8 Style "NQ" Pict "999"
                @vLIN,mCLN+vCLN+23 Say '"'      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+24 Say vPL2     Font "&mLetCou",8 Style "NQ"
                STORE vcLn+50 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=5 .AND. f1302un1+f1302un2="PM" .AND. vpL1=" "
                @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetCou",8 Style "NQ" Pict "999"
                @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+19 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                STORE vcLn+27 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=5 .AND. f1302un1+f1302un2="PM"
                @vLIN,mCLN+vCLN+07 Say F1302P11 Font "&mLetCou",8 Style "NQ" Pict "999"
                @vLIN,mCLN+vCLN+11 Say '"'      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+12 Say vPL1     Font "&mLetCou",8 Style "NQ"
                @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+19 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                STORE vcLn+50 TO vcLn
                STORE plL1+02 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,mCLN+vCLN+7 Say F1302MLA  Font "&mLetCou",8 Style "NQ" Pict "99.999"
                STORE vcLn+18 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4
                @vLIN,mCLN+vCLN+07 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                @vLIN,mCLN+vCLN+16 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+17 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                STORE vcLn+27 TO vcLn
                STORE plL3+1 TO plL3
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
                STORE mlL3+1 TO plL3
           CASE vtPo=11
                @vLIN,mCLN+vCLN+07 Say F1302CA1 Font "&mLetCou",8 Style "NQ"
                @vLIN,mCLN+vCLN+09 Say F1302MLA Font "&mLetCou",8 Style "NQ" Pict "99.999"
                @vLIN,mCLN+vCLN+18 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,mCLN+vCLN+19 Say F1302CA2 Font "&mLetCou",8 Style "NQ"
                @vLIN,mCLN+vCLN+21 Say F1302MAN Font "&mLetCou",8 Style "NQ" Pict "99.999"
                STORE vcLn+28 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3, pfRa, vpL1, vpL2
ENDPROC
*
