 SET CENTURY ON
 STORE 99 TO mkEy
 STORE 01 TO meRr
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tiendas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SEEK "99"
 IF EOF()
      STORE "No se encuentra la Ruta de donde se actualizara los Precios"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT tiEndas
 STORE 00 TO meRr
 PUBLIC vpTh, vcOd, vmEm, vsTo, vsTs, vcAj
 STORE f9991pth TO vpTh
 CLOSE DATABASES
 DO p00_8881a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_8881a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_8881a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_8881a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_8881a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                SET ESCAPE ON
                ON ESCAPE STORE 9000 TO MKEY
                DO prO_8881a
                STORE 99 TO mkEy
                EXIT
      ENDCASE
      mkEy = INKEY(0, "HM")
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Pro_8881a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 Use &mDBF Shared Alias Productos1
 SET ORDER TO F2111COD
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2118", "A"
 Use &mDBF Shared Alias Tot_Prod1
 SET ORDER TO F2118COD
 SELECT 3
 STORE ALLTRIM(vpTh)+"FA012111.DBF" TO mdBf
 Use &mDBF Shared NoUpdate Alias Productos2
 SET ORDER TO F2111COD
 SELECT 4
 STORE ALLTRIM(vpTh)+"FA012118.DBF" TO mdBf
 Use &mDBF Shared NoUpdate Alias Tot_Prod2
 SET ORDER TO F2118COD
 DO coLblz
 @mFI0+3,mCO0+1 Say "Productos-1" Font "&mLetRom",14 Style "NQ" Size 1,20
 SELECT prOductos2
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=9000
           RETURN
      ENDIF
      STORE f2111cod TO vcOd
      STORE 0 TO vsTo, vsTs, vcAj
      SCATTER NAME vmEm
      SELECT prOductos1
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           APPEND BLANK
      ELSE
           STORE f2111sto TO vsTo
           STORE f2111sts TO vsTs
           STORE f2111caj TO vcAj
      ENDIF
      GATHER NAME vmEm
      REPLACE f2111sto WITH vsTo
      REPLACE f2111sts WITH vsTs
      REPLACE f2111caj WITH vcAj
      SELECT prOductos2
      SKIP
 ENDDO
 @mFI0+3,mCO0+1 Say "Productos-2:" Font "&mLetRom",14 Style "NQ" Size 1,20
 SELECT toT_prod2
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=9000
           RETURN
      ENDIF
      STORE f2118cod TO vcOd
      SCATTER NAME vmEm
      SELECT toT_prod1
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           APPEND BLANK
           GATHER NAME vmEm
           REPLACE f2118sto WITH 0
           REPLACE f2118caj WITH 0
           REPLACE f2118cpe WITH 0
           REPLACE f2118cjp WITH 0
           REPLACE f2118sts WITH 0
           REPLACE f2118orp WITH 0
           REPLACE f2118vcp WITH 0
           REPLACE f2118vcs WITH 0
           REPLACE f2118prm WITH 0
           REPLACE f2118co1 WITH 0
           REPLACE f2118co2 WITH 0
           REPLACE f2118fe1 WITH CTOD("  /  /    ")
           REPLACE f2118fe2 WITH CTOD("  /  /    ")
      ENDIF
      SELECT toT_prod2
      SKIP
 ENDDO
 CLOSE DATABASES
 CLOSE INDEXES
ENDPROC
*
PROCEDURE P00_8881a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 07 TO muFi
 STORE 88 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Actualizar Productos y Precios"
 DO coLbln
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+0.7, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLbln
 @mFI0+0,mCO0+01 Say "Sucursal:" Font "&mLetRom",14 Style "NQ"
 DO coLsc7
 @mFI0+0,mCO0+20 Say vPTH        Font "&mLetRom",14 Style "NQ" Size 1,41 Pict "@S33"
 DO coLblr
 @mFI0+6,mCO0+01 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir" Font "&mLetRom",14 Style "NT"
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_8881a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
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
PROCEDURE Hl1_8881a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa actualiza los datos de NUEVOS PRODUCTOS y Actua-"
 @ pfIl+01, 02 SAY "liza los precios de todas las listas."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 12 SAY ":" STYLE "BT"
 @ pfIl+06, 12 SAY ":" STYLE "BT"
 @ pfIl+07, 12 SAY ":" STYLE "BT"
 @ pfIl+08, 12 SAY ":" STYLE "BT"
 @ pfIl+05, 03 SAY "ESC" STYLE "BT"
 @ pfIl+06, 03 SAY "F10" STYLE "BT"
 @ pfIl+07, 03 SAY "F1" STYLE "BT"
 @ pfIl+08, 03 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 14 SAY "Regresar al Menú Principal"
 @ pfIl+06, 14 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 14 SAY "Ayuda del Programa"
 @ pfIl+08, 14 SAY "Empezar Actualización"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vpTh, vcOd, vmEm, vsTo, vsTs, vcAj
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
