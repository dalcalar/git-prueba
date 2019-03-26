 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
           DO liM_2910b
      CASE viOm=01 .OR. vrEc>frEc
           DO liM_2910b
      CASE viOm=02
           GOTO vrEc
           DO muE_2910b
 ENDCASE
 DO diS_2910b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2910b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2910b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=01
                          DO blA_2910b
                     ELSE
                          DO diS_2910b WITH "N"
                     ENDIF
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4) .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viOm=2
                STORE 99 TO mkEy
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4) .AND. viTe=1
                = INKEY(0.01)
                DO CASE
                     CASE mkEy=k_F2
                          STORE 2 TO vsWw
                          STORE 1 TO vsWr
                     CASE mkEy=k_F3
                          STORE 2 TO vsWw, vsWr
                     CASE mkEy=k_F4
                          STORE 1 TO vsWw, vsWr
                ENDCASE
                SELECT deT_lista
                GOTO TOP
                DO veR_lock
                SEEK vpRv
                DO veR_lock
                IF EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SET FILTER TO
                     DO poNmsj
                     SELECT teMporal
                     LOOP
                ENDIF
                STORE 99 TO mkEy
                DO orD_0000a WITH "2106", "A", "F2106PRV", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vpRv+"ZZ"
                SET NEAR OFF
                DO veR_lock
                IF EOF() .OR. f2106prv<>vpRv
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                     DO veR_lock
                ENDIF
                STORE f2106fem TO cfEm
                SELECT teMporal_2
                ZAP
                REINDEX
                SELECT caB_lista
                GOTO TOP
                DO veR_lock
                SEEK vpRv+SUBSTR(DTOC(cfEm), 7, 4)+SUBSTR(DTOC(cfEm), 4,  ;
                     2)+SUBSTR(DTOC(cfEm), 1, 2)
                DO veR_lock
                IF  .NOT. EOF()
                     SELECT deT_lista
                     GOTO TOP
                     DO veR_lock
                     SEEK vpRv+SUBSTR(DTOC(cfEm), 7, 4)+SUBSTR(DTOC(cfEm),  ;
                          4, 2)+SUBSTR(DTOC(cfEm), 1, 2)
                     DO veR_lock
                     DO WHILE  .NOT. EOF() .AND. f2106prv=vpRv .AND.  ;
                        f2106fem=cfEm
                          IF vsWr=2 .AND. (AT(UPPER(ALLTRIM(vcOd)),  ;
                             UPPER(f2106des))=0 .AND.  ;
                             AT(UPPER(ALLTRIM(vcOd)), UPPER(f2106cod))=0  ;
                             .AND. AT(UPPER(ALLTRIM(vcOd)),  ;
                             UPPER(f2106dcr))=0 .AND.  ;
                             AT(UPPER(ALLTRIM(vcOd)), UPPER(f2106cdg))=0)
                               SKIP
                               DO veR_lock
                               LOOP
                          ENDIF
                          STORE f2106cod TO ccOd
                          STORE f2106des TO cdEs
                          STORE f2106cdg TO ccDg
                          STORE f2106dcr TO cdCr
                          STORE f2106nuc TO cnUc
                          STORE f2106mon TO cmOn
                          STORE f2106sig TO csG1
                          DO CASE
                               CASE vtPo=1
                                    STORE f2106fo1 TO cpRe
                               CASE vtPo=2
                                    STORE f2106cf1 TO cpRe
                               CASE vtPo=3 .AND. miMp=1
                                    STORE f2106ci1 TO cpRe
                          ENDCASE
                          IF cmOn<>vmOn
                               SELECT moNedas
                               SEEK cmOn
                               DO veR_lock
                               IF  .NOT. EOF()
                                    DO CASE
                                         CASE vtPc=f9226tpo
                                         CASE vtPc=1 .AND. f9226tpo=2
                                              STORE ROUND(cpRe*vtCa, 6) TO cpRe
                                         CASE vtPc=1 .AND. f9226tpo>2
                                              STORE ROUND(cpRe*f2226tca,  ;
                                               6) TO cpRe
                                              STORE ROUND(cpRe*vtCa, 6) TO cpRe
                                         CASE vtPc=2 .AND. f9226tpo=1
                                              STORE ROUND(cpRe/vtCa, 6) TO cpRe
                                         CASE vtPc=2 .AND. f9226tpo>2
                                              STORE ROUND(cpRe*f2226tca,  ;
                                               6) TO cpRe
                                         CASE vtPc>2 .AND. f9226tpo=1
                                              STORE ROUND(cpRe/f2226tca,  ;
                                               6) TO cpRe
                                              STORE ROUND(cpRe/vtCa, 6) TO cpRe
                                         CASE vtPc>2 .AND. f9226tpo=2
                                              STORE ROUND(cpRe/vtCa, 6) TO cpRe
                                         CASE vtPc>2 .AND. f9226tpo>3
                                              STORE ROUND(cpRe/f2226tca,  ;
                                               6) TO cpRe
                                              STORE ROUND(cpRe/vtCa, 6) TO cpRe
                                    ENDCASE
                               ENDIF
                          ENDIF
                          SELECT teMporal_2
                          APPEND BLANK
                          REPLACE ftM2cod WITH ccOd
                          REPLACE ftM2des WITH cdEs
                          REPLACE ftM2cdg WITH ccDg
                          REPLACE ftM2dcr WITH cdCr
                          REPLACE ftM2nuc WITH cnUc
                          REPLACE ftM2sig WITH csG1
                          REPLACE ftM2pre WITH cpRe
                          SELECT deT_lista
                          SKIP
                          DO veR_lock
                     ENDDO
                ENDIF
                SELECT teMporal_2
                GOTO TOP
                IF BOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SET FILTER TO
                     DO poNmsj
                     SELECT teMporal
                     LOOP
                ENDIF
                SAVE SCREEN TO vpAn_11
                DO paC2106y
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT deT_lista
                DO orD_0000a WITH "2106", "A", "F2106COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     GOTO TOP
                     DO veR_lock
                     SEEK vpRv+ALLTRIM(vcDd)+"*"+SUBSTR(DTOC(cfEm), 7, 4)+ ;
                          SUBSTR(DTOC(cfEm), 4, 2)+SUBSTR(DTOC(cfEm), 1, 2)
                     DO veR_lock
                     IF EOF()
                          STORE "Hay algun problema con el codigo escogido..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                          SELECT teMporal
                          LOOP
                     ENDIF
                     STORE f2106cod TO vcOd
                     STORE f2106cdg TO vcDg
                     STORE f2106des TO vdEs
                     STORE f2106dcr TO vdCr
                     STORE f2106cuc TO vcUc
                     STORE f2106nuc TO vnUc
                     STORE f2106mon TO vmNd
                     STORE f2106sig TO vsG1
                     STORE f2106tca TO vtC1
                     STORE f2106fo1 TO vfOb
                     STORE f2106cf1 TO vcFr
                     STORE f2106ci1 TO vcIf
                     DO CASE
                          CASE vtPo=1
                               STORE f2106fo1 TO vpRe
                          CASE vtPo=2
                               STORE f2106cf1 TO vpRe
                          CASE vtPo=3 .AND. miMp=1
                               STORE f2106ci1 TO vpRe
                     ENDCASE
                     IF vmNd<>vmOn
                          SELECT moNedas
                          SEEK vmNd
                          DO veR_lock
                          IF  .NOT. EOF()
                               DO CASE
                                    CASE vtPc=f9226tpo
                                    CASE vtPc=1 .AND. f9226tpo=2
                                         STORE ROUND(vpRe*vtCa, 6) TO vpRe
                                    CASE vtPc=1 .AND. f9226tpo>2
                                         STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                                         STORE ROUND(vpRe*vtCa, 6) TO vpRe
                                    CASE vtPc=2 .AND. f9226tpo=1
                                         STORE ROUND(vpRe/vtCa, 6) TO vpRe
                                    CASE vtPc=2 .AND. f9226tpo>2
                                         STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                                    CASE vtPc>2 .AND. f9226tpo=1
                                         STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                                         STORE ROUND(vpRe/vtCa, 6) TO vpRe
                                    CASE vtPc>2 .AND. f9226tpo=2
                                         STORE ROUND(vpRe/vtCa, 6) TO vpRe
                                    CASE vtPc>2 .AND. f9226tpo>3
                                         STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                                         STORE ROUND(vpRe/vtCa, 6) TO vpRe
                               ENDCASE
                          ENDIF
                     ENDIF
                     DO diS_2910b WITH "R"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SELECT deT_lista
                DO orD_0000a WITH "2106", "A", "F2106PRV", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal
                IF mkEy<>99 .AND. mkEy<>k_Enter
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=01
                STORE 00 TO vsTo, vfOb, vcFr, vcIf, vtC1, vpRe, vtOt
                STORE 99 TO mkEy
                STORE 01 TO viTe
                STORE SPACE(mtMa) TO vcOd
                STORE SPACE(20) TO vcDg
                STORE SPACE(02) TO vcUc, vmNd
                STORE SPACE(30) TO vnUc, vsG1
                STORE SPACE(70) TO vdEs, vdCr
                DO diS_2910b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2910b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2910b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_2910b
                ELSE
                     DO diS_2910b WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_Alt_del .AND. viOm=01
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viOm=01
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frEc=vrEc) .OR. (mkEy=k_Pgdn .AND.  ;
                frEc=urEc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND.  ;
                vrEc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irEc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
                          STORE "Código de Producto no puede estar vacío..."  ;
                                TO mmSj
                     CASE viTe=1
                          SELECT deT_lista
                          DO orD_0000a WITH "2106", "A", "F2106COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SEEK vpRv+ALLTRIM(vcOd)+"*"
                          DO veR_lock
                          IF EOF()
                               STORE "Producto no registrado en el Sistema..."  ;
                                     TO mmSj
                          ELSE
                               SET NEAR ON
                               SEEK vpRv+ALLTRIM(vcOd)+"*ZZ"
                               SET NEAR OFF
                               DO veR_lock
                               IF EOF() .OR. f2106prv+ALLTRIM(f2106cod)+ ;
                                  "*"<>vpRv+ALLTRIM(vcOd)+"*"
                                    IF EOF()
                                         GOTO BOTTOM
                                    ELSE
                                         SKIP -1
                                    ENDIF
                                    DO veR_lock
                               ENDIF
                               STORE f2106fem TO cfEm
                               SELECT caB_lista
                               GOTO TOP
                               DO veR_lock
                               SEEK vpRv+SUBSTR(DTOC(cfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(cfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(cfEm), 1, 2)
                               DO veR_lock
                               IF EOF()
                                    STORE  ;
                                     "Problemas con las Listas de este Proveedor, se recomienda reorganizar..."  ;
                                     TO mmSj
                               ELSE
                                    SELECT deT_lista
                                    STORE f2106cod TO vcOd
                                    STORE f2106cdg TO vcDg
                                    STORE f2106des TO vdEs
                                    STORE f2106dcr TO vdCr
                                    STORE f2106cuc TO vcUc
                                    STORE f2106nuc TO vnUc
                                    STORE f2106mon TO vmNd
                                    STORE f2106sig TO vsG1
                                    STORE f2106tca TO vtC1
                                    STORE f2106fo1 TO vfOb
                                    STORE f2106cf1 TO vcFr
                                    STORE f2106ci1 TO vcIf
                                    DO CASE
                                         CASE vtPo=1
                                              STORE f2106fo1 TO vpRe
                                         CASE vtPo=2
                                              STORE f2106cf1 TO vpRe
                                         CASE vtPo=3 .AND. miMp=1
                                              STORE f2106ci1 TO vpRe
                                    ENDCASE
                                    IF vmNd<>vmOn
                                         SELECT moNedas
                                         SEEK vmNd
                                         DO veR_lock
                                         IF  .NOT. EOF()
                                              DO CASE
                                                   CASE vtPc=f9226tpo
                                                   CASE vtPc=1 .AND. f9226tpo=2
                                                        STORE ROUND(vpRe* ;
                                                         vtCa, 6) TO vpRe
                                                   CASE vtPc=1 .AND. f9226tpo>2
                                                        STORE ROUND(vpRe* ;
                                                         f2226tca, 6) TO vpRe
                                                        STORE ROUND(vpRe* ;
                                                         vtCa, 6) TO vpRe
                                                   CASE vtPc=2 .AND. f9226tpo=1
                                                        STORE ROUND(vpRe/ ;
                                                         vtCa, 6) TO vpRe
                                                   CASE vtPc=2 .AND. f9226tpo>2
                                                        STORE ROUND(vpRe* ;
                                                         f2226tca, 6) TO vpRe
                                                   CASE vtPc>2 .AND. f9226tpo=1
                                                        STORE ROUND(vpRe/ ;
                                                         f2226tca, 6) TO vpRe
                                                        STORE ROUND(vpRe/ ;
                                                         vtCa, 6) TO vpRe
                                                   CASE vtPc>2 .AND. f9226tpo=2
                                                        STORE ROUND(vpRe/ ;
                                                         vtCa, 6) TO vpRe
                                                   CASE vtPc>2 .AND. f9226tpo>3
                                                        STORE ROUND(vpRe/ ;
                                                         f2226tca, 6) TO vpRe
                                                        STORE ROUND(vpRe/ ;
                                                         vtCa, 6) TO vpRe
                                              ENDCASE
                                         ENDIF
                                    ENDIF
                               ENDIF
                          ENDIF
                          SELECT deT_lista
                          DO orD_0000a WITH "2106", "A", "F2106PRV", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT teMporal
                          DO diS_2910b WITH "R"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     CASE viTe=2 .AND. vcAn<0
                          STORE "Cantidad no puede ser menor a cero..." TO mmSj
                     CASE viTe=2 .AND. vcAn=0
                          STORE "Cantidad no puede ser cero..." TO mmSj
                     OTHERWISE
                          DO diS_2910b WITH "R"
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<2
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
                = INKEY(0.01)
           CASE mkEy=k_Alt_del .AND. viOm=2
                = INKEY(0.01)
                SELECT teMporal
                DO coLsc3
                STORE ttOt-ftM1tot TO ttOt
                @fFIL+3.2,vCO0+148.6 Say tTOT Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.9999" Color Scheme 3
                DO coL_fondo
                DO suBe WITH vfIl, vcO0+5.3, ffIl, ucLn-1, 1
                DO liN_2910a IN PAI2910A WITH ifIl, ffIl+1.1
                DO coL_fondo
                IF frEc=urEc
                     @ ufIl, vcO0+0.1 CLEAR TO ufIl+1, vcO0+4.3
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
                     DO muE_2910b
                     DO diS_2910b WITH "N"
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
                     DO muE_2910b
                ELSE
                     DO liM_2910b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2910b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM1cod<>vcOd .OR. ftM1can<>vcAn)
                DO ve1_2910b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vcOd))<>0 .AND.  ;
                LEN(ALLTRIM(vdEs))<>0 .AND. vcAn>0
                DO grA_2910b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_2910b
                ELSE
                     DO diS_2910b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF()
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                     DO diS_2910b WITH "R"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     EXIT
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_2910b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, icLn, ffIl, ucLn-1, 1
                     DO liN_2910a IN PAI2910A WITH ifIl, ffIl+1.1
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
                     DO muE_2910b
                ELSE
                     DO liM_2910b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_2910b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_2910b
                ELSE
                     DO diS_2910b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, icLn, ffIl, ucLn-1, 1
                     DO liN_2910a IN PAI2910A WITH ifIl, ffIl+1.1
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
                DO muE_2910b
                DO diS_2910b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_2910b
                ELSE
                     DO diS_2910b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_2910b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2910b
                DO diS_2910b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_2910b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_2910b
                ELSE
                     DO diS_2910b WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_2910b
                DO diS_2910b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_2910b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_2910b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2910b
                DO diS_2910b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_2910b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urEc
                SKIP
                DO paN_2910b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_2910b
                DO diS_2910b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO coL_fondo
      @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,118
      DO CASE
           CASE viTe=1
                @mMF2,mMC2+24 Say "SE DEBE DIGITAR O ESCOGER EL CÓDIGO INTERNO DE PRODUCTO..." Font "&mLetRom",9 Style "BQ"
           CASE viTe=2
                @mMF2,mMC2+24 Say "LA CANTIDAD ES UN CAMPO DE 6 ENTEROS Y 2 DECIMALES..."      Font "&mLetRom",9 Style "BQ"
      ENDCASE
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @vFIL,vCO0+005.5 Get vCOD Font "&mLetAri",9 Style "NQ" Size 1,20.6 Color ,&mColBlN
           CASE viTe=2
                @vFIL,vCO0+156.8 Get vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999999.99"       Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_2910b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_2910b
      DO diS_2910b WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, icLn CLEAR TO ffIl+1.1, ucLn
      DO liN_2910a IN PAI2910A WITH vfIl, ffIl+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2910b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 STORE vcAn*vpRe TO vtOt
 DO prEsiona WITH "1", "DESCAN", vfIl, ucLn-3.9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vFIL,vCO0+000.1 Say vREC Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
 @vFIL,vCO0+005.4 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.1
 @vFIL,vCO0+005.5 Say vCOD Font "&mLetAri",9 Style "NQ" Size 1,20.6
 @vFIL,vCO0+026.2 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.4
 @vFIL,vCO0+027.5 Say vCDG Font "&mLetAri",9 Style "NQ" Size 1,20.4 Pict "!!!!!!!!!!!!!!!!!!!!"
 @vFIL,vCO0+049.0 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,81.4 Pict "@S80"
 @vFIL,vCO0+131.3 Say vNUC Font "&mLetAri",9 Style "NQ" Size 1,06.4 Pict "@S09"
 @vFIL,vCO0+156.6 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.2
 @vFIL,vCO0+156.8 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,14.0 Pict "999,999.99"
 @vFIL,vCO0+170.8 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.4
 @vFIL,vCO0+172.3 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 DO CASE
      CASE vtPo=1 .AND. ptIp="N"
           DO coL_fondo
      CASE vtPo=1 .AND. ptIp="R"
           DO coLbln
      CASE ptIp="N"
           DO coL_fonaz
      CASE ptIp="R"
           DO coLblz
 ENDCASE
 @vFIL,vCO0+138.8 Say vPRE Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.999999"
 DO coLsc3
 @fFIL+1.9,vCO0+31.5 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,96 Pict "@S78"
 @fFIL+3.2,vCO0+31.5 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,96 Pict "@S78"
ENDPROC
*
PROCEDURE Bla_2910b
 DO coL_fondo
 @ vfIl, icLn CLEAR TO vfIl+1.1, ucLn
 DO liN_2910a IN PAI2910A WITH vfIl, vfIl+1.1
ENDPROC
*
PROCEDURE Lim_2910b
 STORE SPACE(mtMa) TO vcOd
 STORE SPACE(20) TO vcDg
 STORE SPACE(02) TO vcUc, vmNd
 STORE SPACE(30) TO vnUc, vsG1
 STORE SPACE(70) TO vdEs, vdCr
 STORE 01 TO viOm, viTe
 STORE 00 TO vfOb, vcFr, vcIf, vsTo, vcAn, vpRe, vtOt, vtC1
ENDPROC
*
PROCEDURE Mue_2910b
 STORE ftM1cod TO vcOd
 STORE ftM1cdg TO vcDg
 STORE ftM1des TO vdEs
 STORE ftM1dcr TO vdCr
 STORE ftM1cuc TO vcUc
 STORE ftM1nuc TO vnUc
 STORE ftM1mon TO vmNd
 STORE ftM1sig TO vsG1
 STORE ftM1tca TO vtC1
 STORE ftM1fob TO vfOb
 STORE ftM1cfr TO vcFr
 STORE ftM1cif TO vcIf
 STORE ftM1can TO vcAn
 STORE ftM1pre TO vpRe
 STORE ftM1tot TO vtOt
 STORE 02 TO viOm, viTe
ENDPROC
*
PROCEDURE Gra_2910b
 = INKEY(0.01)
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
      STORE ttOt-ftM1tot TO ttOt
 ENDIF
 STORE vcAn*vpRe TO vtOt
 STORE ttOt+vtOt TO ttOt
 SELECT teMporal
 REPLACE ftM1cod WITH vcOd
 REPLACE ftM1cdg WITH vcDg
 REPLACE ftM1des WITH vdEs
 REPLACE ftM1dcr WITH vdCr
 REPLACE ftM1cuc WITH vcUc
 REPLACE ftM1nuc WITH vnUc
 REPLACE ftM1mon WITH vmNd
 REPLACE ftM1sig WITH vsG1
 REPLACE ftM1tca WITH vtC1
 REPLACE ftM1fob WITH vfOb
 REPLACE ftM1cfr WITH vcFr
 REPLACE ftM1cif WITH vcIf
 REPLACE ftM1can WITH vcAn
 REPLACE ftM1pre WITH vpRe
 REPLACE ftM1tot WITH vtOt
 STORE 02 TO viOm
 DO coLsc3
 @fFIL+3.2,vCO0+148.6 Say tTOT Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.9999" Color Scheme 3
ENDPROC
*
PROCEDURE Ve1_2910b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcOd))=0
           STORE "Código de Producto no puede estar vacío..." TO mmSj
      CASE LEN(ALLTRIM(vcOd))<>0
           SELECT deT_lista
           DO orD_0000a WITH "2106", "A", "F2106COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK vpRv+ALLTRIM(vcOd)+"*"
           DO veR_lock
           IF EOF()
                STORE "Producto no registrado en el Sistema..." TO mmSj
           ELSE
                SET NEAR ON
                SEEK vpRv+ALLTRIM(vcOd)+"*ZZ"
                SET NEAR OFF
                DO veR_lock
                IF EOF() .OR. f2106prv+ALLTRIM(f2106cod)+"*"<>vpRv+ ;
                   ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                     DO veR_lock
                ENDIF
                STORE f2106fem TO cfEm
                SELECT caB_lista
                GOTO TOP
                DO veR_lock
                SEEK vpRv+SUBSTR(DTOC(cfEm), 7, 4)+SUBSTR(DTOC(cfEm), 4,  ;
                     2)+SUBSTR(DTOC(cfEm), 1, 2)
                DO veR_lock
                IF EOF()
                     STORE "Problemas con las Listas de este Proveedor, se recomienda reorganizar..."  ;
                           TO mmSj
                ELSE
                     SELECT deT_lista
                     STORE f2106cod TO vcOd
                     STORE f2106cdg TO vcDg
                     STORE f2106des TO vdEs
                     STORE f2106dcr TO vdCr
                     STORE f2106cuc TO vcUc
                     STORE f2106nuc TO vnUc
                     STORE f2106mon TO vmNd
                     STORE f2106sig TO vsG1
                     STORE f2106tca TO vtC1
                     STORE f2106fo1 TO vfOb
                     STORE f2106cf1 TO vcFr
                     STORE f2106ci1 TO vcIf
                     DO CASE
                          CASE vtPo=1
                               STORE f2106fo1 TO vpRe
                          CASE vtPo=2
                               STORE f2106cf1 TO vpRe
                          CASE vtPo=3 .AND. miMp=1
                               STORE f2106ci1 TO vpRe
                     ENDCASE
                     IF vmNd<>vmOn
                          SELECT moNedas
                          SEEK vmNd
                          DO veR_lock
                          IF  .NOT. EOF()
                               DO CASE
                                    CASE vtPc=f9226tpo
                                    CASE vtPc=1 .AND. f9226tpo=2
                                         STORE ROUND(vpRe*vtCa, 6) TO vpRe
                                    CASE vtPc=1 .AND. f9226tpo>2
                                         STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                                         STORE ROUND(vpRe*vtCa, 6) TO vpRe
                                    CASE vtPc=2 .AND. f9226tpo=1
                                         STORE ROUND(vpRe/vtCa, 6) TO vpRe
                                    CASE vtPc=2 .AND. f9226tpo>2
                                         STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                                    CASE vtPc>2 .AND. f9226tpo=1
                                         STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                                         STORE ROUND(vpRe/vtCa, 6) TO vpRe
                                    CASE vtPc>2 .AND. f9226tpo=2
                                         STORE ROUND(vpRe/vtCa, 6) TO vpRe
                                    CASE vtPc>2 .AND. f9226tpo>3
                                         STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                                         STORE ROUND(vpRe/vtCa, 6) TO vpRe
                               ENDCASE
                          ENDIF
                     ENDIF
                ENDIF
           ENDIF
           SELECT deT_lista
           DO orD_0000a WITH "2106", "A", "F2106PRV", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT teMporal
      CASE vcAn<0
           STORE "Cantidad no puede ser menor a cero..." TO mmSj
      CASE vcAn=0
           STORE "Cantidad no puede ser cero..." TO mmSj
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2910b
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
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=ucLn-5 .AND. mcCc<=ucLn
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=mfI0+7.464 .AND. mfIl<=mfI0+8.535 .AND. mcCc>=mcO0+111.6  ;
           .AND. mcCc<=mcO0+121.6 .AND. vtPo<>1
           STORE 1 TO vtPo
           IF miMp=1
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default vTPO
           ELSE
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT s/IGV;c/IGV" Default vTPO
           ENDIF
           READ TIMEOUT 0.01
           SELECT teMporal
           GOTO TOP
           DO WHILE  .NOT. EOF()
                STORE ftM1cod TO ccOd
                STORE ftM1fob TO cpRe
                IF vmNd<>vmOn
                     SELECT moNedas
                     SEEK vmNd
                     DO veR_lock
                     IF  .NOT. EOF()
                          DO CASE
                               CASE vtPc=f9226tpo
                               CASE vtPc=1 .AND. f9226tpo=2
                                    STORE ROUND(cpRe*vtCa, 6) TO cpRe
                               CASE vtPc=1 .AND. f9226tpo>2
                                    STORE ROUND(cpRe*f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe*vtCa, 6) TO cpRe
                               CASE vtPc=2 .AND. f9226tpo=1
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc=2 .AND. f9226tpo>2
                                    STORE ROUND(cpRe*f2226tca, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo=1
                                    STORE ROUND(cpRe/f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo=2
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo>3
                                    STORE ROUND(cpRe/f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                          ENDCASE
                     ENDIF
                ENDIF
                SELECT teMporal
                REPLACE ftM1pre WITH cpRe
                REPLACE ftM1tot WITH ftM1pre*ftM1can
                SKIP
           ENDDO
           DO pa1_2910a IN PAI2910A
           IF vrEc<=urEc
                GOTO vrEc
           ENDIF
           STORE vfOb TO vpRe
           IF vmNd<>vmOn
                SELECT moNedas
                SEEK vmNd
                DO veR_lock
                IF  .NOT. EOF()
                     DO CASE
                          CASE vtPc=f9226tpo
                          CASE vtPc=1 .AND. f9226tpo=2
                               STORE ROUND(vpRe*vtCa, 6) TO vpRe
                          CASE vtPc=1 .AND. f9226tpo>2
                               STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe*vtCa, 6) TO vpRe
                          CASE vtPc=2 .AND. f9226tpo=1
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc=2 .AND. f9226tpo>2
                               STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo=1
                               STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo=2
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo>3
                               STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                     ENDCASE
                ENDIF
           ENDIF
           SELECT teMporal
           DO diS_2910b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.535 .AND. mfIl<=mfI0+9.607 .AND. mcCc>=mcO0+111.6  ;
           .AND. mcCc<=mcO0+121.6 .AND. vtPo<>2
           STORE 2 TO vtPo
           IF miMp=1
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default vTPO
           ELSE
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT s/IGV;c/IGV" Default vTPO
           ENDIF
           READ TIMEOUT 0.01
           SELECT teMporal
           GOTO TOP
           DO WHILE  .NOT. EOF()
                STORE ftM1cod TO ccOd
                STORE ftM1cfr TO cpRe
                IF vmNd<>vmOn
                     SELECT moNedas
                     SEEK vmNd
                     DO veR_lock
                     IF  .NOT. EOF()
                          DO CASE
                               CASE vtPc=f9226tpo
                               CASE vtPc=1 .AND. f9226tpo=2
                                    STORE ROUND(cpRe*vtCa, 6) TO cpRe
                               CASE vtPc=1 .AND. f9226tpo>2
                                    STORE ROUND(cpRe*f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe*vtCa, 6) TO cpRe
                               CASE vtPc=2 .AND. f9226tpo=1
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc=2 .AND. f9226tpo>2
                                    STORE ROUND(cpRe*f2226tca, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo=1
                                    STORE ROUND(cpRe/f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo=2
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo>3
                                    STORE ROUND(cpRe/f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                          ENDCASE
                     ENDIF
                ENDIF
                SELECT teMporal
                REPLACE ftM1pre WITH cpRe
                REPLACE ftM1tot WITH ftM1pre*ftM1can
                SKIP
           ENDDO
           DO pa1_2910a IN PAI2910A
           IF vrEc<=urEc
                GOTO vrEc
           ENDIF
           STORE vcFr TO vpRe
           IF vmNd<>vmOn
                SELECT moNedas
                SEEK vmNd
                DO veR_lock
                IF  .NOT. EOF()
                     DO CASE
                          CASE vtPc=f9226tpo
                          CASE vtPc=1 .AND. f9226tpo=2
                               STORE ROUND(vpRe*vtCa, 6) TO vpRe
                          CASE vtPc=1 .AND. f9226tpo>2
                               STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe*vtCa, 6) TO vpRe
                          CASE vtPc=2 .AND. f9226tpo=1
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc=2 .AND. f9226tpo>2
                               STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo=1
                               STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo=2
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo>3
                               STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                     ENDCASE
                ENDIF
           ENDIF
           SELECT teMporal
           DO diS_2910b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.607 .AND. mfIl<=mfI0+10.53 .AND. miMp=1 .AND.  ;
           mcCc>=mcO0+111.6 .AND. mcCc<=mcO0+121.6 .AND. vtPo<>3
           STORE 3 TO vtPo
           IF miMp=1
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default vTPO
           ELSE
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT s/IGV;c/IGV" Default vTPO
           ENDIF
           READ TIMEOUT 0.01
           SELECT teMporal
           GOTO TOP
           DO WHILE  .NOT. EOF()
                STORE ftM1cod TO ccOd
                STORE ftM1cif TO cpRe
                IF vmNd<>vmOn
                     SELECT moNedas
                     SEEK vmNd
                     DO veR_lock
                     IF  .NOT. EOF()
                          DO CASE
                               CASE vtPc=f9226tpo
                               CASE vtPc=1 .AND. f9226tpo=2
                                    STORE ROUND(cpRe*vtCa, 6) TO cpRe
                               CASE vtPc=1 .AND. f9226tpo>2
                                    STORE ROUND(cpRe*f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe*vtCa, 6) TO cpRe
                               CASE vtPc=2 .AND. f9226tpo=1
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc=2 .AND. f9226tpo>2
                                    STORE ROUND(cpRe*f2226tca, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo=1
                                    STORE ROUND(cpRe/f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo=2
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                               CASE vtPc>2 .AND. f9226tpo>3
                                    STORE ROUND(cpRe/f2226tca, 6) TO cpRe
                                    STORE ROUND(cpRe/vtCa, 6) TO cpRe
                          ENDCASE
                     ENDIF
                ENDIF
                SELECT teMporal
                REPLACE ftM1pre WITH cpRe
                REPLACE ftM1tot WITH ftM1pre*ftM1can
                SKIP
           ENDDO
           DO pa1_2910a IN PAI2910A
           IF vrEc<=urEc
                GOTO vrEc
           ENDIF
           STORE vcIf TO vpRe
           IF vmNd<>vmOn
                SELECT moNedas
                SEEK vmNd
                DO veR_lock
                IF  .NOT. EOF()
                     DO CASE
                          CASE vtPc=f9226tpo
                          CASE vtPc=1 .AND. f9226tpo=2
                               STORE ROUND(vpRe*vtCa, 6) TO vpRe
                          CASE vtPc=1 .AND. f9226tpo>2
                               STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe*vtCa, 6) TO vpRe
                          CASE vtPc=2 .AND. f9226tpo=1
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc=2 .AND. f9226tpo>2
                               STORE ROUND(vpRe*f2226tca, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo=1
                               STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo=2
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                          CASE vtPc>2 .AND. f9226tpo>3
                               STORE ROUND(vpRe/f2226tca, 6) TO vpRe
                               STORE ROUND(vpRe/vtCa, 6) TO vpRe
                     ENDCASE
                ENDIF
           ENDIF
           SELECT teMporal
           DO diS_2910b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO0 .AND. mcCc<= ;
           vcO0+156 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=vcO0+156 .AND. mcCc<= ;
           vcO0+189.4 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vcOd))=0
                     STORE "Código de Producto no puede estar vacío..." TO mmSj
                     DO poNmsj
                CASE LEN(ALLTRIM(vdEs))=0
                     STORE "Código de Producto debe estar registrado..."  ;
                           TO mmSj
                     DO poNmsj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           STORE 99 TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+1 .AND. mcCc>=icLn .AND. mcCc<=ucLn
           IF LEN(ALLTRIM(vcOd))<>0 .AND. LEN(ALLTRIM(vdEs))<>0 .AND. vcAn>0
                DO grA_2910b
           ENDIF
           IF viOm=01
                DO blA_2910b
           ELSE
                DO diS_2910b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           GOTO irEc
           SKIP INT(mfIl-ifIl)
           STORE RECNO() TO vrEc
           DO muE_2910b
           DO diS_2910b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=ucLn-5 .AND. mcCc<=ucLn
                     STORE 01 TO viTe
                     STORE k_Alt_del TO mkEy
                OTHERWISE
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Res_2910b
 STORE irEc TO crEc
 STORE vrEc TO xrEc
 SET READBORDER ON
 DO p00_2910a WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_2910a IN PAI2910A WITH "3"
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
           GOTO crEc
           DO paN_2910b
           GOTO crEc
           STORE 00 TO vrEc
           STORE ifIl TO vfIl
           DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
                IF RECNO()=xrEc
                     STORE RECNO() TO vrEc
                     EXIT
                ENDIF
                STORE vfIl+1 TO vfIl
                SKIP
           ENDDO
           DO CASE
                CASE xrEc>urEc .AND. xrEc>frEc .AND. ufIl<ffIl
                     STORE ufIl+1 TO vfIl
                     STORE frEc+1 TO vrEc
                     DO liM_2910b
                CASE vrEc=0
                     STORE irEc TO vrEc
                     STORE ifIl TO vfIl
                     GOTO vrEc
                     DO muE_2910b
                OTHERWISE
                     GOTO vrEc
                     DO muE_2910b
           ENDCASE
 ENDCASE
 DO diS_2910b WITH "R"
ENDPROC
*
PROCEDURE Hl1_2910b
 STORE 0.2 TO pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En el Detalle, por cada Ítem que se ingrese se debe escoger un Código de"
 @ pfIl+1, 01 SAY  ;
   "Producto del Proveedor. El Detalle se graba en un archivo temporal, el  "
 @ pfIl+2, 01 SAY "cual se graba permanentemente al pulsar TAB."
 @ pfIl+4, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 20 SAY ":" STYLE "BT"
 @ pfIl+7, 20 SAY ":" STYLE "BT"
 @ pfIl+8, 20 SAY ":" STYLE "BT"
 @ pfIl+6, 02 SAY "ESC" STYLE "BT"
 @ pfIl+7, 02 SAY "F10" STYLE "BT"
 @ pfIl+8, 02 SAY "F1" STYLE "BT"
 @ pfIl+6, 22 SAY "Regresar a la Cabecera"
 @ pfIl+7, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 22 SAY "Ayuda del Programa"
 STORE pfIl+9 TO pfIl
 IF viTe=01
      @ pfIl+0, 20 SAY ":" STYLE "BT"
      @ pfIl+1, 20 SAY ":" STYLE "BT"
      @ pfIl+3, 20 SAY ":" STYLE "BT"
      @ pfIl+0, 02 SAY "F2" STYLE "BT"
      @ pfIl+1, 02 SAY "F3" STYLE "BT"
      @ pfIl+3, 02 SAY "F4" STYLE "BT"
      @ pfIl+0, 22 SAY "Consulta de Productos registrados"
      @ pfIl+1, 22 SAY  ;
        "Buscar palabra o frase en Código y/o Descripción interna"
      @ pfIl+2, 22 SAY "o código y/o Descripción del Proveedor"
      @ pfIl+3, 22 SAY "Consulta de Productos x código"
      STORE pfIl+4 TO pfIl
 ENDIF
 @ pfIl+0, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+3, 20 SAY ":" STYLE "BT"
 @ pfIl+4, 20 SAY ":" STYLE "BT"
 @ pfIl+5, 20 SAY ":" STYLE "BT"
 @ pfIl+6, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+2, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+3, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+4, 02 SAY "<- CTRL" STYLE "BT"
 @ pfIl+5, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+6, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+0, 22 SAY "Ir al siguiente campo, llegando al último campo pasa a"
 @ pfIl+1, 22 SAY "la siguiente línea"
 @ pfIl+2, 22 SAY "Ir a la línea siguiente"
 @ pfIl+3, 22 SAY "Ir a la línea anterior"
 @ pfIl+4, 22 SAY "Ir al campo anterior"
 @ pfIl+5, 22 SAY "Primera línea del Detalle"
 @ pfIl+6, 22 SAY "Última línea del Detalle"
 STORE pfIl+7 TO pfIl
 IF viTe=01
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 22 SAY "Des-Seleccionar Producto"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+3, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+3, 02 SAY "TAB" STYLE "BT"
 @ pfIl+0, 22 SAY "Página siguiente"
 @ pfIl+1, 22 SAY "Página anterior"
 @ pfIl+2, 22 SAY "Borrar línea"
 @ pfIl+3, 22 SAY "GRABAR"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
