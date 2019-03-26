 = INKEY(0.01)
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
           DO liM_3510b IN PCI3510B
      CASE viOm=1 .OR. vrEc>frEc
           DO liM_3510b IN PCI3510B
      CASE viOm=2
           GOTO vrEc
           DO muE_3510b IN PCI3510B
 ENDCASE
 STORE 99 TO mkEy
 DO ctO_3510b IN PCI3510B
 DO diS_3510b IN PCI3510B WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3510b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3510b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe>03
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SELECT peNd_vtas
                STORE vtD1 TO ctD3
                STORE vsR1 TO csR3
                STORE vdO1 TO cdO3
                STORE 02 TO vsWw
                DO orD_0000a WITH "3500", "C", "F3500PEN", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SEEK veSt
                IF  .NOT. EOF()
                     SAVE SCREEN TO vpAn_11
                     DO pcC3500w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                SELECT peNd_vtas
                SET FILTER TO
                DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_Enter
                          SELECT peNd_vtas
                          SEEK vtD1+vsR1+vdO1
                          DO CASE
                               CASE EOF()
                                    STORE  ;
                                     "Este Documento no se encuentra registrado..."  ;
                                     TO mmSj
                               OTHERWISE
                                    STORE f3500nom TO vnO1
                                    STORE f3500fem TO vfE1
                                    STORE f3500fve TO vfV1
                                    STORE f3500nfp TO vfPa
                                    STORE f3500mon TO vmNd
                                    STORE f3500tot+f3500int TO vtO1
                                    STORE f3500acu TO vaC1
                                    IF wmOd=2
                                         SELECT deT_ing_caja
                                         SEEK vaNo+vmEs+vsEr+vnUm+vtD1+ ;
                                          vsR1+vdO1
                                         IF  .NOT. EOF()
                                              DO CASE
                                                   CASE vmNd=cmOn
                                                        STORE vaC1- ;
                                                         f3511pag TO vaC1
                                                   CASE vmNd=1
                                                        STORE vaC1- ;
                                                         ROUND(f3511pag* ;
                                                         xtCa, 2) TO vaC1
                                                   CASE vmNd=2
                                                        STORE vaC1- ;
                                                         ROUND(f3511pag/ ;
                                                         xtCa, 2) TO vaC1
                                              ENDCASE
                                         ENDIF
                                    ENDIF
                                    STORE vtO1-vaC1 TO vsLd
                                    IF vmOn<>vmNd
                                         DO CASE
                                              CASE vmNd=1
                                                   STORE ROUND(vsLd/vtCa,  ;
                                                    2) TO vsLd
                                              CASE vmNd=2
                                                   STORE ROUND(vsLd*vtCa,  ;
                                                    2) TO vsLd
                                         ENDCASE
                                    ENDIF
                                    DO diS_3510b IN PCI3510B WITH "R"
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                                    STORE 3 TO viTe
                          ENDCASE
                          SELECT teMporal
                     CASE mkEy=k_Tab
                          SELECT exIste
                          SET FILTER TO ftM2est="1"
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               STORE ftM2tdo TO vtD1
                               STORE ftM2ser TO vsR1
                               STORE ftM2doc TO vdO1
                               SELECT peNd_vtas
                               SEEK vtD1+vsR1+vdO1
                               IF  .NOT. EOF()
                                    STORE f3500nom TO vnO1
                                    STORE f3500fem TO vfE1
                                    STORE f3500fve TO vfV1
                                    STORE f3500nfp TO vfPa
                                    STORE f3500mon TO vmNd
                                    STORE f3500tot+f3500int TO vtO1
                                    STORE f3500acu TO vaC1
                                    IF wmOd=2
                                         SELECT deT_ing_caja
                                         SEEK vaNo+vmEs+vsEr+vnUm+vtD1+ ;
                                          vsR1+vdO1
                                         IF  .NOT. EOF()
                                              DO CASE
                                                   CASE vmNd=cmOn
                                                        STORE vaC1- ;
                                                         f3511pag TO vaC1
                                                   CASE vmNd=1
                                                        STORE vaC1- ;
                                                         ROUND(f3511pag* ;
                                                         xtCa, 2) TO vaC1
                                                   CASE vmNd=2
                                                        STORE vaC1- ;
                                                         ROUND(f3511pag/ ;
                                                         xtCa, 2) TO vaC1
                                              ENDCASE
                                         ENDIF
                                    ENDIF
                                    STORE vtO1-vaC1 TO vsLd
                                    IF vmOn<>vmNd
                                         DO CASE
                                              CASE vmNd=1
                                                   STORE ROUND(vsLd/vtCa,  ;
                                                    2) TO vsLd
                                              CASE vmNd=2
                                                   STORE ROUND(vsLd*vtCa,  ;
                                                    2) TO vsLd
                                         ENDCASE
                                    ENDIF
                                    STORE vsLd TO vpGo
                                    STORE 1 TO viOm
                                    DO grA_3510b IN PCI3510B WITH "2"
                               ENDIF
                               SELECT exIste
                               SKIP
                          ENDDO
                          SELECT exIste
                          SET FILTER TO
                          REPLACE ftM2est WITH SPACE(01) ALL
                          SELECT teMporal
                          GOTO irEc
                          DO paN_3510b IN PCI3510B
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE urEc TO vrEc
                          STORE ufIl TO vfIl
                          GOTO vrEc
                          STORE k_Ctrl_end TO mkEy
                     OTHERWISE
                          STORE ctD3 TO vtD1
                          STORE csR3 TO vsR1
                          STORE cdO3 TO vdO1
                ENDCASE
                SELECT exIste
                DELETE FOR ftM2est="1"
                PACK
                SELECT teMporal
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3510b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3510b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                ENDIF
                IF viOm=1
                     DO blA_3510b IN PCI3510B
                ELSE
                     DO diS_3510b IN PCI3510B WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_F4
                DO CASE
                     CASE vsW1=1
                          STORE 2 TO vsW1
                     CASE vsW1=2
                          STORE 1 TO vsW1
                ENDCASE
                DO p03_3510a IN PCI3510A
                DO coP_3510b IN PCI3510B
                STORE vrEc TO crEc
                STORE vfIl TO cfIl
                IF frEc>0 .AND. irEc<=urEc
                     GOTO irEc
                     DO paN_3510b IN PCI3510B
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE crEc TO vrEc
                     STORE cfIl TO vfIl
                     IF vrEc<=frEc
                          GOTO vrEc
                          STORE 2 TO viOm
                     ELSE
                          STORE 1 TO viOm
                     ENDIF
                     DO poN_3510b IN PCI3510B
                ENDIF
                DO diS_3510b IN PCI3510B WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F5 .AND. viTe=4 .AND. vsW1=1
                PRIVATE paCu, ppGo, pvUe, piTe
                IF vpGo=0
                     STORE vsLd TO paCu
                ELSE
                     STORE vpGo TO paCu
                ENDIF
                STORE 0 TO ppGo
                STORE 1 TO piTe
                STORE 99 TO mkEy
                STORE ppGo-paCu TO pvUe
                SAVE SCREEN TO vpAn_11
                DO coLsc1
                SET READBORDER ON
                @ ifIl, mcO0+127.7 TO ifIl+6.5, mcO0+162.3 PATTERN 1
                @iFIL+0.5,mCO0+129.1 Say "A/C"     Font "&mLetRom",13 Style "BQ"
                @iFIL+2.5,mCO0+129.1 Say "Pago"    Font "&mLetRom",13 Style "BQ"
                @iFIL+4.5,mCO0+129.1 Say "Vuelto"  Font "&mLetRom",13 Style "BQ"
                @iFIL+0.5,mCO0+140.3 Get pACU      Font "&mLetRom",13 Style "NQ" Size 1,14 Color ,&mColBlN Pict "999999.99"
                @iFIL+2.5,mCO0+140.3 Get pPGO      Font "&mLetRom",13 Style "NQ" Size 1,14 Color ,&mColBlN Pict "999999.99"
                @iFIL+4.5,mCO0+140.3 Get pVUE      Font "&mLetRom",13 Style "NQ" Size 1,14 Color ,&mColSc1 Pict "999999.99"
                READ TIMEOUT 0.01
                DO WHILE .T.
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               EXIT
                          CASE mkEy=k_Tab
                               STORE paCu TO vpGo
                               EXIT
                          CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Up
                               IF piTe=2
                                    STORE 1 TO piTe
                               ELSE
                                    STORE 2 TO piTe
                               ENDIF
                     ENDCASE
                     DO CASE
                          CASE piTe=1
                               @iFIL+0.5,mCO0+140.3 Get pACU Font "&mLetRom",13 Style "NQ" Size 1,14 Color ,&mColBlN Pict "999999.99"
                          CASE piTe=2
                               @iFIL+2.5,mCO0+140.3 Get pPGO Font "&mLetRom",13 Style "NQ" Size 1,14 Color ,&mColBlN Pict "999999.99"
                     ENDCASE
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     STORE ppGo-paCu TO pvUe
                     DO coLsc1
                     @iFIL+4.5,mCO0+140.3 Say pVUE Font "&mLetRom",13 Style "NQ" Size 1,14 Pict "999999.99"
                ENDDO
                SET READBORDER OFF
                RESTORE SCREEN FROM vpAn_11
                RELEASE paCu, ppGo, pvUe, piTe
                STORE 99 TO mkEy
           CASE mkEy=k_F6
                SELECT teMporal
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     STORE ftM1tdo TO vtD1
                     STORE ftM1ser TO vsR1
                     STORE ftM1doc TO vdO1
                     SELECT peNd_vtas
                     SEEK vtD1+vsR1+vdO1
                     IF  .NOT. EOF()
                          STORE f3500mon TO vmNd
                          STORE f3500tot+f3500int TO vsLd
                          IF vmOn<>vmNd
                               DO CASE
                                    CASE vmNd=1
                                         STORE ROUND(vsLd/vtCa, 2) TO vsLd
                                    CASE vmNd=2
                                         STORE ROUND(vsLd*vtCa, 2) TO vsLd
                               ENDCASE
                          ENDIF
                          SELECT teMporal
                          REPLACE ftM1pgo WITH vsLd
                     ENDIF
                     SKIP
                ENDDO
                EXIT
           CASE mkEy=k_Alt_del .AND. viOm=1
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viOm=1
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frEc=vrEc) .OR. (mkEy=k_Pgdn .AND.  ;
                frEc=urEc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND. vrEc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irEc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viOm=2 .AND. viTe=4
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=1 .OR.  ;
                ftM1pgo<>vpGo)
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vtD1))=0
                          STORE "Tipo de Documento no puede tener espacios vacíos..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. LEN(ALLTRIM(vsR1))=0
                          STORE "Serie de Documento no puede tener espacios vacíos..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. (vsR1<"001" .OR. vsR1>"999")
                          STORE "Serie de Documento es de 001 a 999..." TO mmSj
                     CASE viTe=3 .AND. LEN(ALLTRIM(vdO1))=0
                          STORE "Número de Documento no puede tener espacios vacíos..."  ;
                                TO mmSj
                     CASE viTe=3 .AND. (vdO1<"0000001" .OR. vdO1>"9999999")
                          STORE "Número de Documento es de 0000001 a 9999999..."  ;
                                TO mmSj
                     CASE viTe=3
                          SELECT exIste
                          SEEK vtD1+vsR1+vdO1
                          IF  .NOT. EOF()
                               STORE "Documento ya digitado en este Voucher..."  ;
                                     TO mmSj
                          ELSE
                               SELECT peNd_vtas
                               SEEK vtD1+vsR1+vdO1
                               DO CASE
                                    CASE EOF()
                                         STORE  ;
                                          "Este Documento no se encuentra registrado..."  ;
                                          TO mmSj
                                    OTHERWISE
                                         STORE f3500nom TO vnO1
                                         STORE f3500fem TO vfE1
                                         STORE f3500fve TO vfV1
                                         STORE f3500nfp TO vfPa
                                         STORE f3500mon TO vmNd
                                         STORE f3500tot+f3500int TO vtO1
                                         STORE f3500acu TO vaC1
                                         IF wmOd=2
                                              SELECT deT_ing_caja
                                              SEEK vaNo+vmEs+vsEr+vnUm+ ;
                                               vtD1+vsR1+vdO1
                                              IF  .NOT. EOF()
                                                   DO CASE
                                                        CASE vmNd=cmOn
                                                             STORE vaC1- ;
                                                              f3511pag TO vaC1
                                                        CASE vmNd=1
                                                             STORE vaC1- ;
                                                              ROUND(f3511pag* ;
                                                              xtCa, 2) TO vaC1
                                                        CASE vmNd=2
                                                             STORE vaC1- ;
                                                              ROUND(f3511pag/ ;
                                                              xtCa, 2) TO vaC1
                                                   ENDCASE
                                              ENDIF
                                         ENDIF
                                         STORE vtO1-vaC1 TO vsLd
                                         IF vmOn<>vmNd
                                              DO CASE
                                                   CASE vmNd=1
                                                        STORE ROUND(vsLd/ ;
                                                         vtCa, 2) TO vsLd
                                                   CASE vmNd=2
                                                        STORE ROUND(vsLd* ;
                                                         vtCa, 2) TO vsLd
                                              ENDCASE
                                         ENDIF
                                         DO diS_3510b IN PCI3510B WITH "R"
                                         IF mkEy=k_Esc
                                              RETURN
                                         ENDIF
                               ENDCASE
                          ENDIF
                          SELECT teMporal
                     CASE viTe=4 .AND. vpGo=0
                          STORE "Total no puede ser 0..." TO mmSj
                          DO diS_3510b IN PCI3510B WITH "R"
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<4
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. viTe<4
                STORE viTe+1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del .AND. viOm=2
                = INKEY(0.01)
                SELECT teMporal
                IF vtD1="NC" .OR. vtD1="N1" .OR. vtDo="N3"
                     STORE ttOt+ftM1pgo TO ttOt
                ELSE
                     STORE ttOt-ftM1pgo TO ttOt
                ENDIF
                SELECT exIste
                SEEK vtD1+vsR1+vdO1
                DELETE
                PACK
                REINDEX
                SELECT teMporal
                DO coL_fondo
                DO suBe WITH vfIl, mcO0+5.7, ffIl, ucLn, 1
                DO liN_3510a IN PCI3510A WITH ifIl, ffIl+1.1
                DO coL_fondo
                IF frEc=urEc
                     @ ufIl, mcO0+0.5 CLEAR TO ufIl+1, mcO0+5
                     STORE frEc-1 TO frEc
                     STORE urEc-1 TO urEc
                     STORE ufIl-1 TO ufIl
                ELSE
                     STORE frEc-1 TO frEc
                     STORE vfIl TO cfIl
                     STORE vrEc TO crEc
                     STORE ffIl TO vfIl
                     STORE urEc+1 TO vrEc
                     GOTO vrEc
                     STORE vrEc-1 TO vrEc
                     DO muE_3510b IN PCI3510B
                     DO diS_3510b IN PCI3510B WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfIl TO vfIl
                     STORE crEc TO vrEc
                     GOTO vrEc
                ENDIF
                DELETE
                PACK
                IF vrEc<=frEc
                     GOTO vrEc
                     DO muE_3510b IN PCI3510B
                ELSE
                     DO liM_3510b IN PCI3510B
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_3510b IN PCI3510B WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO ctO_3510b IN PCI3510B
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1pgo<>vpGo)
                DO ve1_3510b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=1 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. vpGo<>0
                DO grA_3510b IN PCI3510B WITH "1"
                STORE 02 TO viOm
      ENDCASE
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_3510b IN PCI3510B
                ELSE
                     DO diS_3510b IN PCI3510B WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF()
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                     DO diS_3510b IN PCI3510B WITH "R"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     EXIT
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_3510b IN PCI3510B WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_3510a IN PCI3510A WITH ifIl, ffIl+1.1
                     STORE irEc+1 TO irEc
                     IF urEc<frEc
                          STORE urEc+1 TO urEc
                     ENDIF
                ELSE
                     STORE vfIl+1 TO vfIl
                ENDIF
                STORE vrEc+1 TO vrEc
                IF vrEc<=frEc
                     GOTO vrEc
                     DO muE_3510b IN PCI3510B
                ELSE
                     DO liM_3510b IN PCI3510B
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_3510b IN PCI3510B WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_3510b IN PCI3510B
                ELSE
                     DO diS_3510b IN PCI3510B WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                     DO liN_3510a IN PCI3510A WITH ifIl, ffIl+1.1
                     STORE irEc-1 TO irEc
                     IF ufIl<ffIl
                          STORE ufIl+1 TO ufIl
                     ELSE
                          STORE urEc-1 TO urEc
                     ENDIF
                ELSE
                     STORE vfIl-1 TO vfIl
                ENDIF
                STORE vrEc-1 TO vrEc
                GOTO vrEc
                DO muE_3510b IN PCI3510B
                DO diS_3510b IN PCI3510B WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_3510b IN PCI3510B
                ELSE
                     DO diS_3510b IN PCI3510B WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_3510b IN PCI3510B
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_3510b IN PCI3510B
                DO diS_3510b IN PCI3510B WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_3510b IN PCI3510B WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_3510b IN PCI3510B
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     DO diS_3510b IN PCI3510B WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_3510b IN PCI3510B
                DO diS_3510b IN PCI3510B WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_3510b IN PCI3510B WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_3510b IN PCI3510B
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_3510b IN PCI3510B
                DO diS_3510b IN PCI3510B WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_3510b IN PCI3510B WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urEc
                SKIP
                DO paN_3510b IN PCI3510B
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_3510b IN PCI3510B
                DO diS_3510b IN PCI3510B WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      STORE k_Enter TO mkEy
      DO coL_fondo
      @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,120
      DO CASE
           CASE viTe=1
                @mMF2,mMC2+19 Say "DIGITAR EL TIPO DE DOCUMENTO ES DE 2 CARACTERES ALFANUMÉRICOS..."         Font "&mLetRom",9 Style "BQ"
           CASE viTe=2
                @mMF2,mMC2+23 Say "DIGITAR EL NÚMERO DE SERIE DEL DOCUMENTO ES DE 001 A 999..."              Font "&mLetRom",9 Style "BQ"
           CASE viTe=3
                @mMF2,mMC2+24 Say "DIGITAR EL NÚMERO DE DOCUMENTO ES DE 000001 A 999999..."                  Font "&mLetRom",9 Style "BQ"
           CASE viTe=4 .AND. vsW1=1
                @mMF2,mMC2+23 Say "DIGITAR EL MONTO QUE SE ESTÁ CANCELANDO DEL DOCUMENTO..."                 Font "&mLetRom",9 Style "BQ"
           CASE viTe=4 .AND. vsW1=2
                @mMF2,mMC2+20 Say "DIGITAR EL NÚMERO DE RECIBO, SI NO SE USA PUEDE ESTAR VACIO..."           Font "&mLetRom",9 Style "BQ"
      ENDCASE
      DO coLbln
      DO CASE
           CASE viTe=1
                @vFIL,mCO0+005.9 Get vTD1 Font "&mLetAri",9 Style "NQ" Size 1,03.1 Color ,&mColBlN Pict "!!"
           CASE viTe=2
                @vFIL,mCO0+010.8 Get vSR1 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Color ,&mColBlN Pict "!!!"
           CASE viTe=3
                STORE VAL(vdO1) TO vdO1
                @vFIL,mCO0+016.5 Get vDO1 Font "&mLetAri",9 Style "NQ" Size 1,09.5 Color ,&mColBlN Pict "9999999"
           CASE viTe=4 .AND. vsW1=1
                @vFIL,mCO0+171.3 Get vPGO Font "&mLetAri",9 Style "NQ" Size 1,14.0 Color ,&mColBlN Pict "999999.99"
           CASE viTe=4 .AND. vsW1=2
                @vFIL,mCO0+121.8 Get vRCI Font "&mLetAri",9 Style "NQ" Size 1,12.0 Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF viTe=3
           DO coLbln
           STORE STRTRAN(STR(vdO1, 7, 0), " ", "0") TO vdO1
           @vFIL,mCO0+16.5 Say vDO1 Font "&mLetAri",9 Style "NQ" Size 1,9.5 Pict "9999999"
      ENDIF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_3510b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_3510b IN PCI3510B
      DO diS_3510b IN PCI3510B WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, icLn CLEAR TO ffIl+1.1, ucLn
      DO liN_3510a IN PCI3510A WITH vfIl, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3510b
 PARAMETER ptIp
 PRIVATE psIg
 DO CASE
      CASE ptIp="N" .AND. (vtD2="NC" .OR. vtD2="N1" .OR. vtD2="N3") .AND.  ;
           (wpRg="PCI3520A" .OR. wpRg="PCM3520A")
           DO coL_fonro
      CASE ptIp="R" .AND. (vtD2="NC" .OR. vtD2="N1" .OR. vtD2="N3") .AND.  ;
           (wpRg="PCI3520A" .OR. wpRg="PCM3520A")
           DO coLblr
      CASE ptIp="N" .AND. (vtD1="NC" .OR. vtD1="N1" .OR. vtD1="N3")
           DO coL_fonro
      CASE ptIp="R" .AND. (vtD1="NC" .OR. vtD1="N1" .OR. vtD1="N3")
           DO coLblr
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF vmNd=1
      STORE "S/." TO psIg
 ELSE
      STORE "US$" TO psIg
 ENDIF
 DO prEsiona WITH "1", "DESCAN", vfIl, mcO0+186.7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vFIL,mCO0+000.5 Say vREC      Font "&mLetAri",9 Style "NQ" Size 1,4.2 Pict "999"
 @vFIL,mCO0+005.7 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.2
 @vFIL,mCO0+005.9 Say vTD1      Font "&mLetAri",9 Style "NQ" Size 1,3.6 Pict "!!"
 @vFIL,mCO0+010.6 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.2
 @vFIL,mCO0+010.8 Say vSR1      Font "&mLetAri",9 Style "NQ" Size 1,4.2 Pict "999"
 @vFIL,mCO0+015.0 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFIL,mCO0+016.3 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.2
 @vFIL,mCO0+016.5 Say vDO1      Font "&mLetAri",9 Style "NQ" Size 1,9.5 Pict "9999999"
 @vFIL,mCO0+026.1 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFIL,mCO0+027.6 Say vNO1      Font "&mLetAri",9 Style "NQ" Size 1,79.8 Pict "@S80"
 @vFIL,mCO0+108.4 Say vFE1      Font "&mLetAri",9 Style "NQ" Size 1,12.4
 @vFIL,mCO0+121.6 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.2
 @vFIL,mCO0+133.8 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFIL,mCO0+135.2 Say pSIG      Font "&mLetAri",9 Style "NQ" Size 1,4.8
 @vFIL,mCO0+141.1 Say vTO1      Font "&mLetAri",9 Style "NQ" Size 1,14   Pict "999,999.99"
 @vFIL,mCO0+156.1 Say vSLD-vPGO Font "&mLetAri",9 Style "NQ" Size 1,14   Pict "999,999.99"
 @vFIL,mCO0+171.0 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.3
 @vFIL,mCO0+185.3 Say "  "      Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFIL,mCO0+171.3 Say vPGO      Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "999,999.99"
 DO CASE
      CASE vsW1=1 .AND. (wpRg="PCI3510A" .OR. wpRg="PCM3510A")
           @vFIL,mCO0+121.8 Say vFPA Font "&mLetAri",9 Style "NQ" Size 1,12.4
      CASE vsW1=1
           @vFIL,mCO0+121.8 Say vFV1 Font "&mLetAri",9 Style "NQ" Size 1,12.4
      CASE vsW1=2
           @vFIL,mCO0+121.8 Say vRCI Font "&mLetAri",9 Style "NQ" Size 1,12
 ENDCASE
ENDPROC
*
PROCEDURE Bla_3510b
 DO coL_fondo
 @ vfIl, icLn CLEAR TO vfIl+1.1, ucLn
 DO liN_3510a IN PCI3510A WITH vfIl, vfIl+1.1
ENDPROC
*
PROCEDURE Lim_3510b
 STORE SPACE(70) TO vnO1
 STORE SPACE(07) TO vdO1, vrCi
 STORE SPACE(20) TO vsR2, vdO2, vfPa
 STORE SPACE(02) TO vtD2
 STORE msEr(01) TO vsR1
 STORE vmOn TO vmNd
 STORE 01 TO viOm, viTe
 STORE 00 TO vpGo, vtO1, vaC1, vsLd
 STORE CTOD("  /  /    ") TO vfE1, vfV1
 DO CASE
      CASE wpRg="PCI3510A" .OR. wpRg="PCM3510A" .OR. wpRg="PCI3530A" .OR.  ;
           wpRg="PCM3530A"
           STORE "FA" TO vtD1
      OTHERWISE
           STORE "CO" TO vtD1
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3510b
 STORE ftM1tdo TO vtD1
 STORE ftM1ser TO vsR1
 STORE ftM1doc TO vdO1
 STORE ftM1nom TO vnO1
 STORE ftM1fem TO vfE1
 STORE ftM1fve TO vfV1
 STORE ftM1fpa TO vfPa
 STORE ftM1mon TO vmNd
 STORE ftM1tot TO vtO1
 STORE ftM1acu TO vaC1
 STORE ftM1sld TO vsLd
 STORE ftM1pgo TO vpGo
 STORE ftM1rci TO vrCi
 STORE ftM1td2 TO vtD2
 STORE ftM1sr2 TO vsR2
 STORE ftM1do2 TO vdO2
 STORE 02 TO viOm
 STORE 04 TO viTe
ENDPROC
*
PROCEDURE Cop_3510b
 STORE vtD1 TO ctD1
 STORE vsR1 TO csR1
 STORE vdO1 TO cdO1
 STORE vnO1 TO cnO1
 STORE vfE1 TO cfE1
 STORE vfV1 TO cfV1
 STORE vfPa TO cfPa
 STORE vmNd TO cmNd
 STORE vtO1 TO ctO1
 STORE vaC1 TO caC1
 STORE vsLd TO csLd
 STORE vpGo TO cpGo
 STORE vrCi TO crCi
 STORE vtD2 TO ctD2
 STORE vsR2 TO csR2
 STORE vdO2 TO cdO2
ENDPROC
*
PROCEDURE Pon_3510b
 STORE ctD1 TO vtD1
 STORE csR1 TO vsR1
 STORE cdO1 TO vdO1
 STORE cnO1 TO vnO1
 STORE cfE1 TO vfE1
 STORE cfV1 TO vfV1
 STORE cfPa TO vfPa
 STORE cmNd TO vmNd
 STORE ctO1 TO vtO1
 STORE caC1 TO vaC1
 STORE csLd TO vsLd
 STORE cpGo TO vpGo
 STORE crCi TO vrCi
 STORE ctD2 TO vtD2
 STORE csR2 TO vsR2
 STORE cdO2 TO vdO2
ENDPROC
*
PROCEDURE Gra_3510b
 PARAMETER ptPo
 SELECT teMporal
 IF viOm=1
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
      IF ptPo="1"
           SELECT exIste
           APPEND BLANK
           REPLACE ftM2tdo WITH vtD1
           REPLACE ftM2ser WITH vsR1
           REPLACE ftM2doc WITH vdO1
           SELECT teMporal
      ENDIF
 ELSE
      GOTO vrEc
      DO CASE
           CASE (vtD2="NC" .OR. vtD2="N1" .OR. vtD2="N3") .AND. (wpRg= ;
                "PCI3520A" .OR. wpRg="PCM3520A")
                STORE ttOt+ftM1pgo TO ttOt
           CASE vtD1="NC" .OR. vtD1="N1" .OR. vtD1="N3"
                STORE ttOt+ftM1pgo TO ttOt
           OTHERWISE
                STORE ttOt-ftM1pgo TO ttOt
      ENDCASE
 ENDIF
 REPLACE ftM1tdo WITH vtD1
 REPLACE ftM1ser WITH vsR1
 REPLACE ftM1doc WITH vdO1
 REPLACE ftM1nom WITH vnO1
 REPLACE ftM1fem WITH vfE1
 REPLACE ftM1fve WITH vfV1
 REPLACE ftM1fpa WITH vfPa
 REPLACE ftM1mon WITH vmNd
 REPLACE ftM1tot WITH vtO1
 REPLACE ftM1acu WITH vaC1
 REPLACE ftM1sld WITH vsLd
 REPLACE ftM1pgo WITH vpGo
 REPLACE ftM1rci WITH vrCi
 REPLACE ftM1td2 WITH vtD2
 REPLACE ftM1sr2 WITH vsR2
 REPLACE ftM1do2 WITH vdO2
 DO CASE
      CASE (vtD2="NC" .OR. vtD2="N1" .OR. vtD2="N3") .AND. (wpRg= ;
           "PCI3520A" .OR. wpRg="PCM3520A")
           STORE ttOt-vpGo TO ttOt
      CASE vtD1="NC" .OR. vtD1="N1" .OR. vtD1="N3"
           STORE ttOt-vpGo TO ttOt
      OTHERWISE
           STORE ttOt+vpGo TO ttOt
 ENDCASE
 DO ctO_3510b IN PCI3510B
ENDPROC
*
PROCEDURE Cto_3510b
 DO coLsc7
 IF vtPp=1
      @fFIL+1.3,mCO0+166.9 Say tTOT Font "&mLetAri",9 Style "BQ" Size 1,15.2 Pict "99,999,999.99"
 ENDIF
ENDPROC
*
PROCEDURE Ve1_3510b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vtD1))=0
           STORE "Tipo de Documento no puede tener espacios vacíos..." TO mmSj
      CASE LEN(ALLTRIM(vsR1))=0
           STORE "Serie de Documento no puede tener espacios vacíos..." TO mmSj
      CASE vsR1<"001" .OR. vsR1>"999"
           STORE "Serie de Documento es de 001 a 999..." TO mmSj
      CASE LEN(ALLTRIM(vdO1))=0
           STORE "Número de Documento no puede tener espacios vacíos..."  ;
                 TO mmSj
      CASE vdO1<"0000001" .OR. vdO1>"9999999"
           STORE "Número de Documento es de 0000001 a 9999999..." TO mmSj
      CASE vpGo=0
           STORE "Total no puede ser 0..." TO mmSj
      CASE viOm=1
           SELECT exIste
           SEEK vtD1+vsR1+vdO1
           IF  .NOT. EOF()
                STORE "Documento ya digitado en este Voucher..." TO mmSj
           ELSE
                SELECT peNd_vtas
                SEEK vtD1+vsR1+vdO1
                DO CASE
                     CASE EOF()
                          STORE "Este Documento no se encuentra registrado..."  ;
                                TO mmSj
                     OTHERWISE
                          STORE f3500nom TO vnO1
                          STORE f3500fem TO vfE1
                          STORE f3500fve TO vfV1
                          STORE f3500nfp TO vfPa
                          STORE f3500mon TO vmNd
                          STORE f3500tot+f3500int TO vtO1
                          STORE f3500acu TO vaC1
                          IF wmOd=2
                               SELECT deT_ing_caja
                               SEEK vaNo+vmEs+vsEr+vnUm+vtD1+vsR1+vdO1
                               IF  .NOT. EOF()
                                    DO CASE
                                         CASE vmNd=cmOn
                                              STORE vaC1-f3511pag TO vaC1
                                         CASE vmNd=1
                                              STORE vaC1-ROUND(f3511pag* ;
                                               xtCa, 2) TO vaC1
                                         CASE vmNd=2
                                              STORE vaC1-ROUND(f3511pag/ ;
                                               xtCa, 2) TO vaC1
                                    ENDCASE
                               ENDIF
                          ENDIF
                          STORE vtO1-vaC1 TO vsLd
                          IF vmOn<>vmNd
                               DO CASE
                                    CASE vmNd=1
                                         STORE ROUND(vsLd/vtCa, 2) TO vsLd
                                    CASE vmNd=2
                                         STORE ROUND(vsLd*vtCa, 2) TO vsLd
                               ENDCASE
                          ENDIF
                          DO diS_3510b IN PCI3510B WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                ENDCASE
           ENDIF
           SELECT teMporal
 ENDCASE
ENDPROC
*
PROCEDURE Res_3510b
 SET READBORDER ON
 IF wmOd=1
      DO p00_3510a IN PCI3510A WITH "1"
 ELSE
      DO p00_3510a IN PCM3510A WITH "1"
 ENDIF
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
      OTHERWISE
           STORE irEc TO vrEc
           STORE ifIl TO vfIl
           DO CASE
                CASE vrEc>frEc
                     DO liM_3510b IN PCI3510B
                OTHERWISE
                     GOTO vrEc
                     DO muE_3510b IN PCI3510B
                     STORE 4 TO viTe
           ENDCASE
 ENDCASE
 DO diS_3510b IN PCI3510B WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3510b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+44.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Tab TO mkEy
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
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+001.0 .AND. mcCc>=mcO0+186.2 .AND.  ;
           mcCc<=mcO0+190.4
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1.0 .AND. mcCc>=mcO0+0.1 .AND.  ;
           mcCc<=mcO0+10 .AND. viTe<>01 .AND. viOm=1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+01.0 .AND. mcCc>=mcO0+10 .AND.  ;
           mcCc<=mcO0+15.8 .AND. viTe<>02 .AND. viOm=1
           STORE 02 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+01 .AND. mcCc>=mcO0+15.8 .AND.  ;
           mcCc<=mcO0+27 .AND. viTe<>03 .AND. viOm=1
           STORE 03 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+001.0 .AND. mcCc>=mcO0+170.6 .AND.  ;
           mcCc<=mcO0+182.6 .AND. viTe<>04
           STORE 04 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+001.0 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+190.4
           STORE 99 TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+001.0 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+190.4
           IF vpGo<>0
                DO grA_3510b IN PCI3510B WITH "1"
           ENDIF
           IF viOm=1
                DO blA_3510b IN PCI3510B
           ELSE
                DO diS_3510b IN PCI3510B WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           GOTO irEc
           SKIP INT(mfIl-ifIl)
           STORE RECNO() TO vrEc
           DO muE_3510b IN PCI3510B
           DO diS_3510b IN PCI3510B WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=mcO0+186.2 .AND. mcCc<=mcO0+190.4
                     STORE 01 TO viTe
                     STORE k_Alt_del TO mkEy
                CASE mcCc>=mcO0 .AND. mcCc<=mcO0+10 .AND. viOm=1
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE mcCc>=mcO0+10 .AND. mcCc<=mcO0+15.8 .AND. viOm=1
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE mcCc>=mcO0+15.8 .AND. mcCc<=mcO0+27 .AND. viOm=1
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE mcCc>=mcO0 .AND. mcCc<=mcO0+190.4
                     STORE 04 TO viTe
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3510b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En el Detalle se puede ingresar cualquier Documento que se encuentre Re-"
 @ pfIl+1, 01 SAY  ;
   "gistrado en Cuentas por Cobrar. Cuando se llama a consultar los documen-"
 @ pfIl+2, 01 SAY  ;
   "tos pendientes, se puede seleccionar uno o varios al mismo tiempo para su"
 @ pfIl+3, 01 SAY "cancelación."
 @ pfIl+5, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+7, 20 SAY ":" STYLE "BT"
 @ pfIl+8, 20 SAY ":" STYLE "BT"
 @ pfIl+9, 20 SAY ":" STYLE "BT"
 @ pfIl+7, 02 SAY "ESC" STYLE "BT"
 @ pfIl+8, 02 SAY "F10" STYLE "BT"
 @ pfIl+9, 02 SAY "F1" STYLE "BT"
 @ pfIl+7, 22 SAY "Regresar a Cabecera"
 @ pfIl+8, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+9, 22 SAY "Ayuda del Programa"
 STORE pfIl+10 TO pfIl
 IF viTe<4
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F2" STYLE "BT"
      @ pfIl, 22 SAY "Documentos Pendientes"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 20 SAY ":" STYLE "BT"
 @ pfIl+01, 20 SAY ":" STYLE "BT"
 @ pfIl+02, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+12, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "F4" STYLE "BT"
 @ pfIl+01, 02 SAY "F5" STYLE "BT"
 @ pfIl+02, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+04, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+06, 02 SAY "CTRL <-" STYLE "BT"
 @ pfIl+07, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+08, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+09, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+10, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+11, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+12, 02 SAY "TAB" STYLE "BT"
 @ pfIl+00, 22 SAY "Cambiar a Opción Recibos/Viceversa"
 @ pfIl+01, 22 SAY "Calcular Vuelto"
 @ pfIl+02, 22 SAY "Ir al siguiente campo, llegando al último campo pasa a"
 @ pfIl+03, 22 SAY "la siguiente línea"
 @ pfIl+04, 22 SAY "Ir a la línea siguiente"
 @ pfIl+05, 22 SAY "Ir a la línea anterior"
 @ pfIl+06, 22 SAY "Ir al campo anterior"
 @ pfIl+07, 22 SAY "Primera línea del Detalle"
 @ pfIl+08, 22 SAY "Última línea del Detalle"
 @ pfIl+09, 22 SAY "Página siguiente"
 @ pfIl+10, 22 SAY "Página anterior"
 @ pfIl+11, 22 SAY "Borrar línea"
 @ pfIl+12, 22 SAY "GRABAR VOUCHER"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
