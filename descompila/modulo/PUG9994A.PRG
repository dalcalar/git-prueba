 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2800", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2800DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2801", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2801DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
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
 SELECT 4
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
 SET ORDER TO F2701COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
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
 PUBLIC vcOd, vtDo, vsEr, vdOc, vdIa, vmEs, vaNo, vpRm, vtGi, vsGi, vnGi,  ;
        vcDg, vtPp
 PUBLIC vtOt, ttOt, vcOs, vrEc
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_9994a WITH "0"
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
           DO p00_9994a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9994a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9994a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9994a WITH "1"
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
                DO deT_9994a
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
PROCEDURE Det_9994a
 SELECT deT_ingr
 DO orD_0000a WITH "2701", "A", "F2701COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sali
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2801tdo TO vtDo
      STORE f2801ser TO vsEr
      STORE f2801doc TO vdOc
      STORE f2801cod TO vcOd
      STORE f2801ite TO vrEc
      WAIT WINDOW NOCLEAR NOWAIT "Costeando: "+vtDo+":"+vsEr+"-"+vdOc
      IF f2801tgi="CO"
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      SELECT caB_sali
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      DO CASE
           CASE EOF()
                STORE "Error en GS:"+vsEr+"-"+vdOc+ ;
                      " detalle sin cabecera..."+CHR(13)+ ;
                      "Correr Arreglo de Stocks..."+CHR(13)+ ;
                      "Presiona una Tecla para SALIR..." TO mmSj
                DO poNmsj
                mkEy = INKEY(0)
                RETURN
           CASE f2800est="9"
                STORE "Error en GS:"+vsEr+"-"+vdOc+" Cabecera Anulada..."+ ;
                      CHR(13)+"Correr Arreglo de Stocks..."+CHR(13)+ ;
                      "Presiona una Tecla para SALIR..." TO mmSj
                DO poNmsj
                mkEy = INKEY(0)
                RETURN
           OTHERWISE
                STORE SUBSTR(DTOC(f2800fem), 7, 4) TO vaNo
                STORE SUBSTR(DTOC(f2800fem), 4, 2) TO vmEs
                STORE SUBSTR(DTOC(f2800fem), 1, 2) TO vdIa
                SELECT kaRdex
                SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+"2"+"1"+vtDo+vsEr+vdOc
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE 0 TO vpRm
                          SELECT deT_sali
                          SKIP
                          LOOP
                          STORE "Error en GS:"+vsEr+"-"+vdOc+ ;
                                " no está en el KARDEX..."+CHR(13)+ ;
                                "Correr Arreglo de Stock..."+CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     CASE f2990prm<0
                          STORE "Error en GS:"+vsEr+"-"+vdOc+ ;
                                " con Costo Promedio NEGATIVO..."+CHR(13)+ ;
                                "Verificar y Correr Arreglo de Stocks..."+ ;
                                CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     OTHERWISE
                          STORE f2990prm TO vpRm
                ENDCASE
                SELECT deT_sali
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          = INKEY(0.01)
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2801cos WITH vpRm
                UNLOCK
                STORE f2801tgi TO vtGi
                STORE f2801sgi TO vsGi
                STORE f2801ngi TO vnGi
                STORE f2801cdg TO vcDg
                STORE f2801cos*f2801can TO vtOt
                IF LEN(ALLTRIM(vcDg))<>0
                     SELECT prOductos
                     SEEK ALLTRIM(vcDg)+"*"
                     DO veR_lock
                     IF  .NOT. EOF()
                          SELECT deT_ingr
                          SEEK ALLTRIM(vcDg)+"*"+vtGi+vsGi+vnGi
                          DO veR_lock
                          IF EOF()
                               STORE "Error en GS:"+vsEr+"-"+vdOc+ ;
                                     " no está vinculada a GI:"+vsGi+"-"+ ;
                                     vnGi+CHR(13)+ ;
                                     "Verificar y Correr Arreglo de Stocks..."+ ;
                                     CHR(13)+ ;
                                     "Presiona una Tecla para CONTINUAR..."  ;
                                     TO mmSj
                               DO poNmsj
                               mkEy = INKEY(0)
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                          ELSE
                               STORE ROUND(vtOt/f2701can, 4) TO vcOs
                               STORE f2701ite TO vrEc
                               SEEK ALLTRIM(vcDg)+"*"+vtGi+vsGi+vnGi+ ;
                                    STR(vrEc, 4, 0)
                               IF  .NOT. RLOCK()
                                    DO reG_lock WITH ALLTRIM(vcDg)+"*"+ ;
                                       vtGi+vsGi+vnGi+STR(vrEc, 4, 0)
                                    IF mkEy=k_Esc
                                         WAIT CLEAR
                                         = INKEY(0.01)
                                         RETURN
                                    ENDIF
                               ELSE
                                    RLOCK()
                               ENDIF
                               REPLACE f2701cos WITH vcOs
                               UNLOCK
                               SELECT caB_ingr
                               SEEK vtGi+vsGi+vnGi
                               DO veR_lock
                               IF  .NOT. EOF()
                                    STORE SUBSTR(DTOC(f2700fem), 7, 4) TO vaNo
                                    STORE SUBSTR(DTOC(f2700fem), 4, 2) TO vmEs
                                    STORE SUBSTR(DTOC(f2700fem), 1, 2) TO vdIa
                                    SELECT kaRdex
                                    SEEK ALLTRIM(vcDg)+"*"+vaNo+vmEs+vdIa+ ;
                                     "1"+"1"+vtGi+vsGi+vnGi
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH ALLTRIM(vcDg)+ ;
                                          "*"+vaNo+vmEs+vdIa+"1"+"1"+vtGi+ ;
                                          vsGi+vnGi
                                         IF mkEy=k_Esc
                                              WAIT CLEAR
                                              = INKEY(0.01)
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    REPLACE f2990cos WITH vcOs
                                    UNLOCK
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
      ENDCASE
      SELECT deT_sali
      SKIP
      DO veR_lock
 ENDDO
 SELECT caB_sali
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2800tdo TO vtDo
      STORE f2800ser TO vsEr
      STORE f2800doc TO vdOc
      WAIT WINDOW NOCLEAR NOWAIT "Totalizando "+vtDo+":"+vsEr+"-"+vdOc
      IF f2800est="9"
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      SELECT deT_sali
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      STORE 0 TO ttOt
      DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
           STORE f2801cos*f2801can TO vtOt
           STORE ttOt+vtOt TO ttOt
           SKIP
           DO veR_lock
      ENDDO
      SELECT caB_sali
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
      REPLACE f2800cos WITH ttOt
      UNLOCK
      SKIP
      DO veR_lock
 ENDDO
 SELECT deT_ingr
 DO orD_0000a WITH "2701", "A", "F2701DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
PROCEDURE P00_9994a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 12.6 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Costear Guías de Salida y Guías de Ingreso vinculadas"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLscz
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+01.5,mCO0+03 Say "Este proceso pone los Costos promedios del Kardex en las Guías de Salida y si ésta " Font "&mLetAri",11 Style "NQ"
 @mFI0+03.0,mCO0+03 Say "tiene una Guía de Ingreso Vinculada la Costea."                                      Font "&mLetAri",11 Style "NQ"
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
PROCEDURE Clp_9994a
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
PROCEDURE Hl1_9994a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pone los costos en las Guías de Salida e Ingreso que"
 @ pfIl+01, 02 SAY  ;
   "estén vinculadas. Estos son los calculados, para efectos de Kardex"
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
 RELEASE vcOd, vtDo, vsEr, vdOc, vdIa, vmEs, vaNo, vpRm, vtGi, vsGi, vnGi,  ;
         vcDg, vtPp
 RELEASE vtOt, ttOt, vcOs, vrEc
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
