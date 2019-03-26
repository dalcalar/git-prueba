 SELECT teMporal
 SET FILTER TO
 REPLACE seP1 WITH "|" ALL
 GOTO TOP
 DO muE_1320b WITH "F", "i"
 DO p00_1320b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1320b
 GOTO TOP
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_1320b WITH "i", "v"
 DO seE_1320b WITH "v"
 DO diS_1320b WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1320b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1320b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1320b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1320b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. maDm=1 .AND. mfEl<>"2"
                DO CASE
                     CASE vsW1=1
                          STORE 2 TO vsW1
                     CASE vsW1=2
                          STORE 1 TO vsW1
                ENDCASE
                STORE vfIl TO cfIl
                DO muE_1320b WITH "v", "c"
                DO seE_1320b WITH "i"
                STORE ifIl TO vfIl
                DO paN_1320b
                STORE cfIl TO vfIl
                DO muE_1320b WITH "c", "v"
                DO seE_1320b WITH "v"
                DO muE_1320b WITH "F", "v"
                DO diS_1320b WITH "R"
                STORE 99 TO mkEy
           CASE mkEy=k_F8
                DO xlS_1320b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_1320b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_1320b WITH "v"
                STORE 999 TO mkEy
           CASE mkEy=k_Ctrl_o
                IF  .NOT. DIRECTORY("PLE")
                     MD PLE
                ENDIF
                STORE "PLE\LE"+mrUc+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                      SUBSTR(DTOC(dfEm), 4, 2)+"00140100001111.TXT" TO vpLe
                DO prE_docum WITH  ;
                   "Está seguro de crear los datos para el PLE? "+vpLe
                IF moPc$"Ss"
                     DO prE_docum WITH "Desea revisar errores primero?"
                     IF moPc$"Ss"
                          DO reV_1320b
                          STORE 99 TO mkEy
                          EXIT
                     ENDIF
                     WAIT WINDOW NOWAIT  ;
                          "L E Y E N D O ... Presionar ESC para Salir"+ ;
                          CHR(13)+"Hora Inicial de Lectura: "+TIME()
                     = INKEY(0.05)
                     SELECT teMporal
                     SET FILTER TO
                     PRIVATE xcTd, xpAn_00
                     SET ORDER TO
                     REPLACE seP1 WITH "|" ALL
                     COUNT TO xcTd
                     DO coLbln
                     SAVE SCREEN TO xpAn_00
                     @10,50 Say "Total Items del Ple:"+Str(xCTD,12,0) Font "&mLetAri",9 Style "NQ" Size 1,40
                     @12,50 Say "Presionar Tecla para continuar"      Font "&mLetAri",9 Style "NQ" Size 1,40
                     mkEy = INKEY(0)
                     RESTORE SCREEN FROM xpAn_00
                     RELEASE xcTd, xpAn_00
                     SET ORDER TO F9702PER
                     GOTO TOP
                     Copy to &vPLE SDF
                     SET ORDER TO F9702DOC
                     WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
                     = INKEY(0.05)
                     WAIT CLEAR
                     GOTO TOP
                     DO seE_1320b WITH "v"
                ENDIF
           CASE mkEy=k_Alt_z
                IF  .NOT. DIRECTORY("PLE")
                     MD PLE
                ENDIF
                STORE "PLE\"+mrUc+"-RF-"+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                      SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 1, 2)+ ;
                      "-01.txt" TO vpLe
                DO prE_docum WITH  ;
                   "Está seguro de crear el Resumen de Contingencia? "+vpLe
                IF moPc$"Ss"
                     DO prE_docum WITH "Desea revisar errores primero?"
                     IF moPc$"Ss"
                          DO reV_1320b
                          STORE 99 TO mkEy
                          EXIT
                     ENDIF
                     WAIT WINDOW NOWAIT  ;
                          "L E Y E N D O ... Presionar ESC para Salir"+ ;
                          CHR(13)+"Hora Inicial de Lectura: "+TIME()
                     = INKEY(0.05)
                     SELECT tmP_rsm_conting
                     ZAP
                     SELECT teMporal
                     GOTO TOP
                     DO WHILE  .NOT. EOF()
                          IF f9702scp="F" .OR. f9702scp="E"
                               SKIP
                               LOOP
                          ENDIF
                          STORE f9702fem TO pfEm
                          STORE f9702tcp TO ptCp
                          STORE f9702scp TO psCp
                          STORE f9702ncp TO pnCp
                          STORE f9702tdi TO ptDi
                          STORE f9702ruc TO prUc
                          STORE f9702mon TO pmOn
                          STORE f9702nom TO pnOm
                          STORE 0 TO peXp
                          IF f9702est="2"
                               STORE 0 TO pbAs
                               STORE 0 TO peXo
                               STORE 0 TO piNa
                               STORE 0 TO piSc
                               STORE 0 TO piGv
                               STORE 0 TO poTr
                               STORE 0 TO ptOt
                          ELSE
                               STORE f9702bas TO pbAs
                               STORE f9702exo TO peXo
                               STORE f9702ina TO piNa
                               STORE f9702isc TO piSc
                               STORE f9702igv TO piGv
                               STORE f9702otr TO poTr
                               STORE f9702tot TO ptOt
                          ENDIF
                          STORE f9702tc2 TO ptC2
                          STORE f9702sr2 TO psR2
                          STORE f9702do2 TO pdO2
                          SELECT tmP_rsm_conting
                          APPEND BLANK
                          REPLACE moTivo WITH "1"
                          REPLACE tiPope WITH "01"
                          REPLACE f9702fem WITH pfEm
                          REPLACE f9702tcp WITH ptCp
                          REPLACE f9702scp WITH psCp
                          REPLACE f9702ncp WITH pnCp
                          REPLACE f9702ncu WITH " "
                          REPLACE f9702tdi WITH ptDi
                          REPLACE f9702ruc WITH prUc
                          REPLACE f9702nom WITH pnOm
                          REPLACE f9702mon WITH pmOn
                          REPLACE f9702bas WITH pbAs
                          REPLACE f9702exo WITH peXo
                          REPLACE f9702ina WITH piNa
                          REPLACE f9702exp WITH peXp
                          REPLACE f9702isc WITH piSc
                          REPLACE f9702igv WITH piGv
                          REPLACE f9702otr WITH poTr
                          REPLACE f9702tot WITH ptOt
                          REPLACE f9702tc2 WITH ptC2
                          REPLACE f9702sr2 WITH psR2
                          REPLACE f9702do2 WITH pdO2
                          REPLACE f9702per WITH " "
                          REPLACE f9702pba WITH 0
                          REPLACE f9702pto WITH 0
                          REPLACE f9702ptt WITH 0
                          SELECT teMporal
                          SKIP
                     ENDDO
                     SELECT tmP_rsm_conting
                     REPLACE f9702tc2 WITH " " FOR f9702tc2="00"
                     REPLACE f9702sr2 WITH " " FOR f9702sr2="-"
                     REPLACE f9702do2 WITH " " FOR f9702do2="-"
                     REPLACE f9702bas WITH f9702bas*-1 FOR f9702bas<0
                     REPLACE f9702exo WITH f9702exo*-1 FOR f9702exo<0
                     REPLACE f9702ina WITH f9702ina*-1 FOR f9702ina<0
                     REPLACE f9702isc WITH f9702isc*-1 FOR f9702isc<0
                     REPLACE f9702igv WITH f9702igv*-1 FOR f9702igv<0
                     REPLACE f9702otr WITH f9702otr*-1 FOR f9702otr<0
                     REPLACE f9702tot WITH f9702tot*-1 FOR f9702tot<0
                     REPLACE seP1 WITH "|" ALL
                     REPLACE seP2 WITH "|" ALL
                     REPLACE seP3 WITH "|" ALL
                     REPLACE seP4 WITH "|" ALL
                     REPLACE seP5 WITH "|" ALL
                     REPLACE seP6 WITH "|" ALL
                     REPLACE seP7 WITH "|" ALL
                     REPLACE seP8 WITH "|" ALL
                     REPLACE seP9 WITH "|" ALL
                     REPLACE seP10 WITH "|" ALL
                     REPLACE seP11 WITH "|" ALL
                     REPLACE seP12 WITH "|" ALL
                     REPLACE seP13 WITH "|" ALL
                     REPLACE seP14 WITH "|" ALL
                     REPLACE seP15 WITH "|" ALL
                     REPLACE seP16 WITH "|" ALL
                     REPLACE seP17 WITH "|" ALL
                     REPLACE seP18 WITH "|" ALL
                     REPLACE seP19 WITH "|" ALL
                     REPLACE seP20 WITH "|" ALL
                     REPLACE seP21 WITH "|" ALL
                     REPLACE seP22 WITH "|" ALL
                     REPLACE seP23 WITH "|" ALL
                     REPLACE seP24 WITH "|" ALL
                     REPLACE seP25 WITH "|" ALL
                     REPLACE seP26 WITH "|" ALL
                     PRIVATE xcTd, xpAn_00
                     SET ORDER TO F9702DOC
                     COUNT TO xcTd
                     SAVE SCREEN TO xpAn_00
                     DO coLbln
                     @10,50 Say "Total Items del Resumen:"+Str(xCTD,12,0) Font "&mLetAri",9 Style "NQ" Size 1,40
                     @12,50 Say "Presionar Tecla para continuar"          Font "&mLetAri",9 Style "NQ" Size 1,40
                     mkEy = INKEY(0)
                     RESTORE SCREEN FROM xpAn_00
                     RELEASE xcTd, xpAn_00
                     GOTO TOP
                     Copy to &vPLE SDF
                     STORE mrUc+"-RF-"+SUBSTR(DTOC(dfEm), 1, 2)+ ;
                           SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 7,  ;
                           4)+"-01.zip" TO mdBf
                     WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
                     = INKEY(0.05)
                     WAIT CLEAR
                     SELECT teMporal
                     SET ORDER TO F9702DOC
                     GOTO TOP
                     DO seE_1320b WITH "v"
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                          f9702tcp+ALLTRIM(f9702scp)+"*"+ ;
                          ALLTRIM(f9702ncp)+"*" .AND. vtDo+ALLTRIM(vsEr)+ ;
                          "*"+ALLTRIM(vdOc)+"*"=itDo+ALLTRIM(isEr)+"*"+ ;
                          ALLTRIM(idOc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+ ;
                                    "*"=itDo+ALLTRIM(isEr)+"*"+ ;
                                    ALLTRIM(idOc)+"*"
                                    DO paN_1320b
                               OTHERWISE
                                    DO seE_1320b WITH "v"
                                    DO diS_1320b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1320b WITH "i", "v"
                          DO seE_1320b WITH "v"
                          DO diS_1320b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                          f9702tcp+ALLTRIM(f9702scp)+"*"+ ;
                          ALLTRIM(f9702ncp)+"*" .AND. vtDo+ALLTRIM(vsEr)+ ;
                          "*"+ALLTRIM(vdOc)+"*"=utDo+ALLTRIM(usEr)+"*"+ ;
                          ALLTRIM(udOc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+ ;
                                    "*"=utDo+ALLTRIM(usEr)+"*"+ ;
                                    ALLTRIM(udOc)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1320b
                               OTHERWISE
                                    DO seE_1320b WITH "v"
                                    DO diS_1320b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1320b WITH "u", "v"
                          DO seE_1320b WITH "v"
                          DO diS_1320b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320b WITH "v"
                          DO diS_1320b WITH "N"
                          SKIP
                          IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                             utDo+ALLTRIM(usEr)+"*"+ALLTRIM(udOc)+"*"
                               DO coLsc7
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1320b WITH ffIl, ffIl+1
                               DO li1_1320b WITH ffIl, ffIl+1
                               DO muE_1320b WITH "F", "u"
                               DO muE_1320b WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1320b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1320b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1320b WITH "v"
                          DO diS_1320b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320b WITH "v"
                          DO diS_1320b WITH "N"
                          SKIP -1
                          IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                             itDo+ALLTRIM(isEr)+"*"+ALLTRIM(idOc)+"*"
                               DO coLsc7
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1320b WITH ifIl, ifIl+1
                               DO li1_1320b WITH ifIl, ifIl+1
                               DO muE_1320b WITH "F", "v"
                               DO muE_1320b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1320b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1320b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1320b WITH "v"
                          DO diS_1320b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1320b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1320b
                          STORE ifIl TO vfIl
                          DO muE_1320b WITH "i", "v"
                          DO seE_1320b WITH "v"
                          DO diS_1320b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1320b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1320b
                          STORE ifIl TO vfIl
                          DO muE_1320b WITH "i", "v"
                          DO seE_1320b WITH "v"
                          DO diS_1320b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1320b WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1320b
 STORE ifIl TO vfIl, ufIl
 DO muE_1320b WITH "F", "i"
 DO muE_1320b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_1320b WITH "N"
      DO muE_1320b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc7
      IF mrEs<"5"
           @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      ELSE
           @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo-0.6
      ENDIF
      DO liN_1320b WITH ufIl+1, ffIl+1
      DO li1_1320b WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Col_1320b
 PARAMETER pcOl
 DO CASE
      CASE ptIp="N" .AND. pcOl="1"
           DO coLsc7
      CASE ptIp="R" .AND. pcOl="1"
           DO coLbln
      CASE ptIp="N" .AND. pcOl="2"
           SET COLOR TO R/BG
      CASE ptIp="R" .AND. pcOl="2"
           SET COLOR TO BG/R
      CASE ptIp="N" .AND. pcOl="3"
           DO coL_fonro
      CASE ptIp="R" .AND. pcOl="3"
           DO coLblr
      CASE ptIp="N" .AND. pcOl="4"
           DO coL_fonaz
      CASE ptIp="R" .AND. pcOl="4"
           DO coLblz
 ENDCASE
ENDPROC
*
PROCEDURE Dis_1320b
 PARAMETER ptIp
 PRIVATE ptDo, psEr, pdOc, pnEt, piGv, ptOt, pnE1, piG1, ptO1
 STORE f9702tcp TO ptDo
 STORE f9702scp TO psEr
 STORE f9702ncp TO pdOc
 DO CASE
      CASE f9702tcp="07"
           DO coL_1320b WITH "3"
      CASE f9702tcp="08"
           DO coL_1320b WITH "4"
      OTHERWISE
           DO coL_1320b WITH "1"
 ENDCASE
 @vFIL,mCO0+00.0 Say F9702TCP             Font "&mLetAri",9 Style "NQ" Size 1,3.3 Pict "@S02"
 @vFIL,mCO0+04.0 Say Substr(F9702SCP,1,4) Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "@S04"
 @vFIL,mCO0+10.6 Say Substr(F9702NCP,2,7) Font "&mLetAri",9 Style "NQ" Size 1,9.8 Pict "@S08"
 DO coL_1320b WITH "1"
 @vFIL,mCO0+21.0 Say F9702FEM             Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+34.1 Say F9702FVE             Font "&mLetAri",9 Style "NQ" Size 1,12.6
 IF seP1$"*R" .OR. (f9702tcp="01" .AND. LEN(ALLTRIM(f9702ruc))=0)
      DO coL_1320b WITH "2"
 ENDIF
 @vFIL,mCO0+47.3 Say F9702RUC             Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "@S11"
 IF seP1$"@&"
      DO coL_1320b WITH "2"
 ELSE
      DO coL_1320b WITH "1"
 ENDIF
 DO CASE
      CASE mrEs="3" .AND. vsW0=1
           @vFIL,mCO0+63.9 Say F9702NOM     Font "&mLetAri",9 Style "NQ" Size 1,035.0 Pict "@S38"
      CASE mrEs="3" .AND. vsW0=2
           @vFIL,mCO0+63.9 Say F9702CM1     Font "&mLetAri",9 Style "NQ" Size 1,035.0 Pict "@S38"
      CASE vsW0=1
           @vFIL,mCO0+63.9 Say F9702NOM     Font "&mLetAri",9 Style "NQ" Size 1,103.3 Pict "@S106"
      CASE vsW0=2
           @vFIL,mCO0+63.9 Say F9702CM1     Font "&mLetAri",9 Style "NQ" Size 1,103.3 Pict "@S106"
 ENDCASE
 DO coL_1320b WITH "1"
 @vFIL,vCL2      Say F9702TCA             Font "&mLetAri",9 Style "NQ" Size 1,07.5 Pict "999.999"
 @vFIL,vCL1      Say F9702TC2             Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFIL,vCL1+04.0 Say F9702SR2             Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFIL,vCL1+08.6 Say F9702DO2             Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,vCL1+19.0 Say F9702FE2             Font "&mLetAri",9 Style "NQ" Size 1,12.6
 SELECT teMporal_3
 SEEK ALLTRIM(ptDo)+ALLTRIM(psEr)+"*"+ALLTRIM(pdOc)+"*"
 IF  .NOT. EOF() .AND. ftM3est="@"
      SET COLOR TO BG/R
      @vFIL+0.1,vCL2+0.2 Say "**" Font "&mLetAri",10 Style "BQ"
      DO coL_1320b WITH "1"
 ENDIF
 SELECT teMporal
 DO CASE
      CASE vsW1=1 .OR. SUBSTR(psEr, 1, 1)="0"
           @vFIL,vCL2+08.2 Say F9702BAS Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.4 Say F9702IGV Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.6 Say F9702TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      CASE vsW1=2 .AND. ptIp="N"
           SELECT teMporal_3
           IF  .NOT. EOF()
                STORE ftM6net TO pnEt
                STORE ftM6igv TO piGv
                STORE ftM6tot TO ptOt
           ENDIF
           SELECT teMporal
           DO coLsc7r
           @vFIL,vCL2+08.2 Say pNET Font "&mLetAri",9 Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @vFIL,vCL2+28.4 Say pIGV Font "&mLetAri",9 Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @vFIL,vCL2+48.6 Say pTOT Font "&mLetAri",9 Style "BQ" Size 1,16.3 Pict "999,999,999.99"
      CASE vsW1=2
           STORE f9702bas TO pnE1
           STORE f9702igv TO piG1
           STORE f9702tot TO ptO1
           SELECT teMporal_6
           SEEK ptDd+ALLTRIM(psRd)+"*"+ALLTRIM(pdOd)+"*"
           IF  .NOT. EOF()
                STORE ftM6net TO pnEt
                STORE ftM6igv TO piGv
                STORE ftM6tot TO ptOt
           ENDIF
           SELECT teMporal
           SET READBORDER OFF
           @vFIL,vCL2+08.4 Get pNET Font "&mLetAri",9 Style "BQ" Size 1,15.9 Pict "999999999.99" Color ,&mColBlN
           @vFIL,vCL2+28.6 Get pIGV Font "&mLetAri",9 Style "BQ" Size 1,15.9 Pict "999999999.99" Color ,&mColBlN
           @vFIL,vCL2+48.8 Get pTOT Font "&mLetAri",9 Style "BQ" Size 1,15.9 Pict "999999999.99" Color ,&mColBlN
           SET CURSOR ON
           READ
           SET CURSOR OFF
           SET READBORDER ON
           SELECT teMporal_3
           IF  .NOT. EOF()
                DO CASE
                     CASE pnEt<>pnE1 .OR. piGv<>piG1 .OR. ptOt<>ptO1
                          REPLACE ftM3net WITH pnEt
                          REPLACE ftM3igv WITH piGv
                          REPLACE ftM3tot WITH ptOt
                          REPLACE ftM3est WITH "@"
                     CASE ftM3est="@" .AND. pnEt=pnE1 .AND. piGv=piG1  ;
                          .AND. ptOt=ptO1
                          REPLACE ftM3net WITH pnEt
                          REPLACE ftM3igv WITH piGv
                          REPLACE ftM3tot WITH ptOt
                          REPLACE ftM3est WITH " "
                ENDCASE
           ENDIF
           SELECT teMporal
 ENDCASE
 RELEASE ptDo, psEr, pdOc, pnEt, piGv, ptOt, pnE1, piG1, ptO1
ENDPROC
*
PROCEDURE Lin_1320b
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+20.6 TO pfIn, mcO0+20.6
 @ piNi, mcO0+33.8 TO pfIn, mcO0+33.8
 @ piNi, mcO0+46.9 TO pfIn, mcO0+46.9
 @ piNi, mcO0+63.5 TO pfIn, mcO0+63.5
 @ piNi, vcL1-00.4 TO pfIn, vcL1-00.4
 @ piNi, vcL1+18.6 TO pfIn, vcL1+18.6
 @ piNi, vcL2-00.4 TO pfIn, vcL2-00.4
 @ piNi, vcL2+07.8 TO pfIn, vcL2+07.8
 @ piNi, vcL2+28.0 TO pfIn, vcL2+28.0
 @ piNi, vcL2+48.2 TO pfIn, vcL2+48.2
ENDPROC
*
PROCEDURE Li1_1320b
 PARAMETER piNi, pfIn
 @ piNi, mcO0+03.6 TO pfIn, mcO0+03.6
 @ piNi, mcO0+10.2 TO pfIn, mcO0+10.2
 @ piNi, vcL1+03.6 TO pfIn, vcL1+03.6
 @ piNi, vcL1+08.2 TO pfIn, vcL1+08.2
ENDPROC
*
PROCEDURE P00_1320b
 RESTORE SCREEN FROM vpAn_99
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 IF mrEs<"5"
      DO cuAdro WITH ifIl-2, mcO0, ffIl+3.2, mcO0+muCo+0.5
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLsc4
      @ ifIl-1.8, mcO0-0.8 TO ifIl-0.3, mcO0+muCo+0.5 PATTERN 1
      @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo+0.5 PATTERN 1
 ELSE
      DO cuAdro WITH ifIl-2, mcO0, ffIl+3.2, mcO0+muCo-0.6
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLsc4
      @ ifIl-1.8, mcO0-0.8 TO ifIl-0.3, mcO0+muCo-0.2 PATTERN 1
      @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo-0.2 PATTERN 1
 ENDIF
 @fFIL+3.8,mCO0+mUCO-83 Say "Registro de Ventas del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
 DO liN_1320b WITH ifIl-1.8, ffIl+1.6
 DO li1_1320b WITH ifIl-0.4, ffIl+1.6
 DO coLsc4
 @iFIL-1.7,mCO0+02.1 Say "Documento"           Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+23.4 Say "Fecha"               Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+36.0 Say "Vencim"              Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+49.8 Say "RUC/D.I."            Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,vCL2+01.6 Say "T/C"                 Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+64.2 Say "Nombre/Razón Social" Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,vCL1+21.4 Say "Fecha"               Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,vCL1+00.6 Say "Doc.Referenc"        Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,vCL2+10.0 Say "Base Imp.S/."        Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,vCL2+34.4 Say "IGV S/."             Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,vCL2+52.7 Say "Total S/."           Font "&mLetAri",10 Style "BQ"
 @fFIL+1.9,vCL2-07.2 Say "TOTALES"             Font "&mLetRom",11 Style "BQ"
 @fFIL+2.0,vCL2+08.2 Say tBAS                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,vCL2+28.3 Say tIGV                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,vCL2+48.5 Say tTOT                  Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 @fFIL+2.0,mCO0+02.0 Say "FA:"                 Font "&mLetAri",10 Style "BQ"
 @fFIL+2.0,mCO0+07.0 Say tNFA                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFIL+2.0,mCO0+20.0 Say "BO:"                 Font "&mLetAri",10 Style "BQ"
 @fFIL+2.0,mCO0+25.0 Say tNBO                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFIL+2.0,mCO0+38.0 Say "NC:"                 Font "&mLetAri",10 Style "BQ"
 @fFIL+2.0,mCO0+43.0 Say tNCR                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @fFIL+2.0,mCO0+56.0 Say "ND:"                 Font "&mLetAri",10 Style "BQ"
 @fFIL+2.0,mCO0+61.0 Say tNDE                  Font "&mLetAri",10 Style "BQ" Size 1,07 Pict "99,999"
 @ ffIl+1.6, vcL2+07.8 TO ffIl+3.4, vcL2+07.8
 @ ffIl+0.0, vcL2+28.0 TO ffIl+3.4, vcL2+28.0
 @ ffIl+0.0, vcL2+48.2 TO ffIl+3.4, vcL2+48.2
ENDPROC
*
PROCEDURE See_1320b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"
      CASE psEe="i"
           SEEK itDo+ALLTRIM(isEr)+"*"+ALLTRIM(idOc)+"*"
      CASE psEe="u"
           SEEK utDo+ALLTRIM(usEr)+"*"+ALLTRIM(udOc)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1320b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9702tcp TO vtDo
           STORE f9702scp TO vsEr
           STORE f9702ncp TO vdOc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9702tcp TO utDo
           STORE f9702scp TO usEr
           STORE f9702ncp TO udOc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9702tcp TO itDo
           STORE f9702scp TO isEr
           STORE f9702ncp TO idOc
 ENDCASE
ENDPROC
*
PROCEDURE Res_1320b
 DO p00_1320a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1320b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 DO seE_1320b WITH "i"
 DO paN_1320b
 DO seE_1320b WITH "i"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"=f9702tcp+ ;
         ALLTRIM(f9702scp)+"*"+ALLTRIM(f9702ncp)+"*"
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_1320b WITH "i", "v"
 ENDIF
 DO seE_1320b WITH "v"
 DO diS_1320b WITH "R"
ENDPROC
*
PROCEDURE Imp_1320b
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina IN PVR1320B
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO reP_1320b
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_1320b
 PUBLIC ptAm, pmEs, paNo, pbAs, piGv, ptOt, piTt, pfEc
 STORE 124 TO ptAm
 STORE 020 TO mcLn
 STORE 0 TO pbAs, piGv, ptOt, vlIn, vpAg, piTt
 STORE "*" TO pmEs, paNo
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-1 .OR. SUBSTR(f9702per, 1, 4)<>paNo .OR.  ;
         SUBSTR(f9702per, 5, 2)<>pmEs
           IF vpAg=0 .OR. vlIn>mpAg-1
                DO caB_1320b WITH "1"
           ELSE
                DO caB_1320b WITH "2"
           ENDIF
           STORE SUBSTR(f9702per, 1, 4) TO paNo
           STORE SUBSTR(f9702per, 5, 2) TO pmEs
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF f9702est<>"2"
           STORE pbAs+f9702bas TO pbAs
           STORE piGv+f9702igv TO piGv
           STORE ptOt+f9702tot TO ptOt
      ENDIF
      STORE piTt+1 TO piTt
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN+04.4 Say pITT                         Font "&mLetAri",7 Style "NT" Size 1,07 Pict "9,999"
           @vLIN,mCLN+06.4 Say F9702FEM                     Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+17.3 Say F9702FVE                     Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+28.6 Say F9702TCP                     Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+32.4 Say F9702SCP                     Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+38.3 Say F9702NCP                     Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+47.7 Say F9702TDI                     Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+50.8 Say F9702RUC                     Font "&mLetAri",7 Style "NT"
           IF f9702est="2"
                @vLIN,mCLN+64.3 Say "* * * A N U L A D O * * *" Font "&mLetAri",7 Style "NT"
           ELSE
                @vLIN,mCLN+64.3 Say F9702NOM                    Font "&mLetAri",7 Style "NT" Size 1,40 Pict "@S43"
           ENDIF
           @vLIN,mCLN+125.5 Say F9702BAS                    Font "&mLetAri",7 Style "NT" Size 1,15 Pict "99999,999.99"
           @vLIN,mCLN+138.5 Say F9702IGV                    Font "&mLetAri",7 Style "NT" Size 1,15 Pict "99999,999.99"
           @vLIN,mCLN+151.5 Say F9702TOT                    Font "&mLetAri",7 Style "NT" Size 1,15 Pict "99999,999.99"
           @vLIN,mCLN+158.9 Say F9702TCA                    Font "&mLetAri",7 Style "NT" Size 1,07 Pict "9.999"
           @vLIN,mCLN+161.3 Say F9702FE2                    Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+172.3 Say F9702TC2                    Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+176.3 Say F9702SR2                    Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+182.3 Say F9702DO2                    Font "&mLetAri",7 Style "NT"
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.1 TO vlIn
      SKIP
 ENDDO
 DO fiN_1320b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, pmEs, paNo, pbAs, piGv, ptOt, piTt, pfEc
ENDPROC
*
PROCEDURE Fin_1320b
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+100   Say "Total General S/." Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+125.5 Say pBAS                Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
      @vLIN,mCLN+138.5 Say pIGV                Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
      @vLIN,mCLN+151.5 Say pTOT                Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
 ENDIF
ENDPROC
*
PROCEDURE Cab_1320b
 PARAMETER ptPo
 DO CASE
      CASE ptPo="2"
           DO fiN_1320b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 0 TO pbAs, piGv, ptOt, vlIn, vpAg
      CASE vpAg<>0
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN+100   Say "Van S/." Font "&mLetAri",7 Style "BT"
                @vLIN,mCLN+125.5 Say pBAS      Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
                @vLIN,mCLN+138.5 Say pIGV      Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
                @vLIN,mCLN+151.5 Say pTOT      Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
           ENDIF
 ENDCASE
 DO CASE
      CASE SUBSTR(f9702per, 5, 2)="01"
           STORE "Enero de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="02"
           STORE "Febrero de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="03"
           STORE "Marzo de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="04"
           STORE "Abril de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="05"
           STORE "Mayo de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="06"
           STORE "Junio de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="07"
           STORE "Julio de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="08"
           STORE "Agosto de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="09"
           STORE "Setiembre de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="10"
           STORE "Octubre de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="11"
           STORE "Noviembre de "+SUBSTR(f9702per, 1, 4) TO pfEc
      CASE SUBSTR(f9702per, 5, 2)="12"
           STORE "Diciembre de "+SUBSTR(f9702per, 1, 4) TO pfEc
 ENDCASE
 DO taM_0000a WITH ptAm, "1"
 STORE vpAg+1 TO vpAg
 STORE 00 TO vlIn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO coL_prt
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,00 Say " " Font "&mLetRom",12 Style "NQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Formato 14.1: Registro de Ventas e Ingresos" Font "&mLetRom",14 Style "BQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN     Say "Período:"         Font "&mLetRom",12 Style "BT"
      @vLIN,mCLN+21  Say pFEC               Font "&mLetRom",12 Style "NT"
      @vLIN,mCLN+173 Say "Página:"          Font "&mLetRom",11 Style "BT"
      @vLIN,mCLN+188 Say vPAG Pict "999999" Font "&mLetRom",11 Style "NT" Size 1,7
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "RUC:" Font "&mLetRom",12 Style "BT"
      @vLIN,mCLN+21 Say mRUC   Font "&mLetRom",11 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Razón Social:" Font "&mLetRom",12 Style "BT"
      @vLIN,mCLN+21 Say mRAZ            Font "&mLetRom",11 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
 ENDIF
 STORE vlIn+1.2 TO vlIn
 DO ln1_1320b
 STORE vlIn+0.3 TO vlIn
 DO ln1_1320b
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+001.1 Say "No."                                                    Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+007.0 Say "Fecha de"                                               Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+017.8 Say "Fecha de"                                               Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+028.3 Say "Comprobante-Pago"                                       Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+047.8 Say "Información del Cliente"                                Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+118.3 Say "Base"                                                   Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+161.3 Say "Documento original que modif."                          Font "&mLetAri",7 Style "BT"
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO ln2_1320b
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+000.9 Say "Corr"                             Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+007.5 Say "Emisión"                          Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+018.1 Say "Vencimi"                          Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+028.6 Say "Ti"                               Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+032.7 Say "Ser"                              Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+038.6 Say "Número"                           Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+047.6 Say "Ti"                               Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+053.3 Say "Número"                           Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+064.3 Say "Apellidos y Nombres/Razón Social" Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+116.8 Say "Imponible"                        Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+132.8 Say "IGV"                              Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+143.8 Say "Total S/."                        Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+156.1 Say "T/C"                              Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+161.8 Say "Fecha"                            Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+172.6 Say "Ti"                               Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+176.8 Say "Ser"                              Font "&mLetAri",7 Style "BT"
      @vLIN,mCLN+182.5 Say "Número"                           Font "&mLetAri",7 Style "BT"
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO ln2_1320b
 DO coL_pr1
 IF vpAg<>1
      STORE vlIn+1.2 TO vlIn
      IF vpAg>1 .AND. vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN+100   Say "Vienen S/." Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+125.5 Say pBAS         Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
           @vLIN,mCLN+138.5 Say pIGV         Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
           @vLIN,mCLN+151.5 Say pTOT         Font "&mLetAri",7 Style "BT" Size 1,15 Pict "99999,999.99"
      ENDIF
 ENDIF
 STORE vlIn+1.2 TO vlIn
ENDPROC
*
PROCEDURE Ln1_1320b
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN-000.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+005.6 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+016.5 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+027.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+046.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+114.7 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+128.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+140.8 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+154.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+160.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+190.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
 ENDIF
ENDPROC
*
PROCEDURE Ln2_1320b
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN-000.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+005.6 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+016.5 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+027.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+031.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+037.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+046.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+049.7 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+063.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+114.7 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+128.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+140.8 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+154.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+160.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+171.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+175.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+181.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+190.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
 ENDIF
ENDPROC
*
PROCEDURE Xls_1320b
 PRIVATE pmEs, ptDo, psEr, pdOc, pcOs, ptCo
 DO CASE
      CASE SUBSTR(DTOC(dfEm), 4, 2)="01"
           STORE "Enero" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="02"
           STORE "Febrero" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="03"
           STORE "Marzo" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="04"
           STORE "Abril" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="05"
           STORE "Mayo" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="06"
           STORE "Junio" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="07"
           STORE "Julio" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="08"
           STORE "Agosto" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="09"
           STORE "Setiembre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="10"
           STORE "Octubre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="11"
           STORE "Noviembre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="12"
           STORE "Diciembre" TO pmEs
 ENDCASE
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Formato 14.1: Registro de Ventas e Ingresos", "Ventas", 22
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO xl2_0000a WITH 22
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(6,23)).inSert
 pxLs.ceLls(3, 01).vaLue = "Período:"
 pxLs.ceLls(3, 04).vaLue = pmEs+" del "+SUBSTR(DTOC(dfEm), 7, 4)
 pxLs.ceLls(4, 01).vaLue = "RUC:"
 pxLs.ceLls(4, 04).vaLue = mrUc
 pxLs.ceLls(5, 01).vaLue = "Apellidos y Nombres o Razón Social:"
 pxLs.ceLls(5, 04).vaLue = mrAz
 pxLs.raNge(pxLs.ceLls(3,4), pxLs.ceLls(3,8)).meRge
 pxLs.raNge(pxLs.ceLls(4,4), pxLs.ceLls(4,8)).meRge
 pxLs.raNge(pxLs.ceLls(5,4), pxLs.ceLls(5,8)).meRge
 pxLs.ceLls(7, 01).vaLue = "#correlativo o"
 pxLs.ceLls(8, 01).vaLue = "Registro Único"
 pxLs.ceLls(7, 02).vaLue = "Fecha de"
 pxLs.ceLls(8, 02).vaLue = "Emisión"
 pxLs.ceLls(7, 03).vaLue = "Vencimiento"
 pxLs.ceLls(8, 03).vaLue = "o Cancelación"
 pxLs.ceLls(7, 04).vaLue = "Comprobante de Pago"
 pxLs.ceLls(8, 04).vaLue = "Tipo"
 pxLs.ceLls(8, 05).vaLue = "Serie"
 pxLs.ceLls(8, 06).vaLue = "Número"
 pxLs.ceLls(7, 07).vaLue = "Documento de Identidad"
 pxLs.ceLls(8, 07).vaLue = "Tipo"
 pxLs.ceLls(8, 08).vaLue = "Número"
 pxLs.ceLls(7, 09).vaLue = "Apellidos/Nombres o"
 pxLs.ceLls(8, 09).vaLue = "Razón Social"
 pxLs.ceLls(7, 10).vaLue = "Valor Facturado"
 pxLs.ceLls(8, 10).vaLue = "Exportación"
 pxLs.ceLls(7, 11).vaLue = "Base Imponible"
 pxLs.ceLls(8, 11).vaLue = "Operación Gravada"
 pxLs.ceLls(7, 12).vaLue = "Importe Total"
 pxLs.ceLls(8, 12).vaLue = "Operación Exonerada"
 pxLs.ceLls(7, 13).vaLue = "Importe Total"
 pxLs.ceLls(8, 13).vaLue = "Operación Inafecta"
 pxLs.ceLls(8, 14).vaLue = "ISC"
 pxLs.ceLls(7, 15).vaLue = "IGV o"
 pxLs.ceLls(8, 15).vaLue = "Impuesto Municipal"
 pxLs.ceLls(7, 16).vaLue = "Otros Tributos"
 pxLs.ceLls(8, 16).vaLue = "(no pert.a Base Impon)"
 pxLs.ceLls(7, 17).vaLue = "Importe"
 pxLs.ceLls(8, 17).vaLue = "Total"
 pxLs.ceLls(7, 18).vaLue = "Tipo de"
 pxLs.ceLls(8, 18).vaLue = "Cambio"
 pxLs.ceLls(7, 19).vaLue = "Documento que modifica"
 pxLs.ceLls(8, 19).vaLue = "Fecha"
 pxLs.ceLls(8, 20).vaLue = "Tipo"
 pxLs.ceLls(8, 21).vaLue = "Serie"
 pxLs.ceLls(8, 22).vaLue = "Número"
 pxLs.coLumns(18).nuMberformat = "##0.000"
 pxLs.raNge(pxLs.ceLls(7,04), pxLs.ceLls(7,06)).meRge
 pxLs.raNge(pxLs.ceLls(7,07), pxLs.ceLls(7,08)).meRge
 pxLs.raNge(pxLs.ceLls(7,19), pxLs.ceLls(7,22)).meRge
 pxLs.raNge(pxLs.ceLls(7,14), pxLs.ceLls(8,14)).meRge
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(09)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(19), pxLs.coLumns(22)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(10), pxLs.coLumns(17)).nuMberformat = "###,###,##0.00"
 pxLs.coLumns(01).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(08)).hoRizontalalignment = 3
 pxLs.raNge(pxLs.coLumns(19), pxLs.coLumns(22)).hoRizontalalignment = 3
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(5,8)).hoRizontalalignment = 2
 pxLs.coLumns(01).coLumnwidth = 14.29
 pxLs.coLumns(02).coLumnwidth = 9.71
 pxLs.coLumns(03).coLumnwidth = 13.14
 pxLs.coLumns(04).coLumnwidth = 4.43
 pxLs.coLumns(05).coLumnwidth = 5.57
 pxLs.coLumns(06).coLumnwidth = 9.29
 pxLs.coLumns(07).coLumnwidth = 7.71
 pxLs.coLumns(08).coLumnwidth = 14.71
 pxLs.coLumns(09).coLumnwidth = 57
 pxLs.coLumns(18).coLumnwidth = 8.71
 pxLs.coLumns(19).coLumnwidth = 10
 pxLs.coLumns(20).coLumnwidth = 4
 pxLs.coLumns(21).coLumnwidth = 4.71
 pxLs.coLumns(22).coLumnwidth = 7.14
 pxLs.raNge(pxLs.coLumns(10), pxLs.coLumns(17)).coLumnwidth = 20.86
 SELECT teMporal
 GOTO TOP
 STORE 9 TO viT1
 STORE 1 TO meN1
 STORE 0 TO ptCo
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(viT1, 01).seLect
      pxLs.ceLls(viT1, 01).vaLue = ALLTRIM(f9702reg)
      pxLs.ceLls(viT1, 02).vaLue = ALLTRIM(f9702fem)
      pxLs.ceLls(viT1, 03).vaLue = ALLTRIM(f9702fve)
      pxLs.ceLls(viT1, 04).vaLue = ALLTRIM(f9702tcp)
      pxLs.ceLls(viT1, 05).vaLue = ALLTRIM(f9702scp)
      pxLs.ceLls(viT1, 06).vaLue = ALLTRIM(f9702ncp)
      pxLs.ceLls(viT1, 07).vaLue = ALLTRIM(f9702tdi)
      pxLs.ceLls(viT1, 08).vaLue = ALLTRIM(f9702ruc)
      pxLs.ceLls(viT1, 09).vaLue = f9702nom
      pxLs.ceLls(viT1, 10).vaLue = f9702bae
      pxLs.ceLls(viT1, 11).vaLue = f9702bas
      pxLs.ceLls(viT1, 12).vaLue = f9702exo
      pxLs.ceLls(viT1, 13).vaLue = f9702ina
      pxLs.ceLls(viT1, 14).vaLue = f9702isc
      pxLs.ceLls(viT1, 15).vaLue = f9702igv
      pxLs.ceLls(viT1, 16).vaLue = f9702otr
      pxLs.ceLls(viT1, 17).vaLue = f9702tot
      pxLs.ceLls(viT1, 18).vaLue = f9702tca
      pxLs.ceLls(viT1, 19).vaLue = ALLTRIM(f9702fe2)
      pxLs.ceLls(viT1, 20).vaLue = ALLTRIM(f9702tc2)
      pxLs.ceLls(viT1, 21).vaLue = ALLTRIM(f9702sr2)
      pxLs.ceLls(viT1, 22).vaLue = ALLTRIM(f9702do2)
      STORE viT1+1 TO viT1
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SELECT teMporal
      SKIP
 ENDDO
 IF meN1<meNn
      WITH pxLs.raNge(pxLs.ceLls(viT1,10),pxLs.ceLls(viT1,17))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
           .hoRizontalalignment = 4
      ENDWITH
      pxLs.ceLls(viT1, 10).vaLue = tbAe
      pxLs.ceLls(viT1, 11).vaLue = tbAs
      pxLs.ceLls(viT1, 12).vaLue = teXo
      pxLs.ceLls(viT1, 13).vaLue = tiNa
      pxLs.ceLls(viT1, 14).vaLue = tiSc
      pxLs.ceLls(viT1, 15).vaLue = tiGv
      pxLs.ceLls(viT1, 16).vaLue = toTr
      pxLs.ceLls(viT1, 17).vaLue = ttOt
 ENDIF
 DO xl1_0000a WITH 2
 WAIT CLEAR
 SELECT teMporal
 DO seE_1320b WITH "v"
 RELEASE pmEs, ptDo, psEr, pdOc, pcOs, ptCo
ENDPROC
*
PROCEDURE Rev_1320b
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "L E Y E N D O ... "+ALLTRIM(f9702tcp)+":"+ ;
           ALLTRIM(f9702scp)+"-"+ALLTRIM(f9702ncp)
      DO CASE
           CASE f9702tdi="1" .AND. LEN(ALLTRIM(f9702ruc))<>8 .AND.  ;
                LEN(ALLTRIM(f9702ruc))>0
                REPLACE seP1 WITH "*"
                REPLACE f9702cm1 WITH "DNI diferente de 8"
           CASE f9702tdi="6" .AND. LEN(ALLTRIM(f9702ruc))<>11
                REPLACE seP1 WITH "*"
                REPLACE f9702cm1 WITH "RUC diferente de 11"
           CASE SUBSTR(f9702cm1, 4, 1)<>" " .AND. SUBSTR(f9702cm1, 4, 1)<>"-"
                REPLACE seP1 WITH "&"
                REPLACE f9702cm1 WITH "GR mal"
           CASE SUBSTR(f9702cm1, 1, 3)<>"   " .AND. (SUBSTR(f9702cm1, 1,  ;
                3)<"001" .OR. SUBSTR(f9702cm1, 1, 3)>"999")
                REPLACE seP1 WITH "&"
                REPLACE f9702cm1 WITH "GR mal"
           CASE SUBSTR(f9702cm1, 5, 7)<>"       " .AND. (SUBSTR(f9702cm1,  ;
                5, 7)<"0000001" .OR. SUBSTR(f9702cm1, 5, 7)>"9999999")
                REPLACE seP1 WITH "&"
                REPLACE f9702cm1 WITH "GR mal"
           OTHERWISE
                PRIVATE pnOm, pfIn, piTe, plEt
                STORE ALLTRIM(f9702nom) TO pnOm
                STORE LEN(pnOm) TO pfIn
                STORE 1 TO piTe
                DO WHILE .T.
                     IF piTe>pfIn
                          EXIT
                     ENDIF
                     STORE SUBSTR(pnOm, piTe, 1) TO plEt
                     DO CASE
                          CASE plEt="!" .OR. plEt='"' .OR. plEt="´"
                          CASE plEt="&" .OR. plEt="?" .OR. plEt="'"
                          CASE plEt="+" .OR. plEt="@"
                          CASE plEt="-" .OR. plEt=","
                          CASE plEt="." .OR. plEt=" "
                          CASE plEt="ñ" .OR. plEt="Ñ"
                          CASE plEt="/"
                          CASE plEt>="0" .AND. plEt<="9"
                          CASE plEt>="a" .AND. plEt<="z"
                          CASE plEt>="A" .AND. plEt<="Z"
                          OTHERWISE
                               REPLACE f9702cm1 WITH "Error en Nombre"
                               REPLACE seP1 WITH "@"
                     ENDCASE
                     STORE piTe+1 TO piTe
                ENDDO
                RELEASE pnOm, pfIn, piTe, plEt
      ENDCASE
      IF LEN(ALLTRIM(f9702ruc))<>0 .AND. f9702tdi="6"
           PUBLIC prR1
           STORE f9702ruc TO prR1
           STORE 99 TO mkEy
           DO veR_ruc IN FAC0000A WITH "2", prR1
           IF mkEy=1733
                SELECT teMporal
                REPLACE seP1 WITH "R"
           ENDIF
           RELEASE prR1
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 SELECT teMporal
 SET FILTER TO seP1<>"|"
 GOTO TOP
 IF BOF() .OR. EOF()
      SET FILTER TO
      REPLACE seP1 WITH "|" ALL
      REPLACE f9702cm1 WITH " " ALL
      GOTO TOP
      WAIT WINDOW NOWAIT "NO HAY ERRORES ..."+CHR(13)+ ;
           "Presionar TECLA para SALIR..."
 ELSE
      STORE 2 TO vsW0
      DO paN_1320b
      STORE 1 TO vsW0
      STORE ifIl TO vfIl
      DO muE_1320b WITH "i", "v"
      SET FILTER TO
      REPLACE seP1 WITH "|" ALL
      REPLACE f9702cm1 WITH " " ALL
      WAIT WINDOW NOWAIT "HAY ERRORES ..."+CHR(13)+ ;
           "Presionar TECLA para SALIR..."
 ENDIF
 STORE CTOD("  /  /    ") TO cdFe, chFe
 = INKEY(0)
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, piN1, piN2, piN9
 STORE 01 TO miPg
 STORE 99999 TO muPg
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+09.7,pCOL+10 Say "Desde Página:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+11.4,pCOL+10 Say "Hasta Página:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NQ"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NQ" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.2,pCOL+15 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+5, pcOl+13 TO pfIl+8.7, pcOl+45 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+15 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+5,pCOL+15 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+09.8,pCOL+33 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.5,pCOL+33 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+18.4,pCOL+06 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                DO CASE
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=01
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          STORE 0 TO mvIs
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE 0 TO mvIs
                STORE k_Esc TO mkEy
                EXIT
           CASE poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 DO coLbln
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, poPc, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Clp_1320b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.4
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1320b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1320b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_1320b WITH "F", "v"
           DO diS_1320b WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1320b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+01, 01 SAY  ;
   "Boletas, Notas de Crédito y Notas de Débito, incluyendo las anuladas, en"
 @ pfIl+02, 01 SAY "el rango de fechas seleccionadas."
 @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 24 SAY ":" STYLE "BT"
 @ pfIl+07, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+12, 24 SAY ":" STYLE "BT"
 @ pfIl+13, 24 SAY ":" STYLE "BT"
 @ pfIl+14, 24 SAY ":" STYLE "BT"
 @ pfIl+15, 24 SAY ":" STYLE "BT"
 @ pfIl+16, 24 SAY ":" STYLE "BT"
 @ pfIl+17, 24 SAY ":" STYLE "BT"
 @ pfIl+18, 24 SAY ":" STYLE "BT"
 @ pfIl+06, 06 SAY "ESC" STYLE "BT"
 @ pfIl+07, 06 SAY "F10" STYLE "BT"
 @ pfIl+08, 06 SAY "F1" STYLE "BT"
 @ pfIl+09, 06 SAY "F8" STYLE "BT"
 @ pfIl+10, 06 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 06 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+12, 06 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+13, 06 SAY "PAGE UP" STYLE "BT"
 @ pfIl+14, 06 SAY "HOME" STYLE "BT"
 @ pfIl+15, 06 SAY "END" STYLE "BT"
 @ pfIl+16, 06 SAY "CTRL P" STYLE "BT"
 @ pfIl+17, 06 SAY "CTRL O" STYLE "BT"
 @ pfIl+18, 06 SAY "ALT Z" STYLE "BT"
 @ pfIl+06, 28 SAY "Regresar a Cabecera"
 @ pfIl+07, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 28 SAY "Ayuda del Programa"
 @ pfIl+09, 28 SAY "Pasar Datos a Excel"
 @ pfIl+10, 28 SAY "Línea inferior"
 @ pfIl+11, 28 SAY "Línea superior"
 @ pfIl+12, 28 SAY "Página siguiente"
 @ pfIl+13, 28 SAY "Página anterior"
 @ pfIl+14, 28 SAY "Primera línea"
 @ pfIl+15, 28 SAY "Última línea"
 @ pfIl+16, 28 SAY "Imprimir Registro de Ventas"
 @ pfIl+17, 28 SAY "Crear Libro Electrónico para el PLE"
 @ pfIl+18, 28 SAY "Crear resumen de Contingencia: Errores:"
 @ pfIl+19, 28 SAY "RUC, Razón Social y Guías de Remisión"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
