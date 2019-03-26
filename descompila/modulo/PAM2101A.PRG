 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "2101", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Proveedores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "2102", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sucursal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9210", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9210TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Proveedores vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 PUBLIC viTe, viT1, vcOd, vnOm, vtIp, vnTi, vtDi, vrUc, vsUc, vcRe, vmOn,  ;
        vtOt, vdIr
 PUBLIC vdIs, vdEp, veNt, vdIe, vcT1, vcA1, vcT2, vcA2, vcT3, vcA3, vtL1,  ;
        vtL2, vtL3
 PUBLIC vfA1, vfA2, vfA3, vaN1, vaN2, vaN3, vmAi, vtB1, vtB2, vtB3, veSt,  ;
        viOm, ckEy
 PUBLIC vfBi, vfB1, vfB2, vcBi, vcB1, vcB2, ctDo, csEr, cdOc, vtPo, vfI0,  ;
        vcO0, vcOn
 STORE "0000" TO vcOd
 STORE SPACE(01) TO vtDi
 STORE SPACE(02) TO vtIp
 STORE SPACE(11) TO vrUc
 STORE SPACE(25) TO vdIs, vdIe, vdEp
 STORE SPACE(04) TO vaN1, vaN2, vaN3
 STORE SPACE(70) TO vnOm, vdIr, veNt
 STORE SPACE(30) TO vcA1, vcA2, vcA3, vmAi
 STORE SPACE(50) TO vnTi, vcT1, vcT2, vcT3
 STORE SPACE(16) TO vtL1, vtL2, vtL3, vfA1, vfA2, vfA3
 STORE mmOn TO vmOn
 STORE " " TO vcOn
 STORE "01" TO vsUc
 STORE "1" TO veSt
 STORE 00 TO viT1, vtOt
 STORE 01 TO viTe, viOm, vtPo
 STORE 02 TO vcRe
 STORE 99 TO mkEy
 SELECT tiPos
 STORE f9210tip TO vtIp
 STORE f9210nti TO vnTi
 SELECT prOveedores
 SET READBORDER ON
 DO p00_2101a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2101a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2101a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe=1
                = INKEY(0.01)
                SELECT prOveedores
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Proveedores registrados..." TO mmSj
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
                DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "2101", "A", "F2101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f2101cod TO vcOd
                     @mFI0+0.3,mCO0+18.5 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4 Pict "!!!!"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe>1
                = INKEY(0.01)
                SELECT tiPos
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SELECT prOveedores
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "9210", "U", "F9210NTI", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnTi))
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB2 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "9210", "U", "F9210TIP", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9210tip TO vtIp
                     STORE f9210nti TO vnTi
                     @mFI0+0.5,mCO0+64 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,26 Pict "@S30"
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT prOveedores
                STORE 99 TO mkEy
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2101a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2101a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=4
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
                SELECT prOveedores
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_2101a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del
                SELECT prOveedores
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO CASE
                               CASE f2101est="1"
                                    DO prE_docum WITH  ;
                                       "¿Desea anular este Registro?"
                               CASE f2101est="9"
                                    DO prE_docum WITH  ;
                                       "¿Desea activar este Registro?"
                          ENDCASE
                          IF moPc$"Ss"
                               DO anU_2101a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f2101cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_2101a
                          DO diS_2101a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.3,mCO0+18.5 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4 Pict "!!!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f2101cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_2101a
                          DO diS_2101a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.3,mCO0+18.5 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4 Pict "!!!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF f2101cod=vcOd
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f2101cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_2101a
                          DO diS_2101a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.3,mCO0+18.5 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4 Pict "!!!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f2101cod>=vcOd
                     SKIP -1
                     IF BOF() .OR. EOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f2101cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_2101a
                          DO diS_2101a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.3,mCO0+18.5 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4 Pict "!!!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Clic
                DO grA_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO deT_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down
                DO veR_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=4
                               DO grA_2101a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 1 TO viTe, viT1
                               DO deT_2101a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                DO veR_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99 .AND. viTe<02
                     STORE 02 TO viTe
                     DO veR_2101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF mkEy<>99 .AND. viTe<03
                     STORE 03 TO viTe
                     DO veR_2101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF mkEy<>99
                     STORE 04 TO viTe
                ENDIF
           CASE mkEy=k_Tab
                DO veR_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99 .AND. viTe<02
                     STORE 02 TO viTe
                     DO veR_2101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF mkEy<>99 .AND. viTe<03
                     STORE 03 TO viTe
                     DO veR_2101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF mkEy<>99 .AND. viTe<04
                     STORE 04 TO viTe
                     DO veR_2101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF mkEy<>99
                     DO grA_2101a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 01 TO viTe, viT1
                     DO deT_2101a
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
                CASE viTe=1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
                CASE viTe<>1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF viTe<>1
                DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
           ELSE
                DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
           ENDIF
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,120
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+03 Say "CAMPO DE 4 CARACTERES ALFANUMÉRICOS, NO PUEDE SER 0000, NI TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+17 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."                       Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+12 Say "EL RUC ES DE 11 DÍGITOS, SI SE VA A LLENAR NO PUEDE TENER ESPACIOS VACÍOS..."        Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+41 Say "EL MONTO ES DE 6 ENTEROS..."                                                         Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.3,mCO0+018.5 Get  vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4 Pict "!!!!" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.0,mCO0+027.0 Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,74,70
           CASE viTe=3
                @mFI0+4.5,mCO0+027.0 Get  vRUC Font "&mLetAri",9  Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
           CASE viTe=4
                @mFI0+4.5,mCO0+109.6 Get  vTOT Font "&mLetAri",9  Style "NQ" Size 1,10.3 Pict "999,999"     Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_2101a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=01 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código de Proveedor no puede estar vacío...          "  ;
                 TO mmSj
      CASE viTe=01 .AND. AT(" ", vcOd)<>0
           STORE "Código de Proveedor no puede tener espacios vacíos..."  ;
                 TO mmSj
      CASE viTe=01 .AND. vcOd="0000"
           STORE "Código de Proveedor no puede ser 0000...             "  ;
                 TO mmSj
      CASE viTe=01
           SEEK vcOd
           IF EOF()
                DO coL_fondo
                @mFI0+.4,mCO0+mUCO-13 Say "NUEVO" Font "&LetRom",11 Style "BQ" Size 1,8
                STORE SPACE(11) TO vrUc
                STORE SPACE(01) TO vtDi, vcOn
                STORE SPACE(25) TO vdIs, vdIe, vdEp
                STORE SPACE(04) TO vaN1, vaN2, vaN3
                STORE SPACE(50) TO vcT1, vcT2, vcT3
                STORE SPACE(70) TO vnOm, vdIr, veNt
                STORE SPACE(30) TO vcA1, vcA2, vcA3, vmAi
                STORE SPACE(16) TO vtL1, vtL2, vtL3, vfA1, vfA2, vfA3
                STORE mmOn TO vmOn
                STORE 01 TO viOm, vtPo
                STORE 00 TO vtOt
                STORE 02 TO vcRe
                STORE "01" TO vsUc
                STORE "1" TO veSt
           ELSE
                DO muE_2101a
           ENDIF
           DO diS_2101a
           DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vnTi))=0
           STORE "Tipo de Proveedor no puede estar vacío... " TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre o Razón Social no puede estar vacío... " TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre o Razón Social no puede estar vacío... " TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vrUc))<>0 .AND. AT(" ", vrUc)<>0
           STORE "Si se llena RUC, no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vrUc))=0
      CASE viTe=3 .AND. LEN(ALLTRIM(vrUc))<>0 .AND. viOm=1
           DO vaL_ruc IN FAC0000A WITH vrUc
           IF mkEy=99
                RETURN
           ENDIF
           SELECT prOveedores
           STORE mkEy TO ckEy
           DO orD_0000a WITH "2101", "A", "F2101RUC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK vrUc
           IF  .NOT. EOF() .AND. ALLTRIM(f2101cod)+"*"<>ALLTRIM(vcOd)+"*"
                STORE "RUC ya registrado..." TO mmSj
           ENDIF
           DO orD_0000a WITH "2101", "A", "F2101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF LEN(ALLTRIM(mmSj))=0
                SEEK vcOd
                IF msUn="A" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
                     DO veR_ruc IN FAC0000A WITH "1", vrUc
                     IF mkEy=1733 .OR. mkEy<=-204
                     ELSE
                          DO leN_0000a IN FAC0000A WITH "4"
                          DO leN_0000a IN FAC0000A WITH "5"
                          DO leN_0000a IN FAC0000A WITH "C"
                          DO leN_0000a IN FAC0000A WITH "D"
                          SELECT suCursal
                          SEEK vcOd+"01"
                          IF EOF()
                               STORE "01" TO vsUc
                               DO grA_2101b IN PAM2101B
                               DO grA_2101a
                               STORE 3 TO viTe, viT1
                          ENDIF
                          DO diS_2101a
                     ENDIF
                ENDIF
           ENDIF
           STORE ckEy TO mkEy
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_2101a
 DO coL_fondo
 IF f2101est="9"
      @mFI0+.4,mCO0+mUCO-13 Say "ANULAD" Font "&LetRom",11 Style "BQ" Size 1,8
 ELSE
      @mFI0+.4,mCO0+mUCO-13 Say "EXISTE" Font "&LetRom",11 Style "BQ" Size 1,8
 ENDIF
 STORE f2101cod TO vcOd
 STORE f2101nom TO vnOm
 STORE f2101tdi TO vtDi
 STORE f2101ruc TO vrUc
 STORE f2101tip TO vtIp
 STORE f2101tpo TO vtPo
 STORE f2101cre TO vcRe
 STORE f2101mon TO vmOn
 STORE f2101tot TO vtOt
 STORE f2101con TO vcOn
 STORE f2101est TO veSt
 STORE 02 TO viOm
 IF vtPo=0
      STORE 1 TO vtPo
 ENDIF
 SELECT tiPos
 SEEK vtIp
 IF EOF()
      STORE "Tipo de Proveedor ha sido borrado..." TO vnTi
 ELSE
      STORE f9210nti TO vnTi
 ENDIF
 SELECT suCursal
 SEEK vcOd
 IF EOF()
      STORE "01" TO vsUc
      STORE SPACE(70) TO vdIr, veNt
      STORE SPACE(25) TO vdIs, vdIe, vdEp
      STORE SPACE(04) TO vaN1, vaN2, vaN3
      STORE SPACE(50) TO vcT1, vcT2, vcT3
      STORE SPACE(30) TO vcA1, vcA2, vcA3, vmAi
      STORE SPACE(16) TO vtL1, vtL2, vtL3, vfA1, vfA2, vfA3
 ELSE
      SEEK vcOd+vsUc
      IF EOF()
           SEEK vcOd
      ENDIF
      DO muE_2101b IN PAM2101B
 ENDIF
 SELECT prOveedores
ENDPROC
*
PROCEDURE Gra_2101a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT prOveedores
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f2101cod WITH vcOd
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
 REPLACE f2101tip WITH vtIp
 REPLACE f2101nom WITH vnOm
 REPLACE f2101tdi WITH vtDi
 REPLACE f2101ruc WITH vrUc
 REPLACE f2101tpo WITH vtPo
 REPLACE f2101cre WITH vcRe
 REPLACE f2101mon WITH vmOn
 REPLACE f2101tot WITH vtOt
 REPLACE f2101con WITH vcOn
 REPLACE f2101est WITH "1"
 REPLACE f2101usu WITH muSu
 REPLACE f2101maq WITH mmAq
 REPLACE f2101dat WITH DATE()
 REPLACE f2101tim WITH TIME()
 UNLOCK ALL
 FLUSH
 SELECT prOveedores
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_2101a
 SEEK vcOd
 IF EOF()
      STORE "Código de Proveedor no registrado..." TO mmSj
      RETURN
 ENDIF
 = INKEY(0.01)
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
 REPLACE f2101cod WITH SPACE(04)
 DELETE
 SELECT suCursal
 DO WHILE .T.
      SEEK vcOd
      IF EOF()
           EXIT
      ENDIF
      STORE f2102suc TO vsUc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vcOd+vsUc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2102cod WITH SPACE(04)
      REPLACE f2102suc WITH SPACE(02)
      DELETE
 ENDDO
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 SELECT prOveedores
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Anu_2101a
 SEEK vcOd
 IF EOF()
      STORE "Código de Proveedor no registrado..." TO mmSj
      RETURN
 ENDIF
 = INKEY(0.01)
 DO CASE
      CASE veSt="1"
           DO grAbar WITH "3"
      CASE veSt="9"
           DO grAbar WITH "4"
 ENDCASE
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
 DO CASE
      CASE veSt="1"
           REPLACE f2101est WITH "9"
      CASE veSt="9"
           REPLACE f2101est WITH "1"
 ENDCASE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Det_2101a
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT suCursal
 DO paM2101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prOveedores
 DO prEsiona WITH "3", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 = INKEY(0.01)
ENDPROC
*
PROCEDURE P00_2101a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 04 TO vfI0
 STORE 36 TO vcO0
 STORE 28 TO muFi
 STORE 165.2 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0-1.4 TO mfI0
 STORE (mwCo-125)/2 TO mmC2
 STORE mfI0+muFi+2.1 TO mmF2
 STORE mfI0+00.3 TO vfBi
 STORE mcO0+31.2 TO vcBi
 STORE mfI0+vfI0+6.45 TO vfB1
 STORE mcO0+21.50 TO vcB1
 STORE mfI0+0.45 TO vfB2
 STORE mcO0+90.80 TO vcB2
 STORE 00 TO viT1
 DO CASE
      CASE mrEs="3"
           Define Popup vTB1 from mFI0-9.0,mCO0+36 to mFI0+mUFI+14,mCO0+157 Font "&mLetCou",13 Style "NQU" Prompt Field F2101NOM+" - "+F2101COD Scroll Color Scheme 10 Footer "CONSULTA DE PROVEEDORES"
           Define Popup vTB2 from mFI0+1.7,mCO0+40 to mFI0+mUFI+14,mCO0+94 Font "&mLetAri",13 Style "NQ" Prompt Field F9210NTI Scroll Color Scheme 10 Footer "CONSULTA DE TIPOS DE PROVEEDORES"
           Define Popup vTB3 from mFI0+vFI0+6.0,mCO0+27 to mFI0+mUFI+14,mCO0+mUCO Font "&mLetAri",13 Style "NQ" Prompt Field F2102SUC+": "+AllTrim(F2102DIR)+", "+AllTrim(F2102DIS) Scroll Color Scheme 10 Footer "CONSULTA DE SUCURSALES"
      OTHERWISE
           Define Popup vTB1 from mFI0-9.0,mCO0+36 to mFI0+mUFI+14,mCO0+157 Font "&mLetCou",13 Style "NQU" Prompt Field F2101NOM+" - "+F2101COD Scroll Color Scheme 10 Footer "CONSULTA DE PROVEEDORES"
           Define Popup vTB2 from mFI0+1.7,mCO0+40 to mFI0+mUFI+14,mCO0+94 Font "&mLetAri",13 Style "NQ" Prompt Field F9210NTI Scroll Color Scheme 10 Footer "CONSULTA DE TIPOS DE PROVEEDORES"
           Define Popup vTB3 from mFI0+vFI0+6.0,mCO0+27 to mFI0+mUFI+14,mCO0+mUCO Font "&mLetAri",13 Style "NQ" Prompt Field F2102SUC+": "+AllTrim(F2102DIR)+", "+AllTrim(F2102DIS) Scroll Color Scheme 10 Footer "CONSULTA DE SUCURSALES"
 ENDCASE
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 DO tiT_0000a WITH "Mantenimiento de Proveedores"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+5.9, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mfI0+vfI0+5.6, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_beige
 @ mfI0+0.0, mcO0+40 TO mfI0+2.00, mcO0+muCo-15.5 PATTERN 1
 @ mfI0+0.1, mcO0+01 TO mfI0+2.00, mcO0+36.4 PATTERN 1 COLOR SCHEME 3
 @ mfI0+0.1, mcO0+01 TO mfI0+0.10, mcO0+36.2 COLOR RGB(0,0,0,0,0,0)
 @ mfI0+0.1, mcO0+01 TO mfI0+2.00, mcO0+1 COLOR RGB(0,0,0,0,0,0)
 @ mfI0+0.0, mcO0+40 TO mfI0, mcO0+muCo-15.5 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.0, mcO0+40 TO mfI0+2.00, mcO0+40 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+vfI0+5.9, mcO0+0.2 TO mfI0+muFi-0.2, mcO0+muCo-0.3 PATTERN 1
 @ mfI0+vfI0+6.2, mcO0+1.0 TO mfI0+vfI0+8.15, mcO0+26.5 PATTERN 1 COLOR  ;
   SCHEME 6
 @ mfI0+vfI0+5.9, mcO0+0.2 TO mfI0+vfI0+5.90, mcO0+muCo-0.3 COLOR RGB(128, ;
   128,128,0,0,0)
 @ mfI0+vfI0+5.9, mcO0+0.2 TO mfI0+muFi-0.2, mcO0+0.2 COLOR RGB(128,128, ;
   128,0,0,0)
 @ mfI0+vfI0+6.2, mcO0+1.0 TO mfI0+vfI0+6.20, mcO0+26.1 COLOR RGB(0,0,0,0,0,0)
 @ mfI0+vfI0+6.2, mcO0+1.0 TO mfI0+vfI0+8.15, mcO0+1 COLOR RGB(0,0,0,0,0,0)
 DO coL_fondo
 @mFI0+00.4,     mCO0+02 Say "CÓDIGO:"             Font "&mLetRom",13 Style "BT"
 @mFI0+00.5,     mCO0+41 Say "Tipo de Proveedor"   Font "&mLetAri",9  Style "BT"
 @mFI0+03.0,     mCO0+01 Say "Nombre/Razón Social" Font "&mLetAri",9  Style "BT"
 @mFI0+04.5,     mCO0+01 Say "R.U.C."              Font "&mLetAri",9  Style "NT"
 @mFI0+04.5,     mCO0+48 Say "Línea de Crédito"    Font "&mLetAri",9  Style "NT"
 @mFI0+04.5,     mCO0+85 Say "Monto"               Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+06.5,mCO0+02 Say "Sucursal:"           Font "&mLetAri",13 Style "NT"
 @mFI0+vFI0+08.5,mCO0+01 Say "Dirección"           Font "&mLetAri",9  Style "BT"
 @mFI0+vFI0+10.0,mCO0+01 Say "Recoger"             Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+11.5,mCO0+01 Say "Contacto-1"          Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+13.0,mCO0+01 Say "Cargo"               Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+14.5,mCO0+01 Say "Contacto-2"          Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+16.0,mCO0+01 Say "Cargo"               Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+17.5,mCO0+01 Say "Contacto-3"          Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+19.0,mCO0+01 Say "Cargo"               Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+11.5,mCO0+52 Say "Teléfono"            Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+11.5,mCO0+90 Say "Anexo"               Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+13.0,mCO0+52 Say "Fax"                 Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+14.5,mCO0+52 Say "Teléfono"            Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+14.5,mCO0+90 Say "Anexo"               Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+16.0,mCO0+52 Say "Fax"                 Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+17.5,mCO0+52 Say "Teléfono"            Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+17.5,mCO0+90 Say "Anexo"               Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+19.0,mCO0+52 Say "Fax"                 Font "&mLetAri",9  Style "NT"
 @mFI0+vFI0+20.5,mCO0+01 Say "e-mail"              Font "&mLetAri",9  Style "NT"
 DO coLbln
 @mFI0+00.3,mCO0+18.5 Get  vCOD Font "&mLetRom",13 Style "BQ" Size 1,8.4 Pict "!!!!" Color ,&mColBlN
 @mFI0+00.5,mCO0+64.0 Edit vNTI Font "&mLetAri",9  Style "NQ" Size 1,26,50
 @mFI0+03.0,mCO0+27.0 Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,74,70
 @mFI0+04.5,mCO0+27.0 Get  vRUC Font "&mLetAri",9  Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
 @mFI0+04.5,mCO0+67.0 Get  vCRE Font "&mLetAri",9  Style "NQ" Default vCRE Function "*RHT Si;No"
 DO CASE
      CASE vcRe=1
           @mFI0+4.5,mCO0+092.6 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
           @mFI0+4.5,mCO0+109.6 Get vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999,999" Color ,&mColBlN
      OTHERWISE
           @mFI0+4.5,mCO0+092.6 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
           @mFI0+4.5,mCO0+109.6 Get vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999,999"           Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
 ENDCASE
 IF miMp=1
      @mFI0+2.1,mCO0+vCO0+111 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT Nacional;Extranjero"
 ENDIF
 @mFI0+vFI0+06.4,mCO0+17.0 Get  vSUC Font "&mLetRom",13 Style "BQ" Size 1,2.5 Pict "99"   Color ,&mColBlN
 @mFI0+vFI0+08.5,mCO0+15.0 Edit vDIR Font "&mLetAri",9  Style "NQ" Size 1,68,70
 @mFI0+vFI0+08.5,mCO0+85.0 Edit vDIS Font "&mLetAri",9  Style "NQ" Size 1,29,25
 @mFI0+vFI0+10.0,mCO0+15.0 Edit vENT Font "&mLetAri",9  Style "NQ" Size 1,68,70
 @mFI0+vFI0+10.0,mCO0+85.0 Edit vDIE Font "&mLetAri",9  Style "NQ" Size 1,29,25
 @mFI0+vFI0+11.5,mCO0+15.0 Edit vCT1 Font "&mLetAri",9  Style "NQ" Size 1,34,50
 @mFI0+vFI0+13.0,mCO0+15.0 Edit vCA1 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @mFI0+vFI0+14.5,mCO0+15.0 Edit vCT2 Font "&mLetAri",9  Style "NQ" Size 1,34,50
 @mFI0+vFI0+16.0,mCO0+15.0 Edit vCA2 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @mFI0+vFI0+17.5,mCO0+15.0 Edit vCT3 Font "&mLetAri",9  Style "NQ" Size 1,34,50
 @mFI0+vFI0+19.0,mCO0+15.0 Edit vCA3 Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @mFI0+vFI0+20.5,mCO0+15.0 Edit vMAI Font "&mLetAri",9  Style "NQ" Size 1,34,30
 @mFI0+vFI0+11.5,mCO0+64.0 Get  vTL1 Font "&mLetAri",9  Style "NQ" Size 1,23  Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
 @mFI0+vFI0+11.5,mCO0+99.5 Get  vAN1 Font "&mLetAri",9  Style "NQ" Size 1,05  Pict "9999"             Color ,&mColBlN
 @mFI0+vFI0+13.0,mCO0+64.0 Get  vFA1 Font "&mLetAri",9  Style "NQ" Size 1,23  Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
 @mFI0+vFI0+14.5,mCO0+64.0 Get  vTL2 Font "&mLetAri",9  Style "NQ" Size 1,23  Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
 @mFI0+vFI0+14.5,mCO0+99.5 Get  vAN2 Font "&mLetAri",9  Style "NQ" Size 1,05  Pict "9999"             Color ,&mColBlN
 @mFI0+vFI0+16.0,mCO0+64.0 Get  vFA2 Font "&mLetAri",9  Style "NQ" Size 1,23  Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
 @mFI0+vFI0+17.5,mCO0+64.0 Get  vTL3 Font "&mLetAri",9  Style "NQ" Size 1,23  Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
 @mFI0+vFI0+17.5,mCO0+99.5 Get  vAN3 Font "&mLetAri",9  Style "NQ" Size 1,05  Pict "9999"             Color ,&mColBlN
 @mFI0+vFI0+19.0,mCO0+64.0 Get  vFA3 Font "&mLetAri",9  Style "NQ" Size 1,23  Pict "!!!!!!!!!!!!!!!!" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF viTe<>1
      DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 ELSE
      DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dis_2101a
 DO coLbln
 @mFI0+0.5,mCO0+64 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,26 Pict "@S30"
 @mFI0+3.0,mCO0+27 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,74 Pict "@S70"
 @mFI0+4.5,mCO0+27 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999"
 @mFI0+4.5,mCO0+67 Get vCRE Font "&mLetAri",9 Style "NQ" Default vCRE Function "*RHT Si;No"
 IF miMp=1
      @mFI0+2.1,mCO0+vCO0+111 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT Nacional;Extranjero"
 ENDIF
 DO CASE
      CASE vcRe=1
           @mFI0+4.5,mCO0+092.6 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
           @mFI0+4.5,mCO0+109.6 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999,999"
      OTHERWISE
           @mFI0+4.5,mCO0+092.6 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
           @mFI0+4.5,mCO0+109.6 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999,999" Color RGB(120,120,120,220,213,199)
 ENDCASE
 READ TIMEOUT 0.01
 DO diS_2101b IN PAM2101B
ENDPROC
*
PROCEDURE Clp_2101a
 = INKEY(0.05)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+2.6 .AND.  ;
           mcCc<=mmC1+17.60 .AND. viTe>01
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+17.6 .AND.  ;
           mcCc<=mmC1+33.30 .AND. viTe>01
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.80
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.40
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.60
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mfI0+4.399 .AND. mfIl<=mfI0+5.542 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+66.40 .AND. mcCc<=mcO0+73.00 .AND. vcRe<>1
           STORE 1 TO vcRe
           @mFI0+4.5,mCO0+067.0 Get vCRE Font "&mLetAri",9 Style "NQ" Default vCRE Function "*RHT Si;No"
           @mFI0+4.5,mCO0+092.6 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
           @mFI0+4.5,mCO0+109.6 Get vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999,999" Color ,&mColBlN
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.399 .AND. mfIl<=mfI0+5.542 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+73.00 .AND. mcCc<=mcO0+80.80 .AND. vcRe<>2
           STORE 2 TO vcRe
           @mFI0+4.5,mCO0+067.0 Get vCRE Font "&mLetAri",9 Style "NQ" Default vCRE Function "*RHT Si;No"
           @mFI0+4.5,mCO0+092.6 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
           @mFI0+4.5,mCO0+109.6 Get vTOT Font "&mLetAri",9 Style "NQ" Size 1,10.3 Pict "999,999"           Color ,,,,,,,,,RGB(120,120,120,220,213,199) Disable
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.399 .AND. mfIl<=mfI0+5.542 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+92.20 .AND. mcCc<=mcO0+99.60 .AND. vmOn<>1 .AND. vcRe=1
           STORE 1 TO vmOn
           @mFI0+4.5,mCO0+92.6 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.399 .AND. mfIl<=mfI0+5.542 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+99.60 .AND. mcCc<=mcO0+108.6 .AND. vmOn<>2 .AND. vcRe=1
           STORE 2 TO vmOn
           @mFI0+4.5,mCO0+92.6 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.042 .AND. mfIl<=mfI0+3.114 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+vcO0+110.4 .AND. mcCc<=mcO0+vcO0+125.2 .AND. miMp=1  ;
           .AND. vtPo<>1
           STORE 1 TO vtPo
           @mFI0+2.1,mCO0+vCO0+111 Get vTPO Font "&mLetAri",9  Style "NQ" Default vTPO Function "*RVT Nacional;Extranjero"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.114 .AND. mfIl<=mfI0+4.114 .AND. viTe>1 .AND.  ;
           mcCc>=mcO0+vcO0+110.4 .AND. mcCc<=mcO0+vcO0+125.2 .AND. miMp=1  ;
           .AND. vtPo<>2
           STORE 2 TO vtPo
           @mFI0+2.1,mCO0+vCO0+111 Get vTPO Font "&mLetAri",9  Style "NQ" Default vTPO Function "*RVT Nacional;Extranjero"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           IF viTe=01
                DO veR_2101a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=mfI0 .AND. mfIl<=mfI0+1.864 .AND. viTe<>01 .AND. mcCc>= ;
           mcO0 .AND. mcCc<=mcO0+35.90
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.964 .AND. mfIl<=mfI0+4.178 .AND. viTe<>02 .AND.  ;
           mcCc>=mcO0 .AND. mcCc<=mcO0+102.2
           IF viTe=01
                DO veR_2101a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.535 .AND. mfIl<=mfI0+5.678 .AND. viTe<>03 .AND.  ;
           mcCc>=mcO0 .AND. mcCc<=mcO0+39.2
           IF viTe=01
                DO veR_2101a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy<>99 .AND. viTe<=02
                STORE 02 TO viTe
                DO veR_2101a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy<>99
                STORE 03 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.535 .AND. mfIl<=mfI0+5.678 .AND. viTe<>04 .AND.  ;
           mcCc>=mcO0+109.2 .AND. mcCc<=mcO0+120.8 .AND. vcRe=1
           IF viTe=01
                DO veR_2101a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy<>99 .AND. viTe<=02
                STORE 02 TO viTe
                DO veR_2101a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy<>99 .AND. viTe<=03
                STORE 03 TO viTe
                DO veR_2101a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF mkEy<>99
                STORE 04 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+vfI0+6.221 .AND. mfIl<=mfI0+vfI0+8.078 .AND. mcCc>= ;
           mcO0+0.9 .AND. mcCc<=mcO0+26.3 .AND. viOm=02
           STORE 01 TO ciTx
      CASE mfIl>=mfI0+vfI0+8.485 .AND. mfIl<=mfI0+vfI0+9.65 .AND. mcCc>= ;
           mcO0+0.3 .AND. mcCc<=mcO0+83.3 .AND. viOm=02
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+vfI0+8.485 .AND. mfIl<=mfI0+vfI0+9.65 .AND. mcCc>= ;
           mcO0+84.7 .AND. mcCc<=mcO0+109.3 .AND. viOm=02
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+vfI0+9.935 .AND. mfIl<=mfI0+vfI0+11.15 .AND. mcCc>= ;
           mcO0+0.3 .AND. mcCc<=mcO0+83.3 .AND. viOm=02
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+vfI0+9.935 .AND. mfIl<=mfI0+vfI0+11.15 .AND. mcCc>= ;
           mcO0+84.7 .AND. mcCc<=mcO0+109.3 .AND. viOm=02
           STORE 05 TO ciTx
      CASE mfIl>=mfI0+vfI0+11.507 .AND. mfIl<=mfI0+vfI0+12.65 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viOm=02
           STORE 06 TO ciTx
      CASE mfIl>=mfI0+vfI0+12.935 .AND. mfIl<=mfI0+vfI0+14.078 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viOm=02
           STORE 07 TO ciTx
      CASE mfIl>=mfI0+vfI0+14.435 .AND. mfIl<=mfI0+vfI0+15.578 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viOm=02
           STORE 08 TO ciTx
      CASE mfIl>=mfI0+vfI0+15.935 .AND. mfIl<=mfI0+vfI0+17.15 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viOm=02
           STORE 09 TO ciTx
      CASE mfIl>=mfI0+vfI0+17.435 .AND. mfIl<=mfI0+vfI0+18.578 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viOm=02
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+vfI0+19.007 .AND. mfIl<=mfI0+vfI0+20.15 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viOm=02
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+vfI0+20.435 .AND. mfIl<=mfI0+vfI0+21.578 .AND. mcCc>= ;
           mcO0+0.5 .AND. mcCc<=mcO0+49.1 .AND. viOm=02
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+vfI0+11.507 .AND. mfIl<=mfI0+vfI0+12.65 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viOm=02
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+vfI0+11.507 .AND. mfIl<=mfI0+vfI0+12.65 .AND. mcCc>= ;
           mcO0+89.7 .AND. mcCc<=mcO0+105.3 .AND. viOm=02
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+vfI0+12.935 .AND. mfIl<=mfI0+vfI0+14.078 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viOm=02
           STORE 15 TO ciTx
      CASE mfIl>=mfI0+vfI0+14.435 .AND. mfIl<=mfI0+vfI0+15.578 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viOm=02
           STORE 16 TO ciTx
      CASE mfIl>=mfI0+vfI0+14.435 .AND. mfIl<=mfI0+vfI0+15.578 .AND. mcCc>= ;
           mcO0+89.7 .AND. mcCc<=mcO0+105.3 .AND. viOm=02
           STORE 17 TO ciTx
      CASE mfIl>=mfI0+vfI0+15.935 .AND. mfIl<=mfI0+vfI0+17.15 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viOm=02
           STORE 18 TO ciTx
      CASE mfIl>=mfI0+vfI0+17.435 .AND. mfIl<=mfI0+vfI0+18.578 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viOm=02
           STORE 19 TO ciTx
      CASE mfIl>=mfI0+vfI0+17.435 .AND. mfIl<=mfI0+vfI0+18.578 .AND. mcCc>= ;
           mcO0+89.7 .AND. mcCc<=mcO0+105.3 .AND. viOm=02
           STORE 20 TO ciTx
      CASE mfIl>=mfI0+vfI0+19.007 .AND. mfIl<=mfI0+vfI0+20.15 .AND. mcCc>= ;
           mcO0+59.3 .AND. mcCc<=mcO0+90.7 .AND. viOm=02
           STORE 21 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<4 .AND. mkEy<>99
           DO veR_2101a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mkEy<>99
           STORE ciTx TO viTe
           STORE k_Clic TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Hl1_2101a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 1.000 SAY  ;
   "Este Mantenimiento,  es un programa en donde se pueden crear, modificar,"
 @ pfIl+01, 1.000 SAY  ;
   "anular y/o eliminar los Proveedores que figurarán en el Sistema. Los códi-"
 @ pfIl+02, 1.000 SAY  ;
   "gos de Proveedores son alfanuméricos,  es decir,  pueden tener letras y "
 @ pfIl+03, 1.000 SAY "números."
 @ pfIl+05, 1.000 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 23.200 SAY ":" STYLE "BT"
 @ pfIl+08, 23.200 SAY ":" STYLE "BT"
 @ pfIl+09, 23.200 SAY ":" STYLE "BT"
 @ pfIl+10, 23.200 SAY ":" STYLE "BT"
 @ pfIl+11, 23.200 SAY ":" STYLE "BT"
 @ pfIl+12, 23.200 SAY ":" STYLE "BT"
 @ pfIl+13, 23.200 SAY ":" STYLE "BT"
 @ pfIl+14, 23.200 SAY ":" STYLE "BT"
 @ pfIl+15, 23.200 SAY ":" STYLE "BT"
 @ pfIl+16, 23.200 SAY ":" STYLE "BT"
 @ pfIl+17, 23.200 SAY ":" STYLE "BT"
 @ pfIl+18, 23.200 SAY ":" STYLE "BT"
 @ pfIl+07, 6.000 SAY "ESC" STYLE "BT"
 @ pfIl+08, 6.000 SAY "F10" STYLE "BT"
 @ pfIl+09, 6.000 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=01
           @ pfIl+10, 6.000 SAY "F2" STYLE "BT"
           @ pfIl+11, 6.000 SAY "F5" STYLE "BT"
           @ pfIl+12, 6.000 SAY "F6" STYLE "BT"
           @ pfIl+13, 6.000 SAY "F7" STYLE "BT"
           @ pfIl+14, 6.000 SAY "F8" STYLE "BT"
           @ pfIl+15, 6.000 SAY "ENTER" STYLE "BT"
           @ pfIl+16, 6.000 SAY "CTRL ->" STYLE "BT"
           @ pfIl+17, 6.000 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+18, 6.000 SAY "ALT DEL" STYLE "BT"
      OTHERWISE
           @ pfIl+19, 23.200 SAY ":" STYLE "BT"
           @ pfIl+20, 23.200 SAY ":" STYLE "BT"
           @ pfIl+21, 23.200 SAY ":" STYLE "BT"
           @ pfIl+22, 23.200 SAY ":" STYLE "BT"
           @ pfIl+23, 23.200 SAY ":" STYLE "BT"
           @ pfIl+10, 6.000 SAY "F2" STYLE "BT"
           @ pfIl+11, 6.000 SAY "F5" STYLE "BT"
           @ pfIl+12, 6.000 SAY "F6" STYLE "BT"
           @ pfIl+13, 6.000 SAY "F7" STYLE "BT"
           @ pfIl+14, 6.000 SAY "F8" STYLE "BT"
           @ pfIl+15, 6.000 SAY "ENTER" STYLE "BT"
           @ pfIl+16, 6.000 SAY "CTRL ->" STYLE "BT"
           @ pfIl+17, 6.000 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+18, 6.000 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+19, 6.000 SAY "CTRL HOME" STYLE "BT"
           @ pfIl+20, 6.000 SAY "CTRL END" STYLE "BT"
           @ pfIl+21, 6.000 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+22, 6.000 SAY "TAB" STYLE "BT"
           @ pfIl+23, 6.000 SAY "ALT DEL" STYLE "BT"
 ENDCASE
 @ pfIl+08, 25.200 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 25.200 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=01
           @ pfIl+07, 25.200 SAY "Regresar al Menú Principal"
           @ pfIl+10, 25.200 SAY  ;
             "Consulta alfabética de Proveedores registrados"
           @ pfIl+11, 25.200 SAY "Primer Código de Proveedor"
           @ pfIl+12, 25.200 SAY "Último Código de Proveedor"
           @ pfIl+13, 25.200 SAY "Código de Proveedor posterior al actual"
           @ pfIl+14, 25.200 SAY "Código de Proveedor anterior al actual"
           @ pfIl+15, 25.200 SAY  ;
             "Ir al siguiente campo, llegando al final se graba"
           @ pfIl+16, 25.200 SAY  ;
             "Ir al campo derecho, llegando al final se graba"
           @ pfIl+17, 25.200 SAY  ;
             "Ir al campo inferior, llegando al final se graba"
           @ pfIl+18, 25.200 SAY "Activar Proveedor anulado"
      OTHERWISE
           @ pfIl+07, 25.200 SAY "Regresar al primer campo"
           @ pfIl+10, 25.200 SAY "Consulta de Tipos de Proveedores registrados"
           @ pfIl+11, 25.200 SAY "Primer Código de Proveedor"
           @ pfIl+12, 25.200 SAY "Último Código de Proveedor"
           @ pfIl+13, 25.200 SAY "Código de Proveedor posterior al actual"
           @ pfIl+14, 25.200 SAY "Código de Proveedor anterior al actual"
           @ pfIl+15, 25.200 SAY  ;
             "Ir al siguiente campo, llegando al final se graba"
           @ pfIl+16, 25.200 SAY  ;
             "Ir al campo derecho, llegando al final se graba"
           @ pfIl+17, 25.200 SAY  ;
             "Ir al campo inferior, llegando al final se graba"
           @ pfIl+18, 25.200 SAY "Ir al campo superior"
           @ pfIl+19, 25.200 SAY "Ir al primer campo"
           @ pfIl+20, 25.200 SAY "Ir al último campo"
           @ pfIl+21, 25.200 SAY "Eliminar definitivamente un código"
           @ pfIl+22, 25.200 SAY "Grabar y pasar a la pantalla de Sucursales"
           @ pfIl+23, 25.200 SAY "Anular Proveedor activo"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_File1
 DO q1_0000a
 CLOSE INDEXES
 CLOSE DATABASES
 SET READBORDER OFF
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 STORE 99 TO mkEy
 RELEASE viTe, viT1, vcOd, vnOm, vtIp, vnTi, vtDi, vrUc, vsUc, vcRe, vmOn,  ;
         vtOt, vdIr
 RELEASE vdIs, vdEp, veNt, vdIe, vcT1, vcA1, vcT2, vcA2, vcT3, vcA3, vtL1,  ;
         vtL2, vtL3
 RELEASE vfA1, vfA2, vfA3, vaN1, vaN2, vaN3, vmAi, vtB1, vtB2, vtB3, veSt,  ;
         viOm, ckEy
 RELEASE vfBi, vfB1, vfB2, vcBi, vcB1, vcB2, ctDo, csEr, cdOc, vtPo, vfI0,  ;
         vcO0, vcOn
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
