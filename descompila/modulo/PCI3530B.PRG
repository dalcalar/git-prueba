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
           DO reS_3530b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3510b IN PCI3510B
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
                                    STORE f3500mon TO vmNd
                                    STORE f3500tot+f3500int TO vtO1
                                    STORE f3500acu TO vaC1
                                    IF wmOd=2
                                         SELECT deT_ing_bancos
                                         SEEK vaNo+vmEs+vsEr+vnUm+vtD1+ ;
                                          vsR1+vdO1
                                         IF  .NOT. EOF()
                                              DO CASE
                                                   CASE vmNd=cmOn
                                                        STORE vaC1- ;
                                                         f3531pag TO vaC1
                                                   CASE vmNd=1
                                                        STORE vaC1- ;
                                                         ROUND(f3531pag* ;
                                                         xtCa, 2) TO vaC1
                                                   CASE vmNd=2
                                                        STORE vaC1- ;
                                                         ROUND(f3531pag/ ;
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
                                    STORE f3500mon TO vmNd
                                    STORE f3500tot+f3500int TO vtO1
                                    STORE f3500acu TO vaC1
                                    IF wmOd=2
                                         SELECT deT_ing_bancos
                                         SEEK vaNo+vmEs+vsEr+vnUm+vtD1+ ;
                                          vsR1+vdO1
                                         IF  .NOT. EOF()
                                              DO CASE
                                                   CASE vmNd=cmOn
                                                        STORE vaC1- ;
                                                         f3531pag TO vaC1
                                                   CASE vmNd=1
                                                        STORE vaC1- ;
                                                         ROUND(f3531pag* ;
                                                         xtCa, 2) TO vaC1
                                                   CASE vmNd=2
                                                        STORE vaC1- ;
                                                         ROUND(f3531pag/ ;
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
                DO hl1_3530b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3530b
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
                                         STORE f3500mon TO vmNd
                                         STORE f3500tot+f3500int TO vtO1
                                         STORE f3500acu TO vaC1
                                         IF wmOd=2
                                              SELECT deT_ing_bancos
                                              SEEK vaNo+vmEs+vsEr+vnUm+ ;
                                               vtD1+vsR1+vdO1
                                              IF  .NOT. EOF()
                                                   DO CASE
                                                        CASE vmNd=cmOn
                                                             STORE vaC1- ;
                                                              f3531pag TO vaC1
                                                        CASE vmNd=1
                                                             STORE vaC1- ;
                                                              ROUND(f3531pag* ;
                                                              xtCa, 2) TO vaC1
                                                        CASE vmNd=2
                                                             STORE vaC1- ;
                                                              ROUND(f3531pag/ ;
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
                STORE ttOt-ftM1pgo TO ttOt
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
                DO ve1_3530b
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
PROCEDURE Ve1_3530b
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
                          STORE f3500mon TO vmNd
                          STORE f3500tot+f3500int TO vtO1
                          STORE f3500acu TO vaC1
                          IF wmOd=2
                               SELECT deT_ing_bancos
                               SEEK vaNo+vmEs+vsEr+vnUm+vtD1+vsR1+vdO1
                               IF  .NOT. EOF()
                                    DO CASE
                                         CASE vmNd=cmOn
                                              STORE vaC1-f3531pag TO vaC1
                                         CASE vmNd=1
                                              STORE vaC1-ROUND(f3531pag* ;
                                               xtCa, 2) TO vaC1
                                         CASE vmNd=2
                                              STORE vaC1-ROUND(f3531pag/ ;
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
PROCEDURE Res_3530b
 SET READBORDER ON
 IF wmOd=1
      DO p00_3530a IN PCI3530A WITH "1"
 ELSE
      DO p00_3530a IN PCM3530A WITH "1"
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
PROCEDURE Hl1_3530b
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
 @ pfIl+03, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "F4" STYLE "BT"
 @ pfIl+01, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+03, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+04, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 02 SAY "CTRL <-" STYLE "BT"
 @ pfIl+06, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+07, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+08, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+09, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+10, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+11, 02 SAY "TAB" STYLE "BT"
 @ pfIl+00, 22 SAY "Cambiar a Opción Recibos/Viceversa"
 @ pfIl+01, 22 SAY "Ir al siguiente campo, llegando al último campo pasa a"
 @ pfIl+02, 22 SAY "la siguiente línea"
 @ pfIl+03, 22 SAY "Ir a la línea siguiente"
 @ pfIl+04, 22 SAY "Ir a la línea anterior"
 @ pfIl+05, 22 SAY "Ir al campo anterior"
 @ pfIl+06, 22 SAY "Primera línea del Detalle"
 @ pfIl+07, 22 SAY "Última línea del Detalle"
 @ pfIl+08, 22 SAY "Página siguiente"
 @ pfIl+09, 22 SAY "Página anterior"
 @ pfIl+10, 22 SAY "Borrar línea"
 @ pfIl+11, 22 SAY "GRABAR VOUCHER"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
