 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3210", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Letras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3210LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2101", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Proveedores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Maestro de Proveedores vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2102", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cambio
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "9312", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9312BAN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "9998", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Numeros
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9998NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, viT1, ciTx, vfRa, vlIn, vtB1, vtB2, vtB3, vtB4, vtB5, vtB6,  ;
        vtB7, vfBi
 PUBLIC vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB7, vfB8, vfB9, vcBi, vcB1,  ;
        vcB2, vcB3
 PUBLIC vcB4, vcB5, vcB6, vcB7, vcB8, vcB9, vtDo, vsEr, csEr, xsEr, vdOc,  ;
        cdOc, xdOc
 PUBLIC vfEm, xfEm, vfVe, xfVe, vpRv, vnOm, xnOm, vrUc, xrUc, vsUc, xsUc,  ;
        vdIr, xdIr
 PUBLIC vdIs, xdIs, vtEl, xtEl, vaVa, xaVa, vaNo, xaNo, vaRu, xaRu, vaSu,  ;
        xaSu, vaDi
 PUBLIC xaDi, vaDs, xaDs, vaTl, xaTl, vbAn, xbAn, vnBa, xnBa, vmOn, xmOn,  ;
        vsIg, vdIa
 PUBLIC xdIa, vtOt, xtOt, vtIp, xtIp, vrEn, xrEn, vnRe, xnRe, vsW0, vlE1,  ;
        xlE1, vrEf
 PUBLIC xrEf, vcOm, xcOm, veSt, xeSt, xpIg, xuSu, xdAt, xtIm, xmAq, vtCl, vnTc
 PUBLIC vpAn_99
 STORE DATE() TO vfEm, vfVe
 STORE "LP" TO vtDo
 STORE "US$" TO vsIg
 STORE msEr(07) TO vsEr
 STORE "1" TO veSt
 STORE SPACE(03) TO csEr
 STORE SPACE(07) TO cdOc
 STORE SPACE(04) TO vpRv, vaVa
 STORE SPACE(11) TO vrUc, vaRu
 STORE SPACE(15) TO vlE1, vcOm
 STORE SPACE(20) TO vtEl, vaTl
 STORE SPACE(25) TO vdIs, vaDs
 STORE SPACE(50) TO vnBa, vrEf
 STORE SPACE(02) TO vsUc, vaSu, vbAn
 STORE SPACE(70) TO vnOm, vdIr, vaNo, vaDi
 STORE 01 TO viTe, vtIp, vrEn, vsW0
 STORE 00 TO viT1, vdIa, vtOt, vnRe, ciTx
 STORE 99 TO mkEy
 STORE 02 TO vmOn
 SELECT leTras
 GOTO BOTTOM
 STORE f3210ser TO vsEr
 STORE f3210let TO vdOc
 SET READBORDER ON
 DO p00_3210a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_3210a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3210a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe>4
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viTe<>3 .AND. viTe<>4
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viTe=3 .AND. LEN(ALLTRIM(vpRv))=0  ;
                .AND. veSt="1"
                STORE "No se ha seleccionado un Proveedor..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. viTe=4 .AND. LEN(ALLTRIM(vaVa))=0  ;
                .AND. veSt="1"
                STORE "No se ha seleccionado un Aval..." TO mmSj
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe<03
                = INKEY(0.01)
                SELECT leTras
                DO orD_0000a WITH "3210", "C", "F3210LET", "D"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_F2
                          SET FILTER TO f3210est="1"
                     CASE mkEy=k_F3
                          SET FILTER TO f3210est="2"
                ENDCASE
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Letras registradas..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SET FILTER TO
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                STORE 99 TO mkEy
                ACTIVATE POPUP vtB7 REST
                SET CONFIRM OFF
                DO p1_0000a
                SELECT leTras
                SET FILTER TO
                DO orD_0000a WITH "3210", "C", "F3210LET", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO muE_3210a
                     STORE 2 TO viTe
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=3 .AND. veSt="1"
                DO prV_3210a IN PCI3210A WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. viTe=3 .AND. veSt="1"
                DO prV_3210a IN PCI3210A WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=3 .AND. veSt="1"
                = INKEY(0.01)
                DO coL_fondo
                STORE SPACE(02) TO vsUc
                STORE SPACE(04) TO vpRv
                STORE SPACE(11) TO vrUc
                STORE SPACE(20) TO vtEl
                STORE SPACE(25) TO vdIs
                STORE SPACE(70) TO vnOm, vdIr
                @mFI0+0.7,mCO0+13.2 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
                @mFI0+2.2,mCO0+13.2 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
                @mFI0+3.7,mCO0+13.2 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,35   Pict "@S25"
                @mFI0+3.7,mCO0+68.1 Say vTEL Font "&mLetAri",9 Style "NQ" Size 1,20   Pict "@S20"
                @mFI0+5.2,mCO0+13.2 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "99999999999"
                DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=4 .AND. veSt="1"
                DO avA_3210a IN PCI3210A WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. viTe=4 .AND. veSt="1"
                DO avA_3210a IN PCI3210A WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=4 .AND. veSt="1"
                = INKEY(0.01)
                STORE SPACE(02) TO vaSu
                STORE SPACE(04) TO vaVa
                STORE SPACE(11) TO vaRu
                STORE SPACE(20) TO vaTl
                STORE SPACE(25) TO vaDs
                STORE SPACE(70) TO vaNo, vaDi
                DO coL_fondo
                @mFI0+07.3,mCO0+13.2 Say vANO Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
                @mFI0+08.8,mCO0+13.2 Say vADI Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
                @mFI0+10.3,mCO0+13.2 Say vADS Font "&mLetAri",9 Style "NQ" Size 1,35   Pict "@S25"
                @mFI0+10.3,mCO0+68.1 Say vATL Font "&mLetAri",9 Style "NQ" Size 1,20   Pict "@S20"
                @mFI0+11.8,mCO0+13.2 Say vARU Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "99999999999"
                DO prEsiona WITH "3", "DESCAR", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB8, vcB8
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3210a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_3210a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F5 .AND. LEN(ALLTRIM(vpRv))<>0 .AND. viTe=3 .AND.  ;
                veSt="1"
                DO di1_3210a IN PCI3210A
           CASE mkEy=k_F5 .AND. LEN(ALLTRIM(vaVa))<>0 .AND. viTe=4 .AND.  ;
                veSt="1"
                DO di2_3210a IN PCI3210A
           CASE mkEy=k_F6 .AND. vtIp<>3 .AND. viTe>2
                DO baN_3210a IN PCI3210A
           CASE mkEy=k_F8 .AND. vsW0=1 .AND. viTe>2
                DO coLbln
                STORE 02 TO vsW0
                @mFI0+2.2,mCO0+101.6 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.2            Color Scheme 6
                @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "999" Color Scheme 6
                @mFI0+2.2,mCO0+107.2 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3            Color Scheme 6
                @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1
                @mFI0+3.7,mCO0+114.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3
           CASE mkEy=k_F8 .AND. vsW0=2 .AND. viTe>2
                DO coLbln
                STORE 01 TO vsW0
                @mFI0+2.2,mCO0+101.6 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.2
                @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "999"
                @mFI0+2.2,mCO0+107.2 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3
                @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color Scheme 6
                @mFI0+3.7,mCO0+114.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3  Color Scheme 6
           CASE mkEy=k_F9 .AND. vrEn=1 .AND. viTe>2 .AND. veSt="1"
                STORE 2 TO vrEn
                @mFI0+14.5,mCO0+16.4 Get vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
                IF vnRe=0
                     DO coLbln
                     STORE 01 TO vnRe
                     @mFI0+14.5,mCO0+34 Say vNRE Font "&mLetAri",9 Style "NQ" Size 1,4 Pict "99"
                ENDIF
                READ TIMEOUT 0.01
           CASE mkEy=k_F9 .AND. vrEn=2 .AND. viTe>2 .AND. veSt="1"
                DO coLbln
                STORE 1 TO vrEn
                STORE 0 TO vnRe
                @mFI0+14.5,mCO0+16.4 Get vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
                @mFI0+14.5,mCO0+34   Say vNRE Font "&mLetAri",9  Style "NQ" Size 1,4 Pict "99"
                READ TIMEOUT 0.01
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=11 .AND. veSt="1"
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=7 .AND. veSt>"1"
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe=1
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=3 .OR. viTe=4 .OR. viTe=5  ;
                .OR. viTe=7) .AND. veSt="1"
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=3 .OR. viTe=5) .AND. veSt>"1"
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<03
                STORE "No hay más campos arriba...        " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO veR_3210a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=11 .AND. veSt="1"
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=7 .AND. veSt>"1"
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_3210a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=11 .AND. veSt="1"
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=7 .AND. veSt>"1"
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=3 .AND. veSt="1"
                               STORE 09 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=4 .AND. veSt="1"
                               STORE 10 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=6 .AND. veSt="1"
                               STORE 11 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=8 .AND. veSt="1"
                               STORE 11 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=4 .AND. veSt>"1"
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=9 .AND. veSt="1"
                          STORE 03 TO viTe
                     CASE viTe=10 .AND. veSt="1"
                          STORE 04 TO viTe
                     CASE viTe=11 .AND. veSt="1"
                          STORE 06 TO viTe
                     CASE viTe=7 .AND. veSt>"1"
                          STORE 02 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Down
                DO veR_3210a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=11 .AND. veSt="1"
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=7 .AND. veSt>"1"
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=1
                               STORE 03 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=5 .AND. veSt="1"
                               STORE 07 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=6 .AND. veSt="1"
                               STORE 08 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=7 .AND. veSt="1"
                               STORE 11 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    DO grA_3210a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 01 TO viTe, viT1
                                    STORE 99 TO mkEy
                               ENDIF
                          CASE viTe=8 .AND. veSt="1"
                               STORE 11 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    DO grA_3210a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 01 TO viTe, viT1
                                    STORE 99 TO mkEy
                               ENDIF
                          CASE viTe=3 .AND. veSt>"1"
                               STORE 05 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=4 .AND. veSt>"1"
                               STORE 06 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=3
                          STORE 1 TO viTe
                     CASE viTe=4 .AND. veSt>"1"
                          STORE 2 TO viTe
                     CASE viTe=5 .AND. veSt>"1"
                          STORE 3 TO viTe
                     CASE viTe=6 .AND. veSt>"1"
                          STORE 4 TO viTe
                     CASE viTe=6 .AND. veSt="1"
                          STORE 4 TO viTe
                     CASE viTe=7 .AND. veSt="1"
                          STORE 5 TO viTe
                     CASE viTe=8 .AND. veSt="1"
                          STORE 6 TO viTe
                     CASE viTe=9 .AND. veSt="1"
                          STORE 2 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                IF veSt="1"
                     STORE 11 TO viTe
                ELSE
                     STORE 07 TO viTe
                ENDIF
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3210a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                IF veSt="1"
                     STORE 11 TO viTe
                ELSE
                     STORE 07 TO viTe
                ENDIF
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_3210a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99
                     DO grA_3210a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 01 TO viTe, viT1
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
           @mMF2,mMC2 Say Space(122) Font "&mLetRom",9 Style "BQ" Size 1,122
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+40 Say "SERIE DE DOCUMENTO ES DE 3 DÍGITOS..."                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+40 Say "NÚMERO DE DOCUMENTO ES DE 7 DÍGITOS..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=3 .AND. veSt="1"
                     @mMF2,mMC2+22 Say "SE DEBE SELECCIONAR UN Proveedor QUE YA ESTÉ REGISTRADO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=4 .AND. veSt="1"
                     @mMF2,mMC2+14 Say "SE DEBE SELECCIONAR UN AVAL QUE DEBE ESTAR REGISTRADO COMO Proveedor..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=5 .AND. veSt="1"
                     @mMF2,mMC2+29 Say "EL NÚMERO DE RENOVACIONES ES DE 1 A 10..."                Font "&mLetRom",9 Style "BQ"
                CASE viTe=6 .AND. veSt="1"
                     @mMF2,mMC2+22 Say "EL NÚMERO DEL BANCO ES DE 15 CARACTERES ALFANUMERICOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=7 .AND. veSt="1"
                     @mMF2,mMC2+22 Say "EL COMENTARIO ES DE 15 CARACTERES ALFANUMERICOS..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=8 .AND. veSt="1"
                     @mMF2,mMC2+22 Say "LA REFERENCIA ES DE 50 CARACTERES ALFANUMERICOS..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=9 .AND. veSt="1"
                     @mMF2,mMC2+32 Say "DIGITAR LA FECHA, DEBE SER VÁLIDA..."                     Font "&mLetRom",9 Style "BQ"
                CASE viTe=10 .AND. vsW0=1 .AND. veSt="1"
                     @mMF2,mMC2+02 Say "LOS DÍAS DE VENCIMIENTOS SON DE 1 A 999, SIRVEN PARA CALCULAR LA FECHA DE VENCIMIENTO..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=10 .AND. vsW0=2 .AND. veSt="1"
                     @mMF2,mMC2+02 Say "LA FECHA DE VENCIMIENTO CALCULA LOS DÍAS, NO PUEDE HABER MÁS DE 999 DÍAS DE DIFERENCIA..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=11 .AND. veSt="1"
                     @mMF2,mMC2+21 Say "CAMPO DE 6 ENTEROS Y 2 DECIMALES, NO PUEDE SER CERO..."   Font "&mLetRom",9 Style "BQ"
                CASE viTe=3 .AND. veSt>"1"
                     @mMF2,mMC2+29 Say "EL NÚMERO DE RENOVACIONES ES DE 1 A 10..."                Font "&mLetRom",9 Style "BQ"
                CASE viTe=4 .AND. veSt>"1"
                     @mMF2,mMC2+22 Say "EL NÚMERO DEL BANCO ES DE 15 CARACTERES ALFANUMERICOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=5 .AND. veSt>"1"
                     @mMF2,mMC2+22 Say "EL COMENTARIO ES DE 15 CARACTERES ALFANUMERICOS..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=6 .AND. veSt>"1"
                     @mMF2,mMC2+22 Say "LA REFERENCIA ES DE 50 CARACTERES ALFANUMERICOS..."       Font "&mLetRom",9 Style "BQ"
                CASE viTe=7 .AND. vsW0=1
                     @mMF2,mMC2+02 Say "LOS DÍAS DE VENCIMIENTOS SON DE 1 A 999, SIRVEN PARA CALCULAR LA FECHA DE VENCIMIENTO..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=7 .AND. vsW0=2
                     @mMF2,mMC2+02 Say "LA FECHA DE VENCIMIENTO CALCULA LOS DÍAS, NO PUEDE HABER MÁS DE 999 DÍAS DE DIFERENCIA..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      IF viTe<3
           DO prEsiona WITH "4", "R_CONS22", mmF1, mmC1
      ELSE
           DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coL_fonro
      DO CASE
           CASE viTe=3 .AND. LEN(ALLTRIM(vpRv))<>0 .AND. veSt="1"
                @mFI0+0.7,mCO0+13.2 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                @mFI0+0.7,mCO0+13.2 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
           CASE viTe=4 .AND. LEN(ALLTRIM(vaVa))<>0 .AND. veSt="1"
                @mFI0+7.3,mCO0+13.2 Say vANO Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                @mFI0+7.3,mCO0+13.2 Say vANO Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
           OTHERWISE
                DO coLbln
                DO CASE
                     CASE viTe=1
                          @mFI0-03.8,mCO0+010.0 Get  vSER Font "&mLetAri",11 Style "NQ" Size 1,03.4 Pict "999"     Color ,&mColBlN
                     CASE viTe=2
                          @mFI0-03.8,mCO0+017.0 Get  vDOC Font "&mLetAri",11 Style "NQ" Size 1,08.0 Pict "9999999" Color ,&mColBlN
                     CASE viTe=3 .AND. veSt="1"
                          @mFI0+00.7,mCO0+013.2 Edit vNOM Font "&mLetAri",9 Style "NQ"  Size 1,63.4,70
                     CASE viTe=4 .AND. veSt="1"
                          @mFI0+07.3,mCO0+013.2 Edit vANO Font "&mLetAri",9 Style "NQ"  Size 1,63.4,70
                     CASE viTe=5 .AND. veSt="1"
                          @mFI0+14.5,mCO0+034.0 Get  vNRE Font "&mLetAri",9 Style "NQ"  Size 1,4     Pict "99" Color ,&mColBlN
                     CASE viTe=6 .AND. veSt="1"
                          @mFI0+14.5,mCO0+062.4 Edit vLE1 Font "&mLetAri",9 Style "NQ"  Size 1,22,15 Pict "!!!!!!!!!!!!!!!"
                     CASE viTe=7 .AND. veSt="1"
                          @mFI0+16.5,mCO0+016.4 Edit vCOM Font "&mLetAri",9 Style "NQ"  Size 1,22,15 Pict "!!!!!!!!!!!!!!!"
                     CASE viTe=8 .AND. veSt="1"
                          @mFI0+16.5,mCO0+062.4 Edit vREF Font "&mLetAri",9 Style "NQ"  Size 1,58,50
                     CASE viTe=9 .AND. veSt="1"
                          @mFI0+00.7,mCO0+101.8 Get  vFEM Font "&mLetAri",9 Style "NQ"  Size 1,12.1 Color ,&mColBlN
                     CASE viTe=10 .AND. vsW0=1 .AND. veSt="1"
                          @mFI0+02.2,mCO0+101.8 Get  vDIA Font "&mLetAri",9 Style "NQ"  Size 1,5.4  Color ,&mColBlN Pict "999"
                     CASE viTe=10 .AND. vsW0=2 .AND. veSt="1"
                          @mFI0+03.7,mCO0+101.8 Get  vFVE Font "&mLetAri",9 Style "NQ"  Size 1,12.1 Color ,&mColBlN
                     CASE viTe=11 .AND. veSt="1"
                          @mFI0+14.5,mCO0+108.0 Get  vTOT Font "&mLetAri",9 Style "NQ"  Size 1,13.9 Color ,&mColBlN Pict "999999.99"
                     CASE viTe=3 .AND. veSt>"1"
                          @mFI0+14.5,mCO0+034.0 Get  vNRE Font "&mLetAri",9 Style "NQ" Size 1,4  Pict "99" Color ,&mColBlN
                     CASE viTe=4 .AND. veSt>"1"
                          @mFI0+14.5,mCO0+062.4 Edit vLE1 Font "&mLetAri",9 Style "NQ" Size 1,22 Pict "!!!!!!!!!!!!!!!"
                     CASE viTe=5 .AND. veSt>"1"
                          @mFI0+16.5,mCO0+016.4 Edit vCOM Font "&mLetAri",9 Style "NQ" Size 1,22 Pict "!!!!!!!!!!!!!!!"
                     CASE viTe=6 .AND. veSt>"1"
                          @mFI0+16.5,mCO0+062.4 Edit vREF Font "&mLetAri",9 Style "NQ" Size 1,58,50
                     CASE viTe=7 .AND. vsW0=1 .AND. veSt>"1"
                          @mFI0+02.2,mCO0+101.8 Get  vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "999" Color ,&mColBlN
                     CASE viTe=7 .AND. vsW0=2 .AND. veSt>"1"
                          @mFI0+03.7,mCO0+101.8 Get  vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1           Color ,&mColBlN
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_3210a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vsEr))=0
           STORE "El número de Serie no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. vsEr="000"
           STORE "El número de Serie no puede ser 000..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vdOc))=0
           STORE "El número de Documento no puede estar vacío..." TO mmSj
      CASE viTe=2 .AND. vdOc="0000000"
           STORE "El número de Serie no puede ser 0000000..." TO mmSj
      CASE viTe=2 .AND. (vsEr+vdOc<>csEr+cdOc .OR. LEN(ALLTRIM(cdOc))=0)
           SELECT leTras
           SEEK vsEr+vdOc
           DO CASE
                CASE EOF()
                     STORE "Esta Letra no se encuentra registrada..." TO mmSj
                CASE f3210est="9"
                     STORE "Esta Letra se encuentra anulada..." TO mmSj
                OTHERWISE
                     DO muE_3210a
                     STORE 2 TO viTe
                     STORE vsEr TO csEr
                     STORE vdOc TO cdOc
           ENDCASE
      CASE viTe=3 .AND. LEN(ALLTRIM(vpRv))=0 .AND. veSt="1"
           STORE "Proveedor debe estar registrado..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vnOm))=0 .AND. LEN(ALLTRIM(vpRv))<>0  ;
           .AND. veSt="1"
           STORE "Nombre de Proveedor no puede estar vacío..." TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vaNo))=0 .AND. LEN(ALLTRIM(vaVa))<>0  ;
           .AND. veSt="1"
           STORE "Nombre de Aval no puede estar vacío..." TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vaNo))<>0 .AND. LEN(ALLTRIM(vaVa))=0  ;
           .AND. veSt="1"
           STORE "Aval debe estar registrado..." TO mmSj
      CASE viTe=5 .AND. vnRe=0 .AND. vrEn=1 .AND. veSt="1"
      CASE viTe=5 .AND. vnRe>0 .AND. vrEn=1 .AND. veSt="1"
           STORE "Número de Renovación debe ser 0..." TO mmSj
      CASE viTe=5 .AND. vnRe=0 .AND. vrEn=2 .AND. veSt="1"
           STORE "Número de Renovación no puede ser 0..." TO mmSj
      CASE viTe=5 .AND. vnRe>10 .AND. vrEn=2 .AND. veSt="1"
           STORE "Número de Renovación no puede ser mayor a 10..." TO mmSj
      CASE viTe=9 .AND. AT(" ", DTOC(vfEm))<>0 .AND. veSt="1"
           STORE "Fecha debe ser válida..." TO mmSj
      CASE viTe=10 .AND. vsW0=1 .AND. vdIa=0 .AND. veSt="1"
           STORE "Días no pueden ser 0..." TO mmSj
      CASE viTe=10 .AND. vsW0=1 .AND. veSt="1"
           STORE vfEm+vdIa TO vfVe
           @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color Scheme 6
      CASE viTe=10 .AND. vsW0=2 .AND. vfEm=vfVe .AND. veSt="1"
           STORE "Fecha de Vencimiento no puede ser igual a Fecha de Emisión..."  ;
                 TO mmSj
      CASE viTe=10 .AND. vsW0=2 .AND. vfEm>vfVe .AND. veSt="1"
           STORE "Fecha de Vencimiento no puede ser menor a Fecha de Emisión..."  ;
                 TO mmSj
      CASE viTe=10 .AND. vsW0=2 .AND. veSt="1"
           STORE vfVe-vfEm TO vdIa
           @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "999" Color Scheme 6
      CASE viTe=11 .AND. vtOt=0 .AND. veSt="1"
           STORE "Monto no pueden ser 0...        " TO mmSj
      CASE viTe=11 .AND. vtOt<0 .AND. veSt="1"
           STORE "Monto no pueden ser menor a 0..." TO mmSj
      CASE viTe=11 .AND. veSt="1"
           DO coLbln
           @mFI0+14.5,mCO0+108 Say vTOT Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
      CASE viTe=3 .AND. vnRe=0 .AND. vrEn=1 .AND. veSt>"1"
      CASE viTe=3 .AND. vnRe>0 .AND. vrEn=1 .AND. veSt>"1"
           STORE "Número de Renovación debe ser 0..." TO mmSj
      CASE viTe=3 .AND. vnRe=0 .AND. vrEn=2 .AND. veSt>"1"
           STORE "Número de Renovación no puede ser 0..." TO mmSj
      CASE viTe=3 .AND. vnRe>10 .AND. vrEn=2 .AND. veSt>"1"
           STORE "Número de Renovación no puede ser mayor a 10..." TO mmSj
      CASE viTe=7 .AND. vsW0=1 .AND. vdIa=0 .AND. veSt>"1"
           STORE "Días no pueden ser 0..." TO mmSj
      CASE viTe=7 .AND. vsW0=1 .AND. veSt>"1"
           STORE vfEm+vdIa TO vfVe
           @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color Scheme 6
      CASE viTe=7 .AND. vsW0=2 .AND. vfEm=vfVe .AND. veSt>"1"
           STORE "Fecha de Vencimiento no puede ser igual a Fecha de Emisión..."  ;
                 TO mmSj
      CASE viTe=7 .AND. vsW0=2 .AND. vfEm>vfVe .AND. veSt>"1"
           STORE "Fecha de Vencimiento no puede ser menor a Fecha de Emisión..."  ;
                 TO mmSj
      CASE viTe=7 .AND. vsW0=2 .AND. veSt>"1"
           STORE vfVe-vfEm TO vdIa
           @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "999" Color Scheme 6
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Gra_3210a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT leTras
 SEEK vsEr+vdOc
 IF EOF()
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 IF veSt="1"
      REPLACE f3210prv WITH vpRv
      REPLACE f3210suc WITH vsUc
      REPLACE f3210nom WITH vnOm
      REPLACE f3210ruc WITH vrUc
      REPLACE f3210dir WITH vdIr
      REPLACE f3210dis WITH vdIs
      REPLACE f3210tel WITH vtEl
      REPLACE f3210ava WITH vaVa
      REPLACE f3210asu WITH vaSu
      REPLACE f3210ano WITH vaNo
      REPLACE f3210aru WITH vaRu
      REPLACE f3210adi WITH vaDi
      REPLACE f3210ads WITH vaDs
      REPLACE f3210atl WITH vaTl
      REPLACE f3210ren WITH vrEn
      REPLACE f3210fem WITH vfEm
      REPLACE f3210mon WITH vmOn
      REPLACE f3210tot WITH vtOt
 ENDIF
 REPLACE f3210tip WITH vtIp
 REPLACE f3210dia WITH vdIa
 REPLACE f3210fve WITH vfVe
 REPLACE f3210nre WITH vnRe
 REPLACE f3210ban WITH vbAn
 REPLACE f3210nba WITH vnBa
 REPLACE f3210le1 WITH vlE1
 REPLACE f3210com WITH vcOm
 REPLACE f3210ref WITH vrEf
 REPLACE f3210usu WITH muSu
 REPLACE f3210dat WITH DATE()
 REPLACE f3210tim WITH TIME()
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 = INKEY(0.01)
 IF veSt="1"
      DO pcI3210z
 ENDIF
 STORE DATE() TO vfEm, vfVe
 STORE "US$" TO vsIg
 STORE SPACE(03) TO csEr
 STORE SPACE(07) TO cdOc
 STORE SPACE(04) TO vpRv, vaVa
 STORE SPACE(11) TO vrUc, vaRu
 STORE SPACE(15) TO vlE1, vcOm
 STORE SPACE(20) TO vtEl, vaTl
 STORE SPACE(25) TO vdIs, vaDs
 STORE SPACE(50) TO vnBa, vrEf
 STORE SPACE(02) TO vsUc, vaSu, vbAn
 STORE SPACE(70) TO vnOm, vdIr, vaNo, vaDi
 STORE 01 TO viTe, vtIp, vrEn, vsW0
 STORE 00 TO viT1, vdIa, vtOt, vnRe
 STORE 99 TO mkEy
 STORE 02 TO vmOn
 RESTORE SCREEN FROM vpAn_99
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE P00_3210a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 STORE 18 TO muFi
 STORE 124 TO muCo
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-3.2 TO mmC2
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+0.5 TO mfI0
 STORE mfI0-03.9 TO vfBi
 STORE mcO0+29.5 TO vcBi
 DO tiT_0000a WITH "Modificación de Letras de Proveedores"
 DO p01_3210a IN PCI3210A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Define Popup vTB7 from mFI0,mCO0-21 to mFI0+mUFI+12,mCO0+mUCO+30 Font "&mLetCou",12 Style "NQ" Prompt Field F3210SER+"-"+F3210LET+" "+Substr(F3210NOM,1,62)+" "+Dtoc(F3210FEM) Scroll Color Scheme 3 Footer "CONSULTA DE LETRAS"
 ON SELECTION POPUP vtB7 DO TB7_0000A
 DO coL_fondo
 @ mfI0-4.4, mcO0-3.1 TO mfI0-2.0, mcO0+35.7 PATTERN 1 COLOR SCHEME 7
 @ mfI0-4.4, mcO0-3.2 TO mfI0-4.4, mcO0+35.7 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-4.4, mcO0-3.2 TO mfI0-2.0, mcO0-03.2 COLOR RGB(255,255,255,0,0,0)
 @mFI0-3.8,mCO0-0.9 Say "Letra:" Font "&mLetRom",13 Style "BT"
 DO coLbln
 @mFI0-03.8,mCO0+10.0 Get vSER Font "&mLetAri",11 Style "NQ" Size 1,03.4 Pict "999"     Color ,&mColBlN
 @mFI0-03.8,mCO0+17.0 Get vDOC Font "&mLetAri",11 Style "NQ" Size 1,08.0 Pict "9999999" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_3210a IN PCI3210A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_99
ENDPROC
*
PROCEDURE Mue_3210a
 SELECT leTras
 STORE f3210ser TO vsEr
 STORE f3210let TO vdOc
 STORE f3210prv TO vpRv
 STORE f3210suc TO vsUc
 STORE f3210nom TO vnOm
 STORE f3210ruc TO vrUc
 STORE f3210dir TO vdIr
 STORE f3210dis TO vdIs
 STORE f3210tel TO vtEl
 STORE f3210ava TO vaVa
 STORE f3210asu TO vaSu
 STORE f3210ano TO vaNo
 STORE f3210aru TO vaRu
 STORE f3210adi TO vaDi
 STORE f3210ads TO vaDs
 STORE f3210atl TO vaTl
 STORE f3210fem TO vfEm
 STORE f3210dia TO vdIa
 STORE f3210fve TO vfVe
 STORE f3210ban TO vbAn
 STORE f3210nba TO vnBa
 STORE f3210tip TO vtIp
 STORE f3210ren TO vrEn
 STORE f3210nre TO vnRe
 STORE f3210mon TO vmOn
 STORE f3210tot TO vtOt
 STORE f3210le1 TO vlE1
 STORE f3210ref TO vrEf
 STORE f3210com TO vcOm
 STORE f3210est TO veSt
 SELECT prOveedores
 SEEK vpRv
 STORE f2101nom TO vnOm
 STORE f2101ruc TO vrUc
 DO coLbln
 SELECT leTras
 @mFI0-03.8,mCO0+10.0 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"
 @mFI0-03.8,mCO0+17.0 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999"
 DO p04_3210a IN PCI3210A
 DO boT_3210a IN PCI3210A
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3210a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+53.2 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi-0.05 .AND. mfIl<=vfBi+1.521 .AND. mcCc>=vcBi-0.30  ;
           .AND. mcCc<=vcBi+3.900
           = INKEY(0.01)
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.2  ;
           .AND. mcCc<=vcB1+3.8 .AND. viTe>2
           IF viTe=1
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99
                STORE 03 TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB2-0.028 .AND. mfIl<=vfB2+1.185 .AND. mcCc>=vcB2-0.2  ;
           .AND. mcCc<=vcB2+3.8 .AND. viTe>2
           IF viTe=1
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99
                STORE 03 TO viTe
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfB3-0.028 .AND. mfIl<=vfB3+1.185 .AND. mcCc>=vcB3-0.2  ;
           .AND. mcCc<=vcB3+3.8 .AND. LEN(ALLTRIM(vpRv))<>0 .AND. viTe>2
           IF viTe=1
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99
                STORE 03 TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfB4-0.028 .AND. mfIl<=vfB4+1.185 .AND. mcCc>=vcB4-0.2  ;
           .AND. mcCc<=vcB4+3.8 .AND. LEN(ALLTRIM(vpRv))<>0 .AND. viTe>2
           IF viTe=1
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99
                STORE 03 TO viTe
                STORE k_F5 TO mkEy
           ENDIF
      CASE mfIl>=vfB5-0.028 .AND. mfIl<=vfB5+1.185 .AND. mcCc>=vcB5-0.2  ;
           .AND. mcCc<=vcB5+3.8 .AND. viTe>2
           IF viTe=1
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=3
                STORE 03 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99
                STORE 04 TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB6-0.028 .AND. mfIl<=vfB6+1.185 .AND. mcCc>=vcB6-0.2  ;
           .AND. mcCc<=vcB6+3.8 .AND. viTe>2
           IF viTe=1
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=3
                STORE 03 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99
                STORE 04 TO viTe
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfB7-0.028 .AND. mfIl<=vfB7+1.185 .AND. mcCc>=vcB7-0.2  ;
           .AND. mcCc<=vcB7+3.8 .AND. LEN(ALLTRIM(vaVa))<>0 .AND. viTe>2
           IF viTe=1
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=3
                STORE 03 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99
                STORE 04 TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfB8-0.028 .AND. mfIl<=vfB8+1.185 .AND. mcCc>=vcB8-0.2  ;
           .AND. mcCc<=vcB8+3.8 .AND. LEN(ALLTRIM(vaVa))<>0 .AND. viTe>2
           IF viTe=1
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99 .AND. viTe<=3
                STORE 03 TO viTe
                DO veR_3210a
           ENDIF
           IF mkEy<>99
                STORE 04 TO viTe
                STORE k_F5 TO mkEy
           ENDIF
      CASE mfIl>=vfB9-0.028 .AND. mfIl<=vfB9+1.185 .AND. mcCc>=vcB9-0.2  ;
           .AND. mcCc<=vcB9+3.8 .AND. vtIp<3 .AND. viTe>2
           STORE k_F6 TO mkEy
      CASE mfIl>=mfI0+5.821 .AND. mfIl<=mfI0+7.036 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+101 .AND. mcCc<=mcO0+109 .AND. vmOn<>1 .AND. viTe>2
           STORE 01 TO vmOn
           STORE "S/." TO vsIg
           @mFI0+5.9,mCO0+101.1 Get vMON Font "&mLetAri",11 Style "NQ" Default vMON Function "*RHT S/.;US$"
           @mFI0+14.5,mCO0+100  Say vSIG Font "&mLetAri",9  Style "NQ" Size 1,5 Color Scheme 6
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.821 .AND. mfIl<=mfI0+7.036 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+109 .AND. mcCc<=mcO0+119.2 .AND. vmOn<>2 .AND. viTe>2
           STORE 02 TO vmOn
           STORE "US$" TO vsIg
           @mFI0+5.9,mCO0+101.1 Get vMON Font "&mLetAri",11 Style "NQ" Default vMON Function "*RHT S/.;US$"
           @mFI0+14.5,mCO0+100  Say vSIG Font "&mLetAri",9  Style "NQ" Size 1,5 Color Scheme 6
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.821 .AND. mfIl<=mfI0+9.036 .AND. mcCc>=mcO0+101.2  ;
           .AND. mcCc<=mcO0+119.6 .AND. vtIp<>1 .AND. viTe>2
           STORE 01 TO vtIp
           @mFI0+7.9,mCO0+101.1 Get vTIP Font "&mLetAri",11 Style "NQ" Default vTIP Function "*RVT Descuento;Cobranza;Cartera"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.036 .AND. mfIl<=mfI0+10.25 .AND. mcCc>=mcO0+101.2  ;
           .AND. mcCc<=mcO0+119.6 .AND. vtIp<>2 .AND. viTe>2
           STORE 02 TO vtIp
           @mFI0+7.9,mCO0+101.1 Get vTIP Font "&mLetAri",11 Style "NQ" Default vTIP Function "*RVT Descuento;Cobranza;Cartera"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.25 .AND. mfIl<=mfI0+11.464 .AND. mcCc>=mcO0+ ;
           101.2 .AND. mcCc<=mcO0+119.6 .AND. vtIp<>3 .AND. viTe>2
           STORE 03 TO vtIp
           STORE SPACE(02) TO vbAn
           STORE SPACE(30) TO vnBa
           @mFI0+07.9,mCO0+101.1 Get vTIP Font "&mLetAri",11 Style "NQ" Default vTIP Function "*RVT Descuento;Cobranza;Cartera"
           @mFI0+12.4,mCO0+099.0 Say vNBA Font "&mLetAri",9  Style "NQ" Size 1,20.5 Pict "@S23" Color Scheme 7
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.25 .AND. mfIl<=mfI0+15.536 .AND. mcCc>=mcO0+ ;
           15.80 .AND. mcCc<=mcO0+23.6 .AND. vrEn<>1 .AND. viTe>2 .AND.  ;
           veSt="1"
           DO coLbln
           STORE 01 TO vrEn
           STORE 00 TO vnRe
           @mFI0+14.5,mCO0+16.4 Get vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
           @mFI0+14.5,mCO0+34.0 Say vNRE Font "&mLetAri",9  Style "NQ" Size 1,4 Pict "99"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.25 .AND. mfIl<=mfI0+15.536 .AND. mcCc>=mcO0+23.6  ;
           .AND. mcCc<=mcO0+30.6 .AND. vrEn<>2 .AND. viTe>2 .AND. veSt="1"
           STORE 02 TO vrEn
           IF vnRe=0
                STORE 1 TO vnRe
           ENDIF
           @mFI0+14.5,mCO0+16.4 Get vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-3.928 .AND. mfIl<=mfI0-2.571 .AND. mcCc>=mcO0+9.4  ;
           .AND. mcCc<=mcO0+15.4 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-3.928 .AND. mfIl<=mfI0-2.571 .AND. mcCc>=mcO0+16.6  ;
           .AND. mcCc<=mcO0+28.6 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+0.536 .AND. mfIl<=mfI0+1.821 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+00.8 .AND. mcCc<=mcO0+76.6 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+7.321 .AND. mfIl<=mfI0+8.464 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+00.8 .AND. mcCc<=mcO0+76.6 .AND. viTe<>4
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.607 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+33.6 .AND. mcCc<=mcO0+38.4 .AND. viTe<>5
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.607 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+49.4 .AND. mcCc<=mcO0+84.8 .AND. viTe<>6
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+16.464 .AND. mfIl<=mfI0+17.607 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+0.6 .AND. mcCc<=mcO0+38.4 .AND. viTe<>7
           STORE 7 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+16.464 .AND. mfIl<=mfI0+17.607 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+49 .AND. mcCc<=mcO0+120.8 .AND. viTe<>8
           STORE 8 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+0.536 .AND. mfIl<=mfI0+1.821 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+90 .AND. mcCc<=mcO0+114.8 .AND. viTe<>9
           STORE 9 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mcCc>=mcO0+90 .AND. mcCc<=mcO0+114.8 .AND. viTe<>10 .AND. veSt= ;
           "1" .AND. ((mfIl>=mfI0+2.178 .AND. mfIl<=mfI0+3.321 .AND. vsW0= ;
           1) .OR. (mfIl>=mfI0+3.607 .AND. mfIl<=mfI0+4.893 .AND. vsW0=2))
           STORE 10 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+14.393 .AND. mfIl<=mfI0+15.536 .AND. veSt="1" .AND.  ;
           mcCc>=mcO0+90 .AND. mcCc<=mcO0+123.4 .AND. viTe<>11
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.607 .AND. veSt>"1" .AND.  ;
           mcCc>=mcO0+33.6 .AND. mcCc<=mcO0+38.4 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.607 .AND. veSt>"1" .AND.  ;
           mcCc>=mcO0+49.4 .AND. mcCc<=mcO0+80.6 .AND. viTe<>4
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+16.464 .AND. mfIl<=mfI0+17.607 .AND. veSt>"1" .AND.  ;
           mcCc>=mcO0+0.6 .AND. mcCc<=mcO0+34.8 .AND. viTe<>5
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+16.464 .AND. mfIl<=mfI0+17.607 .AND. veSt>"1" .AND.  ;
           mcCc>=mcO0+49.4 .AND. mcCc<=mcO0+80.6 .AND. viTe<>6
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      CASE mcCc>=mcO0+90 .AND. mcCc<=mcO0+114.8 .AND. viTe<>7 .AND. veSt> ;
           "1" .AND. ((mfIl>=mfI0+2.178 .AND. mfIl<=mfI0+3.321 .AND. vsW0= ;
           1) .OR. (mfIl>=mfI0+3.607 .AND. mfIl<=mfI0+4.893 .AND. vsW0=2))
           STORE 7 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_3210a
                IF mkEy=k_Esc
                     EXIT
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
                STORE 99 TO mkEy
           ENDIF
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3210a
 = INKEY(0.01)
 PRIVATE pfIl
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En este programa se puede modificar letras digitadas o cuando ya están"
 @ pfIl+1, 02 SAY  ;
   "impresas sólo se puede modificar el comentario, Banco, # Unico, venci-"
 @ pfIl+2, 02 SAY  ;
   "miento, Tipo (Cobranza, Descuento, Cartera), Renovación y Número de Re-"
 @ pfIl+3, 02 SAY "novación"
 @ pfIl+5, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+7 TO pfIl
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "ESC" STYLE "BT"
 @ pfIl+1, 06 SAY "F10" STYLE "BT"
 @ pfIl+2, 06 SAY "F1" STYLE "BT"
 @ pfIl+0, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 26 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+1, 26 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+1, 26 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+3 TO pfIl
 IF viTe<3 .OR. ((viTe=3 .OR. viTe=4) .AND. veSt="1")
      @ pfIl+0, 24 SAY ":" STYLE "BT"
      @ pfIl+1, 24 SAY ":" STYLE "BT"
      @ pfIl+0, 06 SAY "F2" STYLE "BT"
      @ pfIl+1, 06 SAY "F3" STYLE "BT"
      DO CASE
           CASE viTe<3
                @ pfIl+0, 26 SAY "Consulta sólo letras digitadas"
                @ pfIl+1, 26 SAY "Consulta sólo letras impresas"
           CASE viTe=3
                @ pfIl+0, 26 SAY "Consulta todos los Proveedores registrados"
                @ pfIl+1, 26 SAY  ;
                  "Consulta Proveedores que contengan palabra o frase"
           CASE viTe=4
                @ pfIl+0, 26 SAY "Consulta todos los Avales registrados"
                @ pfIl+1, 26 SAY  ;
                  "Consulta Avales que contengan palabra o frase"
      ENDCASE
      STORE pfIl+2 TO pfIl
 ENDIF
 IF (viTe=3 .OR. viTe=4) .AND. veSt="1"
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "F5" STYLE "BT"
      DO CASE
           CASE viTe=3
                @ pfIl, 26 SAY "Consulta Direcciones del Proveedores escogido"
           CASE viTe=4
                @ pfIl, 26 SAY "Consulta Direcciones del Proveedores escogido"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>2
      @ pfIl+0, 24 SAY ":" STYLE "BT"
      @ pfIl+1, 24 SAY ":" STYLE "BT"
      @ pfIl+2, 24 SAY ":" STYLE "BT"
      @ pfIl+0, 06 SAY "F6" STYLE "BT"
      @ pfIl+1, 06 SAY "F8" STYLE "BT"
      @ pfIl+2, 06 SAY "F9" STYLE "BT"
      @ pfIl+0, 26 SAY "Consulta Bancos"
      @ pfIl+1, 26 SAY "Cambio: Digitar la Fecha o digitar Días"
      @ pfIl+2, 26 SAY "Escoger renovación o canje"
      STORE pfIl+3 TO pfIl
 ENDIF
 IF viTe>1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "CTRL HOME" STYLE "BT"
      @ pfIl, 26 SAY "Regresar al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+3, 24 SAY ":" STYLE "BT"
 @ pfIl+4, 24 SAY ":" STYLE "BT"
 @ pfIl+5, 24 SAY ":" STYLE "BT"
 @ pfIl+6, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "CTRL END" STYLE "BT"
 @ pfIl+1, 06 SAY "CTRL ->" STYLE "BT"
 @ pfIl+2, 06 SAY "CTRL <-" STYLE "BT"
 @ pfIl+3, 06 SAY "ENTER" STYLE "BT"
 @ pfIl+4, 06 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+5, 06 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+6, 06 SAY "TAB" STYLE "BT"
 @ pfIl+0, 26 SAY "Último campo"
 @ pfIl+1, 26 SAY "Ir al campo derecho, llegando al final se graba"
 @ pfIl+2, 26 SAY "Ir al campo izquierdo"
 @ pfIl+3, 26 SAY "Ir al campo inferior, llegando al final se graba"
 @ pfIl+4, 26 SAY "Ir al siguiente campo, llegando al final se graba"
 @ pfIl+5, 26 SAY "Ir al campo superior"
 @ pfIl+6, 26 SAY "GRABAR"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, viT1, ciTx, vfRa, vlIn, vtB1, vtB2, vtB3, vtB4, vtB5, vtB6,  ;
         vtB7, vfBi
 RELEASE vfB1, vfB2, vfB3, vfB4, vfB5, vfB6, vfB7, vfB8, vfB9, vcBi, vcB1,  ;
         vcB2, vcB3
 RELEASE vcB4, vcB5, vcB6, vcB7, vcB8, vcB9, vtDo, vsEr, csEr, xsEr, vdOc,  ;
         cdOc, xdOc
 RELEASE vfEm, xfEm, vfVe, xfVe, vpRv, vnOm, xnOm, vrUc, xrUc, vsUc, xsUc,  ;
         vdIr, xdIr
 RELEASE vdIs, xdIs, vtEl, xtEl, vaVa, xaVa, vaNo, xaNo, vaRu, xaRu, vaSu,  ;
         xaSu, vaDi
 RELEASE xaDi, vaDs, xaDs, vaTl, xaTl, vbAn, xbAn, vnBa, xnBa, vmOn, xmOn,  ;
         vsIg, vdIa
 RELEASE xdIa, vtOt, xtOt, vtIp, xtIp, vrEn, xrEn, vnRe, xnRe, vsW0, vlE1,  ;
         xlE1, vrEf
 RELEASE xrEf, vcOm, xcOm, veSt, xeSt, xpIg, xuSu, xdAt, xtIm, xmAq, vtCl, vnTc
 RELEASE vpAn_99
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
