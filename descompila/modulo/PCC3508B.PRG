 = INKEY(0.01)
 SELECT teMporal
 DO orD_3502b IN PCC3502B WITH "3508"
 IF LEN(ALLTRIM(itIt))=0
      GOTO TOP
      DO paN_3508b
      DO muE_3502b IN PCC3502B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3502b IN PCC3502B WITH "v", "3508"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO seE_3502b IN PCC3502B WITH "v", "3508"
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3502b IN PCC3502B WITH "F", "v"
      ENDIF
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_3502b IN PCC3502B WITH "i", "3508"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1tit=vtIt
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3502b IN PCC3502B WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3502b IN PCC3502B WITH "v", "3508"
 IF EOF()
      SET NEAR ON
      DO seE_3502b IN PCC3502B WITH "i", "3508"
      SET NEAR OFF
      DO paN_3508b
      STORE ifIl TO vfIl
      DO muE_3502b IN PCC3502B WITH "i", "v"
      DO seE_3502b IN PCC3502B WITH "v", "3508"
 ENDIF
 DO diS_3502b IN PCC3502B WITH "R", "3508"
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                DO viR_000
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3508b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3502b IN PCC3502B WITH "3508"
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3502b IN PCC3502B WITH "N", "3508"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3502b IN PCC3502B WITH "N", "3508"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3502b IN PCC3502B WITH "3508"
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3508b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_3502b IN PCC3502B WITH "3508"
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3508"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3502b IN PCC3502B WITH "3508"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3508"
                DO diS_3502b IN PCC3502B WITH "R", "3508"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3502b IN PCC3502B WITH "3508"
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3508"
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                STORE 99 TO mkEy
                DO pcC3502c WITH "3508"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT teMporal
                STORE " " TO veSt
                STORE 99 TO mkEy
                DO seE_3502b IN PCC3502B WITH "v", "3508"
           CASE (mkEy=k_Right .OR. mkEy=k_Left) .AND. vuLt>1
                DO CASE
                     CASE mkEy=k_Right .AND. vsW0=vuLt
                          STORE 1 TO vsW0
                     CASE mkEy=k_Right
                          STORE vsW0+1 TO vsW0
                     CASE mkEy=k_Left .AND. vsW0=1
                          STORE vuLt TO vsW0
                     CASE mkEy=k_Left
                          STORE vsW0-1 TO vsW0
                ENDCASE
                SELECT teMporal
                DO caM_3508b
                STORE 99 TO mkEy
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1tit=itIt .AND. vtIt=itIt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtIt=itIt
                                    DO paN_3508b
                               OTHERWISE
                                    DO seE_3502b IN PCC3502B WITH "v", "3508"
                                    DO diS_3502b IN PCC3502B WITH "N", "3508"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3508"
                          DO diS_3502b IN PCC3502B WITH "R", "3508"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1tit=utIt .AND. vtIt=utIt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtIt=utIt
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3508b
                               OTHERWISE
                                    DO seE_3502b IN PCC3502B WITH "v", "3508"
                                    DO diS_3502b IN PCC3502B WITH "N", "3508"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "u", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3508"
                          DO diS_3502b IN PCC3502B WITH "R", "3508"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3502b IN PCC3502B WITH "v", "3508"
                          DO diS_3502b IN PCC3502B WITH "N", "3508"
                          SKIP
                          IF vtIt=utIt
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3502a IN PCC3502A WITH ifIl, ffIl+1,  ;
                                  "3508"
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               DO muE_3502b IN PCC3502B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3502b IN PCC3502B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3502b IN PCC3502B WITH "v", "3508"
                          DO diS_3502b IN PCC3502B WITH "R", "3508"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3502b IN PCC3502B WITH "v", "3508"
                          DO diS_3502b IN PCC3502B WITH "N", "3508"
                          SKIP -1
                          IF vtIt=itIt
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3502a IN PCC3502A WITH ifIl, ffIl+1,  ;
                                  "3508"
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               DO muE_3502b IN PCC3502B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3502b IN PCC3502B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3502b IN PCC3502B WITH "v", "3508"
                          DO diS_3502b IN PCC3502B WITH "R", "3508"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3502b IN PCC3502B WITH "u", "3508"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3508b
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3508"
                          DO diS_3502b IN PCC3502B WITH "R", "3508"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3502b IN PCC3502B WITH "i", "3508"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3508b
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3508"
                          DO diS_3502b IN PCC3502B WITH "R", "3508"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3502b IN PCC3502B WITH "v", "3508"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3508b
 STORE ifIl TO vfIl, ufIl
 DO muE_3502b IN PCC3502B WITH "F", "i"
 DO muE_3502b IN PCC3502B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3502b IN PCC3502B WITH "N", "3508"
      DO muE_3502b IN PCC3502B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_3502a IN PCC3502A WITH ufIl+1, ffIl+1, "3508"
 ENDIF
ENDPROC
*
PROCEDURE Res_3508b
 SET READBORDER ON
 DO reS_3508a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 SELECT teMporal
 DO diS_3502b IN PCC3502B WITH "R", "3508"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
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
PROCEDURE Cam_3508b
 DO tiT_3502a IN PCC3502A
 DO toT_3502a IN PCC3502A
 STORE vfIl TO cfIl
 STORE ifIl TO vfIl
 DO muE_3502b IN PCC3502B WITH "v", "c"
 DO muE_3502b IN PCC3502B WITH "i", "v"
 DO seE_3502b IN PCC3502B WITH "v", "3508"
 DO paN_3508b
 STORE cfIl TO vfIl
 DO muE_3502b IN PCC3502B WITH "c", "v"
 DO seE_3502b IN PCC3502B WITH "v", "3508"
 DO diS_3502b IN PCC3502B WITH "R", "3508"
ENDPROC
*
