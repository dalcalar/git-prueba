 STORE 99 TO mkEy
 STORE 01 TO meRr
 SELECT 1
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"SUNAT\AGEPER.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"SUNAT\AGEPER.DBB" TO mdBf
 ENDIF
 If .not.File("&mDBF")
      PUBLIC afIl, x, ntM1
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RAZ"
      afIl[x, 2] = "C"
      afIl[x, 3] = 80
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "FEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      CREATE TABLE (mdBf) FROM ARRAY afIl
      RELEASE afIl, x, ntM1
 ENDIF
 Use &mDBF Share Alias Age_Percepcion
 IF mkEy=k_Esc
      DO deL_files
 ENDIF
 SELECT 2
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"SUNAT\AGERET.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"SUNAT\AGERET.DBB" TO mdBf
 ENDIF
 If .not.File("&mDBF")
      PUBLIC afIl, x, ntM1
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RAZ"
      afIl[x, 2] = "C"
      afIl[x, 3] = 80
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "FEC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      CREATE TABLE (mdBf) FROM ARRAY afIl
      RELEASE afIl, x, ntM1
 ENDIF
 Use &mDBF Share Alias Age_Retencion
 IF mkEy=k_Esc
      DO deL_files
 ENDIF
 STORE 00 TO meRr
 PUBLIC vkEy
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_9991a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9991a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9991a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9991a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9991a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO prO_9991a
                STORE 99 TO mkEy
      ENDCASE
      mkEy = INKEY(0, "HM")
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Pro_9991a
ENDPROC
*
PROCEDURE P00_9991a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 03 TO muFi
 STORE 88 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Actualiza Datos de Agentes de Percepción/Detracción"
 DO coLbln
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+0.7, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLblr
 @mFI0+1,mCO0+1 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir" Font "&mLetRom",14 Style "NT"
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9991a
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
PROCEDURE Hl1_9991a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa actualiza los datos de los Agente de Percepción y Retención"
 @ pfIl+01, 02 SAY  ;
   "de los Archivos de Texto de la SUNAT. Que se deben guardar en la carpeta"
 @ pfIl+02, 02 SAY "SUNAT que se encuentra dentro de la DATA."
 @ pfIl+03, 02 SAY  ;
   "Los Archivos se llaman: AgenRet.TXT.txt y AgenPerVI_TXT.txt"
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 12 SAY ":" STYLE "BT"
 @ pfIl+08, 12 SAY ":" STYLE "BT"
 @ pfIl+09, 12 SAY ":" STYLE "BT"
 @ pfIl+10, 12 SAY ":" STYLE "BT"
 @ pfIl+07, 03 SAY "ESC" STYLE "BT"
 @ pfIl+08, 03 SAY "F10" STYLE "BT"
 @ pfIl+09, 03 SAY "F1" STYLE "BT"
 @ pfIl+10, 03 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 14 SAY "Regresar al Menú Principal"
 @ pfIl+08, 14 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 14 SAY "Ayuda del Programa"
 @ pfIl+10, 14 SAY "Empezar Actualización"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vkEy
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
