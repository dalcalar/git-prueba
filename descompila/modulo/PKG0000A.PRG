 SET CENTURY ON
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_0000a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0000a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0000a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0000a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_0000a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO deT_0000a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                FLUSH
                WAIT CLEAR
                EXIT
      ENDCASE
      mkEy = INKEY(0)
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Det_0000a
 STORE muNi+":"+mpTh+"ARCHIVO"+meXt TO mdBf
 STORE "TXT\ARCHIVO.TXT" TO mcDx
 Use &mDBF Exclusive
 ZAP
 Append from "&mCDX" Delimited with ,
 CLOSE DATABASES
ENDPROC
*
PROCEDURE P00_0000a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 05 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Pase Marcaciones al Sistema"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+2,mCO0+17 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir" Font "&mLetRom",14 Style "NT"
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_0000a
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
PROCEDURE Hl1_0000a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 01 SAY "Este programa, se anexan las marcaciones por lote."
 @ 2.200, 01 SAY "Las teclas para movilizarse son:"
 @ 4.200, 25 SAY ":" STYLE "BT"
 @ 5.200, 25 SAY ":" STYLE "BT"
 @ 6.200, 25 SAY ":" STYLE "BT"
 @ 7.200, 25 SAY ":" STYLE "BT"
 @ 4.200, 15 SAY "ESC" STYLE "BT"
 @ 5.200, 15 SAY "F10" STYLE "BT"
 @ 6.200, 15 SAY "F1" STYLE "BT"
 @ 7.200, 15 SAY "ENTER" STYLE "BT"
 @ 4.200, 27 SAY "Regresar al Menú Principal"
 @ 5.200, 27 SAY "Cerrar y regresar a Windows"
 @ 6.200, 27 SAY "Ayuda del Programa"
 @ 7.200, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 SET READBORDER OFF
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
