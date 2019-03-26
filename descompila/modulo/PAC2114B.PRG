 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2111b IN PAC2111B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(mtMa) TO icOd
 ENDIF
 IF LEN(ALLTRIM(icOd))=0 .OR. (vsW0=1 .AND. (UPPER(ALLTRIM(icOd))+"*"> ;
    UPPER(ALLTRIM(vcOd))+"*" .OR. UPPER(ALLTRIM(ucOd))+"*"< ;
    UPPER(ALLTRIM(vcOd))+"*")) .OR. (vsW0=2 .AND. (UPPER(ALLTRIM(idEs))+ ;
    "*">UPPER(ALLTRIM(vdEs))+"*" .OR. UPPER(ALLTRIM(udEs))+"*"< ;
    UPPER(ALLTRIM(vdEs))+"*"))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK ALLTRIM(UPPER(vcOd))
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vdEs))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_2114b
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
 ELSE
      DO seE_2112b IN PAC2112B WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(UPPER(vcOd))
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vdEs))
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2112b IN PAC2112B WITH "F", "v"
      ENDIF
      DO seE_2112b IN PAC2112B WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2111cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_2112b IN PAC2112B WITH "i", "v"
      ENDIF
 ENDIF
 DO seE_2112b IN PAC2112B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2112b IN PAC2112B WITH "i"
      SET NEAR OFF
      DO paN_2114b
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
      DO seE_2112b IN PAC2112B WITH "v"
 ENDIF
 DO diS_2114b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2114b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2114b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2114b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2114b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_2114b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2114b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO CASE
                     CASE vsW5=1
                          STORE 2 TO vsW5
                     CASE vsW5=2
                          STORE 1 TO vsW5
                ENDCASE
                DO moN_2114a
                DO liS_2114a
                DO caM_2114b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                DO prO_2114b WITH "3"
           CASE mkEy=k_F4 .AND. mlSt>1
                DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q2_0000a
                ACTIVATE POPUP vpOp BAR vsW4 AT ifIl, vcB7-14
                DO p2_0000a
                DO liS_2114a
                DO caM_2114b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=2
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO coD_2113a IN PAC2113A
                SET READBORDER ON
                DO geT_2111a IN PAC2111A
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_2114b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. (mrEs="3" .OR. viTe=1 .OR. viTe=3)
                DO prO_2114b WITH "1"
           CASE mkEy=k_F8
                DO prO_2114b WITH "2"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2111a IN PAC2111A WITH "PAC2114A", "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2112b IN PAC2112B WITH "v"
                DO diS_2114b WITH "R"
           CASE mkEy=k_Alt_s
                IF f2111mon=1
                     REPLACE f2111mon WITH 2
                ELSE
                     REPLACE f2111mon WITH 1
                ENDIF
                UNLOCK
                DO diS_2114b WITH "R"
           CASE mkEy=k_Ctrl_right .AND. viTe=3 .AND. mrEs>"3"
                STORE 1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_right .AND. viTe=2 .AND. mrEs="3"
                STORE 1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_right .OR. (mkEy=k_Enter .AND. ((viTe<2 .AND.  ;
                mrEs="3") .OR. (viTe<3 .AND. mrEs>"3")))
                STORE viTe+1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1 .AND. mrEs>"3"
                STORE 3 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1 .AND. mrEs="3"
                STORE 2 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_2114b
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO orD_2111b IN PAC2111B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2112b IN PAC2112B WITH "v"
           CASE mkEy=k_Tab
                SAVE SCREEN TO vpAn_11
                SET READBORDER ON
                DO paC2111c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO orD_2111b IN PAC2111B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2112b IN PAC2112B WITH "v"
                DO reS_0000a
                IF mrEs<>mrSs
                     LOOP
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_Home .OR. mkEy=k_Ctrl_home
                GOTO TOP
                DO CASE
                     CASE UPPER(ALLTRIM(f2111cod))+"*"= ;
                          UPPER(ALLTRIM(icOd))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(icOd))+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcOd))+"*"= ;
                                    UPPER(ALLTRIM(icOd))+"*"
                                    DO paN_2114b
                               OTHERWISE
                                    DO seE_2112b IN PAC2112B WITH "v"
                                    DO diS_2114b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2114b WITH "R"
                ENDCASE
           CASE mkEy=k_End .OR. mkEy=k_Ctrl_end
                GOTO BOTTOM
                DO CASE
                     CASE UPPER(ALLTRIM(f2111cod))+"*"= ;
                          UPPER(ALLTRIM(ucOd))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(ucOd))+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcOd))+"*"= ;
                                    UPPER(ALLTRIM(ucOd))+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2114b
                               OTHERWISE
                                    DO seE_2112b IN PAC2112B WITH "v"
                                    DO diS_2114b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "u", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2114b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2114b WITH "N"
                          SKIP
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(ucOd))+"*"
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2114a WITH ffIl, ffIl+1.1
                               DO li1_2114a WITH ffIl, ffIl+1.1
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               DO muE_2112b IN PAC2112B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2112b IN PAC2112B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2114b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2114b WITH "N"
                          SKIP -1
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(icOd))+"*"
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2114a WITH ifIl-0.1, ifIl+1
                               DO li1_2114a WITH ifIl-0.1, ifIl+1
                               DO muE_2112b IN PAC2112B WITH "F", "i"
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2112b IN PAC2112B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2114b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2112b IN PAC2112B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2114b
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2114b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2112b IN PAC2112B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2114b
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2114b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2112b IN PAC2112B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO diS_2114b WITH "R"
      STORE 99 TO mkEy
      DO utI_2114b WITH "v"
      DO CASE
           CASE viTe=1 .AND. mrEs="3" .AND. vmNd=1
                @vFIL,iCLN+136.9 Get vUTI Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,&mColBlV
           CASE viTe=2 .AND. mrEs="3" .AND. vmNd=1
                @vFIL,iCLN+148.5 Get vCOS Font "&mLetAri",9 Style "NQ" Size 1,15.6 Pict "999999.9999" Color ,&mColBlV
           CASE viTe=1 .AND. vmNd=1
                @vFIL,iCLN+138.7 Get vUTI Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,&mColBlV
           CASE viTe=2 .AND. vmNd=1
                @vFIL,iCLN+150.0 Get vCOS Font "&mLetAri",9 Style "NQ" Size 1,15.6 Pict "999999.9999" Color ,&mColBlV
           CASE viTe=3 .AND. vmNd=1
                @vFIL,iCLN+202.0 Get vUT2 Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,&mColBlV
           CASE viTe=1 .AND. mrEs="3" .AND. vmNd=2
                @vFIL,iCLN+136.9 Get vUTI Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,4/7*
           CASE viTe=2 .AND. mrEs="3" .AND. vmNd=2
                @vFIL,iCLN+148.5 Get vCOS Font "&mLetAri",9 Style "NQ" Size 1,15.6 Pict "999999.9999" Color ,4/7*
           CASE viTe=1 .AND. vmNd=2
                @vFIL,iCLN+138.7 Get vUTI Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,4/7*
           CASE viTe=2 .AND. vmNd=2
                @vFIL,iCLN+150.0 Get vCOS Font "&mLetAri",9 Style "NQ" Size 1,15.6 Pict "999999.9999" Color ,4/7*
           CASE viTe=3 .AND. vmNd=2
                @vFIL,iCLN+202.0 Get vUT2 Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,4/7*
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF mkEy<>k_Esc
           STORE mkEy TO ckEy
           DO utI_2114b WITH "c"
           IF vcOs<>ccOs .OR. vuTi<>cuTi .OR. (vuT2<>cuT2 .AND. mrEs>"3")
                STORE f2111cod TO xcOd
                STORE f2111tip TO xtPo
                SELECT tiP_prod
                SEEK xtPo
                IF EOF()
                     STORE 1 TO xtPo
                     STORE " " TO xnTi
                ELSE
                     STORE f9211tpo TO xtPo
                     STORE f9211nti TO xnTi
                ENDIF
                SELECT prOductos
                STORE 99 TO mkEy
                DO orD_0000a WITH "2111", "A", "F2111COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK ALLTRIM(xcOd)+"*"
                IF  .NOT. EOF()
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(xcOd)+"*"
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               UNLOCK ALL
                               EXIT
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO grA_2114b WITH "4", "1"
                     UNLOCK
                     IF vsW1=2
                          SELECT teMporal
                          DO grA_2114b WITH "4", "2"
                     ENDIF
                ENDIF
                IF vsW1=1 .AND. vsW0=2
                     SELECT prOductos
                     DO orD_2111b IN PAC2111B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO diS_2114b WITH "R"
           ENDIF
           STORE ckEy TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2114b
 DO pn1_2114b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2114b
 DO pn1_2114b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2114b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2112b IN PAC2112B WITH "F", "i"
 DO muE_2112b IN PAC2112B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. UPPER(ALLTRIM(f2111cod))+"*"= ;
                UPPER(ALLTRIM(xcOd))+"*"
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2114b WITH "N"
      ENDCASE
      DO muE_2112b IN PAC2112B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_2114a WITH ufIl+1, ffIl+1.1
      DO li1_2114a WITH ufIl+1, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2114b
 PARAMETER ptIp
 PRIVATE puTi, puT2, ppR1, ppR2, ppR3, ppR4, pcOs
 DO muE_2112b IN PAC2112B WITH "F", "v"
 STORE f2111mon TO vmNd
 DO CASE
      CASE vsW5=1
           STORE f2111vcs TO pcOs
      CASE vsW5=2
           STORE f2111vcp TO pcOs
 ENDCASE
 DO CASE
      CASE vsW4=1 .AND. mrEs="3"
           STORE f2111uti TO puTi
           STORE f2111vv1 TO ppR1
           STORE f2111vv2 TO ppR2
      CASE vsW4=2 .AND. mrEs="3"
           STORE f2111ut2 TO puTi
           STORE f2111vv3 TO ppR1
           STORE f2111vv4 TO ppR2
      CASE vsW4=3 .AND. mrEs="3"
           STORE f2111ut3 TO puTi
           STORE f2111vv5 TO ppR1
           STORE f2111vv6 TO ppR2
      CASE vsW4=4 .AND. mrEs="3"
           STORE f2111ut4 TO puTi
           STORE f2111vv7 TO ppR1
           STORE f2111vv8 TO ppR2
      CASE vsW4=5 .AND. mrEs="3"
           STORE f2111ut5 TO puTi
           STORE f2111vv9 TO ppR1
           STORE f2111vv0 TO ppR2
      CASE vsW4=6 .AND. mrEs="3"
           STORE f2111ut6 TO puTi
           STORE f2111vva TO ppR1
           STORE f2111vvb TO ppR2
      CASE vsW4=7 .AND. mrEs="3"
           STORE f2111ut7 TO puTi
           STORE f2111vvc TO ppR1
           STORE f2111vvd TO ppR2
      CASE vsW4=8 .AND. mrEs="3"
           STORE f2111ut8 TO puTi
           STORE f2111vve TO ppR1
           STORE f2111vvf TO ppR2
      CASE vsW4=9 .AND. mrEs="3"
           STORE f2111ut9 TO puTi
           STORE f2111vvg TO ppR1
           STORE f2111vvh TO ppR2
      CASE vsW4=10 .AND. mrEs="3"
           STORE f2111ut0 TO puTi
           STORE f2111vvi TO ppR1
           STORE f2111vvj TO ppR2
      CASE vsW4<3
           STORE f2111uti TO puTi
           STORE f2111ut2 TO puT2
           STORE f2111vv1 TO ppR1
           STORE f2111vv2 TO ppR2
           STORE f2111vv3 TO ppR3
           STORE f2111vv4 TO ppR4
      CASE vsW4=3 .OR. vsW4=4
           STORE f2111ut3 TO puTi
           STORE f2111ut4 TO puT2
           STORE f2111vv5 TO ppR1
           STORE f2111vv6 TO ppR2
           STORE f2111vv7 TO ppR3
           STORE f2111vv8 TO ppR4
      CASE vsW4=5 .OR. vsW4=6
           STORE f2111ut5 TO puTi
           STORE f2111ut6 TO puT2
           STORE f2111vv9 TO ppR1
           STORE f2111vv0 TO ppR2
           STORE f2111vva TO ppR3
           STORE f2111vvb TO ppR4
      CASE vsW4=7 .OR. vsW4=8
           STORE f2111ut7 TO puTi
           STORE f2111ut8 TO puT2
           STORE f2111vvc TO ppR1
           STORE f2111vvd TO ppR2
           STORE f2111vve TO ppR3
           STORE f2111vvf TO ppR4
      CASE vsW4=9 .OR. vsW4=10
           STORE f2111ut9 TO puTi
           STORE f2111ut0 TO puT2
           STORE f2111vvg TO ppR1
           STORE f2111vvh TO ppR2
           STORE f2111vvi TO ppR3
           STORE f2111vvj TO ppR4
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. f2111cst=1
           DO coLscz
      CASE ptIp="R" .AND. f2111cst=1
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN Say vCOD Font "&mLetAri",9 Style "NQ" Size 1,27.6
 DO CASE
      CASE ptIp="N" .AND. f2111md1=1
           DO coLscr
      CASE ptIp="R" .AND. f2111md1=1
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+28.2 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,93.7 Pict "@S96"
      OTHERWISE
           @vFIL,iCLN+28.2 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,95.3 Pict "@S98"
 ENDCASE
 IF f2111md3=2
      DO CASE
           CASE ptIp="N"
                DO coLsc1
           CASE ptIp="R"
                DO coLbln
      ENDCASE
      @vFIL,iCLN+28.2 Say Substr(vDES,1,3) Font "&mLetAri",9 Style "BQ"
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. f2111md2=1
           DO coLscr
      CASE ptIp="R" .AND. f2111md2=1
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+165.2 Say pPR1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFIL,iCLN+182.5 Say pPR2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      OTHERWISE
           @vFIL,iCLN+166.8 Say pPR1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFIL,iCLN+184.2 Say pPR2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFIL,iCLN+212.6 Say pPR3 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFIL,iCLN+230.0 Say pPR4 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+122.5 Say F2111NUV Font "&mLetAri",9 Style "NQ" Size 1,13.5 Pict "@S16"
      OTHERWISE
           @vFIL,iCLN+124.0 Say F2111NUV Font "&mLetAri",9 Style "NQ" Size 1,13.7 Pict "@S16"
           @vFIL,iCLN+247.5 Say F2111STO Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+136.7 Say pUTI Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999.999"
      OTHERWISE
           @vFIL,iCLN+138.4 Say pUTI Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999.999"
           @vFIL,iCLN+201.7 Say pUT2 Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999.999"
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. f2111mon=2
           SET COLOR TO W+/R
      CASE ptIp="R" .AND. f2111mon=2
           SET COLOR TO R/W*
      CASE ptIp="N"
           SET COLOR TO W+/G
      CASE ptIp="R"
           SET COLOR TO G/W*
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+147.7 Say pCOS Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      OTHERWISE
           @vFIL,iCLN+149.4 Say pCOS Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 ENDCASE
 RELEASE puTi, puT2, ppR1, ppR2, ppR3, ppR4, pcOs
ENDPROC
*
PROCEDURE Pro_2114b
 PARAMETER ptPo
 DO coLsc3
 SET READBORDER ON
 STORE k_Enter TO mkEy
 SAVE SCREEN TO vpAn_11
 @ ifIl+0.8, vcB3-1 TO ifIl+04.2, vcB3+78.1 PATTERN 1 PEN 1
 @ ifIl+0.0, vcB3-2 TO ifIl+03.7, vcB3+77.0 PATTERN 1 PEN 3
 DO CASE
      CASE ptPo="1"
           STORE 0 TO vuTx, vuTy
           DO CASE
                CASE mrEs="3"
                     @vFB3+0.7,vCB3+18 Say "%  UTILIDAD:"      Font "&mLetRom",12 Style "BQ"
                CASE vsW4<3 .AND. viTe=1
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-1:"     Font "&mLetRom",12 Style "BQ"
                CASE vsW4<3 .AND. viTe=3
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-2:"     Font "&mLetRom",12 Style "BQ"
                CASE (vsW4=3 .OR. vsW4=4) .AND. viTe=1
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-3:"     Font "&mLetRom",12 Style "BQ"
                CASE (vsW4=3 .OR. vsW4=4) .AND. viTe=3
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-4:"     Font "&mLetRom",12 Style "BQ"
                CASE (vsW4=5 .OR. vsW4=6) .AND. viTe=1
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-5:"     Font "&mLetRom",12 Style "BQ"
                CASE (vsW4=5 .OR. vsW4=6) .AND. viTe=3
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-6:"     Font "&mLetRom",12 Style "BQ"
                CASE (vsW4=7 .OR. vsW4=8) .AND. viTe=1
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-7:"     Font "&mLetRom",12 Style "BQ"
                CASE (vsW4=7 .OR. vsW4=8) .AND. viTe=3
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-8:"     Font "&mLetRom",12 Style "BQ"
                CASE (vsW4=9 .OR. vsW4=10) .AND. viTe=1
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-9:"     Font "&mLetRom",12 Style "BQ"
                CASE (vsW4=9 .OR. vsW4=10) .AND. viTe=3
                     @vFB3+0.7,vCB3+16 Say "% UTILIDAD-10:"    Font "&mLetRom",12 Style "BQ"
           ENDCASE
           @vFB3+0.6,vCB3+42 Get vUTX                        Font "&mLetRom",12 Style "BQ" Size 1,9 Pict "999.999" Color ,&mColBlN
      CASE ptPo="2"
           STORE vtCa TO xtCa
           @vFB3+0.7,vCB3+14 Say "TIPO DE CAMBIO:"           Font "&mLetRom",12 Style "BQ"
           @vFB3+0.6,vCB3+46 Get xTCA                        Font "&mLetRom",12 Style "BQ" Size 1,9 Pict "999.999" Color ,&mColBlN
      CASE ptPo="3"
           STORE 0 TO vuTx
           @vFB3+0.7,vCB3+04 Say "% INCREMENTO / DESCUENTO:" Font "&mLetRom",12 Style "BQ"
           @vFB3+0.6,vCB3+57 Get vUTX                        Font "&mLetRom",12 Style "BQ" Size 1,9 Pict "999.999" Color ,&mColBlN
 ENDCASE
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET READBORDER OFF
 IF mkEy<>k_Enter
      STORE 99 TO mkEy
      RESTORE SCREEN FROM vpAn_11
      RETURN
 ENDIF
 STORE "S" TO moPc
 DO CASE
      CASE ptPo="1" .AND. vtP0="1"
           DO prE_docum WITH  ;
              "¿Desea cambiar Porcentaje de utilidad a este grupo de Productos?"
      CASE ptPo="1" .AND. vtP0="2"
           DO prE_docum WITH  ;
              "¿Desea cambiar Porcentaje de utilidad a este grupo de Servicios?"
      CASE ptPo="2"
           DO prE_docum WITH  ;
              "¿Desea cambiar Tipo de Cambio GENERAL a las Listas de Precios?"
      CASE ptPo="3" .AND. vuTx>0
           DO prE_docum WITH "¿Desea Aumentar los Costos en un "+ ;
              ALLTRIM(STR(vuTx, 5, 2))+"% ?"
      CASE ptPo="3" .AND. vuTx<0
           DO prE_docum WITH "¿Desea Disminuir los Costos en un "+ ;
              ALLTRIM(STR(vuTx, 5, 2))+"% ?"
      CASE ptPo="3"
           STORE 99 TO mkEy
           RESTORE SCREEN FROM vpAn_11
           RETURN
 ENDCASE
 IF moPc<>"S" .AND. moPc<>"s"
      RESTORE SCREEN FROM vpAn_11
      RETURN
 ENDIF
 SELECT prOductos
 STORE 99 TO mkEy
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RESTORE SCREEN FROM vpAn_11
      WAIT CLEAR
      RETURN
 ENDIF
 IF ptPo="2"
      STORE xtCa TO vtCa
      SELECT fiJo
      GOTO TOP
      IF BOF()
           APPEND BLANK
      ENDIF
      REPLACE f9000tc1 WITH vtCa
      UNLOCK
 ENDIF
 IF ptPo="1" .AND. mrEs>"3"
      IF viTe=3
           STORE vuTx TO vuTy
           STORE 9999 TO vuTx
      ELSE
           STORE 9999 TO vuTy
      ENDIF
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT prOductos
           GOTO TOP
           DO WHILE  .NOT. EOF()
                STORE f2111cod TO xcOd
                STORE f2111tip TO xtPo
                SELECT tiP_prod
                SEEK xtPo
                IF EOF()
                     STORE 1 TO xtPo
                     STORE " " TO xnTi
                ELSE
                     STORE f9211tpo TO xtPo
                     STORE f9211nti TO xnTi
                ENDIF
                SELECT prOductos
                SEEK UPPER(ALLTRIM(xcOd))+"*"
                IF  .NOT. RLOCK()
                     DO reG_lock WITH UPPER(ALLTRIM(xcOd))+"*"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO grA_2114b WITH ptPo, "1"
                UNLOCK
                SKIP
           ENDDO
      CASE vsW1=2
           SELECT teMporal
           GOTO TOP
           DO WHILE  .NOT. EOF()
                STORE f2111cod TO xcOd
                STORE f2111tip TO xtPo
                SELECT tiP_prod
                SEEK xtPo
                IF EOF()
                     STORE 1 TO xtPo
                     STORE " " TO xnTi
                ELSE
                     STORE f9211tpo TO xtPo
                     STORE f9211nti TO xnTi
                ENDIF
                SELECT prOductos
                SEEK UPPER(ALLTRIM(xcOd))+"*"
                IF  .NOT. RLOCK()
                     DO reG_lock WITH UPPER(ALLTRIM(xcOd))+"*"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO grA_2114b WITH ptPo, "1"
                UNLOCK
                SELECT teMporal
                DO grA_2114b WITH ptPo, "2"
                SKIP
           ENDDO
 ENDCASE
 UNLOCK ALL
 IF mkEy=k_Esc
      RESTORE SCREEN FROM vpAn_11
      WAIT CLEAR
      RETURN
 ENDIF
 IF vsW1=1 .AND. vsW0=2
      SELECT prOductos
      DO orD_2111b IN PAC2111B
      IF mkEy=k_Esc
           RESTORE SCREEN FROM vpAn_11
           WAIT CLEAR
           RETURN
      ENDIF
 ENDIF
 FLUSH
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2112b IN PAC2112B WITH "v"
 DO CASE
      CASE ptPo="1"
           WAIT WINDOW NOWAIT  ;
                "EL NUEVO PORCENTAJE DE UTILIDAD YA CAMBIÓ LISTA DE PRECIOS..."
      CASE ptPo="2"
           WAIT WINDOW NOWAIT  ;
                "EL NUEVO TIPO DE CAMPO YA CAMBIÓ LISTA DE PRECIOS..."
 ENDCASE
 = INKEY(0.5)
 WAIT CLEAR
 RESTORE SCREEN FROM vpAn_11
 IF ptPo="2"
      DO CASE
           CASE mrEs="3"
                @iFIL-1.5,iCLN+62.4 Say vTCA Font "&mLetAri",9 Style "BQ" Pict "99.999" Size 1,8 Color &mColBlN
           OTHERWISE
                @iFIL-1.5,iCLN+82.4 Say vTCA Font "&mLetAri",9 Style "BQ" Pict "99.999" Size 1,8 Color &mColBlN
      ENDCASE
 ENDIF
 DO caM_2114b
ENDPROC
*
PROCEDURE Cam_2114b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2112b IN PAC2112B WITH "v", "x"
 DO orD_2111b IN PAC2111B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2112b IN PAC2112B WITH "i"
 DO pa1_2114b
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "x", "v"
 ENDIF
 DO seE_2112b IN PAC2112B WITH "v"
 DO diS_2114b WITH "R"
ENDPROC
*
PROCEDURE Uti_2114b
 PARAMETER ptPo
 DO CASE
      CASE ptPo="v" .AND. vsW5=1
           STORE f2111vcs TO vcOs
      CASE ptPo="v" .AND. vsW5=2
           STORE f2111vcp TO vcOs
      CASE ptPo="c" .AND. vsW5=1
           STORE f2111vcs TO ccOs
      CASE ptPo="c" .AND. vsW5=2
           STORE f2111vcp TO ccOs
 ENDCASE
 DO CASE
      CASE ptPo="v" .AND. vsW4=1 .AND. mrEs="3"
           STORE f2111uti TO vuTi
      CASE ptPo="v" .AND. vsW4=2 .AND. mrEs="3"
           STORE f2111ut2 TO vuTi
      CASE ptPo="v" .AND. vsW4=3 .AND. mrEs="3"
           STORE f2111ut3 TO vuTi
      CASE ptPo="v" .AND. vsW4=4 .AND. mrEs="3"
           STORE f2111ut4 TO vuTi
      CASE ptPo="v" .AND. vsW4=5 .AND. mrEs="3"
           STORE f2111ut5 TO vuTi
      CASE ptPo="v" .AND. vsW4=6 .AND. mrEs="3"
           STORE f2111ut6 TO vuTi
      CASE ptPo="v" .AND. vsW4=7 .AND. mrEs="3"
           STORE f2111ut7 TO vuTi
      CASE ptPo="v" .AND. vsW4=8 .AND. mrEs="3"
           STORE f2111ut8 TO vuTi
      CASE ptPo="v" .AND. vsW4=9 .AND. mrEs="3"
           STORE f2111ut9 TO vuTi
      CASE ptPo="v" .AND. vsW4=10 .AND. mrEs="3"
           STORE f2111ut0 TO vuTi
      CASE ptPo="v" .AND. vsW4<3
           STORE f2111uti TO vuTi
           STORE f2111ut2 TO vuT2
      CASE ptPo="v" .AND. (vsW4=3 .OR. vsW4=4)
           STORE f2111ut3 TO vuTi
           STORE f2111ut4 TO vuT2
      CASE ptPo="v" .AND. (vsW4=5 .OR. vsW4=6)
           STORE f2111ut5 TO vuTi
           STORE f2111ut6 TO vuT2
      CASE ptPo="v" .AND. (vsW4=7 .OR. vsW4=8)
           STORE f2111ut7 TO vuTi
           STORE f2111ut8 TO vuT2
      CASE ptPo="v" .AND. (vsW4=9 .OR. vsW4=10)
           STORE f2111ut9 TO vuTi
           STORE f2111ut0 TO vuT2
      CASE ptPo="c" .AND. vsW4=1 .AND. mrEs="3"
           STORE f2111uti TO cuTi
      CASE ptPo="c" .AND. vsW4=2 .AND. mrEs="3"
           STORE f2111ut2 TO cuTi
      CASE ptPo="c" .AND. vsW4=3 .AND. mrEs="3"
           STORE f2111ut3 TO cuTi
      CASE ptPo="c" .AND. vsW4=4 .AND. mrEs="3"
           STORE f2111ut4 TO cuTi
      CASE ptPo="c" .AND. vsW4=5 .AND. mrEs="3"
           STORE f2111ut5 TO cuTi
      CASE ptPo="c" .AND. vsW4=6 .AND. mrEs="3"
           STORE f2111ut6 TO cuTi
      CASE ptPo="c" .AND. vsW4=7 .AND. mrEs="3"
           STORE f2111ut7 TO cuTi
      CASE ptPo="c" .AND. vsW4=8 .AND. mrEs="3"
           STORE f2111ut8 TO cuTi
      CASE ptPo="c" .AND. vsW4=9 .AND. mrEs="3"
           STORE f2111ut9 TO cuTi
      CASE ptPo="c" .AND. vsW4=10 .AND. mrEs="3"
           STORE f2111ut0 TO cuTi
      CASE ptPo="c" .AND. vsW4<3
           STORE f2111uti TO cuTi
           STORE f2111ut2 TO cuT2
      CASE ptPo="c" .AND. (vsW4=3 .OR. vsW4=4)
           STORE f2111ut3 TO cuTi
           STORE f2111ut4 TO cuT2
      CASE ptPo="c" .AND. (vsW4=5 .OR. vsW4=6)
           STORE f2111ut5 TO cuTi
           STORE f2111ut6 TO cuT2
      CASE ptPo="c" .AND. (vsW4=7 .OR. vsW4=8)
           STORE f2111ut7 TO cuTi
           STORE f2111ut8 TO cuT2
      CASE ptPo="c" .AND. (vsW4=9 .OR. vsW4=10)
           STORE f2111ut9 TO cuTi
           STORE f2111ut0 TO cuT2
 ENDCASE
ENDPROC
*
PROCEDURE Gra_2114b
 PARAMETER ptPo, paRc
 PUBLIC pcOs, puTi, puT2, ppIe
 STORE 0 TO pcOs, puTi, puT2, ppIe
 DO CASE
      CASE ptPo="1" .AND. mrEs="3"
           STORE vuTx TO puTi
      CASE ptPo="1"
           STORE vuTx TO puTi
           STORE vuTy TO puT2
      CASE ptPo="4" .AND. mrEs="3"
           STORE vuTi TO puTi
      CASE ptPo="4"
           STORE vuTi TO puTi
           STORE vuT2 TO puT2
 ENDCASE
 DO gr1_2114b
 IF paRc="2"
      RELEASE pcOs, puTi, puT2, ppIe
      RETURN
 ENDIF
 IF vlI2=1
      WAIT NOWAIT "GRABANDO "+vnO2
      SELECT tiEnda2
      SEEK UPPER(ALLTRIM(xcOd))+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH UPPER(ALLTRIM(xcOd))+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      DO gr1_2114b
      WAIT CLEAR
 ENDIF
 IF vlI3=1
      WAIT NOWAIT "GRABANDO "+vnO3
      SELECT tiEnda3
      SEEK UPPER(ALLTRIM(xcOd))+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH UPPER(ALLTRIM(xcOd))+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      DO gr1_2114b
      WAIT CLEAR
 ENDIF
 IF vlI4=1
      WAIT NOWAIT "GRABANDO "+vnO4
      SELECT tiEnda4
      SEEK UPPER(ALLTRIM(xcOd))+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH UPPER(ALLTRIM(xcOd))+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      DO gr1_2114b
      WAIT CLEAR
 ENDIF
 IF vlI5=1
      WAIT NOWAIT "GRABANDO "+vnO5
      SELECT tiEnda5
      SEEK UPPER(ALLTRIM(xcOd))+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH UPPER(ALLTRIM(xcOd))+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      DO gr1_2114b
      WAIT CLEAR
 ENDIF
 RELEASE pcOs, puTi, puT2, ppIe
ENDPROC
*
PROCEDURE Gr1_2114b
 DO CASE
      CASE xtPo=1 .AND. f2111la1<>0 .AND. f2111an1<>0 .AND.  ;
           UPPER(ALLTRIM(xnTi))+"*"="VIDRIO X PLANCHA"+"*"
           STORE ROUND(f2111la1*f2111an1*mfCt, 8) TO ppIe
      CASE xtPo=1 .AND. f2111la2<>0 .AND. f2111an2<>0 .AND.  ;
           UPPER(ALLTRIM(xnTi))+"*"="VIDRIO X PLANCHA"+"*"
           STORE ROUND(f2111la2*f2111an2/mfCp, 8) TO ppIe
      OTHERWISE
           STORE 1 TO ppIe
 ENDCASE
 DO CASE
      CASE ptPo$"14" .AND. vsW4=1 .AND. mrEs="3"
           REPLACE f2111uti WITH puTi
      CASE ptPo$"14" .AND. vsW4=2 .AND. mrEs="3"
           REPLACE f2111ut2 WITH puTi
      CASE ptPo$"14" .AND. vsW4=3 .AND. mrEs="3"
           REPLACE f2111ut3 WITH puTi
      CASE ptPo$"14" .AND. vsW4=4 .AND. mrEs="3"
           REPLACE f2111ut4 WITH puTi
      CASE ptPo$"14" .AND. vsW4=5 .AND. mrEs="3"
           REPLACE f2111ut5 WITH puTi
      CASE ptPo$"14" .AND. vsW4=6 .AND. mrEs="3"
           REPLACE f2111ut6 WITH puTi
      CASE ptPo$"14" .AND. vsW4=7 .AND. mrEs="3"
           REPLACE f2111ut7 WITH puTi
      CASE ptPo$"14" .AND. vsW4=8 .AND. mrEs="3"
           REPLACE f2111ut8 WITH puTi
      CASE ptPo$"14" .AND. vsW4=9 .AND. mrEs="3"
           REPLACE f2111ut9 WITH puTi
      CASE ptPo$"14" .AND. vsW4=10 .AND. mrEs="3"
           REPLACE f2111ut0 WITH puTi
      CASE ptPo$"14" .AND. vsW4<3
           IF puTi<>9999
                REPLACE f2111uti WITH puTi
           ENDIF
           IF puT2<>9999
                REPLACE f2111ut2 WITH puT2
           ENDIF
      CASE ptPo$"14" .AND. (vsW4=3 .OR. vsW4=4)
           IF puTi<>9999
                REPLACE f2111ut3 WITH puTi
           ENDIF
           IF puT2<>9999
                REPLACE f2111ut4 WITH puT2
           ENDIF
      CASE ptPo$"14" .AND. (vsW4=5 .OR. vsW4=6)
           IF puTi<>9999
                REPLACE f2111ut5 WITH puTi
           ENDIF
           IF puT2<>9999
                REPLACE f2111ut6 WITH puT2
           ENDIF
      CASE ptPo$"14" .AND. (vsW4=7 .OR. vsW4=8)
           IF puTi<>9999
                REPLACE f2111ut7 WITH puTi
           ENDIF
           IF puT2<>9999
                REPLACE f2111ut8 WITH puT2
           ENDIF
      CASE ptPo$"14" .AND. (vsW4=9 .OR. vsW4=10)
           IF puTi<>9999
                REPLACE f2111ut9 WITH puTi
           ENDIF
           IF puT2<>9999
                REPLACE f2111ut0 WITH puT2
           ENDIF
 ENDCASE
 DO CASE
      CASE ptPo="3" .AND. vsW5=1
           REPLACE f2111vcs WITH ROUND(f2111vcs*(1+(vuTx/100)), 4)
      CASE ptPo="3" .AND. vsW5=2
           REPLACE f2111vcp WITH ROUND(f2111vcp*(1+(vuTx/100)), 4)
      CASE ptPo="4" .AND. vsW5=1
           REPLACE f2111vcs WITH vcOs
      CASE ptPo="4" .AND. vsW5=2
           REPLACE f2111vcp WITH vcOs
 ENDCASE
 REPLACE f2111vv1 WITH 0
 REPLACE f2111vv2 WITH 0
 REPLACE f2111vv3 WITH 0
 REPLACE f2111vv4 WITH 0
 REPLACE f2111vv5 WITH 0
 REPLACE f2111vv6 WITH 0
 REPLACE f2111vv7 WITH 0
 REPLACE f2111vv8 WITH 0
 REPLACE f2111vv9 WITH 0
 REPLACE f2111vv0 WITH 0
 REPLACE f2111vva WITH 0
 REPLACE f2111vvb WITH 0
 REPLACE f2111vvc WITH 0
 REPLACE f2111vvd WITH 0
 REPLACE f2111vve WITH 0
 REPLACE f2111vvf WITH 0
 REPLACE f2111vvg WITH 0
 REPLACE f2111vvh WITH 0
 REPLACE f2111vvi WITH 0
 REPLACE f2111vvj WITH 0
 DO CASE
      CASE f2111vcs=0 .AND. vsW5=1
      CASE f2111vcp=0 .AND. vsW5=2
      CASE f2111mon=0
      OTHERWISE
           DO CASE
                CASE f2111mon=1
                     REPLACE f2111vcp WITH ROUND(f2111vcs/vtCa, 4)
                CASE f2111mon=2
                     REPLACE f2111vcs WITH ROUND(f2111vcp*vtCa, 4)
           ENDCASE
           IF f2111uti<>0
                REPLACE f2111vv1 WITH ROUND(ppIe*f2111vcs*(1+(f2111uti/ ;
                        100)), 4)
                REPLACE f2111vv2 WITH ROUND(ppIe*f2111vcp*(1+(f2111uti/ ;
                        100)), 4)
           ENDIF
           IF f2111ut2<>0
                REPLACE f2111vv3 WITH ROUND(ppIe*f2111vcs*(1+(f2111ut2/ ;
                        100)), 4)
                REPLACE f2111vv4 WITH ROUND(ppIe*f2111vcp*(1+(f2111ut2/ ;
                        100)), 4)
           ENDIF
           IF f2111ut3<>0
                REPLACE f2111vv5 WITH ROUND(ppIe*f2111vcs*(1+(f2111ut3/ ;
                        100)), 4)
                REPLACE f2111vv6 WITH ROUND(ppIe*f2111vcp*(1+(f2111ut3/ ;
                        100)), 4)
           ENDIF
           IF f2111ut4<>0
                REPLACE f2111vv7 WITH ROUND(ppIe*f2111vcs*(1+(f2111ut4/ ;
                        100)), 4)
                REPLACE f2111vv8 WITH ROUND(ppIe*f2111vcp*(1+(f2111ut4/ ;
                        100)), 4)
           ENDIF
           IF f2111ut5<>0
                REPLACE f2111vv9 WITH ROUND(ppIe*f2111vcs*(1+(f2111ut5/ ;
                        100)), 4)
                REPLACE f2111vv0 WITH ROUND(ppIe*f2111vcp*(1+(f2111ut5/ ;
                        100)), 4)
           ENDIF
           IF f2111ut6<>0
                REPLACE f2111vva WITH ROUND(ppIe*f2111vcs*(1+(f2111ut6/ ;
                        100)), 4)
                REPLACE f2111vvb WITH ROUND(ppIe*f2111vcp*(1+(f2111ut6/ ;
                        100)), 4)
           ENDIF
           IF f2111ut7<>0
                REPLACE f2111vvc WITH ROUND(ppIe*f2111vcs*(1+(f2111ut7/ ;
                        100)), 4)
                REPLACE f2111vvd WITH ROUND(ppIe*f2111vcp*(1+(f2111ut7/ ;
                        100)), 4)
           ENDIF
           IF f2111ut8<>0
                REPLACE f2111vve WITH ROUND(ppIe*f2111vcs*(1+(f2111ut8/ ;
                        100)), 4)
                REPLACE f2111vvf WITH ROUND(ppIe*f2111vcp*(1+(f2111ut8/ ;
                        100)), 4)
           ENDIF
           IF f2111ut9<>0
                REPLACE f2111vvg WITH ROUND(ppIe*f2111vcs*(1+(f2111ut9/ ;
                        100)), 4)
                REPLACE f2111vvh WITH ROUND(ppIe*f2111vcp*(1+(f2111ut9/ ;
                        100)), 4)
           ENDIF
           IF f2111ut0<>0
                REPLACE f2111vvi WITH ROUND(ppIe*f2111vcs*(1+(f2111ut0/ ;
                        100)), 4)
                REPLACE f2111vvj WITH ROUND(ppIe*f2111vcp*(1+(f2111ut0/ ;
                        100)), 4)
           ENDIF
 ENDCASE
 REPLACE f2111mv1 WITH ROUND(f2111vv1-(f2111vv1*f2111dct/100), 4)
 REPLACE f2111mv2 WITH ROUND(f2111vv2-(f2111vv2*f2111dct/100), 4)
 REPLACE f2111mv3 WITH ROUND(f2111vv3-(f2111vv3*f2111dc2/100), 4)
 REPLACE f2111mv4 WITH ROUND(f2111vv4-(f2111vv4*f2111dc2/100), 4)
 REPLACE f2111mv5 WITH ROUND(f2111vv5-(f2111vv5*f2111dc3/100), 4)
 REPLACE f2111mv6 WITH ROUND(f2111vv6-(f2111vv6*f2111dc3/100), 4)
 REPLACE f2111mv7 WITH ROUND(f2111vv7-(f2111vv7*f2111dc4/100), 4)
 REPLACE f2111mv8 WITH ROUND(f2111vv8-(f2111vv8*f2111dc4/100), 4)
 REPLACE f2111mv9 WITH ROUND(f2111vv9-(f2111vv9*f2111dc5/100), 4)
 REPLACE f2111mv0 WITH ROUND(f2111vv0-(f2111vv0*f2111dc5/100), 4)
 REPLACE f2111mva WITH ROUND(f2111vva-(f2111vva*f2111dc6/100), 4)
 REPLACE f2111mvb WITH ROUND(f2111vvb-(f2111vvb*f2111dc6/100), 4)
 REPLACE f2111mvc WITH ROUND(f2111vvc-(f2111vvc*f2111dc7/100), 4)
 REPLACE f2111mvd WITH ROUND(f2111vvd-(f2111vvd*f2111dc7/100), 4)
 REPLACE f2111mve WITH ROUND(f2111vve-(f2111vve*f2111dc8/100), 4)
 REPLACE f2111mvf WITH ROUND(f2111vvf-(f2111vvf*f2111dc8/100), 4)
 REPLACE f2111mvg WITH ROUND(f2111vvg-(f2111vvg*f2111dc9/100), 4)
 REPLACE f2111mvh WITH ROUND(f2111vvh-(f2111vvh*f2111dc9/100), 4)
 REPLACE f2111mvi WITH ROUND(f2111vvi-(f2111vvi*f2111dc0/100), 4)
 REPLACE f2111mvj WITH ROUND(f2111vvj-(f2111vvj*f2111dc0/100), 4)
 REPLACE f2111usu WITH muSu
 REPLACE f2111dat WITH DATE()
 REPLACE f2111tim WITH TIME()
ENDPROC
*
PROCEDURE Imp_2114b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PAC2114B
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_2114b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2114b
 PRIVATE ptAm, puT1, puT2, puT3, puT4, pcOs
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vmOv=1
      STORE 99 TO mkEy
      DO CASE
           CASE vsW1=1
                DO orD_0000a WITH "2111", "A", "F2111TIP", "A"
           CASE vsW1=2
                DO orD_0000a WITH "TMP", "A", "F2111TIP", "A"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 GOTO TOP
 STORE 04 TO mcLn
 STORE 99 TO ptAm
 STORE 00 TO vlIn, vpAg
 STORE SPACE(02) TO xtIp
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF f2111est="9" .OR. ALLTRIM(f2111cod)+"*"<ALLTRIM(dcOd)+"*" .OR.  ;
         ALLTRIM(f2111cod)+"*">ALLTRIM(hcOd)+"*" .OR. (voPs=2 .AND.  ;
         f2111sto=0 .AND. f2111tpo=1 .AND. f2111cst=1)
           SKIP
           LOOP
      ENDIF
      STORE f2111tip TO vtIp
      DO cj1_2112b IN PAC2112B
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      IF vpAg=0 .OR. vlIn>mpAg-4 .OR. (vmOv=1 .AND. LEN(ALLTRIM(xtIp))<>0  ;
         .AND. vtIp<>xtIp)
           IF vpAg=0 .OR. vlIn>mpAg-4
                DO caB_2114b WITH ptAm
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vmOv=1
                STORE vlIn+0.8 TO vlIn
                DO li0_2114b
                DO liN_2114b
                STORE vlIn+0.4 TO vlIn
                DO li0_2114b
                STORE vtIp TO xtIp
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+1 Say vNTI Font "&mLetRom",12 Style "BQ"
                ENDIF
                DO li0_2114b
                STORE vlIn+0.4 TO vlIn
                DO li0_2114b
                IF vpAg>=miPg .AND. vpAg<=muPg .AND. mlIn=1
                     DO liN_0000a WITH ptAm, vlIn
                ENDIF
                STORE vlIn+0.1 TO vlIn
                DO li0_2114b
           ENDIF
      ENDIF
      DO liN_2114b
      STORE vlIn+0.7 TO vlIn
      DO liN_2114b
      STORE vlIn+0.6 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE voPc=1
                     STORE f2111uti TO puT1
                CASE voPc=2
                     STORE f2111ut2 TO puT1
                CASE voPc=3
                     STORE f2111ut3 TO puT1
                CASE voPc=4
                     STORE f2111ut4 TO puT1
                CASE voPc=5
                     STORE f2111ut5 TO puT1
                CASE voPc=6
                     STORE f2111ut6 TO puT1
                CASE voPc=7
                     STORE f2111ut7 TO puT1
                CASE voPc=8
                     STORE f2111ut8 TO puT1
                CASE voPc=9
                     STORE f2111ut9 TO puT1
                CASE voPc=10
                     STORE f2111ut0 TO puT1
           ENDCASE
           DO CASE
                CASE voPr=1
                     STORE f2111uti TO puT2
                CASE voPr=2
                     STORE f2111ut2 TO puT2
                CASE voPr=3
                     STORE f2111ut3 TO puT2
                CASE voPr=4
                     STORE f2111ut4 TO puT2
                CASE voPr=5
                     STORE f2111ut5 TO puT2
                CASE voPr=6
                     STORE f2111ut6 TO puT2
                CASE voPr=7
                     STORE f2111ut7 TO puT2
                CASE voPr=8
                     STORE f2111ut8 TO puT2
                CASE voPr=9
                     STORE f2111ut9 TO puT2
                CASE voPr=10
                     STORE f2111ut0 TO puT2
           ENDCASE
           DO CASE
                CASE voPt=1
                     STORE f2111uti TO puT3
                CASE voPt=2
                     STORE f2111ut2 TO puT3
                CASE voPt=3
                     STORE f2111ut3 TO puT3
                CASE voPt=4
                     STORE f2111ut4 TO puT3
                CASE voPt=5
                     STORE f2111ut5 TO puT3
                CASE voPt=6
                     STORE f2111ut6 TO puT3
                CASE voPt=7
                     STORE f2111ut7 TO puT3
                CASE voPt=8
                     STORE f2111ut8 TO puT3
                CASE voPt=9
                     STORE f2111ut9 TO puT3
                CASE voPt=10
                     STORE f2111ut0 TO puT3
           ENDCASE
           DO CASE
                CASE voPu=1
                     STORE f2111uti TO puT4
                CASE voPu=2
                     STORE f2111ut2 TO puT4
                CASE voPu=3
                     STORE f2111ut3 TO puT4
                CASE voPu=4
                     STORE f2111ut4 TO puT4
                CASE voPu=5
                     STORE f2111ut5 TO puT4
                CASE voPu=6
                     STORE f2111ut6 TO puT4
                CASE voPu=7
                     STORE f2111ut7 TO puT4
                CASE voPu=8
                     STORE f2111ut8 TO puT4
                CASE voPu=9
                     STORE f2111ut9 TO puT4
                CASE voPu=10
                     STORE f2111ut0 TO puT4
           ENDCASE
           DO CASE
                CASE vmOn=1
                     STORE f2111vcs TO pcOs
                CASE vmOn=2
                     STORE f2111vcp TO pcOs
           ENDCASE
           IF mtMc<=11
                @vLIN,mCLN+00.4 Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,11   Pict "@S11"
                @vLIN,mCLN+18.0 Say F2111NUV Font "&mLetAri",9 Style "NT" Size 1,9    Pict "@S11"
                @vLIN,mCLN+28.4 Say F2111DES Font "&mLetAri",9 Style "NT" Size 1,51.5 Pict "@S54"
           ELSE
                @vLIN,mCLN+00.4 Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,20   Pict "@S20"
                @vLIN,mCLN+23.0 Say F2111NUV Font "&mLetAri",9 Style "NT" Size 1,9    Pict "@S11"
                @vLIN,mCLN+33.4 Say F2111DES Font "&mLetAri",9 Style "NT" Size 1,47.5 Pict "@S50"
           ENDIF
           @vLIN,mCLN+100.9 Say pCOS       Font "&mLetAri",9 Style "NQ" Size 1,17   Pict "999,999.9999"
           @vLIN,mCLN+114.2 Say pUT1       Font "&mLetAri",9 Style "NQ" Size 1,10   Pict "999.999"
           @vLIN,mCLN+125.5 Say pUT2       Font "&mLetAri",9 Style "NQ" Size 1,10   Pict "999.999"
           @vLIN,mCLN+136.8 Say pUT3       Font "&mLetAri",9 Style "NQ" Size 1,10   Pict "999.999"
           @vLIN,mCLN+148.1 Say pUT4       Font "&mLetAri",9 Style "NQ" Size 1,10   Pict "999.999"
           DO liN_2114b
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+0.1 TO vlIn
      DO liN_2114b
      IF mlIn=1
           STORE vlIn+0.2 TO vlIn
           DO liN_2114b
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg .AND. mlIn=1
           DO liN_0000a WITH ptAm, vlIn
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, puT1, puT2, puT3, puT4, pcOs
ENDPROC
*
PROCEDURE Cab_2114b
 PARAMETER ptAm
 PRIVATE puT1, puT2, puT3, puT4
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "COSTOS + % UTILIDAD" Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.0 TO vlIn
 DO liN_2114b
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE voPc<10
                STORE " %"+STR(voPc, 1, 0) TO puT1
           OTHERWISE
                STORE "%"+STR(voPc, 2, 0) TO puT1
      ENDCASE
      DO CASE
           CASE voPr<10
                STORE " %"+STR(voPr, 1, 0) TO puT2
           OTHERWISE
                STORE "%"+STR(voPr, 2, 0) TO puT2
      ENDCASE
      DO CASE
           CASE voPt<10
                STORE " %"+STR(voPt, 1, 0) TO puT3
           OTHERWISE
                STORE "%"+STR(voPt, 2, 0) TO puT3
      ENDCASE
      DO CASE
           CASE voPu<10
                STORE " %"+STR(voPu, 1, 0) TO puT4
           OTHERWISE
                STORE "%"+STR(voPu, 2, 0) TO puT4
      ENDCASE
      DO CASE
           CASE mlIn=1
                IF mtMc<=11
                     @vLIN,mCLN+04.5 Say "Código"            Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+19.5 Say "Unidad"            Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+28.9 Say "Descripción"       Font "&mLetAri",9 Style "BT"
                ELSE
                     @vLIN,mCLN+06.0 Say "Código"            Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+23.0 Say "Unidad"            Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+33.9 Say "Descripción"       Font "&mLetAri",9 Style "BT"
                ENDIF
                DO CASE
                     CASE vmOn=1
                          @vLIN,mCLN+93.2 Say "Costo "+mSIG  Font "&mLetAri",9 Style "BT"
                     CASE vmOn=2
                          @vLIN,mCLN+92.9 Say "Costo US$"    Font "&mLetAri",9 Style "BT"
                ENDCASE
                @vLIN,mCLN+108.8 Say pUT1                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+120.4 Say pUT2                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+131.5 Say pUT3                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+143.1 Say pUT4                  Font "&mLetAri",9 Style "BT"
           OTHERWISE
                @vLIN,mCLN+00.5 Say "Código"               Font "&mLetAri",9 Style "BT"
                IF mtMc<8
                     @vLIN,mCLN+17.2 Say "Unidad"            Font "&mLetAri",9 Style "BT"
                ELSE
                     @vLIN,mCLN+19.0 Say "Unidad"            Font "&mLetAri",9 Style "BT"
                ENDIF
                @vLIN,mCLN+28.7 Say "Descripción"          Font "&mLetAri",9 Style "BT"
                DO CASE
                     CASE vmOn=1
                          @vLIN,mCLN+95.0 Say "Costo "+mSIG  Font "&mLetAri",9 Style "BT"
                     CASE vmOn=2
                          @vLIN,mCLN+94.6 Say "Costo US$"    Font "&mLetAri",9 Style "BT"
                ENDCASE
                @vLIN,mCLN+110.8 Say pUT1                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+121.5 Say pUT2                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+133.1 Say pUT3                  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+143.5 Say pUT4                  Font "&mLetAri",9 Style "BT"
      ENDCASE
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2114b
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2114b
 DO coL_pr1
 RELEASE puT1, puT2, puT3, puT4
ENDPROC
*
PROCEDURE Lin_2114b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 DO li0_2114b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mtMc<=11
           @vLIN,mCLN+16.8 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+27.6 Say Chr(124) Font "&mLetAri",9 Style "NT"
      OTHERWISE
           @vLIN,mCLN+21.8 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+32.6 Say Chr(124) Font "&mLetAri",9 Style "NT"
 ENDCASE
 @vLIN,mCLN+089.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+106.1 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+117.6 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+129.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+140.4 Say Chr(124) Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Li0_2114b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 @vLIN,mCLN-000.4 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+151.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Rs1_2114b
 SET READBORDER ON
 DO rs1_2114a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2114b WITH "R"
 DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Xls_2114b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO CASE
      CASE vtP0="1"
           DO xl0_0000a WITH "Costo de Productos", "Listado", 35
      CASE vtP0="2"
           DO xl0_0000a WITH "Costo de Servicios", "Listado", 35
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 01).vaLue = "Código"
 pxLs.ceLls(3, 02).vaLue = "Descripción"
 pxLs.ceLls(3, 03).vaLue = "Unidad-Venta"
 pxLs.ceLls(3, 04).vaLue = "Costo "+msIg
 pxLs.ceLls(3, 05).vaLue = "Costo US$"
 pxLs.ceLls(3, 06).vaLue = "% Uti-1"
 pxLs.ceLls(3, 07).vaLue = "Prec.Lista-1 "+msIg
 pxLs.ceLls(3, 08).vaLue = "Prec.Lista-1 US$"
 pxLs.ceLls(3, 09).vaLue = "% Uti-2"
 pxLs.ceLls(3, 10).vaLue = "Prec.Lista-2 "+msIg
 pxLs.ceLls(3, 11).vaLue = "Prec.Lista-2 US$"
 pxLs.ceLls(3, 12).vaLue = "% Uti-3"
 pxLs.ceLls(3, 13).vaLue = "Prec.Lista-3 "+msIg
 pxLs.ceLls(3, 14).vaLue = "Prec.Lista-3 US$"
 pxLs.ceLls(3, 15).vaLue = "% Uti-4"
 pxLs.ceLls(3, 16).vaLue = "Prec.Lista-4 "+msIg
 pxLs.ceLls(3, 17).vaLue = "Prec.Lista-4 US$"
 pxLs.ceLls(3, 18).vaLue = "% Uti-5"
 pxLs.ceLls(3, 19).vaLue = "Prec.Lista-5 "+msIg
 pxLs.ceLls(3, 20).vaLue = "Prec.Lista-5 US$"
 pxLs.ceLls(3, 21).vaLue = "% Uti-6"
 pxLs.ceLls(3, 22).vaLue = "Prec.Lista-6 "+msIg
 pxLs.ceLls(3, 23).vaLue = "Prec.Lista-6 US$"
 pxLs.ceLls(3, 24).vaLue = "% Uti-7"
 pxLs.ceLls(3, 25).vaLue = "Prec.Lista-7 "+msIg
 pxLs.ceLls(3, 26).vaLue = "Prec.Lista-7 US$"
 pxLs.ceLls(3, 27).vaLue = "% Uti-8"
 pxLs.ceLls(3, 28).vaLue = "Prec.Lista-8 "+msIg
 pxLs.ceLls(3, 29).vaLue = "Prec.Lista-8 US$"
 pxLs.ceLls(3, 30).vaLue = "% Uti-9"
 pxLs.ceLls(3, 31).vaLue = "Prec.Lista-9 "+msIg
 pxLs.ceLls(3, 32).vaLue = "Prec.Lista-9 US$"
 pxLs.ceLls(3, 33).vaLue = "% Uti-10"
 pxLs.ceLls(3, 34).vaLue = "Prec.Lista-10 "+msIg
 pxLs.ceLls(3, 35).vaLue = "Prec.Lista-10 US$"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(03)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(4), pxLs.coLumns(35)).nuMberformat =  ;
           "#,###,###,##0.0000"
 pxLs.raNge(pxLs.coLumns(4), pxLs.coLumns(35)).hoRizontalalignment = 1
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      DO muE_2111a IN PAC2111A
      pxLs.ceLls(viT1, 01).seLect
      pxLs.ceLls(viT1, 01).vaLue = xcOd
      pxLs.ceLls(viT1, 02).vaLue = xdEs
      pxLs.ceLls(viT1, 03).vaLue = xnUv
      pxLs.ceLls(viT1, 04).vaLue = xvCs
      pxLs.ceLls(viT1, 05).vaLue = xvCp
      pxLs.ceLls(viT1, 06).vaLue = xuTi
      pxLs.ceLls(viT1, 07).vaLue = xvV1
      pxLs.ceLls(viT1, 08).vaLue = xvV2
      pxLs.ceLls(viT1, 09).vaLue = xuT2
      pxLs.ceLls(viT1, 10).vaLue = xvV3
      pxLs.ceLls(viT1, 11).vaLue = xvV4
      pxLs.ceLls(viT1, 12).vaLue = xuT3
      pxLs.ceLls(viT1, 13).vaLue = xvV5
      pxLs.ceLls(viT1, 14).vaLue = xvV6
      pxLs.ceLls(viT1, 15).vaLue = xuT4
      pxLs.ceLls(viT1, 16).vaLue = xvV7
      pxLs.ceLls(viT1, 17).vaLue = xvV8
      pxLs.ceLls(viT1, 18).vaLue = xuT5
      pxLs.ceLls(viT1, 19).vaLue = xvV9
      pxLs.ceLls(viT1, 20).vaLue = xvV0
      pxLs.ceLls(viT1, 21).vaLue = xuT6
      pxLs.ceLls(viT1, 22).vaLue = xvVa
      pxLs.ceLls(viT1, 23).vaLue = xvVb
      pxLs.ceLls(viT1, 24).vaLue = xuT7
      pxLs.ceLls(viT1, 25).vaLue = xvVc
      pxLs.ceLls(viT1, 26).vaLue = xvVd
      pxLs.ceLls(viT1, 27).vaLue = xuT8
      pxLs.ceLls(viT1, 28).vaLue = xvVe
      pxLs.ceLls(viT1, 29).vaLue = xvVf
      pxLs.ceLls(viT1, 30).vaLue = xuT9
      pxLs.ceLls(viT1, 31).vaLue = xvVg
      pxLs.ceLls(viT1, 32).vaLue = xvVh
      pxLs.ceLls(viT1, 33).vaLue = xuT0
      pxLs.ceLls(viT1, 34).vaLue = xvVi
      pxLs.ceLls(viT1, 35).vaLue = xvVj
      STORE viT1+1 TO viT1
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 DO xl1_0000a WITH 1
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2112b IN PAC2112B WITH "v"
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Clp_2114b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO xlS_2114b
           STORE 999 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2
           STORE k_F4 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. viTe<>1 .AND.  ;
           ((mcCc>=icLn+136.4 .AND. mcCc<=icLn+147.4 .AND. mrEs="3") .OR.  ;
           (mcCc>=icLn+138.1 .AND. mcCc<=icLn+149.1 .AND. mrEs>"3"))
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. viTe<>2 .AND.  ;
           ((mcCc>=icLn+147.4 .AND. mcCc<=icLn+164.8 .AND. mrEs="3") .OR.  ;
           (mcCc>=icLn+149.1 .AND. mcCc<=icLn+166.5 .AND. mrEs>"3"))
           STORE 02 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. viTe<>3 .AND.  ;
           (mcCc>=icLn+201.5 .AND. mcCc<=icLn+212.3 .AND. mrEs>"3")
           STORE 03 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_2114b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2112b IN PAC2112B WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2112b IN PAC2112B WITH "F", "v"
           DO diS_2114b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, pnUm, piN1, piN2, piN9
 STORE (mwFi/2)-12 TO pfIl
 STORE (mwCo/2)-40 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, voPs, voPc, mlIn
 STORE 02 TO vmOv, voPr
 STORE 03 TO voPt
 STORE 04 TO voPu
 STORE 99 TO mkEy
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFI2", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 @pFIL+06.2,pCOL+05 Say "Desde"                  Font "&mLetRom",11 Style "BT"
 @pFIL+07.7,pCOL+05 Say "Hasta"                  Font "&mLetRom",11 Style "BT"
 @pFIL+10.0,pCOL+05 Say "Opciones"               Font "&mLetRom",11 Style "BTU"
 @pFIL+13.0,pCOL+05 Say "% de Lista(s)"          Font "&mLetRom",11 Style "BTU"
 @pFIL+19.0,pCOL+54 Say "No.Líneas:"             Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+64 Say mPAG                     Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblr
 @pFIL+06.2,pCOL+46 Say "Página:"                Font "&mLetRom",11 Style "BT"
 @pFIL+07.7,pCOL+46 Say "Página:"                Font "&mLetRom",11 Style "BT"
 DO coLblz
 @pFIL+00.60,pCOL+17 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.55,pCOL+06 Say "Letras"                Font "&mLetRom",11 Style "BT"
 @pFIL+06.20,pCOL+15 Say "Código:"               Font "&mLetRom",11 Style "BT"
 @pFIL+07.70,pCOL+15 Say "Código:"               Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_3
           @ pfIl+3.7, pcOl+17 TO pfIl+4.7, pcOl+61 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+3.7,pCOL+17 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+3.7,pCOL+17 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+06.3,pCOL+27 Get dCOD Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S15" Color ,&mColBlZ
      @pFIL+07.8,pCOL+27 Get hCOD Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S15" Color ,&mColBlZ
      @pFIL+06.3,pCOL+57 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlR
      @pFIL+07.8,pCOL+57 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlR
      @pFIL+10.0,pCOL+22 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RVT S/.;US$"                       Size 1,5.5,.1 Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+10.0,pCOL+38 Get vOPS Font "&mLetAri",9 Style "NQ" Default vOPS Function "*RVT Todos;Solo los q tienen stock" Size 1,5.5,.1 Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+13.0,pCOL+25 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Size 1,5 Spinner 1,1,10 Color ,&mColBlN
      @pFIL+13.0,pCOL+36 Get vOPR Font "&mLetAri",9 Style "NQ" Default vOPR Size 1,5 Spinner 1,1,10 Color ,&mColBlN
      @pFIL+13.0,pCOL+47 Get vOPT Font "&mLetAri",9 Style "NQ" Default vOPT Size 1,5 Spinner 1,1,10 Color ,&mColBlN
      @pFIL+13.0,pCOL+58 Get vOPU Font "&mLetAri",9 Style "NQ" Default vOPU Size 1,5 Spinner 1,1,10 Color ,&mColBlN
      @pFIL+15.5,pCOL+06 Get vMOV Font "&mLetAri",9 Style "NQ" Default vMOV Function "*RVT x Tipo de Producto;Ninguno"                Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+15.5,pCOL+39 Get mLIN Font "&mLetAri",9 Style "NQ" Default mLIN Function "*RVT Impresion c / Lineas;Impresion s / Lineas" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+23.4,pCOL+17 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. (poPc=1 .OR. poPc=3)
                STORE UPPER(dcOd) TO dcOd
                STORE UPPER(hcOd) TO hcOd
                DO CASE
                     CASE ALLTRIM(dcOd)+"*"=ALLTRIM(hcOd)+"*" .AND.  ;
                          LEN(ALLTRIM(dcOd))=0
                          STORE "Rangos de códigos no pueden estar vacíos..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE ALLTRIM(dcOd)+"*">ALLTRIM(hcOd)+"*"
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=1
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     CASE voPc=voPr .OR. voPc=voPt .OR. voPc=voPu .OR.  ;
                          voPr=voPt .OR. voPr=voPu .OR. voPt=voPu
                          STORE "Los % a imprimir tienen q ser de Listas diferentes..."  ;
                                TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          IF poPc=3
                               STORE 1 TO mvIs
                          ELSE
                               STORE 0 TO mvIs
                          ENDIF
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE k_Esc TO mkEy
                STORE 0 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_2114b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En esta parte, se muestran todos los Productos con sus Costos y Porcen-"
 @ pfIl+1, 2 SAY "tajes de utilidades en el orden que se ha elegido."
 DO hl3_2111b IN PAC2111B
 @ pfIl+0, 2 SAY  ;
   "En en caso de Vidrios por Plancha, el nombre del Tipo de ser:"
 @ pfIl+1, 2 SAY "Vidrio x Plancha"
 STORE pfIl+3 TO pfIl
 @ pfIl, 2 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+00, 24 SAY ":" STYLE "BT"
 @ pfIl+01, 24 SAY ":" STYLE "BT"
 @ pfIl+02, 24 SAY ":" STYLE "BT"
 @ pfIl+03, 24 SAY ":" STYLE "BT"
 @ pfIl+04, 24 SAY ":" STYLE "BT"
 @ pfIl+05, 24 SAY ":" STYLE "BT"
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
 @ pfIl+00, 05 SAY "ESC" STYLE "BT"
 @ pfIl+01, 05 SAY "F10" STYLE "BT"
 @ pfIl+02, 05 SAY "F1" STYLE "BT"
 @ pfIl+03, 05 SAY "F2" STYLE "BT"
 @ pfIl+04, 05 SAY "F3" STYLE "BT"
 @ pfIl+05, 05 SAY "F4" STYLE "BT"
 @ pfIl+06, 05 SAY "F6" STYLE "BT"
 @ pfIl+07, 05 SAY "F7" STYLE "BT"
 @ pfIl+08, 05 SAY "F8" STYLE "BT"
 @ pfIl+09, 05 SAY "F9" STYLE "BT"
 @ pfIl+10, 05 SAY "TAB" STYLE "BT"
 @ pfIl+11, 05 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+12, 05 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+13, 05 SAY "PAGE DOWN / UP" STYLE "BT"
 @ pfIl+14, 05 SAY "HOME" STYLE "BT"
 @ pfIl+15, 05 SAY "END" STYLE "BT"
 @ pfIl+16, 05 SAY "CTRL P" STYLE "BT"
 @ pfIl+17, 05 SAY "CTRL -> / <-" STYLE "BT"
 @ pfIl+18, 05 SAY "ALT S" STYLE "BT"
 @ pfIl+00, 26 SAY "Regresar a Cabecera"
 @ pfIl+01, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+02, 26 SAY "Ayuda del Programa"
 @ pfIl+03, 26 SAY "Cambio de Costo S/. a US$ y viceversa"
 @ pfIl+04, 26 SAY "Aumentar o Disminuir Costos x % en BLOQUE"
 @ pfIl+05, 26 SAY "Cambio de Lista de Precios"
 @ pfIl+06, 26 SAY "Cambio de Orden de Consulta"
 @ pfIl+07, 26 SAY "Cambiar el Porcentaje de Utilidad en BLOQUE"
 @ pfIl+08, 26 SAY "Cambiar Tipo de Cambio GENERAL a las Listas"
 @ pfIl+09, 26 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+10, 26 SAY "Visualizar todos los datos del código"
 @ pfIl+11, 26 SAY "Línea inferior"
 @ pfIl+12, 26 SAY "Línea superior"
 @ pfIl+13, 26 SAY "Página siguiente/anterior"
 @ pfIl+14, 26 SAY "Primera línea"
 @ pfIl+15, 26 SAY "Última línea"
 @ pfIl+16, 26 SAY "Imprimir Costos + % Utilidad"
 @ pfIl+17, 26 SAY "Avanzar y retroceder campo"
 @ pfIl+18, 26 SAY "Predeterminar Moneda a Dólares Color Verde"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
