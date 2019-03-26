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
      DO paN_2116b
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
      DO paN_2116b
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
      DO seE_2112b IN PAC2112B WITH "v"
 ENDIF
 DO diS_2116b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2116b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2116b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2116b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2116b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_2116b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2116b
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
                DO moN_2116a
                DO dcT_2116a
                DO caM_2116b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F4 .AND. mlSt>1
                DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q2_0000a
                ACTIVATE POPUP vpOp BAR vsW4 AT ifIl, vcB7-14
                DO p2_0000a
                DO dcT_2116a
                DO caM_2116b
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
                DO caM_2116b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. (mrEs="3" .OR. viTe=1 .OR. viTe=3)
                DO prO_2116b
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2111a IN PAC2111A WITH "PAC2116A", "2"
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
                DO diS_2116b WITH "R"
           CASE mkEy=k_Ctrl_right .AND. viTe=4 .AND. mrEs>"3"
                STORE 1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_right .AND. viTe=2 .AND. mrEs="3"
                STORE 1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_right .OR. (mkEy=k_Enter .AND. ((viTe<2 .AND.  ;
                mrEs="3") .OR. (viTe<4 .AND. mrEs>"3")))
                STORE viTe+1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1 .AND. mrEs>"3"
                STORE 4 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1 .AND. mrEs="3"
                STORE 2 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_2116b
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
                                    DO paN_2116b
                               OTHERWISE
                                    DO seE_2112b IN PAC2112B WITH "v"
                                    DO diS_2116b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2116b WITH "R"
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
                                    DO paN_2116b
                               OTHERWISE
                                    DO seE_2112b IN PAC2112B WITH "v"
                                    DO diS_2116b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "u", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2116b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2116b WITH "N"
                          SKIP
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(ucOd))+"*"
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2116a WITH ffIl, ffIl+1.1
                               DO li1_2116a WITH ffIl, ffIl+1.1
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
                          DO diS_2116b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2116b WITH "N"
                          SKIP -1
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(icOd))+"*"
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2116a WITH ifIl-0.1, ifIl+1
                               DO li1_2116a WITH ifIl-0.1, ifIl+1
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
                          DO diS_2116b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2112b IN PAC2112B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2116b
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2116b WITH "R"
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
                          DO paN_2116b
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2116b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2112b IN PAC2112B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO diS_2116b WITH "R"
      STORE 99 TO mkEy
      DO CASE
           CASE vsW4=1 .AND. mrEs="3"
                STORE f2111dct TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vv1 TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vv2 TO vpRe, cpRe
                ENDCASE
           CASE vsW4=2 .AND. mrEs="3"
                STORE f2111dc2 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vv3 TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vv4 TO vpRe, cpRe
                ENDCASE
           CASE vsW4=3 .AND. mrEs="3"
                STORE f2111dc3 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vv5 TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vv6 TO vpRe, cpRe
                ENDCASE
           CASE vsW4=4 .AND. mrEs="3"
                STORE f2111dc4 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vv7 TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vv8 TO vpRe, cpRe
                ENDCASE
           CASE vsW4=5 .AND. mrEs="3"
                STORE f2111dc5 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vv9 TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vv0 TO vpRe, cpRe
                ENDCASE
           CASE vsW4=6 .AND. mrEs="3"
                STORE f2111dc6 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vva TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vvb TO vpRe, cpRe
                ENDCASE
           CASE vsW4=7 .AND. mrEs="3"
                STORE f2111dc7 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vvc TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vvd TO vpRe, cpRe
                ENDCASE
           CASE vsW4=8 .AND. mrEs="3"
                STORE f2111dc8 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vve TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vvf TO vpRe, cpRe
                ENDCASE
           CASE vsW4=9 .AND. mrEs="3"
                STORE f2111dc9 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vvg TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vvh TO vpRe, cpRe
                ENDCASE
           CASE vsW4=10 .AND. mrEs="3"
                STORE f2111dc0 TO vdCt, cdCt
                DO CASE
                     CASE vsW5=1
                          STORE f2111vvi TO vpRe, cpRe
                     CASE vsW5=2
                          STORE f2111vvj TO vpRe, cpRe
                ENDCASE
           CASE vsW4<3 .AND. mrEs>"3"
                STORE f2111dct TO vdCt, cdCt
                STORE f2111dc2 TO vdC2, cdC2
                DO CASE
                     CASE vsW5=1
                          STORE f2111vv1 TO vpRe, cpRe
                          STORE f2111vv3 TO vpR2, cpR2
                     CASE vsW5=2
                          STORE f2111vv2 TO vpRe, cpRe
                          STORE f2111vv4 TO vpR2, cpR2
                ENDCASE
           CASE (vsW4=3 .OR. vsW4=4) .AND. mrEs>"3"
                STORE f2111dc3 TO vdCt, cdCt
                STORE f2111dc4 TO vdC2, cdC2
                DO CASE
                     CASE vsW5=1
                          STORE f2111vv5 TO vpRe, cpRe
                          STORE f2111vv7 TO vpR2, cpR2
                     CASE vsW5=2
                          STORE f2111vv6 TO vpRe, cpRe
                          STORE f2111vv8 TO vpR2, cpR2
                ENDCASE
           CASE (vsW4=5 .OR. vsW4=6) .AND. mrEs>"3"
                STORE f2111dc5 TO vdCt, cdCt
                STORE f2111dc6 TO vdC2, cdC2
                DO CASE
                     CASE vsW5=1
                          STORE f2111vv9 TO vpRe, cpRe
                          STORE f2111vva TO vpR2, cpR2
                     CASE vsW5=2
                          STORE f2111vv0 TO vpRe, cpRe
                          STORE f2111vvb TO vpR2, cpR2
                ENDCASE
           CASE (vsW4=7 .OR. vsW4=8) .AND. mrEs>"3"
                STORE f2111dc7 TO vdCt, cdCt
                STORE f2111dc8 TO vdC2, cdC2
                DO CASE
                     CASE vsW5=1
                          STORE f2111vvc TO vpRe, cpRe
                          STORE f2111vve TO vpR2, cpR2
                     CASE vsW5=2
                          STORE f2111vvd TO vpRe, cpRe
                          STORE f2111vvf TO vpR2, cpR2
                ENDCASE
           CASE (vsW4=9 .OR. vsW4=10) .AND. mrEs>"3"
                STORE f2111dc9 TO vdCt, cdCt
                STORE f2111dc0 TO vdC2, cdC2
                DO CASE
                     CASE vsW5=1
                          STORE f2111vvg TO vpRe, cpRe
                          STORE f2111vvi TO vpR2, cpR2
                     CASE vsW5=2
                          STORE f2111vvh TO vpRe, cpRe
                          STORE f2111vvj TO vpR2, cpR2
                ENDCASE
      ENDCASE
      DO CASE
           CASE viTe=1 .AND. mrEs="3"
                @vFIL,vIC1 Get vDCT Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,&mColBlV
           CASE viTe=2 .AND. mrEs="3"
                @vFIL,vIC2 Get vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.6 Pict "999999.9999" Color ,&mColBlV
           CASE viTe=1 .AND. mrEs>"3"
                @vFIL,vIC1 Get vDCT Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,&mColBlV
           CASE viTe=2 .AND. mrEs>"3"
                @vFIL,vIC2 Get vPRE Font "&mLetAri",9 Style "NQ" Size 1,15.6 Pict "999999.9999" Color ,&mColBlV
           CASE viTe=3 .AND. mrEs>"3"
                @vFIL,vIC3 Get vDC2 Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"     Color ,&mColBlV
           CASE viTe=4 .AND. mrEs>"3"
                @vFIL,vIC4 Get vPR2 Font "&mLetAri",9 Style "NQ" Size 1,15.6 Pict "999999.9999" Color ,&mColBlV
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      STORE mkEy TO ckEy
      IF mkEy<>k_Esc .AND. (vpRe<>cpRe .OR. vdCt<>cdCt .OR. (mrEs>"3"  ;
         .AND. (vdC2<>cdC2 .OR. vpR2<>cpR2)))
           STORE f2111cod TO xcOd
           STORE f2111tip TO xtPo
           SELECT tiP_prod
           SEEK xtPo
           IF EOF()
                STORE 1 TO xtPo
           ELSE
                STORE f9211tpo TO xtPo
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
                DO gr1_2116b WITH "1"
                UNLOCK
                IF vsW1=2
                     SELECT teMporal
                     DO gr1_2116b WITH "2"
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
           DO diS_2116b WITH "R"
           STORE ckEy TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2116b
 DO pn1_2116b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2116b
 DO pn1_2116b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2116b
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
                DO diS_2116b WITH "N"
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
      DO liN_2116a WITH ufIl+1, ffIl+1.1
      DO li1_2116a WITH ufIl+1, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2116b
 PARAMETER ptIp
 PRIVATE pdCt, pdC2, pmV1, pmV2, pmV3, pmV4, ppRe, ppR2
 DO muE_2112b IN PAC2112B WITH "F", "v"
 DO CASE
      CASE vsW4=1 .AND. mrEs="3"
           STORE f2111dct TO pdCt
           STORE f2111mv1 TO pmV1
           STORE f2111mv2 TO pmV2
      CASE vsW4=2 .AND. mrEs="3"
           STORE f2111dc2 TO pdCt
           STORE f2111mv3 TO pmV1
           STORE f2111mv4 TO pmV2
      CASE vsW4=3 .AND. mrEs="3"
           STORE f2111dc3 TO pdCt
           STORE f2111mv5 TO pmV1
           STORE f2111mv6 TO pmV2
      CASE vsW4=4 .AND. mrEs="3"
           STORE f2111dc4 TO pdCt
           STORE f2111mv7 TO pmV1
           STORE f2111mv8 TO pmV2
      CASE vsW4=5 .AND. mrEs="3"
           STORE f2111dc5 TO pdCt
           STORE f2111mv9 TO pmV1
           STORE f2111mv0 TO pmV2
      CASE vsW4=6 .AND. mrEs="3"
           STORE f2111dc6 TO pdCt
           STORE f2111mva TO pmV1
           STORE f2111mvb TO pmV2
      CASE vsW4=7 .AND. mrEs="3"
           STORE f2111dc7 TO pdCt
           STORE f2111mvc TO pmV1
           STORE f2111mvd TO pmV2
      CASE vsW4=8 .AND. mrEs="3"
           STORE f2111dc8 TO pdCt
           STORE f2111mve TO pmV1
           STORE f2111mvf TO pmV2
      CASE vsW4=9 .AND. mrEs="3"
           STORE f2111dc9 TO pdCt
           STORE f2111mvg TO pmV1
           STORE f2111mvh TO pmV2
      CASE vsW4=10 .AND. mrEs="3"
           STORE f2111dc0 TO pdCt
           STORE f2111mvi TO pmV1
           STORE f2111mvj TO pmV2
      CASE vsW4<3 .AND. mrEs>"3"
           STORE f2111dct TO pdCt
           STORE f2111dc2 TO pdC2
           STORE f2111mv1 TO pmV1
           STORE f2111mv2 TO pmV2
           STORE f2111mv3 TO pmV3
           STORE f2111mv4 TO pmV4
      CASE (vsW4=3 .OR. vsW4=4) .AND. mrEs>"3"
           STORE f2111dc3 TO pdCt
           STORE f2111dc4 TO pdC2
           STORE f2111mv5 TO pmV1
           STORE f2111mv6 TO pmV2
           STORE f2111mv7 TO pmV3
           STORE f2111mv8 TO pmV4
      CASE (vsW4=5 .OR. vsW4=6) .AND. mrEs>"3"
           STORE f2111dc5 TO pdCt
           STORE f2111dc6 TO pdC2
           STORE f2111mv9 TO pmV1
           STORE f2111mv0 TO pmV2
           STORE f2111mva TO pmV3
           STORE f2111mvb TO pmV4
      CASE (vsW4=7 .OR. vsW4=8) .AND. mrEs>"3"
           STORE f2111dc7 TO pdCt
           STORE f2111dc8 TO pdC2
           STORE f2111mvc TO pmV1
           STORE f2111mvd TO pmV2
           STORE f2111mve TO pmV3
           STORE f2111mvf TO pmV4
      CASE (vsW4=9 .OR. vsW4=10) .AND. mrEs>"3"
           STORE f2111dc9 TO pdCt
           STORE f2111dc0 TO pdC2
           STORE f2111mvg TO pmV1
           STORE f2111mvh TO pmV2
           STORE f2111mvi TO pmV3
           STORE f2111mvj TO pmV4
 ENDCASE
 DO CASE
      CASE vsW4=1 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vv1 TO ppRe
      CASE vsW4=1 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vv2 TO ppRe
      CASE vsW4=2 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vv3 TO ppRe
      CASE vsW4=2 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vv4 TO ppRe
      CASE vsW4=3 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vv5 TO ppRe
      CASE vsW4=3 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vv6 TO ppRe
      CASE vsW4=4 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vv7 TO ppRe
      CASE vsW4=4 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vv8 TO ppRe
      CASE vsW4=5 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vv9 TO ppRe
      CASE vsW4=5 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vv0 TO ppRe
      CASE vsW4=6 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vva TO ppRe
      CASE vsW4=6 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vvb TO ppRe
      CASE vsW4=7 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vvc TO ppRe
      CASE vsW4=7 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vvd TO ppRe
      CASE vsW4=8 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vve TO ppRe
      CASE vsW4=8 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vvf TO ppRe
      CASE vsW4=9 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vvg TO ppRe
      CASE vsW4=9 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vvh TO ppRe
      CASE vsW4=10 .AND. mrEs="3" .AND. vsW5=1
           STORE f2111vvi TO ppRe
      CASE vsW4=10 .AND. mrEs="3" .AND. vsW5=2
           STORE f2111vvj TO ppRe
      CASE vsW4<3 .AND. mrEs>"3" .AND. vsW5=1
           STORE f2111vv1 TO ppRe
           STORE f2111vv3 TO ppR2
      CASE vsW4<3 .AND. mrEs>"3" .AND. vsW5=2
           STORE f2111vv2 TO ppRe
           STORE f2111vv4 TO ppR2
      CASE (vsW4=3 .OR. vsW4=4) .AND. mrEs>"3" .AND. vsW5=1
           STORE f2111vv5 TO ppRe
           STORE f2111vv7 TO ppR2
      CASE (vsW4=3 .OR. vsW4=4) .AND. mrEs>"3" .AND. vsW5=2
           STORE f2111vv6 TO ppRe
           STORE f2111vv8 TO ppR2
      CASE (vsW4=5 .OR. vsW4=6) .AND. mrEs>"3" .AND. vsW5=1
           STORE f2111vv9 TO ppRe
           STORE f2111vva TO ppR2
      CASE (vsW4=5 .OR. vsW4=6) .AND. mrEs>"3" .AND. vsW5=2
           STORE f2111vv0 TO ppRe
           STORE f2111vvb TO ppR2
      CASE (vsW4=7 .OR. vsW4=8) .AND. mrEs>"3" .AND. vsW5=1
           STORE f2111vvc TO ppRe
           STORE f2111vve TO ppR2
      CASE (vsW4=7 .OR. vsW4=8) .AND. mrEs>"3" .AND. vsW5=2
           STORE f2111vvd TO ppRe
           STORE f2111vvf TO ppR2
      CASE (vsW4=9 .OR. vsW4=10) .AND. mrEs>"3" .AND. vsW5=1
           STORE f2111vvg TO ppRe
           STORE f2111vvi TO ppR2
      CASE (vsW4=9 .OR. vsW4=10) .AND. mrEs>"3" .AND. vsW5=2
           STORE f2111vvh TO ppRe
           STORE f2111vvj TO ppR2
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
           @vFIL,iCLN+165.2 Say pMV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFIL,iCLN+182.5 Say pMV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      OTHERWISE
           @vFIL,iCLN+170.8 Say pMV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFIL,iCLN+188.2 Say pMV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFIL,iCLN+234.0 Say pMV3 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFIL,iCLN+251.4 Say pMV4 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
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
           @vFIL,iCLN+124.1 Say F2111NUV Font "&mLetAri",9 Style "NQ" Size 1,17.8 Pict "@S20"
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_beive
      CASE ptIp="R"
           DO coLblv
 ENDCASE
 @vFIL,vIC1-0.2 Say pDCT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999.999"
 @vFIL,vIC2-0.7 Say pPRE Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 IF mrEs>"3"
      @vFIL,vIC3-0.2 Say pDC2 Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999.999"
      @vFIL,vIC4-0.7 Say pPR2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 ENDIF
 RELEASE pdCt, pdC2, pmV1, pmV2, pmV3, pmV4, ppRe, ppR2
ENDPROC
*
PROCEDURE Pro_2116b
 DO coLsc3
 SET READBORDER ON
 STORE k_Enter TO mkEy
 SAVE SCREEN TO vpAn_11
 @ ifIl+0.8, vcB3-1 TO ifIl+04.2, vcB3+78.1 PATTERN 1 PEN 1
 @ ifIl+0.0, vcB3-2 TO ifIl+03.7, vcB3+77.0 PATTERN 1 PEN 3
 STORE 0 TO vdCx, vdCy
 DO CASE
      CASE mrEs="3"
           @vFB3+0.7,vCB3+18 Say "%  DESCUENTO:"   Font "&mLetRom",12 Style "BQ"
      CASE vsW4<3 .AND. viTe=1
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-1:"  Font "&mLetRom",12 Style "BQ"
      CASE vsW4<3 .AND. viTe=3
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-2:"  Font "&mLetRom",12 Style "BQ"
      CASE (vsW4=3 .OR. vsW4=4) .AND. viTe=1
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-3:"  Font "&mLetRom",12 Style "BQ"
      CASE (vsW4=3 .OR. vsW4=4) .AND. viTe=3
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-4:"  Font "&mLetRom",12 Style "BQ"
      CASE (vsW4=5 .OR. vsW4=6) .AND. viTe=1
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-5:"  Font "&mLetRom",12 Style "BQ"
      CASE (vsW4=5 .OR. vsW4=6) .AND. viTe=3
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-6:"  Font "&mLetRom",12 Style "BQ"
      CASE (vsW4=7 .OR. vsW4=8) .AND. viTe=1
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-7:"  Font "&mLetRom",12 Style "BQ"
      CASE (vsW4=7 .OR. vsW4=8) .AND. viTe=3
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-8:"  Font "&mLetRom",12 Style "BQ"
      CASE (vsW4=9 .OR. vsW4=10) .AND. viTe=1
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-9:"  Font "&mLetRom",12 Style "BQ"
      CASE (vsW4=9 .OR. vsW4=10) .AND. viTe=3
           @vFB3+0.7,vCB3+16 Say "% DESCUENTO-10:" Font "&mLetRom",12 Style "BQ"
 ENDCASE
 @vFB3+0.6,vCB3+44 Get vDCX Font "&mLetRom",12 Style "BQ" Size 1,9 Pict "999.999" Color ,&mColBlN
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
 DO prE_docum WITH  ;
    "¿Desea cambiar Porcentaje de Descuento a este grupo de Productos?"
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
 IF mrEs>"3"
      IF viTe=3
           STORE vdCx TO vdCy
           STORE 9999 TO vdCx
      ELSE
           STORE 9999 TO vdCy
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
                ELSE
                     STORE f9211tpo TO xtPo
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
                DO gr2_2116b WITH "1"
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
                ELSE
                     STORE f9211tpo TO xtPo
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
                DO gr2_2116b WITH "1"
                UNLOCK
                SELECT teMporal
                DO gr2_2116b WITH "2"
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
 WAIT WINDOW NOWAIT  ;
      "EL NUEVO PORCENTAJE DE DESCUENTO YA CAMBIÓ LISTA DE PRECIOS..."
 = INKEY(0.5)
 WAIT CLEAR
 RESTORE SCREEN FROM vpAn_11
 DO caM_2116b
ENDPROC
*
PROCEDURE Cam_2116b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2112b IN PAC2112B WITH "v", "x"
 DO orD_2111b IN PAC2111B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2112b IN PAC2112B WITH "i"
 DO pa1_2116b
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "x", "v"
 ENDIF
 DO seE_2112b IN PAC2112B WITH "v"
 DO diS_2116b WITH "R"
ENDPROC
*
PROCEDURE Gr1_2116b
 PARAMETER paRc
 DO g11_2116b
 DO grA_2116b
 IF paRc="2"
      RETURN
 ENDIF
 IF vlI2=1
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
      DO g11_2116b
      DO grA_2116b
 ENDIF
 IF vlI3=1
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
      DO g11_2116b
      DO grA_2116b
 ENDIF
 IF vlI4=1
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
      DO g11_2116b
      DO grA_2116b
 ENDIF
 IF vlI5=1
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
      DO g11_2116b
      DO grA_2116b
 ENDIF
ENDPROC
*
PROCEDURE G11_2116b
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE vsW4=1
                     REPLACE f2111dct WITH vdCt
                CASE vsW4=2
                     REPLACE f2111dc2 WITH vdCt
                CASE vsW4=3
                     REPLACE f2111dc3 WITH vdCt
                CASE vsW4=4
                     REPLACE f2111dc4 WITH vdCt
                CASE vsW4=5
                     REPLACE f2111dc5 WITH vdCt
                CASE vsW4=6
                     REPLACE f2111dc6 WITH vdCt
                CASE vsW4=7
                     REPLACE f2111dc7 WITH vdCt
                CASE vsW4=8
                     REPLACE f2111dc8 WITH vdCt
                CASE vsW4=9
                     REPLACE f2111dc9 WITH vdCt
                CASE vsW4=10
                     REPLACE f2111dc0 WITH vdCt
           ENDCASE
           DO CASE
                CASE vsW4=1 .AND. vsW5=1
                     REPLACE f2111vv1 WITH vpRe
                CASE vsW4=1 .AND. vsW5=2
                     REPLACE f2111vv2 WITH vpRe
                CASE vsW4=2 .AND. vsW5=1
                     REPLACE f2111vv3 WITH vpRe
                CASE vsW4=2 .AND. vsW5=2
                     REPLACE f2111vv4 WITH vpRe
                CASE vsW4=3 .AND. vsW5=1
                     REPLACE f2111vv5 WITH vpRe
                CASE vsW4=3 .AND. vsW5=2
                     REPLACE f2111vv6 WITH vpRe
                CASE vsW4=4 .AND. vsW5=1
                     REPLACE f2111vv7 WITH vpRe
                CASE vsW4=4 .AND. vsW5=2
                     REPLACE f2111vv8 WITH vpRe
                CASE vsW4=5 .AND. vsW5=1
                     REPLACE f2111vv9 WITH vpRe
                CASE vsW4=5 .AND. vsW5=2
                     REPLACE f2111vv0 WITH vpRe
                CASE vsW4=6 .AND. vsW5=1
                     REPLACE f2111vva WITH vpRe
                CASE vsW4=6 .AND. vsW5=2
                     REPLACE f2111vvb WITH vpRe
                CASE vsW4=7 .AND. vsW5=1
                     REPLACE f2111vvc WITH vpRe
                CASE vsW4=7 .AND. vsW5=2
                     REPLACE f2111vvd WITH vpRe
                CASE vsW4=8 .AND. vsW5=1
                     REPLACE f2111vve WITH vpRe
                CASE vsW4=8 .AND. vsW5=2
                     REPLACE f2111vvf WITH vpRe
                CASE vsW4=9 .AND. vsW5=1
                     REPLACE f2111vvg WITH vpRe
                CASE vsW4=9 .AND. vsW5=2
                     REPLACE f2111vvh WITH vpRe
                CASE vsW4=10 .AND. vsW5=1
                     REPLACE f2111vvi WITH vpRe
                CASE vsW4=10 .AND. vsW5=2
                     REPLACE f2111vvj WITH vpRe
           ENDCASE
      OTHERWISE
           DO CASE
                CASE vsW4<3
                     REPLACE f2111dct WITH vdCt
                     REPLACE f2111dc2 WITH vdC2
                     DO CASE
                          CASE vsW5=1
                               REPLACE f2111vv1 WITH vpRe
                               REPLACE f2111vv3 WITH vpR2
                          CASE vsW5=2
                               REPLACE f2111vv2 WITH vpRe
                               REPLACE f2111vv4 WITH vpR2
                     ENDCASE
                CASE vsW4=3 .OR. vsW4=4
                     REPLACE f2111dc3 WITH vdCt
                     REPLACE f2111dc4 WITH vdC2
                     DO CASE
                          CASE vsW5=1
                               REPLACE f2111vv5 WITH vpRe
                               REPLACE f2111vv7 WITH vpR2
                          CASE vsW5=2
                               REPLACE f2111vv6 WITH vpRe
                               REPLACE f2111vv8 WITH vpR2
                     ENDCASE
                CASE vsW4=5 .OR. vsW4=6
                     REPLACE f2111dc5 WITH vdCt
                     REPLACE f2111dc6 WITH vdC2
                     DO CASE
                          CASE vsW5=1
                               REPLACE f2111vv9 WITH vpRe
                               REPLACE f2111vva WITH vpR2
                          CASE vsW5=1
                               REPLACE f2111vv0 WITH vpRe
                               REPLACE f2111vvb WITH vpR2
                     ENDCASE
                CASE vsW4=7 .OR. vsW4=8
                     REPLACE f2111dc7 WITH vdCt
                     REPLACE f2111dc8 WITH vdC2
                     DO CASE
                          CASE vsW5=1
                               REPLACE f2111vvc WITH vpRe
                               REPLACE f2111vve WITH vpR2
                          CASE vsW5=2
                               REPLACE f2111vvd WITH vpRe
                               REPLACE f2111vvf WITH vpR2
                     ENDCASE
                CASE vsW4=9 .OR. vsW4=10
                     REPLACE f2111dc9 WITH vdCt
                     REPLACE f2111dc0 WITH vdC2
                     DO CASE
                          CASE vsW5=1
                               REPLACE f2111vvg WITH vpRe
                               REPLACE f2111vvi WITH vpR2
                          CASE vsW5=1
                               REPLACE f2111vvh WITH vpRe
                               REPLACE f2111vvj WITH vpR2
                     ENDCASE
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Gr2_2116b
 PARAMETER paRc
 DO g12_2116b
 DO grA_2116b
 IF paRc="2"
      RETURN
 ENDIF
 IF vlI2=1
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
      DO g12_2116b
      DO grA_2116b
 ENDIF
 IF vlI3=1
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
      DO g12_2116b
      DO grA_2116b
 ENDIF
 IF vlI4=1
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
      DO g12_2116b
      DO grA_2116b
 ENDIF
 IF vlI5=1
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
      DO g12_2116b
      DO grA_2116b
 ENDIF
ENDPROC
*
PROCEDURE G12_2116b
 DO CASE
      CASE mrEs="3" .AND. vsW4=1
           REPLACE f2111dct WITH vdCx
      CASE mrEs="3" .AND. vsW4=2
           REPLACE f2111dc2 WITH vdCx
      CASE mrEs="3" .AND. vsW4=3
           REPLACE f2111dc3 WITH vdCx
      CASE mrEs="3" .AND. vsW4=4
           REPLACE f2111dc4 WITH vdCx
      CASE mrEs="3" .AND. vsW4=5
           REPLACE f2111dc5 WITH vdCx
      CASE mrEs="3" .AND. vsW4=6
           REPLACE f2111dc6 WITH vdCx
      CASE mrEs="3" .AND. vsW4=7
           REPLACE f2111dc7 WITH vdCx
      CASE mrEs="3" .AND. vsW4=8
           REPLACE f2111dc8 WITH vdCx
      CASE mrEs="3" .AND. vsW4=9
           REPLACE f2111dc9 WITH vdCx
      CASE mrEs="3" .AND. vsW4=10
           REPLACE f2111dc0 WITH vdCx
      CASE vsW4<3 .AND. viTe=1
           REPLACE f2111dct WITH vdCx
      CASE vsW4<3 .AND. viTe=3
           REPLACE f2111dc2 WITH vdCy
      CASE (vsW4=3 .OR. vsW4=4) .AND. viTe=1
           REPLACE f2111dc3 WITH vdCx
      CASE (vsW4=3 .OR. vsW4=4) .AND. viTe=3
           REPLACE f2111dc4 WITH vdCy
      CASE (vsW4=5 .OR. vsW4=6) .AND. viTe=1
           REPLACE f2111dc5 WITH vdCx
      CASE (vsW4=5 .OR. vsW4=6) .AND. viTe=3
           REPLACE f2111dc6 WITH vdCy
      CASE (vsW4=7 .OR. vsW4=8) .AND. viTe=1
           REPLACE f2111dc7 WITH vdCx
      CASE (vsW4=7 .OR. vsW4=8) .AND. viTe=3
           REPLACE f2111dc8 WITH vdCy
      CASE (vsW4=9 .OR. vsW4=10) .AND. viTe=1
           REPLACE f2111dc9 WITH vdCx
      CASE (vsW4=9 .OR. vsW4=10) .AND. viTe=3
           REPLACE f2111dc0 WITH vdCy
 ENDCASE
ENDPROC
*
PROCEDURE Gra_2116b
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
PROCEDURE Imp_2116b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PAC2116B
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
 DO reP_2116b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2116b
 PRIVATE ptAm
 PRIVATE ppR1, ppR2, pdCt, pmV1, pmV2
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
 DO CASE
      CASE mlIn=1
           STORE 05 TO mcLn
           STORE 99 TO ptAm
      OTHERWISE
           STORE 07 TO mcLn
           STORE 100 TO ptAm
 ENDCASE
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
         f2111sto=0 .AND. f2111tip=1 .AND. f2111cst=1)
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
                DO caB_2116b WITH ptAm
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vmOv=1
                STORE vlIn+0.7 TO vlIn
                DO li0_2116b
                STORE vlIn+0.5 TO vlIn
                DO li0_2116b
                STORE vtIp TO xtIp
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+1 Say vNTI Font "&mLetRom",12 Style "BQ"
                ENDIF
                DO li0_2116b
                STORE vlIn+0.4 TO vlIn
                DO li0_2116b
                IF vpAg>=miPg .AND. vpAg<=muPg .AND. mlIn=1
                     DO liN_0000a WITH ptAm, vlIn
                ENDIF
                STORE vlIn+0.1 TO vlIn
                DO li0_2116b
           ENDIF
      ENDIF
      STORE vlIn+0.6 TO vlIn
      DO liN_2116b
      STORE vlIn+0.7 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE voPc=1
                     STORE f2111dct TO pdCt
                     STORE f2111vv1 TO ppR1
                     STORE f2111vv2 TO ppR2
                     STORE f2111mv1 TO pmV1
                     STORE f2111mv2 TO pmV2
                CASE voPc=2
                     STORE f2111dc2 TO pdCt
                     STORE f2111vv3 TO ppR1
                     STORE f2111vv4 TO ppR2
                     STORE f2111mv3 TO pmV1
                     STORE f2111mv4 TO pmV2
                CASE voPc=3
                     STORE f2111dc3 TO pdCt
                     STORE f2111vv5 TO ppR1
                     STORE f2111vv6 TO ppR2
                     STORE f2111mv5 TO pmV1
                     STORE f2111mv6 TO pmV2
                CASE voPc=4
                     STORE f2111dc4 TO pdCt
                     STORE f2111vv7 TO ppR1
                     STORE f2111vv8 TO ppR2
                     STORE f2111mv7 TO pmV1
                     STORE f2111mv8 TO pmV2
                CASE voPc=5
                     STORE f2111dc5 TO pdCt
                     STORE f2111vv9 TO ppR1
                     STORE f2111vv0 TO ppR2
                     STORE f2111mv9 TO pmV1
                     STORE f2111mv0 TO pmV2
                CASE voPc=6
                     STORE f2111dc6 TO pdCt
                     STORE f2111vva TO ppR1
                     STORE f2111vvb TO ppR2
                     STORE f2111mva TO pmV1
                     STORE f2111mvb TO pmV2
                CASE voPc=7
                     STORE f2111dc7 TO pdCt
                     STORE f2111vvc TO ppR1
                     STORE f2111vvd TO ppR2
                     STORE f2111mvc TO pmV1
                     STORE f2111mvd TO pmV2
                CASE voPc=8
                     STORE f2111dc8 TO pdCt
                     STORE f2111vve TO ppR1
                     STORE f2111vvf TO ppR2
                     STORE f2111mve TO pmV1
                     STORE f2111mvf TO pmV2
                CASE voPc=9
                     STORE f2111dc9 TO pdCt
                     STORE f2111vvg TO ppR1
                     STORE f2111vvh TO ppR2
                     STORE f2111mvg TO pmV1
                     STORE f2111mvh TO pmV2
                CASE voPc=10
                     STORE f2111dc0 TO pdCt
                     STORE f2111vvi TO ppR1
                     STORE f2111vvj TO ppR2
                     STORE f2111mvi TO pmV1
                     STORE f2111mvj TO pmV2
           ENDCASE
           @vLIN,mCLN+000.4 Say F2111COD Font "&mLetAri",8 Style "NQ" Size 1,15.0 Pict "@S20"
           @vLIN,mCLN+016.9 Say F2111NUV Font "&mLetAri",9 Style "NT" Size 1,08.2 Pict "@S10"
           @vLIN,mCLN+026.9 Say F2111DES Font "&mLetAri",9 Style "NT" Size 1,31.5 Pict "@S34"
           @vLIN,mCLN+082.7 Say pPR1     Font "&mLetAri",9 Style "NQ" Size 1,17.0 Pict "999,999.9999"
           @vLIN,mCLN+100.0 Say pPR2     Font "&mLetAri",9 Style "NQ" Size 1,17.0 Pict "999,999.9999"
           @vLIN,mCLN+112.9 Say pDCT     Font "&mLetAri",9 Style "NQ" Size 1,10.0 Pict "999.999"
           @vLIN,mCLN+130.0 Say pMV1     Font "&mLetAri",9 Style "NQ" Size 1,17.0 Pict "999,999.9999"
           @vLIN,mCLN+147.5 Say pMV2     Font "&mLetAri",9 Style "NQ" Size 1,17.0 Pict "999,999.9999"
           DO liN_2116b
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+0.1 TO vlIn
      DO liN_2116b
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
ENDPROC
*
PROCEDURE Cab_2116b
 PARAMETER ptAm
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
      @vLIN,mCLN Say "LISTAS, %DCTO Y MINIMOS" Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.0 TO vlIn
 DO liN_2116b
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mlIn=1
                @vLIN,mCLN+003.4 Say "Código"                      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+017.0 Say "Unidad"                      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+026.9 Say "Descripción"                 Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+071.5 Say "Precio "+mSIG+Str(vOPC,2,0)  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+088.0 Say "Precio US$"+Str(vOPC,2,0)    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+105.9 Say "%Dcto"                       Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+119.0 Say "Mín. "+mSIG+Str(vOPC,2,0)    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+135.5 Say "Mín. US$"+Str(vOPC,2,0)      Font "&mLetAri",9 Style "BT"
           OTHERWISE
                @vLIN,mCLN+000.4 Say "Código"                      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+016.9 Say "Unidad"                      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+026.9 Say "Descripción"                 Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+071.8 Say "Precio "+mSIG+Str(vOPC,2,0)  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+088.0 Say "Precio US$"+Str(vOPC,2,0)    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+106.4 Say "%Dcto"                       Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+120.5 Say "Mín."+mSIG+Str(vOPC,2,0)     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+136.5 Say "Mín.US$"+Str(vOPC,2,0)       Font "&mLetAri",9 Style "BT"
      ENDCASE
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2116b
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2116b
 DO coL_pr1
ENDPROC
*
PROCEDURE Lin_2116b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 DO li0_2116b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vLIN,mCLN+015.8 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+025.9 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+069.5 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+086.5 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+104.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+115.7 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+133.8 Say Chr(124) Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Li0_2116b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 @vLIN,mCLN-000.4 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+151.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Rs1_2116b
 SET READBORDER ON
 DO rs1_2116a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2116b WITH "R"
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
PROCEDURE Xls_2116b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Lista de Precios y Minimos", "Listado", 53
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 01).vaLue = "Codigo"
 pxLs.ceLls(3, 02).vaLue = "Descripcion"
 pxLs.ceLls(3, 03).vaLue = "Unid-Vta"
 pxLs.ceLls(3, 04).vaLue = "% Dcto-1"
 pxLs.ceLls(3, 05).vaLue = "Lista-1 "+msIg
 pxLs.ceLls(3, 06).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 07).vaLue = "Lista-1 US$"
 pxLs.ceLls(3, 08).vaLue = "Minimo US$"
 pxLs.ceLls(3, 09).vaLue = "% Dcto-2"
 pxLs.ceLls(3, 10).vaLue = "Lista-2 "+msIg
 pxLs.ceLls(3, 11).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 12).vaLue = "Lista-2 US$"
 pxLs.ceLls(3, 13).vaLue = "Minimo US$"
 pxLs.ceLls(3, 14).vaLue = "% Dcto-3"
 pxLs.ceLls(3, 15).vaLue = "Lista-3 "+msIg
 pxLs.ceLls(3, 16).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 17).vaLue = "Lista-3 US$"
 pxLs.ceLls(3, 18).vaLue = "Minimo US$"
 pxLs.ceLls(3, 19).vaLue = "% Dcto-4"
 pxLs.ceLls(3, 20).vaLue = "Lista-4 "+msIg
 pxLs.ceLls(3, 21).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 22).vaLue = "Lista-4 US$"
 pxLs.ceLls(3, 23).vaLue = "Minimo US$"
 pxLs.ceLls(3, 24).vaLue = "% Dcto-5"
 pxLs.ceLls(3, 25).vaLue = "Lista-5 "+msIg
 pxLs.ceLls(3, 26).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 27).vaLue = "Lista-5 US$"
 pxLs.ceLls(3, 28).vaLue = "Minimo US$"
 pxLs.ceLls(3, 29).vaLue = "% Dcto-6"
 pxLs.ceLls(3, 30).vaLue = "Lista-6 "+msIg
 pxLs.ceLls(3, 31).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 32).vaLue = "Lista-6 US$"
 pxLs.ceLls(3, 33).vaLue = "Minimo US$"
 pxLs.ceLls(3, 34).vaLue = "% Dcto-7"
 pxLs.ceLls(3, 35).vaLue = "Lista-7 "+msIg
 pxLs.ceLls(3, 36).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 37).vaLue = "Lista-7 US$"
 pxLs.ceLls(3, 38).vaLue = "Minimo US$"
 pxLs.ceLls(3, 39).vaLue = "% Dcto-8"
 pxLs.ceLls(3, 40).vaLue = "Lista-8 "+msIg
 pxLs.ceLls(3, 41).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 42).vaLue = "Lista-8 US$"
 pxLs.ceLls(3, 43).vaLue = "Minimo US$"
 pxLs.ceLls(3, 44).vaLue = "% Dcto-9"
 pxLs.ceLls(3, 45).vaLue = "Lista-9 "+msIg
 pxLs.ceLls(3, 46).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 47).vaLue = "Lista-9 US$"
 pxLs.ceLls(3, 48).vaLue = "Minimo US$"
 pxLs.ceLls(3, 49).vaLue = "% Dcto-10"
 pxLs.ceLls(3, 50).vaLue = "Lista-10 "+msIg
 pxLs.ceLls(3, 51).vaLue = "Minimo "+msIg
 pxLs.ceLls(3, 52).vaLue = "Lista-10 US$"
 pxLs.ceLls(3, 53).vaLue = "Minimo US$"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(03)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(4), pxLs.coLumns(53)).nuMberformat =  ;
           "#,###,###,##0.0000"
 pxLs.raNge(pxLs.coLumns(4), pxLs.coLumns(53)).hoRizontalalignment = 1
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
      pxLs.ceLls(viT1, 04).vaLue = xdCt
      pxLs.ceLls(viT1, 05).vaLue = xvV1
      pxLs.ceLls(viT1, 06).vaLue = xmV1
      pxLs.ceLls(viT1, 07).vaLue = xvV2
      pxLs.ceLls(viT1, 08).vaLue = xmV2
      pxLs.ceLls(viT1, 09).vaLue = xdC2
      pxLs.ceLls(viT1, 10).vaLue = xvV3
      pxLs.ceLls(viT1, 11).vaLue = xmV3
      pxLs.ceLls(viT1, 12).vaLue = xvV4
      pxLs.ceLls(viT1, 13).vaLue = xmV4
      pxLs.ceLls(viT1, 14).vaLue = xdC3
      pxLs.ceLls(viT1, 15).vaLue = xvV5
      pxLs.ceLls(viT1, 16).vaLue = xmV5
      pxLs.ceLls(viT1, 17).vaLue = xvV6
      pxLs.ceLls(viT1, 18).vaLue = xmV6
      pxLs.ceLls(viT1, 19).vaLue = xdC4
      pxLs.ceLls(viT1, 20).vaLue = xvV7
      pxLs.ceLls(viT1, 21).vaLue = xmV7
      pxLs.ceLls(viT1, 22).vaLue = xvV8
      pxLs.ceLls(viT1, 23).vaLue = xmV8
      pxLs.ceLls(viT1, 24).vaLue = xdC5
      pxLs.ceLls(viT1, 25).vaLue = xvV9
      pxLs.ceLls(viT1, 26).vaLue = xmV9
      pxLs.ceLls(viT1, 27).vaLue = xvV0
      pxLs.ceLls(viT1, 28).vaLue = xmV0
      pxLs.ceLls(viT1, 29).vaLue = xdC6
      pxLs.ceLls(viT1, 30).vaLue = xvVa
      pxLs.ceLls(viT1, 31).vaLue = xmVa
      pxLs.ceLls(viT1, 32).vaLue = xvVb
      pxLs.ceLls(viT1, 33).vaLue = xmVb
      pxLs.ceLls(viT1, 34).vaLue = xdC7
      pxLs.ceLls(viT1, 35).vaLue = xvVc
      pxLs.ceLls(viT1, 36).vaLue = xmVc
      pxLs.ceLls(viT1, 37).vaLue = xvVd
      pxLs.ceLls(viT1, 38).vaLue = xmVd
      pxLs.ceLls(viT1, 39).vaLue = xdC8
      pxLs.ceLls(viT1, 40).vaLue = xvVe
      pxLs.ceLls(viT1, 41).vaLue = xmVe
      pxLs.ceLls(viT1, 42).vaLue = xvVf
      pxLs.ceLls(viT1, 43).vaLue = xmVf
      pxLs.ceLls(viT1, 44).vaLue = xdC9
      pxLs.ceLls(viT1, 45).vaLue = xvVg
      pxLs.ceLls(viT1, 46).vaLue = xmVg
      pxLs.ceLls(viT1, 47).vaLue = xvVh
      pxLs.ceLls(viT1, 48).vaLue = xmVh
      pxLs.ceLls(viT1, 49).vaLue = xdC0
      pxLs.ceLls(viT1, 50).vaLue = xvVi
      pxLs.ceLls(viT1, 51).vaLue = xmVi
      pxLs.ceLls(viT1, 52).vaLue = xvVj
      pxLs.ceLls(viT1, 53).vaLue = xmVj
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
PROCEDURE Clp_2116b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO xlS_2116b
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
           (mcCc>=icLn+142.1 .AND. mcCc<=icLn+153.1 .AND. mrEs>"3"))
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. viTe<>2 .AND.  ;
           ((mcCc>=icLn+147.4 .AND. mcCc<=icLn+164.8 .AND. mrEs="3") .OR.  ;
           (mcCc>=icLn+153.1 .AND. mcCc<=icLn+170.5 .AND. mrEs>"3"))
           STORE 02 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. viTe<>3 .AND.  ;
           (mcCc>=icLn+205.3 .AND. mcCc<=icLn+216.3 .AND. mrEs>"3")
           STORE 03 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. viTe<>4 .AND.  ;
           (mcCc>=icLn+216.3 .AND. mcCc<=icLn+233.7 .AND. mrEs>"3")
           STORE 04 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_2116b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2112b IN PAC2112B WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2112b IN PAC2112B WITH "F", "v"
           DO diS_2116b WITH "R"
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
PROCEDURE Hl1_2116b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En esta parte se pueden modificar los precios de lista y los porcenta-"
 @ pfIl+1, 2 SAY "jes de Descuento para calcular los precios mínimos."
 DO hl3_2111b IN PAC2111B
 @ pfIl+0, 2 SAY "Las teclas para movilizarse son:"
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
 @ pfIl+00, 05 SAY "ESC" STYLE "BT"
 @ pfIl+01, 05 SAY "F10" STYLE "BT"
 @ pfIl+02, 05 SAY "F1" STYLE "BT"
 @ pfIl+03, 05 SAY "F2" STYLE "BT"
 @ pfIl+04, 05 SAY "F4" STYLE "BT"
 @ pfIl+05, 05 SAY "F6" STYLE "BT"
 @ pfIl+06, 05 SAY "F7" STYLE "BT"
 @ pfIl+07, 05 SAY "F9" STYLE "BT"
 @ pfIl+08, 05 SAY "TAB" STYLE "BT"
 @ pfIl+09, 05 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 05 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 05 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 05 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 05 SAY "HOME" STYLE "BT"
 @ pfIl+14, 05 SAY "END" STYLE "BT"
 @ pfIl+15, 05 SAY "CTRL P" STYLE "BT"
 @ pfIl+16, 05 SAY "CTRL -->" STYLE "BT"
 @ pfIl+17, 05 SAY "CTRL <--" STYLE "BT"
 @ pfIl+00, 26 SAY "Regresar a Cabecera"
 @ pfIl+01, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+02, 26 SAY "Ayuda del Programa"
 @ pfIl+03, 26 SAY "Cambio de Costo S/. a US$ y viceversa"
 @ pfIl+04, 26 SAY "Cambio de Lista de Precios"
 @ pfIl+05, 26 SAY "Cambio de Orden de Consulta"
 @ pfIl+06, 26 SAY "Cambiar el Porcentaje de Descuento en BLOQUE"
 @ pfIl+07, 26 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+08, 26 SAY "Visualizar todos los datos del código"
 @ pfIl+09, 26 SAY "Línea inferior"
 @ pfIl+10, 26 SAY "Línea superior"
 @ pfIl+11, 26 SAY "Página siguiente"
 @ pfIl+12, 26 SAY "Página anterior"
 @ pfIl+13, 26 SAY "Primera línea"
 @ pfIl+14, 26 SAY "Última línea"
 @ pfIl+15, 26 SAY "Imprimir Listas + % Descuento"
 @ pfIl+16, 26 SAY "Pasar a otro campo"
 @ pfIl+17, 26 SAY "Regresar al campo anterior"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
