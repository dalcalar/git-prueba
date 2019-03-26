 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "9214", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Almacenes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9214COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Departamentos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9114DPT
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "9115", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Distritos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9115DIS
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vcOd, ccOd, vnOm, vdIr, cdIr, vdIs, cdIs, vdEp,  ;
        cdEp, vrUc
 PUBLIC vtEl, vsR1, vsR2, vsR3, vuBi, vtB1, vlIn, vpAg, vfBi, vcBi
 STORE SPACE(11) TO vrUc
 STORE SPACE(20) TO vtEl
 STORE SPACE(04) TO vcOd, ccOd
 STORE SPACE(50) TO vdIs, vdEp
 STORE SPACE(70) TO vnOm, vdIr
 STORE "001" TO vsR1, vsR2, vsR3
 STORE 00 TO viT1
 STORE 03 TO muLt
 STORE 99 TO mkEy
 STORE 19 TO muFi
 STORE 96 TO muCo
 STORE 01 TO viTe, vuBi
 SET READBORDER ON
 SELECT alMacenes
 DO p00_9214a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9214a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9214a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                SELECT alMacenes
                = INKEY(0.01)
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9214", "U", "F9214NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9214", "U", "F9214COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9214cod TO vcOd
                     @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9214a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9214a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_p
                SELECT alMacenes
                GOTO TOP
                IF BOF()
                     STORE "No hay datos por imprimir..." TO mmSj
                ELSE
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9214", "U", "F9214NOM", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9214a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9214", "U", "F9214COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=10
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                SELECT alMacenes
                GOTO TOP
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9214a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                SELECT alMacenes
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9214cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9214a
                          DO diS_9214a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                SELECT alMacenes
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9214cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9214a
                          DO diS_9214a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SELECT alMacenes
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vcOd=f9214cod
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9214cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9214a
                          DO diS_9214a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SELECT alMacenes
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9214cod>=vcOd
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9214cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9214a
                          DO diS_9214a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=10
                          DO grA_9214a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE 99 TO mkEy
                     ELSE
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 10 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 10 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO grA_9214a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vcOd
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=1
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe<>1
                     DO prEsiona WITH "4", "BOT_UTI2", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(96) Font "&mLetRom",9 Style "BQ" Size 1,96
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+09.8 Say "ES DE 4 DÍGITOS, NO PUEDE SER CEROS, NO PUEDE ESTAR VACÍO..."         Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+02.1 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."    Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+00.0 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+00.0 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+00.0 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
                CASE viTe=6
                     @mMF2,mMC2+14.1 Say "CAMPO DE 11 DÍGITOS, PUEDE ESTAR VACÍO SI NO SE USA..."               Font "&mLetRom",9 Style "BQ"
                CASE viTe=7
                     @mMF2,mMC2+00.0 Say "CAMPO DE 20 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
                CASE viTe=8
                     @mMF2,mMC2+20.8 Say "ES DE 3 DÍGITOS, NO PUEDE ESTAR VACÍO..."                             Font "&mLetRom",9 Style "BQ"
                CASE viTe=9
                     @mMF2,mMC2+20.8 Say "ES DE 3 DÍGITOS, NO PUEDE ESTAR VACÍO..."                             Font "&mLetRom",9 Style "BQ"
                CASE viTe=10
                     @mMF2,mMC2+20.8 Say "ES DE 3 DÍGITOS, NO PUEDE ESTAR VACÍO..."                             Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+00.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999" Color ,&mColBlN
           CASE viTe=2
                @mFI0+03.5,mCO0+28 Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.1 Color ,&mColBlN Pict "99999999999"
           CASE viTe=3
                @mFI0+05.0,mCO0+28 Edit vNOM Font "&mLetAri",9 Style "NQ"  Size 1,62,70
           CASE viTe=4
                @mFI0+06.5,mCO0+28 Edit vDIR Font "&mLetAri",9 Style "NQ"  Size 1,62,70
           CASE viTe=5
                @mFI0+08.0,mCO0+28 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,27.3,50
           CASE viTe=6
                @mFI0+09.5,mCO0+28 Edit vDEP Font "&mLetAri",9 Style "NQ" Size 1,27.3,50
           CASE viTe=7
                @mFI0+11.0,mCO0+28 Get  vTEL Font "&mLetAri",9 Style "NQ" Size 1,22 Color ,&mColBlN Pict "!!!!!!!!!!!!!!!!!!!!"
           CASE viTe=8
                @mFI0+12.5,mCO0+40 Get  vSR1 Font "&mLetAri",9 Style "NQ" Size 1,4.1 Color ,&mColBlN Pict "999"
           CASE viTe=9
                @mFI0+14.0,mCO0+40 Get  vSR2 Font "&mLetAri",9 Style "NQ" Size 1,4.1 Color ,&mColBlN Pict "999"
           CASE viTe=10
                @mFI0+15.5,mCO0+40 Get  vSR3 Font "&mLetAri",9 Style "NQ" Size 1,4.1 Color ,&mColBlN Pict "999"
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_0000a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. AT(" ", vcOd)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vcOd="0000"
           STORE "Código no puede ser 0000..." TO mmSj
      CASE viTe=1
           SELECT alMacenes
           SEEK vcOd
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE 1 TO vuBi
                STORE SPACE(11) TO vrUc
                STORE SPACE(20) TO vtEl
                STORE SPACE(50) TO vdIs, vdEp
                STORE SPACE(70) TO vnOm, vdIr
                STORE "001" TO vsR1, vsR2, vsR3
           ELSE
                DO muE_9214a
           ENDIF
           IF vcOd<>ccOd .OR. LEN(ALLTRIM(ccOd))=0
                DO diS_9214a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vrUc))<>0
           DO vaL_ruc IN FAC0000A WITH vrUc
           IF mkEy=99
                RETURN
           ENDIF
           IF msUn="A" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa .AND.  ;
              LEN(ALLTRIM(vdIr))=0
                WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
                STORE vdIr TO cdIr
                STORE vdIs TO cdIs
                STORE vdEp TO cdEp
                DO veR_ruc IN FAC0000A WITH "1", vrUc
                DO CASE
                     CASE mkEy=1733 .OR. mkEy<=-204
                          STORE cdIr TO vdIr
                          STORE cdIs TO vdIs
                          STORE cdEp TO vdEp
                     OTHERWISE
                          DO leN_0000a IN FAC0000A WITH "4"
                          DO leN_0000a IN FAC0000A WITH "5"
                          DO leN_0000a IN FAC0000A WITH "C"
                          DO leN_0000a IN FAC0000A WITH "D"
                          DO diS_9214a
                ENDCASE
           ENDIF
           SELECT alMacenes
      CASE viTe=3 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre no puede estar vacío..." TO mmSj
      CASE viTe=8 .AND. LEN(ALLTRIM(vsR1))=0
           STORE "Serie no puede estar vacío..." TO mmSj
      CASE viTe=9 .AND. LEN(ALLTRIM(vsR2))=0
           STORE "Serie no puede estar vacío..." TO mmSj
      CASE viTe=10 .AND. LEN(ALLTRIM(vsR3))=0
           STORE "Serie no puede estar vacío..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9214a
 SELECT alMacenes
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9214cod TO vcOd
 STORE f9214nom TO vnOm
 STORE f9214dir TO vdIr
 STORE f9214dis TO vdIs
 STORE f9214dpt TO vdEp
 STORE f9214ruc TO vrUc
 STORE f9214tel TO vtEl
 STORE f9214sr1 TO vsR1
 STORE f9214sr2 TO vsR2
 STORE f9214sr3 TO vsR3
 STORE f9214ubi TO vuBi
ENDPROC
*
PROCEDURE Dis_9214a
 DO coLbln
 @mFI0+03.5,mCO0+28 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.1 Pict "99999999999"
 @mFI0+05.0,mCO0+28 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,62   Pict "@S70"
 @mFI0+06.5,mCO0+28 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,62   Pict "@S70"
 @mFI0+08.0,mCO0+28 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,27.3 Pict "@S30"
 @mFI0+09.5,mCO0+28 Say vDEP Font "&mLetAri",9 Style "NQ" Size 1,27.3 Pict "@S30"
 @mFI0+11.0,mCO0+28 Say vTEL Font "&mLetAri",9 Style "NQ" Size 1,22   Pict "!!!!!!!!!!!!!!!!!!!!"
 @mFI0+12.5,mCO0+40 Say vSR1 Font "&mLetAri",9 Style "NQ" Size 1,4.1  Pict "999"
 @mFI0+14.0,mCO0+40 Say vSR2 Font "&mLetAri",9 Style "NQ" Size 1,4.1  Pict "999"
 @mFI0+15.5,mCO0+40 Say vSR3 Font "&mLetAri",9 Style "NQ" Size 1,4.1  Pict "999"
 @mFI0+17.0,mCO0+28 Get vUBI Font "&mLetAri",9 Style "NQ" Size 1,15   Function "*RHT Almacén propio;Otro Almacén" Default vUBI
 READ TIMEOUT 0.01
 STORE vcOd TO ccOd
ENDPROC
*
PROCEDURE Gra_9214a
 DO grAbar WITH "1"
 SELECT alMacenes
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f9214cod WITH vcOd
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vcOd
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9214nom WITH ALLTRIM(vnOm)
 REPLACE f9214dir WITH ALLTRIM(vdIr)
 REPLACE f9214dis WITH ALLTRIM(vdIs)
 REPLACE f9214dpt WITH ALLTRIM(vdEp)
 REPLACE f9214ruc WITH ALLTRIM(vrUc)
 REPLACE f9214tel WITH ALLTRIM(vtEl)
 REPLACE f9214sr1 WITH ALLTRIM(vsR1)
 REPLACE f9214sr2 WITH ALLTRIM(vsR2)
 REPLACE f9214sr3 WITH ALLTRIM(vsR3)
 REPLACE f9214ubi WITH vuBi
 UNLOCK ALL
 FLUSH
 STORE 00 TO viT1
 STORE 01 TO viTe
 STORE SPACE(04) TO ccOd
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9214a
 SELECT alMacenes
 SEEK vcOd
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vcOd
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9214cod WITH SPACE(04)
 DELETE
 UNLOCK
 FLUSH
 STORE 00 TO viT1
 STORE 01 TO viTe
 STORE SPACE(04) TO ccOd
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9214a
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_9214a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9214a
 PRIVATE ptAm
 STORE 06 TO mcLn
 STORE 100 TO ptAm
 STORE 00 TO vlIn, vpAg
 SELECT alMacenes
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           IF vpAg<>0
                DO paG_0000a WITH ptAm
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           DO caB_0000a WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO cb1_0000a WITH "Almacenes", "PUM9214A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN     Say "Cód"          Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+7   Say "Razón Social" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+59  Say "RUC"          Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+77  Say "Dirección"    Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+123 Say "Distrito"     Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN     Say "Cód"          Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+7   Say "Razón Social" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+61  Say "RUC"          Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+80  Say "Dirección"    Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+125 Say "Distrito"     Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           DO coL_pr1
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN     Say F9214COD        Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+7   Say Lower(F9214NOM) Font "&mLetAri",9 Style "NT" Size 1,39 Pict "@S42"
                     @vLIN,mCLN+57  Say Space(3)        Font "&mLetAri",9 Style "NT" Size 1,2
                     @vLIN,mCLN+59  Say F9214RUC        Font "&mLetAri",9 Style "NT" Size 1,16 Pict "@S11"
                     @vLIN,mCLN+77  Say Lower(F9214DIR) Font "&mLetAri",9 Style "NT" Size 1,33 Pict "@S36"
                     @vLIN,mCLN+121 Say Space(3)        Font "&mLetAri",9 Style "NT" Size 1,2
                     @vLIN,mCLN+123 Say Lower(F9214DIS) Font "&mLetAri",9 Style "NT" Size 1,22 Pict "@S24"
                CASE mpRt="2"
                     @vLIN,mCLN     Say F9214COD        Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+7   Say Lower(F9214NOM) Font "&mLetSwi",9 Style "NT" Size 1,28 Pict "@S32"
                     @vLIN,mCLN+59  Say Space(5)        Font "&mLetSwi",9 Style "NT" Size 1,5
                     @vLIN,mCLN+61  Say F9214RUC        Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+80  Say Lower(F9214DIR) Font "&mLetSwi",9 Style "NT" Size 1,31 Pict "@S34"
                     @vLIN,mCLN+124 Say Space(5)        Font "&mLetSwi",9 Style "NT" Size 1,5
                     @vLIN,mCLN+125 Say Lower(F9214DIS) Font "&mLetSwi",9 Style "NT" Size 1,17 Pict "@S20"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_9214a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+26.9 TO vcBi
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0-10.5,mCO0+31 to mFI0+33,mCO0+mUCO+52 Font "&mLetCou",13 Style "NQ" Prompt Field Substr(F9214NOM,1,48)+" : "+F9214COD Scroll Color Scheme 10  Footer "ALMACENES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Almacenes"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mmC2, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+00.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+00.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(255, ;
   255,255,0,0,0)
 @ mfI0+00.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(255,255,255, ;
   0,0,0)
 @mFI0+00.5,mCO0+2 Say "CÓDIGO:"                   Font "&mLetRom",13 Style "BT"
 @mFI0+03.5,mCO0+6 Say "R.U.C."                    Font "&mLetAri",10 Style "NT"
 @mFI0+05.0,mCO0+6 Say "RAZÓN SOCIAL"              Font "&mLetAri",10 Style "NT"
 @mFI0+06.5,mCO0+6 Say "DIRECCIÓN"                 Font "&mLetAri",10 Style "NT"
 @mFI0+08.0,mCO0+6 Say "Distrito"                  Font "&mLetAri",10 Style "NT"
 @mFI0+09.5,mCO0+6 Say "Departamento"              Font "&mLetAri",10 Style "NT"
 @mFI0+11.0,mCO0+6 Say "Teléfonos"                 Font "&mLetAri",10 Style "NT"
 @mFI0+17.0,mCO0+6 Say "Ubicación"                 Font "&mLetAri",10 Style "NT"
 DO coL_fonaz
 @mFI0+12.5,mCO0+6 Say "Serie de Factura"          Font "&mLetAri",9  Style "NT"
 DO coL_fonve
 @mFI0+14.0,mCO0+6 Say "Serie de Boleta de Venta"  Font "&mLetAri",9  Style "NT"
 DO coL_fonro
 @mFI0+15.5,mCO0+6 Say "Serie de Guía de Remisión" Font "&mLetAri",9  Style "NT"
 DO coLbln
 @mFI0+00.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "9999" Color ,&mColBlN
 @mFI0+03.5,mCO0+28 Get  vRUC Font "&mLetAri",9  Style "NQ" Size 1,15.1 Color ,&mColBlN Pict "99999999999"
 @mFI0+05.0,mCO0+28 Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,62,70
 @mFI0+06.5,mCO0+28 Edit vDIR Font "&mLetAri",9  Style "NQ" Size 1,62,70
 @mFI0+08.0,mCO0+28 Edit vDIS Font "&mLetAri",9  Style "NQ" Size 1,27.3,50
 @mFI0+09.5,mCO0+28 Edit vDEP Font "&mLetAri",9  Style "NQ" Size 1,27.3,50
 @mFI0+11.0,mCO0+28 Get  vTEL Font "&mLetAri",9  Style "NQ" Size 1,22   Color ,&mColBlN Pict "!!!!!!!!!!!!!!!!!!!!"
 @mFI0+12.5,mCO0+40 Get  vSR1 Font "&mLetAri",9  Style "NQ" Size 1,4.1  Color ,&mColBlN Pict "999"
 @mFI0+14.0,mCO0+40 Get  vSR2 Font "&mLetAri",9  Style "NQ" Size 1,4.1  Color ,&mColBlN Pict "999"
 @mFI0+15.5,mCO0+40 Get  vSR3 Font "&mLetAri",9  Style "NQ" Size 1,4.1  Color ,&mColBlN Pict "999"
 @mFI0+17.0,mCO0+28 Get  vUBI Font "&mLetAri",9  Style "NQ" Size 1,15   Function "*RHT Almacén propio;Otro Almacén" Default vUBI
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9214a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.40 .AND. viTe>1
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.20 .AND. viTe>1
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+24.2 .AND.  ;
           mcCc<=mmC1+33
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.8
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.4
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.6
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=mfI0+16.5 .AND. mfIl<=mfI0+17.857 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+24.6 .AND. mcCc<=mcO0+46 .AND. vuBi<>1
           STORE 1 TO vuBi
           @mFI0+17,mCO0+28 Get vUBI Font "&mLetAri",9 Style "NQ" Size 1,15   Function "*RHT Almacén propio;Otro Almacén" Default vUBI
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+16.5 .AND. mfIl<=mfI0+17.857 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+46 .AND. mcCc<=mcO0+64.4 .AND. vuBi<>2
           STORE 2 TO vuBi
           @mFI0+17,mCO0+28 Get vUBI Font "&mLetAri",9 Style "NQ" Size 1,15   Function "*RHT Almacén propio;Otro Almacén" Default vUBI
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.25 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.2 .AND. mcCc<=mcO0+26.8
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.535 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+43.8
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+4.964 .AND. mfIl<=mfI0+6.178 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+90.4
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+6.464 .AND. mfIl<=mfI0+7.678 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+90.4
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+8.035 .AND. mfIl<=mfI0+9.178 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+55.8
           STORE 05 TO ciTx
      CASE mfIl>=mfI0+9.464 .AND. mfIl<=mfI0+10.678 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+55.8
           STORE 06 TO ciTx
      CASE mfIl>=mfI0+10.964 .AND. mfIl<=mfI0+12.107 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+50.8
           STORE 07 TO ciTx
      CASE mfIl>=mfI0+12.393 .AND. mfIl<=mfI0+13.607 .AND. viTe<>8 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+44.8
           STORE 08 TO ciTx
      CASE mfIl>=mfI0+13.893 .AND. mfIl<=mfI0+15.107 .AND. viTe<>9 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+44.8
           STORE 09 TO ciTx
      CASE mfIl>=mfI0+15.393 .AND. mfIl<=mfI0+16.607 .AND. viTe<>10 .AND.  ;
           mcCc>=mcO0+5.8 .AND. mcCc<=mcO0+44.8
           STORE 10 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9214a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los códigos de Almacenes que figurarán en el Siste-"
 @ pfIl+2, 3 SAY "ma."
 @ pfIl+4, 3 SAY  ;
   "Si se quiere actualizar los datos del RUC, la dirección tiene que estar"
 @ pfIl+5, 3 SAY "vacía. Si no lo está solo actualizará la Razón Social."
 STORE pfIl+7 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vcOd, ccOd, vnOm, vdIr, cdIr, vdIs, cdIs, vdEp,  ;
         cdEp, vrUc
 RELEASE vtEl, vsR1, vsR2, vsR3, vuBi, vtB1, vlIn, vpAg, vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
