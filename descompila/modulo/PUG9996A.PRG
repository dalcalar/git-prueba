 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2701DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vcOd, vtDo, vsEr, vdOc, vdIa, vmEs, vaNo, vpRm, vtOt, ttOt, vrEc
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_9996a WITH "0"
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
           DO p00_9996a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9996a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9996a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9996a WITH "1"
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
                DO deT_9996a
                WAIT CLEAR
                IF mkEy=k_Esc .OR. mkEy=k_Tab
                     EXIT
                ENDIF
                STORE 99 TO mkEy
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
PROCEDURE Det_9996a
 SELECT deT_ingr
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2701tdo TO vtDo
      STORE f2701ser TO vsEr
      STORE f2701doc TO vdOc
      STORE f2701cod TO vcOd
      STORE f2701ite TO vrEc
      WAIT WINDOW NOCLEAR NOWAIT vtDo+":"+vsEr+"-"+vdOc
      IF LEN(ALLTRIM(f2701ngs))<>0
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      SELECT caB_ingr
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      DO CASE
           CASE EOF()
                STORE "Error en GI:"+vsEr+"-"+vdOc+ ;
                      " detalle sin cabecera..."+CHR(13)+ ;
                      "Correr Arreglo de Stocks..."+CHR(13)+ ;
                      "Presiona una Tecla para SALIR..." TO mmSj
                DO poNmsj
                mkEy = INKEY(0)
                RETURN
           CASE f2700est="9"
                STORE "Error en GI:"+vsEr+"-"+vdOc+" Cabecera Anulada..."+ ;
                      CHR(13)+"Correr Arreglo de Stocks..."+CHR(13)+ ;
                      "Presiona una Tecla para SALIR..." TO mmSj
                DO poNmsj
                mkEy = INKEY(0)
                RETURN
           CASE f2700tpp=4 .OR. f2700tpp=7
                SELECT deT_ingr
                SKIP
                DO veR_lock
                LOOP
           OTHERWISE
                STORE SUBSTR(DTOC(f2700fem), 7, 4) TO vaNo
                STORE SUBSTR(DTOC(f2700fem), 4, 2) TO vmEs
                STORE SUBSTR(DTOC(f2700fem), 1, 2) TO vdIa
                SELECT kaRdex
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+"1"+"1"+vtDo+vsEr+vdOc
                SET NEAR OFF
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE 0 TO vpRm
                          STORE "Error en GI:"+vsEr+"-"+vdOc+ ;
                                " no está en el KARDEX..."+CHR(13)+ ;
                                "Correr Arreglo de Stock..."+CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     CASE f2990prm<0
                          STORE "Error en GI:"+vsEr+"-"+vdOc+ ;
                                " con Costo Promedio NEGATIVO..."+CHR(13)+ ;
                                "Verificar y Correr Arreglo de Stocks..."+ ;
                                CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     OTHERWISE
                          SKIP -1
                          DO veR_lock
                          IF ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                               STORE f2990prm TO vpRm
                               SELECT deT_ingr
                               SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                               IF  .NOT. RLOCK()
                                    DO reG_lock WITH vtDo+vsEr+vdOc+ ;
                                       STR(vrEc, 4, 0)
                                    IF mkEy=k_Esc
                                         WAIT CLEAR
                                         = INKEY(0.01)
                                         RETURN
                                    ENDIF
                               ELSE
                                    RLOCK()
                               ENDIF
                               REPLACE f2701cos WITH vpRm
                               UNLOCK
                          ENDIF
                ENDCASE
      ENDCASE
      SELECT deT_ingr
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_ingr
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2700tdo TO vtDo
      STORE f2700ser TO vsEr
      STORE f2700doc TO vdOc
      WAIT WINDOW NOCLEAR NOWAIT "Totalizando "+vtDo+":"+vsEr+"-"+vdOc
      IF f2700est="9"
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      SELECT deT_ingr
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      STORE 0 TO ttOt
      DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
           STORE f2701cos*f2701can TO vtOt
           STORE ttOt+vtOt TO ttOt
           SKIP
           DO veR_lock
      ENDDO
      SELECT caB_ingr
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2700cos WITH ttOt
      UNLOCK
      SKIP
      DO veR_lock
 ENDDO
 WAIT WINDOW NOCLEAR NOWAIT "FIN DE PROCESO..."
 = INKEY(0.05)
 WAIT CLEAR
 STORE k_Tab TO mkEy
ENDPROC
*
PROCEDURE P00_9996a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 12.6 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Costear Guías de Ingreso no vinculadas"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLscz
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+01.5,mCO0+03 Say "Este proceso pone los Costos promedios del Kardex en las Guías de Ingreso que no se" Font "&mLetAri",11 Style "NQ"
 @mFI0+03.0,mCO0+03 Say "encuentrann vinculadas a Guias de Salidas."                                          Font "&mLetAri",11 Style "NQ"
 @mFI0+05.5,mCO0+03 Say "Después de este proceso hay que correr Arreglo de Documentos y Stock."               Font "&mLetAri",11 Style "NQ"
 DO coLblr
 @mFI0+10.0,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..." Font "&mLetRom",14 Style "BTI"
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9996a
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
PROCEDURE Hl1_9996a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pone los costos en las Guías de Ingreso que no es-"
 @ pfIl+01, 02 SAY  ;
   "tén vinculadas. Estos son los calculados, para efectos de Kardex"
 @ pfIl+02, 02 SAY "Valorizado con Costo Promedio."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+09, 25 SAY ":" STYLE "BT"
 @ pfIl+06, 15 SAY "ESC" STYLE "BT"
 @ pfIl+07, 15 SAY "F10" STYLE "BT"
 @ pfIl+08, 15 SAY "F1" STYLE "BT"
 @ pfIl+09, 15 SAY "ENTER" STYLE "BT"
 @ pfIl+06, 27 SAY "Regresar al Menú Principal"
 @ pfIl+07, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 27 SAY "Ayuda del Programa"
 @ pfIl+09, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vcOd, vtDo, vsEr, vdOc, vdIa, vmEs, vaNo, vpRm, vtOt, ttOt, vrEc
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
