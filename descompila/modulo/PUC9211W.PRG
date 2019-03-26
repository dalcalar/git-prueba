 PARAMETER ppRg
 = INKEY(0.01)
 DO p00_9211w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tiP_prod
 SET FILTER TO LEN(ALLTRIM(f9211let))<>0
 GOTO TOP
 DO paN_9211w
 DO muE_9211w WITH "i", "v"
 DO seE_9211w WITH "v"
 DO diS_9211w WITH "R"
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
           DO reS_9211w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9211w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_9211w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_9211w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                STORE f9211let TO vlEt
                SELECT prImero
                GOTO TOP
                SEEK vlEt
                IF EOF()
                     STORE "Este Tipo no tiene Codificación Nemotécnica registrada..."  ;
                           TO mmSj
                     DO poNmsj
                ELSE
                     SAVE SCREEN TO vpAn_le1
                     DO puC9221w
                     IF mkEy=k_Enter
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_le1
                     IF ppRg$"12"
                          DO coLbln
                          @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                     ENDIF
                ENDIF
                STORE "" TO voP1, voP2, voP3, voP4, voP5, voP6, voP7
                STORE "" TO vdC1, vdC2, vdC3, vdC4, vdC5, vdC6, vdC7
                SELECT tiP_prod
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE f9211tip=itPo .AND. xtPo=itPo
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE xtPo=itPo
                                    DO paN_9211w
                               OTHERWISE
                                    DO seE_9211w WITH "v"
                                    DO diS_9211w WITH "N"
                          ENDCASE
                          DO muE_9211w WITH "i", "v"
                          DO seE_9211w WITH "v"
                          DO diS_9211w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f9211tip=utPo .AND. xtPo=utPo
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE xtPo=utPo
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_9211w
                               OTHERWISE
                                    DO seE_9211w WITH "v"
                                    DO diS_9211w WITH "N"
                          ENDCASE
                          DO muE_9211w WITH "u", "v"
                          DO seE_9211w WITH "v"
                          DO diS_9211w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9211w WITH "v"
                          DO diS_9211w WITH "N"
                          SKIP
                          IF xtPo=utPo
                               SET COLOR TO RGB(0,0,0,31,113,152)
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_9211w
                               DO muE_9211w WITH "F", "v"
                               DO muE_9211w WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_9211w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_9211w WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          DO seE_9211w WITH "v"
                          DO diS_9211w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9211w WITH "v"
                          DO diS_9211w WITH "N"
                          SKIP -1
                          IF xtPo=itPo
                               SET COLOR TO RGB(0,0,0,31,113,152)
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_9211w
                               DO muE_9211w WITH "F", "i"
                               DO muE_9211w WITH "F", "v"
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_9211w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_9211w WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          DO seE_9211w WITH "v"
                          DO diS_9211w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_9211w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_9211w
                          DO muE_9211w WITH "i", "v"
                          DO seE_9211w WITH "v"
                          DO diS_9211w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_9211w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_9211w
                          DO muE_9211w WITH "i", "v"
                          DO seE_9211w WITH "v"
                          DO diS_9211w WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_9211w WITH "N"
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                     IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9211nti), 1, 1)
                          STORE 1 TO csWw
                          EXIT
                     ENDIF
                     STORE vfFr+1 TO vfFr
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFr TO vfFr
                     DO seE_9211w WITH "i"
                     DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                          IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9211nti), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          ENDIF
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
                     DO paN_9211w
                     DO muE_9211w WITH "i", "v"
                ELSE
                     DO muE_9211w WITH "F", "v"
                ENDIF
                DO seE_9211w WITH "v"
                DO diS_9211w WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_9211w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_9211w
 STORE ifFr TO vfFr, ufFr
 DO muE_9211w WITH "F", "i"
 DO muE_9211w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO diS_9211w WITH "N"
      DO muE_9211w WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      SET COLOR TO RGB(0,0,0,31,113,152)
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_9211w
 ENDIF
ENDPROC
*
PROCEDURE Dis_9211w
 PARAMETER ptIp
 PRIVATE plEt
 DO CASE
      CASE ptIp="N"
           SET COLOR TO RGB(0,0,0,31,113,152)
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,vCL0+0.2 Say F9211LET Font "&mLetAri",9 Style "NQ" Size 1,03.5 Pict "!!"
 @vFFR,vCL0+4.8 Say F9211NTI Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 STORE f9211let TO plEt
 SELECT prImero
 SEEK plEt
 IF EOF()
      @vFFR,vCL0+32.8 Say Space(02) Font "&mLetRom",9 Style "BQ" Size 1,2
 ELSE
      @vFFR,vCL0+32.8 Say "->"      Font "&mLetRom",9 Style "BQ" Size 1,2
 ENDIF
 SELECT tiP_prod
 RELEASE plEt
ENDPROC
*
PROCEDURE Lin_9211w
 DO coLbln
 @ ifFr-0.1, vcL0+4.1 TO ffFr+1.2, vcL0+4.1
ENDPROC
*
PROCEDURE P00_9211w
 STORE vcL0+00.2 TO piCl
 STORE vcL0+35.6 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,31,113,152)
 DO cuAdro WITH ifFr, vcL0, ffFr+2.5, puCl-0.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @ ffFr+1.2, vcL0-0.3 TO ffFr+2.5, puCl-0.4 PATTERN 1 COLOR N 
 @ ifFr-0.2, vcL0 TO ifFr-0.2, puCl-0.4
 @fFFR+1.3,vCL0+1.2 Say "Tipos de Productos" Font "&mLetRom",10 Style "BTI" Color 6+
 DO liN_9211w
ENDPROC
*
PROCEDURE See_9211w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK UPPER(vnTp)+xtPo
      CASE psEe="i"
           SEEK UPPER(inTp)+itPo
      CASE psEe="u"
           SEEK UPPER(unTp)+utPo
 ENDCASE
ENDPROC
*
PROCEDURE Mue_9211w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itPo TO xtPo
           STORE inTp TO vnTp
           STORE ifFr TO vfFr
      CASE pmU1="v" .AND. pmU2="c"
           STORE xtPo TO ctPo
           STORE vnTp TO cnTp
           STORE vfFr TO cfFr
      CASE pmU1="u" .AND. pmU2="v"
           STORE utPo TO xtPo
           STORE unTp TO vnTp
           STORE ufFr TO vfFr
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctPo TO xtPo
           STORE cnTp TO vnTp
           STORE cfFr TO vfFr
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9211tip TO xtPo
           STORE f9211nti TO vnTp
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9211tip TO utPo
           STORE f9211nti TO unTp
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9211tip TO itPo
           STORE f9211nti TO inTp
 ENDCASE
ENDPROC
*
PROCEDURE Res_9211w
 DO muE_9211w WITH "v", "c"
 DO CASE
      CASE ppRg="1"
           DO reS_1200b
      CASE ppRg="2"
           DO reS_1300b
      CASE ppRg="5"
           DO p00_2111a WITH "1"
      CASE ppRg="7"
           DO p00_2920a WITH "1"
      CASE ppRg="8"
           DO reS_2920b
      CASE ppRg="9"
           DO reS_2105b
      CASE ppRg="3"
           DO reS_2700b
      CASE ppRg="4"
           DO reS_2800b
      CASE ppRg="6"
           DO reS_2400b
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_let
 DO p00_9211w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tiP_prod
 DO seE_9211w WITH "i"
 DO paN_9211w
 DO muE_9211w WITH "c", "v"
 DO seE_9211w WITH "v"
 DO diS_9211w WITH "R"
ENDPROC
*
PROCEDURE Clp_9211w
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
           mcCc<=vcL0+35
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=vcL0 .AND.  ;
           mcCc<=vcL0+35
           DO diS_9211w WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_9211w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 999 TO mkEy
           DO muE_9211w WITH "F", "v"
           DO diS_9211w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9211w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta, se muestran los Tipos de Productos que"
 @ pfIl+1, 2 SAY "tienen codificación nemotécnica."
 DO hl0_9211w IN PUC9211W WITH "Tipo"
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl0_9211w
 PARAMETER pmMm
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
 @ pfIl+05, 31 SAY "Regresar a Cabecera"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Seleccionar "+pmMm
 @ pfIl+09, 31 SAY "Línea inferior"
 @ pfIl+10, 31 SAY "Línea superior"
 @ pfIl+11, 31 SAY "Página siguiente"
 @ pfIl+12, 31 SAY "Página anterior"
 @ pfIl+13, 31 SAY "Primera línea"
 @ pfIl+14, 31 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
ENDPROC
*
