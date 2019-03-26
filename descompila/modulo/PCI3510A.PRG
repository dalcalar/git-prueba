 PARAMETER wnIv, wtPo, wcAj
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, wmOd, wpRg
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr, wmOd
 STORE "PCI3510A" TO wpRg
 STORE 99 TO mkEy
 DO tmP_3510a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO abR_3510a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_3510a
 DO va1_3510a
 STORE wcAj TO vcAj
 IF vcAj<1
      STORE 1 TO vcAj
 ENDIF
 IF wnIv="1"
      STORE 3 TO vtPo, ctPo
      STORE 1 TO vtPp
 ELSE
      STORE 2 TO vtPo, ctPo, vtPp
 ENDIF
 SELECT tiPo_ing_caja
 SET FILTER TO f9314opc=vtPo
 GOTO TOP
 IF EOF() .OR. BOF()
      IF wnIv="1"
           STORE "No se ha ingresado Tipos de Ingresos a Caja por Cobro de Ventas..."  ;
                 TO mmSj
      ELSE
           STORE "No se ha ingresado Tipos de Ingresos a Caja por Varios (CCO)..."  ;
                 TO mmSj
      ENDIF
      DO poNmsj
      DO deL_files
      RETURN
 ENDIF
 STORE f9314tip TO vtIp
 STORE f9314nti TO vnTi
 SET READBORDER ON
 DO p00_3510a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3510a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3510a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3510a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3510a WITH "1"
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
                DO p00_3510a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF viTe>6
                     STORE 6 TO viTe
                ENDIF
           CASE mkEy=k_F9
                DO tiP_3510a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vtPo=4 .AND. viTe=8
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vtPp=1 .AND. viTe=6
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vtPp=2 .AND. viTe=7
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. (viTe>=4 .AND. viTe<=6))
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<4
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Up .AND. (viTe=7 .OR. viTe=8) .AND. vtPo=4
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO veR_3510a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE (vtPo=4 .AND. viTe=8) .OR. (vtPp=1 .AND. viTe=6)
                               DO deT_3510a IN PCI3510A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPp=2 .AND. viTe=7
                               DO q1_0000a
                               DO grA_3510a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_3510a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE (vtPo=4 .AND. viTe=8) .OR. (vtPp=1 .AND. viTe=6)
                               DO deT_3510a IN PCI3510A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPp=2 .AND. viTe=7
                               DO q1_0000a
                               DO grA_3510a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPo=4 .AND. (viTe=4 .OR. viTe=5 .OR. viTe=6)
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3510a
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
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Down
                DO veR_3510a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE (vtPo=4 .AND. viTe=8) .OR. (vtPp=1 .AND. viTe=6)
                               DO deT_3510a IN PCI3510A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPp=2 .AND. viTe=7
                               DO q1_0000a
                               DO grA_3510a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<4
                               STORE 4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3510a
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
                          CASE vtPo=4 .AND. viTe>5
                               STORE 8 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_3510a
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
                                    DO deT_3510a IN PCI3510A
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
                     CASE viTe=4
                          STORE 1 TO viTe
                     CASE vtPo=4 .AND. viTe>6
                          STORE 1 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO CASE
                     CASE vtPo=4
                          STORE 8 TO ciTx
                     CASE vtPp=1
                          STORE 6 TO ciTx
                     CASE vtPp=2
                          STORE 7 TO ciTx
                ENDCASE
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3510a
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
                     CASE vtPo=4
                          STORE 8 TO ciTx
                     CASE vtPp=1
                          STORE 6 TO ciTx
                     CASE vtPp=2
                          STORE 7 TO ciTx
                ENDCASE
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_3510a
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
                          DO deT_3510a IN PCI3510A
                     ELSE
                          DO grA_3510a
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
                CASE viTe=7 .AND. vtPp=2
                     @mMF2,mMC2+45 Say "EL MONTO NO PUEDE SER CERO..."                                                            Font "&mLetRom",9 Style "BQ"
                CASE viTe=7 .AND. vtPo=4
                     @mMF2,mMC2+14 Say "LA SERIE DE LA LETRA ES DE 3 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=8 .AND. vtPo=4
                     @mMF2,mMC2+14 Say "EL NÚMERO DE LA LETRA ES DE 7 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                 Font "&mLetRom",9 Style "BQ"
           ENDCASE
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
           CASE viTe=7 .AND. ((vtPo=2 .OR. vtPo=5) .OR. (vtPo=1 .AND. vtPp=2))
                @iFIL+0.8,vCLL+16.4 Get  tTOT Font "&mLetRom",12 Style "NQ" Size 1,13.6 Pict "999999.99" Color ,&mColBlN
           CASE vtPo=4 .AND. viTe=7
                STORE VAL(vsRl) TO vsRl
                @mFI0+4.4,vCLL+52.8 Get  vSRL Font "&mLetAri",9  Style "NQ" Size 1,3.9 Pict "999"        Color ,&mColBlN
           CASE vtPo=4 .AND. viTe=8
                STORE VAL(vlEt) TO vlEt
                @mFI0+4.4,vCLL+59.0 Get  vLET Font "&mLetAri",9  Style "NQ" Size 1,10.5 Pict "9999999"   Color ,&mColBlN
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
           CASE vtPo=4 .AND. viTe=7
                IF vsRl=0
                     STORE SPACE(03) TO vsRl
                ELSE
                     STORE STRTRAN(STR(vsRl, 3, 0), " ", "0") TO vsRl
                ENDIF
                @mFI0+4.4,vCLL+52.8 Say vSRL Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"
           CASE vtPo=4 .AND. viTe=8
                IF vlEt=0
                     STORE SPACE(07) TO vlEt
                ELSE
                     STORE STRTRAN(STR(vlEt, 7, 0), " ", "0") TO vlEt
                ENDIF
                @mFI0+4.4,vCLL+59 Say vLET Font "&mLetAri",9 Style "NQ" Pict "9999999" Size 1,10.5
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_3510a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vnTi))=0
           STORE "No hay Tipo de Ingreso a Caja seleccionado..." TO mmSj
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
      CASE viTe=7 .AND. vtPp=2 .AND. ttOt=0
           STORE "Total no puede ser cero..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Gra_3510a
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
 ptX2 = "VOUCHER DE INGRESO A CAJA: "+vsEr+"-"+vnUm
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
 SELECT caB_ing_caja
 DO nuEvo_rg
 REPLACE f3510ano WITH vaNo
 REPLACE f3510mes WITH vmEs
 REPLACE f3510ser WITH vsEr
 REPLACE f3510num WITH vnUm
 REPLACE f3510dia WITH vdIa
 REPLACE f3510tpo WITH vtPo
 REPLACE f3510tpp WITH vtPp
 REPLACE f3510caj WITH vcAj
 REPLACE f3510tip WITH vtIp
 REPLACE f3510nti WITH vnTi
 REPLACE f3510tca WITH vtCa
 REPLACE f3510mon WITH vmOn
 REPLACE f3510tot WITH ttOt
 REPLACE f3510glo WITH vgLo
 REPLACE f3510rcb WITH vrCb
 REPLACE f3510srl WITH vsRl
 REPLACE f3510let WITH vlEt
 REPLACE f3510dnc WITH vdNc
 REPLACE f3510est WITH "1"
 REPLACE f3510usu WITH muSu
 REPLACE f3510dat WITH DATE()
 REPLACE f3510tim WITH TIME()
 UNLOCK
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtD1
      STORE ftM1ser TO vsR1
      STORE ftM1doc TO vdO1
      STORE ftM1pgo TO vpGo
      STORE ftM1rci TO vrCi
      SELECT deT_ing_caja
      DO nuEvo_rg
      REPLACE f3511ano WITH vaNo
      REPLACE f3511mes WITH vmEs
      REPLACE f3511ser WITH vsEr
      REPLACE f3511num WITH vnUm
      REPLACE f3511tdo WITH vtD1
      REPLACE f3511sr1 WITH vsR1
      REPLACE f3511doc WITH vdO1
      REPLACE f3511pag WITH vpGo
      REPLACE f3511rcb WITH vrCi
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
           IF f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3" .OR.  ;
              f3500tdo="ND" .OR. f3500tdo="N2" .OR. f3500tdo="N4" .OR.  ;
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
      DO pcC3510z
 ENDIF
 = INKEY(0.01)
 IF wnIv="1"
      STORE 3 TO vtPo, ctPo
      STORE 1 TO vtPp
 ELSE
      STORE 2 TO vtPo, ctPo, vtPp
 ENDIF
 STORE msEr(07) TO vsRl
 STORE msEr(03) TO vsEr
 STORE mmOn TO vmOn
 STORE wcAj TO vcAj
 STORE "V1" TO vtDo
 STORE 04 TO viTe
 STORE 99 TO mkEy
 STORE 02 TO vdNc
 STORE 00 TO viT1, frEc, ttOt
 STORE 01 TO vrEc, irEc, urEc, viOm, vsW1
 STORE SPACE(01) TO veSt
 STORE SPACE(80) TO vgLo
 STORE SPACE(07) TO vrCb, vlEt
 STORE ifIl TO vfIl, ufIl
 IF vcAj<1
      STORE 1 TO vcAj
 ENDIF
 STORE SUBSTR(DTOC(DATE()), 1, 2) TO vdIa
 SELECT caMbio
 SEEK CTOD(vdIa+"/"+vmEs+"/"+vaNo)
 STORE f9111tc3 TO vtCa
 SELECT tiPo_ing_caja
 SET FILTER TO f9314opc=vtPo
 GOTO TOP
 STORE f9314tip TO vtIp
 STORE f9314nti TO vnTi
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
PROCEDURE Det_3510a
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
           IF frEc=0 .AND. vtPo=3
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
                     STORE f3500nfp TO vfPa
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
                     REPLACE ftM1fpa WITH vfPa
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
                     IF vtD1="NC" .OR. vtD1="N1" .OR. vtD1="N3"
                          STORE ttOt-vpGo TO ttOt
                     ELSE
                          STORE ttOt+vpGo TO ttOt
                     ENDIF
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
 DO pcI3510b
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
           DO grA_3510a IN PCI3510A
      ELSE
           DO grA_3510a IN PCM3510A
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
PROCEDURE Pan_3510a
 STORE vrEc TO crEc
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      DO WHILE  .NOT. EOF()
           STORE ftM1tot-ftM1acu TO vsLd
           IF vmOn<>ftM1mon
                DO CASE
                     CASE ftM1mon=1
                          STORE ROUND(vsLd/vtCa, 2) TO vsLd
                     CASE ftM1mon=2
                          STORE ROUND(vsLd*vtCa, 2) TO vsLd
                ENDCASE
           ENDIF
           REPLACE ftM1sld WITH vsLd
           SKIP
      ENDDO
      GOTO irEc
      DO paN_3510b IN PCI3510B
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO ctO_3510b IN PCI3510B
 STORE crEc TO vrEc
 STORE cfIl TO vfIl
ENDPROC
*
PROCEDURE P00_3510a
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
 STORE mcO0+0.5 TO icLn
 STORE mcO0+83.1 TO vcLl
 STORE mcO0+190.7 TO ucLn
 STORE 72 TO vtM1
 STORE 68.5 TO vtM2
 STORE vcLl+vtM2+28 TO vcB1
 Define Popup vTB1 from mFI0+3.3,vCLL+27 to mFI0+mUFI+3,vCLL+31.2+vTM2 Font "&mLetAri",9 Style "NQ" Scroll Color Scheme 3 Prompt Field F9314TIP+": "+F9314NTI Footer "TIPOS DE INGRESOS A CAJA"
 ON SELECTION POPUP vtB1 DO TB1_0000A
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
 DO prEsiona WITH "1", "ROMBO", mmF1+0.6, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @mMF1+1.1,1.9 Say StrTran(Str(vCAJ,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
 @ mfI0, vcLl TO mfI0+9.7, mcO0+muCo-0.5 PATTERN 1 COLOR SCHEME 3
 @ mfI0, vcLl TO mfI0+0.0, mcO0+muCo-0.5 COLOR RGB(255,255,255,0,0,0)
 @ mfI0, vcLl TO mfI0+9.7, vcLl COLOR RGB(255,255,255,0,0,0)
 DO coL_fondo
 @ mfI0+0.5, vcLl+25.5 TO mfI0+3.75, mcO0+muCo-1.5 PATTERN 1
 @ mfI0+0.5, vcLl+25.5 TO mfI0+0.50, mcO0+muCo-1.5 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+0.5, vcLl+25.5 TO mfI0+3.75, vcLl+25.5 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+4.2, vcLl+1.2 TO mfI0+5.7, vcLl+71 PATTERN 1 COLOR SCHEME 3
 @ mfI0+4.2, vcLl+1.2 TO mfI0+4.2, vcLl+71 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+4.2, vcLl+1.2 TO mfI0+5.7, vcLl+1.2 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+6.9, vcLl+1.2 TO mfI0+8.3, vcLl+70 PATTERN 1 COLOR SCHEME 3
 @ mfI0+6.9, vcLl+1.2 TO mfI0+6.9, vcLl+70 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+6.9, vcLl+1.2 TO mfI0+8.3, vcLl+1.2 COLOR RGB(255,255,255,0,0,0)
 IF wpRg="PCI3510A"
      DO tiT_0000a WITH "Vouchers de Ingresos a Caja nuevos"
      @ mfI0-2.7, mcO0-0.6 TO mfI0-0.6, mcO0+42.0 PATTERN 1 COLOR SCHEME 7
      @ mfI0-2.7, mcO0-0.6 TO mfI0-2.7, mcO0+42.0 COLOR RGB(255,255,255,0,0,0)
      @ mfI0-2.7, mcO0-0.6 TO mfI0-0.6, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
      DO coL_fondo
      @mFI0-2.2,mCO0+30 Say "DIA:" Font "&mLetRom",10 Style "BT"
      @mFI0-2.2,mCO0+36 Get  vDIA  Font "&mLetAri",9  Style "BQ" Size 1,2.2                  Color ,&mColBlN
 ELSE
      STORE mfI0-2.35 TO vfBi
      STORE mcO0+55.6 TO vcBi
      DO tiT_0000a WITH "Modificación de Vouchers de Ingresos a Caja"
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
 @mFI0-2.2,mCO0+02 Say "AÑO:"   Font "&mLetRom",10 Style "BT"
 @mFI0-2.2,mCO0+18 Say "MES:"   Font "&mLetRom",10 Style "BT"
 @mFI0+0.5,mCO0+01 Say "Moneda" Font "&mLetAri",10 Style "NT"
 @mFI0+2.0,mCO0+01 Say "T/C"    Font "&mLetAri",10 Style "NT"
 @mFI0+3.5,mCO0+01 Say "Glosa"  Font "&mLetAri",10 Style "NT"
 @mFI0+5.0,mCO0+01 Say "Recibo" Font "&mLetAri",10 Style "NT"
 @mFI0-2.2,mCO0+10 Get  vANO    Font "&mLetAri",9  Style "BQ" Size 1,4.5                  Color ,&mColBlN
 @mFI0-2.2,mCO0+25 Get  vMES    Font "&mLetAri",9  Style "BQ" Size 1,2.2                  Color ,&mColBlN
 @mFI0+2.0,mCO0+10 Get  vTCA    Font "&mLetAri",9  Style "NQ" Size 1,11.2 Pict "99.99999" Color ,&mColBlN
 @mFI0+3.5,mCO0+10 Edit vGLO    Font "&mLetAri",9  Style "NQ" Size 1,vTM1,80
 @mFI0+5.0,mCO0+10 Get  vRCB    Font "&mLetAri",9  Style "NQ" Size 1,10.5                 Color ,&mColBlN
 DO coL_fondo
 @mFI0+0.5,mCO0+13.0 Get  vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 @mFI0+2.0,vCLL+27.4 Edit vNTI Font "&mLetAri",9 Style "NQ" Size 1,vTM2,50
 DO coLblz
 @mFI0+0.5,vCLL+27.4 Say "Tipo de Ingreso:" Font "&mLetRom",12 Style "BT"
 @mFI0+4.4,vCLL+45.4 Say "Letra"            Font "&mLetAri",10 Style "NT"
 DO leT_3510a IN PCI3510A
 DO coLsc6
 @mFI0+7.0,vCLL+45.4 Get vDNC Font "&mLetRom",11 Style "NQ" Default vDNC Function "*RHT Dcta;no Dcta"
 DO tpP_3510a
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
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
PROCEDURE P01_3510a
 DO coL_fondo
 @ ifIl-0.25, mcO0 TO ffIl+1.2, mcO0+muCo PATTERN 1
 DO coLsc7
 @ ifIl-1.6, mcO0 TO ifIl-0.2, mcO0+muCo PATTERN 1
 @ ffIl+1.1, mcO0 TO ffIl+2.6, mcO0+muCo PATTERN 1
 DO liN_3510a IN PCI3510A WITH ifIl-0.2, ffIl+1.1
 @ ifIl-1.5, mcO0+05.2 TO ifIl-0.2, mcO0+05.2
 @ ifIl-1.5, mcO0+27.0 TO ifIl-0.2, mcO0+27.0
 DO coLsc7
 @iFIL-1.4,mCO0+00.9 Say "Ítem"      Font "&mLetAri",8 Style "NQ"
 @iFIL-1.4,mCO0+06.0 Say "Documento" Font "&mLetAri",9 Style "BQ"
 @iFIL-1.4,mCO0+27.8 Say "Cliente"   Font "&mLetAri",9 Style "BQ"
 DO coLplp
 @ ifIl-1.5, mcO0+107.8 TO ifIl-0.2, mcO0+107.8
 @ ifIl-1.5, mcO0+121.2 TO ifIl-0.2, mcO0+121.2
 @ ifIl-1.5, mcO0+134.6 TO ifIl-0.2, mcO0+134.6
 @ ifIl-1.5, mcO0+155.5 TO ifIl-0.2, mcO0+155.5
 @ ifIl-1.5, mcO0+170.5 TO ifIl-0.2, mcO0+170.5
 @ ifIl-1.5, mcO0+186.1 TO ifIl-0.2, mcO0+186.1
 @ ffIl+1.1, mcO0+153.9 TO ffIl+2.6, mcO0+186.2
 DO coLsc7
 @iFIL-1.4,mCO0+110.5 Say "Emisión"   Font "&mLetAri",9 Style "BQ"
 @iFIL-1.4,mCO0+139.4 Say "Monto-Doc" Font "&mLetAri",9 Style "BQ"
 @iFIL-1.4,mCO0+158.0 Say "Saldo"     Font "&mLetAri",9 Style "BQ"
 @iFIL-1.4,mCO0+175.1 Say "A Cuenta"  Font "&mLetAri",9 Style "BQ"
 @fFIL+1.3,mCO0+154.9 Say "Total"     Font "&mLetAri",9 Style "BQ"
 DO p03_3510a IN PCI3510A
 DO siG_3510a IN PCI3510A
ENDPROC
*
PROCEDURE P02_3510a
 DO coL_fondo
 @ ifIl-1.8, mcO0 TO ffIl+3, mcO0+muCo+0.2 PATTERN 1 PEN 0, 0
 DO coLbln
 @ ifIl, vcLl TO ifIl+2.9, vcLl+35.4 PATTERN 1 COLOR SCHEME 7
 @ ifIl, vcLl TO ifIl+0.0, vcLl+35.4 COLOR RGB(255,255,255,0,0,0)
 @ ifIl, vcLl TO ifIl+2.9, vcLl COLOR RGB(255,255,255,0,0,0)
 @iFIL+0.8,vCLL+03.4 Say "TOTAL"  Font "&mLetRom",12 Style "BT"
 @iFIL+0.8,vCLL+16.4 Get  tTOT    Font "&mLetRom",12 Style "NQ" Pict "999999.99" Size 1,13.6 Color ,&mColBlN
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE P03_3510a
 DO coLsc7
 DO CASE
      CASE vsW1=1 .AND. (wpRg="PCI3510A" .OR. wpRg="PCM3510A")
           @iFIL-1.4,mCO0+122.9 Say " F.Pago"  Font "&mLetAri",9 Style "BQ" Size 1,9
      CASE vsW1=1
           @iFIL-1.4,mCO0+122.9 Say " Vencim"  Font "&mLetAri",9 Style "BQ" Size 1,9
      CASE vsW1=2
           @iFIL-1.4,mCO0+122.9 Say " Recibo"  Font "&mLetAri",9 Style "BQ" Size 1,9
 ENDCASE
ENDPROC
*
PROCEDURE Let_3510a
 IF vtPo=4
      @mFI0+4.4,vCLL+52.8 Get vSRL Font "&mLetAri",9 Style "NQ" Pict "999"     Size 1,03.9 Color ,&mColBlN
      @mFI0+4.4,vCLL+59.0 Get vLET Font "&mLetAri",9 Style "NQ" Pict "9999999" Size 1,10.5 Color ,&mColBlN
 ELSE
      @mFI0+4.4,vCLL+52.8 Get vSRL Font "&mLetAri",9 Style "NQ" Pict "999"     Size 1,03.9 Color ,&mColSc3
      @mFI0+4.4,vCLL+59.0 Get vLET Font "&mLetAri",9 Style "NQ" Pict "9999999" Size 1,10.5 Color ,&mColSc3
 ENDIF
ENDPROC
*
PROCEDURE Lin_3510a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+005.2 TO pfIn, mcO0+005.2
 @ piNi, mcO0+009.9 TO pfIn, mcO0+009.9
 @ piNi, mcO0+015.7 TO pfIn, mcO0+015.7
 @ piNi, mcO0+027.0 TO pfIn, mcO0+027.0
 @ piNi, mcO0+107.8 TO pfIn, mcO0+107.8
 @ piNi, mcO0+121.2 TO pfIn, mcO0+121.2
 @ piNi, mcO0+134.6 TO pfIn, mcO0+134.6
 @ piNi, mcO0+140.5 TO pfIn, mcO0+140.5
 @ piNi, mcO0+155.5 TO pfIn, mcO0+155.5
 @ piNi, mcO0+170.5 TO pfIn, mcO0+170.5
 @ piNi, mcO0+186.1 TO pfIn, mcO0+186.1
ENDPROC
*
PROCEDURE Tip_3510a
 = INKEY(0.01)
 SELECT tiPo_ing_caja
 SET FILTER TO f9314opc=vtPo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Ingresos a Caja registrados..." TO mmSj
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
 IF mkEy=k_Enter .AND. f9314tip<>vtIp
      STORE f9314tip TO vtIp
      STORE f9314nti TO vnTi
      DO ntI_3510a
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Mon_3510a
 PARAMETER ptP1, ptP2, ptP3
 @mFI0+0.5,mCO0+13 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 READ TIMEOUT 0.01
 STORE 99 TO mkEy
 IF vtPo<>ptP1 .AND. vtPo<>ptP2 .AND. (ptP3=0 .OR. vtPo<>ptP3)
      DO siG_3510a IN PCI3510A
      STORE vrEc TO crEc
      STORE vfIl TO cfIl
      STORE 00 TO ttOt
      SELECT teMporal
      GOTO TOP
      IF  .NOT. BOF()
           DO WHILE  .NOT. EOF()
                STORE ftM1tot-ftM1acu TO vsLd
                IF vmOn<>ftM1mon
                     DO CASE
                          CASE ftM1mon=1
                               STORE ROUND(vsLd/vtCa, 2) TO vsLd
                          CASE ftM1mon=2
                               STORE ROUND(vsLd*vtCa, 2) TO vsLd
                     ENDCASE
                ENDIF
                DO CASE
                     CASE vmOn=1
                          STORE ROUND(ftM1pgo*vtCa, 2) TO vpGo
                     CASE vmOn=2
                          STORE ROUND(ftM1pgo/vtCa, 2) TO vpGo
                ENDCASE
                REPLACE ftM1sld WITH vsLd
                REPLACE ftM1pgo WITH vpGo
                DO CASE
                     CASE (vtD2="NC" .OR. vtD2="N1" .OR. vtD2="N3") .AND.  ;
                          (wpRg="PCI3520A" .OR. wpRg="PCM3520A")
                          STORE ttOt-vpGo TO ttOt
                     CASE vtD1="NC" .OR. vtD1="N1" .OR. vtD1="N3"
                          STORE ttOt-vpGo TO ttOt
                     OTHERWISE
                          STORE ttOt+vpGo TO ttOt
                ENDCASE
                SKIP
           ENDDO
           GOTO irEc
           DO paN_3510b IN PCI3510B
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO ctO_3510b IN PCI3510B
      STORE crEc TO vrEc
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Sig_3510a
 DO CASE
      CASE vmOn=1
           STORE "S/." TO vsIg
      CASE vmOn=2
           STORE "US$" TO vsIg
 ENDCASE
 DO coLsc7
 IF vtPp=1
      @fFIL+1.3,mCO0+161.4 Say vSIG Font "&mLetAri",9 Style "BQ" Size 1,4
      @iFIL-1.4,mCO0+165.5 Say vSIG Font "&mLetAri",9 Style "BQ" Size 1,4
 ENDIF
ENDPROC
*
PROCEDURE Nti_3510a
 DO coL_fondo
 @mFI0+2,vCLL+27.4 Say Substr(vNTI,1,vTM2+2) Font "&mLetAri",9 Style "NQ" Size 1,vTM2
ENDPROC
*
PROCEDURE Tpp_3510a
 @mFI0+0.3,vCLL+1.6 Get vTPO Font "&mLetAri",10 Style "NT" Default vTPO Function "*RVT &vTAB[1];&vTAB[2];&vTAB[3];&vTAB[4];&vTAB[5];&vTAB[6];&vTAB[7]" Size 1,10,.2
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Tpo_3510a
 DO tpP_3510a
 SELECT tiPo_ing_caja
 SET FILTER TO f9314opc=vtPo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE SPACE(02) TO vtIp
      STORE SPACE(50) TO vnTi
 ELSE
      STORE f9314tip TO vtIp
      STORE f9314nti TO vnTi
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
PROCEDURE Clp_3510a
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
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>1 .AND.  ;
           mcCc>=mcO0+12.8 .AND. mcCc<=mcO0+19.8
           STORE 1 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 5, 0
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>2 .AND.  ;
           mcCc>=mcO0+19.8 .AND. mcCc<=mcO0+28.4
           STORE 2 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 5, 0
      CASE mfIl>=mfI0+7 .AND. mfIl<=mfI0+8.221 .AND. vdNc<>1 .AND. mcCc>= ;
           vcLl+45.3 .AND. mcCc<=vcLl+55.5 .AND. vtPo=6
           STORE 1 TO vdNc
           @mFI0+7,vCLL+45.4 Get vDNC Font "&mLetRom",11 Style "NQ" Default vDNC Function "*RHT Dcta;no Dcta"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7 .AND. mfIl<=mfI0+8.221 .AND. vdNc<>2 .AND. mcCc>= ;
           vcLl+55.5 .AND. mcCc<=vcLl+69.7 .AND. vtPo=6
           STORE 2 TO vdNc
           @mFI0+7,vCLL+45.4 Get vDNC Font "&mLetRom",11 Style "NQ" Default vDNC Function "*RHT Dcta;no Dcta"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.293 .AND. mfIl<=mfI0+1.436 .AND. vtPo<>1 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+17.6
           STORE 1 TO vtPo, ctPo
           IF wnIv="2"
                STORE 2 TO vtPp
           ELSE
                STORE 1 TO vtPp
           ENDIF
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3510a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vtPp=1
                DO p01_3510a
                DO paN_3510a IN PCI3510A
                DO leT_3510a IN PCI3510A
                READ TIMEOUT 0.01
           ELSE
                DO p02_3510a
           ENDIF
           DO CASE
                CASE viTe>6 .AND. vtPp=1
                     STORE 6 TO viTe
                CASE viTe>7
                     STORE 7 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.436 .AND. mfIl<=mfI0+2.793 .AND. vtPo<>2 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+12.8
           STORE 2 TO vtPo, ctPo, vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3510a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a
           IF viTe>7
                STORE 7 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.793 .AND. mfIl<=mfI0+4.15 .AND. vtPo<>3 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+24.6
           STORE 3 TO vtPo, ctPo
           STORE 1 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3510a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p01_3510a
           DO paN_3510a IN PCI3510A
           DO leT_3510a IN PCI3510A
           READ TIMEOUT 0.01
           IF viTe>6
                STORE 6 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.15 .AND. mfIl<=mfI0+5.578 .AND. vtPo<>4 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+37.4
           STORE 4 TO vtPo, ctPo
           STORE 1 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3510a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p01_3510a
           DO paN_3510a IN PCI3510A
           DO leT_3510a IN PCI3510A
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.578 .AND. mfIl<=mfI0+6.864 .AND. vtPo<>5 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+36.8
           STORE 5 TO vtPo, ctPo
           STORE 2 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3510a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a
           IF viTe>7
                STORE 7 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.864 .AND. mfIl<=mfI0+8.221 .AND. vtPo<>6 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+41
           STORE 6 TO vtPo, ctPo
           STORE 1 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3510a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p01_3510a
           DO paN_3510a IN PCI3510A
           DO leT_3510a IN PCI3510A
           READ TIMEOUT 0.01
           IF viTe>6
                STORE 6 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.221 .AND. mfIl<=mfI0+9.578 .AND. vtPo<>7 .AND.  ;
           mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+37.4
           STORE 7 TO vtPo, ctPo
           STORE 2 TO vtPp
           RESTORE SCREEN FROM vpAn_99
           DO tpO_3510a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO p02_3510a
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
      CASE mfIl>=mfI0+4.293 .AND. mfIl<=mfI0+5.507 .AND. vtPo=4 .AND.  ;
           mcCc>=vcLl+52.4 .AND. mcCc<=vcLl+57.2 .AND. viTe<>7
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+4.293 .AND. mfIl<=mfI0+5.507 .AND. vtPo=4 .AND.  ;
           mcCc>=vcLl+58.6 .AND. mcCc<=vcLl+69 .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=ifIl .AND. mfIl<=ifIl+2.864 .AND. viTe<>7 .AND. mcCc>= ;
           vcLl .AND. mcCc<=vcLl+35.3 .AND. (vtPo=2 .OR. vtPo=5)
           STORE 7 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_3510a
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
PROCEDURE Tmp_3510a
 DIMENSION afIl[17, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FPA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SLD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PGO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1RCI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1IMP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TD2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SR2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DO2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE DATABASES
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PGO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE "TM01"+ntM2+meXt TO mdBf
 DO WHILE .T.
      ntM2 = STRTRAN(STR(VAL(ntM2)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM2+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM2="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "N"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM2tdo+ftM2ser+ftM2doc TAG ftM2doc
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE "TM01"+ntM3+meXt TO mdBf
 DO WHILE .T.
      ntM3 = STRTRAN(STR(VAL(ntM3)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM3+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM3="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "N"
           DO deL_file2 WITH "2", "S"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM3tdo+ftM3ser TAG ftM3tdo
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
ENDPROC
*
PROCEDURE Abr_3510a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Clientes
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Documentos de Ventas no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Documentos de Compras no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Letras
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3111", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Letras
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3111LET
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Vtas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "3501", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Ini_Vtas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3501DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Total_Vtas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ing_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3511NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "3520", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sal_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3520NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "3521", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sal_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3521NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "3530", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ing_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3530NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 17
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3531NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "3540", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sal_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "3541", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sal_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3541NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "3600", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Cpras
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3600DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 21
 DO abR_0000a IN PUX0000A WITH "3601", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Ini_Cpras
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3601DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 22
 DO abR_0000a IN PUX0000A WITH "3602", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Total_Cpras
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3602TDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 23
 DO abR_0000a IN PUX0000A WITH "3610", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Nota
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3610DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "3611", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Nota
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3611DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 25
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 26
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cambio
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedor
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "9215", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Transportista
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9215COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "9312", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9312BAN
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "Archivo Utilitario de Bancos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "9313", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cuentas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9313CTA
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "Archivo Utilitario de Cuentas de Bancos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 31
 DO abR_0000a IN PUX0000A WITH "9314", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Ing_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9314NTI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "Archivo Utilitario de Tipos de Ingresos a Caja vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 32
 DO abR_0000a IN PUX0000A WITH "9315", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Sal_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9315NTI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "Archivo Utilitario de Tipos de Salidas de Caja vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "9316", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Ing_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9316NTI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "Archivo Utilitario de Tipos de Ingresos a Bancos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "9317", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Sal_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9317NTI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "Archivo Utilitario de Tipos de Salidas de Bancos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 35
 DO abR_0000a IN PUX0000A WITH "9318", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias CCosto
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9318CCO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 36
 DO abR_0000a IN PUX0000A WITH "9397", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9397TDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 37
 DO abR_0000a IN PUX0000A WITH "9998", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Numeros
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9998NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 38
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion_2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 39
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 40
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Existe
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM2DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 41
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Tdo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM3TDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Var_3510a
 PUBLIC viTe, viT1, ciTx, vtAb, vtB1, viOm, vfB1, vcB1, icLn, ucLn, vcLl,  ;
        vfIl, ifIl
 PUBLIC ufIl, ffIl, cfIl, vfFr, ifFr, ufFr, ffFr, cfFr, vrEc, irEc, urEc,  ;
        frEc, crEc
 PUBLIC vtDo, vtD1, itD1, utD1, xtD1, ctD1, vtD2, ctD2, ctD3, vsEr, vsR1,  ;
        isR1, usR1
 PUBLIC xsR1, csR1, vsR2, xsR2, csR2, csR3, vnUm, xnU2, vdOc, vdO1, idO1,  ;
        udO1, xdO1
 PUBLIC cdO1, vdO2, cdO2, cdO3, vnOm, inOm, unOm, cnOm, xnOm, vaNo, xaNo,  ;
        xaN2, vaN1
 PUBLIC iaN1, uaN1, caN1, vmEs, xmEs, xmE2, vmE1, imE1, umE1, cmE1, vdIa,  ;
        xdIa, vdI1
 PUBLIC idI1, udI1, cdI1, vaNv, iaNv, uaNv, caNv, xaNv, vmEv, imEv, umEv,  ;
        cmEv, xmEv
 PUBLIC vdIv, idIv, udIv, cdIv, xdIv, vtPo, ctPo, vtPp, vtIp, vnTi, vmOn,  ;
        cmOn, vmNd
 PUBLIC cmNd, vtCa, ctCa, xtCa, ctC1, ctC2, ctC3, ctC4, vgLo, vrCb, vrCi,  ;
        crCi, vsW1
 PUBLIC vsWw, csWw, vtO1, ctO1, ttOt, ctOt, vtM1, vtM2, vsIg, vsGg, vnO1,  ;
        cnO1, vfE1
 PUBLIC cfE1, vfV1, cfV1, vaC1, caC1, vaCu, vrEn, vmO1, vfCa, vsLd, csLd,  ;
        vpGo, cpGo
 PUBLIC veSt, vpAg, vlIn, voPc, cfEm, cfVe, vsPe, vnPe, vmNn, vfPa, cfPa
 PUBLIC vpAn_11, vpAn_99
 STORE msEr(03) TO vsEr
 STORE SPACE(03) TO vsPe
 STORE SPACE(07) TO vnPe
 STORE 00 TO ciTx
 STORE 04 TO viTe
 STORE 01 TO vtPp, vmNn
 STORE SUBSTR(DTOC(DATE()), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(DATE()), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(DATE()), 7, 4) TO vaNo
 SELECT caMbio
 SEEK CTOD(vdIa+"/"+vmEs+"/"+vaNo)
 IF EOF()
      GOTO BOTTOM
      IF  .NOT. EOF()
           STORE f9111tc1 TO ctC1
           STORE f9111tc2 TO ctC2
           STORE f9111tc3 TO ctC3
           STORE f9111tc4 TO ctC4
           DO nuEvo_rg
           REPLACE f9111fem WITH CTOD(vdIa+"/"+vmEs+"/"+vaNo)
           REPLACE f9111tc1 WITH ctC1
           REPLACE f9111tc2 WITH ctC2
           REPLACE f9111tc3 WITH ctC3
           REPLACE f9111tc4 WITH ctC4
           UNLOCK
           FLUSH
      ENDIF
 ENDIF
 STORE f9111tc3 TO vtCa, ctCa
ENDPROC
*
PROCEDURE Va1_3510a
 PUBLIC vsRl, vlEt, vdNc, ctDo, cdOc, cnTi, vcAj, vcLi, icLi, ucLi, ccLi,  ;
        xcLi, vtIt
 PUBLIC itIt, utIt, ctIt, xtIt, vnTt, inTt, unTt, cnTt, xnTt
 DIMENSION vtAb[7]
 STORE "Por Rendir" TO vtAb[1]
 STORE "Varios" TO vtAb[2]
 STORE "Cobro de Ventas" TO vtAb[3]
 STORE "Canje/Renovación de Letras" TO vtAb[4]
 STORE "Ingreso a Caja con Cheque" TO vtAb[5]
 STORE "Aplicación de Notas de Crédito" TO vtAb[6]
 STORE "Canje de otros documentos" TO vtAb[7]
 STORE mmOn TO vmOn
 STORE msEr(07) TO vsRl
 STORE "V1" TO vtDo
 STORE 99 TO mkEy
 STORE 02 TO vdNc
 STORE 00 TO viT1, frEc, ttOt
 STORE 01 TO vrEc, irEc, urEc, viOm, vsW1
 STORE SPACE(01) TO veSt
 STORE SPACE(80) TO vgLo
 STORE SPACE(07) TO vrCb, vlEt
ENDPROC
*
PROCEDURE Dva_3510a
 RELEASE viTe, viT1, ciTx, vtAb, vtB1, viOm, vfB1, vcB1, icLn, ucLn, vcLl,  ;
         vfIl, ifIl
 RELEASE ufIl, ffIl, cfIl, vfFr, ifFr, ufFr, ffFr, cfFr, vrEc, irEc, urEc,  ;
         frEc, crEc
 RELEASE vtDo, vtD1, itD1, utD1, xtD1, ctD1, vtD2, ctD2, ctD3, vsEr, vsR1,  ;
         isR1, usR1
 RELEASE xsR1, csR1, vsR2, xsR2, csR2, csR3, vnUm, xnU2, vdOc, vdO1, idO1,  ;
         udO1, xdO1
 RELEASE cdO1, vdO2, cdO2, cdO3, vnOm, inOm, unOm, cnOm, xnOm, vaNo, xaNo,  ;
         xaN2, vaN1
 RELEASE iaN1, uaN1, caN1, vmEs, xmEs, xmE2, vmE1, imE1, umE1, cmE1, vdIa,  ;
         xdIa, vdI1
 RELEASE idI1, udI1, cdI1, vaNv, iaNv, uaNv, caNv, xaNv, vmEv, imEv, umEv,  ;
         cmEv, xmEv
 RELEASE vdIv, idIv, udIv, cdIv, xdIv, vtPo, ctPo, vtPp, vtIp, vnTi, vmOn,  ;
         cmOn, vmNd
 RELEASE cmNd, vtCa, ctCa, xtCa, ctC1, ctC2, ctC3, ctC4, vgLo, vrCb, vrCi,  ;
         crCi, vsW1
 RELEASE vsWw, csWw, vtO1, ctO1, ttOt, ctOt, vtM1, vtM2, vsIg, vsGg, vnO1,  ;
         cnO1, vfE1
 RELEASE cfE1, vfV1, cfV1, vaC1, caC1, vaCu, vrEn, vmO1, vfCa, vsLd, csLd,  ;
         vpGo, cpGo
 RELEASE veSt, vpAg, vlIn, voPc, cfEm, cfVe, vsPe, vnPe, vmNn, vfPa, cfPa
 RELEASE vpAn_11, vpAn_99
ENDPROC
*
PROCEDURE Dv1_3510a
 RELEASE vsRl, vlEt, vdNc, ctDo, cdOc, cnTi, vcAj, vcLi, icLi, ucLi, ccLi,  ;
         xcLi, vtIt
 RELEASE itIt, utIt, ctIt, xtIt, vnTt, inTt, unTt, cnTt, xnTt
ENDPROC
*
PROCEDURE Hl1_3510a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 1.500 SAY  ;
   "Este Mantenimiento, es un programa en donde se pueden ingresar nuevos"
 @ pfIl+1, 1.500 SAY  ;
   "movimientos de Ingresos a Caja, por diferentes conceptos."
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
 @ pfIl+0, 8.000 SAY "F9" STYLE "BT"
 @ pfIl+1, 8.000 SAY "ENTER" STYLE "BT"
 @ pfIl+2, 8.000 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 28.200 SAY "Escoger Tipo de Ingreso a Caja"
 @ pfIl+1, 28.200 SAY "Ir al siguiente campo"
 @ pfIl+2, 28.200 SAY "Ir al campo derecho"
 STORE pfIl+3 TO pfIl
 IF viTe>01
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
 IF vtPo<>2 .AND. vtPo<>5 .AND. vtPp=1
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
 DO dvA_3510a
 DO dv1_3510a
 SET READBORDER OFF
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
