 = INKEY(0.01)
 SELECT teMporal_2
 DO CASE
      CASE vsWw=1
           SET ORDER TO FTM2COD
      CASE vsWw=2
           SET ORDER TO FTM2DES
 ENDCASE
 DO p00_2106y
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 STORE ifFr TO vfFr, ufFr
 DO muE_2106y WITH "F", "v"
 DO muE_2106y WITH "F", "u"
 DO paN_2106y
 STORE ifFr TO vfFr
 DO muE_2106y WITH "i", "v"
 DO seE_2106y WITH "v"
 DO diS_2106y WITH "R"
 STORE 999 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2106y
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2106y
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2106y
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2106y
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO diS_2106y WITH "N"
                DO CASE
                     CASE vsWw=1
                          STORE 2 TO vsWw
                     CASE vsWw=2
                          STORE 1 TO vsWw
                ENDCASE
                DO CASE
                     CASE vsWw=1
                          SET ORDER TO FTM2COD
                     CASE vsWw=2
                          SET ORDER TO FTM2DES
                ENDCASE
                DO prEsiona WITH "3", "CONSU3", ifFr-1.7, vcL0+0.4
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSU3", ifFr-1.7, vcL0+21.4
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE vsWw=1
                          DO prEsiona WITH "1", "CONSU3", ifFr-1.7, vcL0+0.4
                     CASE vsWw=2
                          DO prEsiona WITH "1", "CONSU3", ifFr-1.7, vcL0+21.4
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLsc3
                STORE 00 TO cfFr
                STORE ifFr TO vfFr
                DO seE_2106y WITH "i"
                DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                     IF UPPER(ALLTRIM(ftM2cod))+"*"=UPPER(ALLTRIM(vcDd))+ ;
                        "*" .AND. RECNO()=vrCc
                          STORE vfFr TO cfFr
                     ENDIF
                     DO diS_2106y WITH "N"
                     DO muE_2106y WITH "F", "u"
                     STORE vfFr TO ufFr
                     STORE vfFr+1 TO vfFr
                     SKIP
                ENDDO
                IF ufFr+1<=ffFr
                     DO coLsc3
                     @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
                     DO liN_2106y WITH ufFr+1, ffFr+1
                ENDIF
                IF cfFr=0
                     STORE ifFr TO cfFr
                     DO muE_2106y WITH "i", "v"
                ENDIF
                STORE cfFr TO vfFr
                DO seE_2106y WITH "v"
                DO diS_2106y WITH "R"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE UPPER(ALLTRIM(ftM2cod))+"*"= ;
                          UPPER(ALLTRIM(icDd))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcDd))+"*"=UPPER(ALLTRIM(icDd))+ ;
                          "*" .AND. RECNO()=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcDd))+"*"= ;
                                    UPPER(ALLTRIM(icDd))+"*" .AND. vrCc=irCc
                                    DO paN_2106y
                               OTHERWISE
                                    DO seE_2106y WITH "v"
                                    DO diS_2106y WITH "N"
                          ENDCASE
                          DO muE_2106y WITH "i", "v"
                          STORE ifFr TO vfFr
                          DO seE_2106y WITH "v"
                          DO diS_2106y WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE UPPER(ALLTRIM(ftM2cod))+"*"= ;
                          UPPER(ALLTRIM(ucDd))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcDd))+"*"=UPPER(ALLTRIM(ucDd))+ ;
                          "*" .AND. RECNO()=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcDd))+"*"= ;
                                    UPPER(ALLTRIM(ucDd))+"*" .AND. vrCc=urCc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2106y
                               OTHERWISE
                                    DO seE_2106y WITH "v"
                                    DO diS_2106y WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_2106y WITH "u", "v"
                          DO seE_2106y WITH "v"
                          DO diS_2106y WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2106y WITH "v"
                          DO diS_2106y WITH "N"
                          SKIP
                          IF UPPER(ALLTRIM(vcDd))+"*"= ;
                             UPPER(ALLTRIM(ucDd))+"*" .AND. vrCc=urCc
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2106y WITH ifFr, ffFr+1
                               DO muE_2106y WITH "F", "v"
                               DO muE_2106y WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2106y WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_2106y WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_2106y WITH "v"
                          DO diS_2106y WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2106y WITH "v"
                          DO diS_2106y WITH "N"
                          SKIP -1
                          IF UPPER(ALLTRIM(vcDd))+"*"= ;
                             UPPER(ALLTRIM(icDd))+"*" .AND. vrCc=irCc
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2106y WITH ifFr, ffFr+1
                               STORE ifFr TO vfFr
                               DO muE_2106y WITH "F", "i"
                               DO muE_2106y WITH "F", "v"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2106y WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2106y WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          DO seE_2106y WITH "v"
                          DO diS_2106y WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2106y WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2106y
                          STORE ifFr TO vfFr
                          DO muE_2106y WITH "i", "v"
                          DO seE_2106y WITH "v"
                          DO diS_2106y WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2106y WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2106y
                          STORE ifFr TO vfFr
                          DO muE_2106y WITH "i", "v"
                          DO seE_2106y WITH "v"
                          DO diS_2106y WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_2106y WITH "N"
                STORE 00 TO csWw
                DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                     DO CASE
                          CASE vsWw=1 .AND. UPPER(CHR(mkEy))= ;
                               SUBSTR(UPPER(ftM2cod), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          CASE vsWw=2 .AND. UPPER(CHR(mkEy))= ;
                               SUBSTR(UPPER(ftM2des), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                     ENDCASE
                     STORE vfFr+1 TO vfFr
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFr TO vfFr
                     DO seE_2106y WITH "i"
                     DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                          DO CASE
                               CASE vsWw=1 .AND. UPPER(CHR(mkEy))= ;
                                    SUBSTR(UPPER(ftM2cod), 1, 1)
                                    STORE 01 TO csWw
                                    EXIT
                               CASE vsWw=2 .AND. UPPER(CHR(mkEy))= ;
                                    SUBSTR(UPPER(ftM2des), 1, 1)
                                    STORE 01 TO csWw
                                    EXIT
                          ENDCASE
                          STORE vfFr+1 TO vfFr
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF()
                          GOTO BOTTOM
                     ENDIF
                     DO paN_2106y
                     DO muE_2106y WITH "i", "v"
                     STORE ifFr TO vfFr
                ELSE
                     DO muE_2106y WITH "F", "v"
                ENDIF
                DO seE_2106y WITH "v"
                DO diS_2106y WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2106y WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2106y
 STORE ifFr TO vfFr, ufFr
 DO muE_2106y WITH "F", "i"
 DO muE_2106y WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO diS_2106y WITH "N"
      DO muE_2106y WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2106y WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2106y
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLblz
 ENDCASE
 @vFFR,vCL0+000.4  Say FTM2COD Font "&mLetAri",9 Style "NQ" Size 1,019.9 Pict "!!!!!!!!!!!!!!!"
 @vFFR,vCL0+021.4  Say FTM2DES Font "&mLetAri",9 Style "NQ" Size 1,106.8 Pict "@S80"
 @vFFR,vCL0+129.2  Say FTM2NUC Font "&mLetAri",9 Style "NQ" Size 1,009.7 Pict "@S12"
 @vFFR,vCL0+140.0  Say FTM2SIG Font "&mLetAri",9 Style "NQ" Size 1,009.9 Pict "@S12"
 @vFFR,vCL0+151.0  Say FTM2PRE Font "&mLetAri",9 Style "NQ" Size 1,014.8 Pict "99,999.9999"
 DO coLsc3
 @fFFR+1.5,vCL0+24 Say FTM2DES              Font "&mLetAri",9 Style "NQ" Size 1,140 Pict "@S80"
 @fFFR+2.8,vCL0+27 Say FTM2CDG+": "+FTM2DCR Font "&mLetAri",9 Style "NQ" Size 1,137 Pict "@S99"
ENDPROC
*
PROCEDURE Lin_2106y
 PARAMETER piNi, pfIn
 DO coLbln
 @ piNi, vcL0+020.8 TO pfIn, vcL0+020.8
 @ piNi, vcL0+128.6 TO pfIn, vcL0+128.6
 @ piNi, vcL0+139.4 TO pfIn, vcL0+139.4
 @ piNi, vcL0+150.4 TO pfIn, vcL0+150.4
ENDPROC
*
PROCEDURE P00_2106y
 STORE vcL0+0.4 TO piCl
 STORE vcL0+166 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFr-1.3, vcL0, ffFr+5.2, vcL0+166
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifFr-0.2, vcL0 TO ifFr-0.2, vcL0+166
 @ ffFr+1.1, vcL0 TO ffFr+1.1, vcL0+166
 @ ffFr+4.0, vcL0-0.3 TO ffFr+5.2, vcL0+166 PATTERN 1 COLOR SCHEME 4
 @fFFR+4.1,vCL0+069.4 Say "CONSULTA DE PRODUCTOS" Font "&mLetAri",9 Style "BT" Color Scheme 4
 DO coLblz
 @iFFR-1.3,vCL0+000.4 Say "Código"                Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,vCL0+021.4 Say "Descripción"           Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,vCL0+129.2 Say "Uni.Cpra"              Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,vCL0+140.5 Say "Moneda"                Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,vCL0+159.0 Say "Precio"                Font "&mLetAri",9 Style "NT"
 @fFFR+1.5,vCL0+000.4 Say "Descripción Normal"    Font "&mLetAri",9 Style "BT"
 @fFFR+2.8,vCL0+000.4 Say "Descripción Proveedor" Font "&mLetAri",9 Style "BT"
 DO liN_2106y WITH ifFr-1.3, ffFr+1
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, vcL0+0.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.7, vcL0+21.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsWw=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, vcL0+0.4
      CASE vsWw=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.7, vcL0+21.4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_2106y
 STORE vfFr TO cfFr
 DO muE_2106y WITH "v", "c"
 DO reS_2910b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2106y
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 DO seE_2106y WITH "i"
 DO paN_2106y
 STORE cfFr TO vfFr
 DO muE_2106y WITH "c", "v"
 DO seE_2106y WITH "v"
 DO diS_2106y WITH "R"
ENDPROC
*
PROCEDURE See_2106y
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsWw=01
                     SEEK UPPER(ALLTRIM(vcDd))+"*"+STR(vrCc, 4, 0)
                CASE vsWw=02
                     SEEK UPPER(ALLTRIM(vdCc))+UPPER(ALLTRIM(vcDd))+"*"+ ;
                          STR(vrCc, 4, 0)
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsWw=01
                     SEEK UPPER(ALLTRIM(icDd))+"*"+STR(irCc, 4, 0)
                CASE vsWw=02
                     SEEK UPPER(ALLTRIM(idCc))+UPPER(ALLTRIM(icDd))+"*"+ ;
                          STR(irCc, 4, 0)
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsWw=01
                     SEEK UPPER(ALLTRIM(ucDd))+"*"+STR(urCc, 4, 0)
                CASE vsWw=02
                     SEEK UPPER(ALLTRIM(udCc))+UPPER(ALLTRIM(ucDd))+"*"+ ;
                          STR(urCc, 4, 0)
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2106y
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcDd TO ccDd
           STORE vdCc TO cdCc
           STORE vrCc TO crCc
      CASE pmU1="i" .AND. pmU2="v"
           STORE icDd TO vcDd
           STORE idCc TO vdCc
           STORE irCc TO vrCc
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccDd TO vcDd
           STORE cdCc TO vdCc
           STORE crCc TO vrCc
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucDd TO vcDd
           STORE udCc TO vdCc
           STORE urCc TO vrCc
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM2cod TO vcDd
           STORE ftM2des TO vdCc
           STORE RECNO() TO vrCc
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM2cod TO ucDd
           STORE ftM2des TO udCc
           STORE RECNO() TO urCc
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM2cod TO icDd
           STORE ftM2des TO idCc
           STORE RECNO() TO irCc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2106y
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=vcL0 .AND.  ;
           mcCc<=vcL0+166
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=vcL0 .AND.  ;
           mcCc<=vcL0+166
           DO diS_2106y WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2106y WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 999 TO mkEy
           DO muE_2106y WITH "F", "v"
           DO diS_2106y WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2106y
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran los Productos con sus Stocks"
 @ pfIl+01, 02 SAY "respectivos."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+12, 29 SAY ":" STYLE "BT"
 @ pfIl+13, 29 SAY ":" STYLE "BT"
 @ pfIl+14, 29 SAY ":" STYLE "BT"
 @ pfIl+15, 29 SAY ":" STYLE "BT"
 @ pfIl+16, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 08 SAY "ESC" STYLE "BT"
 @ pfIl+06, 08 SAY "F10" STYLE "BT"
 @ pfIl+07, 08 SAY "F1" STYLE "BT"
 @ pfIl+08, 08 SAY "ENTER" STYLE "BT"
 @ pfIl+09, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 08 SAY "HOME" STYLE "BT"
 @ pfIl+14, 08 SAY "END" STYLE "BT"
 @ pfIl+15, 08 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+16, 08 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+05, 31 SAY "Regresar a Cabecera"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Seleccionar Producto"
 @ pfIl+09, 31 SAY "Línea inferior"
 @ pfIl+10, 31 SAY "Línea superior"
 @ pfIl+11, 31 SAY "Página siguiente"
 @ pfIl+12, 31 SAY "Página anterior"
 @ pfIl+13, 31 SAY "Primera línea"
 @ pfIl+14, 31 SAY "Última línea"
 @ pfIl+15, 31 SAY "Cambiar de Orden"
 @ pfIl+16, 31 SAY "Cambiar de Orden"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
