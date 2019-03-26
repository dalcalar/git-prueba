 = INKEY(0.01)
 DO p00_2111x
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tmP_cortado
 GOTO TOP
 STORE ifFr TO vfFr, ufFr
 DO muE_2111x WITH "F", "v"
 DO muE_2111x WITH "F", "u"
 DO paN_2111x
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ifFr TO vfFr
 DO muE_2111x WITH "i", "v"
 DO seE_2111x WITH "v"
 DO diS_2111x WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 999 TO mkEy
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2111x
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2111x
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2111x
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2111x
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE UPPER(ALLTRIM(coRtado))+"*"= ;
                          UPPER(ALLTRIM(icDg))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcDg))+"*"=UPPER(ALLTRIM(icDg))+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcDg))+"*"= ;
                                    UPPER(ALLTRIM(icDg))+"*"
                                    DO paN_2111x
                               OTHERWISE
                                    DO seE_2111x WITH "v"
                                    DO diS_2111x WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2111x WITH "i", "v"
                          DO seE_2111x WITH "v"
                          DO diS_2111x WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE UPPER(ALLTRIM(coRtado))+"*"= ;
                          UPPER(ALLTRIM(ucDg))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcDg))+"*"=UPPER(ALLTRIM(ucDg))+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcDg))+"*"= ;
                                    UPPER(ALLTRIM(ucDg))+"*"
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2111x
                               OTHERWISE
                                    DO seE_2111x WITH "v"
                                    DO diS_2111x WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ufFr TO vfFr
                          DO muE_2111x WITH "u", "v"
                          DO seE_2111x WITH "v"
                          DO diS_2111x WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2111x WITH "v"
                          DO diS_2111x WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF UPPER(ALLTRIM(vcDg))+"*"=UPPER(ALLTRIM(ucDg))+"*"
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2111x WITH ffFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_2111x WITH "F", "v"
                               DO muE_2111x WITH "F", "u"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2111x WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2111x WITH "F", "v"
                          ENDIF
                          DO seE_2111x WITH "v"
                          DO diS_2111x WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2111x WITH "v"
                          DO diS_2111x WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF UPPER(ALLTRIM(vcDg))+"*"=UPPER(ALLTRIM(icDg))+"*"
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2111x WITH ifFr, ifFr+1
                               STORE ifFr TO vfFr
                               DO muE_2111x WITH "F", "i"
                               DO muE_2111x WITH "F", "v"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2111x WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2111x WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          DO seE_2111x WITH "v"
                          DO diS_2111x WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2111x WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2111x
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2111x WITH "i", "v"
                          DO seE_2111x WITH "v"
                          DO diS_2111x WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2111x WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2111x
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2111x WITH "i", "v"
                          DO seE_2111x WITH "v"
                          DO diS_2111x WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2111x WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2111x
 STORE ifFr TO vfFr, ufFr
 DO muE_2111x WITH "F", "i"
 DO muE_2111x WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO diS_2111x WITH "N"
      IF mkEy=k_Esc
           EXIT
      ENDIF
      DO muE_2111x WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2111x WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2111x
 PARAMETER ptIp
 PRIVATE peSt
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+000.5 Say ITEM    Font "&mLetAri",9 Style "NQ" Size 1,04.5 Pict "999"
 @vFFR,pICL+006.0 Say CORTADO Font "&mLetAri",9 Style "NQ" Size 1,18.0 Pict "@S21"
 @vFFR,pICL+025.0 Say DESCRIP Font "&mLetAri",9 Style "NQ" Size 1,39.0 Pict "@S41"
 @vFFR,pICL+065.0 Say CANTID  Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @vFFR,pICL+082.7 Say BASE1   Font "&mLetAri",9 Style "NQ" Size 1,18.0 Pict "@S21"
 @vFFR,pICL+101.7 Say LARGO1  Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"
 @vFFR,pICL+112.4 Say ANCHO1  Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"
 @vFFR,pICL+123.1 Say STOCK1  Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @vFFR,pICL+140.8 Say BASE2   Font "&mLetAri",9 Style "NQ" Size 1,18.0 Pict "@S21"
 @vFFR,pICL+159.8 Say LARGO2  Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"
 @vFFR,pICL+170.5 Say ANCHO2  Font "&mLetAri",9 Style "NQ" Size 1,09.7 Pict "999.999"
 @vFFR,pICL+181.2 Say STOCK2  Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
ENDPROC
*
PROCEDURE Lin_2111x
 PARAMETER piNi, pfIn
 DO coLbln
 @ piNi, piCl+005.4 TO pfIn, piCl+005.4
 @ piNi, piCl+024.4 TO pfIn, piCl+024.4
 @ piNi, piCl+064.4 TO pfIn, piCl+064.4
 @ piNi, piCl+082.1 TO pfIn, piCl+082.1
 @ piNi, piCl+101.1 TO pfIn, piCl+101.1
 @ piNi, piCl+111.8 TO pfIn, piCl+111.8
 @ piNi, piCl+122.5 TO pfIn, piCl+122.5
 @ piNi, piCl+140.2 TO pfIn, piCl+140.2
 @ piNi, piCl+159.2 TO pfIn, piCl+159.2
 @ piNi, piCl+169.9 TO pfIn, piCl+169.9
 @ piNi, piCl+180.6 TO pfIn, piCl+180.6
ENDPROC
*
PROCEDURE P00_2111x
 IF mrEs="3"
      STORE mcO0-5 TO piCl
 ELSE
      STORE vcL0-10 TO piCl
 ENDIF
 STORE piCl+197.4 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifFr-2.0, piCl TO ffFr+5.7, puCl+1.1 PATTERN 1
 @ ifFr-0.3, piCl TO ifFr-0.3, puCl+1.1
 @ ffFr+1.2, piCl TO ffFr+1.2, puCl+1.1
 @ ffFr+4.0, piCl TO ffFr+4.0, puCl+1.1
 DO coLsc3
 @ ifFr-0.3, piCl TO ffFr+1.3, puCl+1.1 PATTERN 1
 DO coLsc7
 @ ffFr+4.0, piCl TO ffFr+5.7, puCl+1.1 PATTERN 1
 @fFFR+4.2,pICL+65.4 Say "CONSULTA DE PRODUCTOS" Font "&mLetRom",12 Style "BQ"
 DO coLsc4
 @iFFR-1.5,pICL+000.5 Say "Item"        Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+006.0 Say "Código"      Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+025.0 Say "Descripción" Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+065.0 Say "Cantidad"    Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+082.7 Say "Base-1"      Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+101.7 Say "Largo"       Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+112.4 Say "Ancho"       Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+123.1 Say "Stock"       Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+140.8 Say "Base-2"      Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+159.8 Say "Largo"       Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+170.5 Say "Ancho"       Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+181.2 Say "Stock"       Font "&mLetAri",9 Style "BQ"
 DO liN_2111x WITH ifFr-1.8, ffFr+1.2
ENDPROC
*
PROCEDURE Res_2111x
 STORE vfFr TO cfFr
 DO muE_2111x WITH "v", "c"
 DO p00_2800a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2111x
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prOductos
 DO seE_2111x WITH "i"
 DO paN_2111x
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE cfFr TO vfFr
 DO muE_2111x WITH "c", "v"
 DO seE_2111x WITH "v"
 DO diS_2111x WITH "R"
ENDPROC
*
PROCEDURE See_2111x
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK UPPER(ALLTRIM(vdCc))+UPPER(ALLTRIM(vcDg))+"*"
      CASE psEe="i"
           SEEK UPPER(ALLTRIM(idCc))+UPPER(ALLTRIM(icDg))+"*"
      CASE psEe="u"
           SEEK UPPER(ALLTRIM(udCc))+UPPER(ALLTRIM(ucDg))+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2111x
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccDg TO vcDg
           STORE cdCc TO vdCc
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcDg TO ccDg
           STORE vdCc TO cdCc
      CASE pmU1="i" .AND. pmU2="v"
           STORE icDg TO vcDg
           STORE idCc TO vdCc
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucDg TO vcDg
           STORE udCc TO vdCc
      CASE pmU1="F" .AND. pmU2="v"
           STORE coRtado TO vcDg
           STORE deScrip TO vdCc
      CASE pmU1="F" .AND. pmU2="u"
           STORE coRtado TO ucDg
           STORE deScrip TO udCc
      CASE pmU1="F" .AND. pmU2="i"
           STORE coRtado TO icDg
           STORE deScrip TO idCc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2111x
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. ppRg$"6789EF"  ;
           .AND. mcCc>=piCl .AND. mcCc<=puCl+0.4
           STORE k_F9 TO mkEy
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl+0.4
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl+0.4
           DO diS_2111x WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2111x WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 999 TO mkEy
           DO muE_2111x WITH "F", "v"
           DO diS_2111x WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2111x
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran los Productos con sus Stocks"
 @ pfIl+1, 02 SAY "respectivos."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 08 SAY "ESC" STYLE "BT"
 @ pfIl+6, 08 SAY "F10" STYLE "BT"
 @ pfIl+7, 08 SAY "F1" STYLE "BT"
 @ pfIl+5, 31 SAY "Regresar a Cabecera"
 @ pfIl+6, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 31 SAY "Ayuda del Programa"
 STORE pfIl+8 TO pfIl
 IF ppRg$"9EF"
      @ pfIl, 08 SAY "F4" STYLE "BT"
      @ pfIl, 29 SAY ":" STYLE "BT"
      DO CASE
           CASE ppRg="9"
                @ pfIl, 31 SAY "Selecciona los decimales de los stocks"
           OTHERWISE
                @ pfIl, 31 SAY "Escoger # Lista de Precios"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF ppRg="8"
      @ pfIl+0, 08 SAY "F6" STYLE "BT"
      @ pfIl+1, 08 SAY "F7" STYLE "BT"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+1, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 31 SAY "Seleccionar todos los Productos stock 0"
      @ pfIl+1, 31 SAY "Seleccionar todos los Productos con stock"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF ppRg$"6789EF"
      @ pfIl+0, 08 SAY "F8" STYLE "BT"
      @ pfIl+2, 08 SAY "F9 o CLIC" STYLE "BT"
      @ pfIl+3, 08 SAY "TAB" STYLE "BT"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+2, 29 SAY ":" STYLE "BT"
      @ pfIl+3, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 31 SAY "Seleccionar todos los Productos con"
      @ pfIl+1, 31 SAY "stock negativo"
      @ pfIl+2, 31 SAY "Marcar/Desmarcar Producto"
      @ pfIl+3, 31 SAY "Seleccionar todos los Productos marcados"
      STORE pfIl+4 TO pfIl
 ENDIF
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+2, 29 SAY ":" STYLE "BT"
 @ pfIl+3, 29 SAY ":" STYLE "BT"
 @ pfIl+4, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+8, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 08 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+3, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+4, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+5, 08 SAY "HOME" STYLE "BT"
 @ pfIl+6, 08 SAY "END" STYLE "BT"
 @ pfIl+7, 08 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+8, 08 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+0, 31 SAY "Seleccionar Producto"
 @ pfIl+1, 31 SAY "Línea inferior"
 @ pfIl+2, 31 SAY "Línea superior"
 @ pfIl+3, 31 SAY "Página siguiente"
 @ pfIl+4, 31 SAY "Página anterior"
 @ pfIl+5, 31 SAY "Primera línea"
 @ pfIl+6, 31 SAY "Última línea"
 @ pfIl+7, 31 SAY "Cambiar de Orden"
 @ pfIl+8, 31 SAY "Cambiar de Orden"
 STORE pfIl+9 TO pfIl
 IF ppRg$"6789EF"
      @ pfIl+0, 08 SAY "CTRL --> <--" STYLE "BT"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 31 SAY "Cambiar de Lista de Precios"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
