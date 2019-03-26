 STORE 1 TO vsW6
 SELECT teMporal_3
 SET ORDER TO FTM3COD
 ZAP
 REINDEX
 SELECT teMporal_4
 SET ORDER TO FTM4CDG
 ZAP
 REINDEX
 SELECT teMporal_5
 SET ORDER TO FTM4CDG
 ZAP
 REINDEX
 SELECT teMporal_6
 SET ORDER TO FTM4CDG
 ZAP
 REINDEX
 SELECT teMporal_7
 SET ORDER TO FTM4CDG
 ZAP
 REINDEX
 SELECT teMporal_8
 SET ORDER TO FTM4CDG
 ZAP
 REINDEX
 SELECT teMporal_9
 SET ORDER TO FTM4CDG
 ZAP
 REINDEX
 SELECT teMporal_10
 SET ORDER TO FTM4CDG
 ZAP
 REINDEX
 SELECT teMporal
 GOTO TOP
 STORE 0 TO tsOl, tuSd, tcAn, tfA1, tfA2, tbO1, tbO2, tnP1, tnP2
 WAIT WINDOW NOWAIT "L E Y E N D O  Detalle.. Presionar ESC para Salir"+ ;
      CHR(13)+"Hora Inicial de Lectura: "+TIME()
 DO WHILE  .NOT. EOF()
      STORE " " TO vcOd, vrUc, vnUv
      STORE 0 TO vcAn
      STORE ftM1tdo TO vtDo
      STORE ftM1tpr TO vtPr
      STORE ftM1ntp TO vnTp
      STORE ftM1gru TO vgRu
      STORE ftM1ngr TO vnGr
      STORE ftM1cod TO vcDg
      STORE ftM1des TO vdCr
      STORE ftM1nuv TO vnVv
      STORE ftM1ven TO vvEn
      STORE ftM1nve TO vnVe
      STORE ftM1cli TO vcLi
      STORE ftM1nom TO vnCl
      STORE ftM1tip TO vtIp
      STORE ftM1nti TO vnTi
      STORE ftM1can TO vcTd, vcAn
      STORE STR(ftM1tpo, 1, 1) TO vtPo
      DO CASE
           CASE voPc=2
                STORE ftM1cli TO vcOd
                STORE ftM1nom TO vnOm
                IF LEN(ALLTRIM(ftM1ruc))<>0
                     STORE ftM1ruc TO vcOd
                ENDIF
           CASE voPc=3
                STORE ftM1tip TO vcOd
                STORE ftM1nti TO vnOm
           CASE voPc=4
                STORE ftM1ven TO vcOd
                STORE ftM1nve TO vnOm
           CASE voPc=5
                STORE ftM1fpa TO vcOd
                STORE ftM1nfp TO vnOm
           CASE voPc=6
                STORE ftM1tpr TO vcOd
                STORE ftM1ntp TO vnOm
           CASE voPc=7 .AND. (ftM1tpo=1 .OR. ftM1tpo=2)
                STORE ftM1cod TO vcOd
                STORE ftM1des TO vnOm
                STORE ftM1nuv TO vnUv
           CASE voPc=7
                SKIP
                LOOP
           CASE voPc=8 .AND. ftM1tpo=1 .AND. ftM1imp=2
                STORE ftM1cod TO vcOd
                STORE ftM1des TO vnOm
                STORE ftM1nuv TO vnUv
           CASE voPc=8
                SKIP
                LOOP
           CASE voPc=9 .AND. ftM1tpo=1 .AND. ftM1imp=1
                STORE ftM1cod TO vcOd
                STORE ftM1des TO vnOm
                STORE ftM1nuv TO vnUv
           CASE voPc=9
                SKIP
                LOOP
           CASE voPc=10 .AND. ftM1tpo=2
                STORE ftM1cod TO vcOd
                STORE ftM1des TO vnOm
                STORE ftM1nuv TO vnUv
           CASE voPc=10
                SKIP
                LOOP
      ENDCASE
      STORE ftM1mon TO vmOn
      STORE ftM1to2 TO vtOt
      IF LEN(ALLTRIM(vcOd))=0
           SKIP
           LOOP
      ENDIF
      SELECT teMporal_3
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM3cod WITH vcOd
           REPLACE ftM3nuv WITH vnUv
           REPLACE ftM3can WITH 0
           REPLACE ftM3to1 WITH 0
           REPLACE ftM3to2 WITH 0
           REPLACE ftM3fa1 WITH 0
           REPLACE ftM3fa2 WITH 0
           REPLACE ftM3bo1 WITH 0
           REPLACE ftM3bo2 WITH 0
           REPLACE ftM3np1 WITH 0
           REPLACE ftM3np2 WITH 0
           IF vcOd="****"
                REPLACE ftM3nom WITH "Varios"
           ELSE
                REPLACE ftM3nom WITH vnOm
           ENDIF
      ENDIF
      REPLACE ftM3can WITH ftM3can+vcAn
      DO CASE
           CASE vmOn=1
                REPLACE ftM3to1 WITH ftM3to1+vtOt
                DO CASE
                     CASE vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"
                          REPLACE ftM3fa1 WITH ftM3fa1+vtOt
                     CASE vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC"
                          REPLACE ftM3bo1 WITH ftM3bo1+vtOt
                     CASE vtDo="NP"
                          REPLACE ftM3np1 WITH ftM3np1+vtOt
                ENDCASE
           CASE vmOn=2
                REPLACE ftM3to2 WITH ftM3to2+vtOt
                DO CASE
                     CASE vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"
                          REPLACE ftM3fa2 WITH ftM3fa2+vtOt
                     CASE vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC"
                          REPLACE ftM3bo2 WITH ftM3bo2+vtOt
                     CASE vtDo="NP"
                          REPLACE ftM3np2 WITH ftM3np2+vtOt
                ENDCASE
      ENDCASE
      SELECT teMporal_4
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vtPr)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM4cod WITH vcOd
           REPLACE ftM4tpo WITH vtPo
           REPLACE ftM4cdg WITH vtPr
           REPLACE ftM4dcr WITH vnTp
           REPLACE ftM4nuv WITH " "
           REPLACE ftM4ctd WITH 0
           REPLACE ftM4tt1 WITH 0
           REPLACE ftM4tt2 WITH 0
      ENDIF
      REPLACE ftM4ctd WITH ftM4ctd+vcTd
      DO CASE
           CASE vmOn=1
                REPLACE ftM4tt1 WITH ftM4tt1+vtOt
           CASE vmOn=2
                REPLACE ftM4tt2 WITH ftM4tt2+vtOt
      ENDCASE
      SELECT teMporal_5
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vgRu)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM4cod WITH vcOd
           REPLACE ftM4tpo WITH vtPo
           REPLACE ftM4cdg WITH vgRu
           REPLACE ftM4dcr WITH vnGr
           REPLACE ftM4nuv WITH " "
           REPLACE ftM4ctd WITH 0
           REPLACE ftM4tt1 WITH 0
           REPLACE ftM4tt2 WITH 0
      ENDIF
      REPLACE ftM4ctd WITH ftM4ctd+vcTd
      DO CASE
           CASE vmOn=1
                REPLACE ftM4tt1 WITH ftM4tt1+vtOt
           CASE vmOn=2
                REPLACE ftM4tt2 WITH ftM4tt2+vtOt
      ENDCASE
      SELECT teMporal_6
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM4cod WITH vcOd
           REPLACE ftM4tpo WITH vtPo
           REPLACE ftM4cdg WITH vcDg
           REPLACE ftM4dcr WITH vdCr
           REPLACE ftM4nuv WITH vnVv
           REPLACE ftM4ctd WITH 0
           REPLACE ftM4tt1 WITH 0
           REPLACE ftM4tt2 WITH 0
      ENDIF
      REPLACE ftM4ctd WITH ftM4ctd+vcTd
      DO CASE
           CASE vmOn=1
                REPLACE ftM4tt1 WITH ftM4tt1+vtOt
           CASE vmOn=2
                REPLACE ftM4tt2 WITH ftM4tt2+vtOt
      ENDCASE
      SELECT teMporal_7
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM4cod WITH vcOd
           REPLACE ftM4tpo WITH vtPo
           REPLACE ftM4cdg WITH vcDg
           REPLACE ftM4dcr WITH vdCr
           REPLACE ftM4nuv WITH vnVv
           REPLACE ftM4ctd WITH 0
           REPLACE ftM4tt1 WITH 0
           REPLACE ftM4tt2 WITH 0
      ENDIF
      REPLACE ftM4ctd WITH ftM4ctd+vcTd
      DO CASE
           CASE vmOn=1
                REPLACE ftM4tt1 WITH ftM4tt1+vtOt
           CASE vmOn=2
                REPLACE ftM4tt2 WITH ftM4tt2+vtOt
      ENDCASE
      SELECT teMporal_8
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vvEn)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM4cod WITH vcOd
           REPLACE ftM4tpo WITH vtPo
           REPLACE ftM4cdg WITH vvEn
           REPLACE ftM4dcr WITH vnVe
           REPLACE ftM4nuv WITH " "
           REPLACE ftM4ctd WITH 0
           REPLACE ftM4tt1 WITH 0
           REPLACE ftM4tt2 WITH 0
      ENDIF
      REPLACE ftM4ctd WITH ftM4ctd+vcTd
      DO CASE
           CASE vmOn=1
                REPLACE ftM4tt1 WITH ftM4tt1+vtOt
           CASE vmOn=2
                REPLACE ftM4tt2 WITH ftM4tt2+vtOt
      ENDCASE
      SELECT teMporal_9
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vcLi)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM4cod WITH vcOd
           REPLACE ftM4tpo WITH vtPo
           REPLACE ftM4cdg WITH vcLi
           REPLACE ftM4dcr WITH vnCl
           REPLACE ftM4nuv WITH " "
           REPLACE ftM4ctd WITH 0
           REPLACE ftM4tt1 WITH 0
           REPLACE ftM4tt2 WITH 0
      ENDIF
      REPLACE ftM4ctd WITH ftM4ctd+vcTd
      DO CASE
           CASE vmOn=1
                REPLACE ftM4tt1 WITH ftM4tt1+vtOt
           CASE vmOn=2
                REPLACE ftM4tt2 WITH ftM4tt2+vtOt
      ENDCASE
      SELECT teMporal_10
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vtIp)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM4cod WITH vcOd
           REPLACE ftM4tpo WITH vtPo
           REPLACE ftM4cdg WITH vtIp
           REPLACE ftM4dcr WITH vnTi
           REPLACE ftM4nuv WITH " "
           REPLACE ftM4ctd WITH 0
           REPLACE ftM4tt1 WITH 0
           REPLACE ftM4tt2 WITH 0
      ENDIF
      REPLACE ftM4ctd WITH ftM4ctd+vcTd
      DO CASE
           CASE vmOn=1
                REPLACE ftM4tt1 WITH ftM4tt1+vtOt
           CASE vmOn=2
                REPLACE ftM4tt2 WITH ftM4tt2+vtOt
      ENDCASE
      SELECT teMporal
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
 = INKEY(0.5)
 WAIT CLEAR
 SELECT teMporal_3
 SUM ftM3to1 TO tsOl ALL
 SUM ftM3to2 TO tuSd ALL
 SUM ftM3can TO tcAn ALL
 SUM ftM3fa1 TO tfA1 ALL
 SUM ftM3fa2 TO tfA2 ALL
 SUM ftM3bo1 TO tbO1 ALL
 SUM ftM3bo2 TO tbO2 ALL
 SUM ftM3np1 TO tnP1 ALL
 SUM ftM3np2 TO tnP2 ALL
 GOTO BOTTOM
 STORE ftM3cod TO hcOd
 GOTO TOP
 STORE ftM3cod TO dcOd
 SET ORDER TO FTM3NOM
 GOTO TOP
 STORE 1 TO vsW0, csW0, vsW3
 DO p00_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1300c
 GOTO TOP
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_1300c WITH "i", "v"
 DO seE_1300c WITH "v"
 DO diS_1300c WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1300c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1300c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO CASE
                     CASE vsW6=4
                          STORE 1 TO vsW6
                     OTHERWISE
                          STORE vsW6+1 TO vsW6
                ENDCASE
                STORE vfIl TO cfIl
                DO muE_1300c WITH "v", "x"
                DO diS_1300c WITH "R"
                DO seE_1300c WITH "i"
                DO paN_1300c
                STORE cfIl TO vfIl
                DO muE_1300c WITH "x", "v"
                DO seE_1300c WITH "v"
                DO diS_1300c WITH "R"
                DO tiT_1300c
                DO toT_1300c
                STORE 99 TO mkEy
           CASE mkEy=k_F5 .AND. vsW0>1
                = INKEY(0.01)
                IF csW0=1
                     STORE 2 TO csW0
                ELSE
                     STORE 1 TO csW0
                ENDIF
                DO caM_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_1300c WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal_3
                DO seE_1300c WITH "v"
                DO muE_1300c WITH "F", "v"
           CASE mkEy=k_F9 .AND. csW3=0
                DO xlS_1300c WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal_3
                DO seE_1300c WITH "v"
                DO muE_1300c WITH "F", "v"
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO CASE
                     CASE mkEy=k_Left .AND. vsW0=1
                          STORE 4 TO vsW0
                     CASE mkEy=k_Left
                          STORE vsW0-1 TO vsW0
                          IF voPc<7 .AND. vsW0=2
                               STORE 1 TO vsW0
                          ENDIF
                     CASE mkEy=k_Right .AND. vsW0=4
                          STORE 1 TO vsW0
                     CASE mkEy=k_Right
                          STORE vsW0+1 TO vsW0
                          IF voPc<7 .AND. vsW0=2
                               STORE 3 TO vsW0
                          ENDIF
                ENDCASE
                DO caM_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO bt1_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_right .OR. mkEy=k_Ctrl_left
                DO CASE
                     CASE mkEy=k_Ctrl_right .AND. vsW3=vuLt
                          STORE 1 TO vsW3
                     CASE mkEy=k_Ctrl_left .AND. vsW3=1
                          STORE vuLt TO vsW3
                     CASE mkEy=k_Ctrl_right
                          STORE vsW3+1 TO vsW3
                     OTHERWISE
                          STORE vsW3-1 TO vsW3
                ENDCASE
                DO boT_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_12
                DO diS_1300c WITH "N"
                STORE vfIl TO cfIl
                STORE ifIl TO vfIl
                DO diS_1300c WITH "R1"
                STORE cfIl TO vfIl
                STORE ftM3nuv TO vnUv
                DO CASE
                     CASE vsW3=1
                          STORE SPACE(mtMa) TO vcDg
                          DO muE_1300c WITH "v", "x"
                          DO muE_1300c WITH "i", "y"
                          DO muE_1300c WITH "u", "z"
                          STORE vfIl TO vfFr
                          STORE ifIl TO ifFr
                          STORE ufIl TO ufFr
                          STORE ffIl TO ffFr
                          STORE cfIl TO cfFr
                          DO pvR1300e
                          DO muE_1300c WITH "x", "v"
                          DO muE_1300c WITH "y", "i"
                          DO muE_1300c WITH "z", "u"
                          STORE vfFr TO vfIl
                          STORE ifFr TO ifIl
                          STORE ufFr TO ufIl
                          STORE ffFr TO ffIl
                          STORE cfFr TO cfIl
                     OTHERWISE
                          DO pvR1300d
                ENDCASE
                RESTORE SCREEN FROM vpAn_12
                SELECT teMporal_3
                DO seE_1300c WITH "v"
                DO muE_1300c WITH "F", "v"
           CASE mkEy=k_Ctrl_p
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM3cod)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                                    DO paN_1300c
                               OTHERWISE
                                    DO seE_1300c WITH "v"
                                    DO diS_1300c WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1300c WITH "i", "v"
                          DO seE_1300c WITH "v"
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM3cod)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1300c
                               OTHERWISE
                                    DO seE_1300c WITH "v"
                                    DO diS_1300c WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1300c WITH "u", "v"
                          DO seE_1300c WITH "v"
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300c WITH "v"
                          DO diS_1300c WITH "N"
                          SKIP
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                               DO coL_fondo
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1300c WITH ffIl, ffIl+1
                               DO li1_1300c WITH ffIl, ffIl+1
                               DO muE_1300c WITH "F", "u"
                               DO muE_1300c WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1300c WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1300c WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1300c WITH "v"
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300c WITH "v"
                          DO diS_1300c WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                               DO coL_fondo
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1300c WITH ifIl, ifIl+1
                               DO li1_1300c WITH ifIl, ifIl+1
                               DO muE_1300c WITH "F", "v"
                               DO muE_1300c WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1300c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1300c WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1300c WITH "v"
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1300c WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1300c
                          STORE ifIl TO vfIl
                          DO muE_1300c WITH "i", "v"
                          DO seE_1300c WITH "v"
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1300c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1300c
                          STORE ifIl TO vfIl
                          DO muE_1300c WITH "i", "v"
                          DO seE_1300c WITH "v"
                          DO diS_1300c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1300c WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1300c
 STORE ifIl TO vfIl, ufIl
 DO muE_1300c WITH "F", "i"
 DO muE_1300c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_1300c WITH "N"
      DO muE_1300c WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_fondo
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_1300c WITH ufIl+1, ffIl+1
      DO li1_1300c WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1300c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="R1"
           DO coLscz
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3" .AND. voPc>6
           IF ptIp="R1"
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",9 Style "BQI" Size 1,26.9 Pict "@S25"
                @vFIL,mCO0+027.6 Say FTM3NOM Font "&mLetAri",9 Style "BQI" Size 1,72.4 Pict "@S75"
                @vFIL,mCO0+100.6 Say FTM3NUV Font "&mLetAri",9 Style "BQI" Size 1,05.0 Pict "@S08"
                @vFIL,mCO0+106.2 Say FTM3CAN Font "&mLetAri",9 Style "BQI" Size 1,30.8 Pict "9,999,999,999,999.9999"
                @vFIL,mCO0+137.5 Say FTM3TO1 Font "&mLetAri",9 Style "BQI" Size 1,30.8 Pict "999,999,999,999,999.99"
                @vFIL,mCO0+169.0 Say FTM3TO2 Font "&mLetAri",9 Style "BQI" Size 1,30.8 Pict "999,999,999,999,999.99"
           ELSE
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",9 Style "NQ"  Size 1,26.9 Pict "@S25"
                @vFIL,mCO0+027.6 Say FTM3NOM Font "&mLetAri",9 Style "NQ"  Size 1,72.4 Pict "@S75"
                @vFIL,mCO0+100.6 Say FTM3NUV Font "&mLetAri",9 Style "NQ"  Size 1,05.0 Pict "@S08"
                @vFIL,mCO0+106.2 Say FTM3CAN Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "9,999,999,999,999.9999"
                DO CASE
                     CASE vsW6=1
                          @vFIL,mCO0+137.5 Say FTM3TO1 Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+169.0 Say FTM3TO2 Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "999,999,999,999,999.99"
                     CASE vsW6=2
                          @vFIL,mCO0+137.5 Say FTM3FA1 Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+169.0 Say FTM3FA2 Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "999,999,999,999,999.99"
                     CASE vsW6=3
                          @vFIL,mCO0+137.5 Say FTM3BO1 Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+169.0 Say FTM3BO2 Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "999,999,999,999,999.99"
                     CASE vsW6=4
                          @vFIL,mCO0+137.5 Say FTM3NP1 Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+169.0 Say FTM3NP2 Font "&mLetAri",9 Style "NQ"  Size 1,30.8 Pict "999,999,999,999,999.99"
                ENDCASE
           ENDIF
      CASE mrEs="3"
           IF ptIp="R1"
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",9 Style "BQI" Size 1,26.9  Pict "@S25"
                @vFIL,mCO0+027.6 Say FTM3NOM Font "&mLetAri",9 Style "BQI" Size 1,109.3 Pict "@S112"
                @vFIL,mCO0+137.5 Say FTM3TO1 Font "&mLetAri",9 Style "BQI" Size 1,030.8 Pict "999,999,999,999,999.99"
                @vFIL,mCO0+169.0 Say FTM3TO2 Font "&mLetAri",9 Style "BQI" Size 1,030.8 Pict "999,999,999,999,999.99"
           ELSE
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",9 Style "NQ"  Size 1,26.9  Pict "@S25"
                @vFIL,mCO0+027.6 Say FTM3NOM Font "&mLetAri",9 Style "NQ"  Size 1,109.3 Pict "@S112"
                DO CASE
                     CASE vsW6=1
                          @vFIL,mCO0+137.5 Say FTM3TO1 Font "&mLetAri",9 Style "NQ"  Size 1,030.8 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+169.0 Say FTM3TO2 Font "&mLetAri",9 Style "NQ"  Size 1,030.8 Pict "999,999,999,999,999.99"
                     CASE vsW6=2
                          @vFIL,mCO0+137.5 Say FTM3FA1 Font "&mLetAri",9 Style "NQ"  Size 1,030.8 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+169.0 Say FTM3FA2 Font "&mLetAri",9 Style "NQ"  Size 1,030.8 Pict "999,999,999,999,999.99"
                     CASE vsW6=3
                          @vFIL,mCO0+137.5 Say FTM3BO1 Font "&mLetAri",9 Style "NQ"  Size 1,030.8 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+169.0 Say FTM3BO2 Font "&mLetAri",9 Style "NQ"  Size 1,030.8 Pict "999,999,999,999,999.99"
                     CASE vsW6=4
                          @vFIL,mCO0+137.5 Say FTM3NP1 Font "&mLetAri",9 Style "NQ"  Size 1,030.8 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+169.0 Say FTM3NP2 Font "&mLetAri",9 Style "NQ"  Size 1,030.8 Pict "999,999,999,999,999.99"
                ENDCASE
           ENDIF
      CASE mrEs="4" .AND. voPc>6
           IF ptIp="R1"
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",10 Style "BQI" Size 1,26.6 Pict "@S25"
                @vFIL,mCO0+032.6 Say FTM3NOM Font "&mLetAri",10 Style "BQI" Size 1,99.5 Pict "@S102"
                @vFIL,mCO0+152.5 Say FTM3NUV Font "&mLetAri",10 Style "BQI" Size 1,04.1 Pict "@S07"
                @vFIL,mCO0+158.2 Say FTM3CAN Font "&mLetAri",10 Style "BQI" Size 1,25.6 Pict "9,999,999,999,999.9999"
                @vFIL,mCO0+189.5 Say FTM3TO1 Font "&mLetAri",10 Style "BQI" Size 1,25.6 Pict "999,999,999,999,999.99"
                @vFIL,mCO0+221.0 Say FTM3TO2 Font "&mLetAri",10 Style "BQI" Size 1,25.6 Pict "999,999,999,999,999.99"
           ELSE
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",10 Style "NQ"  Size 1,26.6 Pict "@S25"
                @vFIL,mCO0+032.6 Say FTM3NOM Font "&mLetAri",10 Style "NQ"  Size 1,99.5 Pict "@S102"
                @vFIL,mCO0+152.5 Say FTM3NUV Font "&mLetAri",10 Style "NQ"  Size 1,04.1 Pict "@S07"
                @vFIL,mCO0+158.2 Say FTM3CAN Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "9,999,999,999,999.9999"
                DO CASE
                     CASE vsW6=1
                          @vFIL,mCO0+189.5 Say FTM3TO1 Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+221.0 Say FTM3TO2 Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=2
                          @vFIL,mCO0+189.5 Say FTM3FA1 Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+221.0 Say FTM3FA2 Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=3
                          @vFIL,mCO0+189.5 Say FTM3BO1 Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+221.0 Say FTM3BO2 Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=4
                          @vFIL,mCO0+189.5 Say FTM3NP1 Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+221.0 Say FTM3NP2 Font "&mLetAri",10 Style "NQ"  Size 1,25.6 Pict "999,999,999,999,999.99"
                ENDCASE
           ENDIF
      CASE mrEs="4"
           IF ptIp="R1"
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",10 Style "BQI" Size 1,26.6  Pict "@S25"
                @vFIL,mCO0+032.6 Say FTM3NOM Font "&mLetAri",10 Style "BQI" Size 1,130.4 Pict "@S120"
                @vFIL,mCO0+189.5 Say FTM3TO1 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFIL,mCO0+221.0 Say FTM3TO2 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
           ELSE
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",10 Style "NQ" Size 1,26.6  Pict "@S25"
                @vFIL,mCO0+032.6 Say FTM3NOM Font "&mLetAri",10 Style "NQ" Size 1,130.4 Pict "@S120"
                DO CASE
                     CASE vsW6=1
                          @vFIL,mCO0+189.5 Say FTM3TO1 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+221.0 Say FTM3TO2 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=2
                          @vFIL,mCO0+189.5 Say FTM3FA1 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+221.0 Say FTM3FA2 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=3
                          @vFIL,mCO0+189.5 Say FTM3BO1 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+221.0 Say FTM3BO2 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=4
                          @vFIL,mCO0+189.5 Say FTM3NP1 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+221.0 Say FTM3NP2 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                ENDCASE
           ENDIF
      CASE voPc>6
           IF ptIp="R1"
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",10 Style "BQI" Size 1,30.8  Pict "@S25"
                @vFIL,mCO0+037.6 Say FTM3NOM Font "&mLetAri",10 Style "BQI" Size 1,109.6 Pict "@S112"
                @vFIL,mCO0+169.9 Say FTM3NUV Font "&mLetAri",10 Style "BQI" Size 1,004.1 Pict "@S07"
                @vFIL,mCO0+175.4 Say FTM3CAN Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "9,999,999,999,999.9999"
                @vFIL,mCO0+206.9 Say FTM3TO1 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFIL,mCO0+238.2 Say FTM3TO2 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
           ELSE
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",10 Style "NQ"  Size 1,30.8  Pict "@S25"
                @vFIL,mCO0+037.6 Say FTM3NOM Font "&mLetAri",10 Style "NQ"  Size 1,109.6 Pict "@S112"
                @vFIL,mCO0+169.9 Say FTM3NUV Font "&mLetAri",10 Style "NQ"  Size 1,004.1 Pict "@S07"
                @vFIL,mCO0+175.4 Say FTM3CAN Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "9,999,999,999,999.9999"
                DO CASE
                     CASE vsW6=1
                          @vFIL,mCO0+206.9 Say FTM3TO1 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+238.2 Say FTM3TO2 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=2
                          @vFIL,mCO0+206.9 Say FTM3FA1 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+238.2 Say FTM3FA2 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=3
                          @vFIL,mCO0+206.9 Say FTM3BO1 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+238.2 Say FTM3BO2 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=4
                          @vFIL,mCO0+206.9 Say FTM3NP1 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+238.2 Say FTM3NP2 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                ENDCASE
           ENDIF
      OTHERWISE
           IF ptIp="R1"
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",10 Style "BQI" Size 1,30.8  Pict "@S25"
                @vFIL,mCO0+037.6 Say FTM3NOM Font "&mLetAri",10 Style "BQI" Size 1,140.6 Pict "@S120"
                @vFIL,mCO0+206.9 Say FTM3TO1 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFIL,mCO0+238.2 Say FTM3TO2 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
           ELSE
                @vFIL,mCO0       Say FTM3COD Font "&mLetAri",10 Style "NQ"  Size 1,30.8  Pict "@S25"
                @vFIL,mCO0+037.6 Say FTM3NOM Font "&mLetAri",10 Style "NQ"  Size 1,140.6 Pict "@S120"
                DO CASE
                     CASE vsW6=1
                          @vFIL,mCO0+206.9 Say FTM3TO1 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+238.2 Say FTM3TO2 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=2
                          @vFIL,mCO0+206.9 Say FTM3FA1 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+238.2 Say FTM3FA2 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=3
                          @vFIL,mCO0+206.9 Say FTM3BO1 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+238.2 Say FTM3BO2 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                     CASE vsW6=4
                          @vFIL,mCO0+206.9 Say FTM3NP1 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                          @vFIL,mCO0+238.2 Say FTM3NP2 Font "&mLetAri",10 Style "NQ"  Size 1,025.6 Pict "999,999,999,999,999.99"
                ENDCASE
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Lin_1300c
 PARAMETER piNi, pfIn
 DO coLsc3
 DO CASE
      CASE mrEs="3" .AND. voPc>6
           @ piNi, mcO0+027.1 TO pfIn, mcO0+027.1
           @ piNi, mcO0+100.2 TO pfIn, mcO0+100.2
      CASE mrEs="3"
           @ piNi, mcO0+027.1 TO pfIn, mcO0+027.1
      CASE mrEs="4" .AND. voPc>6
           @ piNi, mcO0+032.1 TO pfIn, mcO0+032.1
           @ piNi, mcO0+152.1 TO pfIn, mcO0+152.1
      CASE mrEs="4"
           @ piNi, mcO0+032.1 TO pfIn, mcO0+032.1
      CASE voPc>6
           @ piNi, mcO0+037.1 TO pfIn, mcO0+037.1
           @ piNi, mcO0+169.5 TO pfIn, mcO0+169.5
      OTHERWISE
           @ piNi, mcO0+037.1 TO pfIn, mcO0+037.1
 ENDCASE
ENDPROC
*
PROCEDURE Li1_1300c
 PARAMETER piNi, pfIn
 DO coLsc3
 DO CASE
      CASE mrEs="3" .AND. voPc>6
           @ piNi, mcO0+105.8 TO pfIn, mcO0+105.8
           @ piNi, mcO0+137.1 TO pfIn, mcO0+137.1
           @ piNi, mcO0+168.6 TO pfIn, mcO0+168.6
      CASE mrEs="3"
           @ piNi, mcO0+137.1 TO pfIn, mcO0+137.1
           @ piNi, mcO0+168.6 TO pfIn, mcO0+168.6
      CASE mrEs="4" .AND. voPc>6
           @ piNi, mcO0+157.8 TO pfIn, mcO0+157.8
           @ piNi, mcO0+189.1 TO pfIn, mcO0+189.1
           @ piNi, mcO0+220.6 TO pfIn, mcO0+220.6
      CASE mrEs="4"
           @ piNi, mcO0+189.1 TO pfIn, mcO0+189.1
           @ piNi, mcO0+220.6 TO pfIn, mcO0+220.6
      CASE voPc>6
           @ piNi, mcO0+175.0 TO pfIn, mcO0+175.0
           @ piNi, mcO0+206.4 TO pfIn, mcO0+206.4
           @ piNi, mcO0+237.8 TO pfIn, mcO0+237.8
      OTHERWISE
           @ piNi, mcO0+206.4 TO pfIn, mcO0+206.4
           @ piNi, mcO0+237.8 TO pfIn, mcO0+237.8
 ENDCASE
ENDPROC
*
PROCEDURE P00_1300c
 RESTORE SCREEN FROM vpAn_99
 DO CASE
      CASE voPc=2
           STORE 6 TO vuLt
           STORE "Clientes" TO vtTt
      CASE voPc=3
           STORE 7 TO vuLt
           STORE "Tipos de Clientes" TO vtTt
      CASE voPc=4
           STORE 7 TO vuLt
           STORE "Vendedores" TO vtTt
      CASE voPc=5
           STORE 8 TO vuLt
           STORE "Formas de Pago" TO vtTt
      CASE voPc=6
           STORE 7 TO vuLt
           STORE "Tipos de Productos" TO vtTt
      CASE voPc=7
           STORE 6 TO vuLt
           STORE "Productos,Servicios" TO vtTt
      CASE voPc=8
           STORE 6 TO vuLt
           STORE "Productos Nacionales" TO vtTt
      CASE voPc=9
           STORE 6 TO vuLt
           STORE "Productos Importados" TO vtTt
      CASE voPc=10
           STORE 6 TO vuLt
           STORE "Servicios" TO vtTt
 ENDCASE
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL1", mmF1+2, 3.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH ifIl-3.7, mcO0, ffIl+3.5, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifIl-1.8, mcO0-0.8 TO ifIl-0.4, mcO0+muCo+0.5 PATTERN 1
 @ ffIl+1.6, mcO0-0.8 TO ffIl+3.4, mcO0+muCo+0.5 PATTERN 1
 @fFIL+3.8,mCO0+mUCO-83 Say "Reporte de Ventas del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
 DO liN_1300c WITH ifIl-1.8, ffIl+1.6
 DO li1_1300c WITH ifIl-1.8, ffIl+3.4
 DO CASE
      CASE mrEs="3" .AND. voPc>6
           @iFIL-1.7,mCO0+001.2 Say "Código"   Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+029.6 Say vTTT       Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+100.6 Say "Und"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+116.1 Say "Cantidad" Font "&mLetAri",10 Style "BQ"
           @fFIL+1.9,mCO0+092.0 Say "TOTALES:" Font "&mLetAri",10 Style "BQ"
      CASE mrEs="3"
           @iFIL-1.7,mCO0+001.2 Say "Código"   Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+029.6 Say vTTT       Font "&mLetAri",10 Style "BQ"
           @fFIL+1.9,mCO0+103.0 Say "TOTALES:" Font "&mLetAri",10 Style "BQ"
      CASE mrEs="4" .AND. voPc>6
           @iFIL-1.7,mCO0+001.2 Say "Código"   Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+034.6 Say vTTT       Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+152.5 Say "Und"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+168.1 Say "Cantidad" Font "&mLetAri",10 Style "BQ"
           @fFIL+1.9,mCO0+144.0 Say "TOTALES:" Font "&mLetAri",10 Style "BQ"
      CASE mrEs="4"
           @iFIL-1.7,mCO0+001.2 Say "Código"   Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+040.0 Say vTTT       Font "&mLetAri",10 Style "BQ"
           @fFIL+1.9,mCO0+171.0 Say "TOTALES:" Font "&mLetAri",10 Style "BQ"
      CASE voPc>6
           @iFIL-1.7,mCO0+001.2 Say "Código"   Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+040.0 Say vTTT       Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+169.9 Say "Und"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+185.1 Say "Cantidad" Font "&mLetAri",10 Style "BQ"
           @fFIL+1.9,mCO0+162.0 Say "TOTALES:" Font "&mLetAri",10 Style "BQ"
      OTHERWISE
           @iFIL-1.7,mCO0+001.2 Say "Código"   Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+040.0 Say vTTT       Font "&mLetAri",10 Style "BQ"
           @fFIL+1.9,mCO0+192.0 Say "TOTALES:" Font "&mLetAri",10 Style "BQ"
 ENDCASE
 DO tiT_1300c
 DO p01_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO toT_1300c
 DO boT_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO bt1_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tit_1300c
 DO coLsc3
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE vsW6=1
                     @iFIL-1.7,mCO0+146.1 Say "Total en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+176.8 Say "Total en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=2
                     @iFIL-1.7,mCO0+146.1 Say "Fact. en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+176.8 Say "Fact. en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=3
                     @iFIL-1.7,mCO0+146.1 Say "Bolet.en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+176.8 Say "Bolet.en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=4
                     @iFIL-1.7,mCO0+146.1 Say "  NP en S/. " Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+176.8 Say " NP en US$  " Font "&mLetAri",10 Style "BQ" Size 1,12.4
           ENDCASE
      CASE mrEs="4"
           DO CASE
                CASE vsW6=1
                     @iFIL-1.7,mCO0+197.1 Say "Total en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+227.8 Say "Total en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=2
                     @iFIL-1.7,mCO0+197.1 Say "Fact. en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+227.8 Say "Fact. en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=3
                     @iFIL-1.7,mCO0+197.1 Say "Bolet.en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+227.8 Say "Bolet.en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=4
                     @iFIL-1.7,mCO0+197.1 Say "  NP en S/. " Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+227.8 Say " NP en US$  " Font "&mLetAri",10 Style "BQ" Size 1,12.4
           ENDCASE
      OTHERWISE
           DO CASE
                CASE vsW6=1
                     @iFIL-1.7,mCO0+216.1 Say "Total en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+246.8 Say "Total en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=2
                     @iFIL-1.7,mCO0+216.1 Say "Fact. en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+246.8 Say "Fact. en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=3
                     @iFIL-1.7,mCO0+216.1 Say "Bolet.en S/." Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+246.8 Say "Bolet.en US$" Font "&mLetAri",10 Style "BQ" Size 1,12.4
                CASE vsW6=4
                     @iFIL-1.7,mCO0+216.1 Say "  NP en S/. " Font "&mLetAri",10 Style "BQ" Size 1,12.4
                     @iFIL-1.7,mCO0+246.8 Say " NP en US$  " Font "&mLetAri",10 Style "BQ" Size 1,12.4
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Bot_1300c
 PRIVATE piNi, puLt
 STORE mcO0+0.1 TO piNi
 STORE 1 TO puLt
 DO WHILE .T.
      DO prEsiona WITH "1", "CUADRO", ifIl-3.6, piNi
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF puLt=vuLt
           EXIT
      ENDIF
      STORE puLt+1 TO puLt
      STORE piNi+15 TO piNi
 ENDDO
 DO coLbln
 @iFIL-3.5,mCO0+1.6 Say "General" Font "&mLetAri",10 Style "BT"
 IF vsW3=1
      DO coLblv
      @iFIL-3.5,mCO0+1.6 Say "General" Font "&mLetAri",10 Style "BT"
      STORE 0 TO csW3
 ENDIF
 DO coLbln
 DO CASE
      CASE voPc=2
           @iFIL-3.5,mCO0+16.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+31.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+46.6 Say "Product" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+61.6 Say "Servici" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+76.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
           DO coLblv
           DO CASE
                CASE vsW3=2
                     @iFIL-3.5,mCO0+16.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 1 TO csW3
                CASE vsW3=3
                     @iFIL-3.5,mCO0+31.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 2 TO csW3
                CASE vsW3=4
                     @iFIL-3.5,mCO0+46.6 Say "Product" Font "&mLetAri",10 Style "BT"
                     STORE 3 TO csW3
                CASE vsW3=5
                     @iFIL-3.5,mCO0+61.6 Say "Servici" Font "&mLetAri",10 Style "BT"
                     STORE 4 TO csW3
                CASE vsW3=6
                     @iFIL-3.5,mCO0+76.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
                     STORE 5 TO csW3
           ENDCASE
      CASE voPc=3
           @iFIL-3.5,mCO0+16.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+31.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+46.6 Say "Product" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+61.6 Say "Servici" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+76.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+91.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
           DO coLblv
           DO CASE
                CASE vsW3=2
                     @iFIL-3.5,mCO0+16.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 1 TO csW3
                CASE vsW3=3
                     @iFIL-3.5,mCO0+31.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 2 TO csW3
                CASE vsW3=4
                     @iFIL-3.5,mCO0+46.6 Say "Product" Font "&mLetAri",10 Style "BT"
                     STORE 3 TO csW3
                CASE vsW3=5
                     @iFIL-3.5,mCO0+61.6 Say "Servici" Font "&mLetAri",10 Style "BT"
                     STORE 4 TO csW3
                CASE vsW3=6
                     @iFIL-3.5,mCO0+76.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
                     STORE 6 TO csW3
                CASE vsW3=7
                     @iFIL-3.5,mCO0+91.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
                     STORE 5 TO csW3
           ENDCASE
      CASE voPc=4
           @iFIL-3.5,mCO0+16.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+31.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+46.6 Say "Product" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+61.6 Say "Servici" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+76.6 Say "Tip.Cli" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+91.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
           DO coLblv
           DO CASE
                CASE vsW3=2
                     @iFIL-3.5,mCO0+16.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 1 TO csW3
                CASE vsW3=3
                     @iFIL-3.5,mCO0+31.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 2 TO csW3
                CASE vsW3=4
                     @iFIL-3.5,mCO0+46.6 Say "Product" Font "&mLetAri",10 Style "BT"
                     STORE 3 TO csW3
                CASE vsW3=5
                     @iFIL-3.5,mCO0+61.6 Say "Servici" Font "&mLetAri",10 Style "BT"
                     STORE 4 TO csW3
                CASE vsW3=6
                     @iFIL-3.5,mCO0+76.6 Say "Tip.Cli" Font "&mLetAri",10 Style "BT"
                     STORE 7 TO csW3
                CASE vsW3=7
                     @iFIL-3.5,mCO0+91.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
                     STORE 6 TO csW3
           ENDCASE
      CASE voPc=5
           @iFIL-3.5,mCO0+016.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+031.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+046.6 Say "Product" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+061.6 Say "Servici" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+076.6 Say "Tip.Cli" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+091.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+106.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
           DO coLblv
           DO CASE
                CASE vsW3=2
                     @iFIL-3.5,mCO0+016.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 1 TO csW3
                CASE vsW3=3
                     @iFIL-3.5,mCO0+031.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 2 TO csW3
                CASE vsW3=4
                     @iFIL-3.5,mCO0+046.6 Say "Product" Font "&mLetAri",10 Style "BT"
                     STORE 3 TO csW3
                CASE vsW3=5
                     @iFIL-3.5,mCO0+061.6 Say "Servici" Font "&mLetAri",10 Style "BT"
                     STORE 4 TO csW3
                CASE vsW3=6
                     @iFIL-3.5,mCO0+076.6 Say "Tip.Cli" Font "&mLetAri",10 Style "BT"
                     STORE 7 TO csW3
                CASE vsW3=7
                     @iFIL-3.5,mCO0+091.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
                     STORE 6 TO csW3
                CASE vsW3=8
                     @iFIL-3.5,mCO0+106.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
                     STORE 5 TO csW3
           ENDCASE
      CASE voPc=6
           @iFIL-3.5,mCO0+16.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+31.6 Say "Product" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+46.6 Say "Servici" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+61.6 Say "Tip.Cli" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+76.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+91.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
           DO coLblv
           DO CASE
                CASE vsW3=2
                     @iFIL-3.5,mCO0+16.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 2 TO csW3
                CASE vsW3=3
                     @iFIL-3.5,mCO0+31.6 Say "Product" Font "&mLetAri",10 Style "BT"
                     STORE 3 TO csW3
                CASE vsW3=4
                     @iFIL-3.5,mCO0+46.6 Say "Servici" Font "&mLetAri",10 Style "BT"
                     STORE 4 TO csW3
                CASE vsW3=5
                     @iFIL-3.5,mCO0+61.6 Say "Tip.Cli" Font "&mLetAri",10 Style "BT"
                     STORE 7 TO csW3
                CASE vsW3=6
                     @iFIL-3.5,mCO0+76.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
                     STORE 6 TO csW3
                CASE vsW3=7
                     @iFIL-3.5,mCO0+91.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
                     STORE 5 TO csW3
           ENDCASE
      CASE voPc=7 .OR. voPc=8 .OR. voPc=9 .OR. voPc=10
           @iFIL-3.5,mCO0+16.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+31.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+46.6 Say "Tip.Cli" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+61.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
           @iFIL-3.5,mCO0+76.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
           DO coLblv
           DO CASE
                CASE vsW3=2
                     @iFIL-3.5,mCO0+16.6 Say "Tip.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 1 TO csW3
                CASE vsW3=3
                     @iFIL-3.5,mCO0+31.6 Say "Gru.Prd" Font "&mLetAri",10 Style "BT"
                     STORE 2 TO csW3
                CASE vsW3=4
                     @iFIL-3.5,mCO0+46.6 Say "Tip.Cli" Font "&mLetAri",10 Style "BT"
                     STORE 7 TO csW3
                CASE vsW3=5
                     @iFIL-3.5,mCO0+61.6 Say "Cliente" Font "&mLetAri",10 Style "BT"
                     STORE 6 TO csW3
                CASE vsW3=6
                     @iFIL-3.5,mCO0+76.6 Say "Vendedo" Font "&mLetAri",10 Style "BT"
                     STORE 5 TO csW3
           ENDCASE
 ENDCASE
 RELEASE piNi, puLt
ENDPROC
*
PROCEDURE Tot_1300c
 DO coLsc3
 DO CASE
      CASE mrEs="3"
           IF voPc>6
                @fFIL+1.9,mCO0+106.2 Say tCAN Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "99999,999,999,999.9999"
           ENDIF
           DO CASE
                CASE vsW6=1
                     @fFIL+1.9,mCO0+137.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "999,999,999,999,999.99"
                     @fFIL+1.9,mCO0+169.0 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "999,999,999,999,999.99"
                CASE vsW6=2
                     @fFIL+1.9,mCO0+137.6 Say tFA1 Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "999,999,999,999,999.99"
                     @fFIL+1.9,mCO0+169.0 Say tFA2 Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "999,999,999,999,999.99"
                CASE vsW6=3
                     @fFIL+1.9,mCO0+137.6 Say tBO1 Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "999,999,999,999,999.99"
                     @fFIL+1.9,mCO0+169.0 Say tBO2 Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "999,999,999,999,999.99"
                CASE vsW6=4
                     @fFIL+1.9,mCO0+137.6 Say tNP1 Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "999,999,999,999,999.99"
                     @fFIL+1.9,mCO0+169.0 Say tNP2 Font "&mLetAri",9 Style "BQ" Size 1,25.6 Pict "999,999,999,999,999.99"
           ENDCASE
      CASE mrEs="4"
           IF voPc>6
                @fFIL+1.9,mCO0+158.2 Say tCAN Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "9999,999,999,999.9999"
           ENDIF
           DO CASE
                CASE vsW6=1
                     @fFIL+1.9,mCO0+189.5 Say tSOL Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                     @fFIL+1.9,mCO0+221.0 Say tUSD Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                CASE vsW6=2
                     @fFIL+1.9,mCO0+189.5 Say tFA1 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                     @fFIL+1.9,mCO0+221.0 Say tFA2 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                CASE vsW6=3
                     @fFIL+1.9,mCO0+189.5 Say tBO1 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                     @fFIL+1.9,mCO0+221.0 Say tBO2 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                CASE vsW6=4
                     @fFIL+1.9,mCO0+189.5 Say tNP1 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                     @fFIL+1.9,mCO0+221.0 Say tNP2 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
           ENDCASE
      OTHERWISE
           IF voPc>6
                @fFIL+1.9,mCO0+175.4 Say tCAN Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "9999,999,999,999.9999"
           ENDIF
           DO CASE
                CASE vsW6=1
                     @fFIL+1.9,mCO0+206.9 Say tSOL Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                     @fFIL+1.9,mCO0+238.2 Say tUSD Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                CASE vsW6=2
                     @fFIL+1.9,mCO0+206.9 Say tFA1 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                     @fFIL+1.9,mCO0+238.2 Say tFA2 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                CASE vsW6=3
                     @fFIL+1.9,mCO0+206.9 Say tBO1 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                     @fFIL+1.9,mCO0+238.2 Say tBO2 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                CASE vsW6=4
                     @fFIL+1.9,mCO0+206.9 Say tNP1 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
                     @fFIL+1.9,mCO0+238.2 Say tNP2 Font "&mLetAri",10 Style "BQ" Size 1,25.6 Pict "99,999,999,999,999.99"
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE P01_1300c
 DO CASE
      CASE mrEs="3"
           STORE mcO0+027.6 TO vcL1
           STORE mcO0+135.0 TO vcL2
           STORE mcO0+166.4 TO vcL3
           STORE mcO0+198.4 TO vcL4
      CASE mrEs="4"
           STORE mcO0+032.6 TO vcL1
           STORE mcO0+187.1 TO vcL2
           STORE mcO0+218.7 TO vcL3
           STORE mcO0+250.1 TO vcL4
      OTHERWISE
           STORE mcO0+038.0 TO vcL1
           STORE mcO0+204.1 TO vcL2
           STORE mcO0+236.0 TO vcL3
           STORE mcO0+267.1 TO vcL4
 ENDCASE
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF voPc>6
      DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL2
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLplp
 DO CASE
      CASE vsW0=1
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL1
      CASE vsW0=2
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL2
      CASE vsW0=3
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL3
      CASE vsW0=4
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF voPc>6
      @iFIL-3,vCL2-8 Say "Orden:" Font "&mLetAri",9 Style "BT"
      DO prEsiona WITH "3", "CONSU3", ifIl-3, vcL2
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 @iFIL-3,vCL3-8 Say "Orden:" Font "&mLetAri",9 Style "BT"
 @iFIL-3,vCL4-8 Say "Orden:" Font "&mLetAri",9 Style "BT"
 DO prEsiona WITH "3", "CONSU3", ifIl-3, vcL3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-3, vcL4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=2 .AND. csW0=1
           DO coL_fondo
           @iFIL-3,vCL2-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU3", ifIl-3, vcL2
      CASE vsW0=2 .AND. csW0=2
           DO coL_fondo
           @iFIL-3,vCL2-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU4", ifIl-3, vcL2
      CASE vsW0=3 .AND. csW0=1
           DO coL_fondo
           @iFIL-3,vCL3-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU3", ifIl-3, vcL3
      CASE vsW0=3 .AND. csW0=2
           DO coL_fondo
           @iFIL-3,vCL3-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU4", ifIl-3, vcL3
      CASE vsW0=4 .AND. csW0=1
           DO coL_fondo
           @iFIL-3,vCL4-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU3", ifIl-3, vcL4
      CASE vsW0=4 .AND. csW0=2
           DO coL_fondo
           @iFIL-3,vCL4-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU4", ifIl-3, vcL4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bt1_1300c
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifIl-3.5, vcL2-18.2
 DO CASE
      CASE voPc>6
           @iFIL-3.3,vCL2-16 Say StrTran(Str(vSW0,1,0)," ","0")+"/4" Font "&mLetRom",9 Style "BT"
      OTHERWISE
           IF vsW0=1
                @iFIL-3.3,vCL2-16 Say StrTran(Str(vSW0,1,0)," ","0")+"/3" Font "&mLetRom",9 Style "BT"
           ELSE
                @iFIL-3.3,vCL2-16 Say StrTran(Str(vSW0-1,1,0)," ","0")+"/3" Font "&mLetRom",9 Style "BT"
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Cam_1300c
 DO p01_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=1
           SET ORDER TO FTM3NOM
      CASE vsW0=2 .AND. csW0=1
           SET ORDER TO FTM3CAN ASCENDING
      CASE vsW0=2 .AND. csW0=2
           SET ORDER TO FTM3CAN DESCENDING
      CASE vsW0=3 .AND. csW0=1
           SET ORDER TO FTM3TO1 ASCENDING
      CASE vsW0=3 .AND. csW0=2
           SET ORDER TO FTM3TO1 DESCENDING
      CASE vsW0=4 .AND. csW0=1
           SET ORDER TO FTM3TO2 ASCENDING
      CASE vsW0=4 .AND. csW0=2
           SET ORDER TO FTM3TO2 DESCENDING
 ENDCASE
 GOTO TOP
 DO seE_1300c WITH "i"
 DO paN_1300c
 STORE ifIl TO vfIl
 DO muE_1300c WITH "i", "v"
 DO seE_1300c WITH "v"
 DO diS_1300c WITH "R"
ENDPROC
*
PROCEDURE See_1300c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK UPPER(vnOm)+ALLTRIM(vcOd)+"*"
                CASE vsW0=2
                     SEEK STR(vcAn, 16, 4)+UPPER(vnOm)+ALLTRIM(vcOd)+"*"
                CASE vsW0=3
                     SEEK STR(vtO1, 16, 2)+UPPER(vnOm)+ALLTRIM(vcOd)+"*"
                CASE vsW0=4
                     SEEK STR(vtO2, 16, 2)+UPPER(vnOm)+ALLTRIM(vcOd)+"*"
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK UPPER(inOm)+ALLTRIM(icOd)+"*"
                CASE vsW0=2
                     SEEK STR(icAn, 16, 4)+UPPER(inOm)+ALLTRIM(icOd)+"*"
                CASE vsW0=3
                     SEEK STR(itO1, 16, 2)+UPPER(inOm)+ALLTRIM(icOd)+"*"
                CASE vsW0=4
                     SEEK STR(itO2, 16, 2)+UPPER(inOm)+ALLTRIM(icOd)+"*"
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK UPPER(unOm)+ALLTRIM(ucOd)+"*"
                CASE vsW0=2
                     SEEK STR(utO1, 16, 4)+UPPER(unOm)+ALLTRIM(ucOd)+"*"
                CASE vsW0=3
                     SEEK STR(utO1, 16, 2)+UPPER(unOm)+ALLTRIM(ucOd)+"*"
                CASE vsW0=4
                     SEEK STR(itO2, 16, 2)+UPPER(unOm)+ALLTRIM(ucOd)+"*"
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1300c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcOd TO xcOd
           STORE vnOm TO xnOm
           STORE vcAn TO xcAn
           STORE vtO1 TO xtO1
           STORE vtO2 TO xtO2
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcOd TO vcOd
           STORE xnOm TO vnOm
           STORE xcAn TO vcAn
           STORE xtO1 TO vtO1
           STORE xtO2 TO vtO2
      CASE pmU1="i" .AND. pmU2="y"
           STORE icOd TO ycOd
           STORE inOm TO ynOm
           STORE icAn TO ycAn
           STORE itO1 TO ytO1
           STORE itO2 TO ytO2
      CASE pmU1="y" .AND. pmU2="i"
           STORE ycOd TO icOd
           STORE ynOm TO inOm
           STORE ycAn TO icAn
           STORE ytO1 TO itO1
           STORE ytO2 TO itO2
      CASE pmU1="u" .AND. pmU2="z"
           STORE ucOd TO zcOd
           STORE unOm TO znOm
           STORE ucAn TO zcAn
           STORE utO1 TO ztO1
           STORE utO2 TO ztO2
      CASE pmU1="z" .AND. pmU2="u"
           STORE zcOd TO ucOd
           STORE znOm TO unOm
           STORE zcAn TO ucAn
           STORE ztO1 TO utO1
           STORE ztO2 TO utO2
      CASE pmU1="i" .AND. pmU2="v"
           STORE icOd TO vcOd
           STORE inOm TO vnOm
           STORE icAn TO vcAn
           STORE itO1 TO vtO1
           STORE itO2 TO vtO2
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucOd TO vcOd
           STORE unOm TO vnOm
           STORE ucAn TO vcAn
           STORE utO1 TO vtO1
           STORE utO2 TO vtO2
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM3cod TO vcOd
           STORE ftM3nom TO vnOm
           STORE ftM3can TO vcAn
           STORE ftM3to1 TO vtO1
           STORE ftM3to2 TO vtO2
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM3cod TO ucOd
           STORE ftM3nom TO unOm
           STORE ftM3can TO ucAn
           STORE ftM3to1 TO utO1
           STORE ftM3to2 TO utO2
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM3cod TO icOd
           STORE ftM3nom TO inOm
           STORE ftM3can TO icAn
           STORE ftM3to1 TO itO1
           STORE ftM3to2 TO itO2
 ENDCASE
ENDPROC
*
PROCEDURE Res_1300c
 DO p00_1300a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_3
 DO CASE
      CASE vsW0=1
           SET ORDER TO FTM3NOM
      CASE vsW0=2 .AND. csW0=1
           SET ORDER TO FTM3CAN ASCENDING
      CASE vsW0=2 .AND. csW0=2
           SET ORDER TO FTM3CAN DESCENDING
      CASE vsW0=3 .AND. csW0=1
           SET ORDER TO FTM3TO1 ASCENDING
      CASE vsW0=3 .AND. csW0=2
           SET ORDER TO FTM3TO1 DESCENDING
      CASE vsW0=4 .AND. csW0=1
           SET ORDER TO FTM3TO2 ASCENDING
      CASE vsW0=4 .AND. csW0=2
           SET ORDER TO FTM3TO2 DESCENDING
 ENDCASE
 DO seE_1300c WITH "i"
 DO paN_1300c
 DO seE_1300c WITH "i"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF ALLTRIM(vcOd)+"*"=ALLTRIM(ftM3cod)+"*"
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      DO muE_1300c WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO seE_1300c WITH "v"
 DO muE_1300c WITH "F", "v"
 DO diS_1300c WITH "R"
ENDPROC
*
PROCEDURE XlF_1300c
 DO CASE
      CASE csW3=1
           SELECT teMporal_4
      CASE csW3=2
           SELECT teMporal_5
      CASE csW3=3
           SELECT teMporal_6
      CASE csW3=4
           SELECT teMporal_7
      CASE csW3=5
           SELECT teMporal_8
      CASE csW3=6
           SELECT teMporal_9
      CASE csW3=7
           SELECT teMporal_10
 ENDCASE
ENDPROC
*
PROCEDURE Xls_1300c
 PARAMETER ptPo
 PRIVATE pcOd, ptIt, pnUm
 STORE vtTt TO ptIt
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 IF csW3>0
      DO CASE
           CASE csW3=1
                STORE ptIt+"/"+"Tipos de Productos" TO ptIt
           CASE csW3=2
                STORE ptIt+"/"+"Grupos de Productos" TO ptIt
           CASE csW3=3
                STORE ptIt+"/"+"Productos" TO ptIt
           CASE csW3=4
                STORE ptIt+"/"+"Servicios" TO ptIt
           CASE csW3=5
                STORE ptIt+"/"+"Vendedores" TO ptIt
           CASE csW3=6
                STORE ptIt+"/"+"Clientes" TO ptIt
           CASE csW3=7
                STORE ptIt+"/"+"Tipos de Clientes" TO ptIt
      ENDCASE
 ENDIF
 DO CASE
      CASE ptPo="1"
           DO xl0_0000a WITH ptIt+": "+DTOC(dfEm)+" hasta "+DTOC(hfEm),  ;
              "Resumen", 13
      CASE ptPo="2"
           DO xl0_0000a WITH ptIt+": "+DTOC(dfEm)+" hasta "+DTOC(hfEm),  ;
              "Detallado", 26
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 01).vaLue = vtTt
 pxLs.ceLls(3, 06).vaLue = "Totales en S/."
 pxLs.ceLls(3, 07).vaLue = "Totales en US$"
 pxLs.ceLls(3, 08).vaLue = "Facturas en S/."
 pxLs.ceLls(3, 09).vaLue = "Facturas en US$"
 pxLs.ceLls(3, 10).vaLue = "Boletas en S/."
 pxLs.ceLls(3, 11).vaLue = "Boletas en US$"
 pxLs.ceLls(3, 12).vaLue = "NP en S/."
 pxLs.ceLls(3, 13).vaLue = "NP en US$"
 IF voPc>6 .OR. csW3=3 .OR. csW3=4
      pxLs.ceLls(3, 4).vaLue = "Unidad"
      pxLs.ceLls(3, 5).vaLue = "Cantidad"
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,3)).meRge
 ELSE
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,5)).meRge
 ENDIF
 pxLs.ceLls(3, 1).hoRizontalalignment = 2
 pxLs.coLumns(5).nuMberformat = "###,###,###,##0.0000"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(04)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(6), pxLs.coLumns(13)).nuMberformat =  ;
           "###,###,###,##0.00"
 IF ptPo="2"
      pxLs.ceLls(3, 15).vaLue = "Documento"
      pxLs.ceLls(3, 18).vaLue = "Emisión"
      pxLs.ceLls(3, 19).vaLue = "Vencimiento"
      pxLs.ceLls(3, 20).vaLue = "Cliente"
      pxLs.ceLls(3, 21).vaLue = "RUC"
      pxLs.ceLls(3, 22).vaLue = "Titular"
      pxLs.ceLls(3, 23).vaLue = "Vendedor"
      pxLs.ceLls(3, 24).vaLue = "Forma de Pago"
      pxLs.ceLls(3, 25).vaLue = "Mon"
      pxLs.ceLls(3, 26).vaLue = "Total"
      pxLs.raNge(pxLs.ceLls(3,15), pxLs.ceLls(3,17)).meRge
      pxLs.raNge(pxLs.ceLls(3,15), pxLs.ceLls(3,17)).hoRizontalalignment = 2
      pxLs.raNge(pxLs.coLumns(15), pxLs.coLumns(25)).nuMberformat = "@"
      pxLs.coLumns(26).nuMberformat = "###,###,###,##0.00"
 ENDIF
 IF csW3>0
      DO xlF_1300c
      SET ORDER TO FTM4DCR
 ENDIF
 SELECT teMporal_3
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      STORE ftM3cod TO pcOd
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 1).vaLue = ALLTRIM(ftM3cod)
      pxLs.ceLls(viT1, 2).vaLue = ftM3nom
      IF voPc>6
           pxLs.ceLls(viT1, 4).vaLue = ALLTRIM(ftM3nuv)
           pxLs.raNge(pxLs.ceLls(viT1,2), pxLs.ceLls(viT1,3)).meRge
      ELSE
           pxLs.raNge(pxLs.ceLls(viT1,2), pxLs.ceLls(viT1,5)).meRge
      ENDIF
      IF csW3>0
           pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1,4)).foNt.boLd = .T.
           STORE viT1+1 TO viT1
           IF meN1>=meNn
                EXIT
           ENDIF
           STORE meN1+1 TO meN1
           DO xlF_1300c
           GOTO TOP
           SEEK ALLTRIM(pcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(pcOd)+"*"
                pxLs.ceLls(viT1, 1).seLect
                pxLs.ceLls(viT1, 2).vaLue = ALLTRIM(ftM4cdg)
                pxLs.ceLls(viT1, 3).vaLue = ftM4dcr
                pxLs.ceLls(viT1, 6).vaLue = ftM4tt1
                pxLs.ceLls(viT1, 7).vaLue = ftM4tt2
                IF csW3=3 .OR. csW3=4
                     pxLs.ceLls(viT1, 4).vaLue = ALLTRIM(ftM4nuv)
                ENDIF
                IF voPc>6 .OR. csW3=3 .OR. csW3=4
                     pxLs.ceLls(viT1, 5).vaLue = ftM4ctd
                ENDIF
                STORE viT1+1 TO viT1
                IF meN1>=meNn
                     EXIT
                ENDIF
                STORE meN1+1 TO meN1
                SKIP
           ENDDO
           IF meN1>=meNn
                EXIT
           ENDIF
      ENDIF
      SELECT teMporal_3
      pxLs.ceLls(viT1, 06).vaLue = ftM3to1
      pxLs.ceLls(viT1, 07).vaLue = ftM3to2
      pxLs.ceLls(viT1, 08).vaLue = ftM3fa1
      pxLs.ceLls(viT1, 09).vaLue = ftM3fa2
      pxLs.ceLls(viT1, 10).vaLue = ftM3bo1
      pxLs.ceLls(viT1, 11).vaLue = ftM3bo2
      pxLs.ceLls(viT1, 12).vaLue = ftM3np1
      pxLs.ceLls(viT1, 13).vaLue = ftM3np2
      IF voPc>6 .OR. csW3=3 .OR. csW3=4
           pxLs.ceLls(viT1, 5).vaLue = ftM3can
      ENDIF
      DO CASE
           CASE csW3=0 .AND. ptPo="2"
                STORE 0 TO tsO1, tuS1, ttT1, ttT2
                DO leE_1300e IN PVR1300E WITH pcOd, " "
                SELECT teMporal_2
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 15).vaLue = ftM2tdo
                     pxLs.ceLls(viT1, 16).vaLue = ftM2ser
                     pxLs.ceLls(viT1, 17).vaLue = ftM2doc
                     pxLs.ceLls(viT1, 18).vaLue = DTOC(ftM2fem)
                     pxLs.ceLls(viT1, 19).vaLue = DTOC(ftM2fve)
                     pxLs.ceLls(viT1, 20).vaLue = ftM2nom
                     pxLs.ceLls(viT1, 21).vaLue = ftM2ruc
                     pxLs.ceLls(viT1, 22).vaLue = ftM2ntt
                     pxLs.ceLls(viT1, 23).vaLue = ftM2nve
                     pxLs.ceLls(viT1, 24).vaLue = ftM2nfp
                     pxLs.ceLls(viT1, 25).vaLue = ftM2sig
                     pxLs.ceLls(viT1, 26).vaLue = ftM2tot
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                IF meN1>=meNn
                     EXIT
                ENDIF
                SELECT teMporal_3
           CASE csW3<>0
                pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1, ;
                          7)).foNt.boLd = .T.
                STORE viT1+1 TO viT1
                IF meN1>=meNn
                     EXIT
                ENDIF
                STORE meN1+1 TO meN1
      ENDCASE
      STORE viT1+1 TO viT1
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 IF meN1<meNn
      STORE viT1+1 TO viT1
      IF voPc>6
           pxLs.ceLls(viT1, 05).vaLue = tcAn
           STORE 5 TO pnUm
      ELSE
           STORE 6 TO pnUm
      ENDIF
      pxLs.ceLls(viT1, 06).vaLue = tsOl
      pxLs.ceLls(viT1, 07).vaLue = tuSd
      pxLs.ceLls(viT1, 08).vaLue = tfA1
      pxLs.ceLls(viT1, 09).vaLue = tfA2
      pxLs.ceLls(viT1, 10).vaLue = tbO1
      pxLs.ceLls(viT1, 11).vaLue = tbO2
      pxLs.ceLls(viT1, 12).vaLue = tnP1
      pxLs.ceLls(viT1, 13).vaLue = tnP2
      WITH pxLs.raNge(pxLs.ceLls(viT1,pnUm),pxLs.ceLls(viT1,13))
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
 ENDIF
 DO xl1_0000a WITH 1
 WAIT CLEAR
 SELECT teMporal_3
 DO seE_1300c WITH "v"
 RELEASE pcOd, ptIt, pnUm
ENDPROC
*
PROCEDURE Clp_1300c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=ifIl-03.566 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=mcO0+00.1  ;
           .AND. mcCc<=mcO0+14.3 .AND. vsW3<>1
           STORE 01 TO vsW3
           DO boT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-03.566 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=mcO0+15.1  ;
           .AND. mcCc<=mcO0+29.3 .AND. vsW3<>2
           STORE 02 TO vsW3
           DO boT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-03.566 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=mcO0+30.1  ;
           .AND. mcCc<=mcO0+44.3 .AND. vsW3<>3
           STORE 03 TO vsW3
           DO boT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-03.566 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=mcO0+45.1  ;
           .AND. mcCc<=mcO0+59.3 .AND. vsW3<>4
           STORE 04 TO vsW3
           DO boT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-03.566 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=mcO0+60.1  ;
           .AND. mcCc<=mcO0+74.3 .AND. vsW3<>5
           STORE 05 TO vsW3
           DO boT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-03.566 .AND. mfIl<=ifIl-2.085 .AND. vuLt>=6 .AND.  ;
           mcCc>=mcO0+75.1 .AND. mcCc<=mcO0+89.3 .AND. vsW3<>6
           STORE 06 TO vsW3
           DO boT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-03.566 .AND. mfIl<=ifIl-2.085 .AND. vuLt>=7 .AND.  ;
           mcCc>=mcO0+90.1 .AND. mcCc<=mcO0+104.3 .AND. vsW3<>7
           STORE 07 TO vsW3
           DO boT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-03.566 .AND. mfIl<=ifIl-2.085 .AND. vuLt=8 .AND.  ;
           mcCc>=mcO0+105.1 .AND. mcCc<=mcO0+119.3 .AND. vsW3<>8
           STORE 08 TO vsW3
           DO boT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO xlS_1300c WITH "1"
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=3.4 .AND.  ;
           mcCc<=6.4 .AND. csW3=0
           DO xlS_1300c WITH "2"
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
           DO diS_1300c WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1300c WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_1300c WITH "F", "v"
           DO diS_1300c WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1300c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran el resumen totalizado en Soles"
 @ pfIl+01, 01 SAY "y Dólares en el rango de fechas seleccionadas."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "F2" STYLE "BT"
 @ pfIl+09, 02 SAY "F5" STYLE "BT"
 @ pfIl+10, 02 SAY "F8" STYLE "BT"
 @ pfIl+05, 22 SAY "Regresar a Cabecera"
 @ pfIl+06, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 22 SAY "Ayuda del Programa"
 @ pfIl+08, 22 SAY "Cambio de Vista: Totales, FA/BO/NP"
 @ pfIl+09, 22 SAY "Cambiar Orden ascendente o descendente en totales"
 @ pfIl+10, 22 SAY "Pasar Datos a Excel General"
 STORE pfIl+11 TO pfIl
 IF csW3=0
      @ pfIl, 02 SAY "F9" STYLE "BT"
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 22 SAY "Pasar Datos a Excel Detallado"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 20 SAY ":" STYLE "BT"
 @ pfIl+01, 20 SAY ":" STYLE "BT"
 @ pfIl+02, 20 SAY ":" STYLE "BT"
 @ pfIl+03, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+01, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+02, 02 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+03, 02 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+04, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+05, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+06, 02 SAY "HOME" STYLE "BT"
 @ pfIl+07, 02 SAY "END" STYLE "BT"
 @ pfIl+08, 02 SAY "ENTER" STYLE "BT"
 @ pfIl+09, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+10, 02 SAY "CTRL -> / <-" STYLE "BT"
 @ pfIl+00, 22 SAY "Línea inferior"
 @ pfIl+01, 22 SAY "Línea superior"
 @ pfIl+02, 22 SAY "Cambiar de Orden"
 @ pfIl+03, 22 SAY "Cambiar de Orden"
 @ pfIl+04, 22 SAY "Página siguiente"
 @ pfIl+05, 22 SAY "Página anterior"
 @ pfIl+06, 22 SAY "Primera línea"
 @ pfIl+07, 22 SAY "Última línea"
 @ pfIl+08, 22 SAY "Ver Detalle de Resumen"
 @ pfIl+09, 22 SAY "Imprimir Listado de Ventas"
 @ pfIl+10, 22 SAY "Escoger Botón de Consulta"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
