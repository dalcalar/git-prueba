*
PROCEDURE Fac_1300z
ENDPROC
*
PROCEDURE Bol_1300z
ENDPROC
*
PROCEDURE Npe_1300z
 PUBLIC pfOt
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"LOGO.JPG" TO pfOt
 ELSE
      STORE muNi+":"+mpTh+"LOGO.JPG" TO pfOt
 ENDIF
 @vLIN,mCLN    Say "&pFOT"                 BitMap Style "Q" Size 7,13 Stretch
 @vLIN,mCLN+15 Say "Comunidad Eucaristica" Font "&mLetRom",13 Style "BQI"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+17 Say "Mariana Primera de"    Font "&mLetRom",13 Style "BQI"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+20 Say "Corintios Trece"       Font "&mLetRom",13 Style "BQI"
 STORE vlIn+3.0 TO vlIn
 @vLIN,mCLN+23 Say "Ticket "+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN    Say Replicate("-",40)       Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "Fecha: "+Dtoc(vFEM)    Font "&mLetCou",9  Style "NQ"
 @vLIN,mCLN+30 Say "Hora: "+F1300TIM       Font "&mLetCou",9  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",40)       Font "&mLetCou",8  Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say "Ct"                    Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+05 Say "Descripcion"           Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+45 Say "Total"                 Font "&mLetRom",10 Style "BQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN    Say Replicate("-",40)       Font "&mLetCou",8  Style "NQ"
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
      STORE f1301can TO vcAn
      DO pc2_1300z IN FAC0000A
      @vLIN,mCLN    Say F1301CAN Font "&mLetCou",11 Style "NQ" Pict "999"    Size 1,3
      @vLIN,mCLN+05 Say F1301DCR Font "&mLetCou",11 Style "NQ" Pict "@S23"   Size 1,20
      @vLIN,mCLN+44 Say vTOT     Font "&mLetCou",11 Style "NQ" Pict "999.99" Size 1,8
      STORE vlIn+1.2 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN    Say Replicate("-",38) Font "&mLetCou",8 Style "NQ"
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN+23 Say "TOTAL "+vSIG     Font "&mLetRom",12 Style "BQ"
 @vLIN,mCLN+41 Say F1300TOT          Font "&mLetRom",12 Style "BQ" Pict "9,999.99"
 STORE vlIn+3 TO vlIn
 @vLIN,mCLN    Say "."               Font "&mLetCou",8  Style "NQ"
 RELEASE pfOt
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
