 PARAMETER wnIv, wtPo
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, wmOd, wpRg
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr, wmOd
 STORE "PCI3530A" TO wpRg
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
 IF wnIv="1"
      STORE 4 TO vtPo, ctPo
      STORE 1 TO vtPp
 ELSE
      STORE 2 TO vtPo, ctPo, vtPp
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
 SELECT tiPo_ing_bancos
 SET FILTER TO f9316opc=vtPo
 GOTO TOP
 IF EOF() .OR. BOF()
      IF wnIv="1"
           STORE "No se ha ingresado Tipos de Ingresos a Bancos por Cobro de Ventas..."  ;
                 TO mmSj
      ELSE
           STORE "No se ha ingresado Tipos de Ingresos a Bancos por Varios (CCO)..."  ;
                 TO mmSj
      ENDIF
      DO poNmsj
      DO deL_files
      RETURN
 ENDIF
 STORE f9316tip TO vtIp
 STORE f9316nti TO vnTi
 SET READBORDER ON
 DO p00_3530a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3530a WITH "1"
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
           CASE mkEy=k_F1
                DO hl1_3530a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3530a WITH "1"
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
           CASE mkEy=k_F5 .AND. vtPo=1
                DO CASE
                     CASE vtPp=1
                          STORE 2 TO vtPp
                     CASE vtPp=2
                          STORE 1 TO vtPp
                ENDCASE
                DO p00_3530a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF viTe>7
                     STORE 7 TO viTe
                ENDIF
           CASE mkEy=k_F6
                DO baN_3530a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                DO ctA_3530a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO tiP_3530a
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
                DO veR_3530a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE vtPp=1 .AND. viTe=7
                               DO deT_3530a IN PCI3530A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPp=2 .AND. viTe=8
                               DO q1_0000a
                               DO grA_3530a
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
                DO veR_3530a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE vtPp=1 .AND. viTe=7
                               DO deT_3530a IN PCI3530A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPp=2 .AND. viTe=8
                               DO q1_0000a
                               DO grA_3530a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<4
                               STORE 4 TO ciTx
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
                          CASE vtPp=1 .AND. viTe>5
                               STORE 7 TO ciTx
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
                          CASE vtPp=2 .AND. viTe>5
                               STORE 8 TO ciTx
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
                     CASE vtPp=2
                          STORE 8 TO ciTx
                     OTHERWISE
                          STORE 7 TO ciTx
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
                     DO q1_0000a
                     IF vtPp=1
                          DO deT_3530a IN PCI3530A
                     ELSE
                          DO grA_3530a
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
                @mFI0+5.0,mCO0+43.0 Edit vCHE Font "&mLetAri",9 Style "NQ" Size 1,20,20
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
PROCEDURE Ver_3530a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vnTi))=0
           STORE "No hay Tipo de Ingreso a Bancos seleccionado..." TO mmSj
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
                          IF vtPo<>2 .AND. vtPo<>3 .AND. vtPp=1
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
      CASE viTe=4
           IF vtCa<>ctCa
                IF vtPo<>2 .AND. vtPo<>3 .AND. vtPp=1
                     DO paN_3510a IN PCI3510A
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE vtCa TO ctCa
           ENDIF
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
PROCEDURE Gra_3530a
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
 ptX1 = "¿Desea Grabar este Documento?"
 ptX2 = "VOUCHER DE INGRESO A BANCOS: "+vsEr+"-"+vnUm
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      WAIT CLEAR
      STORE 4 TO viTe
      STORE SPACE(07) TO vnUm
      UNLOCK ALL
      RETURN
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
 SELECT nuMeracion
 REPLACE f9397num WITH vnUm
 UNLOCK
 SELECT caB_ing_bancos
 DO nuEvo_rg
 REPLACE f3530ano WITH vaNo
 REPLACE f3530mes WITH vmEs
 REPLACE f3530ser WITH vsEr
 REPLACE f3530num WITH vnUm
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
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtD1
      STORE ftM1ser TO vsR1
      STORE ftM1doc TO vdO1
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
      SELECT teMporal
      SKIP
 ENDDO
 UNLOCK ALL
 IF mdEs=5
      SELECT teMporal
      SET FILTER TO ftM1imp="1"
      GOTO TOP
      IF  .NOT. BOF()
           STORE "N" TO moPc
           DO prE_docum WITH  ;
              "Desea imprimir Ordenes de Despacho x las Cancelaciones?"
           IF moPc$"Ss"
                DO WHILE  .NOT. EOF()
                     STORE ftM1tdo TO vtDo
                     STORE ftM1ser TO vsEr
                     STORE ftM1doc TO vdOc
                     SELECT caB_fact
                     SEEK vtDo+vsEr+vdOc
                     IF  .NOT. EOF()
                     ENDIF
                     SELECT teMporal
                     SKIP
                ENDDO
           ENDIF
      ENDIF
 ENDIF
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
 IF wnIv="1"
      STORE 4 TO vtPo, ctPo
      STORE 1 TO vtPp
 ELSE
      STORE 2 TO vtPo, ctPo, vtPp
 ENDIF
 STORE msEr(03) TO vsEr
 STORE mmOn TO vmOn
 STORE "V3" TO vtDo
 STORE 04 TO viTe
 STORE 99 TO mkEy
 STORE 00 TO viT1, frEc, ttOt
 STORE 01 TO vrEc, irEc, urEc, viOm, vsW1
 STORE SPACE(01) TO veSt
 STORE SPACE(07) TO vrCb
 STORE SPACE(20) TO vcHe
 STORE SPACE(80) TO vgLo
 STORE ifIl TO vfIl, ufIl
 STORE SUBSTR(DTOC(DATE()), 1, 2) TO vdIa
 SELECT caMbio
 SEEK CTOD(vdIa+"/"+vmEs+"/"+vaNo)
 STORE f9111tc3 TO vtCa
 SELECT tiPo_ing_bancos
 SET FILTER TO f9316opc=vtPo
 GOTO TOP
 STORE f9316tip TO vtIp
 STORE f9316nti TO vnTi
 SELECT cuEntas
 GOTO TOP
 STORE f9313ban TO vbAn
 STORE f9313cta TO vcTa
 STORE f9313des TO vnCt
 STORE f9313mon TO vmNn
 SELECT baNcos
 SEEK vbAn
 STORE f9312nba TO vnBa
 RESTORE SCREEN FROM vpAn_99
 DO coLbln
 @mFI0-2.2,mCO0+10 Say vANO Font "&mLetAri",9 Style "BQ" Pict "9999"     Size 1,4.5
 @mFI0-2.2,mCO0+25 Say vMES Font "&mLetAri",9 Style "BQ" Pict "99"       Size 1,2.2
 @mFI0-2.2,mCO0+36 Say vDIA Font "&mLetAri",9 Style "BQ" Pict "99"       Size 1,2.2
 @mFI0+2.0,mCO0+10 Say vTCA Font "&mLetAri",9 Style "NQ" Pict "99.99999" Size 1,11.2
 IF vtPp=1
      DO p01_3510a IN PCI3510A
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
PROCEDURE Det_3530a
 PRIVATE ptX1, ptX2, poPc
 SELECT teMporal
 GOTO TOP
 IF BOF()
      SELECT peNd_vtas
      STORE 00 TO ttOt
      STORE 99 TO mkEy
      DO orD_0000a WITH "3500", "C", "F3500FE2", "A"
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
                DO WHILE  .NOT. EOF() .AND. f3500est=" " .AND. f3500fem= ;
                   CTOD(vdIa+"/"+vmEs+"/"+vaNo)
                     STORE f3500tdo TO vtD1
                     STORE f3500ser TO vsR1
                     STORE f3500doc TO vdO1
                     STORE f3500nom TO vnO1
                     STORE f3500fem TO vfE1
                     STORE f3500fve TO vfV1
                     STORE f3500mon TO vmNd
                     STORE f3500tot+f3500int TO vtO1
                     STORE f3500acu TO vaC1
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
                     SELECT peNd_vtas
                     SKIP
                ENDDO
           ENDIF
      ENDIF
      DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
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
 DO pcI3530b
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
           DO grA_3530a IN PCI3530A
      ELSE
           DO grA_3530a IN PCM3530A
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
PROCEDURE P00_3530a
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
 STORE mfI0+11.5 TO ifIl, ufIl, vfIl
 STORE ifIl+20 TO ffIl
 STORE mfI0-1 TO ifFr, ufFr, vfFr
 STORE ifFr+36 TO ffFr
 STORE mfI0+1.95 TO vfB1
 STORE mfI0+6.5 TO vfB2
 STORE mfI0+8.0 TO vfB3
 STORE mcO0+0.5 TO icLn
 STORE mcO0+83.1 TO vcLl
 STORE mcO0+190.7 TO ucLn
 STORE 72 TO vtM1
 STORE 68.5 TO vtM2
 STORE vcLl+vtM2+28 TO vcB1, vcB2, vcB3
 Define Popup vTB1 from mFI0+3.3,vCLL+27 to mFI0+mUFI+3,vCLL+31.2+vTM2 Font "&mLetAri",9 Style "NQ" Scroll Color Scheme 3 Prompt Field F9316TIP+": "+F9316NTI Footer "TIPOS DE INGRESOS A BANCOS"
 Define Popup vTB2 from mFI0+7.8,vCLL+27 to mFI0+mUFI+3,vCLL+31.2+vTM2 Font "&mLetCou",9 Style "NQ" Scroll Color Scheme 3 Prompt Field Substr(F9312NBA,1,30)+": "+F9312BAN Footer "BANCOS"
 Define Popup vTB3 from mFI0+9.3,vCLL+27 to mFI0+mUFI+3,vCLL+31.2+vTM2 Font "&mLetCou",9 Style "NQ" Scroll Color Scheme 3 Prompt Field Substr(F9313DES,1,30)+": "+F9313CTA Footer "CUENTAS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
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
 @ mfI0, vcLl TO mfI0+6.0, mcO0+muCo-0.5 PATTERN 1 COLOR SCHEME 3
 @ mfI0, vcLl TO mfI0+0.0, mcO0+muCo-0.5 COLOR RGB(255,255,255,0,0,0)
 @ mfI0, vcLl TO mfI0+6.0, vcLl COLOR RGB(255,255,255,0,0,0)
 DO coL_fondo
 @ mfI0+0.5, vcLl+25.5 TO mfI0+3.75, mcO0+muCo-1.5 PATTERN 1
 @ mfI0+0.5, vcLl+25.5 TO mfI0+0.50, mcO0+muCo-1.5 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+0.5, vcLl+25.5 TO mfI0+3.75, vcLl+25.5 COLOR RGB(255,255,255,0,0,0)
 IF wpRg="PCI3530A"
      DO tiT_0000a WITH "Vouchers de Ingresos a Bancos nuevos"
      @ mfI0-2.7, mcO0-0.6 TO mfI0-0.6, mcO0+42.0 PATTERN 1 COLOR SCHEME 7
      @ mfI0-2.7, mcO0-0.6 TO mfI0-2.7, mcO0+42.0 COLOR RGB(255,255,255,0,0,0)
      @ mfI0-2.7, mcO0-0.6 TO mfI0-0.6, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
      DO coL_fondo
      @mFI0-2.2,mCO0+30 Say "DIA:" Font "&mLetRom",10 Style "BT"
      @mFI0-2.2,mCO0+36 Get  vDIA  Font "&mLetAri",9  Style "BQ" Size 1,2.2                  Color ,&mColBlN
 ELSE
      STORE mfI0-2.35 TO vfBi
      STORE mcO0+55.6 TO vcBi
      DO tiT_0000a WITH "Modificación de Vouchers de Ingresos a Bancos"
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
 @mFI0-2.2,mCO0+02.0 Say "AÑO:"             Font "&mLetRom",10 Style "BT"
 @mFI0-2.2,mCO0+18.0 Say "MES:"             Font "&mLetRom",10 Style "BT"
 @mFI0+0.5,mCO0+01.0 Say "Moneda"           Font "&mLetAri",10 Style "NT"
 @mFI0+2.0,mCO0+01.0 Say "T/C"              Font "&mLetAri",10 Style "NT"
 @mFI0+3.5,mCO0+01.0 Say "Glosa"            Font "&mLetAri",10 Style "NT"
 @mFI0+5.0,mCO0+01.0 Say "Recibo"           Font "&mLetAri",10 Style "NT"
 @mFI0+5.0,mCO0+23.0 Say "Cheque/Operac."   Font "&mLetAri",10 Style "NT"
 DO coLblz
 @mFI0+0.5,vCLL+27.4 Say "Tipo de Ingreso:" Font "&mLetRom",12 Style "BT"
 @mFI0+6.5,vCLL+15.4 Say "Banco:"           Font "&mLetRom",12 Style "BT"
 @mFI0+8.0,vCLL+15.4 Say "Cuenta:"          Font "&mLetRom",12 Style "BT"
 DO coLbln
 @mFI0+5.0,mCO0+43.0 Edit vCHE              Font "&mLetAri",9  Style "NQ" Size 1,20,20
 @mFI0-2.2,mCO0+10.0 Get  vANO              Font "&mLetAri",9 Style "BQ" Size 1,4.5                  Color ,&mColBlN
 @mFI0-2.2,mCO0+25.0 Get  vMES              Font "&mLetAri",9 Style "BQ" Size 1,2.2                  Color ,&mColBlN
 @mFI0+2.0,mCO0+10.0 Get  vTCA              Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99.99999" Color ,&mColBlN
 @mFI0+3.5,mCO0+10.0 Edit vGLO              Font "&mLetAri",9 Style "NQ" Size 1,vTM1,80
 @mFI0+5.0,mCO0+10.0 Get  vRCB              Font "&mLetAri",9 Style "NQ" Size 1,10.5                 Color ,&mColBlN
 DO coL_fondo
 @mFI0+0.5,mCO0+13.0 Get  vMON              Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 @mFI0+2.0,vCLL+27.4 Edit vNTI              Font "&mLetAri",9 Style "NQ" Size 1,vTM2,50
 @mFI0+6.5,vCLL+27.4 Edit vNBA              Font "&mLetAri",9 Style "NQ" Size 1,vTM2,50
 @mFI0+8.0,vCLL+27.4 Edit vNCT              Font "&mLetAri",9 Style "NQ" Size 1,vTM2,50
 DO tpO_3530a
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
      DO p01_3510a IN PCI3510A
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
PROCEDURE Tip_3530a
 = INKEY(0.01)
 SELECT tiPo_ing_bancos
 SET FILTER TO f9316opc=vtPo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Ingresos a Bancos registrados..." TO mmSj
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
 IF mkEy=k_Enter .AND. f9316tip<>vtIp
      STORE f9316tip TO vtIp
      STORE f9316nti TO vnTi
      DO ntI_3510a IN PCI3510A
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ban_3530a
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
      @mFI0+6.5,vCLL+27.4 Say Substr(vNBA,1,vTM2+3) Font "&mLetAri",9 Style "NQ" Size 1,vTM2
      @mFI0+8.0,vCLL+27.4 Say Substr(vNCT,1,vTM2+3) Font "&mLetAri",9 Style "NQ" Size 1,vTM2
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
PROCEDURE Cta_3530a
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
      @mFI0+8.0,vCLL+27.4 Say Substr(vNCT,1,vTM2+3) Font "&mLetAri",9 Style "NQ" Size 1,vTM2
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tpp_3530a
 @mFI0+0.3,vCLL+1.6 Get vTPO Font "&mLetAri",10 Style "NT" Default vTPO Function "*RVT &vTAB[1];&vTAB[2];&vTAB[3];&vTAB[4]" Size 1,10,.2
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Tpo_3530a
 DO tpP_3530a
 SELECT tiPo_ing_bancos
 SET FILTER TO f9316opc=vtPo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE SPACE(02) TO vtIp
      STORE SPACE(50) TO vnTi
 ELSE
      STORE f9316tip TO vtIp
      STORE f9316nti TO vnTi
 ENDIF
 DO ntI_3510a IN PCI3510A
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
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           STORE k_F9 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           STORE k_F6 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2
           STORE k_F7 TO mkEy
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>1 .AND.  ;
           mcCc>=mcO0+12.8 .AND. mcCc<=mcO0+19.8
           STORE 1 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 3, 0
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>2 .AND.  ;
           mcCc>=mcO0+19.8 .AND. mcCc<=mcO0+28.4
           STORE 2 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 3, 0
      CASE mfIl>=mfI0+0.293 .AND. mfIl<=mfI0+1.436 .AND. vtPo<>1 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+17.6
           STORE 1 TO vtPo, ctPo
           IF wnIv="2"
                STORE 2 TO vtPp
           ELSE
                STORE 1 TO vtPp
           ENDIF
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
           IF viTe>7 .AND. vtPp=1
                STORE 7 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.436 .AND. mfIl<=mfI0+2.793 .AND. vtPo<>2 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+12.8
           STORE 2 TO vtPo, ctPo, vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3530a IN PCI3530A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a IN PCI3510A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.793 .AND. mfIl<=mfI0+4.15 .AND. vtPo<>3 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+24.6
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
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+37.4
           STORE 4 TO vtPo, ctPo
           STORE 1 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3530a IN PCI3530A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p01_3510a IN PCI3510A
           DO paN_3510a IN PCI3510A
           IF viTe>7
                STORE 7 TO viTe
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
           vcLl .AND. mcCc<=vcLl+35.3 .AND. vtPp=2
           STORE 8 TO ciTx
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
PROCEDURE Va1_3530a
 PUBLIC vfB2, vfB3, vcB2, vcB3, vtB2, vtB3, vcLi, icLi, ucLi, ccLi, xcLi,  ;
        vtIt, itIt
 PUBLIC utIt, ctIt, xtIt, vnTt, inTt, unTt, cnTt, xnTt, vbAn, vnBa, vcTa,  ;
        vnCt, vcHe
 PUBLIC vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
 DIMENSION vtAb[4]
 STORE "Por Rendir" TO vtAb[1]
 STORE "Ingresos Varios" TO vtAb[2]
 STORE "Notas de Abono" TO vtAb[3]
 STORE "Cobro de Ventas" TO vtAb[4]
 STORE mmOn TO vmOn
 STORE "V3" TO vtDo
 STORE 99 TO mkEy
 STORE 00 TO viT1, frEc, ttOt
 STORE 01 TO vrEc, irEc, urEc, viOm, vsW1
 STORE SPACE(01) TO veSt
 STORE SPACE(07) TO vrCb
 STORE SPACE(20) TO vcHe
 STORE SPACE(80) TO vgLo
ENDPROC
*
PROCEDURE Dv1_3530a
 RELEASE vfB2, vfB3, vcB2, vcB3, vtB2, vtB3, vcLi, icLi, ucLi, ccLi, xcLi,  ;
         vtIt, itIt
 RELEASE utIt, ctIt, xtIt, vnTt, inTt, unTt, cnTt, xnTt, vbAn, vnBa, vcTa,  ;
         vnCt, vcHe
 RELEASE vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
ENDPROC
*
PROCEDURE Hl1_3530a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 1.500 SAY  ;
   "Este Mantenimiento, es un programa en donde se pueden ingresar nuevos"
 @ pfIl+1, 1.500 SAY  ;
   "movimientos de Ingresos a Bancos, por diferentes conceptos."
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
 IF vtPo=1
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F5" STYLE "BT"
      @ pfIl, 28.200 SAY "Poner o quitar detalle"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 26.200 SAY ":" STYLE "BT"
 @ pfIl+1, 26.200 SAY ":" STYLE "BT"
 @ pfIl+2, 26.200 SAY ":" STYLE "BT"
 @ pfIl+3, 26.200 SAY ":" STYLE "BT"
 @ pfIl+4, 26.200 SAY ":" STYLE "BT"
 @ pfIl+0, 8.000 SAY "F6" STYLE "BT"
 @ pfIl+1, 8.000 SAY "F7" STYLE "BT"
 @ pfIl+2, 8.000 SAY "F9" STYLE "BT"
 @ pfIl+3, 8.000 SAY "ENTER" STYLE "BT"
 @ pfIl+4, 8.000 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 28.200 SAY "Escoger Banco"
 @ pfIl+1, 28.200 SAY "Escoger Cuenta de Banco seleccionado"
 @ pfIl+2, 28.200 SAY "Escoger Tipo de Ingreso a Bancos"
 @ pfIl+3, 28.200 SAY "Ir al siguiente campo"
 @ pfIl+4, 28.200 SAY "Ir al campo derecho"
 STORE pfIl+5 TO pfIl
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
 IF vtPo<>2 .AND. vtPo<>4
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
