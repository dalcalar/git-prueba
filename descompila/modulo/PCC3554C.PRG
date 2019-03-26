 = INKEY(0.01)
 STORE 00 TO vsOl, vuSd, vuS1
 SELECT tmP_tipos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE vsOl+ftM2to1 TO vsOl
      STORE vuSd+ftM2to2 TO vuSd
      STORE vuS1+ftM2tt2 TO vuS1
      SKIP
 ENDDO
 DO p00_3554c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tmP_tipos
 GOTO TOP
 DO paN_3554c
 STORE itP1 TO vtP1
 STORE itIp TO vtIp
 STORE ifFs TO vfFs
 SEEK vtP1+vtIp
 DO diS_3554c WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3554c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3554c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3554c WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3554c WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3554c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3554c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_12
                vxLs = PUTFILE("Archivo Excel:", "XLS\RESUMENC.XLS", "XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM2TPO,FTM2TIP,FTM2NTI,FTM2TO1,FTM2TO2,FTM2TT2 Type XLS
                     ENDCASE
                ENDIF
                SELECT tmP_tipos
                SEEK vtP1+vtIp
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM2tpo+ftM2tip=itP1+itIp .AND. vtP1+vtIp=itP1+itIp
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtP1+vtIp=itP1+itIp
                                    DO paN_3554c
                               OTHERWISE
                                    SEEK vtP1+vtIp
                                    DO diS_3554c WITH "N"
                          ENDCASE
                          STORE itP1 TO vtP1
                          STORE itIp TO vtIp
                          STORE ifFs TO vfFs
                          SEEK vtP1+vtIp
                          DO diS_3554c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM2tpo+ftM2tip=utP1+utIp .AND. vtP1+vtIp=utP1+utIp
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtP1+vtIp=utP1+utIp
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_3554c
                               OTHERWISE
                                    SEEK vtP1+vtIp
                                    DO diS_3554c WITH "N"
                          ENDCASE
                          STORE utP1 TO vtP1
                          STORE utIp TO vtIp
                          STORE ufFs TO vfFs
                          SEEK vtP1+vtIp
                          DO diS_3554c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtP1+vtIp
                          DO diS_3554c WITH "N"
                          SKIP
                          IF vtP1+vtIp=utP1+utIp
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3552c IN PCC3552C WITH ifFs, ffFs+1
                               STORE ftM2tpo TO utP1, vtP1
                               STORE ftM2tip TO utIp, vtIp
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE ftM2tpo TO itP1
                               STORE ftM2tip TO itIp
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE ftM2tpo TO vtP1
                               STORE ftM2tip TO vtIp
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK vtP1+vtIp
                          DO diS_3554c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtP1+vtIp
                          DO diS_3554c WITH "N"
                          SKIP -1
                          IF vtP1+vtIp=itP1+itIp
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3552c IN PCC3552C WITH ifFs, ffFs+1
                               STORE ftM2tpo TO itP1, vtP1
                               STORE ftM2tip TO itIp, vtIp
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE ftM2tpo TO utP1
                                    STORE ftM2tip TO utIp
                               ENDIF
                          ELSE
                               STORE ftM2tpo TO vtP1
                               STORE ftM2tip TO vtIp
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vtP1+vtIp
                          DO diS_3554c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK utP1+utIp
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3554c
                          STORE itP1 TO vtP1
                          STORE itIp TO vtIp
                          STORE ifFs TO vfFs
                          SEEK vtP1+vtIp
                          DO diS_3554c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK itP1+itIp
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3554c
                          STORE itP1 TO vtP1
                          STORE itIp TO vtIp
                          STORE ifFs TO vfFs
                          SEEK vtP1+vtIp
                          DO diS_3554c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtP1+vtIp
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3554c
 STORE ifFs TO vfFs, ufFs
 STORE ftM2tpo TO itP1, utP1
 STORE ftM2tip TO itIp, utIp
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_3554c WITH "N"
      STORE ftM2tpo TO utP1
      STORE ftM2tip TO utIp
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_3552c IN PCC3552C WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3554c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE ftM2tpo="1"
           @vFFS,vCO0+9.2 Say "C" Font "&mLetAri",9 Style "NQ" Size 1,2
      CASE ftM2tpo="2"
           @vFFS,vCO0+9.2 Say "B" Font "&mLetAri",9 Style "NQ" Size 1,2
 ENDCASE
 @vFFS,vCO0+12.0 Say FTM2TIP Font "&mLetAri",9 Style "NQ" Size 1,2.7 Pict "99"
 @vFFS,vCO0+15.9 Say FTM2NTI Font "&mLetAri",9 Style "NQ" Size 1,41  Pict "@S40"
 @vFFS,vCO0+57.8 Say FTM2TO1 Font "&mLetAri",9 Style "NQ" Size 1,17  Pict "99,999,999.99"
 @vFFS,vCO0+75.9 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,17  Pict "99,999,999.99"
 @vFFS,vCO0+93.9 Say FTM2TT2 Font "&mLetAri",9 Style "NQ" Size 1,17  Pict "99,999,999.99"
ENDPROC
*
PROCEDURE P00_3554c
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ ifFs-2, vcO0+8.6 TO ffFs+2.3, vcO0+111.8 PATTERN 1
 @ ifFs-2, vcO0+8.6 TO ifFs-0.2, vcO0+111.8 PATTERN 1 COLOR SCHEME 3
 @ ffFs+1, vcO0+8.6 TO ffFs+2.3, vcO0+111.8 PATTERN 1 COLOR SCHEME 3
 DO liN_3552c IN PCC3552C WITH ifFs-0.2, ffFs+1.1
 @ ifFs-2.0, vcO0+11.6 TO ifFs-0.2, vcO0+11.6
 @ ifFs-2.0, vcO0+57.3 TO ifFs-0.2, vcO0+57.3
 @ ifFs-2.0, vcO0+75.3 TO ifFs-0.2, vcO0+75.3
 @ ifFs-2.0, vcO0+93.3 TO ifFs-0.2, vcO0+93.3
 @ ffFs+1.1, vcO0+57.3 TO ffFs+2.3, vcO0+57.3
 @ ffFs+1.1, vcO0+75.3 TO ffFs+2.3, vcO0+75.3
 @ ffFs+1.1, vcO0+93.3 TO ffFs+2.3, vcO0+93.3
 DO coLsc3
 @iFFS-1.5,vCO0+12.0 Say "Concepto" Font "&mLetAri",9 Style "BQ"
 @iFFS-1.5,vCO0+65.6 Say "S/."      Font "&mLetAri",9 Style "BQ"
 @iFFS-1.5,vCO0+81.6 Say "US$"      Font "&mLetAri",9 Style "BQ"
 @iFFS-1.5,vCO0+98.6 Say "a US$"    Font "&mLetAri",9 Style "BQ"
 @fFFS+1.0,vCO0+57.8 Say vSOL       Font "&mLetAri",9 Style "NT" Size 1,17 Pict "99,999,999.99"
 @fFFS+1.0,vCO0+75.9 Say vUSD       Font "&mLetAri",9 Style "NT" Size 1,17 Pict "99,999,999.99"
 @fFFS+1.0,vCO0+93.9 Say vUS1       Font "&mLetAri",9 Style "NT" Size 1,17 Pict "99,999,999.99"
ENDPROC
*
PROCEDURE Res_3554c
 STORE vtP1 TO ctP1
 STORE vtIp TO ctIp
 DO reS_3554b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_3554c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tmP_tipos
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 SEEK itP1+itIp
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      IF ftM2tpo+ftM2tip=vtP1+vtIp
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE vtP1 TO itP1, ctP1
      STORE vtIp TO itIp, ctIp
      STORE ifFs TO vfFs, cfFs
 ENDIF
 SEEK itP1+itIp
 DO paN_3554c
 STORE ctP1 TO vtP1
 STORE ctIp TO vtIp
 STORE cfFs TO vfFs
 SEEK vtP1+vtIp
 DO diS_3554c WITH "R"
ENDPROC
*
PROCEDURE Clp_3554c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
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
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+03.6 .AND.  ;
           mcCc<=mmC2+07
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+124.2
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+124.2
           DO diS_3554c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK itP1+itIp
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE ftM2tpo TO vtP1
           STORE ftM2tip TO vtIp
           DO diS_3554c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3554c
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "En esta parte de la consulta, se muestra un resumen por Tipos de Movi-"
 @ 1.200, 02 SAY "mientos de Cancelaciones x Caja y Bancos."
 @ 3.200, 02 SAY "Las teclas para movilizarse son:"
 @ 5.200, 33 SAY ":" STYLE "BT"
 @ 6.200, 33 SAY ":" STYLE "BT"
 @ 7.200, 33 SAY ":" STYLE "BT"
 @ 8.200, 33 SAY ":" STYLE "BT"
 @ 9.200, 33 SAY ":" STYLE "BT"
 @ 10.200, 33 SAY ":" STYLE "BT"
 @ 11.200, 33 SAY ":" STYLE "BT"
 @ 12.200, 33 SAY ":" STYLE "BT"
 @ 13.200, 33 SAY ":" STYLE "BT"
 @ 14.200, 33 SAY ":" STYLE "BT"
 @ 5.200, 14 SAY "ESC" STYLE "BT"
 @ 6.200, 14 SAY "F10" STYLE "BT"
 @ 7.200, 14 SAY "F1" STYLE "BT"
 @ 8.200, 14 SAY "F8" STYLE "BT"
 @ 9.200, 14 SAY "FLECHA ABAJO" STYLE "BT"
 @ 10.200, 14 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 11.200, 14 SAY "PAGE DOWN" STYLE "BT"
 @ 12.200, 14 SAY "PAGE UP" STYLE "BT"
 @ 13.200, 14 SAY "HOME" STYLE "BT"
 @ 14.200, 14 SAY "END" STYLE "BT"
 @ 5.200, 35 SAY "Regresar a Cabecera"
 @ 6.200, 35 SAY "Cerrar y regresar a Windows"
 @ 7.200, 35 SAY "Ayuda del Programa"
 @ 8.200, 35 SAY "Pasar Datos a Excel"
 @ 9.200, 35 SAY "Línea inferior"
 @ 10.200, 35 SAY "Línea superior"
 @ 11.200, 35 SAY "Página siguiente"
 @ 12.200, 35 SAY "Página anterior"
 @ 13.200, 35 SAY "Primera línea"
 @ 14.200, 35 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
