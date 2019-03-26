 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, wmOd, wpRg
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr
 STORE 02 TO wmOd
 STORE "PCM3520A" TO wpRg
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
 DO va1_3520a IN PCI3520A
 PUBLIC vfBi, vcBi, caNo, cmEs, csEr, xsEr, isEr, usEr, cnUm, inUm, unUm,  ;
        xnUm, vsW0
 PUBLIC iaNo, uaNo, imEs, umEs, idIa, udIa, irCb, urCb, xrCb, isRl, usRl,  ;
        xsRl, ilEt
 PUBLIC ulEt, xlEt, igLo, ugLo, xgLo
 STORE 00 TO ctCa
 STORE 01 TO viTe
 SELECT caB_sal_caja
 DO orD_0000a WITH "3520", "C", "F3520EST", "A"
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
           IF f3520est<>"1"
                SKIP -1
           ENDIF
      ENDIF
 ENDIF
 STORE f3520ano TO vaNo
 STORE f3520mes TO vmEs
 STORE f3520dia TO vdIa
 STORE f3520ser TO vsEr
 STORE f3520num TO vnUm
 STORE f3520tip TO vtIp
 STORE f3520tpo TO ctPo
 STORE f3520caj TO vcAj
 STORE f3520nti TO vnTi
 STORE f3520tca TO vtCa
 STORE f3520mon TO vmOn
 STORE f3520cco TO vcCo
 STORE f3520ncc TO vnCc
 STORE f3520ven TO vvEn
 STORE 1 TO vtPo
 DO orD_0000a WITH "3520", "C", "F3520NUM", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET READBORDER ON
 DO p00_3520a IN PCI3520A WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3520a IN PCI3520A WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3520a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2
                = INKEY(0.01)
                STORE 1 TO viTe
                SELECT caB_sal_caja
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
                DO pcC3520w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT caB_sal_caja
                SET FILTER TO
                DO orD_0000a WITH "3520", "C", "F3520NUM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_Enter
                          DO coLbln
                          STORE f3520ano TO vaNo
                          STORE f3520mes TO vmEs
                          STORE f3520ser TO vsEr
                          STORE f3520num TO vnUm
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
                DO hl1_3520a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3520a IN PCI3520A WITH "1"
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
           CASE mkEy=k_F3 .AND. vtPo=2 .AND. viTe>3
                DO veN_3520a IN PCI3520A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. vtPo=1 .AND. viTe>3
                DO CASE
                     CASE vtPp=1
                          STORE 2 TO vtPp
                     CASE vtPp=2
                          STORE 1 TO vtPp
                ENDCASE
                DO p00_3520a IN PCI3520A WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF viTe>7
                     STORE 7 TO viTe
                ENDIF
           CASE mkEy=k_F8 .AND. vtPo<>2 .AND. viTe>3
                STORE 99 TO mkEy
           CASE mkEy=k_F8 .AND. viTe>3
                DO ccO_3520a IN PCI3520A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9 .AND. viTe>3
                DO tiP_3520a IN PCI3520A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. (vtPo=2 .OR. vtPo=5) .AND. viTe=8
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vtPo=4 .AND. viTe=9
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vtPo<>4 .AND. viTe=7
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (vtPo=2 .OR. vtPo=5) .AND. viTe=8
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. viTe=5 .OR. viTe=6  ;
                .OR. viTe=7)
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<5
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Up .AND. (viTe=8 .OR. viTe=9) .AND. vtPo=4
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO veR_3520a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE ((vtPo=2 .OR. vtPo=5) .OR. (vtPo=1 .AND.  ;
                               vtPp=2)) .AND. viTe=8
                               DO q1_0000a
                               DO grA_3520a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE (vtPo=4 .AND. viTe=9) .OR. (vtPo<>2 .AND.  ;
                               vtPo<>4 .AND. vtPo<>5 .AND. viTe=7 .AND. vtPp=1)
                               DO deT_3520a IN PCI3520A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_3520a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE ((vtPo=2 .OR. vtPo=5) .OR. (vtPo=1 .AND.  ;
                               vtPp=2)) .AND. viTe=8
                               DO q1_0000a
                               DO grA_3520a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE (vtPo=4 .AND. viTe=9) .OR. (vtPo<>2 .AND.  ;
                               vtPo<>4 .AND. vtPo<>5 .AND. viTe=7 .AND. vtPp=1)
                               DO deT_3520a IN PCI3520A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE vtPo=4 .AND. (viTe=5 .OR. viTe=6 .OR. viTe=7)
                               STORE 8 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3520a
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
                DO veR_3520a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE ((vtPo=2 .OR. vtPo=5) .OR. (vtPo=1 .AND.  ;
                               vtPp=2)) .AND. viTe=8
                               DO q1_0000a
                               DO grA_3520a
                               DO p1_0000a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE (vtPo=4 .AND. viTe=9) .OR. (vtPo<>2 .AND.  ;
                               vtPo<>4 .AND. vtPo<>5 .AND. viTe=7 .AND. vtPp=1)
                               DO deT_3520a IN PCI3520A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<5
                               STORE 5 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3520a
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
                          CASE vtPo=4 .AND. (viTe=7 .OR. viTe=8)
                               STORE 9 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_3520a
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
                                    DO deT_3520a IN PCI3520A
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
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO CASE
                     CASE vtPo=2 .OR. vtPo=5
                          STORE 8 TO ciTx
                     CASE vtPo=4
                          STORE 9 TO ciTx
                     CASE vtPo<>4
                          STORE 7 TO ciTx
                ENDCASE
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3520a
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
                     CASE vtPo=2 .OR. vtPo=5
                          STORE 8 TO ciTx
                     CASE vtPo=4
                          STORE 9 TO ciTx
                     CASE vtPo<>4
                          STORE 7 TO ciTx
                ENDCASE
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_3520a
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
                     IF vtPo=2 .OR. vtPo=5 .OR. (vtPp=2 .AND. vtPo=1)
                          DO q1_0000a
                          DO grA_3520a
                          DO p1_0000a
                     ELSE
                          DO deT_3520a IN PCI3520A
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
                CASE viTe=8 .AND. (vtPo=2 .OR. vtPo=5)
                     @mMF2,mMC2+45 Say "EL MONTO NO PUEDE SER CERO..."                                                            Font "&mLetRom",9 Style "BQ"
                CASE viTe=8 .AND. vtPo=4
                     @mMF2,mMC2+14 Say "LA SERIE DE LA LETRA ES DE 3 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=9 .AND. vtPo=4
                     @mMF2,mMC2+14 Say "EL NÚMERO DE LA LETRA ES DE 7 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                 Font "&mLetRom",9 Style "BQ"
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
           CASE viTe=8 .AND. ((vtPo=2 .OR. vtPo=5) .OR. (vtPo=1 .AND. vtPp=2))
                @iFIL+0.8,vCLL+16.4 Get  tTOT Font "&mLetRom",12 Style "NQ" Size 1,13.6 Pict "999999.99" Color ,&mColBlN
           CASE vtPo=4 .AND. viTe=8
                STORE VAL(vsRl) TO vsRl
                @mFI0+4.4,vCLL+52.8 Get  vSRL Font "&mLetAri",9  Style "NQ" Size 1,03.9 Pict "999"       Color ,&mColBlN
           CASE vtPo=4 .AND. viTe=9
                STORE VAL(vlEt) TO vlEt
                @mFI0+4.4,vCLL+59.0 Get  vLET Font "&mLetAri",9  Style "NQ" Size 1,10.5 Pict "9999999"   Color ,&mColBlN
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
           CASE vtPo=4 .AND. viTe=8
                IF vsRl=0
                     STORE SPACE(03) TO vsRl
                ELSE
                     STORE STRTRAN(STR(vsRl, 3, 0), " ", "0") TO vsRl
                ENDIF
                @mFI0+4.4,vCLL+52.8 Say vSRL Font "&mLetAri",9 Style "NQ" Size 1,3.9 Pict "999"
           CASE vtPo=4 .AND. viTe=9
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
PROCEDURE Ver_3520a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vnTi))=0 .AND. viTe>3
           STORE "No hay Tipo de Salida de Caja seleccionado..." TO mmSj
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
           SELECT caB_sal_caja
           SEEK vaNo+vmEs+vsEr+vnUm
           DO CASE
                CASE EOF()
                     STORE "Voucher no registrado..." TO mmSj
                CASE  .NOT. EOF() .AND. f3520est="2"
                     STORE "Voucher se encuentra Procesado..." TO mmSj
                CASE  .NOT. EOF() .AND. f3520est="3"
                     STORE "Voucher se encuentra Cerrado..." TO mmSj
                CASE  .NOT. EOF() .AND. f3520est="9"
                     STORE "Voucher se encuentra anulado..." TO mmSj
                OTHERWISE
                     SELECT teMporal
                     ZAP
                     SELECT exIste
                     ZAP
                     REINDEX
                     SELECT caB_sal_caja
                     IF f3520tpo<>vtPo .AND. (((vtPo=2 .OR. vtPo=5) .AND.  ;
                        f3520tpo<>2 .AND. f3520tpo<>5) .OR. ((f3520tpo=2  ;
                        .OR. f3520tpo=5) .AND. vtPo<>2 .AND. vtPo<>5))
                          IF f3520tpo<>2 .AND. f3520tpo<>5
                               DO p01_3520a IN PCI3520A
                          ELSE
                               DO p02_3510a IN PCI3510A
                          ENDIF
                     ENDIF
                     STORE f3520dia TO vdIa
                     STORE f3520tpo TO vtPo
                     STORE f3520tpp TO vtPp
                     STORE f3520caj TO vcAj
                     STORE f3520tip TO vtIp
                     STORE f3520nti TO vnTi
                     STORE f3520glo TO vgLo
                     STORE f3520rcb TO vrCb
                     STORE f3520srl TO vsRl
                     STORE f3520let TO vlEt
                     STORE f3520dnc TO vdNc
                     STORE f3520ven TO vvEn
                     STORE f3520cco TO vcCo
                     STORE f3520ncc TO vnCc
                     STORE f3520tot TO ttOt
                     STORE f3520tca TO vtCa, xtCa
                     STORE f3520mon TO vmOn, cmOn
                     SELECT veNdedor
                     SEEK vvEn
                     IF EOF()
                          STORE SPACE(50) TO vnVe
                     ELSE
                          STORE f9113nom TO vnVe
                     ENDIF
                     SELECT deT_sal_caja
                     SEEK vaNo+vmEs+vsEr+vnUm
                     IF  .NOT. EOF()
                          STORE 0 TO ttOt
                          STORE 1 TO vrEc, irEc
                          DO WHILE  .NOT. EOF() .AND. f3521ano+f3521mes+ ;
                             f3521ser+f3521num=vaNo+vmEs+vsEr+vnUm
                               STORE f3521tdo TO vtD1
                               STORE f3521sr1 TO vsR1
                               STORE f3521doc TO vdO1
                               STORE f3521pag TO vpGo
                               STORE f3521rcb TO vrCi
                               SELECT peNd_cpras
                               SEEK vtD1+vsR1+vdO1
                               IF EOF()
                                    STORE SPACE(70) TO vnO1
                                    STORE SPACE(02) TO vtD2, vsR2, vdO2
                                    STORE 01 TO vmNd
                                    STORE 00 TO vtO1, vaC1, vsLd
                                    STORE CTOD("  /  /    ") TO vfE1, vfV1
                               ELSE
                                    STORE f3600nom TO vnO1
                                    STORE f3600fem TO vfE1
                                    STORE f3600fve TO vfV1
                                    STORE f3600mon TO vmNd
                                    STORE f3600tot TO vtO1
                                    STORE f3600acu TO vaC1
                                    STORE f3600td1 TO vtD2
                                    STORE f3600sr1 TO vsR2
                                    STORE f3600do1 TO vdO2
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
                               REPLACE ftM1td2 WITH vtD2
                               REPLACE ftM1sr2 WITH vsR2
                               REPLACE ftM1do2 WITH vdO2
                               STORE RECNO() TO frEc
                               SELECT exIste
                               APPEND BLANK
                               REPLACE ftM2tdo WITH vtD1
                               REPLACE ftM2ser WITH vsR1
                               REPLACE ftM2doc WITH vdO1
                               IF vtD2="NC"
                                    STORE ttOt-vpGo TO ttOt
                               ELSE
                                    STORE ttOt+vpGo TO ttOt
                               ENDIF
                               SELECT deT_sal_caja
                               SKIP
                          ENDDO
                     ENDIF
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vCAJ,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                     DO diS_3520a
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
                          IF vtPo<>2 .AND. vtPo<>5 .AND. vtPp=1
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
                IF vtPo<>2 .AND. vtPo<>5 .AND. vtPp=1
                     DO paN_3510a IN PCI3510A
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE vtCa TO ctCa
           ENDIF
      CASE viTe=8 .AND. vtPo=1 .AND. vtPp=1 .AND. ttOt=0
           STORE "Total no puede ser cero..." TO mmSj
      CASE viTe=8 .AND. (vtPo=2 .OR. vtPo=5) .AND. ttOt=0
           STORE "Total no puede ser cero..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Gra_3520a
 PRIVATE ptX1, ptX2, poPc, pfEm, paCu
 = INKEY(0.01)
 STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO pfEm
 DO grAbar WITH "1"
 ptX1 = "¿Desea Modificar este Documento?"
 ptX2 = "VOUCHER DE SALIDA DE CAJA: "+vsEr+"-"+vnUm
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
 SELECT caB_sal_caja
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
 STORE f3520mon TO cmOn
 STORE f3520tca TO ctCa
 SELECT deT_sal_caja
 SEEK vaNo+vmEs+vsEr+vnUm
 DO WHILE  .NOT. EOF() .AND. vaNo+vmEs+vsEr+vnUm=f3521ano+f3521mes+ ;
    f3521ser+f3521num
      STORE f3521tdo TO vtD1
      STORE f3521sr1 TO vsR1
      STORE f3521doc TO vdO1
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
      SELECT deT_sal_caja
      SKIP
 ENDDO
 DO WHILE .T.
      SELECT deT_sal_caja
      SEEK vaNo+vmEs+vsEr+vnUm
      IF EOF()
           EXIT
      ENDIF
      STORE f3521tdo TO vtD1
      STORE f3521sr1 TO vsR1
      STORE f3521doc TO vdO1
      REPLACE f3521ano WITH SPACE(04)
      REPLACE f3521mes WITH SPACE(02)
      REPLACE f3521ser WITH SPACE(03)
      REPLACE f3521num WITH SPACE(07)
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
 SELECT caB_sal_caja
 REPLACE f3520dia WITH vdIa
 REPLACE f3520tpo WITH vtPo
 REPLACE f3520tpp WITH vtPp
 REPLACE f3520caj WITH vcAj
 REPLACE f3520tip WITH vtIp
 REPLACE f3520nti WITH vnTi
 REPLACE f3520tca WITH vtCa
 REPLACE f3520mon WITH vmOn
 REPLACE f3520tot WITH ttOt
 REPLACE f3520glo WITH vgLo
 REPLACE f3520rcb WITH vrCb
 REPLACE f3520srl WITH vsRl
 REPLACE f3520let WITH vlEt
 REPLACE f3520dnc WITH vdNc
 REPLACE f3520ven WITH vvEn
 REPLACE f3520cco WITH vcCo
 REPLACE f3520ncc WITH vnCc
 REPLACE f3520est WITH "1"
 REPLACE f3520usu WITH muSu
 REPLACE f3520dat WITH DATE()
 REPLACE f3520tim WITH TIME()
 UNLOCK
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtD1
      STORE ftM1ser TO vsR1
      STORE ftM1doc TO vdO1
      STORE ftM1pgo TO vpGo
      STORE ftM1rci TO vrCi
      SELECT deT_sal_caja
      DO nuEvo_rg
      REPLACE f3521ano WITH vaNo
      REPLACE f3521mes WITH vmEs
      REPLACE f3521ser WITH vsEr
      REPLACE f3521num WITH vnUm
      REPLACE f3521tdo WITH vtD1
      REPLACE f3521sr1 WITH vsR1
      REPLACE f3521doc WITH vdO1
      REPLACE f3521pag WITH vpGo
      REPLACE f3521rcb WITH vrCi
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
      SELECT exIste
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
      DO pcC3520z
 ENDIF
 = INKEY(0.01)
 STORE msEr(07) TO vsRl
 STORE msEr(03) TO vsEr
 STORE mmOn TO vmOn
 STORE "V2" TO vtDo
 STORE 03 TO viTe
 STORE 99 TO mkEy
 STORE 02 TO vdNc
 STORE 00 TO viT1, frEc, ttOt, ctCa, vcAj
 STORE 01 TO vrEc, irEc, urEc, viOm, vsW1, vtPp
 STORE SPACE(01) TO veSt
 STORE SPACE(80) TO vgLo
 STORE SPACE(07) TO vrCb, vlEt
 STORE ifIl TO vfIl, ufIl
 DO diS_3520a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Dis_3520a
 DO coLbln
 @mFI0-2.2,mCO0+10.0 Say vANO Font "&mLetAri",9  Style "BQ" Size 1,4.5
 @mFI0-2.2,mCO0+25.0 Say vMES Font "&mLetAri",9  Style "BQ" Size 1,2.2
 @mFI0-2.2,mCO0+45.0 Say vNUM Font "&mLetAri",9  Style "BQ" Size 1,8.2
 @mFI0-2.2,mCO0+72.0 Say vDIA Font "&mLetAri",9  Style "BQ" Size 1,2.2
 @mFI0+2.0,mCO0+10.0 Say vTCA Font "&mLetAri",9  Style "NQ" Size 1,11.2 Pict "99.99999"
 @mFI0+5.0,mCO0+10.0 Say vRCB Font "&mLetAri",9  Style "NQ" Size 1,10.5
 @mFI0+3.5,mCO0+10.0 Say Substr(vGLO,1,vTM1) Font "&mLetAri",9 Style "NQ" Size 1,vTM1
 @mFI0+0.5,mCO0+13.0 Get vMON Font "&mLetAri",9  Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 @mFI0+7.0,vCLL+45.4 Get vDNC Font "&mLetRom",11 Style "NQ" Default vDNC Function "*RHT Dcta;no Dcta"
 DO tpP_3520a IN PCI3520A
 IF vtPo<>4
      DO coLsc3
 ENDIF
 @mFI0+4.4,vCLL+52.7 Say " "  Font "&mLetAri",9 Style "NQ"                Size 1,0.1
 @mFI0+4.4,vCLL+58.9 Say " "  Font "&mLetAri",9 Style "NQ"                Size 1,0.1
 @mFI0+4.4,vCLL+52.8 Say vSRL Font "&mLetAri",9 Style "NQ" Pict "999"     Size 1,4.3
 @mFI0+4.4,vCLL+59.0 Say vLET Font "&mLetAri",9 Style "NQ" Pict "9999999" Size 1,10.9
 DO ntI_3510a IN PCI3510A
 DO ncC_3520a IN PCI3520A WITH "1"
 DO nvE_3520a IN PCI3520A WITH "1"
 READ TIMEOUT 0.01
 IF vtPo<>2 .AND. vtPo<>5 .AND. vtPp=1
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
 IF vtPo=2 .OR. vtPo=5
      DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
 ELSE
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3520a
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
           .AND. mcCc<=vcB2+mcO2 .AND. vtPo=2 .AND. viTe>3
           STORE k_F8 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. vtPo=2 .AND. viTe>3
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. vtPo=2 .AND. viTe>3
           STORE SPACE(02) TO vvEn
           STORE SPACE(50) TO vnVe
           DO nvE_3520a IN PCI3520A WITH "2"
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>1 .AND.  ;
           mcCc>=mcO0+12.8 .AND. mcCc<=mcO0+19.8 .AND. viTe>3 .AND. vtPo=5
           STORE "No se puede cambiar Moneda porque es Generado..." TO mmSj
           DO poNmsj
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>2 .AND.  ;
           mcCc>=mcO0+19.8 .AND. mcCc<=mcO0+28.4 .AND. viTe>3 .AND. vtPo=5
           STORE "No se puede cambiar Moneda porque es Generado..." TO mmSj
           DO poNmsj
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>1 .AND.  ;
           mcCc>=mcO0+12.8 .AND. mcCc<=mcO0+19.8 .AND. viTe>3
           STORE 1 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 5, 0
      CASE mfIl>=mfI0+0.486 .AND. mfIl<=mfI0+1.486 .AND. vmOn<>2 .AND.  ;
           mcCc>=mcO0+19.8 .AND. mcCc<=mcO0+28.4 .AND. viTe>3
           STORE 2 TO vmOn
           DO moN_3510a IN PCI3510A WITH 2, 5, 0
      CASE mfIl>=mfI0+7 .AND. mfIl<=mfI0+8.221 .AND. vdNc<>1 .AND. mcCc>= ;
           vcLl+45.3 .AND. mcCc<=vcLl+55.5 .AND. vtPo=6 .AND. viTe>3
           STORE 1 TO vdNc
           @mFI0+7,vCLL+45.4 Get vDNC Font "&mLetRom",11 Style "NQ" Default vDNC Function "*RHT Dcta;no Dcta"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7 .AND. mfIl<=mfI0+8.221 .AND. vdNc<>2 .AND. mcCc>= ;
           vcLl+55.5 .AND. mcCc<=vcLl+69.7 .AND. vtPo=6 .AND. viTe>3
           STORE 2 TO vdNc
           @mFI0+7,vCLL+45.4 Get vDNC Font "&mLetRom",11 Style "NQ" Default vDNC Function "*RHT Dcta;no Dcta"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.293 .AND. mfIl<=mfI0+1.436 .AND. vtPo<>1 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+17.6 .AND. vtPo=5
           STORE "No se puede cambiar Tipo porque es Generado..." TO mmSj
           DO poNmsj
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.436 .AND. mfIl<=mfI0+2.793 .AND. vtPo<>2 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+12.8 .AND. vtPo=5
           STORE "No se puede cambiar Tipo porque es Generado..." TO mmSj
           DO poNmsj
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.793 .AND. mfIl<=mfI0+4.15 .AND. vtPo<>3 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+24.6 .AND. vtPo=5
           STORE "No se puede cambiar Tipo porque es Generado..." TO mmSj
           DO poNmsj
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.15 .AND. mfIl<=mfI0+5.578 .AND. vtPo<>4 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+37.4 .AND. vtPo=5
           STORE "No se puede cambiar Tipo porque es Generado..." TO mmSj
           DO poNmsj
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.578 .AND. mfIl<=mfI0+6.864 .AND. vtPo<>5 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+36.8
           STORE "Este Tipo se usa solo en Vouchers NUEVOS..." TO mmSj
           DO poNmsj
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.864 .AND. mfIl<=mfI0+8.221 .AND. vtPo<>6 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+41 .AND. vtPo=5
           STORE "No se puede cambiar Tipo porque es Generado..." TO mmSj
           DO poNmsj
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.293 .AND. mfIl<=mfI0+1.436 .AND. vtPo<>1 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+17.6
           IF vtPo=4
                STORE 1 TO vtPo
                DO leT_3510a IN PCI3510A
                READ TIMEOUT 0.01
           ENDIF
           STORE 1 TO vtPo
           STORE 1 TO vtPp
           DO tpO_3520a IN PCI3520A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF ctPo=2 .OR. ctPo=5
                DO p01_3520a IN PCI3520A
                DO paN_3510a IN PCI3510A
           ENDIF
           IF ctPo=2
                DO ncC_3520a IN PCI3520A WITH "1"
                DO nvE_3520a IN PCI3520A WITH "1"
           ENDIF
           IF viTe>6
                STORE 6 TO viTe
           ENDIF
           STORE vtPo TO ctPo
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.436 .AND. mfIl<=mfI0+2.793 .AND. vtPo<>2 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+12.8
           IF vtPo=4
                STORE 2 TO vtPo
                DO leT_3510a IN PCI3510A
                READ TIMEOUT 0.01
                IF viTe>7
                     STORE 7 TO viTe
                ENDIF
           ENDIF
           STORE 2 TO vtPo
           STORE 1 TO vtPp
           DO tpO_3520a IN PCI3520A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF ctPo<>2 .AND. ctPo<>5
                DO p02_3510a IN PCI3510A
           ENDIF
           IF ctPo<>2
                DO ncC_3520a IN PCI3520A WITH "1"
                DO nvE_3520a IN PCI3520A WITH "1"
                READ TIMEOUT 0.01
           ENDIF
           STORE vtPo TO ctPo
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.793 .AND. mfIl<=mfI0+4.15 .AND. vtPo<>3 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+24.6
           IF vtPo=4
                STORE 3 TO vtPo
                DO leT_3510a IN PCI3510A
                READ TIMEOUT 0.01
           ENDIF
           STORE 3 TO vtPo
           STORE 1 TO vtPp
           DO tpO_3520a IN PCI3520A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF ctPo=2 .OR. ctPo=5
                DO p01_3520a IN PCI3520A
                DO paN_3510a IN PCI3510A
           ENDIF
           IF ctPo=2
                DO ncC_3520a IN PCI3520A WITH "1"
                DO nvE_3520a IN PCI3520A WITH "1"
           ENDIF
           IF viTe>6
                STORE 6 TO viTe
           ENDIF
           STORE vtPo TO ctPo
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.15 .AND. mfIl<=mfI0+5.578 .AND. vtPo<>4 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+37.4
           STORE 4 TO vtPo
           STORE 1 TO vtPp
           DO tpO_3520a IN PCI3520A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO leT_3510a IN PCI3510A
           READ TIMEOUT 0.01
           IF ctPo=2 .OR. ctPo=5
                DO p01_3520a IN PCI3520A
                DO paN_3510a IN PCI3510A
           ENDIF
           IF ctPo=2
                DO ncC_3520a IN PCI3520A WITH "1"
                DO nvE_3520a IN PCI3520A WITH "1"
           ENDIF
           STORE vtPo TO ctPo
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.864 .AND. mfIl<=mfI0+8.221 .AND. vtPo<>6 .AND.  ;
           viTe>3 .AND. mcCc>=vcLl+1.2 .AND. mcCc<=vcLl+41
           IF vtPo=4
                STORE 6 TO vtPo
                DO leT_3510a IN PCI3510A
                READ TIMEOUT 0.01
           ENDIF
           STORE 6 TO vtPo
           STORE 1 TO vtPp
           DO tpO_3520a IN PCI3520A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF ctPo=2 .OR. ctPo=5
                DO p01_3520a IN PCI3520A
                DO paN_3510a IN PCI3510A
           ENDIF
           IF ctPo=2
                DO ncC_3520a IN PCI3520A WITH "1"
                DO nvE_3520a IN PCI3520A WITH "1"
           ENDIF
           IF viTe>6
                STORE 6 TO viTe
           ENDIF
           STORE vtPo TO ctPo
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
      CASE mfIl>=mfI0+4.293 .AND. mfIl<=mfI0+5.507 .AND. vtPo=4 .AND.  ;
           mcCc>=vcLl+52.4 .AND. mcCc<=vcLl+57.2 .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+4.293 .AND. mfIl<=mfI0+5.507 .AND. vtPo=4 .AND.  ;
           mcCc>=vcLl+58.6 .AND. mcCc<=vcLl+69 .AND. viTe<>9
           STORE 9 TO ciTx
      CASE mfIl>=ifIl .AND. mfIl<=ifIl+2.864 .AND. viTe<>8 .AND. mcCc>= ;
           vcLl .AND. mcCc<=vcLl+35.3 .AND. (vtPo=2 .OR. vtPo=5)
           STORE 8 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_3520a
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
PROCEDURE Hl1_3520a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 1.500 SAY  ;
   "Este Mantenimiento, es un programa en donde se pueden modificar movi-"
 @ pfIl+1, 1.500 SAY "mientos de Salidas de Caja, por diferentes conceptos."
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
 IF vtPo=2 .AND. viTe>3
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F3" STYLE "BT"
      @ pfIl, 28.200 SAY "Escoger Vendedor"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>3 .AND. vtPo=1
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F5" STYLE "BT"
      @ pfIl, 28.200 SAY "Poner o quitar detalle"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF vtPo=2 .AND. viTe>3
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F8" STYLE "BT"
      @ pfIl, 28.200 SAY "Escoger Centro de Costos"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>3
      @ pfIl, 26.200 SAY ":" STYLE "BT"
      @ pfIl, 8.000 SAY "F9" STYLE "BT"
      @ pfIl, 28.200 SAY "Escoger Tipo de Salida de Caja"
      STORE pfIl+1 TO pfIl
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
 IF vtPo<>2 .AND. vtPo<>5
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
 DO dv1_3520a IN PCI3520A
 RELEASE vfBi, vcBi, caNo, cmEs, csEr, xsEr, isEr, usEr, cnUm, inUm, unUm,  ;
         xnUm, vsW0
 RELEASE iaNo, uaNo, imEs, umEs, idIa, udIa, irCb, urCb, xrCb, isRl, usRl,  ;
         xsRl, ilEt
 RELEASE ulEt, xlEt, igLo, ugLo, xgLo
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
