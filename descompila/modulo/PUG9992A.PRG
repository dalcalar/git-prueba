 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursales
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Sucursales vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SEEK "01"
 IF BOF() .OR. EOF()
      STORE "Lugar de Data Principal no creado..." TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SEEK "02"
 IF BOF() .OR. EOF()
      STORE "No se encuentra registrada la Carpeta de Copia de Seguridad"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vfBi, vcBi, vtB1, vtIe, vuBi, vbCk, vdBf, cdBf, cdB1, cdB2
 STORE SPACE(70) TO vtIe, vuBi
 STORE 99 TO mkEy
 SELECT suCursales
 SEEK "01"
 STORE f9991nom TO vtIe
 STORE f9991pth TO vuBi
 SEEK "02"
 STORE f9991pth TO vbCk
 CLOSE DATABASES
 CLOSE INDEXES
 SET READBORDER ON
 DO p00_9992a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9992a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9992a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9992a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9992a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Tab
                STORE "Estás en el único campo..." TO mmSj
           CASE mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end .OR. mkEy= ;
                k_Ctrl_left .OR. mkEy=k_Up
                STORE "Estás en el único campo..." TO mmSj
           CASE mkEy=k_Enter
                DO deT_9992a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                EXIT
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Det_9992a
 DO coLsc7
 STORE ALLTRIM(vuBi) TO vuBi
 STORE ALLTRIM(vbCk) TO vbCk
 If .not.Directory("&vUBI")
      STORE "No hay Carpeta de Información para Copia de Seguridad..." TO mmSj
      DO poNmsj
      = INKEY(0)
      RETURN
 ENDIF
 @mFI0+16,mCO0+3 Say "Creando carpeta BACKUP"        Font "&mLetRom",11 Style "BQ" Size 1,45
 If .not.Directory("&vBCK")
      MD &cBCK
 ENDIF
 @mFI0+16,mCO0+3 Say "Creando carpeta BACKUP de Hoy" Font "&mLetRom",11 Style "BQ" Size 1,45
 STORE vbCk+SUBSTR(DTOC(DATE()), 7, 4)+SUBSTR(DTOC(DATE()), 4, 2)+ ;
       SUBSTR(DTOC(DATE()), 1, 2)+"\" TO cdBf
 If .not.Directory("&cDBF")
      MD &cDBF
 ENDIF
 @mFI0+16,mCO0+3 Say "Copiando archivos VT"   Font "&mLetRom",11 Style "BQ" Size 1,45
 STORE vuBi+"FV*.DBF" TO cdB1
 STORE cdBf+"FV*.DBF" TO cdB2
 Copy File &cDB1 to &cDB2
 STORE vuBi+"FV*.CDX" TO cdB1
 STORE cdBf+"FV*.CDX" TO cdB2
 Copy File &cDB1 to &cDB2
 @mFI0+16,mCO0+3 Say "Copiando archivos AL"   Font "&mLetRom",11 Style "BQ" Size 1,45
 STORE vuBi+"FA*.DBF" TO cdB1
 STORE cdBf+"FA*.DBF" TO cdB2
 Copy File &cDB1 to &cDB2
 STORE vuBi+"FA*.CDX" TO cdB1
 STORE cdBf+"FA*.CDX" TO cdB2
 Copy File &cDB1 to &cDB2
 @mFI0+16,mCO0+3 Say "Copiando archivos CT"   Font "&mLetRom",11 Style "BQ" Size 1,45
 STORE vuBi+"FC*.DBF" TO cdB1
 STORE cdBf+"FC*.DBF" TO cdB2
 Copy File &cDB1 to &cDB2
 STORE vuBi+"FC*.CDX" TO cdB1
 STORE cdBf+"FC*.CDX" TO cdB2
 Copy File &cDB1 to &cDB2
 @mFI0+16,mCO0+3 Say "Copiando archivos UT"   Font "&mLetRom",11 Style "BQ" Size 1,45
 STORE vuBi+"FU*.DBF" TO cdB1
 STORE cdBf+"FU*.DBF" TO cdB2
 Copy File &cDB1 to &cDB2
 STORE vuBi+"FU*.CDX" TO cdB1
 STORE cdBf+"FU*.CDX" TO cdB2
 Copy File &cDB1 to &cDB2
 @mFI0+16,mCO0+3 Say "Copiando archivos TR"   Font "&mLetRom",11 Style "BQ" Size 1,45
 STORE vuBi+"FK*.DBF" TO cdB1
 STORE cdBf+"FK*.DBF" TO cdB2
 Copy File &cDB1 to &cDB2
 STORE vuBi+"FK*.CDX" TO cdB1
 STORE cdBf+"FK*.CDX" TO cdB2
 Copy File &cDB1 to &cDB2
 @mFI0+16,mCO0+3 Say "Copiando archivos FE"   Font "&mLetRom",11 Style "BQ" Size 1,45
 STORE vuBi+"FF*.DBF" TO cdB1
 STORE cdBf+"FF*.DBF" TO cdB2
 Copy File &cDB1 to &cDB2
 = INKEY(0.01)
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE P00_9992a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 19 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+10.9 TO vfBi
 STORE mcO0+115.9 TO vcBi
 DO tiT_0000a WITH "Sacar Copia de Seguridad"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLscz
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+00.5,mCO0+3 Say "Este proceso copia los Archivos del Sistema y los guarda en la ruta que el usuario"   Font "&mLetAri",11 Style "NQ"
 @mFI0+02.0,mCO0+3 Say "previamente configuró."                                                               Font "&mLetAri",11 Style "NQ"
 @mFI0+03.5,mCO0+3 Say "Para esto, los usuarios no tienen que encontrarse usando el sistema. La copia que se" Font "&mLetAri",11 Style "NQ"
 @mFI0+05.0,mCO0+3 Say "crea en una carpeta con la fecha del dia."                                            Font "&mLetAri",11 Style "NQ"
 @mFI0+07.0,mCO0+3 Say "Ubicación de la Copia de Seguridad:"                                                  Font "&mLetRom",11 Style "BQ"
 @mFI0+09.0,mCO0+3 Say "Ubicación de la Información:"                                                         Font "&mLetRom",11 Style "BQ"
 DO coLbln
 @mFI0+07,mCO0+52 Edit vBCK Font "&mLetRom",11 Style "BQ" Size 1,56,70
 @mFI0+09,mCO0+47 Edit vTIE Font "&mLetRom",11 Style "BQ" Size 1,57,70
 READ TIMEOUT 0.01
 @mFI0+11,mCO0+47 Say AllTrim(vTIE)+": "+vUBI Font "&mLetRom",11 Style "BQ" Size 1,57 Pict "@S60"
 DO coLblr
 @mFI0+13,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..." Font "&mLetRom",14 Style "BTI"
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9992a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9992a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, saca copia de Seguridad en la carpeta configurada por"
 @ pfIl+01, 02 SAY "el Usuario."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 25 SAY ":" STYLE "BT"
 @ pfIl+06, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+05, 15 SAY "ESC" STYLE "BT"
 @ pfIl+06, 15 SAY "F10" STYLE "BT"
 @ pfIl+07, 15 SAY "F1" STYLE "BT"
 @ pfIl+08, 15 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 27 SAY "Regresar al Menú Principal"
 @ pfIl+06, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 27 SAY "Ayuda del Programa"
 @ pfIl+08, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vfBi, vcBi, vtB1, vtIe, vuBi, vbCk, vdBf, cdBf, cdB1, cdB2
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
