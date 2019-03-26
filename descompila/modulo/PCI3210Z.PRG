 = INKEY(0.01)
 STORE "S" TO moPc
 STORE 99 TO mkEy
 SELECT leTras
 DO prE_docum WITH "¿Está seguro de Imprimir Documento?"
 IF moPc$"Nn"
      STORE 99 TO mkEy
      RETURN
 ENDIF
 STORE 99 TO mkEy
 SEEK vsEr+vdOc
 STORE f3210mon TO vmOn
 STORE f3210tot TO ttOt
 STORE f3210fem TO vfEm
 IF f3210mon=1
      STORE "S/" TO vsIg
 ELSE
      STORE "US$" TO vsIg
 ENDIF
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      STORE 1 TO vtCa
 ELSE
      STORE f9111tc3 TO vtCa
 ENDIF
 DO leE_3110a IN PCI3110A
 DO coLbln
 SAVE SCREEN TO mpAn_prn
 STORE 0 TO mvIs
 DO ipR_0001a WITH "LE"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO leT_3210z
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Let_3210z
 SELECT leTras
 STORE 00 TO vlIn, mcLn
 DO leE_3110a IN PCI3110A
 SELECT leTras
 @vLIN,mCLN      Say Space(01)      Font "&mLetRom",10 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 @vLIN,mCLN+30   Say F3210LET       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+47.5 Say F3210REF       Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+76   Say "LIMA"         Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+94   Say Substr(Dtoc(F3210FEM),7,4)+" / "+Substr(Dtoc(F3210FEM),4,2)+" / "+Substr(Dtoc(F3210FEM),1,2) Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+114  Say Substr(Dtoc(F3210FVE),7,4)+" / "+Substr(Dtoc(F3210FVE),4,2)+" / "+Substr(Dtoc(F3210FVE),1,2) Font "&mLetRom",10 Style "NQ"
 IF f3210mon=1
      @vLIN,mCLN+135 Say "S/"         Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+135 Say "US$"        Font "&mLetRom",10 Style "NQ"
 ENDIF
 @vLIN,mCLN+143 Say F3210TOT Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.99"
 STORE vlIn+6.0 TO vlIn
 @vLIN,mCLN+28  Say vFRA     Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+1.9 TO vlIn
 DO CASE
      CASE f3210ren=1
           @vLIN,mCLN+110 Say "RECIBIDO" Font "&mLetRom",10 Style "NQ"
      OTHERWISE
           @vLIN,mCLN+110 Say "RENOVADO" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+39  Say F3210NOM Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+3.0 TO vlIn
 @vLIN,mCLN+39  Say F3210RUC Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+69  Say F3210TEL Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+39  Say AllTrim(F3210DIR)+" "+AllTrim(F3210DIS) Font "&mLetRom",10 Style "NQ" Pict "@S55" Size 1,52
 STORE vlIn+2.5 TO vlIn
 @vLIN,mCLN+39  Say F3210ANO Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+3.2 TO vlIn
 @vLIN,mCLN+39 Say F3210ARU Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+69 Say F3210ATL Font "&mLetRom",10 Style "NQ" Size 1,52 Pict "@S50"
 STORE vlIn+1.6 TO vlIn
 @vLIN,mCLN+39 Say AllTrim(F3210ADI)+" "+AllTrim(F3210ADS) Font "&mLetRom",10 Style "NQ" Pict "@S55" Size 1,52
ENDPROC
*
