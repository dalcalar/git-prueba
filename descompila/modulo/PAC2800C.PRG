 = INKEY(0.01)
 STORE 0 TO vsWz
 STORE " " TO cpA1
 SELECT teMporal_3
 ZAP
 REINDEX
 DO CASE
      CASE vsW1=1
           SELECT caB_sali
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO muE_2800a
 STORE SUBSTR(xpEd, 1, 5) TO vpEd
 STORE 1 TO vsW3, vsW4
 STORE 0 TO tcAn, tmAn
 DO CASE
      CASE wtPo="3"
           STORE 3 TO vsW4
      CASE wtPo="4"
           STORE 2 TO vsW4
 ENDCASE
 DO p02_2700a IN PAC2700A
 SELECT deT_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
      STORE tcAn+f2801can TO tcAn
      STORE tmAn+(f2801can*f2801cmt) TO tmAn
      SKIP
 ENDDO
 DO p00_2800c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_2800c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
 DO diS_2800c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2800c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2800c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2800c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2800c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Left .OR. mkEy=k_Right) .AND. usW4>1
                STORE vsW4 TO csW4
                DO CASE
                     CASE mkEy=k_Left .AND. vsW4=1
                          STORE usW4 TO vsW4
                     CASE mkEy=k_Left
                          STORE vsW4-1 TO vsW4
                     CASE mkEy=k_Right .AND. vsW4=usW4
                          STORE 1 TO vsW4
                     CASE mkEy=k_Right
                          STORE vsW4+1 TO vsW4
                ENDCASE
                IF mrEs>"3" .AND. (vsW4=1 .OR. csW4=1)
                     DO coLbln
                     DO CASE
                          CASE mrEs="4" .AND. csW4=1
                               @ ifFs, mcO0+103.1 CLEAR TO ffFs+1.4, mcO0+103.3
                               @ ifFs, mcO0+153.3 CLEAR TO ffFs+1.4, mcO0+153.5
                               @ ifFs, mcO0+165.9 CLEAR TO ffFs+1.4, mcO0+166.1
                               @ ifFs, mcO0+189.5 CLEAR TO ffFs+1.4, mcO0+189.7
                               @ ifFs, mcO0+200.1 CLEAR TO ffFs+1.4, mcO0+200.3
                               @ ifFs, mcO0+219.7 CLEAR TO ffFs+1.4, mcO0+219.9
                          CASE mrEs="4"
                               @ ifFs, mcO0+101.1 CLEAR TO ffFs+1.4, mcO0+101.3
                               @ ifFs, mcO0+141.3 CLEAR TO ffFs+1.4, mcO0+141.5
                               @ ifFs, mcO0+154.1 CLEAR TO ffFs+1.4, mcO0+154.3
                               @ ifFs, mcO0+177.1 CLEAR TO ffFs+1.4, mcO0+177.3
                               @ ifFs, mcO0+200.1 CLEAR TO ffFs+1.4, mcO0+200.3
                               @ ifFs, mcO0+219.7 CLEAR TO ffFs+1.4, mcO0+219.9
                          CASE csW4=1
                               @ ifFs, mcO0+103.0 CLEAR TO ffFs+1.4, mcO0+103.6
                               @ ifFs, mcO0+168.8 CLEAR TO ffFs+1.4, mcO0+170.6
                               @ ifFs, mcO0+182.0 CLEAR TO ffFs+1.4, mcO0+182.8
                               @ ifFs, mcO0+205.4 CLEAR TO ffFs+1.4, mcO0+205.8
                               @ ifFs, mcO0+216.0 CLEAR TO ffFs+1.4, mcO0+216.4
                               @ ifFs, mcO0+235.6 CLEAR TO ffFs+1.4, mcO0+236.0
                          OTHERWISE
                               @ ifFs, mcO0+101.0 CLEAR TO ffFs+1.4, mcO0+101.4
                               @ ifFs, mcO0+157.2 CLEAR TO ffFs+1.4, mcO0+157.6
                               @ ifFs, mcO0+170.0 CLEAR TO ffFs+1.4, mcO0+170.7
                               @ ifFs, mcO0+193.1 CLEAR TO ffFs+1.4, mcO0+193.5
                               @ ifFs, mcO0+216.0 CLEAR TO ffFs+1.4, mcO0+216.4
                               @ ifFs, mcO0+235.6 CLEAR TO ffFs+1.4, mcO0+236.0
                     ENDCASE
                ENDIF
                DO tiT_2700c IN PAC2700C WITH "2800"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE vfFs TO cfFs
                STORE vrEc TO crEc
                SELECT deT_sali
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                DO paN_2800c
                STORE crEc TO vrEc
                STORE cfFs TO vfFs
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                DO diS_2800c WITH "R"
                DO toT_2700c IN PAC2700C
           CASE mkEy=k_F3
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                ENDIF
                DO rs2_2800c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. wtPo="3"
                SELECT deT_sali
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                STORE 0 TO tmAn
                DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc= ;
                   vtDo+vsEr+vdOc
                     STORE f2801cod TO xcOd
                     STORE f2801ite TO xrEc
                     SELECT prOductos
                     SEEK ALLTRIM(xcOd)+"*"
                     IF  .NOT. EOF()
                          STORE f2111vcs TO xvCs
                          SELECT deT_sali
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH vtDo+vsEr+vdOc+STR(xrEc, 4, 0)
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    UNLOCK ALL
                                    = INKEY(0.01)
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          REPLACE f2801cmt WITH xvCs
                          UNLOCK
                     ENDIF
                     SELECT deT_sali
                     STORE tmAn+(f2801can*f2801cmt) TO tmAn
                     SKIP
                ENDDO
                STORE vfFs TO cfFs
                STORE vrEc TO crEc
                SELECT deT_sali
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                DO paN_2800c
                STORE crEc TO vrEc
                STORE cfFs TO vfFs
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                DO diS_2800c WITH "R"
                DO toT_2700c IN PAC2700C
           CASE mkEy=k_F8 .AND. wtPo="4" .AND. LEN(ALLTRIM(f2801sgi))<>0
                STORE "Producto ya generado..." TO mmSj
           CASE mkEy=k_F8 .AND. wtPo="4"
                STORE f2801cod TO vcOd
                SELECT teMporal_3
                SEEK ALLTRIM(vcOd)+"*"
                IF  .NOT. EOF()
                     DELETE
                     PACK
                ELSE
                     SELECT deT_sali
                     DO CASE
                          CASE (f2801la1=0 .AND. f2801an1<>0) .OR.  ;
                               (f2801la2=0 .AND. f2801an2<>0)
                               STORE "A este Producto le falta el Largo..."  ;
                                     TO mmSj
                          CASE f2801la2<>0 .AND. f2801an2=0
                               STORE "A este Producto le falta el Ancho..."  ;
                                     TO mmSj
                          CASE f2801la1=0 .AND. f2801an1=0 .AND. f2801la2= ;
                               0 .AND. f2801an2=0
                               STORE 1 TO clA1
                               STORE 0 TO clA2, caN1, caN2
                          OTHERWISE
                               STORE f2801la1 TO clA1
                               STORE f2801an1 TO caN1
                               STORE f2801la2 TO clA2
                               STORE f2801an2 TO caN2
                     ENDCASE
                     IF LEN(ALLTRIM(mmSj))=0
                          STORE SPACE(15) TO ccOd, cnUc
                          STORE SPACE(80) TO cdEs
                          STORE f2801cod TO vcOd
                          STORE f2801can TO ccAn
                          SELECT prOductos
                          SET FILTER TO
                          GOTO TOP
                          SEEK ALLTRIM(vcOd)+"*"
                          IF  .NOT. EOF()
                               STORE f2111bas TO ccOd
                               SEEK ALLTRIM(ccOd)+"*"
                               IF  .NOT. EOF()
                                    STORE f2111des TO cdEs
                                    STORE f2111nuc TO cnUc
                               ENDIF
                          ENDIF
                          SEEK ALLTRIM(vcOd)+"*"
                          IF AT(" a ", xcM1)<>0
                               STORE ALLTRIM(SUBSTR(xcM1, AT(" a ", xcM1)+ ;
                                     3, 30)) TO ccO1
                               IF ALLTRIM(ccOd)+"*"<>ALLTRIM(ccO1)+"*"
                                    WAIT WINDOW NOWAIT  ;
                                     "Código Base y el de Transformación diferentes"
                               ENDIF
                          ENDIF
                          DO rs3_2800c
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO WHILE .T.
                               DO reS_0000a
                               IF mrEs<>mrSs
                                    DO rs1_2800c
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    DO rs3_2800c
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               ENDIF
                               IF mkEy=k_Clic
                                    DO clP_coo
                                    DO cl2_2800c
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               ENDIF
                               DO CASE
                                    CASE mkEy=k_F2 .OR. mkEy=k_F3 .OR.  ;
                                     mkEy=k_F4
                                         = INKEY(0.01)
                                         SAVE SCREEN TO vpAn_13
                                         DO CASE
                                              CASE mkEy=k_F2
                                                   DO prEsiona WITH "2",  ;
                                                    "CONSUL", vfB2, vcB2
                                                   IF mkEy=k_Esc
                                                        EXIT
                                                   ENDIF
                                                   STORE 2 TO vsWw
                                                   STORE 1 TO vsWr
                                              CASE mkEy=k_F3
                                                   DO prEsiona WITH "2",  ;
                                                    "BUSCAR", vfB3, vcB3
                                                   IF mkEy=k_Esc
                                                        EXIT
                                                   ENDIF
                                                   STORE 2 TO vsWw, vsWr
                                              CASE mkEy=k_F4
                                                   STORE 1 TO vsWw, vsWr
                                         ENDCASE
                                         STORE ifFr+3 TO ifFr
                                         STORE ffFr-3 TO ffFr
                                         DO paC2111w WITH "5"
                                         STORE ifFr-3 TO ifFr
                                         STORE ffFr+3 TO ffFr
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         RESTORE SCREEN FROM vpAn_13
                                         IF mkEy=k_Enter
                                              STORE vcDg TO ccOd
                                         ENDIF
                                    CASE mkEy=k_Ctrl_del
                                         STORE 99 TO mkEy
                                         STORE SPACE(mtMc) TO ccOd
                                         STORE SPACE(70) TO cdEs
                               ENDCASE
                               DO CASE
                                    CASE mkEy=k_Esc .OR. mkEy=k_Clic
                                         STORE 99 TO mkEy
                                         EXIT
                                    CASE mkEy=k_F1
                                         DO hl2_2800c
                                    CASE mkEy=k_F10
                                         DO reTorna
                                    CASE mkEy=k_F12
                                         DO rs1_2800c
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         DO rs3_2800c
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                    CASE mkEy=k_Enter
                                         SELECT prOductos
                                         SEEK ALLTRIM(ccOd)+"*"
                                         IF EOF()
                                              STORE  ;
                                               "Producto no registrado..."  ;
                                               TO mmSj
                                              STORE SPACE(15) TO ccOd
                                              STORE SPACE(80) TO cdEs
                                         ELSE
                                              STORE f2111des TO cdEs
                                              STORE f2111dcr TO cdCr
                                              STORE f2111cuv TO ccUv
                                              STORE f2111nuv TO cnUv
                                              STORE f2111cuc TO ccUc
                                              STORE f2111nuc TO cnUc
                                              STORE f2111esp TO ceSp
                                              STORE f2111tip TO ctPo
                                              STORE 1 TO cmEd
                                              SELECT tiP_prod
                                              SEEK ctPo
                                              IF EOF()
                                                   STORE 1 TO ctPo
                                                   STORE " " TO veNt
                                              ELSE
                                                   STORE f9211tpo TO ctPo
                                                   STORE f9211ent TO veNt
                                              ENDIF
                                              DO coLsc7
                                              @mFI0+2,mCO0+29 Say cDES Font "&mLetRom",12 Style "BQ" Size 1,70 Pict "@S72"
                                              @mFI0+4,mCO0+29 Say cNUC Font "&mLetRom",12 Style "BQ" Size 1,20 Pict "@S25"
                                              SELECT teMporal_3
                                              SEEK ALLTRIM(ccOd)+"*"
                                              IF  .NOT. EOF()
                                                   DELETE
                                                   PACK
                                              ELSE
                                                   DO prE_docum WITH  ;
                                                    "¿Está seguro de escoger este Código?"
                                                   IF moPc$"Ss"
                                                        APPEND BLANK
                                                        REPLACE ftM3cdg  ;
                                                         WITH vcOd
                                                        REPLACE ftM3cod  ;
                                                         WITH ccOd
                                                        REPLACE ftM3des  ;
                                                         WITH cdEs
                                                        REPLACE ftM3dcr  ;
                                                         WITH cdCr
                                                        REPLACE ftM3cuv  ;
                                                         WITH ccUv
                                                        REPLACE ftM3nuv  ;
                                                         WITH cnUv
                                                        REPLACE ftM3cuc  ;
                                                         WITH ccUc
                                                        REPLACE ftM3nuc  ;
                                                         WITH cnUc
                                                        REPLACE ftM3can  ;
                                                         WITH ccAn
                                                        REPLACE ftM3la1  ;
                                                         WITH clA1
                                                        REPLACE ftM3la2  ;
                                                         WITH clA2
                                                        REPLACE ftM3an1  ;
                                                         WITH caN1
                                                        REPLACE ftM3an2  ;
                                                         WITH caN2
                                                        REPLACE ftM3esp  ;
                                                         WITH ceSp
                                                        REPLACE ftM3tpo  ;
                                                         WITH ctPo
                                                   ENDIF
                                              ENDIF
                                              EXIT
                                         ENDIF
                               ENDCASE
                               IF LEN(ALLTRIM(mmSj))<>0
                                    DO poNmsj
                                    STORE 99 TO mkEy
                               ENDIF
                               DO coLsc7
                               STORE k_Enter TO mkEy
                               @mFI0+0,mCO0+47 Get cCOD Font "&mLetRom",11 Style "NQ" Size 1,22 Pict "!!!!!!!!!!!!!!!" Color ,&mColBlN
                               @mFI0+2,mCO0+29 Say cDES Font "&mLetRom",12 Style "BQ" Size 1,70 Pict "@S72"
                               @mFI0+4,mCO0+29 Say cNUC Font "&mLetRom",12 Style "BQ" Size 1,20 Pict "@S25"
                               SET CURSOR ON
                               READ
                               SET CURSOR OFF
                               WAIT CLEAR
                          ENDDO
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          RESTORE SCREEN FROM vpAn_12
                          STORE 99 TO mkEy
                          SET READBORDER OFF
                     ENDIF
                ENDIF
                SELECT deT_sali
                DO diS_2800c WITH "R"
                = INKEY(0.01)
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2700c IN PAC2700C WITH "2800"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                SELECT deT_sali
                IF LEN(ALLTRIM(cpA1))<>0
                     STORE vrEc TO crEc
                     STORE vfFs TO cfFs
                     SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                     DO paN_2800c
                     STORE crEc TO vrEc
                     STORE cfFs TO vfFs
                ENDIF
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                DO diS_2800c WITH "R"
           CASE mkEy=k_Tab .AND. wtPo="4"
                SELECT teMporal_3
                GOTO TOP
                IF EOF()
                     STORE "No hay ningún producto marcado..." TO mmSj
                ELSE
                     DO prE_docum WITH "¿Está seguro de crear Guía de Ingreso?"
                     IF moPc$"Ss"
                          DO grA_2800c
                     ENDIF
                ENDIF
                SELECT deT_sali
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                DO diS_2800c WITH "R"
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_p
                SELECT caB_sali
                IF vsW0<>1
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                DO q1_0000a
                DO paI2800z
                DO p1_0000a
                RESTORE SCREEN FROM vpAn_12
                SET READBORDER OFF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT caB_sali
                IF vsW0<>1
                     DO orD_2800b IN PAC2800B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_sali
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           CASE mkEy=k_Enter
                STORE f2801cod TO vcOd
                STORE f2801des TO vdEs
                STORE f2801nuv TO vnUv
                STORE f2801tpo TO vtPo
                DO CASE
                     CASE (vtPo>3 .AND. vtPo<10) .OR. vtPo=11
                          SELECT itE_sali
                     OTHERWISE
                          SELECT seR_sali
                ENDCASE
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Documento no tiene Detalle..." TO mmSj
                     CASE  .NOT. EOF()
                          SAVE SCREEN TO vpAn_12
                          DO CASE
                               CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                                    DO paC2701a WITH "2800"
                               CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                                    DO paC2701b WITH "2800"
                               CASE vtPo=11
                                    DO paC2701c WITH "2800"
                               CASE vtPo=10
                               CASE vsRr=1
                                    DO paC2702a WITH "2800"
                          ENDCASE
                          RESTORE SCREEN FROM vpAn_12
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
                SELECT deT_sali
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f2801ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_2800c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                                    DO diS_2800c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2800c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(9999, 4, 0)
                SET NEAR OFF
                IF EOF() .OR. f2801tdo+f2801ser+f2801doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2801ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2800c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                                    DO diS_2800c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2800c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2801tdo+f2801ser+f2801doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2800c WITH "N"
                          SKIP
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2700c IN PAC2700C WITH ffFs, ffFs+1
                               STORE f2801ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f2801ite TO irEc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f2801ite TO vrEc
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2800c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2801tdo+f2801ser+f2801doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2800c WITH "N"
                          SKIP -1
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2700c IN PAC2700C WITH ifFs, ifFs+1
                               STORE f2801ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f2801ite TO urEc
                               ENDIF
                          ELSE
                               STORE f2801ite TO vrEc
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2800c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+STR(urEc, 4, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f2801tdo+f2801ser+f2801doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2800c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2800c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2801tdo+f2801ser+f2801doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f2801tdo+f2801ser+f2801doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_2800c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2800c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2800c
 STORE ifFs TO vfFs, ufFs
 STORE f2801ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      DO diS_2800c WITH "N"
      STORE f2801ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, mcO0 CLEAR TO ffFs+1.1, mcO0+muCo
      DO liN_2700c IN PAC2700C WITH ufFs, ffFs+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2800c
 PARAMETER ptIp
 PRIVATE pcOd, psW0, ppIc, ppIt, ppIu, pcAn, ptOt, pcOs
 STORE 0 TO psW0
 STORE f2801cdg TO pcOd
 STORE f2801can TO pcAn
 STORE f2801cos TO pcOs
 STORE f2801can*f2801cos TO ptOt
 DO CASE
      CASE pcAn>=1000000000000.0001
           STORE ROUND(pcAn, 2) TO pcAn
           STORE "9999999999999.99" TO ppIc
      CASE pcAn>=99999999999.9999
           STORE ROUND(pcAn, 3) TO pcAn
           STORE "999999999999.999" TO ppIc
      CASE pcAn>=9999999999.9999
           STORE "99999999999.9999" TO ppIc
      CASE pcAn>=999999999.9999
           STORE "9999999999.9999" TO ppIc
      OTHERWISE
           STORE "999,999,999.9999" TO ppIc
 ENDCASE
 DO CASE
      CASE ptOt>=1000000000000.0001
           STORE ROUND(ptOt, 2) TO ptOt
           STORE "9999999999999.99" TO ppIt
      CASE ptOt>=99999999999.9999
           STORE ROUND(ptOt, 3) TO ptOt
           STORE "999999999999.999" TO ppIt
      CASE ptOt>=9999999999.9999
           STORE "99999999999.9999" TO ppIt
      CASE ptOt>=999999999.9999
           STORE "9999999999.9999" TO ppIt
      OTHERWISE
           STORE "999,999,999.9999" TO ppIt
 ENDCASE
 DO CASE
      CASE pcOs>=1000000000000.0001
           STORE ROUND(pcOs, 2) TO pcOs
           STORE "9999999999999.99" TO ppIu
      CASE pcOs>=99999999999.9999
           STORE ROUND(pcOs, 3) TO pcOs
           STORE "999999999999.999" TO ppIu
      CASE pcOs>=9999999999.9999
           STORE "99999999999.9999" TO ppIu
      CASE pcOs>=999999999.9999
           STORE "9999999999.9999" TO ppIu
      OTHERWISE
           STORE "999,999,999.9999" TO ppIu
 ENDCASE
 IF wtPo="4"
      STORE f2801cod TO pcOd
      SELECT teMporal_3
      SEEK ALLTRIM(pcOd)+"*"
      IF  .NOT. EOF()
           STORE 1 TO psW0
           STORE ftM3cod TO pcOd
      ELSE
           STORE " " TO pcOd
      ENDIF
      SELECT deT_sali
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. psW0=0
           DO coL_fondo
      CASE ptIp="R" .AND. psW0=0
           DO coLbln
      CASE ptIp="N"
           DO coL_fonaz
      CASE ptIp="R"
           DO coLsc1
 ENDCASE
 @vFFS,mCO0+0.0 Say F2801ITE Font "&mLetAri",9 Style "NQ" Size 1,05.6 Pict "9999"
 @vFFS,mCO0+6.2 Say F2801COD Font "&mLetAri",9 Style "NQ" Size 1,16.2 Pict "@S19"
 DO CASE
      CASE mrEs="3" .AND. vsW4=1
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2801des))<>0
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "BQ" Size 1,66.1 Pict "@S69"
           ELSE
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "NQ" Size 1,80.0 Pict "@S80"
           ENDIF
           @vFFS,mCO0+103.6 Say F2801DCR                           Font "&mLetAri",9 Style "NQ" Size 1,49.6 Pict "@S53"
           @vFFS,mCO0+153.8 Say F2801NUC                           Font "&mLetAri",9 Style "NQ" Size 1,12.0 Pict "@S13"
           @vFFS,mCO0+166.4 Say pCAN                               Font "&mLetAri",9 Style "NQ" Size 1,23.0 Pict "&pPIC"
           @vFFS,mCO0+190.0 Say F2801CAJ                           Font "&mLetAri",9 Style "NQ" Size 1,10.0 Pict "999,999"
      CASE mrEs="3" .AND. vsW4=2
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2801des))<>0
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "BQ" Size 1,58.4 Pict "@S61"
           ELSE
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "NQ" Size 1,70.0 Pict "@S73"
           ENDIF
           @vFFS,mCO0+093.6 Say F2801DCR                           Font "&mLetAri",9 Style "NQ" Size 1,52.6 Pict "@S55"
           @vFFS,mCO0+146.8 Say F2801NUC                           Font "&mLetAri",9 Style "NQ" Size 1,12.0 Pict "@S13"
           @vFFS,mCO0+159.4 Say F2801TGI+":"+F2801SGI+"-"+F2801NGI Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+179.0 Say pCOD                               Font "&mLetAri",9 Style "NQ" Size 1,21.0 Pict "@S23"
      CASE mrEs="3" .AND. vsW4>2 .AND. wtPo>"2"
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2801des))<>0
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "BQ" Size 1,65.0 Pict "@S68"
           ELSE
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "NQ" Size 1,78.0 Pict "@S80"
           ENDIF
           @vFFS,mCO0+101.6 Say F2801DCR                           Font "&mLetAri",9 Style "NQ" Size 1,39.6 Pict "@S43"
           @vFFS,mCO0+141.8 Say F2801NUC                           Font "&mLetAri",9 Style "NQ" Size 1,12.2 Pict "@S13"
           @vFFS,mCO0+154.6 Say pCAN                               Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           DO CASE
                CASE vsW4=3
                     @vFFS,mCO0+177.6 Say pCOS                       Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=4
                     @vFFS,mCO0+177.6 Say pTOT                       Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=5
                     @vFFS,mCO0+177.6 Say F2801CMT                   Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=6
                     @vFFS,mCO0+177.6 Say F2801CMT*F2801CAN          Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
           ENDCASE
      CASE mrEs="4" .AND. vsW4=1
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2801des))<>0
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "BQ" Size 1,66.8 Pict "@S70"
           ELSE
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "NQ" Size 1,80.0 Pict "@S80"
           ENDIF
           @vFFS,mCO0+103.6 Say F2801DCR                           Font "&mLetAri",9 Style "NQ" Size 1,49.6 Pict "@S53"
           @vFFS,mCO0+153.8 Say F2801NUC                           Font "&mLetAri",9 Style "NQ" Size 1,12.0 Pict "@S13"
           @vFFS,mCO0+166.4 Say pCAN                               Font "&mLetAri",9 Style "NQ" Size 1,23.0 Pict "&pPIC"
           @vFFS,mCO0+190.0 Say F2801CAJ                           Font "&mLetAri",9 Style "NQ" Size 1,10.0 Pict "999,999"
           @vFFS,mCO0+200.6 Say F2801TGI+":"+F2801SGI+"-"+F2801NGI Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+220.2 Say pCOD                               Font "&mLetAri",9 Style "NQ" Size 1,31.8 Pict "@S25"
      CASE mrEs="4" .AND. wtPo>"2"
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2801des))<>0
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "BQ" Size 1,65.0 Pict "@S68"
           ELSE
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "NQ" Size 1,78.0 Pict "@S80"
           ENDIF
           @vFFS,mCO0+101.6 Say F2801DCR                           Font "&mLetAri",9 Style "NQ" Size 1,39.6 Pict "@S43"
           @vFFS,mCO0+141.8 Say F2801NUC                           Font "&mLetAri",9 Style "NQ" Size 1,12.2 Pict "@S13"
           @vFFS,mCO0+154.6 Say pCAN                               Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           @vFFS,mCO0+200.6 Say F2801TGI+":"+F2801SGI+"-"+F2801NGI Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+220.2 Say pCOD                               Font "&mLetAri",9 Style "NQ" Size 1,31.8 Pict "@S25"
           DO CASE
                CASE vsW4=2
                     @vFFS,mCO0+177.6 Say pCOS                       Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=3
                     @vFFS,mCO0+177.6 Say pTOT                       Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=4
                     @vFFS,mCO0+177.6 Say F2801CMT                   Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=5
                     @vFFS,mCO0+177.6 Say F2801CMT*F2801CAN          Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
           ENDCASE
      CASE vsW4=1
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2801des))<>0
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "BQ" Size 1,66.8 Pict "@S69"
           ELSE
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "NQ" Size 1,80.1 Pict "@S80"
           ENDIF
           @vFFS,mCO0+103.6 Say F2801DCR                           Font "&mLetAri",9 Style "NQ" Size 1,65.6 Pict "@S68"
           @vFFS,mCO0+169.8 Say F2801NUC                           Font "&mLetAri",9 Style "NQ" Size 1,12.0 Pict "@S13"
           @vFFS,mCO0+182.4 Say pCAN                               Font "&mLetAri",9 Style "NQ" Size 1,23.0 Pict "&pPIC"
           @vFFS,mCO0+206.0 Say F2801CAJ                           Font "&mLetAri",9 Style "NQ" Size 1,10.0 Pict "999,999"
           @vFFS,mCO0+216.6 Say F2801TGI+":"+F2801SGI+"-"+F2801NGI Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+236.2 Say pCOD                               Font "&mLetAri",9 Style "NQ" Size 1,32.8 Pict "@S30"
      CASE wtPo>"2"
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2801des))<>0
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "BQ" Size 1,65.1 Pict "@S68"
           ELSE
                @vFFS,mCO0+22.9 Say F2801DES                         Font "&mLetAri",9 Style "NQ" Size 1,78.1 Pict "@S80"
           ENDIF
           @vFFS,mCO0+101.6 Say F2801DCR                           Font "&mLetAri",9 Style "NQ" Size 1,55.6 Pict "@S58"
           @vFFS,mCO0+157.8 Say F2801NUC                           Font "&mLetAri",9 Style "NQ" Size 1,12.2 Pict "@S13"
           @vFFS,mCO0+170.6 Say pCAN                               Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           @vFFS,mCO0+216.6 Say F2801TGI+":"+F2801SGI+"-"+F2801NGI Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+236.2 Say pCOD                               Font "&mLetAri",9 Style "NQ" Size 1,32.8 Pict "@S30"
           DO CASE
                CASE vsW4=2
                     @vFFS,mCO0+193.6 Say pCOS                       Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=3
                     @vFFS,mCO0+193.6 Say pTOT                       Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=4
                     @vFFS,mCO0+193.6 Say F2801CMT                   Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=5
                     @vFFS,mCO0+193.6 Say F2801CMT*F2801CAN          Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
           ENDCASE
 ENDCASE
 RELEASE pcOd, psW0, ppIc, ppIt, ppIu, pcAn, ptOt, pcOs
ENDPROC
*
PROCEDURE P00_2800c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO GR+/GR
 @mFI0-4.5,mCO0+1.2 Say "GUÍA DE SALIDA No."+xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
 DO coL_fondo
 DO cuAdro WITH ifFs-1.3, mcO0, ffFs+2.6, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 @fFFS+2.8,mCO0+mUCO-47.7 Say " Usuario: "         Font "&mLetAri",9 Style "BQ"
 @fFFS+3.8,mCO0+mUCO-47.7 Say " Fecha: "+Space(40) Font "&mLetAri",9 Style "BQ"
 @fFFS+3.8,mCO0+mUCO-17.7 Say " Hora: "+Space(10)  Font "&mLetAri",9 Style "BQ"
 @fFFS+2.8,mCO0+mUCO-37.5 Say xUSU                 Font "&mLetAri",9 Style "NQ" Size 1,38 Pict "@S30"
 @fFFS+3.8,mCO0+mUCO-37.5 Say xDAT                 Font "&mLetAri",9 Style "NQ" Size 1,12.2
 @fFFS+3.8,mCO0+mUCO-09.7 Say xTIM                 Font "&mLetAri",9 Style "NQ" Size 1,10.1
 IF vsW3=1
      DO coL_beige
      DO cuAdro WITH mfI0-2.4, mcO0, mfI0+2.5, mcO0+muCo
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLbln
      SET READBORDER ON
      @mFI0-2.0,mCO0+001.0 Say "Fecha"          Font "&mLetAri",10 Style "NT"
      @mFI0-2.0,mCO0+036.1 Say "Tipo de Salida" Font "&mLetAri",10 Style "NT"
      @mFI0-2.0,mCO0+101.5 Say "Pedido"         Font "&mLetAri",10 Style "BT"
      @mFI0-0.5,mCO0+001.0 Say "Observaciones"  Font "&mLetAri",10 Style "NT"
      @mFI0+1.0,mCO0+001.0 Say "Almacén"        Font "&mLetAri",10 Style "NT"
      @mFI0-2.0,mCO0+019.0 Get  xFEM            Font "&mLetAri",10 Style "NQ" Size 1,10.8  Color ,&mColBlN
      @mFI0-2.0,mCO0+056.0 Get  xTIP            Font "&mLetAri",10 Style "NQ" Size 1,03.4  Color ,&mColBlN
      @mFI0-2.0,mCO0+062.0 Edit xNTI            Font "&mLetAri",10 Style "NQ" Size 1,30,30
      @mFI0-2.0,mCO0+111.1 Get  xPED            Font "&mLetAri",10 Style "NQ" Size 1,08.4 Pict "!999999" Color ,&mColBlN
      @mFI0-0.5,mCO0+019.0 Edit xCM1            Font "&mLetAri",10 Style "NQ" Size 1,85.5,70
      @mFI0+1.0,mCO0+019.0 Edit vNAL            Font "&mLetAri",10 Style "NQ" Size 1,85.5,70
      READ TIMEOUT 0.01
      SET READBORDER OFF
 ENDIF
 DO toT_2700c IN PAC2700C
 DO tiT_2700c IN PAC2700C WITH "2800"
 DO coL_fondo
 @fFFS+1.5,mCO0+01 Say "Palabra:"                 Font "&mLetRom",10 Style "BT"
 @fFFS+1.5,mCO0+11 Say cPA1 Size 1,70 Pict "@S70" Font "&mLetRom",9  Style "BQ"
ENDPROC
*
PROCEDURE Gra_2800c
 PRIVATE ptX1, ptX2, poPc, prEc
 = INKEY(0.01)
 SELECT nuMeracion
 SEEK "GI"+msEr(3)
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH "GI"
      REPLACE f9999ser WITH msEr(3)
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK "GI"+msEr(3)
 IF  .NOT. RLOCK()
      DO reG_lock WITH "GI"+msEr(3)
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9999num TO vgUi
 STORE STRTRAN(STR(VAL(vgUi)+1, 7, 0), " ", "0") TO vgUi
 ptX2 = "GUÍA DE INGRESO No.:"+msEr(3)+"-"+vgUi
 SELECT caB_ingr
 SEEK "GI"+msEr(3)+vgUi
 IF  .NOT. EOF()
      UNLOCK ALL
      ptX1 = "Este Documento ya está Registrado"+CHR(13)+"Cambiar Numeración"
      poPc = MESSAGEBOX(ptX1, 0048, ptX2)
      STORE SPACE(07) TO vgUi
      RETURN
 ENDIF
 ptX1 = "¿Desea Grabar este Documento?"
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT prOductos
 SET FILTER TO
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT deT_sali
 STORE 99 TO mkEy
 DO orD_0000a WITH "2801", "A", "F2801COD", "A"
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT teMporal_3
 GOTO TOP
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Grabando: "+ftM3cdg
      STORE ftM3cdg TO ccDg
      SELECT deT_sali
      SEEK ALLTRIM(ccDg)+"*"+vtDo+vsEr+vdOc
      IF  .NOT. EOF() .AND. LEN(ALLTRIM(f2801sgi))=0
           STORE f2801ite TO prEc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(ccDg)+"*"+vtDo+vsEr+vdOc+ ;
                   STR(prEc, 4, 0)
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT teMporal_3
      SKIP
 ENDDO
 DO grAbar WITH "1"
 WAIT WINDOW NOWAIT "Grabando Numeración..."
 SELECT nuMeracion
 REPLACE f9999num WITH vgUi
 UNLOCK
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_ingr
 DO nuEvo_rg
 REPLACE f2700tdo WITH "GI"
 REPLACE f2700ser WITH msEr(3)
 REPLACE f2700doc WITH vgUi
 REPLACE f2700ped WITH xpEd
 IF mcIa="NV"
      REPLACE f2700tip WITH "00"
      REPLACE f2700nti WITH "Regularizacion x Roturas"
 ELSE
      REPLACE f2700tip WITH "00"
      REPLACE f2700nti WITH "Transformacion"
 ENDIF
 REPLACE f2700tpp WITH 1
 REPLACE f2700fem WITH vfEm
 IF LEN(ALLTRIM(vcM1))=0
      REPLACE f2700cm1 WITH vtDo+":"+vsEr+"-"+vdOc
 ELSE
      REPLACE f2700cm1 WITH ALLTRIM(vcM1)+" / "+vtDo+":"+vsEr+"-"+vdOc
 ENDIF
 REPLACE f2700est WITH "1"
 REPLACE f2700usu WITH muSu
 REPLACE f2700dat WITH DATE()
 REPLACE f2700tim WITH TIME()
 UNLOCK
 SELECT teMporal_3
 GOTO TOP
 STORE 00 TO prEc
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Grabando: "+ftM3cod
      STORE ftM3cdg TO ccDg
      STORE ftM3cod TO ccOd
      STORE ftM3des TO cdEs
      STORE ftM3dcr TO cdCr
      STORE ftM3cuv TO ccUv
      STORE ftM3nuv TO cnUv
      STORE ftM3cuc TO ccUc
      STORE ftM3nuc TO cnUc
      STORE ftM3can TO ccAn
      STORE ftM3la1 TO clA1
      STORE ftM3la2 TO clA2
      STORE ftM3an1 TO caN1
      STORE ftM3an2 TO caN2
      STORE ftM3esp TO ceSp
      STORE ftM3tpo TO ctPo
      STORE prEc+1 TO prEc
      IF xtPp=6
           STORE ccAn TO vcAn
      ELSE
           DO CASE
                CASE clA1<>0 .AND. caN1<>0
                     STORE ROUND(clA1*caN1*10.77*ccAn, 4) TO vcAn
                CASE clA2<>0 .AND. caN2<>0
                     STORE ROUND(clA2*caN2/144*ccAn, 4) TO vcAn
                CASE clA1<>0
                     STORE ROUND(clA1*ccAn, 4) TO vcAn
                OTHERWISE
                     STORE 0 TO vcAn
           ENDCASE
      ENDIF
      SELECT prOductos
      SEEK ALLTRIM(ccOd)+"*"
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH UPPER(ALLTRIM(ccOd))+"*"
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT prO_tot
           SEEK ALLTRIM(ccOd)+"*"
           IF EOF()
                SELECT teMporal_3
                SKIP
                LOOP
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(ccOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT deT_ingr
           DO nuEvo_rg
           REPLACE f2701tdo WITH "GI"
           REPLACE f2701ser WITH msEr(3)
           REPLACE f2701doc WITH vgUi
           REPLACE f2701ite WITH prEc
           REPLACE f2701cod WITH ccOd
           REPLACE f2701des WITH cdEs
           REPLACE f2701dcr WITH cdCr
           REPLACE f2701cuv WITH ccUv
           REPLACE f2701nuv WITH cnUv
           REPLACE f2701cuc WITH ccUc
           REPLACE f2701nuc WITH cnUc
           REPLACE f2701esp WITH ceSp
           REPLACE f2701tpo WITH ctPo
           REPLACE f2701sgs WITH vsEr
           REPLACE f2701ngs WITH vdOc
           REPLACE f2701cdg WITH ccDg
           REPLACE f2701med WITH 1
           REPLACE f2701caj WITH 0
           REPLACE f2701la1 WITH 0
           REPLACE f2701an1 WITH 0
           REPLACE f2701la2 WITH 0
           REPLACE f2701an2 WITH 0
           REPLACE f2701pie WITH vcAn
           REPLACE f2701can WITH vcAn
           UNLOCK
           SELECT itE_ingr
           DO nuEvo_rg
           REPLACE f2702tdo WITH "GI"
           REPLACE f2702ser WITH msEr(3)
           REPLACE f2702doc WITH vgUi
           REPLACE f2702cod WITH ccOd
           REPLACE f2702rcc WITH 1
           REPLACE f2702opc WITH "N"
           REPLACE f2702p11 WITH 0
           REPLACE f2702p12 WITH SPACE(04)
           REPLACE f2702p21 WITH 0
           REPLACE f2702p22 WITH SPACE(04)
           REPLACE f2702ctd WITH ccAn
           REPLACE f2702pie WITH vcAn
           DO CASE
                CASE clA1<>0 .AND. caN1<>0
                     REPLACE f2702un1 WITH "M"
                     REPLACE f2702un2 WITH "M"
                     REPLACE f2702mla WITH clA1
                     REPLACE f2702man WITH caN1
                CASE clA2<>0 .AND. caN2<>0
                     REPLACE f2702un1 WITH "M"
                     REPLACE f2702un2 WITH "M"
                     REPLACE f2702mla WITH ROUND(clA1*0.0254, 3)
                     REPLACE f2702man WITH ROUND(caN1*0.0254, 3)
                OTHERWISE
                     REPLACE f2702un1 WITH "M"
                     REPLACE f2702un2 WITH "M"
                     REPLACE f2702mla WITH 0
                     REPLACE f2702man WITH 0
           ENDCASE
           UNLOCK
           SELECT kaRdex
           DO nuEvo_rg
           REPLACE f2990cod WITH ccOd
           REPLACE f2990ano WITH SUBSTR(DTOC(vfEm), 7, 4)
           REPLACE f2990mes WITH SUBSTR(DTOC(vfEm), 4, 2)
           REPLACE f2990dia WITH SUBSTR(DTOC(vfEm), 1, 2)
           REPLACE f2990tpp WITH "1"
           REPLACE f2990tpo WITH "1"
           REPLACE f2990can WITH vcAn
           REPLACE f2990caj WITH 0
           REPLACE f2990sld WITH 0
           REPLACE f2990slc WITH 0
           REPLACE f2990sls WITH 0
           REPLACE f2990scs WITH 0
           REPLACE f2990cos WITH 0
           REPLACE f2990dct WITH 0
           REPLACE f2990gas WITH 0
           REPLACE f2990prm WITH 0
           REPLACE f2990tdo WITH "GI"
           REPLACE f2990ser WITH msEr(3)
           REPLACE f2990doc WITH vgUi
           REPLACE f2990sr1 WITH SPACE(03)
           REPLACE f2990rem WITH SPACE(07)
           REPLACE f2990td1 WITH SPACE(02)
           REPLACE f2990srf WITH SPACE(03)
           REPLACE f2990fac WITH SPACE(20)
           REPLACE f2990sor WITH SPACE(03)
           REPLACE f2990ord WITH SPACE(07)
           REPLACE f2990ped WITH xpEd
           REPLACE f2990emi WITH vfEm
           REPLACE f2990fem WITH vfEm
           REPLACE f2990tit WITH SPACE(04)
           REPLACE f2990cli WITH SPACE(04)
           IF mcIa="NV"
                REPLACE f2990nom WITH "Regularizacion x Roturas"
           ELSE
                REPLACE f2990nom WITH "Transformacion"
           ENDIF
           REPLACE f2990pig WITH miGv
           REPLACE f2990mon WITH 1
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH "00"
           UNLOCK
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(ccOd)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
           ELSE
                STORE 0 TO vsLd, vsLc
           ENDIF
           SEEK ALLTRIM(ccOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+"11GI"+ ;
                msEr(3)+vgUi
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(ccOd)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(ccOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(ccOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          = INKEY(0.01)
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo$"13"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                REPLACE f2990caj WITH vsLc
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH ccOd
      ENDIF
      SELECT teMporal_3
      SKIP
 ENDDO
 SELECT teMporal_3
 GOTO TOP
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Grabando: "+ftM3cdg
      STORE ftM3cdg TO ccDg
      STORE ftM3cod TO ccOd
      SELECT deT_sali
      SEEK ALLTRIM(ccDg)+"*"+vtDo+vsEr+vdOc
      IF  .NOT. EOF() .AND. LEN(ALLTRIM(f2801sgi))=0
           REPLACE f2801tgi WITH "GI"
           REPLACE f2801sgi WITH msEr(3)
           REPLACE f2801ngi WITH vgUi
           REPLACE f2801cdg WITH ccOd
      ENDIF
      UNLOCK
      SELECT teMporal_3
      SKIP
 ENDDO
 UNLOCK ALL
 SELECT deT_sali
 STORE 99 TO mkEy
 DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT teMporal_3
 ZAP
 REINDEX
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE 99 TO mkEy
 RELEASE ptX1, ptX2, poPc, prEc
ENDPROC
*
PROCEDURE Xls_2800c
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Guia de Salida "+vsEr+"-"+vdOc, "Detalle", 12
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 01).vaLue = "Item"
 pxLs.ceLls(3, 02).vaLue = "Código"
 pxLs.ceLls(3, 03).vaLue = "Descripción"
 pxLs.ceLls(3, 04).vaLue = "Unidad"
 pxLs.ceLls(3, 05).vaLue = "Cantidad"
 pxLs.ceLls(3, 06).vaLue = "Caj/Pqtes"
 pxLs.ceLls(3, 07).vaLue = "Cost.Unit. Prom"
 pxLs.ceLls(3, 08).vaLue = "Cost.Total Prom"
 pxLs.ceLls(3, 09).vaLue = "Cost.Unit. Mant"
 pxLs.ceLls(3, 10).vaLue = "Cost.Total Mant"
 pxLs.ceLls(3, 11).vaLue = "Doc-Enlace"
 pxLs.ceLls(3, 12).vaLue = "Código-Enlace"
 pxLs.raNge(pxLs.coLumns(02), pxLs.coLumns(04)).nuMberformat = "@"
 pxLs.coLumns(01).nuMberformat = "##0"
 pxLs.coLumns(05).nuMberformat = "#,###,##0.0000"
 pxLs.coLumns(06).nuMberformat = "####0"
 pxLs.raNge(pxLs.coLumns(07), pxLs.coLumns(10)).nuMberformat = "#,###,##0.00"
 SELECT deT_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
      WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6, 0))+ ;
           "... Leyendo Código: "+f2801cod
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 01).vaLue = f2801ite
      pxLs.ceLls(viT1, 02).vaLue = f2801cod
      pxLs.ceLls(viT1, 03).vaLue = f2801des
      pxLs.ceLls(viT1, 04).vaLue = f2801nuc
      pxLs.ceLls(viT1, 05).vaLue = f2801can
      pxLs.ceLls(viT1, 06).vaLue = f2801caj
      pxLs.ceLls(viT1, 07).vaLue = f2801cos
      pxLs.ceLls(viT1, 08).vaLue = f2801cos*f2801can
      pxLs.ceLls(viT1, 09).vaLue = f2801cmt
      pxLs.ceLls(viT1, 10).vaLue = f2801cmt*f2801can
      pxLs.ceLls(viT1, 11).vaLue = f2801tgi+":"+f2801sgi+"-"+f2801ngi
      pxLs.ceLls(viT1, 12).vaLue = f2801cdg
      STORE viT1+1 TO viT1
      SELECT deT_sali
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 SELECT caB_sali
 STORE viT1+1 TO viT1
 pxLs.ceLls(viT1, 04).vaLue = "Total Cantidad"
 pxLs.ceLls(viT1, 05).vaLue = tcAn
 pxLs.ceLls(viT1, 07).vaLue = "Total Costo Prm"
 pxLs.ceLls(viT1, 08).vaLue = f2800cos
 pxLs.ceLls(viT1, 09).vaLue = "Tot.Costo Mant"
 pxLs.ceLls(viT1, 10).vaLue = tmAn
 WITH pxLs.raNge(pxLs.ceLls(viT1,1),pxLs.ceLls(viT1,12))
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
 pxLs.raNge(pxLs.ceLls(viT1,01), pxLs.ceLls(viT1,04)).meRge
 pxLs.raNge(pxLs.ceLls(viT1,06), pxLs.ceLls(viT1,07)).meRge
 pxLs.raNge(pxLs.ceLls(viT1,11), pxLs.ceLls(viT1,12)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(5,12)).inSert
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,02)).meRge
 pxLs.raNge(pxLs.ceLls(4,1), pxLs.ceLls(4,02)).meRge
 pxLs.raNge(pxLs.ceLls(3,6), pxLs.ceLls(3,07)).meRge
 pxLs.raNge(pxLs.ceLls(4,6), pxLs.ceLls(4,07)).meRge
 pxLs.raNge(pxLs.ceLls(5,6), pxLs.ceLls(5,07)).meRge
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(4,10)).foNt.naMe = "Times New Roman"
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(4,10)).foNt.siZe = 12
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(4,02)).foNt.boLd = .T.
 pxLs.raNge(pxLs.ceLls(3,11), pxLs.ceLls(4,11)).foNt.boLd = .T.
 pxLs.raNge(pxLs.ceLls(3,12), pxLs.ceLls(4,12)).hoRizontalalignment = 4
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(4,11)).nuMberformat = "@"
 pxLs.ceLls(3, 01).vaLue = "Tipo de Salida:"
 pxLs.ceLls(4, 01).vaLue = "Observaciones:"
 pxLs.ceLls(3, 03).vaLue = xnTi
 pxLs.ceLls(4, 03).vaLue = xcM1
 pxLs.ceLls(3, 11).vaLue = "Emisión:"
 pxLs.ceLls(4, 11).vaLue = "Pedido:"
 pxLs.ceLls(3, 12).vaLue = DTOC(xfEm)
 pxLs.ceLls(4, 12).vaLue = xpEd
 pxLs.coLumns(01).coLumnwidth = 07
 pxLs.coLumns(02).coLumnwidth = 17
 pxLs.coLumns(03).coLumnwidth = 50
 pxLs.coLumns(04).coLumnwidth = 12.5
 pxLs.coLumns(05).coLumnwidth = 18
 pxLs.coLumns(06).coLumnwidth = 10
 pxLs.coLumns(11).coLumnwidth = 14
 pxLs.coLumns(12).coLumnwidth = 15
 pxLs.raNge(pxLs.coLumns(7), pxLs.coLumns(10)).coLumnwidth = 15
 DO xl1_0000a WITH 2
 WAIT CLEAR
 SELECT deT_sali
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
ENDPROC
*
PROCEDURE Clp_2800c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO xlS_2800c
           STORE 99 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_2800c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f2801ite TO vrEc
           DO diS_2800c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Cl2_2800c
 DO CASE
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
      CASE mfIl>=vfB2-0.014 .AND. mfIl<=vfB2+1.2 .AND. mcCc>=vcB2-0.700  ;
           .AND. mcCc<=vcB2+3.7
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB3-0.014 .AND. mfIl<=vfB3+1.2 .AND. mcCc>=vcB3-0.700  ;
           .AND. mcCc<=vcB3+3.7
           STORE k_F3 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2800c
 STORE vrEc TO crEc
 DO rs1_2800b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 STORE crEc TO vrEc
 DO rs2_2800c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2800c
 STORE vrEc TO crEc
 IF vsW3=1
      RESTORE SCREEN FROM vpAn_11
 ENDIF
 DO p02_2700a IN PAC2700A
 DO p00_2800c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      IF f2801ite=vrEc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE vrEc TO irEc, crEc
      STORE ifFs TO vfFs, cfFs
 ENDIF
 SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
 DO paN_2800c
 STORE crEc TO vrEc
 STORE cfFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
 DO diS_2800c WITH "R"
ENDPROC
*
PROCEDURE Rs3_2800c
 SAVE SCREEN TO vpAn_12
 DO coLsc1
 SET READBORDER ON
 @ mfI0-1.0, mcO0+1.2 TO mfI0+6.5, mcO0+muCo-0.5 PATTERN 1
 @mFI0+0,mCO0+3.5 Say "Código de Producto a generar:" Font "&mLetRom",13 Style "BT"
 @mFI0+2,mCO0+3.5 Say "Descripción:"                  Font "&mLetRom",13 Style "BT"
 @mFI0+4,mCO0+3.5 Say "Unidad de Venta:"              Font "&mLetRom",13 Style "BT"
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Hl1_2800c
 PRIVATE pfIl, pcLn
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 IF wtPo="4"
      STORE -9 TO pcLn
 ELSE
      STORE 0 TO pcLn
 ENDIF
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+01, 02 SAY  ;
   "los ítems fueran más de los que se pueden visualizar,  puede verlo por "
 @ pfIl+02, 02 SAY  ;
   "páginas.                                                               "
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+07, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+08, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+09, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+06, pcLn+11 SAY "ESC" STYLE "BT"
 @ pfIl+07, pcLn+11 SAY "F10" STYLE "BT"
 @ pfIl+08, pcLn+11 SAY "F1" STYLE "BT"
 @ pfIl+09, pcLn+11 SAY "F3" STYLE "BT"
 @ pfIl+06, pcLn+31 SAY "Regresar a Cabecera"
 @ pfIl+07, pcLn+31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, pcLn+31 SAY "Ayuda del Programa"
 @ pfIl+09, pcLn+31 SAY "Ampliar Detalle y viceversa"
 STORE pfIl+10 TO pfIl
 IF wtPo="3"
      @ pfIl, pcLn+11 SAY "F5" STYLE "BT"
      @ pfIl, pcLn+29 SAY ":" STYLE "BT"
      @ pfIl, pcLn+31 SAY "Generar Costos del Mantenimiento-Productos"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF wtPo="4"
      @ pfIl, pcLn+11 SAY "F8" STYLE "BT"
      @ pfIl, pcLn+29 SAY ":" STYLE "BT"
      @ pfIl, pcLn+31 SAY "Marcar/Desmarcar códigos para generar Guía-Ingreso"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, pcLn+11 SAY "F9" STYLE "BT"
 @ pfIl, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl, pcLn+31 SAY "Busqueda de palabra o frase en descripción"
 STORE pfIl+1 TO pfIl
 IF usW4>1
      @ pfIl, pcLn+11 SAY "-->  <--" STYLE "BT"
      @ pfIl, pcLn+29 SAY ":" STYLE "BT"
      @ pfIl, pcLn+31 SAY "Ver otros datos"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+1, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+2, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+3, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+4, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+5, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+6, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+0, pcLn+11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+1, pcLn+11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+2, pcLn+11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+3, pcLn+11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+4, pcLn+11 SAY "HOME" STYLE "BT"
 @ pfIl+5, pcLn+11 SAY "END" STYLE "BT"
 @ pfIl+6, pcLn+11 SAY "ENTER" STYLE "BT"
 @ pfIl+0, pcLn+31 SAY "Línea inferior"
 @ pfIl+1, pcLn+31 SAY "Línea superior"
 @ pfIl+2, pcLn+31 SAY "Página siguiente"
 @ pfIl+3, pcLn+31 SAY "Página anterior"
 @ pfIl+4, pcLn+31 SAY "Primera línea"
 @ pfIl+5, pcLn+31 SAY "Última línea"
 @ pfIl+6, pcLn+31 SAY "Ver Detalle del ítem"
 STORE pfIl+7 TO pfIl
 IF wtPo="4"
      @ pfIl, pcLn+11 SAY "TAB" STYLE "BT"
      @ pfIl, pcLn+29 SAY ":" STYLE "BT"
      @ pfIl, pcLn+31 SAY "Generar Guía de Entrada en base a códigos marcados"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, pcLn+11 SAY "CTRL P" STYLE "BT"
 @ pfIl, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl, pcLn+31 SAY "Imprime Guía de Salida"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl, pcLn
ENDPROC
*
PROCEDURE Hl2_2800c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte se debe seleccionar el código de vidrio cortado que va a"
 @ pfIl+01, 02 SAY "ir en la Guía de Ingreso."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 24 SAY ":" STYLE "BT"
 @ pfIl+06, 24 SAY ":" STYLE "BT"
 @ pfIl+07, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+05, 14 SAY "ESC" STYLE "BT"
 @ pfIl+06, 14 SAY "F10" STYLE "BT"
 @ pfIl+07, 14 SAY "F1" STYLE "BT"
 @ pfIl+08, 14 SAY "F2" STYLE "BT"
 @ pfIl+09, 14 SAY "F3" STYLE "BT"
 @ pfIl+10, 14 SAY "F4" STYLE "BT"
 @ pfIl+11, 14 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 26 SAY "Regresar a Cabecera"
 @ pfIl+06, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 26 SAY "Ayuda del Programa"
 @ pfIl+08, 26 SAY "Consulta alfabética de Productos"
 @ pfIl+09, 26 SAY "Buscar palabra o frase en Producto"
 @ pfIl+10, 26 SAY "Consulta de Productos x Código"
 @ pfIl+11, 26 SAY "Aceptar producto"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
