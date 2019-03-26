 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, wmOd, wpRg
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr
 STORE 02 TO wmOd
 STORE "PCM3530A" TO wpRg
 STORE 99 TO mkEy
 DO tmP_3510a IN PCI3510A
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO abR_3510a IN PCI3510A
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_3510a IN PCI3510A
 DO va1_3530a IN PCI3530A
 PUBLIC vfBi, vcBi, caNo, cmEs, csEr, xsEr, isEr, usEr, cnUm, inUm, unUm,  ;
        xnUm, vsW0
 PUBLIC iaNo, uaNo, imEs, umEs, idIa, udIa, irCb, urCb, xrCb, igLo, ugLo, xgLo
 STORE 00 TO ctCa
 STORE 01 TO viTe
 SELECT caB_ing_bancos
 DO orD_0000a WITH "3530", "C", "F3530EST", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SEEK "1"
 IF EOF()
      GOTO BOTTOM
 ELSE
      SET NEAR ON
      SEEK "2"
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ELSE
           IF f3530est<>"1"
                SKIP -1
           ENDIF
      ENDIF
 ENDIF
 STORE f3530ano TO vaNo
 STORE f3530mes TO vmEs
 STORE f3530dia TO vdIa
 STORE f3530ser TO vsEr
 STORE f3530num TO vnUm
 STORE f3530tip TO vtIp
 STORE f3530tpo TO ctPo
 STORE f3530nti TO vnTi
 STORE f3530tca TO vtCa
 STORE f3530mon TO vmOn
 STORE f3530ban TO vbAn
 STORE f3530nba TO vnBa
 STORE f3530cta TO vcTa
 STORE f3530nct TO vnCt
 STORE " " TO vcHe
 STORE 1 TO vtPo
 DO orD_0000a WITH "3530", "C", "F3530NUM", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET READBORDER ON
 DO p00_3530a IN PCI3530A WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3530a IN PCI3530A WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3530a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2
                = INKEY(0.01)
                STORE 1 TO viTe
                SELECT caB_ing_bancos
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Vouchers registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                STORE vaNo TO caNo
                STORE vmEs TO cmEs
                STORE vsEr TO csEr
                STORE vnUm TO cnUm
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SAVE SCREEN TO vpAn_11
                DO pcC3530w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT caB_ing_bancos
                SET FILTER TO
                DO orD_0000a WITH "3530", "C", "F3530NUM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_Enter
                          DO coLbln
                          STORE f3530ano TO vaNo
                          STORE f3530mes TO vmEs
                          STORE f3530ser TO vsEr
                          STORE f3530num TO vnUm
                          STORE 03 TO viTe
                          @mFI0-2.2,mCO0+10 Say vANO Font "&mLetAri",9 Style "BQ" Pict "9999"    Size 1,4.5
                          @mFI0-2.2,mCO0+25 Say vMES Font "&mLetAri",9 Style "BQ" Pict "99"      Size 1,2.2
                          @mFI0-2.2,mCO0+45 Say vNUM Font "&mLetAri",9 Style "BQ" Pict "9999999" Size 1,8.2
                     OTHERWISE
                          STORE caNo TO vaNo
                          STORE cmEs TO vmEs
                          STORE csEr TO vsEr
                          STORE cnUm TO vnUm
                          STORE 99 TO mkEy
                ENDCASE
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3530a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3530a IN PCI3530A WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                SELECT teMporal
                GOTO TOP
                IF  .NOT. BOF()
                     DO prE_docum WITH "¿Desea salir sin grabar?"
                     IF moPc$"Ss"
                          STORE 99 TO mkEy
                          EXIT
                     ENDIF
                ELSE
                     STORE 99 TO mkEy
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. vtPo=1 .AND. viTe>3
                DO CASE
                     CASE vtPp=1
                          STORE 2 TO vtPp
                     CASE vtPp=2
                          STORE 1 TO vtPp
                ENDCASE
                DO p00_3530a IN PCI3530A WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF viTe>8
                     STORE 8 TO viTe
                ENDIF
           CASE mkEy=k_F6 .AND. viTe>3
                DO baN_3530a IN PCI3530A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. viTe>3
                DO ctA_3530a IN PCI3530A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9 .AND. viTe>3
                DO tiP_3530a IN PCI3530A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. (vtPo=1 .OR. vtPo=4) .AND. viTe=8
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. (vtPo=2 .OR. vtPo=3) .AND. viTe=9
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>2 .AND. viTe<>3 .AND. viTe<> ;
                4 .AND. viTe<>8
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<5
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_3530a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE ((vtPo=2 .OR. vtPo=3) .AND. viTe=9) .OR.  ;
                               (vtPp=2 .AND. vtPo=1 .AND. viTe=8)
                               DO q1_0000a
                               DO grA_3530a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE (vtPo=1 .OR. vtPo=4) .AND. viTe=8 .AND. vtPp=1
                               DO deT_3530a IN PCI3530A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Down
                DO veR_3530a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE ((vtPo=2 .OR. vtPo=3) .AND. viTe=9) .OR.  ;
                               (vtPp=2 .AND. vtPo=1 .AND. viTe=8)
                               DO q1_0000a
                               DO grA_3530a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE (vtPo=1 .OR. vtPo=4) .AND. viTe=8 .AND. vtPp=1
                               DO deT_3530a IN PCI3530A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<5
                               STORE 5 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3530a
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
                          CASE (vtPo=2 .OR. vtPo=3) .AND. viTe=7
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3530a
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
                          CASE (vtPo=1 .OR. vtPo=4) .AND. viTe=7
                               STORE 8 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_3530a
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
                                    DO deT_3530a IN PCI3530A
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=5
                          STORE 1 TO viTe
                     CASE viTe=8
                          STORE 6 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO CASE
                     CASE vtPo=2 .OR. vtPo=3
                          STORE 9 TO ciTx
                     OTHERWISE
                          STORE 8 TO ciTx
                ENDCASE
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3530a
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
           CASE mkEy=k_Tab
                DO CASE
                     CASE vtPo=2 .OR. vtPo=3
                          STORE 9 TO ciTx
                     OTHERWISE
                          STORE 8 TO ciTx
                ENDCASE
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_3530a
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
                     IF vtPo=2 .OR. vtPo=3 .OR. (vtPp=2 .AND. vtPo=1)
                          DO q1_0000a
                          DO grA_3530a
                          DO p1_0000a
                     ELSE
                          DO deT_3530a IN PCI3530A
                     ENDIF
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,120
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+05 Say "DIGITAR EL AÑO, ES DE 4 DÍGITOS, TIENE QUE SER VÁLIDO, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+05 Say "DIGITAR EL MES, ES DE 2 DÍGITOS, TIENE QUE SER VÁLIDO, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+25 Say "EL NÚMERO DE VOUCHER ES DE 7 DÍGITOS, NO PUEDE ESTAR VACÍO..."                            Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+12 Say "DIGITAR EL DÍA, ES DE 2 DÍGITOS, TIENE QUE ESTAR REGISTRADO EL TIPO DE CAMBIO..."         Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+25 Say "EL TIPO DE CAMBIO ES EL DEL DÍA, PERO SE PUEDE MODIFICAR..."                              Font "&mLetRom",9 Style "BQ"
                CASE viTe=6
                     @mMF2,mMC2+35 Say "LA GLOSA ES DE 80 CARACTERES ALFANUMÉRICOS..."                                            Font "&mLetRom",9 Style "BQ"
                CASE viTe=7
                     @mMF2,mMC2+14 Say "EL NÚMERO DE RECIBO ES DE 7 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=8
                     @mMF2,mMC2+01 Say "CHEQUE/DEPÓSITO U OTRO ES DE 20 CARACTERES ALFANUM., SI NO SE USA PUEDE ESTAR VACÍO"      Font "&mLetRom",9 Style "BQ"
                CASE viTe=9 .AND. (vtPo=2 .OR. vtPo=3)
                     @mMF2,mMC2+45 Say "EL MONTO NO PUEDE SER CERO..."                                                            Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      IF viTe=8
           STORE mfI0+04.3 TO vfLa
           STORE mcO0+44.5 TO vcOl
           STORE "Formato de Documento:" TO vfR1
           DO CASE
                CASE vtPo<>1 .AND. (AT("DEPOSITO", UPPER(vnTi))<>0 .OR.  ;
                     AT("Depósito", vnTi)<>0 .OR. AT("DEPÓSITO",  ;
                     UPPER(vnTi))<>0)
                     SAVE SCREEN TO vpAn_11
                     STORE "El prefijo: Op. y 8 nú-" TO vfR2
                     STORE "meros.Ejemplo:" TO vfR3
                     STORE "Op.12345678" TO vfR4
                     DO bmP_dial WITH "1", vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                CASE vtPo<>1 .AND. AT("CHEQUE", UPPER(vnTi))<>0
                     SAVE SCREEN TO vpAn_11
                     STORE "El prefijo: CH-,8 núme-" TO vfR2
                     STORE "ros un guión y un número" TO vfR3
                     STORE "Ejemplo: CH-56789012-1" TO vfR4
                     DO bmP_dial WITH "1", vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                CASE vtPo<>1 .AND. AT("TRANSFERENCIA", UPPER(vnTi))<>0
                     SAVE SCREEN TO vpAn_11
                     STORE "El prefijo: TR- y 8 nú-" TO vfR2
                     STORE "meros.Ejemplo:" TO vfR3
                     STORE "TR-33445566" TO vfR4
                     DO bmP_dial WITH "1", vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                CASE vtPo<>1 .AND. AT("LETRA", UPPER(vnTi))<>0
                     SAVE SCREEN TO vpAn_11
                     STORE "El prefijo: D- y 8 nú-" TO vfR2
                     STORE "meros o una fecha.Ej.:" TO vfR3
                     STORE "D-12345678  D-02/01/09" TO vfR4
                     DO bmP_dial WITH "1", vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                CASE vtPo<>1 .AND. (AT("TELECREDITO", UPPER(vnTi))<>0  ;
                     .OR. AT("Telecrédito", vnTi)<>0)
                     SAVE SCREEN TO vpAn_11
                     STORE "El prefijo: TL- y 8 nú-" TO vfR2
                     STORE "meros.Ejemplo:" TO vfR3
                     STORE "TL-12223344" TO vfR4
                     DO bmP_dial WITH "1", vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0-2.2,mCO0+10.0 Get  vANO Font "&mLetAri",9  Style "BQ" Size 1,4.5  Pict "9999"      Color ,&mColBlN
           CASE viTe=2
                @mFI0-2.2,mCO0+25.0 Get  vMES Font "&mLetAri",9  Style "BQ" Size 1,2.2  Pict "99"        Color ,&mColBlN
           CASE viTe=3
                @mFI0-2.2,mCO0+45.0 Get  vNUM Font "&mLetAri",9  Style "BQ" Size 1,8.2  Pict "9999999"   Color ,&mColBlN
           CASE viTe=4
                @mFI0-2.2,mCO0+72.0 Get  vDIA Font "&mLetAri",9  Style "BQ" Size 1,2.2  Pict "99"        Color ,&mColBlN
           CASE viTe=5
                @mFI0+2.0,mCO0+10.0 Get  vTCA Font "&mLetAri",9  Style "NQ" Size 1,11.2 Pict "99.99999"  Color ,&mColBlN
           CASE viTe=6
                @mFI0+3.5,mCO0+10.0 Edit vGLO Font "&mLetAri",9  Style "NQ" Size 1,vTM1,80
           CASE viTe=7
                STORE VAL(vrCb) TO vrCb
                @mFI0+5.0,mCO0+10.0 Get  vRCB Font "&mLetAri",9  Style "NQ" Size 1,10.5 Pict "9999999"   Color ,&mColBlN
           CASE viTe=8
                @mFI0+5,mCO0+43 Edit vCHE Font "&mLetAri",9 Style "NQ" Size 1,20,20
           CASE viTe=9 .AND. (vtPo=2 .OR. vtPo=3)
                @iFIL+0.8,vCLL+16.4 Get tTOT Font "&mLetRom",12 Style "NQ" Size 1,13.6 Pict "999999.99" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO coLbln
      DO CASE
           CASE viTe=7
                IF vrCb=0
                     STORE SPACE(07) TO vrCb
                ELSE
                     STORE STRTRAN(STR(vrCb, 7, 0), " ", "0") TO vrCb
                ENDIF
                @mFI0+5,mCO0+10 Say vRCB Font "&mLetAri",9 Style "NQ" Size 1,10.5 Pict "@S7"
           CASE viTe=8
                IF (vtPo<>1 .AND. (AT("DEPOSITO", UPPER(vnTi))<>0 .OR.  ;
                   AT("Depósito", vnTi)<>0 .OR. AT("DEPÓSITO",  ;
                   UPPER(vnTi))<>0)) .OR. (vtPo<>1 .AND. AT("CHEQUE",  ;
                   UPPER(vnTi))<>0) .OR. (vtPo<>1 .AND.  ;
                   AT("TRANSFERENCIA", UPPER(vnTi))<>0) .OR. (vtPo<>1  ;
                   .AND. AT("LETRA", UPPER(vnTi))<>0) .OR. (vtPo<>1 .AND.  ;
                   (AT("TELECREDITO", UPPER(vnTi))<>0 .OR.  ;
                   AT("Telecrédito", vnTi)<>0))
                     RESTORE SCREEN FROM vpAn_11
                     @mFI0+5,mCO0+43 Say vCHE Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
                ENDIF
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_3530a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vnTi))=0 .AND. viTe>3
           STORE "No hay Tipo de Ingreso a Caja seleccionado..." TO mmSj
      CASE vmOn<>vmNn .AND. viTe>3
           STORE "Moneda no coincide con Moneda de la Cuenta..." TO mmSj
      CASE viTe=1 .AND. AT(" ", vaNo)<>0
           STORE "Año no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vaNo="0000"
           STORE "Año no puede ser 0000..." TO mmSj
      CASE viTe=2 .AND. AT(" ", vmEs)<>0
           STORE "Mes no puede tener espacios vacíos..." TO mmSj
      CASE viTe=2 .AND. vmEs="00"
           STORE "Mes no puede ser 00..." TO mmSj
      CASE viTe=2 .AND. (vmEs<"01" .OR. vmEs>"12")
           STORE "Mes es de 01 a 12..." TO mmSj
      CASE viTe=3 .AND. AT(" ", vnUm)<>0
           STORE "Voucher no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. vnUm="0000000"
           STORE "Voucher no puede ser 0000000..." TO mmSj
      CASE viTe=3
           SELECT caB_ing_bancos
           SEEK vaNo+vmEs+vsEr+vnUm
           DO CASE
                CASE EOF()
                     STORE "Voucher no registrado..." TO mmSj
                CASE  .NOT. EOF() .AND. f3530est="2"
                     STORE "Voucher se encuentra Procesado..." TO mmSj
                CASE  .NOT. EOF() .AND. f3530est="3"
                     STORE "Voucher se encuentra Cerrado..." TO mmSj
                CASE  .NOT. EOF() .AND. f3530est="9"
                     STORE "Voucher se encuentra anulado..." TO mmSj
                OTHERWISE
                     SELECT teMporal
                     ZAP
                     SELECT exIste
                     ZAP
                     REINDEX
                     SELECT caB_ing_bancos
                     IF f3530tpo<>vtPo .AND. (((vtPo=2 .OR. vtPo=3) .AND.  ;
                        f3530tpo<>2 .AND. f3530tpo<>3) .OR. ((f3530tpo=2  ;
                        .OR. f3530tpo=3) .AND. vtPo<>2 .AND. vtPo<>3))
                          IF f3530tpo<>2 .AND. f3530tpo<>3
                               DO p01_3510a IN PCI3510A
                          ELSE
                               DO p02_3510a IN PCI3510A
                          ENDIF
                     ENDIF
                     STORE f3530dia TO vdIa
                     STORE f3530tpo TO vtPo
                     STORE f3530tpp TO vtPp
                     STORE f3530tip TO vtIp
                     STORE f3530nti TO vnTi
                     STORE f3530glo TO vgLo
                     STORE f3530rcb TO vrCb
                     STORE f3530ban TO vbAn
                     STORE f3530nba TO vnBa
                     STORE f3530cta TO vcTa
                     STORE f3530nct TO vnCt
                     STORE f3530che TO vcHe
                     STORE f3530tot TO ttOt
                     STORE f3530tca TO vtCa, xtCa
                     STORE f3530mon TO vmOn, cmOn
                     SELECT cuEntas
                     SEEK vbAn+vcTa
                     IF EOF()
                          STORE 1 TO vmNn
                     ELSE
                          STORE f9313mon TO vmNn
                     ENDIF
                     SELECT deT_ing_bancos
                     SEEK vaNo+vmEs+vsEr+vnUm
                     IF  .NOT. EOF()
                          STORE 0 TO ttOt
                          STORE 1 TO vrEc, irEc
                          DO WHILE  .NOT. EOF() .AND. f3531ano+f3531mes+ ;
                             f3531ser+f3531num=vaNo+vmEs+vsEr+vnUm
                               STORE f3531tdo TO vtD1
                               STORE f3531sr1 TO vsR1
                               STORE f3531doc TO vdO1
                               STORE f3531pag TO vpGo
                               STORE f3531rcb TO vrCi
                               SELECT peNd_vtas
                               SEEK vtD1+vsR1+vdO1
                               IF EOF()
                                    STORE SPACE(70) TO vnO1
                                    STORE 01 TO vmNd
                                    STORE 00 TO vtO1, vaC1, vsLd
                                    STORE CTOD("  /  /    ") TO vfE1, vfV1
                               ELSE
                                    STORE f3500nom TO vnO1
                                    STORE f3500fem TO vfE1
                                    STORE f3500fve TO vfV1
                                    STORE f3500mon TO vmNd
                                    STORE f3500tot+f3500int TO vtO1
                                    STORE f3500acu TO vaC1
                                    IF vmOn=vmNd
                                         STORE vaC1-vpGo TO vaC1
                                    ELSE
                                         DO CASE
                                              CASE vmNd=1
                                                   STORE vaC1-ROUND(vpGo* ;
                                                    vtCa, 2) TO vaC1
                                              CASE vmNd=2
                                                   STORE vaC1-ROUND(vpGo/ ;
                                                    vtCa, 2) TO vaC1
                                         ENDCASE
                                    ENDIF
                                    STORE vtO1-vaC1 TO vsLd
                                    IF vmOn<>vmNd
                                         DO CASE
                                              CASE vmNd=1
                                                   STORE ROUND(vsLd/vtCa,  ;
                                                    2) TO vsLd
                                              CASE vmNd=2
                                                   STORE ROUND(vsLd*vtCa,  ;
                                                    2) TO vsLd
                                         ENDCASE
                                    ENDIF
                               ENDIF
                               SELECT teMporal
                               APPEND BLANK
                               REPLACE ftM1tdo WITH vtD1
                               REPLACE ftM1ser WITH vsR1
                               REPLACE ftM1doc WITH vdO1
                               REPLACE ftM1nom WITH vnO1
                               REPLACE ftM1fem WITH vfE1
                               REPLACE ftM1fve WITH vfV1
                               REPLACE ftM1mon WITH vmNd
                               REPLACE ftM1tot WITH vtO1
                               REPLACE ftM1acu WITH vaC1
                               REPLACE ftM1sld WITH vsLd
                               REPLACE ftM1pgo WITH vpGo
                               REPLACE ftM1rci WITH vrCi
                               STORE RECNO() TO frEc
                               SELECT exIste
                               APPEND BLANK
                               REPLACE ftM2tdo WITH vtD1
                               REPLACE ftM2ser WITH vsR1
                               REPLACE ftM2doc WITH vdO1
                               IF vtD1="NC" .OR. vtD1="N1" .OR. vtD1="N3"
                                    STORE ttOt-vpGo TO ttOt
                               ELSE
                                    STORE ttOt+vpGo TO ttOt
                               ENDIF
                               SELECT deT_ing_bancos
                               SKIP
                          ENDDO
                     ENDIF
                     DO diS_3530a
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE vtPo TO ctPo
                     STORE ifIl TO vfIl
                     STORE 1 TO vrEc, irEc
                     STORE 3 TO viTe
           ENDCASE
      CASE viTe=4 .AND. AT(" ", vdIa)<>0
           STORE "Día no puede tener espacios vacíos..." TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vdIa))<>2
           STORE "Día no puede tener espacios vacíos..." TO mmSj
      CASE viTe=4 .AND. (vdIa<"01" .OR. vdIa>"28") .AND. vmEs="02" .AND.  ;
           MOD(VAL(vaNo), 4)<>0
           STORE "Día es de 01 a 28..." TO mmSj
      CASE viTe=4 .AND. (vdIa<"01" .OR. vdIa>"29") .AND. vmEs="02"
           STORE "Día es de 01 a 29..." TO mmSj
      CASE viTe=4 .AND. (vdIa<"01" .OR. vdIa>"30") .AND. (vmEs="04" .OR.  ;
           vmEs="06" .OR. vmEs="09" .OR. vmEs="11")
           STORE "Día es de 01 a 30..." TO mmSj
      CASE viTe=4 .AND. (vdIa<"01" .OR. vdIa>"31")
           STORE "Día es de 01 a 31..." TO mmSj
      CASE viTe=4
           SELECT caMbio
           SEEK CTOD(vdIa+"/"+vmEs+"/"+vaNo)
           DO CASE
                CASE EOF()
                     STORE "No se ha ingresado Tipo de Cambio del Día..."  ;
                           TO mmSj
                OTHERWISE
                     DO coLbln
                     STORE f9111tc3 TO vtCa
                     @mFI0+2,mCO0+10 Say vTCA Font "&mLetAri",9 Style "NQ" Pict "99.99999" Size 1,11.2
                     IF vtCa<>ctCa
                          IF vtPo<>2 .AND. vtPo<>3 .AND. vtPp=1
                               DO paN_3510a IN PCI3510A
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                          ENDIF
                          STORE vtCa TO ctCa
                     ENDIF
           ENDCASE
      CASE viTe=5 .AND. vtCa=0
           STORE "Tipo de Cambio no puede ser cero..." TO mmSj
      CASE viTe=5
           IF vtCa<>ctCa
                IF vtPo<>2 .AND. vtPo<>3 .AND. vtPp=1
                     DO paN_3510a IN PCI3510A
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE vtCa TO ctCa
           ENDIF
      CASE viTe=8 .AND. LEN(ALLTRIM(vcHe))=0
           STORE "El número no puede estar vacío..." TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)<>"Op." .AND.  ;
           (AT("DEPOSITO", UPPER(vnTi))<>0 .OR. AT("Depósito", vnTi)<>0  ;
           .OR. AT("DEPÓSITO", UPPER(vnTi))<>0)
           STORE "El número de Operación debe empezar con Op." TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)="Op." .AND.  ;
           LEN(ALLTRIM(vcHe))<>11
           STORE "El número de Operación debe ser de 8 dígitos..." TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)<>"CH-" .AND.  ;
           AT("CHEQUE", UPPER(vnTi))<>0
           STORE "El Cheque debe empezar con CH-" TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)="CH-" .AND.  ;
           LEN(ALLTRIM(vcHe))<>13
           STORE "El Cheque debe ser de 8 dígitos un guión y un número..."  ;
                 TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)<>"TR-" .AND.  ;
           AT("TRANSFERENCIA", UPPER(vnTi))<>0
           STORE "El número de Transferencia debe empezar con TR-" TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)="TR-" .AND.  ;
           LEN(ALLTRIM(vcHe))<>11
           STORE "El número de Transferencia debe ser de 8 dígitos..." TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 2)<>"D-" .AND.  ;
           AT("LETRA", UPPER(vnTi))<>0
           STORE "El número de Dietario debe empezar con D-" TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 2)="D-" .AND.  ;
           LEN(ALLTRIM(vcHe))<>10
           STORE "El número de Dietario debe ser de 8 dígitos o ser fecha XX/XX/XX..."  ;
                 TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)<>"TL-" .AND.  ;
           (AT("TELECREDITO", UPPER(vnTi))<>0 .OR. AT("Telecrédito", vnTi)<>0)
           STORE "El número de Telecrédito debe empezar con TL-" TO mmSj
      CASE viTe>=8 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)="TL-" .AND.  ;
           LEN(ALLTRIM(vcHe))<>11
           STORE "El número de Telecrédito debe ser de 8 dígitos..." TO mmSj
      CASE viTe=9 .AND. vtPo=1 .AND. vtPp=1 .AND. ttOt=0
           STORE "Total no puede ser cero..." TO mmSj
      CASE viTe=9 .AND. (vtPo=2 .OR. vtPo=3) .AND. ttOt=0
           STORE "Total no puede ser cero..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Gra_3530a
 PRIVATE ptX1, ptX2, poPc, pfEm, paCu
 = INKEY(0.01)
 STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO pfEm
 DO grAbar WITH "1"
 ptX1 = "¿Desea Modificar este Documento?"
 ptX2 = "VOUCHER DE INGRESO A BANCOS: "+vsEr+"-"+vnUm
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      STORE 5 TO viTe
      WAIT CLEAR
      UNLOCK ALL
      RETURN
 ENDIF
 SELECT exIste
 ZAP
 REINDEX
 SELECT tmP_tdo
 ZAP
 REINDEX
 SELECT caB_ing_bancos
 SEEK vaNo+vmEs+vsEr+vnUm
 IF  .NOT. RLOCK()
      DO reG_lock WITH vaNo+vmEs+vsEr+vnUm
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f3530mon TO cmOn
 STORE f3530tca TO ctCa
 SELECT deT_ing_bancos
 SEEK vaNo+vmEs+vsEr+vnUm
 DO WHILE  .NOT. EOF() .AND. vaNo+vmEs+vsEr+vnUm=f3531ano+f3531mes+ ;
    f3531ser+f3531num
      STORE f3531tdo TO vtD1
      STORE f3531sr1 TO vsR1
      STORE f3531doc TO vdO1
      SEEK vaNo+vmEs+vsEr+vnUm+vtD1+vsR1+vdO1
      IF  .NOT. RLOCK()
           DO reG_lock WITH vaNo+vmEs+vsEr+vnUm+vtD1+vsR1+vdO1
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT peNd_vtas
      SEEK vtD1+vsR1+vdO1
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtD1+vsR1+vdO1
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT tmP_tdo
      SEEK vtD1+vsR1
      IF EOF()
           APPEND BLANK
           REPLACE ftM3tdo WITH vtD1
           REPLACE ftM3ser WITH vsR1
           SELECT ctAs_total_vtas
           SEEK vtD1+vsR1
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtD1+vsR1
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ELSE
                DO nuEvo_rg
                REPLACE f3502tdo WITH vtD1
                REPLACE f3502ser WITH vsR1
                REPLACE f3502to1 WITH 0
                REPLACE f3502in1 WITH 0
                REPLACE f3502ac1 WITH 0
                REPLACE f3502to2 WITH 0
                REPLACE f3502in2 WITH 0
                REPLACE f3502ac2 WITH 0
           ENDIF
      ENDIF
      SELECT deT_ing_bancos
      SKIP
 ENDDO
 DO WHILE .T.
      SELECT deT_ing_bancos
      SEEK vaNo+vmEs+vsEr+vnUm
      IF EOF()
           EXIT
      ENDIF
      STORE f3531tdo TO vtD1
      STORE f3531sr1 TO vsR1
      STORE f3531doc TO vdO1
      REPLACE f3531ano WITH SPACE(04)
      REPLACE f3531mes WITH SPACE(02)
      REPLACE f3531ser WITH SPACE(03)
      REPLACE f3531num WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT exIste
      SEEK vtD1+vsR1+vdO1
      IF EOF()
           APPEND BLANK
           REPLACE ftM2tdo WITH vtD1
           REPLACE ftM2ser WITH vsR1
           REPLACE ftM2doc WITH vdO1
      ENDIF
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtD1
      STORE ftM1ser TO vsR1
      STORE ftM1doc TO vdO1
      SELECT exIste
      SEEK vtD1+vsR1+vdO1
      IF EOF()
           APPEND BLANK
           REPLACE ftM2tdo WITH vtD1
           REPLACE ftM2ser WITH vsR1
           REPLACE ftM2doc WITH vdO1
           SELECT peNd_vtas
           SEEK vtD1+vsR1+vdO1
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtD1+vsR1+vdO1
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
           SELECT tmP_tdo
           SEEK vtD1+vsR1
           IF EOF()
                APPEND BLANK
                REPLACE ftM3tdo WITH vtD1
                REPLACE ftM3ser WITH vsR1
                SELECT ctAs_total_vtas
                SEEK vtD1+vsR1
                IF  .NOT. EOF()
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vtD1+vsR1
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               UNLOCK ALL
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ELSE
                     DO nuEvo_rg
                     REPLACE f3502tdo WITH vtD1
                     REPLACE f3502ser WITH vsR1
                     REPLACE f3502to1 WITH 0
                     REPLACE f3502in1 WITH 0
                     REPLACE f3502ac1 WITH 0
                     REPLACE f3502to2 WITH 0
                     REPLACE f3502in2 WITH 0
                     REPLACE f3502ac2 WITH 0
                ENDIF
           ENDIF
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 STORE 99 TO mkEy
 SELECT deT_ing_caja
 DO orD_0000a WITH "3511", "C", "F3511DOC", "A"
 IF mkEy=k_Esc
      UNLOCK ALL
      FLUSH
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 DO orD_0000a WITH "3531", "C", "F3531DOC", "A"
 IF mkEy=k_Esc
      UNLOCK ALL
      FLUSH
      RETURN
 ENDIF
 SELECT caB_ing_bancos
 REPLACE f3530dia WITH vdIa
 REPLACE f3530tpo WITH vtPo
 REPLACE f3530tpp WITH vtPp
 REPLACE f3530tip WITH vtIp
 REPLACE f3530nti WITH vnTi
 REPLACE f3530tca WITH vtCa
 REPLACE f3530mon WITH vmOn
 REPLACE f3530tot WITH ttOt
 REPLACE f3530glo WITH vgLo
 REPLACE f3530rcb WITH vrCb
 REPLACE f3530ban WITH vbAn
 REPLACE f3530nba WITH vnBa
 REPLACE f3530cta WITH vcTa
 REPLACE f3530nct WITH vnCt
 REPLACE f3530che WITH vcHe
 REPLACE f3530est WITH "1"
 REPLACE f3530usu WITH muSu
 REPLACE f3530dat WITH DATE()
 REPLACE f3530tim WITH TIME()
 UNLOCK
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtD1
      STORE ftM1ser TO vsR1
      STORE ftM1doc TO vdO1
      STORE ftM1pgo TO vpGo
      STORE ftM1rci TO vrCi
      SELECT deT_ing_bancos
      DO nuEvo_rg
      REPLACE f3531ano WITH vaNo
      REPLACE f3531mes WITH vmEs
      REPLACE f3531ser WITH vsEr
      REPLACE f3531num WITH vnUm
      REPLACE f3531tdo WITH vtD1
      REPLACE f3531sr1 WITH vsR1
      REPLACE f3531doc WITH vdO1
      REPLACE f3531pag WITH vpGo
      REPLACE f3531rcb WITH vrCi
      UNLOCK
      SELECT teMporal
      SKIP
 ENDDO
 SELECT exIste
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM2tdo TO vtD1
      STORE ftM2ser TO vsR1
      STORE ftM2doc TO vdO1
      SELECT peNd_vtas
      SEEK vtD1+vsR1+vdO1
      STORE CTOD("  /  /    ") TO vfCa
      STORE f3500mon TO vmO1
      STORE f3500tot TO vtOt
      STORE f3500acu TO paCu
      STORE 00 TO vaCu, vrEn
      SELECT ctAs_ini_vtas
      SEEK vtD1+vsR1+vdO1
      IF  .NOT. EOF() .AND. f3501acu<>0
           STORE f3501acu TO vaCu
           IF vtOt=vaCu
                STORE f3501fem TO vfCa
           ENDIF
      ENDIF
      SELECT deT_ing_caja
      SEEK vtD1+vsR1+vdO1
      DO WHILE  .NOT. EOF() .AND. f3511tdo+f3511sr1+f3511doc=vtD1+vsR1+vdO1
           STORE f3511ano TO xaN2
           STORE f3511mes TO xmE2
           STORE f3511ser TO xsR2
           STORE f3511num TO xnU2
           STORE f3511pag TO vpGo
           SELECT caB_ing_caja
           SEEK xaN2+xmE2+xsR2+xnU2
           IF  .NOT. EOF() .AND. f3510est<>"9"
                IF vfCa=CTOD("  /  /    ") .OR. vfCa<CTOD(f3510dia+"/"+ ;
                   xmE2+"/"+xaN2)
                     STORE CTOD(f3510dia+"/"+xmE2+"/"+xaN2) TO vfCa
                ENDIF
                IF f3510tpo<>1
                     DO CASE
                          CASE vmO1=f3510mon
                               STORE vaCu+vpGo TO vaCu
                          CASE vmO1=1
                               STORE vaCu+(vpGo*f3510tca) TO vaCu
                          CASE vmO1=2
                               STORE vaCu+(vpGo/f3510tca) TO vaCu
                     ENDCASE
                ELSE
                     STORE vrEn+vpGo TO vrEn
                ENDIF
           ENDIF
           SELECT deT_ing_caja
           SKIP
      ENDDO
      SELECT deT_ing_bancos
      SEEK vtD1+vsR1+vdO1
      DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc=vtD1+vsR1+vdO1
           STORE f3531ano TO xaN2
           STORE f3531mes TO xmE2
           STORE f3531ser TO xsR2
           STORE f3531num TO xnU2
           STORE f3531pag TO vpGo
           SELECT caB_ing_bancos
           SEEK xaN2+xmE2+xsR2+xnU2
           IF  .NOT. EOF() .AND. f3530est<>"9"
                IF vfCa=CTOD("  /  /    ") .OR. vfCa<CTOD(f3530dia+"/"+ ;
                   xmE2+"/"+xaN2)
                     STORE CTOD(f3530dia+"/"+xmE2+"/"+xaN2) TO vfCa
                ENDIF
                IF f3530tpo<>1
                     DO CASE
                          CASE vmO1=f3530mon
                               STORE vaCu+vpGo TO vaCu
                          CASE vmO1=1
                               STORE vaCu+(vpGo*f3530tca) TO vaCu
                          CASE vmO1=2
                               STORE vaCu+(vpGo/f3530tca) TO vaCu
                     ENDCASE
                ELSE
                     STORE vrEn+vpGo TO vrEn
                ENDIF
           ENDIF
           SELECT deT_ing_bancos
           SKIP
      ENDDO
      SELECT peNd_vtas
      REPLACE f3500acu WITH vaCu
      IF vrEn=0 .AND. f3500tot+f3500int-f3500acu=0
           REPLACE f3500fca WITH vfCa
           IF f3500tdo="NC" .OR. f3500tdo="ND" .OR. f3500tdo="N1" .OR.  ;
              f3500tdo="N2" .OR. f3500tdo="N3" .OR. f3500tdo="N4" .OR.  ;
              f3500tdo="LE" .OR. f3500can="2" .OR. mgRa=1
                REPLACE f3500est WITH "@"
           ELSE
                REPLACE f3500est WITH SPACE(01)
           ENDIF
      ELSE
           REPLACE f3500fca WITH CTOD("  /  /    ")
           REPLACE f3500est WITH SPACE(01)
      ENDIF
      UNLOCK
      SELECT ctAs_total_vtas
      SEEK vtD1+vsR1
      IF vmO1=1
           REPLACE f3502ac1 WITH f3502ac1-paCu+vaCu
      ELSE
           REPLACE f3502ac2 WITH f3502ac2-paCu+vaCu
      ENDIF
      SELECT exIste
      SKIP
 ENDDO
 UNLOCK ALL
 STORE 99 TO mkEy
 SELECT deT_ing_caja
 DO orD_0000a WITH "3511", "C", "F3511NUM", "A"
 IF mkEy=k_Esc
      UNLOCK ALL
      FLUSH
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 DO orD_0000a WITH "3531", "C", "F3531NUM", "A"
 IF mkEy=k_Esc
      UNLOCK ALL
      FLUSH
      RETURN
 ENDIF
 SELECT teMporal
 ZAP
 SELECT exIste
 ZAP
 REINDEX
 SELECT tmP_tdo
 ZAP
 REINDEX
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 STORE "N" TO moPc
 DO prE_docum WITH "Desea Imprimir Voucher?"
 IF moPc$"Ss"
      DO pcC3530z
 ENDIF
 = INKEY(0.01)
 STORE msEr(03) TO vsEr
 STORE mmOn TO vmOn
 STORE "V3" TO vtDo
 STORE 03 TO viTe
 STORE 99 TO mkEy
 STORE 00 TO viT1, frEc, ttOt, ctCa
 STORE 01 TO vrEc, irEc, urEc, viOm, vsW1, vtPp
 STORE SPACE(01) TO veSt
 STORE SPACE(07) TO vrCb
 STORE SPACE(20) TO vcHe
 STORE SPACE(80) TO vgLo
 STORE ifIl TO vfIl, ufIl
 DO diS_3530a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Dis_3530a
 DO coLbln
 @mFI0-2.2,mCO0+10.0 Say vANO                Font "&mLetAri",9  Style "BQ" Size 1,4.5
 @mFI0-2.2,mCO0+25.0 Say vMES                Font "&mLetAri",9  Style "BQ" Size 1,2.2
 @mFI0-2.2,mCO0+45.0 Say vNUM                Font "&mLetAri",9  Style "BQ" Size 1,8.2
 @mFI0-2.2,mCO0+72.0 Say vDIA                Font "&mLetAri",9  Style "BQ" Size 1,2.2
 @mFI0+2.0,mCO0+10.0 Say vTCA                Font "&mLetAri",9  Style "NQ" Size 1,11.2 Pict "99.99999"
 @mFI0+5.0,mCO0+10.0 Say vRCB                Font "&mLetAri",9  Style "NQ" Size 1,10.5
 @mFI0+3.5,mCO0+10.0 Say Substr(vGLO,1,vTM1) Font "&mLetAri",9  Style "NQ" Size 1,vTM1
 @mFI0+0.5,mCO0+13.0 Get vMON                Font "&mLetAri",9  Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 @mFI0+5.0,mCO0+43.0 Say vCHE                Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S20"
 DO tpP_3530a IN PCI3530A
 DO ntI_3510a IN PCI3510A
 @mFI0+6.5,vCLL+27.4 Say Substr(vNBA,1,vTM2) Font "&mLetAri",9 Style "NQ" Size 1,vTM2
 @mFI0+8.0,vCLL+27.4 Say Substr(vNCT,1,vTM2) Font "&mLetAri",9 Style "NQ" Size 1,vTM2
 IF vtPo<>2 .AND. vtPo<>3 .AND. vtPp=1
      SELECT teMporal
      GOTO TOP
      IF  .NOT. BOF()
           GOTO irEc
           DO paN_3510b IN PCI3510B
           IF mkEy=k_Esc
                RETURN
           ENDIF
           GOTO irEc
           STORE ifIl TO vfIl
           STORE irEc TO vrEc
      ELSE
           DO coL_fondo
           @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
           DO liN_3510a IN PCI3510A WITH ifIl, ffIl+1.1
      ENDIF
      DO ctO_3510b IN PCI3510B
 ELSE
      DO coLbln
      @iFIL+0.8,vCLL+16.4 Say tTOT Font "&mLetRom",12 Style "NQ" Pict "999999.99" Size 1,13.6
 ENDIF
 IF vtPo=2 .OR. vtPo=3
      DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
 ELSE
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3530a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2 .AND. viTe>3
           STORE k_F9 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2 .AND. viTe>3
           STORE k_F6 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. viTe>3
           STORE k_F7 TO mkEy
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>1 .AND.  ;
           mcCc>=mcO0+12.8 .AND. mcCc<=mcO0+19.8 .AND. viTe>3
           STORE 1 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 3, 0
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>2 .AND.  ;
           mcCc>=mcO0+19.8 .AND. mcCc<=mcO0+28.4 .AND. viTe>3
           STORE 2 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 3, 0
      CASE mfIl>=mfI0+0.293 .AND. mfIl<=mfI0+1.436 .AND. vtPo<>1 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+17.6 .AND. viTe>3
           STORE 1 TO vtPo, ctPo
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3530a IN PCI3530A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vtPp=1
                DO p01_3510a IN PCI3510A
                DO paN_3510a IN PCI3510A
           ELSE
                DO p02_3510a IN PCI3510A
           ENDIF
           IF viTe>8 .AND. vtPp=1
                STORE 8 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.436 .AND. mfIl<=mfI0+2.793 .AND. vtPo<>2 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+12.8 .AND. viTe>3
           STORE 2 TO vtPo, ctPo, vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3530a IN PCI3530A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a IN PCI3510A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.793 .AND. mfIl<=mfI0+4.15 .AND. vtPo<>3 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+24.6 .AND. viTe>3
           STORE 2 TO vtPp
           STORE 3 TO vtPo, ctPo
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3530a IN PCI3530A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a IN PCI3510A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.15 .AND. mfIl<=mfI0+5.578 .AND. vtPo<>4 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+37.4 .AND. viTe>3
           STORE 4 TO vtPo, ctPo
           STORE 1 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3530a IN PCI3530A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p01_3510a IN PCI3510A
           DO paN_3510a IN PCI3510A
           IF viTe>8
                STORE 8 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-2.278 .AND. mfIl<=mfI0-1.064 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.4 .AND. mcCc<=mcO0+15.8
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-2.278 .AND. mfIl<=mfI0-1.064 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+17.4 .AND. mcCc<=mcO0+28
           STORE 2 TO ciTx
      CASE mfIl>=mfI0-2.278 .AND. mfIl<=mfI0-1.064 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+30.1 .AND. mcCc<=mcO0+55.3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0-2.278 .AND. mfIl<=mfI0-1.064 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+63.1 .AND. mcCc<=mcO0+76.9
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+1.936 .AND. mfIl<=mfI0+3.15 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+21.8
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+3.507 .AND. mfIl<=mfI0+4.578 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+10+vtM1
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+4.936 .AND. mfIl<=mfI0+6.15 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+20
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+4.936 .AND. mfIl<=mfI0+6.15 .AND. viTe<>8 .AND.  ;
           mcCc>=mcO0+22.6 .AND. mcCc<=mcO0+63.4
           STORE 8 TO ciTx
      CASE mfIl>=ifIl .AND. mfIl<=ifIl+2.864 .AND. viTe<>9 .AND. mcCc>= ;
           vcLl .AND. mcCc<=vcLl+35.3 .AND. (vtPo=2 .OR. vtPo=3)
           STORE 9 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_3530a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy<>99
           STORE ciTx TO viTe
      ENDIF
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Hl1_3530a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 1.500 SAY  ;
   "Este Mantenimiento, es un programa en donde se pueden modificar movi-"
 @ pfIl+1, 1.500 SAY "mientos de Ingresos a Bancos, por diferentes conceptos."
 @ pfIl+3, 1.500 SAY "Las teclas para movilizarse son:"
 STORE pfIl+5 TO pfIl
 @ pfIl+0, 26.200 SAY ":" STYLE "BT"
 @ pfIl+1, 26.200 SAY ":" STYLE "BT"
 @ pfIl+2, 26.200 SAY ":" STYLE "BT"
 @ pfIl+0, 8.000 SAY "ESC" STYLE "BT"
 @ pfIl+1, 8.000 SAY "F10" STYLE "BT"
 @ pfIl+2, 8.000 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=1
           @ pfIl, 28.200 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl, 28.200 SAY "Regresar al primer campo"
 ENDCASE
 @ pfIl+1, 28.200 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 28.200 SAY "Ayuda del Programa"
 STORE pfIl+3 TO pfIl
 IF viTe<4
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F2" STYLE "BT"
      @ pfIl, 28.200 SAY "Consultar VOUCHERS"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>3 .AND. vtPo=1
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F5" STYLE "BT"
      @ pfIl, 28.200 SAY "Poner o quitar detalle"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>3
      @ pfIl+0, 26.200 SAY ":" STYLE "BT"
      @ pfIl+1, 26.200 SAY ":" STYLE "BT"
      @ pfIl+2, 26.200 SAY ":" STYLE "BT"
      @ pfIl+0, 8.000 SAY "F6" STYLE "BT"
      @ pfIl+1, 8.000 SAY "F7" STYLE "BT"
      @ pfIl+2, 8.000 SAY "F9" STYLE "BT"
      @ pfIl+0, 28.200 SAY "Escoger Banco"
      @ pfIl+1, 28.200 SAY "Escoger Cuenta de Banco seleccionado"
      @ pfIl+2, 28.200 SAY "Escoger Tipo de Ingresos a Bancos"
      STORE pfIl+3 TO pfIl
 ENDIF
 @ pfIl+0, 26.200 SAY ":" STYLE "BT"
 @ pfIl+1, 26.200 SAY ":" STYLE "BT"
 @ pfIl+0, 8.000 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 8.000 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 28.200 SAY "Ir al siguiente campo"
 @ pfIl+1, 28.200 SAY "Ir al campo derecho"
 STORE pfIl+2 TO pfIl
 IF viTe>1
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "CTRL <-" STYLE "BT"
      @ pfIl, 28.200 SAY "Ir al campo izquierdo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 26.200 SAY ":" STYLE "BT"
 @ pfIl, 8.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl, 28.200 SAY "Ir al campo inferior"
 STORE pfIl+1 TO pfIl
 IF viTe>4
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 28.200 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>1
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "CTRL HOME" STYLE "BT"
      @ pfIl, 28.200 SAY "Ir al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 26.200 SAY ":" STYLE "BT"
 @ pfIl+1, 26.200 SAY ":" STYLE "BT"
 @ pfIl+0, 8.000 SAY "CTRL END" STYLE "BT"
 @ pfIl+1, 8.000 SAY "TAB" STYLE "BT"
 @ pfIl+0, 28.200 SAY "Ir al último campo"
 IF vtPo<>2 .AND. vtPo<>3
      @ pfIl+1, 28.200 SAY "Pasar al Detalle"
 ELSE
      @ pfIl+1, 28.200 SAY "Grabar"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1
 SET READBORDER OFF
 DO dvA_3510a IN PCI3510A
 DO dv1_3530a IN PCI3530A
 RELEASE vfBi, vcBi, caNo, cmEs, csEr, xsEr, isEr, usEr, cnUm, inUm, unUm,  ;
         xnUm, vsW0
 RELEASE iaNo, uaNo, imEs, umEs, idIa, udIa, irCb, urCb, xrCb, igLo, ugLo, xgLo
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
PROCEDURE Del_File1
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 DO deL_file2 WITH "1", "N"
 DO deL_file2 WITH "2", "S"
 DO deL_file2 WITH "3", "S"
 RELEASE ntM1, ntM2, ntM3, wmOd, wpRg
ENDPROC
*
