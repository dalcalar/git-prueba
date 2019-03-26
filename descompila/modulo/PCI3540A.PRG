 PARAMETER wnIv, wtPo
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, wmOd, wpRg
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr, wmOd
 STORE "PCI3540A" TO wpRg
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
 DO va1_3540a IN PCI3540A
 IF wnIv="1"
      STORE 4 TO vtPo, ctPo
 ELSE
      STORE 2 TO vtPo, ctPo
 ENDIF
 SELECT cuEntas
 GOTO TOP
 STORE f9313ban TO vbAn
 STORE f9313cta TO vcTa
 STORE f9313des TO vnCt
 STORE f9313mon TO vmNn
 SELECT baNcos
 SEEK vbAn
 STORE f9312nba TO vnBa
 SELECT tiPo_sal_bancos
 SET FILTER TO f9317opc=vtPo
 GOTO TOP
 IF EOF() .OR. BOF()
      IF wnIv="1"
           STORE "No se ha ingresado Tipos de Salidas de Bancos por Cobro de Ventas..."  ;
                 TO mmSj
      ELSE
           STORE "No se ha ingresado Tipos de Salidas de Bancos por Varios (CCO)..."  ;
                 TO mmSj
      ENDIF
      DO poNmsj
      DO deL_files
      RETURN
 ENDIF
 STORE f9317tip TO vtIp
 STORE f9317nti TO vnTi
 SET READBORDER ON
 DO p00_3540a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3540a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3540a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3540a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3540a WITH "1"
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
           CASE mkEy=k_F3 .AND. vtPo<>2
                STORE 99 TO mkEy
           CASE mkEy=k_F3
                DO veN_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. vtPo=1
                DO CASE
                     CASE vtPp=1
                          STORE 2 TO vtPp
                     CASE vtPp=2
                          STORE 1 TO vtPp
                ENDCASE
                DO p00_3540a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF viTe>7
                     STORE 7 TO viTe
                ENDIF
           CASE mkEy=k_F6
                DO baN_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                DO ctA_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. vtPo<>2
                STORE 99 TO mkEy
           CASE mkEy=k_F8
                DO ccO_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO tiP_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vtPp=1 .AND. viTe=7
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vtPp=2 .AND. viTe=8
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. (viTe>=4 .AND. viTe<=6))
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<4
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE vtPp=1 .AND. viTe=7
                               DO deT_3540a IN PCI3540A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPp=2 .AND. viTe=8
                               DO q1_0000a
                               DO grA_3540a
                               DO p1_0000a
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
                DO veR_3540a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE vtPp=1 .AND. viTe=7
                               DO deT_3540a IN PCI3540A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPp=2 .AND. viTe=8
                               DO q1_0000a
                               DO grA_3540a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<4
                               STORE 4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3540a
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
                          CASE vtPp=1 .AND. viTe>5
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3540a
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
                                    DO deT_3540a IN PCI3540A
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                          CASE vtPp=2 .AND. viTe>5
                               STORE 8 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3540a
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
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=4
                          STORE 1 TO viTe
                     CASE viTe=7
                          STORE 5 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO CASE
                     CASE vtPp=2
                          STORE 8 TO ciTx
                     OTHERWISE
                          STORE 7 TO ciTx
                ENDCASE
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3540a
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
                     CASE vtPp=2
                          STORE 8 TO ciTx
                     OTHERWISE
                          STORE 7 TO ciTx
                ENDCASE
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_3540a
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
                     DO q1_0000a
                     IF vtPp=1
                          DO deT_3540a IN PCI3540A
                     ELSE
                          DO grA_3540a
                     ENDIF
                     DO p1_0000a
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
                     @mMF2,mMC2+12 Say "DIGITAR EL DÍA, ES DE 2 DÍGITOS, TIENE QUE ESTAR REGISTRADO EL TIPO DE CAMBIO..."         Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+25 Say "EL TIPO DE CAMBIO ES EL DEL DÍA, PERO SE PUEDE MODIFICAR..."                              Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+35 Say "LA GLOSA ES DE 80 CARACTERES ALFANUMÉRICOS..."                                            Font "&mLetRom",9 Style "BQ"
                CASE viTe=6
                     @mMF2,mMC2+14 Say "EL NÚMERO DE RECIBO ES DE 7 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=7
                     @mMF2,mMC2+01 Say "CHEQUE/DEPÓSITO U OTRO ES DE 20 CARACTERES ALFANUM., SI NO SE USA PUEDE ESTAR VACÍO"      Font "&mLetRom",9 Style "BQ"
                CASE viTe=8 .AND. vtPp=2
                     @mMF2,mMC2+45 Say "EL MONTO NO PUEDE SER CERO..."                                                            Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      IF viTe=7 .AND. vtPo<>1
           STORE mfI0+04.3 TO vfLa
           STORE mcO0+44.5 TO vcOl
           STORE "Formato de Documento:" TO vfR1
           STORE " " TO vfR2, vfR3, vfR4
           SAVE SCREEN TO vpAn_11
           DO CASE
                CASE AT("DEPOSITO", UPPER(vnTi))<>0 .OR. AT("Depósito",  ;
                     vnTi)<>0 .OR. AT("DEPÓSITO", UPPER(vnTi))<>0
                     STORE "El prefijo: Op. y 8 nú-" TO vfR2
                     STORE "meros.Ejemplo:" TO vfR3
                     STORE "Op.12345678" TO vfR4
                CASE AT("CHEQUE", UPPER(vnTi))<>0
                     STORE "El prefijo: CH-,8 núme-" TO vfR2
                     STORE "ros un guión y un número" TO vfR3
                     STORE "Ejemplo: CH-56789012-1" TO vfR4
                CASE AT("TRANSFERENCIA", UPPER(vnTi))<>0
                     STORE "El prefijo: TR- y 8 nú-" TO vfR2
                     STORE "meros.Ejemplo:" TO vfR3
                     STORE "TR-33445566" TO vfR4
                CASE AT("LETRA", UPPER(vnTi))<>0
                     STORE "El prefijo: D- y 8 nú-" TO vfR2
                     STORE "meros o una fecha.Ej.:" TO vfR3
                     STORE "D-12345678  D-02/01/09" TO vfR4
                CASE AT("TELECREDITO", UPPER(vnTi))<>0 .OR.  ;
                     AT("Telecrédito", vnTi)<>0
                     STORE "El prefijo: TL- y 8 nú-" TO vfR2
                     STORE "meros.Ejemplo:" TO vfR3
                     STORE "TL-12223344" TO vfR4
           ENDCASE
           DO bmP_dial WITH "1", vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0-2.2,mCO0+10.0 Get  vANO Font "&mLetAri",9  Style "BQ" Size 1,4.5  Pict "9999"     Color ,&mColBlN
           CASE viTe=2
                @mFI0-2.2,mCO0+25.0 Get  vMES Font "&mLetAri",9  Style "BQ" Size 1,2.2  Pict "99"       Color ,&mColBlN
           CASE viTe=3
                @mFI0-2.2,mCO0+36.0 Get  vDIA Font "&mLetAri",9  Style "BQ" Size 1,2.2  Pict "99"       Color ,&mColBlN
           CASE viTe=4
                @mFI0+2.0,mCO0+10.0 Get  vTCA Font "&mLetAri",9  Style "NQ" Size 1,11.2 Pict "99.99999" Color ,&mColBlN
           CASE viTe=5
                @mFI0+3.5,mCO0+10.0 Edit vGLO Font "&mLetAri",9  Style "NQ" Size 1,vTM1,80
           CASE viTe=6
                STORE VAL(vrCb) TO vrCb
                @mFI0+5.0,mCO0+10.0 Get  vRCB Font "&mLetAri",9  Style "NQ" Size 1,10.5 Pict "9999999"   Color ,&mColBlN
           CASE viTe=7
                @mFI0+5,mCO0+43 Edit vCHE Font "&mLetAri",9 Style "NQ" Size 1,20,20
           CASE viTe=8 .AND. vtPp=2
                @iFIL+0.8,vCLL+16.4 Get tTOT Font "&mLetRom",12 Style "NQ" Size 1,13.6 Pict "999999.99" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO coLbln
      DO CASE
           CASE viTe=6
                IF vrCb=0
                     STORE SPACE(07) TO vrCb
                ELSE
                     STORE STRTRAN(STR(vrCb, 7, 0), " ", "0") TO vrCb
                ENDIF
                @mFI0+5,mCO0+10 Say vRCB Font "&mLetAri",9 Style "NQ" Size 1,10.5 Pict "@S7"
           CASE viTe=7 .AND. vtPo<>1
                RESTORE SCREEN FROM vpAn_11
                @mFI0+5,mCO0+43 Say vCHE Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_3540a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vnTi))=0
           STORE "No hay Tipo de Salida de Bancos seleccionado..." TO mmSj
      CASE vmOn<>vmNn
           STORE "Moneda no coincide con Moneda de la Cuenta..." TO mmSj
      CASE viTe=3 .AND. AT(" ", vdIa)<>0
           STORE "Día no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vdIa))<>2
           STORE "Día no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. (vdIa<"01" .OR. vdIa>"28") .AND. vmEs="02" .AND.  ;
           MOD(VAL(vaNo), 4)<>0
           STORE "Día es de 01 a 28..." TO mmSj
      CASE viTe=3 .AND. (vdIa<"01" .OR. vdIa>"29") .AND. vmEs="02"
           STORE "Día es de 01 a 29..." TO mmSj
      CASE viTe=3 .AND. (vdIa<"01" .OR. vdIa>"30") .AND. (vmEs="04" .OR.  ;
           vmEs="06" .OR. vmEs="09" .OR. vmEs="11")
           STORE "Día es de 01 a 30..." TO mmSj
      CASE viTe=3 .AND. (vdIa<"01" .OR. vdIa>"31")
           STORE "Día es de 01 a 31..." TO mmSj
      CASE viTe=3
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
                          IF vtPp=1
                               DO paN_3510a IN PCI3510A
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                          ENDIF
                          STORE vtCa TO ctCa
                     ENDIF
           ENDCASE
      CASE viTe=4 .AND. vtCa=0
           STORE "Tipo de Cambio no puede ser cero..." TO mmSj
      CASE viTe=4 .AND. vtCa<>ctCa
           IF vtPp=1
                DO paN_3510a IN PCI3510A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE vtCa TO ctCa
      CASE viTe=7 .AND. LEN(ALLTRIM(vcHe))=0
           STORE "El número no puede estar vacío..." TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)<>"Op." .AND.  ;
           (AT("DEPOSITO", UPPER(vnTi))<>0 .OR. AT("Depósito", vnTi)<>0  ;
           .OR. AT("DEPÓSITO", UPPER(vnTi))<>0)
           STORE "El número de Operación debe empezar con Op." TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)="Op." .AND.  ;
           LEN(ALLTRIM(vcHe))<>11
           STORE "El número de Operación debe ser de 8 dígitos..." TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)<>"CH-" .AND.  ;
           AT("CHEQUE", UPPER(vnTi))<>0
           STORE "El Cheque debe empezar con CH-" TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)="CH-" .AND.  ;
           LEN(ALLTRIM(vcHe))<>13
           STORE "El Cheque debe ser de 8 dígitos un guión y un número..."  ;
                 TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)<>"TR-" .AND.  ;
           AT("TRANSFERENCIA", UPPER(vnTi))<>0
           STORE "El número de Transferencia debe empezar con TR-" TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)="TR-" .AND.  ;
           LEN(ALLTRIM(vcHe))<>11
           STORE "El número de Transferencia debe ser de 8 dígitos..." TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 2)<>"D-" .AND.  ;
           AT("LETRA", UPPER(vnTi))<>0
           STORE "El número de Dietario debe empezar con D-" TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 2)="D-" .AND.  ;
           LEN(ALLTRIM(vcHe))<>10
           STORE "El número de Dietario debe ser de 8 dígitos o ser fecha XX/XX/XX..."  ;
                 TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)<>"TL-" .AND.  ;
           (AT("TELECREDITO", UPPER(vnTi))<>0 .OR. AT("Telecrédito", vnTi)<>0)
           STORE "El número de Telecrédito debe empezar con TL-" TO mmSj
      CASE viTe=7 .AND. vtPo<>1 .AND. SUBSTR(vcHe, 1, 3)="TL-" .AND.  ;
           LEN(ALLTRIM(vcHe))<>11
           STORE "El número de Telecrédito debe ser de 8 dígitos..." TO mmSj
      CASE viTe=8 .AND. vtPp=2 .AND. ttOt=0
           STORE "Total no puede ser cero..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Gra_3540a
 PRIVATE ptX1, ptX2, poPc, pfEm, paCu
 = INKEY(0.01)
 STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO pfEm
 DO grAbar WITH "1"
 SELECT nuMeracion
 SEEK vaNo+vmEs+vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f9397ano WITH vaNo
      REPLACE f9397mes WITH vmEs
      REPLACE f9397tdo WITH vtDo
      REPLACE f9397ser WITH vsEr
      REPLACE f9397num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK vaNo+vmEs+vtDo+vsEr
 IF  .NOT. RLOCK()
      DO reG_lock WITH vaNo+vmEs+vtDo+vsEr
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9397num TO vnUm
 STORE STRTRAN(STR(VAL(vnUm)+1, 7, 0), " ", "0") TO vnUm
 IF vtPo=5
      SEEK vaNo+vmEs+"V1"+vsEr
      IF EOF()
           DO nuEvo_rg
           REPLACE f9397ano WITH vaNo
           REPLACE f9397mes WITH vmEs
           REPLACE f9397tdo WITH "V1"
           REPLACE f9397ser WITH vsEr
           REPLACE f9397num WITH "0000000"
           UNLOCK
      ENDIF
      SEEK vaNo+vmEs+"V1"+vsEr
      IF  .NOT. RLOCK()
           DO reG_lock WITH vaNo+vmEs+"V1"+vsEr
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f9397num TO vnU1
      STORE STRTRAN(STR(VAL(vnU1)+1, 7, 0), " ", "0") TO vnU1
 ENDIF
 ptX1 = "¿Desea Grabar este Documento?"
 ptX2 = "VOUCHER DE SALIDA DE BANCOS: "+vsEr+"-"+vnUm
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      WAIT CLEAR
      STORE 4 TO viTe
      STORE SPACE(07) TO vnUm
      UNLOCK ALL
      RETURN
 ENDIF
 IF vtPo=5
      ptX2 = "VOUCHER DE INGRESO A CAJA: "+vsEr+"-"+vnU1
      poPc = MESSAGEBOX(ptX1, 0036, ptX2)
      IF poPc=7
           WAIT CLEAR
           STORE 4 TO viTe
           STORE SPACE(07) TO vnU1
           UNLOCK ALL
           RETURN
      ENDIF
 ENDIF
 SELECT tmP_tdo
 ZAP
 REINDEX
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtD1
      STORE ftM1ser TO vsR1
      STORE ftM1doc TO vdO1
      SELECT peNd_cpras
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
      ELSE
           SELECT teMporal
           REPLACE ftM1imp WITH "1"
      ENDIF
      SELECT tmP_tdo
      SEEK vtD1+vsR1
      IF EOF()
           APPEND BLANK
           REPLACE ftM3tdo WITH vtD1
           REPLACE ftM3ser WITH vsR1
           SELECT ctAs_total_cpras
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
                REPLACE f3602tdo WITH vtD1
                REPLACE f3602ser WITH vsR1
                REPLACE f3602to1 WITH 0
                REPLACE f3602in1 WITH 0
                REPLACE f3602ac1 WITH 0
                REPLACE f3602to2 WITH 0
                REPLACE f3602in2 WITH 0
                REPLACE f3602ac2 WITH 0
           ENDIF
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 STORE 99 TO mkEy
 SELECT deT_sal_caja
 DO orD_0000a WITH "3521", "C", "F3521DOC", "A"
 IF mkEy=k_Esc
      UNLOCK ALL
      FLUSH
      RETURN
 ENDIF
 SELECT deT_sal_bancos
 DO orD_0000a WITH "3541", "C", "F3541DOC", "A"
 IF mkEy=k_Esc
      UNLOCK ALL
      FLUSH
      RETURN
 ENDIF
 SELECT nuMeracion
 SEEK vaNo+vmEs+vtDo+vsEr
 REPLACE f9397num WITH vnUm
 UNLOCK
 IF vtPo=5
      SEEK vaNo+vmEs+"V1"+vsEr
      REPLACE f9397num WITH vnU1
      UNLOCK
 ENDIF
 SELECT caB_sal_bancos
 DO nuEvo_rg
 REPLACE f3540ano WITH vaNo
 REPLACE f3540mes WITH vmEs
 REPLACE f3540ser WITH vsEr
 REPLACE f3540num WITH vnUm
 REPLACE f3540dia WITH vdIa
 REPLACE f3540tpo WITH vtPo
 REPLACE f3540tpp WITH vtPp
 REPLACE f3540tip WITH vtIp
 REPLACE f3540nti WITH vnTi
 REPLACE f3540tca WITH vtCa
 REPLACE f3540mon WITH vmOn
 REPLACE f3540tot WITH ttOt
 REPLACE f3540glo WITH vgLo
 REPLACE f3540rcb WITH vrCb
 REPLACE f3540cco WITH vcCo
 REPLACE f3540ncc WITH vnCc
 REPLACE f3540ven WITH vvEn
 REPLACE f3540ban WITH vbAn
 REPLACE f3540nba WITH vnBa
 REPLACE f3540cta WITH vcTa
 REPLACE f3540nct WITH vnCt
 REPLACE f3540che WITH vcHe
 REPLACE f3540est WITH "1"
 REPLACE f3540usu WITH muSu
 REPLACE f3540dat WITH DATE()
 REPLACE f3540tim WITH TIME()
 UNLOCK
 IF vtPo=5
      SELECT caB_ing_caja
      DO nuEvo_rg
      REPLACE f3510ano WITH vaNo
      REPLACE f3510mes WITH vmEs
      REPLACE f3510ser WITH vsEr
      REPLACE f3510num WITH vnU1
      REPLACE f3510dia WITH vdIa
      REPLACE f3510tpo WITH 5
      REPLACE f3510tpp WITH 1
      REPLACE f3510caj WITH 1
      REPLACE f3510tca WITH vtCa
      REPLACE f3510mon WITH vmOn
      REPLACE f3510tot WITH ttOt
      REPLACE f3510dnc WITH 1
      REPLACE f3510glo WITH "Cheque de Caja:"+vcHe+" Vocuher:"+vaNo+"-"+ ;
              vmEs+"-"+vsEr+"-"+vnUm
      REPLACE f3510rcb WITH vrCb
      REPLACE f3510est WITH "1"
      REPLACE f3510usu WITH muSu
      REPLACE f3510dat WITH DATE()
      REPLACE f3510tim WITH TIME()
      UNLOCK
 ENDIF
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtD1
      STORE ftM1ser TO vsR1
      STORE ftM1doc TO vdO1
      STORE ftM1pgo TO vpGo
      STORE ftM1rci TO vrCi
      SELECT deT_sal_bancos
      DO nuEvo_rg
      REPLACE f3541ano WITH vaNo
      REPLACE f3541mes WITH vmEs
      REPLACE f3541ser WITH vsEr
      REPLACE f3541num WITH vnUm
      REPLACE f3541tdo WITH vtD1
      REPLACE f3541sr1 WITH vsR1
      REPLACE f3541doc WITH vdO1
      REPLACE f3541pag WITH vpGo
      REPLACE f3541rcb WITH vrCi
      UNLOCK
      SELECT teMporal
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtD1
      STORE ftM1ser TO vsR1
      STORE ftM1doc TO vdO1
      SELECT peNd_cpras
      SEEK vtD1+vsR1+vdO1
      STORE CTOD("  /  /    ") TO vfCa
      STORE f3600mon TO vmO1
      STORE f3600tot TO vtOt
      STORE f3600acu TO paCu
      STORE 00 TO vaCu, vrEn
      SELECT ctAs_ini_cpras
      SEEK vtD1+vsR1+vdO1
      IF  .NOT. EOF() .AND. f3601acu<>0
           STORE f3601acu TO vaCu
           IF vtOt=vaCu
                STORE f3601fem TO vfCa
           ENDIF
      ENDIF
      SELECT deT_sal_caja
      SEEK vtD1+vsR1+vdO1
      DO WHILE  .NOT. EOF() .AND. f3521tdo+f3521sr1+f3521doc=vtD1+vsR1+vdO1
           STORE f3521ano TO xaN2
           STORE f3521mes TO xmE2
           STORE f3521ser TO xsR2
           STORE f3521num TO xnU2
           STORE f3521pag TO vpGo
           SELECT caB_sal_caja
           SEEK xaN2+xmE2+xsR2+xnU2
           IF  .NOT. EOF() .AND. f3520est<>"9"
                IF vfCa=CTOD("  /  /    ") .OR. vfCa<CTOD(f3520dia+"/"+ ;
                   xmE2+"/"+xaN2)
                     STORE CTOD(f3520dia+"/"+xmE2+"/"+xaN2) TO vfCa
                ENDIF
                IF f3520tpo<>1
                     DO CASE
                          CASE vmO1=f3520mon
                               STORE vaCu+vpGo TO vaCu
                          CASE vmO1=1
                               STORE vaCu+(vpGo*f3520tca) TO vaCu
                          CASE vmO1=2
                               STORE vaCu+(vpGo/f3520tca) TO vaCu
                     ENDCASE
                ELSE
                     STORE vrEn+vpGo TO vrEn
                ENDIF
           ENDIF
           SELECT deT_sal_caja
           SKIP
      ENDDO
      SELECT deT_sal_bancos
      SEEK vtD1+vsR1+vdO1
      DO WHILE  .NOT. EOF() .AND. f3541tdo+f3541sr1+f3541doc=vtD1+vsR1+vdO1
           STORE f3541ano TO xaN2
           STORE f3541mes TO xmE2
           STORE f3541ser TO xsR2
           STORE f3541num TO xnU2
           STORE f3541pag TO vpGo
           SELECT caB_sal_bancos
           SEEK xaN2+xmE2+xsR2+xnU2
           IF  .NOT. EOF() .AND. f3540est<>"9"
                IF vfCa=CTOD("  /  /    ") .OR. vfCa<CTOD(f3540dia+"/"+ ;
                   xmE2+"/"+xaN2)
                     STORE CTOD(f3540dia+"/"+xmE2+"/"+xaN2) TO vfCa
                ENDIF
                IF f3540tpo<>1
                     DO CASE
                          CASE vmO1=f3540mon
                               STORE vaCu+vpGo TO vaCu
                          CASE vmO1=1
                               STORE vaCu+(vpGo*f3540tca) TO vaCu
                          CASE vmO1=2
                               STORE vaCu+(vpGo/f3540tca) TO vaCu
                     ENDCASE
                ELSE
                     STORE vrEn+vpGo TO vrEn
                ENDIF
           ENDIF
           SELECT deT_sal_bancos
           SKIP
      ENDDO
      SELECT peNd_cpras
      REPLACE f3600acu WITH vaCu
      IF vrEn=0 .AND. f3600tot-f3600acu=0
           REPLACE f3600fca WITH vfCa
           REPLACE f3600est WITH "@"
      ELSE
           REPLACE f3600fca WITH CTOD("  /  /    ")
           REPLACE f3600est WITH SPACE(01)
      ENDIF
      UNLOCK
      SELECT ctAs_total_cpras
      SEEK vtD1+vsR1
      IF vmO1=1
           REPLACE f3602ac1 WITH f3602ac1-paCu+vaCu
      ELSE
           REPLACE f3602ac2 WITH f3602ac2-paCu+vaCu
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 UNLOCK ALL
 STORE 99 TO mkEy
 SELECT deT_sal_caja
 DO orD_0000a WITH "3521", "C", "F3521NUM", "A"
 IF mkEy=k_Esc
      UNLOCK ALL
      FLUSH
      RETURN
 ENDIF
 SELECT deT_sal_bancos
 DO orD_0000a WITH "3541", "C", "F3541NUM", "A"
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
      DO pcC3540z
 ENDIF
 = INKEY(0.01)
 IF wnIv="1"
      STORE 4 TO vtPo, ctPo
      STORE 1 TO vtPp
 ELSE
      STORE 2 TO vtPo, ctPo, vtPp
 ENDIF
 STORE msEr(03) TO vsEr
 STORE mmOn TO vmOn
 STORE "V4" TO vtDo
 STORE 04 TO viTe
 STORE 99 TO mkEy
 STORE 00 TO viT1, frEc, ttOt
 STORE 01 TO vrEc, irEc, urEc, viOm, vsW1
 STORE SPACE(01) TO veSt
 STORE SPACE(80) TO vgLo
 STORE SPACE(20) TO vcHe
 STORE SPACE(07) TO vrCb
 STORE ifIl TO vfIl, ufIl
 STORE SUBSTR(DTOC(DATE()), 1, 2) TO vdIa
 SELECT caMbio
 SEEK CTOD(vdIa+"/"+vmEs+"/"+vaNo)
 STORE f9111tc3 TO vtCa
 SELECT tiPo_sal_bancos
 SET FILTER TO f9317opc=vtPo
 GOTO TOP
 STORE f9317tip TO vtIp
 STORE f9317nti TO vnTi
 RESTORE SCREEN FROM vpAn_99
 DO coLbln
 @mFI0-2.2,mCO0+10 Say vANO Font "&mLetAri",9 Style "BQ" Pict "9999"     Size 1,4.5
 @mFI0-2.2,mCO0+25 Say vMES Font "&mLetAri",9 Style "BQ" Pict "99"       Size 1,2.2
 @mFI0-2.2,mCO0+36 Say vDIA Font "&mLetAri",9 Style "BQ" Pict "99"       Size 1,2.2
 @mFI0+2.0,mCO0+10 Say vTCA Font "&mLetAri",9 Style "NQ" Pict "99.99999" Size 1,11.2
 IF vtPp=1
      DO p01_3520a IN PCI3520A
      DO ctO_3510b IN PCI3510B
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 ELSE
      DO p02_3510a IN PCI3510A
      DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptX1, ptX2, poPc, pfEm, paCu
ENDPROC
*
PROCEDURE Det_3540a
 PRIVATE ptX1, ptX2, poPc
 SELECT teMporal
 GOTO TOP
 IF BOF()
      SELECT peNd_cpras
      STORE 00 TO ttOt
      STORE 99 TO mkEy
      DO orD_0000a WITH "3600", "C", "F3600FE2", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK " "+vaNo+vmEs+vdIa
      IF  .NOT. EOF()
           STORE 07 TO poPc
           SAVE SCREEN TO vpAn_11
           IF frEc=0 .AND. vtPo=4
                ptX1 = "¿Desean Copiar todos los Documentos pendientes de esta Fecha?"
                ptX2 = vdIa+"/"+vmEs+"/"+vaNo
                poPc = MESSAGEBOX(ptX1, 0292, ptX2)
           ENDIF
           RESTORE SCREEN FROM vpAn_11
           IF poPc<>07
                DO WHILE  .NOT. EOF() .AND. f3600est=" " .AND. f3600fem= ;
                   CTOD(vdIa+"/"+vmEs+"/"+vaNo)
                     STORE f3600tdo TO vtD1
                     STORE f3600ser TO vsR1
                     STORE f3600doc TO vdO1
                     STORE f3600nom TO vnO1
                     STORE f3600fem TO vfE1
                     STORE f3600fve TO vfV1
                     STORE f3600mon TO vmNd
                     STORE f3600tot TO vtO1
                     STORE f3600acu TO vaC1
                     STORE vtO1-vaC1 TO vsLd
                     IF vmOn<>vmNd
                          DO CASE
                               CASE vmNd=1
                                    STORE ROUND(vsLd/vtCa, 2) TO vsLd
                               CASE vmNd=2
                                    STORE ROUND(vsLd*vtCa, 2) TO vsLd
                          ENDCASE
                     ENDIF
                     STORE vsLd TO vpGo
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
                     STORE RECNO() TO frEc
                     SELECT exIste
                     APPEND BLANK
                     REPLACE ftM2tdo WITH vtD1
                     REPLACE ftM2ser WITH vsR1
                     REPLACE ftM2doc WITH vdO1
                     STORE ttOt+vpGo TO ttOt
                     SELECT peNd_cpras
                     SKIP
                ENDDO
           ENDIF
      ENDIF
      DO orD_0000a WITH "3600", "C", "F3600DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO paN_3510a IN PCI3510A
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO q1_0000a
 DO p2_0000a
 DO pcI3540b
 DO q2_0000a
 DO p1_0000a
 SET READBORDER ON
 IF mkEy<>k_Clic .AND. mkEy<>k_Esc
      STORE 04 TO viTe
      STORE 00 TO viT1
 ENDIF
 RELEASE ptX1, ptX2, poPc
 IF mkEy=k_Tab
      DO q1_0000a
      IF wmOd=1
           DO grA_3540a IN PCI3540A
      ELSE
           DO grA_3540a IN PCM3540A
      ENDIF
      DO p1_0000a
      UNLOCK ALL
      WAIT CLEAR
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE 99 TO mkEy
 ENDIF
 IF vtPp=2
      DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
 ELSE
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE P00_3540a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 34 TO muFi
 STORE 192 TO muCo
 STORE (mwCo-muCo)/2 TO mmC2
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+1.1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+muFi+2 TO mmF2
 STORE mfI0+12.5 TO ifIl, ufIl, vfIl
 STORE ifIl+19 TO ffIl
 STORE mfI0-1 TO ifFr, ufFr, vfFr
 STORE ifFr+36 TO ffFr
 STORE mfI0+01.95 TO vfB1
 STORE mfI0+08.0 TO vfB2
 STORE mfI0+09.5 TO vfB3
 STORE mfI0+06.5 TO vfB4
 STORE mfI0+08.0 TO vfB5, vfB6
 STORE mcO0+00.5 TO icLn
 STORE mcO0+83.1 TO vcLl
 STORE mcO0+190.7 TO ucLn
 STORE 72 TO vtM1
 STORE 60.5 TO vtM2
 STORE vcLl+vtM2+37 TO vcB1, vcB2, vcB3
 STORE mcO0+vtM1+2.6 TO vcB4, vcB5
 STORE vcB5+4 TO vcB6
 Define Popup vTB1 from mFI0+03.3,vCLL+40 to mFI0+mUFI+3,vCLL+44.2+vTM2 Font "&mLetAri",9 Style "NQ" Scroll Color Scheme 3 Prompt Field F9317TIP+": "+F9317NTI Footer "TIPOS DE SALIDAS DE BANCOS"
 Define Popup vTB2 from mFI0+09.3,vCLL+30 to mFI0+mUFI+3,vCLL+44.2+vTM2 Font "&mLetCou",9 Style "NQ" Scroll Color Scheme 3 Prompt Field Substr(F9312NBA,1,30)+": "+F9312BAN Footer "BANCOS"
 Define Popup vTB3 from mFI0+10.8,vCLL+30 to mFI0+mUFI+3,vCLL+44.2+vTM2 Font "&mLetCou",9 Style "NQ" Scroll Color Scheme 3 Prompt Field Substr(F9313DES,1,30)+": "+F9313CTA Footer "CUENTAS"
 Define Popup vTB4 from mFI0+07.7,mCO0+9.6 to mFI0+mUFI+3,mCO0+10+vTM1  Font "&mLetAri",9 Style "NQ" Scroll Color Scheme 3 Prompt Field F9318CCO+": "+F9318NCC Footer "CENTROS DE COSTOS"
 Define Popup vTB5 from mFI0+09.2,mCO0+9.6 to mFI0+mUFI+3,mCO0+10+vTM1 Font "&mLetAri",9 Style "NQ" Scroll Color Scheme 3 Prompt Field F9113NOM Footer "VENDEDORES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ mfI0, vcLl TO mfI0+7.2, mcO0+muCo-0.5 PATTERN 1 COLOR SCHEME 3
 @ mfI0, vcLl TO mfI0+0.0, mcO0+muCo-0.5 COLOR RGB(255,255,255,0,0,0)
 @ mfI0, vcLl TO mfI0+7.2, vcLl COLOR RGB(255,255,255,0,0,0)
 DO coL_fondo
 @ mfI0+0.5, vcLl+38.5 TO mfI0+3.75, mcO0+muCo-1.5 PATTERN 1
 @ mfI0+0.5, vcLl+38.5 TO mfI0+0.50, mcO0+muCo-1.5 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+0.5, vcLl+38.5 TO mfI0+3.75, vcLl+38.5 COLOR RGB(255,255,255,0,0,0)
 IF wpRg="PCI3540A"
      DO tiT_0000a WITH "Vouchers de Salidas de Bancos nuevos"
      @ mfI0-2.7, mcO0-0.6 TO mfI0-0.6, mcO0+42.0 PATTERN 1 COLOR SCHEME 7
      @ mfI0-2.7, mcO0-0.6 TO mfI0-2.7, mcO0+42.0 COLOR RGB(255,255,255,0,0,0)
      @ mfI0-2.7, mcO0-0.6 TO mfI0-0.6, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
      DO coL_fondo
      @mFI0-2.2,mCO0+30 Say "DIA:" Font "&mLetRom",10 Style "BT"
      @mFI0-2.2,mCO0+36 Get  vDIA  Font "&mLetAri",9  Style "BQ" Size 1,2.2                  Color ,&mColBlN
 ELSE
      STORE mfI0-2.35 TO vfBi
      STORE mcO0+55.6 TO vcBi
      DO tiT_0000a WITH "Modificación de Vouchers de Salidas de Bancos"
      @ mfI0-2.7, mcO0-0.6 TO mfI0-0.6, mcO0+61.0 PATTERN 1 COLOR SCHEME 7
      @ mfI0-2.7, mcO0-0.6 TO mfI0-2.7, mcO0+61.0 COLOR RGB(255,255,255,0,0,0)
      @ mfI0-2.7, mcO0-0.6 TO mfI0-0.6, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
      DO coL_fondo
      @ mfI0-2.7, mcO0+63 TO mfI0-0.6, mcO0+77.0 PATTERN 1
      @ mfI0-2.7, mcO0+63 TO mfI0-2.7, mcO0+77.0 COLOR RGB(255,255,255,0,0,0)
      @ mfI0-2.7, mcO0+63 TO mfI0-0.6, mcO0+63 COLOR RGB(255,255,255,0,0,0)
      @mFI0-2.2,mCO0+30 Say "VOUCHER:" Font "&mLetRom",10 Style "BT"
      @mFI0-2.2,mCO0+65 Say "DIA:"     Font "&mLetRom",10 Style "BT"
      @mFI0-2.2,mCO0+45 Get  vNUM      Font "&mLetAri",9  Style "BQ" Size 1,8.2                  Color ,&mColBlN
      @mFI0-2.2,mCO0+72 Get  vDIA      Font "&mLetAri",9  Style "BQ" Size 1,2.2                  Color ,&mColBlN
      DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_fondo
 @ mfI0+10.5, mcO0+86 TO mfI0+12.4, mcO0+muCo PATTERN 1 PEN 0, 0
 DO coLbln
 @mFI0-2.2,mCO0+02 Say "AÑO:"           Font "&mLetRom",10 Style "BT"
 @mFI0-2.2,mCO0+18 Say "MES:"           Font "&mLetRom",10 Style "BT"
 @mFI0+0.5,mCO0+01 Say "Moneda"         Font "&mLetAri",10 Style "NT"
 @mFI0+2.0,mCO0+01 Say "T/C"            Font "&mLetAri",10 Style "NT"
 @mFI0+3.5,mCO0+01 Say "Glosa"          Font "&mLetAri",10 Style "NT"
 @mFI0+5.0,mCO0+01 Say "Recibo"         Font "&mLetAri",10 Style "NT"
 @mFI0+5.0,mCO0+23 Say "Cheque/Operac." Font "&mLetAri",10 Style "NT"
 @mFI0+5.0,mCO0+43 Edit vCHE            Font "&mLetAri",9  Style "NQ" Size 1,20,20
 @mFI0-2.2,mCO0+10 Get  vANO            Font "&mLetAri",9 Style "BQ" Size 1,4.5                  Color ,&mColBlN
 @mFI0-2.2,mCO0+25 Get  vMES            Font "&mLetAri",9 Style "BQ" Size 1,2.2                  Color ,&mColBlN
 @mFI0+2.0,mCO0+10 Get  vTCA            Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99.99999" Color ,&mColBlN
 @mFI0+3.5,mCO0+10 Edit vGLO            Font "&mLetAri",9 Style "NQ" Size 1,vTM1,80
 @mFI0+5.0,mCO0+10 Get  vRCB            Font "&mLetAri",9 Style "NQ" Size 1,10.5                 Color ,&mColBlN
 DO ncC_3540a IN PCI3540A WITH "1"
 DO nvE_3540a IN PCI3540A WITH "1"
 DO coL_fondo
 @mFI0+0.5,mCO0+13.0 Get  vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 @mFI0+2.0,vCLL+40.4 Edit vNTI Font "&mLetAri",9 Style "NQ" Size 1,vTM2-4.1,50
 @mFI0+8.0,vCLL+30.4 Edit vNBA Font "&mLetAri",9 Style "NQ" Size 1,vTM2+6,50
 @mFI0+9.5,vCLL+30.4 Edit vNCT Font "&mLetAri",9 Style "NQ" Size 1,vTM2+6,50
 DO coLblz
 @mFI0+0.5,vCLL+39.4 Say "Tipo de Salida:" Font "&mLetRom",12 Style "BT"
 @mFI0+8.0,vCLL+17.4 Say "Banco:"          Font "&mLetRom",12 Style "BT"
 @mFI0+9.5,vCLL+17.4 Say "Cuenta:"         Font "&mLetRom",12 Style "BT"
 DO tpP_3540a
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_99
 IF vtPp=1
      DO p01_3520a IN PCI3520A
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
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 ELSE
      DO p02_3510a IN PCI3510A
      DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ncc_3540a
 PARAMETER ptPo
 DO coL_fondo
 IF vtPo=2
      @mFI0+6.5,mCO0+01 Say "C.Cost" Font "&mLetAri",10 Style "BT"
      @mFI0+6.5,mCO0+10 Edit vNCC    Font "&mLetAri",9  Style "NQ" Size 1,vTM1-8,80
      IF ptPo="2"
           READ TIMEOUT 0.01
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO coL_fondo
      @mFI0+6.5,mCO0+01.0 Say Space(10)   Font "&mLetAri",10 Style "BQ" Size 1,7.2
      @mFI0+6.4,mCO0+09.5 Say Space(vTM1) Font "&mLetAri",9  Style "NQ" Size 1,vTM1+0.9
      @mFI0+6.6,mCO0+09.5 Say Space(vTM1) Font "&mLetAri",9  Style "NQ" Size 1,vTM1+0.9
 ENDIF
ENDPROC
*
PROCEDURE Nve_3540a
 PARAMETER ptPo
 DO coL_fondo
 IF vtPo=2
      @mFI0+8,mCO0+01 Say "Vend." Font "&mLetAri",10 Style "BT"
      @mFI0+8,mCO0+10 Edit vNVE   Font "&mLetAri",9  Style "NQ" Size 1,vTM1-8,80
      IF ptPo="2"
           READ TIMEOUT 0.01
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF LEN(ALLTRIM(vvEn))<>0
           DO prEsiona WITH "1", "DESCAR", vfB6, vcB6
      ELSE
           DO prEsiona WITH "3", "DESCAR", vfB6, vcB6
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO coL_fondo
      @mFI0+8.0,mCO0+01.0 Say Space(10)   Font "&mLetAri",10 Style "BQ" Size 1,7.2
      @mFI0+7.9,mCO0+09.5 Say Space(vTM1) Font "&mLetAri",9  Style "NQ" Size 1,vTM1+0.9
      @mFI0+8.1,mCO0+09.5 Say Space(vTM1) Font "&mLetAri",9  Style "NQ" Size 1,vTM1+0.9
 ENDIF
ENDPROC
*
PROCEDURE Ven_3540a
 = INKEY(0.01)
 SELECT veNdedor
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Vendedores registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnVe)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB5 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9113cod<>vvEn
      STORE f9113cod TO vvEn
      STORE f9113nom TO vnVe
      DO nvE_3540a IN PCI3540A WITH "2"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cco_3540a
 = INKEY(0.01)
 SELECT ccOsto
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Centros de Costos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB4 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9318cco<>vcCo
      DO coL_fondo
      STORE f9318cco TO vcCo
      STORE f9318ncc TO vnCc
      DO ncC_3540a IN PCI3540A WITH "2"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tip_3540a
 = INKEY(0.01)
 SELECT tiPo_sal_bancos
 SET FILTER TO f9317opc=vtPo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Salidas de Bancos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9317tip<>vtIp
      STORE f9317tip TO vtIp
      STORE f9317nti TO vnTi
      DO ntI_3540a IN PCI3540A
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Nti_3540a
 DO coL_fondo
 @mFI0+2,vCLL+40.4 Say Substr(vNTI,1,vTM2) Font "&mLetAri",9 Style "NQ" Size 1,vTM2-4.1
ENDPROC
*
PROCEDURE Ban_3540a
 = INKEY(0.01)
 SELECT baNcos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Bancos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9312", "U", "F9312NBA", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coL_fondo
      STORE f9312ban TO vbAn
      STORE f9312nba TO vnBa
      STORE SPACE(02) TO vcTa
      STORE SPACE(30) TO vnCt
      @mFI0+8.0,vCLL+30.4 Say Substr(vNBA,1,vTM2+6) Font "&mLetAri",9 Style "NQ" Size 1,vTM2+6,50
      @mFI0+9.5,vCLL+30.4 Say Substr(vNCT,1,vTM2+6) Font "&mLetAri",9 Style "NQ" Size 1,vTM2+6,50
 ENDIF
 DO orD_0000a WITH "9312", "U", "F9312BAN", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cta_3540a
 = INKEY(0.01)
 SELECT cuEntas
 SET FILTER TO f9313ban=vbAn
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Cuentas de Bancos registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coL_fondo
      STORE f9313cta TO vcTa
      STORE f9313des TO vnCt
      STORE f9313mon TO vmNn
      @mFI0+9.5,vCLL+30.4 Say Substr(vNCT,1,vTM2+6) Font "&mLetAri",9 Style "NQ" Size 1,vTM2+6,50
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tpp_3540a
 @mFI0+0.3,vCLL+1.6 Get vTPO Font "&mLetAri",10 Style "NT" Default vTPO Function "*RVT &vTAB[1];&vTAB[2];&vTAB[3];&vTAB[4];&vTAB[5]" Size 1,10,.2
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Tpo_3540a
 DO tpP_3540a
 SELECT tiPo_sal_bancos
 SET FILTER TO f9317opc=vtPo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE SPACE(02) TO vtIp
      STORE SPACE(50) TO vnTi
 ELSE
      STORE f9317tip TO vtIp
      STORE f9317nti TO vnTi
 ENDIF
 DO ntI_3540a IN PCI3540A
 IF vtPp=2
      DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
 ELSE
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3540a
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
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           STORE k_F9 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           STORE k_F6 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. vtPo=2
           STORE k_F8 TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2 .AND. vtPo=2
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2 .AND. vtPo=2
           STORE SPACE(02) TO vvEn
           STORE SPACE(50) TO vnVe
           DO nvE_3540a IN PCI3540A WITH "2"
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>1 .AND.  ;
           mcCc>=mcO0+12.8 .AND. mcCc<=mcO0+19.8
           STORE 1 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 3, 5
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>2 .AND.  ;
           mcCc>=mcO0+19.8 .AND. mcCc<=mcO0+28.4
           STORE 2 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 3, 5
      CASE mfIl>=mfI0+0.293 .AND. mfIl<=mfI0+1.436 .AND. vtPo<>1 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+17.6
           STORE 1 TO vtPo, ctPo
           IF wnIv="2"
                STORE 2 TO vtPp
           ELSE
                STORE 1 TO vtPp
           ENDIF
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3540a IN PCI3540A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vtPp=1
                DO p01_3520a IN PCI3520A
                DO paN_3510a IN PCI3510A
           ELSE
                DO p02_3510a IN PCI3510A
           ENDIF
           IF viTe>7 .AND. vtPp=1
                STORE 7 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.436 .AND. mfIl<=mfI0+2.793 .AND. vtPo<>2 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+12.8
           STORE 2 TO vtPo, ctPo, vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3540a IN PCI3540A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a IN PCI3510A
           DO ncC_3540a IN PCI3540A WITH "1"
           DO nvE_3540a IN PCI3540A WITH "1"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.793 .AND. mfIl<=mfI0+4.15 .AND. vtPo<>3 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+24.6
           STORE 3 TO vtPo, ctPo
           STORE 2 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3540a IN PCI3540A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a IN PCI3510A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.15 .AND. mfIl<=mfI0+5.578 .AND. vtPo<>4 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+37.4
           STORE 4 TO vtPo, ctPo
           STORE 1 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3540a IN PCI3540A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p01_3520a IN PCI3520A
           DO paN_3510a IN PCI3510A
           IF viTe>7
                STORE 7 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.578 .AND. mfIl<=mfI0+6.864 .AND. vtPo<>5 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+36.8
           STORE 5 TO vtPo, ctPo
           STORE 2 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3540a IN PCI3540A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a IN PCI3510A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-2.278 .AND. mfIl<=mfI0-1.064 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.4 .AND. mcCc<=mcO0+15.8
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-2.278 .AND. mfIl<=mfI0-1.064 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+17.4 .AND. mcCc<=mcO0+28
           STORE 2 TO ciTx
      CASE mfIl>=mfI0-2.278 .AND. mfIl<=mfI0-1.064 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+29.8 .AND. mcCc<=mcO0+39.2
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+1.936 .AND. mfIl<=mfI0+3.15 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+21.8
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+3.507 .AND. mfIl<=mfI0+4.578 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+10+vtM1
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+4.936 .AND. mfIl<=mfI0+6.15 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+20
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+4.936 .AND. mfIl<=mfI0+6.15 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+22.6 .AND. mcCc<=mcO0+63.4
           STORE 7 TO ciTx
      CASE mfIl>=ifIl .AND. mfIl<=ifIl+2.864 .AND. viTe<>8 .AND. mcCc>= ;
           vcLl .AND. mcCc<=vcLl+35.3 .AND. (vtPo=2 .OR. vtPo=3 .OR. vtPo=5)
           STORE 8 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_3540a
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
PROCEDURE Va1_3540a
 PUBLIC vfB2, vfB3, vfB4, vfB5, vfB6, vcB2, vcB3, vcB4, vcB5, vcB6, vtB2,  ;
        vtB3, vtB4
 PUBLIC vtB5, vpRv, ipRv, upRv, cpRv, xpRv, vcCo, vnCc, vvEn, vnVe, vtDd,  ;
        itDd, utDd
 PUBLIC ctDd, xtDd, vsRr, isRr, usRr, csRr, xsRr, vdCc, idCc, udCc, cdCc,  ;
        xdCc, vbAn
 PUBLIC vnBa, vcTa, vnCt, vcHe, vfLa, vcOl, vfR1, vfR2, vfR3, vfR4, vnU1
 DIMENSION vtAb[5]
 STORE "Por Rendir" TO vtAb[1]
 STORE "Emisión de Cheques (CCO)" TO vtAb[2]
 STORE "Notas de Cargo del Banco" TO vtAb[3]
 STORE "Cancelaciones de Compras" TO vtAb[4]
 STORE "Depósito a Caja" TO vtAb[5]
 STORE mmOn TO vmOn
 STORE "V4" TO vtDo
 STORE 99 TO mkEy
 STORE 00 TO viT1, frEc, ttOt
 STORE 01 TO vrEc, irEc, urEc, viOm, vsW1
 STORE SPACE(01) TO veSt
 STORE SPACE(07) TO vrCb
 STORE SPACE(80) TO vgLo
 STORE SPACE(20) TO vcHe
 STORE SPACE(02) TO vcCo, vvEn
 STORE SPACE(50) TO vnCc, vnVe
ENDPROC
*
PROCEDURE Dv1_3540a
 RELEASE vfB2, vfB3, vfB4, vfB5, vfB6, vcB2, vcB3, vcB4, vcB5, vcB6, vtB2,  ;
         vtB3, vtB4
 RELEASE vtB5, vpRv, ipRv, upRv, cpRv, xpRv, vcCo, vnCc, vvEn, vnVe, vtDd,  ;
         itDd, utDd
 RELEASE ctDd, xtDd, vsRr, isRr, usRr, csRr, xsRr, vdCc, idCc, udCc, cdCc,  ;
         xdCc, vbAn
 RELEASE vnBa, vcTa, vnCt, vcHe, vfLa, vcOl, vfR1, vfR2, vfR3, vfR4, vnU1
ENDPROC
*
PROCEDURE Hl1_3540a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 1.500 SAY  ;
   "Este Mantenimiento, es un programa en donde se pueden ingresar nuevos"
 @ pfIl+1, 1.500 SAY  ;
   "movimientos de Salidas de Bancos, por diferentes conceptos."
 @ pfIl+3, 1.500 SAY "Las teclas para movilizarse son:"
 STORE pfIl+5 TO pfIl
 @ pfIl+0, 26.200 SAY ":" STYLE "BT"
 @ pfIl+1, 26.200 SAY ":" STYLE "BT"
 @ pfIl+2, 26.200 SAY ":" STYLE "BT"
 @ pfIl+0, 8.000 SAY "ESC" STYLE "BT"
 @ pfIl+1, 8.000 SAY "F10" STYLE "BT"
 @ pfIl+2, 8.000 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=01
           @ pfIl, 28.200 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl, 28.200 SAY "Regresar al primer campo"
 ENDCASE
 @ pfIl+1, 28.200 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 28.200 SAY "Ayuda del Programa"
 STORE pfIl+3 TO pfIl
 IF vtPo=2
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F3" STYLE "BT"
      @ pfIl, 28.200 SAY "Escoger Vendedor"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF vtPo=1
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F5" STYLE "BT"
      @ pfIl, 28.200 SAY "Poner o quitar detalle"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 26.200 SAY ":" STYLE "BT"
 @ pfIl+1, 26.200 SAY ":" STYLE "BT"
 @ pfIl+0, 8.000 SAY "F6" STYLE "BT"
 @ pfIl+1, 8.000 SAY "F7" STYLE "BT"
 @ pfIl+0, 28.200 SAY "Escoger Banco"
 @ pfIl+1, 28.200 SAY "Escoger Cuenta de Banco seleccionado"
 STORE pfIl+2 TO pfIl
 IF vtPo=2
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F8" STYLE "BT"
      @ pfIl, 28.200 SAY "Escoger Centro de Costos"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 26.200 SAY ":" STYLE "BT"
 @ pfIl+1, 26.200 SAY ":" STYLE "BT"
 @ pfIl+2, 26.200 SAY ":" STYLE "BT"
 @ pfIl+0, 8.000 SAY "F9" STYLE "BT"
 @ pfIl+1, 8.000 SAY "ENTER" STYLE "BT"
 @ pfIl+2, 8.000 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 28.200 SAY "Escoger Tipo de Salida de Bancos"
 @ pfIl+1, 28.200 SAY "Ir al siguiente campo"
 @ pfIl+2, 28.200 SAY "Ir al campo derecho"
 STORE pfIl+3 TO pfIl
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
 IF viTe>03
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 28.200 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>01
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
 IF vtPo<>2 .AND. vtPo<>3 .AND. vtPo<>5
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
 DO dv1_3540a IN PCI3540A
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
