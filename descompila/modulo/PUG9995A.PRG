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
 SET ORDER TO F2801COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2601COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2400FAC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
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
 SELECT 8
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
 PUBLIC vtDo, vsEr, vdOc, vtDs, vsEs, vdOs, vcDg, tvAl, vaN1, vmE1, vdI1,  ;
        vaNo, vmEs
 PUBLIC vdIa, vpRm, cpRm, vrEc, vcOd, vcAn, vcOs, vtOt, ttOt, vpOr
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_9995a WITH "0"
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
           DO p00_9995a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9995a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9995a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9995a WITH "1"
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
                DO deT_9995a
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
PROCEDURE Det_9995a
 SELECT deT_sali
 DO orD_0000a WITH "2801", "A", "F2801COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_cpra
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOCLEAR NOWAIT f2400tdo+":"+f2400ser+"-"+f2400doc
      IF f2400est="9" .OR. f2400tra<>"2"
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      STORE f2400tdo TO vtDo
      STORE f2400ser TO vsEr
      STORE f2400doc TO vdOc
      STORE f2400tds TO vtDs
      STORE f2400ses TO vsEs
      STORE f2400dos TO vdOs
      STORE f2400cdg TO vcDg
      STORE f2400val TO tvAl
      STORE SUBSTR(DTOC(f2400fin), 7, 4) TO vaN1
      STORE SUBSTR(DTOC(f2400fin), 4, 2) TO vmE1
      STORE SUBSTR(DTOC(f2400fin), 1, 2) TO vdI1
      DO CASE
           CASE LEN(ALLTRIM(vdOs))<>0 .AND. f2400tds="GS"
                SELECT caB_sali
                SEEK vtDs+vsEs+vdOs
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Error en GS:"+vsEs+"-"+vdOs+ ;
                                " no registrada..."+CHR(13)+ ;
                                "Correr Arreglo de Stocks..."+CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     CASE f2800est="9"
                          STORE "Error en GS:"+vsEs+"-"+vdOs+ ;
                                " Cabecera Anulada..."+CHR(13)+ ;
                                "Correr Arreglo de Stocks..."+CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     OTHERWISE
                          STORE SUBSTR(DTOC(f2800fem), 7, 4) TO vaNo
                          STORE SUBSTR(DTOC(f2800fem), 4, 2) TO vmEs
                          STORE SUBSTR(DTOC(f2800fem), 1, 2) TO vdIa
                          SELECT kaRdex
                          SEEK ALLTRIM(vcDg)+"*"+vaNo+vmEs+vdIa+"2"+"1"+ ;
                               vtDs+vsEs+vdOs
                          DO veR_lock
                          DO CASE
                               CASE EOF()
                                    STORE 0 TO vpRm
                                    STORE "Error en GS:"+vsEs+"-"+vdOs+ ;
                                     " no está en el KARDEX..."+CHR(13)+ ;
                                     "Correr Arreglo de Stock..."+CHR(13)+ ;
                                     "Presiona una Tecla para SALIR..." TO mmSj
                                    DO poNmsj
                                    mkEy = INKEY(0)
                                    RETURN
                               CASE f2990prm<0
                                    STORE "Error en GS:"+vsEs+"-"+vdOs+ ;
                                     " con Costo Promedio NEGATIVO..."+ ;
                                     CHR(13)+ ;
                                     "Verificar y Correr Arreglo de Stocks..."+ ;
                                     CHR(13)+ ;
                                     "Presiona una Tecla para SALIR..." TO mmSj
                                    DO poNmsj
                                    mkEy = INKEY(0)
                                    RETURN
                               OTHERWISE
                                    STORE f2990prm TO vpRm
                          ENDCASE
                ENDCASE
                SELECT deT_sali
                SEEK ALLTRIM(vcDg)+"*"+vtDs+vsEs+vdOs
                DO veR_lock
                IF  .NOT. EOF()
                     STORE f2801ite TO vrEc
                     SEEK ALLTRIM(vcDg)+"*"+vtDs+vsEs+vdOs+STR(vrEc, 4, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcDg)+"*"+vtDs+vsEs+ ;
                             vdOs+STR(vrEc, 4, 0)
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
                ENDIF
                SELECT deT_cpra
                SEEK vtDo+vsEr+vdOc
                DO veR_lock
                DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc= ;
                   vtDo+vsEr+vdOc
                     STORE f2401ite TO vrEc
                     STORE f2401cod TO vcOd
                     STORE f2401can TO vcAn
                     STORE f2401pre TO vcOs
                     STORE vcAn*vcOs TO vtOt
                     STORE ROUND(vtOt/tvAl, 6) TO vpOr
                     STORE vpRm*vpOr TO cpRm
                     STORE ROUND((cpRm+vtOt)/vcAn, 4) TO vcOs
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     REPLACE f2401co1 WITH vcOs
                     UNLOCK
                     SELECT kaRdex
                     SEEK ALLTRIM(vcOd)+"*"+vaN1+vmE1+vdI1+"1"+"1"+vtDo+ ;
                          vsEr+vdOc
                     DO veR_lock
                     IF  .NOT. EOF()
                          SEEK ALLTRIM(vcOd)+"*"+vaN1+vmE1+vdI1+"1"+"1"+ ;
                               vtDo+vsEr+vdOc
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH ALLTRIM(vcOd)+"*"+vaN1+ ;
                                  vmE1+vdI1+"1"+"1"+vtDo+vsEr+vdOc
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
                     SELECT deT_cpra
                     SKIP
                     DO veR_lock
                ENDDO
           CASE LEN(ALLTRIM(vdOs))<>0 .AND. f2400tds="GR"
                SELECT caB_remi
                SEEK vtDs+vsEs+vdOs
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Error en GR:"+vsEs+"-"+vdOs+ ;
                                " no registrada..."+CHR(13)+ ;
                                "Correr Arreglo de Stocks..."+CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     CASE f2600est="9"
                          STORE "Error en GR:"+vsEs+"-"+vdOs+ ;
                                " Cabecera Anulada..."+CHR(13)+ ;
                                "Correr Arreglo de Stocks..."+CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     OTHERWISE
                          STORE SUBSTR(DTOC(f2600fem), 7, 4) TO vaNo
                          STORE SUBSTR(DTOC(f2600fem), 4, 2) TO vmEs
                          STORE SUBSTR(DTOC(f2600fem), 1, 2) TO vdIa
                          SELECT kaRdex
                          SEEK ALLTRIM(vcDg)+"*"+vaNo+vmEs+vdIa+"2"+"1"+ ;
                               vtDs+vsEs+vdOs
                          DO veR_lock
                          DO CASE
                               CASE EOF()
                                    STORE 0 TO vpRm
                                    STORE "Error en GR:"+vsEs+"-"+vdOs+ ;
                                     " no está en el KARDEX..."+CHR(13)+ ;
                                     "Correr Arreglo de Stock..."+CHR(13)+ ;
                                     "Presiona una Tecla para SALIR..." TO mmSj
                                    DO poNmsj
                                    mkEy = INKEY(0)
                                    RETURN
                               CASE f2990prm<0
                                    STORE "Error en GR:"+vsEs+"-"+vdOs+ ;
                                     " con Costo Promedio NEGATIVO..."+ ;
                                     CHR(13)+ ;
                                     "Verificar y Correr Arreglo de Stocks..."+ ;
                                     CHR(13)+ ;
                                     "Presiona una Tecla para SALIR..." TO mmSj
                                    DO poNmsj
                                    mkEy = INKEY(0)
                                    RETURN
                               OTHERWISE
                                    STORE f2990prm TO vpRm
                          ENDCASE
                ENDCASE
                SELECT deT_cpra
                SEEK vtDo+vsEr+vdOc
                DO veR_lock
                DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc= ;
                   vtDo+vsEr+vdOc
                     STORE f2401ite TO vrEc
                     STORE f2401cod TO vcOd
                     STORE f2401can TO vcAn
                     STORE f2401pre TO vcOs
                     STORE vcAn*vcOs TO vtOt
                     STORE ROUND(vtOt/tvAl, 6) TO vpOr
                     STORE vpRm*vpOr TO cpRm
                     STORE ROUND((cpRm+vtOt)/vcAn, 4) TO vcOs
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     REPLACE f2401co1 WITH vcOs
                     UNLOCK
                     SELECT kaRdex
                     SEEK ALLTRIM(vcOd)+"*"+vaN1+vmE1+vdI1+"1"+"1"+vtDo+ ;
                          vsEr+vdOc
                     DO veR_lock
                     IF  .NOT. EOF()
                          SEEK ALLTRIM(vcOd)+"*"+vaN1+vmE1+vdI1+"1"+"1"+ ;
                               vtDo+vsEr+vdOc
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH ALLTRIM(vcOd)+"*"+vaN1+ ;
                                  vmE1+vdI1+"1"+"1"+vtDo+vsEr+vdOc
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
                     SELECT deT_cpra
                     SKIP
                     DO veR_lock
                ENDDO
           CASE LEN(ALLTRIM(vdOs))<>0 .AND. f2400tds="CO"
                SELECT caB_cpra
                DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK vtDs+vsEs+vdOs
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Error en CO:"+vsEs+"-"+vdOs+ ;
                                " no registrada..."+CHR(13)+ ;
                                "Correr Arreglo de Stocks..."+CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     CASE f2400est="9"
                          STORE "Error en CO:"+vsEs+"-"+vdOs+ ;
                                " Cabecera Anulada..."+CHR(13)+ ;
                                "Correr Arreglo de Stocks..."+CHR(13)+ ;
                                "Presiona una Tecla para SALIR..." TO mmSj
                          DO poNmsj
                          mkEy = INKEY(0)
                          RETURN
                     OTHERWISE
                          STORE SUBSTR(DTOC(f2400fin), 7, 4) TO vaNo
                          STORE SUBSTR(DTOC(f2400fin), 4, 2) TO vmEs
                          STORE SUBSTR(DTOC(f2400fin), 1, 2) TO vdIa
                          SELECT kaRdex
                          SEEK ALLTRIM(vcDg)+"*"+vaNo+vmEs+vdIa+"1"+"1"+ ;
                               vtDs+vsEs+vdOs
                          DO veR_lock
                          DO CASE
                               CASE EOF()
                                    STORE 0 TO vpRm
                                    STORE "Error en CO:"+vsEs+"-"+vdOs+ ;
                                     " no está en el KARDEX..."+CHR(13)+ ;
                                     "Correr Arreglo de Stock..."+CHR(13)+ ;
                                     "Presiona una Tecla para SALIR..." TO mmSj
                                    DO poNmsj
                                    mkEy = INKEY(0)
                                    RETURN
                               CASE f2990prm<0
                                    STORE "Error en CO:"+vsEs+"-"+vdOs+ ;
                                     " con Costo Promedio NEGATIVO..."+ ;
                                     CHR(13)+ ;
                                     "Verificar y Correr Arreglo de Stocks..."+ ;
                                     CHR(13)+ ;
                                     "Presiona una Tecla para SALIR..." TO mmSj
                                    DO poNmsj
                                    mkEy = INKEY(0)
                                    RETURN
                               OTHERWISE
                                    STORE f2990prm TO vpRm
                          ENDCASE
                ENDCASE
                SELECT caB_cpra
                SEEK vtDo+vsEr+vdOc
                DO veR_lock
                DO orD_0000a WITH "2400", "A", "F2400FAC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_cpra
                SEEK vtDo+vsEr+vdOc
                DO veR_lock
                DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc= ;
                   vtDo+vsEr+vdOc
                     STORE f2401ite TO vrEc
                     STORE f2401cod TO vcOd
                     STORE f2401can TO vcAn
                     STORE f2401pre TO vcOs
                     STORE vcAn*vcOs TO vtOt
                     STORE ROUND(vtOt/tvAl, 6) TO vpOr
                     STORE vpRm*vpOr TO cpRm
                     STORE ROUND((cpRm+vtOt)/vcAn, 4) TO vcOs
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     REPLACE f2401co1 WITH vcOs
                     UNLOCK
                     SELECT kaRdex
                     SEEK ALLTRIM(vcOd)+"*"+vaN1+vmE1+vdI1+"1"+"1"+vtDo+ ;
                          vsEr+vdOc
                     DO veR_lock
                     IF  .NOT. EOF()
                          SEEK ALLTRIM(vcOd)+"*"+vaN1+vmE1+vdI1+"1"+"1"+ ;
                               vtDo+vsEr+vdOc
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH ALLTRIM(vcOd)+"*"+vaN1+ ;
                                  vmE1+vdI1+"1"+"1"+vtDo+vsEr+vdOc
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
                     SELECT deT_cpra
                     SKIP
                     DO veR_lock
                ENDDO
      ENDCASE
      SELECT caB_cpra
      SKIP
      DO veR_lock
 ENDDO
 SELECT deT_sali
 DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
 WAIT WINDOW NOCLEAR NOWAIT "FIN DE PROCESO..."
 = INKEY(0.05)
 WAIT CLEAR
 STORE k_Tab TO mkEy
ENDPROC
*
PROCEDURE P00_9995a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 12.6 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH  ;
    "Costear Guías de Salida y Compras x Transformaciones vinculadas"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLscz
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+01.5,mCO0+03 Say "Este proceso pone los Costos promedios del Kardex en las Guías de Salida vinculadas" Font "&mLetAri",11 Style "NQ"
 @mFI0+03.0,mCO0+03 Say "con Compras x Transformaciones. Luego Costea la Transformación."                     Font "&mLetAri",11 Style "NQ"
 @mFI0+05.5,mCO0+03 Say "Despues de este proceso hay que correr Arreglo de Documentos y Stock."               Font "&mLetAri",11 Style "NQ"
 DO coLblr
 @mFI0+10.0,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..." Font "&mLetRom",14 Style "BTI"
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9995a
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
PROCEDURE Hl1_9995a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pone los costos en las Guías de Salida vinculadas con"
 @ pfIl+01, 02 SAY  ;
   "Transformaciones. Estos son los calculados, para efectos de Kardex"
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
 RELEASE vtDo, vsEr, vdOc, vtDs, vsEs, vdOs, vcDg, tvAl, vaN1, vmE1, vdI1,  ;
         vaNo, vmEs
 RELEASE vdIa, vpRm, cpRm, vrEc, vcOd, vcAn, vcOs, vtOt, ttOt, vpOr
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
