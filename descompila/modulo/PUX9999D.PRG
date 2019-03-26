*
PROCEDURE Sto_9999d
 PRIVATE ppIe
 DO coLsc3
 @ mfI0, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 ON KEY LABEL ENTER DO P_ENTER
 STORE k_Enter TO mkEy
 IF vaUt=2
      @mFI0,mCO0+2 Say "Presionar ENTER o TAB para continuar o ESC para SALIR..." Font "&mLetCou",10 Style "NQ"
      DO WHILE .T.
           mkEy = INKEY(0, "HM")
           DO CASE
                CASE mkEy=k_Esc
                     STORE 99 TO mkEy
                     EXIT
                CASE mkEy=k_F10
                     DO reTorna
                CASE mkEy=k_Tab .OR. mkEy=k_Enter
                     STORE k_Enter TO mkEy
                     EXIT
           ENDCASE
      ENDDO
 ENDIF
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 ON KEY LABEL ENTER
 @mFI0,mCO0+2 Say Space(50) Font "&mLetCou",10 Style "NQ" Size 1,70
 IF mkEy<>k_Enter
      RETURN
 ENDIF
 SET ESCAPE ON
 ON ESCAPE STORE 9000 TO MKEY
 DO caL_9999d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO toT_2111c IN PAM2111C
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO kaR_9999d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 WAIT CLEAR
 ON ESCAPE
 SET ESCAPE OFF
 FLUSH
 SYS(1104)
 RETURN
ENDPROC
*
PROCEDURE Cal_9999d
 STORE mfI0+4 TO vlIn
 @vLIN,mCO0+1 Say "Limpiando Stocks..." Font "&mLetCou",10 Style "NT" Color 2
 SELECT stO_tot
 GOTO TOP
 REPLACE f2119sto WITH 0
 REPLACE f2119caj WITH 0
 REPLACE f2119cpe WITH 0
 REPLACE f2119cjp WITH 0
 REPLACE f2119sts WITH 0
 REPLACE f2119orp WITH 0
 REPLACE f2119prm WITH 0
 REPLACE f2119vs1 WITH 0
 REPLACE f2119vs2 WITH 0
 REPLACE f2119vp1 WITH 0
 REPLACE f2119vp2 WITH 0
 REPLACE f2119vo1 WITH 0
 REPLACE f2119vo2 WITH 0
 SELECT tmP_gastos
 ZAP
 REINDEX
 SELECT prO_tot
 ZAP
 SELECT prOductos
 SET ORDER TO
 REPLACE f2111sto WITH 0, f2111sts WITH 0, f2111caj WITH 0, f2111cas WITH  ;
         0, f2111prm WITH 0, f2111mov WITH " ", f2111ult WITH CTOD( ;
         "  /  /    ") ALL
 SELECT seRies
 SET ORDER TO
 ZAP
 REINDEX
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT kaRdex
 SET ORDER TO
 ZAP
 REINDEX
 SELECT kaRdex_series
 SET ORDER TO
 ZAP
 REINDEX
 SET ORDER TO F2991COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 FLUSH
 SYS(1104)
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCO0+1 Say "Grabando Kardex..." Font "&mLetCou",10 Style "NT" Color 2
 DO or2_2111c IN PAM2111C
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO or1_2111c IN PAM2111C
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT coN_ped
 DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT kaRdex
 DO orD_0000a WITH "2990", "A", "F2990COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prOductos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=9000
           STORE 99 TO mkEy
           RETURN
      ENDIF
      IF f2111est="9" .OR. (f2111tpo<>1 .AND. f2111tpo<>3)
           SKIP
           LOOP
      ENDIF
      STORE f2111cod TO vcOd
      @vLIN,mCO0+35 Say vCOD Font "&mLetCou",10 Style "BQ" Size 1,15
      SELECT prO_tot
      SEEK UPPER(ALLTRIM(vcOd))+"*"
      IF EOF()
           DO nuEvo_rg
           REPLACE f2118cod WITH vcOd
           REPLACE f2118sto WITH 0
           REPLACE f2118caj WITH 0
           REPLACE f2118cpe WITH 0
           REPLACE f2118cjp WITH 0
           REPLACE f2118sts WITH 0
           REPLACE f2118orp WITH 0
           REPLACE f2118vcp WITH 0
           REPLACE f2118vcs WITH 0
           REPLACE f2118prm WITH 0
           REPLACE f2118co1 WITH 0
           REPLACE f2118co2 WITH 0
           REPLACE f2118fe1 WITH CTOD(" ")
           REPLACE f2118fe2 WITH CTOD(" ")
      ENDIF
      SELECT caB_cpra
      DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT deT_cpra
      DO orD_0000a WITH "2401", "A", "F2401COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO caL_2111c IN PAM2111C
      SELECT prOductos
      IF f2111ser=1
           DO seR_2111c IN PAM2111C
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO orD_2111c IN PAM2111C
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO peD_2111c IN PAM2111C
      IF mkEy=k_Esc
           RETURN
      ENDIF
      FLUSH
      SYS(1104)
      SELECT prOductos
      SKIP
 ENDDO
 SELECT kaRdex
 DO orD_0000a WITH "2990", "A", "F2990COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_cpra
 DO orD_0000a WITH "2401", "A", "F2401DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_cpra
 DO orD_0000a WITH "2401", "A", "F2400PED", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=9000
           STORE 99 TO mkEy
           RETURN
      ENDIF
      WAIT WINDOW NOWAIT "Leyendo Compra: "+f2400ser+"-"+f2400doc
      IF f2400td1<>"FA" .OR. f2400fin>vfEc .OR. f2400tpo<>2 .OR.  ;
         LEN(ALLTRIM(f2400ped))=0
           SKIP
           LOOP
      ENDIF
      STORE f2400net TO pnEt
      STORE f2400ped TO ppEd
      STORE f2400fem TO pfEm
      SELECT caMbio
      SEEK pfEm
      IF EOF()
           STORE mtCa TO ptCa
      ELSE
           STORE f9111tc1 TO ptCa
      ENDIF
      SELECT caB_cpra
      IF f2400mon=2
           STORE ROUND(pnEt*ptCa, 4) TO pnEt
      ENDIF
      SELECT tmP_gastos
      SEEK ALLTRIM(ppEd)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM7ped WITH ppEd
           REPLACE ftM7tot WITH 0
      ENDIF
      REPLACE ftM7tot WITH ftM7tot+pnEt
      SELECT caB_cpra
      SKIP
 ENDDO
 FLUSH
 SYS(1104)
 SELECT tmP_gastos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM7ped TO ppEd
      STORE ftM7tot TO pnEt
      STORE 0 TO ttOt
      SELECT caB_cpra
      GOTO TOP
      SEEK ALLTRIM(ppEd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2400ped)+"*"=ALLTRIM(ppEd)+"*"
           IF f2400tpo<>1 .OR. f2400est="9"
                SKIP
                LOOP
           ENDIF
           STORE f2400net TO pnE2
           STORE f2400fem TO pfEm
           SELECT caMbio
           SEEK pfEm
           IF EOF()
                STORE mtCa TO ptCa
           ELSE
                STORE f9111tc1 TO ptCa
           ENDIF
           SELECT caB_cpra
           IF f2400mon=2
                STORE ROUND(pnE2*ptCa, 4) TO pnE2
           ENDIF
           STORE ttOt+pnE2 TO ttOt
           SKIP
      ENDDO
      SELECT caB_cpra
      GOTO TOP
      SEEK ALLTRIM(ppEd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2400ped)+"*"=ALLTRIM(ppEd)+"*"
           IF f2400tpo<>1 .OR. f2400est="9"
                SKIP
                LOOP
           ENDIF
           STORE f2400tdo TO ptDo
           STORE f2400ser TO psEr
           STORE f2400doc TO pdOc
           STORE f2400mon TO pmOn
           STORE f2400fem TO pfEm
           STORE SUBSTR(DTOC(f2400fin), 7, 4) TO paNo
           STORE SUBSTR(DTOC(f2400fin), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(f2400fin), 1, 2) TO pdIa
           SELECT caMbio
           SEEK pfEm
           IF EOF()
                STORE mtCa TO ptCa
           ELSE
                STORE f9111tc1 TO ptCa
           ENDIF
           SELECT deT_cpra
           SEEK ptDo+psEr+pdOc
           DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=ptDo+ ;
              psEr+pdOc
                IF pmOn=1
                     STORE ROUND(f2401pre, 4) TO ppRe
                ELSE
                     STORE ROUND(f2401pre*ptCa, 4) TO ppRe
                ENDIF
                STORE f2401cod TO pcOd
                STORE ROUND(f2401can*ppRe, 4) TO psUb
                STORE psUb/ttOt TO pfCt
                STORE pnEt*pfCt TO pgTo
                STORE ROUND(pgTo/f2401can, 4) TO pgAs
                SELECT kaRdex
                SEEK ALLTRIM(pcOd)+"*"+paNo+pmEs+pdIa+"1"+"1"+ptDo+psEr+pdOc
                IF  .NOT. EOF()
                     REPLACE f2990gas WITH f2990gas+pgAs
                ENDIF
                SELECT deT_cpra
                SKIP
           ENDDO
           SELECT caB_cpra
           SKIP
      ENDDO
      SELECT tmP_gastos
      SKIP
 ENDDO
 FLUSH
 SYS(1104)
ENDPROC
*
PROCEDURE Kar_9999d
 PARAMETER ptPo
 PRIVATE psW0
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT kaRdex
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=9000
           STORE 99 TO mkEy
           RETURN
      ENDIF
      STORE f2990cod TO vcOd
      STORE f2990dia TO vdIa
      STORE f2990mes TO vmEs
      STORE f2990ano TO vaNo
      STORE f2990sld TO vsLd
      STORE f2990tpo TO vtPo
      STORE f2990tdo TO vtDo
      STORE f2990ser TO vsEr
      STORE f2990doc TO vdOc
      STORE f2990can TO vcAn
      STORE f2990sld TO vsLd
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE SPACE(80) TO vdEs
           STORE SPACE(15) TO vuNi
      ELSE
           STORE f2111des TO vdEs
           STORE f2111nuv TO vuNi
      ENDIF
      SELECT tmP_negativo_det
      SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
      IF EOF() .AND. vtDo<>"GI" .AND. vtDo<>"GS" .AND. vsLd<0 .AND. vcAn- ;
         INT(vcAn)<>0
           APPEND BLANK
           REPLACE ftM8cod WITH vcOd
           REPLACE ftM8tdo WITH vtDo
           REPLACE ftM8ser WITH vsEr
           REPLACE ftM8doc WITH vdOc
           REPLACE ftM8fem WITH CTOD(vdIa+"/"+vmEs+"/"+vaNo)
           REPLACE ftM8can WITH vcAn
      ENDIF
      SELECT tmP_negativo2
      SEEK ALLTRIM(vcOd)+"*"
      DO CASE
           CASE EOF()
                APPEND BLANK
                REPLACE ftM6cod WITH vcOd
                REPLACE ftM6des WITH vdEs
                REPLACE ftM6uni WITH vuNi
                REPLACE ftM6dia WITH " "
                REPLACE ftM6mes WITH " "
                REPLACE ftM6ano WITH " "
                REPLACE ftM6sld WITH 0
                REPLACE ftM6ctd WITH 1
                REPLACE ftM6mov WITH 0
                REPLACE ftM6ini WITH 0
                REPLACE ftM6sto WITH vsLd
                IF vsLd<0
                     REPLACE ftM6sld WITH vsLd
                     REPLACE ftM6dia WITH vdIa
                     REPLACE ftM6mes WITH vmEs
                     REPLACE ftM6ano WITH vaNo
                ENDIF
                IF vtPo="1"
                     REPLACE ftM6mov WITH ftM6mov+1
                ENDIF
                IF vtDo="GI" .AND. vmEs="01" .AND. vdIa="01"
                     REPLACE ftM6ini WITH 1
                ENDIF
           CASE  .NOT. EOF()
                REPLACE ftM6sto WITH vsLd
                IF vsLd<0 .AND. ftM6sld>vsLd
                     IF ftM6sld=0
                          REPLACE ftM6dia WITH vdIa
                          REPLACE ftM6mes WITH vmEs
                          REPLACE ftM6ano WITH vaNo
                     ENDIF
                     REPLACE ftM6sld WITH vsLd
                     REPLACE ftM6ctd WITH ftM6ctd+1
                ENDIF
                IF vtPo="1"
                     REPLACE ftM6mov WITH ftM6mov+1
                ENDIF
      ENDCASE
      SELECT kaRdex
      SKIP
 ENDDO
 FLUSH
 SYS(1104)
 SELECT tmP_negativo2
 DELETE FOR ftM6sld>=0
 PACK
 STORE 1 TO psW0
 SELECT tmP_negativo2
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM6cod TO vcOd
      SELECT tmP_negativos
      DO CASE
           CASE psW0=1
                APPEND BLANK
                REPLACE ftM5co1 WITH vcOd
                STORE 2 TO psW0
           CASE psW0=2
                REPLACE ftM5co2 WITH vcOd
                STORE 3 TO psW0
           CASE psW0=3
                REPLACE ftM5co3 WITH vcOd
                STORE 4 TO psW0
           CASE psW0=4
                REPLACE ftM5co4 WITH vcOd
                STORE 1 TO psW0
      ENDCASE
      SELECT tmP_negativo2
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Neg_9999d
 PRIVATE plIn
 SELECT tmP_negativos
 GOTO TOP
 IF  .NOT. BOF()
      STORE mfI0+2.5 TO vlIn
      @ mfI0, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
      @vLIN,mCO0+1 Say "Mostrando Negativos.."  Font "&mLetCou",10 Style "NT" Color 2
      STORE vlIn+2 TO plIn
      DO WHILE  .NOT. EOF()
           @pLIN,mCO0    Say FTM5CO1 Font "&mLetCou",10 Size 1,20 Style "BQ"
           @pLIN,mCO0+26 Say FTM5CO2 Font "&mLetCou",10 Size 1,20 Style "BQ"
           @pLIN,mCO0+52 Say FTM5CO3 Font "&mLetCou",10 Size 1,20 Style "BQ"
           @pLIN,mCO0+78 Say FTM5CO4 Font "&mLetCou",10 Size 1,20 Style "BQ"
           STORE plIn+1 TO plIn
           SKIP
           IF EOF()
                EXIT
           ENDIF
           IF plIn>mfI0+22
                IF vaUt=2
                     @mFI0+23,mCO0+1 Say "Presionar una tecla..." Font "&mLetCou",10 Size 1,24 Style "BQ"
                     mkEy = INKEY(0)
                ENDIF
                @ vlIn+2, mcO0 CLEAR TO mfI0+24, mcO0+muCo
                STORE vlIn+2 TO plIn
           ENDIF
      ENDDO
      IF vaUt=2
           @mFI0+23,mCO0+1 Say "Presionar una tecla..." Font "&mLetCou",10 Size 1,24 Style "BQ"
           mkEy = INKEY(0)
           @ vlIn+2, mcO0 CLEAR TO mfI0+24, mcO0+muCo
      ENDIF
 ENDIF
ENDPROC
*
