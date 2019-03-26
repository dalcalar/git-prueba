 = INKEY(0.01)
 STORE 1 TO vsW1
 DO p00_2420b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_2420b
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_2420b WITH "i", "v"
 DO seE_2420b WITH "v"
 DO diS_2420b WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2420b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2420b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2420b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Right
                DO CASE
                     CASE vsW1=4
                          STORE 1 TO vsW1
                     OTHERWISE
                          STORE vsW1+1 TO vsW1
                ENDCASE
                DO boT_2420b
                DO tiT_2420b
                STORE vfIl TO cfIl
                DO seE_2420b WITH "i"
                DO paN_2420b
                STORE cfIl TO vfIl
                DO seE_2420b WITH "v"
                DO diS_2420b WITH "R"
           CASE mkEy=k_Left
                DO CASE
                     CASE vsW1=1
                          STORE 4 TO vsW1
                     OTHERWISE
                          STORE vsW1-1 TO vsW1
                ENDCASE
                DO boT_2420b
                DO tiT_2420b
                STORE vfIl TO cfIl
                DO seE_2420b WITH "i"
                DO paN_2420b
                STORE cfIl TO vfIl
                DO seE_2420b WITH "v"
                DO diS_2420b WITH "R"
           CASE mkEy=k_F12
                DO reS_2420b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_o
                IF  .NOT. DIRECTORY("PLE")
                     MD PLE
                ENDIF
                STORE "PLE\LE"+mrUc+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                      SUBSTR(DTOC(dfEm), 4, 2)+"00080100001111.TXT" TO vpLe
                DO prE_docum WITH  ;
                   "¿Está seguro de crear los datos para el PLE? "+vpLe
                IF moPc$"Ss"
                     WAIT WINDOW NOWAIT  ;
                          "L E Y E N D O ... Presionar ESC para Salir"+ ;
                          CHR(13)+"Hora Inicial de Lectura: "+TIME()
                     mkEy = INKEY(0.05)
                     SELECT teMporal
                     SET FILTER TO
                     PRIVATE xcTd, xpAn_00
                     SET ORDER TO
                     COUNT TO xcTd
                     DO coLbln
                     SAVE SCREEN TO xpAn_00
                     @10,50 Say "Total Items del Ple:"+Str(xCTD,12,0) Font "&mLetAri",9 Style "NQ" Size 1,40
                     @12,50 Say "Presionar Tecla para continuar"      Font "&mLetAri",9 Style "NQ" Size 1,40
                     mkEy = INKEY(0)
                     RESTORE SCREEN FROM xpAn_00
                     RELEASE xcTd, xpAn_00
                     SET ORDER TO F9701DOC
                     GOTO TOP
                     Copy to &vPLE SDF
                     = INKEY(0.05)
                     SELECT teMporal
                     STORE "PLE\LE"+mrUc+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                           SUBSTR(DTOC(dfEm), 4, 2)+"00080200001011.TXT"  ;
                           TO vpLe
                     SET FILTER TO f9701tcp="@@"
                     Copy to &vPLE SDF
                     SET FILTER TO
                     WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
                     = INKEY(0.05)
                     WAIT CLEAR
                     SELECT teMporal
                     SET ORDER TO F9701FEM
                     GOTO TOP
                     DO seE_2420b WITH "v"
                ENDIF
           CASE mkEy=k_Alt_s
                SELECT 13
                STORE "CONCAR\CTCOMC.DBF" TO mdBf
                Use &mDBF Exclusive Alias Tmp_Con1
                SELECT 14
                STORE "CONCAR\CTCOMD.DBF" TO mdBf
                Use &mDBF Exclusive Alias Tmp_Con2
                SELECT tmP_con1
                ZAP
                SELECT tmP_con2
                ZAP
                SELECT teMporal
                GOTO TOP
                STORE 0 TO xiTe
                DO WHILE  .NOT. EOF()
                     STORE 1 TO xmOn
                     STORE f9701tcp TO xtCp
                     STORE f9701scp TO xsCp
                     STORE f9701ncp TO xnCp
                     STORE f9701fem TO xfEm, xfRe
                     STORE f9701fe2 TO xfE2
                     STORE f9701tca TO xtCa
                     STORE f9701tcp TO xtCp
                     STORE f9701ruc TO xrUc
                     STORE f9701nom TO xnOm
                     STORE f9701bas TO xbAs
                     STORE f9701igv TO xiGv
                     STORE f9701tot TO xtOt
                     STORE "01" TO xcCo
                     STORE "05" TO xsUb
                     STORE xiTe+1 TO xiTe
                     IF SUBSTR(xfEm, 7, 4)+SUBSTR(xfEm, 4, 2)<> ;
                        SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)
                          STORE "01/"+SUBSTR(DTOC(dfEm), 4, 2)+"/"+ ;
                                SUBSTR(DTOC(dfEm), 7, 4) TO xfRe
                     ENDIF
                     DO CASE
                          CASE xmOn=1
                               STORE "MN" TO xsIg
                          CASE xmOn=2
                               STORE "US" TO xsIg
                     ENDCASE
                     DO CASE
                          CASE xtCp="01"
                               STORE "FT" TO xtDo
                          CASE xtCp="03"
                               STORE "BV" TO xtDo
                          CASE xtCp="07"
                               STORE "NC" TO xtDo
                          CASE xtCp="08"
                               STORE "ND" TO xtDo
                          CASE xtCp="12"
                               STORE "TK" TO xtDo
                     ENDCASE
                     IF ALLTRIM(SUBSTR(xnOm, 1, 7))="ANULADO" .OR.  ;
                        ALLTRIM(SUBSTR(xnOm, 1, 4))="BAJA"
                          STORE 0 TO xbAs
                          STORE 0 TO xiGv
                          STORE 0 TO xtOt
                          STORE "0000" TO xaNe
                     ELSE
                          IF LEN(ALLTRIM(xrUc))=0
                               STORE "0001" TO xaNe
                          ELSE
                               STORE xrUc TO xaNe
                          ENDIF
                     ENDIF
                     SELECT tmP_con1
                     APPEND BLANK
                     REPLACE csUbdia WITH xsUb
                     REPLACE ccOmpro WITH "01"+STRTRAN(STR(xiTe, 4, 0),  ;
                             " ", "0")
                     REPLACE cfEccom WITH SUBSTR(xfRe, 9, 2)+SUBSTR(xfRe,  ;
                             4, 2)+SUBSTR(xfRe, 1, 2)
                     REPLACE ccOdmon WITH xsIg
                     REPLACE csItua WITH "V"
                     REPLACE ctIpo WITH "V"
                     REPLACE ctIpcam WITH xtCa
                     REPLACE cgLosa WITH ALLTRIM(SUBSTR(xnOm, 1, 15))+","+ ;
                             xtCp+":"+SUBSTR(xsCp, 1, 4)+"-"+xnCp
                     REPLACE ctOtal WITH xtOt
                     REPLACE cfLag WITH "S"
                     REPLACE cfEccam WITH xfEm
                     REPLACE cdAte WITH DATE()
                     REPLACE chOra WITH SUBSTR(TIME(), 1, 5)
                     REPLACE cuSer WITH "SAM"
                     REPLACE cfEccom2 WITH CTOD("  /  /    ")
                     REPLACE cfEccam2 WITH CTOD("  /  /    ")
                     SELECT tmP_con2
                     DO CASE
                          CASE xmOn=1
                               STORE xtOt TO xsOl
                               STORE xtOt/xtCa TO xuSd
                          CASE xmOn=2
                               STORE xtOt TO xuSd
                               STORE xtOt*xtCa TO xsOl
                     ENDCASE
                     APPEND BLANK
                     REPLACE dsUbdia WITH xsUb
                     REPLACE dcOmpro WITH "01"+STRTRAN(STR(xiTe, 4, 0),  ;
                             " ", "0")
                     REPLACE dsEcue WITH "0001"
                     REPLACE dfEccom WITH SUBSTR(xfRe, 9, 2)+SUBSTR(xfRe,  ;
                             4, 2)+SUBSTR(xfRe, 1, 2)
                     REPLACE dcUenta WITH vdEb
                     REPLACE dcOdane WITH xaNe
                     REPLACE dcEncos WITH " "
                     REPLACE dcOdmon WITH xsIg
                     REPLACE ddH WITH "D"
                     REPLACE diMport WITH xtOt
                     REPLACE dtIpdoc WITH xtDo
                     REPLACE dnUmdoc WITH SUBSTR(xsCp, 1, 4)+"-"+xnCp
                     REPLACE dfEcdoc WITH SUBSTR(xfEm, 9, 2)+SUBSTR(xfEm,  ;
                             4, 2)+SUBSTR(xfEm, 1, 2)
                     REPLACE dfEcven WITH SUBSTR(xfEm, 9, 2)+SUBSTR(xfEm,  ;
                             4, 2)+SUBSTR(xfEm, 1, 2)
                     REPLACE daRea WITH " "
                     REPLACE dfLag WITH "S"
                     REPLACE ddAte WITH CTOD("  /  /    ")
                     REPLACE dxGlosa WITH "REF: "+xtCp+":"+SUBSTR(xsCp, 1,  ;
                             4)+"-"+xnCp
                     REPLACE duSimpor WITH xuSd
                     REPLACE dmNimpor WITH xsOl
                     REPLACE dvAnexo WITH " "
                     DO CASE
                          CASE xmOn=1
                               STORE xiGv TO xsOl
                               STORE xiGv/xtCa TO xuSd
                          CASE xmOn=2
                               STORE xiGv TO xuSd
                               STORE xiGv*xtCa TO xsOl
                     ENDCASE
                     APPEND BLANK
                     REPLACE dsUbdia WITH xsUb
                     REPLACE dcOmpro WITH "01"+STRTRAN(STR(xiTe, 4, 0),  ;
                             " ", "0")
                     REPLACE dsEcue WITH "0002"
                     REPLACE dfEccom WITH SUBSTR(xfRe, 9, 2)+SUBSTR(xfRe,  ;
                             4, 2)+SUBSTR(xfRe, 1, 2)
                     REPLACE dcUenta WITH vhAb
                     REPLACE dcOdane WITH " "
                     REPLACE dcEncos WITH " "
                     REPLACE dcOdmon WITH xsIg
                     REPLACE ddH WITH "H"
                     REPLACE diMport WITH xiGv
                     REPLACE dtIpdoc WITH xtDo
                     REPLACE dnUmdoc WITH SUBSTR(xsCp, 1, 4)+"-"+xnCp
                     REPLACE dfEcdoc WITH SUBSTR(xfEm, 9, 2)+SUBSTR(xfEm,  ;
                             4, 2)+SUBSTR(xfEm, 1, 2)
                     REPLACE dfEcven WITH SUBSTR(xfEm, 9, 2)+SUBSTR(xfEm,  ;
                             4, 2)+SUBSTR(xfEm, 1, 2)
                     REPLACE daRea WITH " "
                     REPLACE dfLag WITH "S"
                     REPLACE ddAte WITH CTOD("  /  /    ")
                     REPLACE dxGlosa WITH "REF: "+xtCp+":"+SUBSTR(xsCp, 1,  ;
                             4)+"-"+xnCp
                     REPLACE duSimpor WITH xuSd
                     REPLACE dmNimpor WITH xsOl
                     REPLACE dvAnexo WITH " "
                     DO CASE
                          CASE xmOn=1
                               STORE xbAs TO xsOl
                               STORE xbAs/xtCa TO xuSd
                          CASE xmOn=2
                               STORE xbAs TO xuSd
                               STORE xbAs*xtCa TO xsOl
                     ENDCASE
                     APPEND BLANK
                     REPLACE dsUbdia WITH xsUb
                     REPLACE dcOmpro WITH "01"+STRTRAN(STR(xiTe, 4, 0),  ;
                             " ", "0")
                     REPLACE dsEcue WITH "0003"
                     REPLACE dfEccom WITH SUBSTR(xfRe, 9, 2)+SUBSTR(xfRe,  ;
                             4, 2)+SUBSTR(xfRe, 1, 2)
                     REPLACE dcUenta WITH vhA2
                     REPLACE dcOdane WITH " "
                     REPLACE dcEncos WITH xcCo
                     REPLACE dcOdmon WITH xsIg
                     REPLACE ddH WITH "H"
                     REPLACE diMport WITH xbAs
                     REPLACE dtIpdoc WITH xtDo
                     REPLACE dnUmdoc WITH SUBSTR(xsCp, 1, 4)+"-"+xnCp
                     REPLACE dfEcdoc WITH SUBSTR(xfEm, 9, 2)+SUBSTR(xfEm,  ;
                             4, 2)+SUBSTR(xfEm, 1, 2)
                     REPLACE dfEcven WITH " "
                     REPLACE daRea WITH " "
                     REPLACE dfLag WITH "S"
                     REPLACE ddAte WITH CTOD("  /  /    ")
                     REPLACE dxGlosa WITH "REF: "+xtCp+":"+SUBSTR(xsCp, 1,  ;
                             4)+"-"+xnCp
                     REPLACE duSimpor WITH xuSd
                     REPLACE dmNimpor WITH xsOl
                     REPLACE dvAnexo WITH " "
                     SELECT teMporal
                     SKIP
                ENDDO
                SELECT 13
                USE
                SELECT 14
                USE
                STORE "CONCAR\CTCOMC.DBF" TO pdB1
                STORE "CONCAR\REGCPRAS\RC_C"+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                      SUBSTR(DTOC(dfEm), 4, 2)+".DBF" TO pdB2
                Copy File "&pDB1" to "&pDB2"
                STORE "CONCAR\CTCOMD.DBF" TO pdB1
                STORE "CONCAR\REGCPRAS\RC_D"+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                      SUBSTR(DTOC(dfEm), 4, 2)+".DBF" TO pdB2
                Copy File "&pDB1" to "&pDB2"
                SELECT teMporal
                DO seE_2420b WITH "v"
           CASE mkEy=k_F8
                DO xlS_2420b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal
                DO seE_2420b WITH "v"
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2420b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2420b WITH "v"
                STORE 999 TO mkEy
           CASE mkEy=k_Enter
                SELECT tmP_doc
                SET FILTER TO ALLTRIM(ftM2ruc)+"*"+ALLTRIM(ftM2tcp)+"*"+ALLTRIM(ftM2scp)+"*"+ALLTRIM(ftM2ncp)+"*"=ALLTRIM(vrUc)+"*"+ALLTRIM(vtCp)+"*"+ALLTRIM(vsCp)+"*"+ALLTRIM(vnCp)+"*"
                GOTO TOP
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                STORE 99 TO mkEy
                SET FILTER TO
                SELECT teMporal
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(vrUc)+"*"+vtCp+ALLTRIM(vsCp)+"*"+ ;
                          ALLTRIM(vnCp)+"*"=ALLTRIM(f9701ruc)+"*"+ ;
                          f9701tcp+ALLTRIM(f9701scp)+"*"+ ;
                          ALLTRIM(f9701ncp)+"*" .AND. ALLTRIM(vrUc)+"*"+ ;
                          vtCp+ALLTRIM(vsCp)+"*"+ALLTRIM(vnCp)+"*"= ;
                          ALLTRIM(irUc)+"*"+itCp+ALLTRIM(isCp)+"*"+ ;
                          ALLTRIM(inCp)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vrUc)+"*"+vtCp+ALLTRIM(vsCp)+ ;
                                    "*"+ALLTRIM(vnCp)+"*"=ALLTRIM(irUc)+ ;
                                    "*"+itCp+ALLTRIM(isCp)+"*"+ ;
                                    ALLTRIM(inCp)+"*"
                                    DO paN_2420b
                               OTHERWISE
                                    DO seE_2420b WITH "v"
                                    DO diS_2420b WITH "N"
                          ENDCASE
                          DO muE_2420b WITH "i", "v"
                          STORE ifIl TO vfIl
                          DO seE_2420b WITH "v"
                          DO diS_2420b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(vrUc)+"*"+vtCp+ALLTRIM(vsCp)+"*"+ ;
                          ALLTRIM(vnCp)+"*"=ALLTRIM(f9701ruc)+"*"+ ;
                          f9701tcp+ALLTRIM(f9701scp)+"*"+ ;
                          ALLTRIM(f9701ncp)+"*" .AND. ALLTRIM(vrUc)+"*"+ ;
                          vtCp+ALLTRIM(vsCp)+"*"+ALLTRIM(vnCp)+"*"= ;
                          ALLTRIM(urUc)+"*"+utCp+ALLTRIM(usCp)+"*"+ ;
                          ALLTRIM(unCp)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vrUc)+"*"+vtCp+ALLTRIM(vsCp)+ ;
                                    "*"+ALLTRIM(vnCp)+"*"=ALLTRIM(urUc)+ ;
                                    "*"+utCp+ALLTRIM(usCp)+"*"+ ;
                                    ALLTRIM(unCp)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2420b
                               OTHERWISE
                                    DO seE_2420b WITH "v"
                                    DO diS_2420b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2420b WITH "u", "v"
                          DO seE_2420b WITH "v"
                          DO diS_2420b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2420b WITH "v"
                          DO diS_2420b WITH "N"
                          SKIP
                          IF ALLTRIM(vrUc)+"*"+vtCp+ALLTRIM(vsCp)+"*"+ ;
                             ALLTRIM(vnCp)+"*"=ALLTRIM(urUc)+"*"+utCp+ ;
                             ALLTRIM(usCp)+"*"+ALLTRIM(unCp)+"*"
                               DO coLsc7
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo-1, 1
                               DO liN_2420b WITH ifIl, ffIl+1
                               DO li1_2420b WITH ffIl, ffIl+1
                               DO muE_2420b WITH "F", "v"
                               DO muE_2420b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2420b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2420b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2420b WITH "v"
                          DO diS_2420b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2420b WITH "v"
                          DO diS_2420b WITH "N"
                          SKIP -1
                          IF ALLTRIM(vrUc)+"*"+vtCp+ALLTRIM(vsCp)+"*"+ ;
                             ALLTRIM(vnCp)+"*"=ALLTRIM(irUc)+"*"+itCp+ ;
                             ALLTRIM(isCp)+"*"+ALLTRIM(inCp)+"*"
                               DO coLsc7
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo-1, 1
                               DO liN_2420b WITH ifIl, ffIl+1
                               DO li1_2420b WITH ffIl, ffIl+1
                               DO muE_2420b WITH "F", "i"
                               DO muE_2420b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2420b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2420b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2420b WITH "v"
                          DO diS_2420b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2420b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2420b
                          STORE ifIl TO vfIl
                          DO muE_2420b WITH "i", "v"
                          DO seE_2420b WITH "v"
                          DO diS_2420b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2420b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2420b
                          STORE ifIl TO vfIl
                          DO muE_2420b WITH "i", "v"
                          DO seE_2420b WITH "v"
                          DO diS_2420b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2420b WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2420b
 STORE ifIl TO vfIl, ufIl
 DO muE_2420b WITH "F", "i"
 DO muE_2420b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_2420b WITH "N"
      DO muE_2420b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc7
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_2420b WITH ufIl+1, ffIl+1
      DO li1_2420b WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2420b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. f9701tcp="07"
           DO coL_fonro
      CASE ptIp="R" .AND. f9701tcp="07"
           DO coLblr
      CASE ptIp="N" .AND. f9701tcp="08"
           DO coL_fonaz
      CASE ptIp="R" .AND. f9701tcp="08"
           DO coLblz
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+00.0 Say F9701TCP Font "&mLetAri",9 Style "NQ" Size 1,03.3 Pict "@S02"
 @vFIL,mCO0+04.0 Say F9701SCP Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "@S04"
 @vFIL,mCO0+10.8 Say F9701NCP Font "&mLetAri",9 Style "NQ" Size 1,24.8 Pict "@S20"
 DO CASE
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+36.1 Say F9701FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+49.3 Say F9701FVE Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+62.5 Say F9701RUC Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "@S11"
 DO CASE
      CASE mrEs="3"
           @vFIL,mCO0+79.1 Say F9701NOM Font "&mLetAri",9 Style "NQ" Size 1,052.2 Pict "@S38"
      OTHERWISE
           @vFIL,mCO0+79.1 Say F9701NOM Font "&mLetAri",9 Style "NQ" Size 1,071.0 Pict "@S72"
 ENDCASE
 @vFIL,vCL2 Say F9701TCA Font "&mLetAri",9 Style "NQ" Size 1,07.5 Pict "999.999"
 DO CASE
      CASE mrEs="3" .AND. vsW1=1
           @vFIL,vCL2+08.2 Say F9701BA1 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.3 Say F9701IG1 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.5 Say F9701TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW1=2
           @vFIL,vCL2+08.2 Say F9701BA2 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.3 Say F9701IG2 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.5 Say F9701TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW1=3
           @vFIL,vCL2+08.2 Say F9701BA3 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.3 Say F9701IG3 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.5 Say F9701TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW1=4
           @vFIL,vCL2+08.2 Say F9701VAN Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.3 Say F9701OTR Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.5 Say F9701ISC Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      CASE vsW1=1
           @vFIL,vCL2+08.2 Say F9701BA1 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.4 Say F9701IG1 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.6 Say F9701TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      CASE vsW1=2
           @vFIL,vCL2+08.2 Say F9701BA2 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.4 Say F9701IG2 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.6 Say F9701TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      CASE vsW1=3
           @vFIL,vCL2+08.2 Say F9701BA3 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.4 Say F9701IG3 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.6 Say F9701TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      CASE vsW1=4
           @vFIL,vCL2+08.2 Say F9701VAN Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+28.4 Say F9701OTR Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,vCL2+48.6 Say F9701ISC Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,vCL1        Say F9701TC2 Font "&mLetAri",9 Style "NQ" Size 1,03.3 Pict "@S02"
           @vFIL,vCL1+04.0   Say F9701SR2 Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "@S04"
           @vFIL,vCL1+10.8   Say F9701DO2 Font "&mLetAri",9 Style "NQ" Size 1,24.8 Pict "@S20"
           @vFIL,vCL1+36.1   Say F9701FE2 Font "&mLetAri",9 Style "NQ" Size 1,12.6
      OTHERWISE
           @vFIL,vCL1        Say F9701TC2 Font "&mLetAri",9 Style "NQ" Size 1,03.3 Pict "@S02"
           @vFIL,vCL1+04.0   Say F9701SR2 Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "@S04"
           @vFIL,vCL1+10.8   Say F9701DO2 Font "&mLetAri",9 Style "NQ" Size 1,24.8 Pict "@S20"
           @vFIL,vCL1+36.2   Say F9701FE2 Font "&mLetAri",9 Style "NQ" Size 1,12.6
 ENDCASE
ENDPROC
*
PROCEDURE Lin_2420b
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+35.8 TO pfIn, mcO0+35.8
 @ piNi, mcO0+49.0 TO pfIn, mcO0+49.0
 @ piNi, mcO0+62.1 TO pfIn, mcO0+62.1
 @ piNi, mcO0+78.7 TO pfIn, mcO0+78.7
 IF mrEs>"3"
      @ piNi, vcL1-00.4 TO pfIn, vcL1-00.4
      @ piNi, vcL1+35.8 TO pfIn, vcL1+35.8
 ENDIF
 @ piNi, vcL2-00.4 TO pfIn, vcL2-00.4
 DO CASE
      CASE mrEs="3"
           @ piNi, vcL2+07.7 TO pfIn, vcL2+07.7
           @ piNi, vcL2+27.9 TO pfIn, vcL2+27.9
           @ piNi, vcL2+48.1 TO pfIn, vcL2+48.1
      OTHERWISE
           @ piNi, vcL2+07.8 TO pfIn, vcL2+07.8
           @ piNi, vcL2+28.0 TO pfIn, vcL2+28.0
           @ piNi, vcL2+48.2 TO pfIn, vcL2+48.2
 ENDCASE
ENDPROC
*
PROCEDURE Li1_2420b
 PARAMETER piNi, pfIn
 @ piNi, mcO0+03.6 TO pfIn, mcO0+03.6
 @ piNi, mcO0+10.4 TO pfIn, mcO0+10.4
 IF mrEs>"3"
      @ piNi, vcL1+03.6 TO pfIn, vcL1+03.6
      @ piNi, vcL1+10.4 TO pfIn, vcL1+10.4
 ENDIF
ENDPROC
*
PROCEDURE P00_2420b
 RESTORE SCREEN FROM vpAn_99
 DO CASE
      CASE mrEs="3"
           STORE mcO0+132.0 TO vcL2
      OTHERWISE
           STORE mcO0+200.0 TO vcL2
 ENDCASE
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 DO CASE
      CASE mrEs="3"
           DO cuAdro WITH ifIl-2, mcO0, ffIl+3.2, mcO0+muCo+0.4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO coLsc4
           @ ifIl-1.8, mcO0-0.8 TO ifIl-0.3, mcO0+muCo+0.7 PATTERN 1
           @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo+0.7 PATTERN 1
      OTHERWISE
           DO cuAdro WITH ifIl-2, mcO0, ffIl+3.2, mcO0+muCo-0.2
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO coLsc4
           @ ifIl-1.8, mcO0-0.8 TO ifIl-0.3, mcO0+muCo+0.1 PATTERN 1
           @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo+0.1 PATTERN 1
      OTHERWISE
 ENDCASE
 @fFIL+3.8,mCO0+mUCO-88 Say "Registro de Compras del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
 DO liN_2420b WITH ifIl-1.8, ffIl+1.6
 DO li1_2420b WITH ifIl-0.4, ffIl+1.6
 DO coLsc4
 @iFIL-1.7,mCO0+11.8 Say "Documento"           Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+38.6 Say "Fecha"               Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+50.5 Say "Vencim"              Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+64.8 Say "RUC/D.I."            Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,vCL2+01.3 Say "T/C"                 Font "&mLetRom",11 Style "BQ"
 @fFIL+1.9,vCL2-07.2 Say "TOTALES"             Font "&mLetRom",11 Style "BQ"
 @iFIL-1.7,mCO0+79.2 Say "Nombre/Razón Social" Font "&mLetRom",11 Style "BQ"
 @ ffIl+1.6, vcL2+07.7 TO ffIl+3.4, vcL2+07.7
 DO CASE
      CASE mrEs="3"
           @fFIL+1.9,mCO0+00.1 Say "Doc.Referencia:" Font "&mLetAri",10 Style "BQ"
      OTHERWISE
           @iFIL-1.7,vCL1+00.6 Say "Doc.Referencia"  Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,vCL1+38.4 Say "Fecha"           Font "&mLetAri",10 Style "BQ"
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @ ffIl, vcL2+27.9 TO ffIl+3.4, vcL2+27.9
           @ ffIl, vcL2+48.1 TO ffIl+3.4, vcL2+48.1
      OTHERWISE
           @ ffIl, vcL2+28.0 TO ffIl+3.4, vcL2+28.0
           @ ffIl, vcL2+48.2 TO ffIl+3.4, vcL2+48.2
 ENDCASE
 DO tiT_2420b
 DO boT_2420b
ENDPROC
*
PROCEDURE Tit_2420b
 DO coLsc4
 DO CASE
      CASE vsW1=1
           @iFIL-1.7,vCL2+08.2 Say "  Bas-Imp-1 "+mSIG Font "&mLetAri",10 Style "BQ" Size 1,16.3
           @iFIL-1.7,vCL2+28.3 Say "     IGV-1 " +mSIG Font "&mLetAri",10 Style "BQ" Size 1,16.3
           @iFIL-1.7,vCL2+48.5 Say "      Total "+mSIG Font "&mLetAri",10 Style "BQ" Size 1,16.3
           @fFIL+2.0,vCL2+08.2 Say tBA1                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @fFIL+2.0,vCL2+28.3 Say tIG1                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @fFIL+2.0,vCL2+48.5 Say tTOT                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
      CASE vsW1=2
           @iFIL-1.7,vCL2+08.2 Say "  Bas-Imp-2 "+mSIG Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,vCL2+28.3 Say "     IGV-2 " +mSIG Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,vCL2+48.5 Say "      Total "+mSIG Font "&mLetAri",10 Style "BQ"
           @fFIL+2.0,vCL2+08.2 Say tBA2                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @fFIL+2.0,vCL2+28.3 Say tIG2                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @fFIL+2.0,vCL2+48.5 Say tTOT                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
      CASE vsW1=3
           @iFIL-1.7,vCL2+08.2 Say "  Bas-Imp-3 "+mSIG Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,vCL2+28.3 Say "     IGV-3 " +mSIG Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,vCL2+48.5 Say "      Total "+mSIG Font "&mLetAri",10 Style "BQ"
           @fFIL+2.0,vCL2+08.2 Say tBA3                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @fFIL+2.0,vCL2+28.3 Say tIG3                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @fFIL+2.0,vCL2+48.5 Say tTOT                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
      CASE vsW1=4
           @iFIL-1.7,vCL2+08.2 Say " Adq.n/Grav "+mSIG Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,vCL2+28.3 Say " Otros Trib "+mSIG Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,vCL2+48.5 Say "     I.S.C. "+mSIG Font "&mLetAri",10 Style "BQ"
           @fFIL+2.0,vCL2+08.2 Say tVAN                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @fFIL+2.0,vCL2+28.3 Say tOTR                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
           @fFIL+2.0,vCL2+48.5 Say tISC                Font "&mLetAri",9  Style "BQ" Size 1,16.3 Pict "999,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Bot_2420b
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifIl-3.5, vcL2+19.8
 @iFIL-3.4,vCL2+21.8 Say StrTran(Str(vSW1,1,0)," ","0")+"/4" Font "&mLetRom",9 Style "BT"
ENDPROC
*
PROCEDURE Imp_2420b
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina IN PAR2420B
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO reP_2420b
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2420b
 PRIVATE ptAm, psW0
 DO CASE
      CASE mpRt="1"
           STORE 98 TO ptAm
           STORE 04 TO mcLn
      CASE mpRt="2"
           STORE 98 TO ptAm
           STORE 04 TO mcLn
 ENDCASE
 SELECT teMporal
 GOTO TOP
 STORE 0 TO vlIn, vpAg, cnEt, ciGv, ctOt, cnE1, ciG1, ctO1
 STORE SPACE(2) TO ctDo, cnTd, cdIa, cmEs, caNo
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4 .OR. SUBSTR(DTOC(f9701reg), 4, 2)+ ;
         SUBSTR(DTOC(f9701reg), 7, 4)<>cmEs+caNo
           DO caB_2420b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE SUBSTR(DTOC(f9701reg), 1, 2) TO cdIa
           STORE SUBSTR(DTOC(f9701reg), 4, 2) TO cmEs
           STORE SUBSTR(DTOC(f9701reg), 7, 4) TO caNo
           STORE f9701tcp TO ctDo
           STORE f9701tdo TO cnTd
      ENDIF
      STORE 0 TO psW0
      DO CASE
           CASE vtPo=2 .AND. SUBSTR(DTOC(f9701reg), 1, 2)<>cdIa
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mpRt="1"
                               @vLIN,mCLN+65  Say "Total Día "+mSIG Font "&mLetAri",9  Style "BQ"
                          CASE mpRt="2"
                               @vLIN,mCLN+70  Say "Total Día "+mSIG Font "&mLetRom",10 Style "BQ"
                     ENDCASE
                ENDIF
                STORE 1 TO psW0
           CASE vtPo=3 .AND. f9701tcp<>ctDo
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mpRt="1"
                               @vLIN,mCLN+65  Say "Total "+cNTD+" "+mSIG Font "&mLetAri",9  Style "BQ"
                          CASE mpRt="2"
                               @vLIN,mCLN+70  Say "Total "+cNTD+" "+mSIG Font "&mLetRom",10 Style "BQ"
                     ENDCASE
                ENDIF
                STORE 1 TO psW0
      ENDCASE
      IF psW0=1
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+114.1 Say cNE1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                          @vLIN,mCLN+129.1 Say cIG1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                          @vLIN,mCLN+144.1 Say cTO1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN+101.0 Say cNE1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                          @vLIN,mCLN+117.0 Say cIG1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                          @vLIN,mCLN+133.0 Say cTO1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                ENDCASE
           ENDIF
           STORE 0 TO cnE1, ciG1, ctO1
           STORE SUBSTR(DTOC(f9701reg), 1, 2) TO cdIa
           STORE f9701tcp TO ctDo
           STORE f9701tdo TO cnTd
           STORE vlIn+2 TO vlIn
           LOOP
      ENDIF
      STORE cnEt+f9701tne TO cnEt
      STORE ciGv+f9701tig TO ciGv
      STORE ctOt+f9701tfa TO ctOt
      STORE cnE1+f9701tne TO cnE1
      STORE ciG1+f9701tig TO ciG1
      STORE ctO1+f9701tfa TO ctO1
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN     Say F9701FEM                           Font "&mLetAri",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+15  Say F9701FCA                           Font "&mLetAri",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+30  Say F9701TCP+":"+F9701SCP+"-"+F9701NCP Font "&mLetAri",9 Style "NQ" Size 1,30
                     @vLIN,mCLN+62  Say F9701NOM                           Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S43"
                     @vLIN,mCLN+104 Say F9701RUC                           Font "&mLetAri",9 Style "NQ" Size 1,15.6
                     @vLIN,mCLN+122 Say F9701TNE                           Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                     @vLIN,mCLN+138 Say F9701TIG                           Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                     @vLIN,mCLN+154 Say F9701TFA                           Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
                     @vLIN,mCLN+170 Say F9701REF                           Font "&mLetAri",9 Style "NQ" Size 1,23 Pict "@S25"
                CASE mpRt="2"
                     @vLIN,mCLN     Say F9701FEM                           Font "&mLetRom",10 Style "NQ" Size 1,13
                     @vLIN,mCLN+20  Say F9701FCA                           Font "&mLetRom",10 Style "NQ" Size 1,13
                     @vLIN,mCLN+35  Say F9701TCP+":"+F9701SCP+"-"+F9701NCP Font "&mLetRom",10 Style "NQ" Size 1,20
                     @vLIN,mCLN+60  Say F9701NOM                           Font "&mLetRom",10 Style "NQ" Size 1,40 Pict "@S43"
                     @vLIN,mCLN+115 Say F9701RUC                           Font "&mLetRom",10 Style "NQ" Size 1,17
                     @vLIN,mCLN+130 Say F9701TNE                           Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "9999,999.99"
                     @vLIN,mCLN+146 Say F9701TIG                           Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "9999,999.99"
                     @vLIN,mCLN+162 Say F9701TFA                           Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "9999,999.99"
                     @vLIN,mCLN+187 Say F9701REF                           Font "&mLetRom",10 Style "NQ" Size 1,40 Pict "@S43"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
      STORE 0 TO psW0
      DO CASE
           CASE EOF()
                STORE 1 TO psW0
           CASE SUBSTR(DTOC(f9701reg), 4, 2)+SUBSTR(DTOC(f9701reg), 7, 4)<> ;
                cmEs+caNo
                STORE 1 TO psW0
           CASE vtPo=2 .AND. SUBSTR(DTOC(f9701reg), 1, 2)<>cdIa
                STORE 1 TO psW0
           CASE vtPo=3 .AND. f9701tcp<>ctDo
                STORE 1 TO psW0
      ENDCASE
      IF psW0=1
           STORE vlIn+0.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+114.1 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+129.1 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+144.1 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                     CASE mpRt="2"
                          @vLIN,mCLN+101.0 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+117.0 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+133.0 Say Replicate("_",10) Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDDO
 STORE 0 TO psW0
 DO CASE
      CASE vtPo=2 .AND. SUBSTR(DTOC(f9701reg), 1, 2)<>cdIa
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+65  Say "Total Día "+mSIG Font "&mLetAri",9  Style "BQ"
                     CASE mpRt="2"
                          @vLIN,mCLN+70  Say "Total Día "+mSIG Font "&mLetRom",10 Style "BQ"
                ENDCASE
           ENDIF
           STORE 1 TO psW0
      CASE vtPo=3 .AND. f9701tcp<>ctDo
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+65  Say "Total "+cNTD+" "+mSIG Font "&mLetAri",9  Style "BQ"
                     CASE mpRt="2"
                          @vLIN,mCLN+70  Say "Total "+cNTD+" "+mSIG Font "&mLetRom",10 Style "BQ"
                ENDCASE
           ENDIF
           STORE 1 TO psW0
 ENDCASE
 IF psW0=1
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+114.1 Say cNE1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+129.1 Say cIG1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+144.1 Say cTO1 Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+101.0 Say cNE1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+117.0 Say cIG1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+133.0 Say cTO1 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
      ENDCASE
      STORE 0 TO cnE1, ciG1, ctO1
      STORE SUBSTR(DTOC(f9701reg), 1, 2) TO cdIa
      STORE f9701tcp TO ctDo
      STORE f9701tdo TO cnTd
      STORE vlIn+2 TO vlIn
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+063.0 Say "TOTAL GENERAL "+mSIG Font "&mLetAri",9  Style "BQ"
                @vLIN,mCLN+114.1 Say cNET                  Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+129.1 Say cIGV                  Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+144.1 Say cTOT                  Font "&mLetAri",9  Style "BQ" Size 1,15 Pict "9999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+068.0 Say "TOTAL GENERAL "+mSIG Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+101.0 Say cNET                  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+117.0 Say cIGV                  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+133.0 Say cTOT                  Font "&mLetRom",10 Style "BQ" Size 1,15 Pict "9999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2420b
 IF vpAg>=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+075.0 Say "Van "+mSIG Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+114.1 Say cNET        Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+129.1 Say cIGV        Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+144.1 Say cTOT        Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+060.0 Say "Van "+mSIG Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+101.0 Say cNET        Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+117.0 Say cIGV        Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+133.0 Say cTOT        Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
      ENDCASE
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0001a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="01"
                STORE "Enero de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="02"
                STORE "Febrero de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="03"
                STORE "Marzo de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="04"
                STORE "Abril de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="05"
                STORE "Mayo de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="06"
                STORE "Junio de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="07"
                STORE "Julio de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="08"
                STORE "Agosto de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="09"
                STORE "Setiembre de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="10"
                STORE "Octubre de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="11"
                STORE "Noviembre de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(f9701reg), 4, 2)="12"
                STORE "Diciembre de "+SUBSTR(DTOC(f9701reg), 7, 4) TO cfEc
      ENDCASE
      @vLIN,mCLN Say "Registro de Compras "+cFEC Font "&mLetRom",14 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN     Say "EMISION"     Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+15  Say "CANCELAC"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+30  Say "DOCUMENTO"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+62  Say "PROVEEDOR"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+104 Say "RUC/DNI"     Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+122 Say "VALOR-CPR"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+145 Say "I.G.V."      Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+155 Say "TOTAL "+mSIG Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+170 Say "REFERENCIA"  Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "EMISION"     Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+20  Say "CANCELAC"    Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+35  Say "DOCUMENTO"   Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+52  Say "PROVEEDOR"   Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+115 Say "RUC/DNI"     Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+131 Say "V.CPR"       Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+146 Say "IGV"         Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+162 Say "TOTAL "+mSIG Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+186 Say "REFERENCIA"  Font "&mLetRom",10 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>1
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+075.0 Say "Vienen "+mSIG Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+114.1 Say cNET           Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+129.1 Say cIGV           Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+144.1 Say cTOT           Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+060.0 Say "Vienen "+mSIG Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+101.0 Say cNET           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+117.0 Say cIGV           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+133.0 Say cTOT           Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
           ENDCASE
      ENDIF
      STORE vlIn+2 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE See_2420b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK SUBSTR(vfEm, 7, 4)+SUBSTR(vfEm, 4, 2)+SUBSTR(vfEm, 1, 2)+ ;
                vtCp+ALLTRIM(vrUc)+"*"+ALLTRIM(vsCp)+"*"+ALLTRIM(vnCp)+"*"
      CASE psEe="i"
           SEEK SUBSTR(ifEm, 7, 4)+SUBSTR(ifEm, 4, 2)+SUBSTR(ifEm, 1, 2)+ ;
                itCp+ALLTRIM(irUc)+"*"+ALLTRIM(isCp)+"*"+ALLTRIM(inCp)+"*"
      CASE psEe="u"
           SEEK SUBSTR(ufEm, 7, 4)+SUBSTR(ufEm, 4, 2)+SUBSTR(ufEm, 1, 2)+ ;
                utCp+ALLTRIM(urUc)+"*"+ALLTRIM(usCp)+"*"+ALLTRIM(unCp)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2420b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ifEm TO vfEm
           STORE itCp TO vtCp
           STORE isCp TO vsCp
           STORE inCp TO vnCp
           STORE irUc TO vrUc
      CASE pmU1="v" .AND. pmU2="i"
           STORE vfEm TO ifEm
           STORE vtCp TO itCp
           STORE vsCp TO isCp
           STORE vnCp TO inCp
           STORE vrUc TO irUc
      CASE pmU1="u" .AND. pmU2="v"
           STORE ufEm TO vfEm
           STORE utCp TO vtCp
           STORE usCp TO vsCp
           STORE unCp TO vnCp
           STORE urUc TO vrUc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9701fem TO vfEm
           STORE f9701tcp TO vtCp
           STORE f9701scp TO vsCp
           STORE f9701ncp TO vnCp
           STORE f9701ruc TO vrUc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9701fem TO ufEm
           STORE f9701tcp TO utCp
           STORE f9701scp TO usCp
           STORE f9701ncp TO unCp
           STORE f9701ruc TO urUc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9701fem TO ifEm
           STORE f9701tcp TO itCp
           STORE f9701scp TO isCp
           STORE f9701ncp TO inCp
           STORE f9701ruc TO irUc
 ENDCASE
ENDPROC
*
PROCEDURE Xls_2420b
 PRIVATE pmEs
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
 DO xl0_0000a WITH "Formato 8.1: Registro de Compras", "Compras", 27
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO xl2_0000a WITH 27
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(6,27)).inSert
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
 pxLs.ceLls(8, 03).vaLue = "o Pago"
 pxLs.ceLls(7, 04).vaLue = "Comprobante de Pago"
 pxLs.ceLls(8, 04).vaLue = "Tipo"
 pxLs.ceLls(8, 05).vaLue = "Serie"
 pxLs.ceLls(8, 06).vaLue = "Año-Dua/DSI"
 pxLs.ceLls(8, 07).vaLue = "Número"
 pxLs.ceLls(7, 08).vaLue = "Documento de Identidad"
 pxLs.ceLls(8, 08).vaLue = "Tipo"
 pxLs.ceLls(8, 09).vaLue = "Número"
 pxLs.ceLls(7, 10).vaLue = "Apellidos/Nombres o"
 pxLs.ceLls(8, 10).vaLue = "Razón Social"
 pxLs.ceLls(7, 11).vaLue = "Adq.Grav.dest.a Op.Grav/Export"
 pxLs.ceLls(8, 11).vaLue = "Base Imponible"
 pxLs.ceLls(8, 12).vaLue = "IGV"
 pxLs.ceLls(7, 13).vaLue = "Adq.Grav.dest.a Op.Grav/Export/No Grav"
 pxLs.ceLls(8, 13).vaLue = "Base Imponible"
 pxLs.ceLls(8, 14).vaLue = "IGV"
 pxLs.ceLls(7, 15).vaLue = "Adq.Grav.dest.a Op.no Gravadas"
 pxLs.ceLls(8, 15).vaLue = "Base Imponible"
 pxLs.ceLls(8, 16).vaLue = "IGV"
 pxLs.ceLls(7, 17).vaLue = "Valor Adquisiciones"
 pxLs.ceLls(8, 17).vaLue = "no gravadas"
 pxLs.ceLls(8, 18).vaLue = "ISC"
 pxLs.ceLls(7, 19).vaLue = "Otros Tributos"
 pxLs.ceLls(8, 19).vaLue = "y Cargos"
 pxLs.ceLls(7, 20).vaLue = "Importe"
 pxLs.ceLls(8, 20).vaLue = "Total"
 pxLs.ceLls(7, 21).vaLue = "Constancia:Dep.de Detracción"
 pxLs.ceLls(8, 21).vaLue = "Número"
 pxLs.ceLls(8, 22).vaLue = "Emisión"
 pxLs.ceLls(7, 23).vaLue = "Tipo de"
 pxLs.ceLls(8, 23).vaLue = "Cambio"
 pxLs.ceLls(7, 24).vaLue = "Documento que modifica"
 pxLs.ceLls(8, 24).vaLue = "Fecha"
 pxLs.ceLls(8, 25).vaLue = "Tipo"
 pxLs.ceLls(8, 26).vaLue = "Serie"
 pxLs.ceLls(8, 27).vaLue = "Número"
 pxLs.raNge(pxLs.ceLls(7,04), pxLs.ceLls(7,07)).meRge
 pxLs.raNge(pxLs.ceLls(7,08), pxLs.ceLls(7,09)).meRge
 pxLs.raNge(pxLs.ceLls(7,11), pxLs.ceLls(7,12)).meRge
 pxLs.raNge(pxLs.ceLls(7,13), pxLs.ceLls(7,14)).meRge
 pxLs.raNge(pxLs.ceLls(7,15), pxLs.ceLls(7,16)).meRge
 pxLs.raNge(pxLs.ceLls(7,18), pxLs.ceLls(8,18)).meRge
 pxLs.raNge(pxLs.ceLls(7,21), pxLs.ceLls(7,22)).meRge
 pxLs.raNge(pxLs.ceLls(7,24), pxLs.ceLls(7,27)).meRge
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(10)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(11), pxLs.coLumns(20)).nuMberformat = "###,###,##0.00"
 pxLs.raNge(pxLs.coLumns(21), pxLs.coLumns(22)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(25), pxLs.coLumns(27)).nuMberformat = "@"
 pxLs.coLumns(24).nuMberformat = "##0.000"
 pxLs.coLumns(01).hoRizontalalignment = 2
 pxLs.coLumns(07).hoRizontalalignment = 2
 pxLs.coLumns(21).hoRizontalalignment = 2
 pxLs.coLumns(22).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(06)).hoRizontalalignment = 3
 pxLs.raNge(pxLs.coLumns(08), pxLs.coLumns(09)).hoRizontalalignment = 3
 pxLs.raNge(pxLs.coLumns(23), pxLs.coLumns(27)).hoRizontalalignment = 3
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(5,8)).hoRizontalalignment = 2
 pxLs.coLumns(01).coLumnwidth = 14.29
 pxLs.coLumns(02).coLumnwidth = 9.71
 pxLs.coLumns(03).coLumnwidth = 13.14
 pxLs.coLumns(04).coLumnwidth = 4.43
 pxLs.coLumns(05).coLumnwidth = 5.57
 pxLs.coLumns(06).coLumnwidth = 12.71
 pxLs.coLumns(07).coLumnwidth = 20
 pxLs.coLumns(08).coLumnwidth = 7.71
 pxLs.coLumns(09).coLumnwidth = 14.71
 pxLs.coLumns(10).coLumnwidth = 57
 pxLs.coLumns(22).coLumnwidth = 9.71
 pxLs.coLumns(23).coLumnwidth = 7.43
 pxLs.coLumns(24).coLumnwidth = 9.71
 pxLs.coLumns(25).coLumnwidth = 4
 pxLs.coLumns(26).coLumnwidth = 4.71
 pxLs.coLumns(27).coLumnwidth = 7.14
 pxLs.raNge(pxLs.coLumns(11), pxLs.coLumns(22)).coLumnwidth = 20.86
 SELECT teMporal
 GOTO TOP
 STORE 9 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(viT1, 01).seLect
      pxLs.ceLls(viT1, 01).vaLue = ALLTRIM(f9701reg)
      pxLs.ceLls(viT1, 02).vaLue = ALLTRIM(f9701fem)
      pxLs.ceLls(viT1, 03).vaLue = ALLTRIM(f9701fve)
      pxLs.ceLls(viT1, 04).vaLue = ALLTRIM(f9701tcp)
      pxLs.ceLls(viT1, 05).vaLue = ALLTRIM(f9701scp)
      pxLs.ceLls(viT1, 07).vaLue = ALLTRIM(f9701ncp)
      pxLs.ceLls(viT1, 08).vaLue = ALLTRIM(f9701tdi)
      pxLs.ceLls(viT1, 09).vaLue = ALLTRIM(f9701ruc)
      pxLs.ceLls(viT1, 10).vaLue = f9701nom
      pxLs.ceLls(viT1, 11).vaLue = f9701ba1
      pxLs.ceLls(viT1, 12).vaLue = f9701ig1
      pxLs.ceLls(viT1, 13).vaLue = f9701ba2
      pxLs.ceLls(viT1, 14).vaLue = f9701ig2
      pxLs.ceLls(viT1, 15).vaLue = f9701ba3
      pxLs.ceLls(viT1, 16).vaLue = f9701ig3
      pxLs.ceLls(viT1, 17).vaLue = f9701van
      pxLs.ceLls(viT1, 18).vaLue = f9701isc
      pxLs.ceLls(viT1, 19).vaLue = f9701otr
      pxLs.ceLls(viT1, 20).vaLue = f9701tot
      pxLs.ceLls(viT1, 21).vaLue = f9701nde
      pxLs.ceLls(viT1, 22).vaLue = f9701fde
      pxLs.ceLls(viT1, 23).vaLue = f9701tca
      pxLs.ceLls(viT1, 24).vaLue = ALLTRIM(f9701fe2)
      pxLs.ceLls(viT1, 25).vaLue = ALLTRIM(f9701tc2)
      pxLs.ceLls(viT1, 26).vaLue = ALLTRIM(f9701sr2)
      pxLs.ceLls(viT1, 27).vaLue = ALLTRIM(f9701do2)
      STORE viT1+1 TO viT1
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SELECT teMporal
      SKIP
 ENDDO
 IF meN1<meNn
      WITH pxLs.raNge(pxLs.ceLls(viT1,11),pxLs.ceLls(viT1,20))
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
      pxLs.ceLls(viT1, 11).vaLue = tbA1
      pxLs.ceLls(viT1, 12).vaLue = tiG1
      pxLs.ceLls(viT1, 13).vaLue = tbA2
      pxLs.ceLls(viT1, 14).vaLue = tiG2
      pxLs.ceLls(viT1, 15).vaLue = tbA3
      pxLs.ceLls(viT1, 16).vaLue = tiG3
      pxLs.ceLls(viT1, 17).vaLue = tvAn
      pxLs.ceLls(viT1, 18).vaLue = tiSc
      pxLs.ceLls(viT1, 19).vaLue = toTr
      pxLs.ceLls(viT1, 20).vaLue = ttOt
 ENDIF
 DO xl1_0000a WITH 2
 WAIT CLEAR
 SELECT teMporal
 DO seE_2420b WITH "v"
ENDPROC
*
PROCEDURE Res_2420b
 DO reS_2420b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2420b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 DO seE_2420b WITH "i"
 DO paN_2420b
 DO seE_2420b WITH "i"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vsCp+vtDo+ALLTRIM(vnCp)+"*"+ALLTRIM(vrUc)+"*"=f9701scp+f9701ord+ ;
         f9701tcp+ALLTRIM(f9701ncp)+"*"+ALLTRIM(f9701ruc)+"*"
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      DO muE_2420b WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO seE_2420b WITH "v"
 DO diS_2420b WITH "R"
ENDPROC
*
PROCEDURE Clp_2420b
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
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_2420b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2420b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_2420b WITH "F", "v"
           DO diS_2420b WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
 STORE 99 TO mkEy
 DIMENSION plIs(2, 2)
 IF APRINTERS(plIs)=0
      STORE "No hay Impresoras instaladas..." TO mmSj
      STORE k_Esc TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, vtPo
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
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
 @pFIL+07.5,pCOL+05 Say "Desde Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+08.9,pCOL+05 Say "Hasta Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.3,pCOL+05 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 @pFIL+10.5,pCOL+05 Say "Imprime Sub-Totales:"  Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_2
           @ pfIl+3.4, pcOl+34 TO pfIl+7, pcOl+54 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+3.4,pCOL+34 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+3.4,pCOL+34 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+07.6,pCOL+24.8 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+09.0,pCOL+24.8 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.9,pCOL+05.8 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RHT No imprime;x Día;x Tipo de Doc." Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+18.4,pCOL+06.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
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
                STORE k_Esc TO mkEy
                STORE 0 TO mvIs
                EXIT
           CASE poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_2420b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+01, 01 SAY  ;
   "Boletas, Notas de Crédito y Débito, en el rango de fechas seleccionadas."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 11 SAY "ESC" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "F1" STYLE "BT"
 @ pfIl+08, 11 SAY "F8" STYLE "BT"
 @ pfIl+09, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 31 SAY "Regresar a Cabecera"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Pasar Datos a Excel"
 @ pfIl+09, 31 SAY "Línea inferior"
 @ pfIl+10, 31 SAY "Línea superior"
 STORE pfIl+11 TO pfIl
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+2, 29 SAY ":" STYLE "BT"
 @ pfIl+3, 29 SAY ":" STYLE "BT"
 @ pfIl+4, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 11 SAY "HOME" STYLE "BT"
 @ pfIl+3, 11 SAY "END" STYLE "BT"
 @ pfIl+4, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+5, 11 SAY "CTRL O" STYLE "BT"
 @ pfIl+0, 31 SAY "Página siguiente"
 @ pfIl+1, 31 SAY "Página anterior"
 @ pfIl+2, 31 SAY "Primera línea"
 @ pfIl+3, 31 SAY "Última línea"
 @ pfIl+4, 31 SAY "Imprimir Reporte"
 @ pfIl+5, 31 SAY "Crear Libro Electrónico para el PLE"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
