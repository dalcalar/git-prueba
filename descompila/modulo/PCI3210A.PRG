 PUBLIC ntM1
 SET CENTURY ON
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
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
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM1ser+ftM1let TAG ftM1let
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
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
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, viT1, ciTx, vfRa, vlIn, vtB1, vtB2, vtB3, vtB4, vtB5, vfB1,  ;
        vfB2, vfB3
 PUBLIC vfB4, vfB5, vfB6, vfB7, vfB8, vfB9, vcB1, vcB2, vcB3, vcB4, vcB5,  ;
        vcB6, vcB7
 PUBLIC vcB8, vcB9, vtDo, vsEr, xsEr, vdOc, xdOc, vfEm, xfEm, vfVe, xfVe,  ;
        vpRv, vnOm
 PUBLIC xnOm, vrUc, xrUc, vsUc, xsUc, vdIr, xdIr, vdIs, xdIs, vtEl, xtEl,  ;
        vaVa, xaVa
 PUBLIC vaNo, xaNo, vaRu, xaRu, vaSu, xaSu, vaDi, xaDi, vaDs, xaDs, vaTl,  ;
        xaTl, vbAn
 PUBLIC xbAn, vnBa, xnBa, vmOn, xmOn, vsIg, vdIa, xdIa, vtIp, xtIp, vrEn,  ;
        xrEn, vnRe
 PUBLIC xnRe, vsW0, vlE1, xlE1, vrEf, xrEf, vcOm, xcOm, vpIg, xpIg, vtOt,  ;
        ttOt, xtOt
 PUBLIC veSt, xeSt, vfV1, vfV2, vfV3, vfV4, vfV5, vdI1, vdI2, vdI3, vdI4,  ;
        vdI5, vtO1
 PUBLIC vtO2, vtO3, vtO4, vtO5, vfI0, vcO0, vsW1, vnUm, xuSu, xdAt, xtIm,  ;
        xmAq, vtCl
 PUBLIC vnTc
 PUBLIC vpAn_11, vpAn_99
 STORE DATE() TO vfEm, vfVe
 STORE "1" TO veSt
 STORE "LP" TO vtDo
 STORE "US$" TO vsIg
 STORE msEr(07) TO vsEr
 STORE SPACE(04) TO vpRv, vaVa
 STORE SPACE(11) TO vrUc, vaRu
 STORE SPACE(20) TO vtEl, vaTl
 STORE SPACE(25) TO vdIs, vaDs
 STORE SPACE(50) TO vnBa, vrEf
 STORE SPACE(02) TO vsUc, vaSu, vbAn
 STORE SPACE(15) TO vlE1, vcOm
 STORE SPACE(70) TO vnOm, vdIr, vaNo, vaDi
 STORE 01 TO viTe, vtIp, vrEn, vsW0, vsW1
 STORE 00 TO viT1, vdIa, vtOt, vnRe, vdI1, vdI2, ciTx
 STORE 00 TO vdI3, vdI4, vdI5, vtO1, vtO2, vtO3, vtO4, vtO5
 STORE 99 TO mkEy
 STORE mmOn TO vmOn
 STORE CTOD("  /  /    ") TO vfV1, vfV2, vfV3, vfV4, vfV5
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
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_Ctrl_del) .AND. viTe>02
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viTe=1 .AND. LEN(ALLTRIM(vpRv))=0
                STORE "No se ha seleccionado un Proveedor..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. viTe=2 .AND. LEN(ALLTRIM(vaVa))=0
                STORE "No se ha seleccionado un Aval..." TO mmSj
           CASE mkEy=k_F2 .AND. viTe=1
                DO prV_3210a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. viTe=1
                DO prV_3210a WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=1
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
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=2
                IF mkEy=k_F2
                     DO avA_3210a WITH "1"
                ELSE
                     DO avA_3210a WITH "2"
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=2
                = INKEY(0.01)
                DO coL_fondo
                STORE SPACE(02) TO vaSu
                STORE SPACE(04) TO vaVa
                STORE SPACE(11) TO vaRu
                STORE SPACE(20) TO vaTl
                STORE SPACE(25) TO vaDs
                STORE SPACE(70) TO vaNo, vaDi
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
           CASE mkEy=k_Alt_c .AND. vrEn=2
                STORE "No se puede crear Multiletras con la Opción de Renovación: Si"  ;
                      TO mmSj
           CASE mkEy=k_Alt_c
                SAVE SCREEN TO vpAn_11
                STORE mfI0-02.5 TO vfI0
                STORE mcO0+70.0 TO vcO0
                STORE 1 TO ciTe
                DO p02_3210a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO WHILE .T.
                     STORE k_Enter TO mkEy
                     DO CASE
                          CASE ciTe=1 .AND. vsW0=1
                               @vFI0+2.1,vCO0+10 Get vDI1 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
                          CASE ciTe=1 .AND. vsW0=2
                               @vFI0+2.1,vCO0+20 Get vFV1 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                          CASE ciTe=2
                               @vFI0+2.1,vCO0+37 Get vTO1 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
                          CASE ciTe=3 .AND. vsW0=1
                               @vFI0+3.6,vCO0+10 Get vDI2 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
                          CASE ciTe=3 .AND. vsW0=2
                               @vFI0+3.6,vCO0+20 Get vFV2 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                          CASE ciTe=4
                               @vFI0+3.6,vCO0+37 Get vTO2 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
                          CASE ciTe=5 .AND. vsW0=1
                               @vFI0+5.1,vCO0+10 Get vDI3 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
                          CASE ciTe=5 .AND. vsW0=2
                               @vFI0+5.1,vCO0+20 Get vFV3 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                          CASE ciTe=6
                               @vFI0+5.1,vCO0+37 Get vTO3 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
                          CASE ciTe=7 .AND. vsW0=1
                               @vFI0+6.6,vCO0+10 Get vDI4 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
                          CASE ciTe=7 .AND. vsW0=2
                               @vFI0+6.6,vCO0+20 Get vFV4 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                          CASE ciTe=8
                               @vFI0+6.6,vCO0+37 Get vTO4 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
                          CASE ciTe=9 .AND. vsW0=1
                               @vFI0+8.1,vCO0+10 Get vDI5 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
                          CASE ciTe=9 .AND. vsW0=2
                               @vFI0+8.1,vCO0+20 Get vFV5 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                          CASE ciTe=10
                               @vFI0+8.1,vCO0+37 Get vTO5 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
                     ENDCASE
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     DO CASE
                          CASE ciTe=1 .AND. vsW0=1
                               STORE vfEm+vdI1 TO vfV1
                          CASE ciTe=1 .AND. vsW0=2
                               STORE vfV1-vfEm TO vdI1
                          CASE ciTe=3 .AND. vsW0=1
                               STORE vfEm+vdI2 TO vfV2
                          CASE ciTe=3 .AND. vsW0=2
                               STORE vfV2-vfEm TO vdI2
                          CASE ciTe=5 .AND. vsW0=1
                               STORE vfEm+vdI3 TO vfV3
                          CASE ciTe=5 .AND. vsW0=2
                               STORE vfV3-vfEm TO vdI3
                          CASE ciTe=7 .AND. vsW0=1
                               STORE vfEm+vdI4 TO vfV4
                          CASE ciTe=7 .AND. vsW0=2
                               STORE vfV4-vfEm TO vdI4
                          CASE ciTe=9 .AND. vsW0=1
                               STORE vfEm+vdI5 TO vfV5
                          CASE ciTe=9 .AND. vsW0=2
                               STORE vfV5-vfEm TO vdI5
                     ENDCASE
                     DO p03_3210a
                     READ TIMEOUT 0.01
                     DO CASE
                          CASE mkEy=k_F1
                               DO hl2_3210a
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_F12
                               DO p00_3210a WITH "1"
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO p02_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          CASE mkEy=k_Esc
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Ctrl_del
                               STORE 01 TO vsW1
                               STORE 00 TO vdI1, vdI2, vdI3, vdI4, vdI5,  ;
                                     vtO1, vtO2, vtO3, vtO4, vtO5
                               STORE CTOD("  /  /    ") TO vfV1, vfV2,  ;
                                     vfV3, vfV4, vfV5
                               DO p03_3210a
                               READ TIMEOUT 0.01
                               STORE 99 TO mkEy
                          CASE mkEy=k_F8
                               IF vsW0=2
                                    STORE 1 TO vsW0
                               ELSE
                                    STORE 2 TO vsW0
                               ENDIF
                               DO p03_3210a
                               READ TIMEOUT 0.01
                               STORE 99 TO mkEy
                          CASE mkEy=k_Up .AND. ciTe<3
                               STORE "No se puede subir mas arriba..." TO mmSj
                          CASE mkEy=k_Up
                               STORE ciTe-2 TO ciTe
                               STORE 99 TO mkEy
                          CASE mkEy=k_Down
                               DO CASE
                                    CASE ciTe=2 .AND. vdI1=0 .AND. vtO1<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=2 .AND. vdI1<>0 .AND. vtO1=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                                    CASE ciTe=4 .AND. vdI2=0 .AND. vtO2<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=4 .AND. vdI2<>0 .AND. vtO2=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                                    CASE ciTe=6 .AND. vdI3=0 .AND. vtO3<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=6 .AND. vdI3<>0 .AND. vtO3=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                                    CASE ciTe=8 .AND. vdI4=0 .AND. vtO4<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=8 .AND. vdI4<>0 .AND. vtO4=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                                    CASE ciTe=10 .AND. vdI5=0 .AND. vtO5<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=10 .AND. vdI5<>0 .AND. vtO5=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                               ENDCASE
                               IF LEN(ALLTRIM(mmSj))=0 .AND. ciTe<9
                                    STORE ciTe+2 TO ciTe
                                    STORE 99 TO mkEy
                               ENDIF
                          CASE mkEy=k_Ctrl_left .AND. (ciTe=1 .OR. ciTe=3  ;
                               .OR. ciTe=5 .OR. ciTe=7 .OR. ciTe=9)
                               STORE "No hay campos a la izquierda..." TO mmSj
                          CASE mkEy=k_Ctrl_left
                               STORE ciTe-1 TO ciTe
                               STORE 99 TO mkEy
                          CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                               DO CASE
                                    CASE ciTe=2 .AND. vdI1=0 .AND. vtO1<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=2 .AND. vdI1<>0 .AND. vtO1=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                                    CASE ciTe=4 .AND. vdI2=0 .AND. vtO2<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=4 .AND. vdI2<>0 .AND. vtO2=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                                    CASE ciTe=6 .AND. vdI3=0 .AND. vtO3<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=6 .AND. vdI3<>0 .AND. vtO3=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                                    CASE ciTe=8 .AND. vdI4=0 .AND. vtO4<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=8 .AND. vdI4<>0 .AND. vtO4=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                                    CASE ciTe=10 .AND. vdI5=0 .AND. vtO5<>0
                                         STORE  ;
                                          "Monto debe ser 0 si los días son 0..."  ;
                                          TO mmSj
                                    CASE ciTe=10 .AND. vdI5<>0 .AND. vtO5=0
                                         STORE  ;
                                          "Monto no puede ser 0 si los días son mayores a 0..."  ;
                                          TO mmSj
                               ENDCASE
                               IF LEN(ALLTRIM(mmSj))=0 .AND. ciTe<10
                                    STORE ciTe+1 TO ciTe
                                    STORE 99 TO mkEy
                               ENDIF
                          CASE mkEy=k_Tab
                               STORE 99 TO mkEy
                               IF vtO1<>0 .OR. vtO2<>0 .OR. vtO3<>0 .OR.  ;
                                  vtO4<>0 .OR. vtO5<>0
                                    STORE 2 TO vsW1
                               ELSE
                                    STORE 1 TO vsW1
                               ENDIF
                               EXIT
                     ENDCASE
                     IF LEN(ALLTRIM(mmSj))<>0
                          DO poNmsj
                          STORE 99 TO mkEy
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                IF vsW1=1
                     DO coLbln
                ELSE
                     DO coLsc6
                ENDIF
                @mFI0+14.5,mCO0+107.8 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.2
                @mFI0+14.5,mCO0+108.0 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                @mFI0+14.5,mCO0+122.0 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.4
                IF vsW0=1
                     @mFI0+3.7,mCO0+114.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1
                     @mFI0+2.2,mCO0+101.6 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.2            Color Scheme 6
                     @mFI0+2.2,mCO0+107.2 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.3            Color Scheme 6
                     @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,05.4 Pict "999" Color Scheme 6
                ELSE
                     @mFI0+2.2,mCO0+101.6 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.2
                     @mFI0+2.2,mCO0+107.2 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,05.4 Pict "999"
                     @mFI0+3.7,mCO0+114.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.3 Color Scheme 6
                     @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color Scheme 6
                ENDIF
           CASE mkEy=k_F5 .AND. LEN(ALLTRIM(vpRv))<>0 .AND. viTe=1
                DO di1_3210a
           CASE mkEy=k_F5 .AND. LEN(ALLTRIM(vaVa))<>0 .AND. viTe=2
                DO di2_3210a
           CASE mkEy=k_F6 .AND. vtIp<>3
                DO baN_3210a
           CASE mkEy=k_F8 .AND. vsW0=1
                IF vsW1=1
                     DO coLbln
                ELSE
                     DO coLsc6
                ENDIF
                STORE 2 TO vsW0
                @mFI0+3.7,mCO0+114.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3
                @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1
                @mFI0+2.2,mCO0+101.6 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.2            Color Scheme 6
                @mFI0+2.2,mCO0+107.2 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3            Color Scheme 6
                @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "999" Color Scheme 6
           CASE mkEy=k_F8 .AND. vsW0=2
                IF vsW1=1
                     DO coLbln
                ELSE
                     DO coLsc6
                ENDIF
                STORE 1 TO vsW0
                @mFI0+2.2,mCO0+101.6 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.2
                @mFI0+2.2,mCO0+107.2 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3
                @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "999"
                @mFI0+3.7,mCO0+114.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3  Color Scheme 6
                @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color Scheme 6
           CASE mkEy=k_F9 .AND. vrEn=1
                STORE 2 TO vrEn
                @mFI0+14.5,mCO0+16.4 Get vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
                IF vnRe=0
                     DO coLbln
                     STORE 01 TO vnRe
                     @mFI0+14.5,mCO0+34 Say vNRE Font "&mLetAri",9 Style "NQ" Size 1,4 Pict "99"
                ENDIF
                READ TIMEOUT 0.01
           CASE mkEy=k_F9 .AND. vrEn=2
                DO coLbln
                STORE 1 TO vrEn
                STORE 0 TO vnRe
                @mFI0+14.5,mCO0+16.4 Get vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
                @mFI0+14.5,mCO0+34   Say vNRE Font "&mLetAri",9  Style "NQ" Size 1,4 Pict "99"
                READ TIMEOUT 0.01
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...        " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=9
                STORE "Estás en el último campo...        " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe<4 .OR. viTe=5)
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. (viTe=1 .OR. viTe=7)
                STORE "No hay más campos arriba...        " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO veR_3210a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=9
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 01 TO viTe, viT1
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_3210a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=9
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 01 TO viTe, viT1
                               STORE 99 TO mkEy
                          CASE viTe=1
                               STORE 07 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=2
                               STORE 08 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=4
                               STORE 09 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=6
                               STORE 09 TO ciTx
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
                     CASE viTe=7
                          STORE 01 TO viTe
                     CASE viTe=8
                          STORE 02 TO viTe
                     CASE viTe=9
                          STORE 04 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Down
                DO veR_3210a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=9
                               DO grA_3210a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 01 TO viTe, viT1
                               STORE 99 TO mkEy
                          CASE viTe=3
                               STORE 05 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=4
                               STORE 06 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_3210a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=5
                               STORE 09 TO ciTx
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
                          CASE viTe=6
                               STORE 09 TO ciTx
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
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=4
                          STORE 2 TO viTe
                     CASE viTe=5
                          STORE 3 TO viTe
                     CASE viTe=6
                          STORE 4 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE 8 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_3210a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 9 TO ciTx
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
                     @mMF2,mMC2+25 Say "SE DEBE SELECCIONAR UN PROVEEDOR QUE YA ESTÉ REGISTRADO..."                                Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+14 Say "SE DEBE SELECCIONAR UN AVAL QUE DEBE ESTAR REGISTRADO COMO PROVEEDOR..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+29 Say "EL NÚMERO DE RENOVACIONES ES DE 1 A 10..."                                                 Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+22 Say "EL NÚMERO DEL BANCO ES DE 15 CARACTERES ALFANUMÉRICOS..."                                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+22 Say "EL COMENTARIO ES DE 15 CARACTERES ALFANUMÉRICOS..."                                        Font "&mLetRom",9 Style "BQ"
                CASE viTe=6
                     @mMF2,mMC2+25 Say "LA REFERENCIA ES DE 50 CARACTERES ALFANUMÉRICOS..."                                        Font "&mLetRom",9 Style "BQ"
                CASE viTe=7
                     @mMF2,mMC2+32 Say "DIGITAR LA FECHA, DEBE SER VÁLIDA..."                                                      Font "&mLetRom",9 Style "BQ"
                CASE viTe=8 .AND. vsW0=1 .AND. vsW1=1
                     @mMF2,mMC2+02 Say "LOS DÍAS DE VENCIMIENTOS SON DE 1 A 999, SIRVEN PARA CALCULAR LA FECHA DE VENCIMIENTO..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=8 .AND. vsW0=2 .AND. vsW1=1
                     @mMF2,mMC2+02 Say "LA FECHA DE VENCIMIENTO CALCULA LOS DÍAS, NO PUEDE HABER MÁS DE 999 DÍAS DE DIFERENCIA..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=8 .AND. vsW0=1 .AND. vsW1=2
                     @mMF2,mMC2+09 Say "LOS DÍAS DE VENCIMIENTOS NO SE PUEDEN CAMBIAR PORQUE SON LETRAS MÚLTIPLES..."              Font "&mLetRom",9 Style "BQ"
                CASE viTe=8 .AND. vsW0=2 .AND. vsW1=2
                     @mMF2,mMC2+09 Say "LA FECHA DE VENCIMIENTO NO SE PUEDE CAMBIAR PORQUE SON LETRAS MÚLTIPLES..."                Font "&mLetRom",9 Style "BQ"
                CASE viTe=9 .AND. vsW1=1
                     @mMF2,mMC2+21 Say "CAMPO DE 6 ENTEROS Y 2 DECIMALES, NO PUEDE SER CERO..."                                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=9 .AND. vsW1=2
                     @mMF2,mMC2+15 Say "EL MONTO DE LA LETRA NO SE PUEDE MODIFICAR PORQUE SON LETRAS MÚLTIPLES..."                 Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coL_fonro
      DO CASE
           CASE viTe=1 .AND. LEN(ALLTRIM(vpRv))<>0
                @mFI0+0.7,mCO0+13.2 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                @mFI0+0.7,mCO0+13.2 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
           CASE viTe=2 .AND. LEN(ALLTRIM(vaVa))<>0
                @mFI0+7.3,mCO0+13.2 Say vANO Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                @mFI0+7.3,mCO0+13.2 Say vANO Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
           CASE viTe=8 .AND. vsW1=2
                DO CASE
                     CASE vsW0=1
                          @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4
                     CASE vsW0=2
                          @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO coLsc6
                DO CASE
                     CASE vsW0=1
                          @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4
                     CASE vsW0=2
                          @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1
                ENDCASE
           CASE viTe=9 .AND. vsW1=2
                @mFI0+14.5,mCO0+108 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                mkEy = INKEY(0, "HM")
                DO coLsc6
                @mFI0+14.5,mCO0+108 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
           OTHERWISE
                DO coLbln
                DO CASE
                     CASE viTe=1
                          @mFI0+00.7,mCO0+013.2 Edit vNOM Font "&mLetAri",9 Style "NQ"  Size 1,63.4,70
                     CASE viTe=2
                          @mFI0+07.3,mCO0+013.2 Edit vANO Font "&mLetAri",9 Style "NQ"  Size 1,63.4,70
                     CASE viTe=3
                          @mFI0+14.5,mCO0+034.0 Get  vNRE Font "&mLetAri",9 Style "NQ"  Size 1,4     Pict "99" Color ,&mColBlN
                     CASE viTe=4
                          @mFI0+14.5,mCO0+062.4 Edit vLE1 Font "&mLetAri",9 Style "NQ"  Size 1,22,15 Pict "!!!!!!!!!!!!!!!"
                     CASE viTe=5
                          @mFI0+16.5,mCO0+016.4 Edit vCOM Font "&mLetAri",9 Style "NQ"  Size 1,22,15 Pict "!!!!!!!!!!!!!!!"
                     CASE viTe=6
                          @mFI0+16.5,mCO0+062.4 Edit vREF Font "&mLetAri",9 Style "NQ"  Size 1,58,50
                     CASE viTe=7
                          @mFI0+00.7,mCO0+101.8 Get  vFEM Font "&mLetAri",9 Style "NQ"  Size 1,12.1 Color ,&mColBlN
                     CASE viTe=8 .AND. vsW0=1 .AND. vsW1=1
                          @mFI0+02.2,mCO0+101.8 Get  vDIA Font "&mLetAri",9 Style "NQ"  Size 1,5.4  Color ,&mColBlN Pict "999"
                     CASE viTe=8 .AND. vsW0=2 .AND. vsW1=1
                          @mFI0+03.7,mCO0+101.8 Get  vFVE Font "&mLetAri",9 Style "NQ"  Size 1,12.1 Color ,&mColBlN
                     CASE viTe=9 .AND. vsW1=1
                          @mFI0+14.5,mCO0+108.0 Get  vTOT Font "&mLetAri",9 Style "NQ"  Size 1,13.9 Color ,&mColBlN Pict "999999.99"
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
      CASE viTe=1 .AND. LEN(ALLTRIM(vpRv))=0
           STORE "Proveedor debe estar registrado..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(vnOm))=0 .AND. LEN(ALLTRIM(vpRv))<>0
           STORE "Nombre de Proveedor no puede estar vacío..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vaNo))=0 .AND. LEN(ALLTRIM(vaVa))<>0
           STORE "Nombre de Aval no puede estar vacío..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vaNo))<>0 .AND. LEN(ALLTRIM(vaVa))=0
           STORE "Aval debe estar registrado..." TO mmSj
      CASE viTe=3 .AND. vnRe=0 .AND. vrEn=1
      CASE viTe=3 .AND. vnRe>0 .AND. vrEn=1
           STORE "Número de Renovación debe ser 0..." TO mmSj
      CASE viTe=3 .AND. vnRe=0 .AND. vrEn=2
           STORE "Número de Renovación no puede ser 0..." TO mmSj
      CASE viTe=3 .AND. vnRe>10 .AND. vrEn=2
           STORE "Número de Renovación no puede ser mayor a 10..." TO mmSj
      CASE viTe=7 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha debe ser válida..." TO mmSj
      CASE viTe=8 .AND. vsW0=1 .AND. vdIa=0 .AND. vsW1=1
           STORE "Días no pueden ser 0..." TO mmSj
      CASE viTe=8 .AND. vsW0=1 .AND. vsW1=1
           STORE vfEm+vdIa TO vfVe
           @mFI0+3.7,mCO0+101.8 Say vFVE Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color Scheme 6
      CASE viTe=8 .AND. vsW0=2 .AND. vfEm=vfVe .AND. vsW1=1
           STORE "Fecha de Vencimiento no puede ser igual a Fecha de Emisión..."  ;
                 TO mmSj
      CASE viTe=8 .AND. vsW0=2 .AND. vfEm>vfVe .AND. vsW1=1
           STORE "Fecha de Vencimiento no puede ser menor a Fecha de Emisión..."  ;
                 TO mmSj
      CASE viTe=8 .AND. vsW0=2 .AND. vsW1=1
           STORE vfVe-vfEm TO vdIa
           @mFI0+2.2,mCO0+101.8 Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "999" Color Scheme 6
      CASE viTe=9 .AND. vtOt=0 .AND. vsW1=1
           STORE "Monto no pueden ser 0...        " TO mmSj
      CASE viTe=9 .AND. vtOt<0 .AND. vsW1=1
           STORE "Monto no pueden ser menor a 0..." TO mmSj
      CASE viTe=9 .AND. vsW1=1
           DO coLbln
           @mFI0+14.5,mCO0+108 Say vTOT Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Prv_3210a
 PARAMETER ptPo
 = INKEY(0.01)
 SELECT prOveedores
 SET FILTER TO f2101est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 IF ptPo="2"
      SET FILTER TO AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f2101nom)))<>0 .AND. f2101est<>"9"
      GOTO TOP
      IF BOF() .OR. EOF()
           STORE "No hay Proveedores que contengan la palabra o frase..."  ;
                 TO mmSj
           STORE 99 TO mkEy
           SET FILTER TO
           DO poNmsj
           RETURN
      ENDIF
      DO prEsiona WITH "2", "BUSCAR", vfB2, vcB2
 ELSE
      DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ptPo="1"
      SET NEAR ON
      SEEK UPPER(ALLTRIM(vnOm))
      SET NEAR OFF
 ELSE
      GOTO TOP
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "2101", "A", "F2101COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f2101cod TO vpRv
      STORE f2101nom TO vnOm
      STORE f2101ruc TO vrUc
      SELECT suCursal
      SEEK vpRv
      IF  .NOT. EOF()
           STORE f2102suc TO vsUc
           STORE f2102dir TO vdIr
           STORE f2102dis TO vdIs
           IF LEN(ALLTRIM(f2102tl1))<>0
                STORE f2102tl1 TO vtEl
           ELSE
                IF LEN(ALLTRIM(f2102tl2))<>0
                     STORE f2102tl2 TO vtEl
                ELSE
                     STORE f2102tl3 TO vtEl
                ENDIF
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
      ELSE
           STORE SPACE(02) TO vsUc
           STORE SPACE(20) TO vtEl
           STORE SPACE(25) TO vdIs
           STORE SPACE(70) TO vdIr
           DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coL_fondo
      @mFI0+0.7,mCO0+13.2 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
      @mFI0+2.2,mCO0+13.2 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
      @mFI0+3.7,mCO0+13.2 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,35   Pict "@S25"
      @mFI0+3.7,mCO0+68.1 Say vTEL Font "&mLetAri",9 Style "NQ" Size 1,20   Pict "@S20"
      @mFI0+5.2,mCO0+13.2 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "99999999999"
      DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF ptPo="1"
      DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 ELSE
      DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ava_3210a
 PARAMETER ptPo
 = INKEY(0.01)
 SELECT prOveedores
 SET FILTER TO f2101est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 IF ptPo="2"
      SET FILTER TO AT(UPPER(ALLTRIM(vaNo)), UPPER(ALLTRIM(f2101nom)))<>0 .AND. f2101est<>"9"
      GOTO TOP
      IF BOF() .OR. EOF()
           STORE "No hay Proveedores que contengan la palabra o frase..."  ;
                 TO mmSj
           STORE 99 TO mkEy
           SET FILTER TO
           DO poNmsj
           RETURN
      ENDIF
      DO prEsiona WITH "2", "BUSCAR", vfB6, vcB6
 ELSE
      DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ptPo="1"
      SET NEAR ON
      SEEK UPPER(ALLTRIM(vaNo))
      SET NEAR OFF
 ELSE
      GOTO TOP
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "2101", "A", "F2101COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f2101cod TO vaVa
      STORE f2101nom TO vaNo
      STORE f2101ruc TO vaRu
      SELECT suCursal
      SEEK vaVa
      IF  .NOT. EOF()
           STORE f2102suc TO vaSu
           STORE f2102dir TO vaDi
           STORE f2102dis TO vaDs
           IF LEN(ALLTRIM(f2102tl1))<>0
                STORE f2102tl1 TO vaTl
           ELSE
                IF LEN(ALLTRIM(f2102tl2))<>0
                     STORE f2102tl2 TO vaTl
                ELSE
                     STORE f2102tl3 TO vaTl
                ENDIF
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB8, vcB8
      ELSE
           STORE SPACE(02) TO vaSu
           STORE SPACE(20) TO vaTl
           STORE SPACE(25) TO vaDi
           STORE SPACE(70) TO vaDs
           DO prEsiona WITH "3", "CONSUL", vfB8, vcB8
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coL_fondo
      @mFI0+07.3,mCO0+13.2 Say vANO Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
      @mFI0+08.8,mCO0+13.2 Say vADI Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
      @mFI0+10.3,mCO0+13.2 Say vADS Font "&mLetAri",9 Style "NQ" Size 1,35   Pict "@S25"
      @mFI0+10.3,mCO0+68.1 Say vATL Font "&mLetAri",9 Style "NQ" Size 1,20   Pict "@S20"
      @mFI0+11.8,mCO0+13.2 Say vARU Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "99999999999"
      DO prEsiona WITH "1", "DESCAR", vfB7, vcB7
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF ptPo="1"
      DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
 ELSE
      DO prEsiona WITH "1", "BUSCAR", vfB6, vcB6
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Di1_3210a
 = INKEY(0.01)
 SELECT suCursal
 SET FILTER TO f2102cod=vpRv
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay sucursales registradas en este Proveedor..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 ACTIVATE POPUP vtB3 REST
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      DO coL_fondo
      STORE f2102suc TO vsUc
      STORE f2102dir TO vdIr
      STORE f2102dis TO vdIs
      IF LEN(ALLTRIM(f2102tl1))<>0
           STORE f2102tl1 TO vtEl
      ELSE
           IF LEN(ALLTRIM(f2102tl2))<>0
                STORE f2102tl2 TO vtEl
           ELSE
                STORE f2102tl3 TO vtEl
           ENDIF
      ENDIF
      @mFI0+2.2,mCO0+13.2 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
      @mFI0+3.7,mCO0+13.2 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,35   Pict "@S25"
      @mFI0+3.7,mCO0+68.1 Say vTEL Font "&mLetAri",9 Style "NQ" Size 1,20   Pict "@S20"
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Di2_3210a
 = INKEY(0.01)
 SELECT suCursal
 SET FILTER TO f2102cod=vaVa
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay sucursales registradas en este Aval..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 ACTIVATE POPUP vtB4 REST
 DO p1_0000a
 SET FILTER TO
 IF mkEy=k_Enter
      DO coL_fondo
      STORE f2102suc TO vaSu
      STORE f2102dir TO vaDi
      STORE f2102dis TO vaDs
      IF LEN(ALLTRIM(f2102tl1))<>0
           STORE f2102tl1 TO vaTl
      ELSE
           IF LEN(ALLTRIM(f2102tl2))<>0
                STORE f2102tl2 TO vaTl
           ELSE
                STORE f2102tl3 TO vaTl
           ENDIF
      ENDIF
      @mFI0+08.8,mCO0+13.2 Say vADI Font "&mLetAri",9 Style "NQ" Size 1,63.4 Pict "@S70"
      @mFI0+10.3,mCO0+13.2 Say vADS Font "&mLetAri",9 Style "NQ" Size 1,35   Pict "@S25"
      @mFI0+10.3,mCO0+68.1 Say vATL Font "&mLetAri",9 Style "NQ" Size 1,20   Pict "@S20"
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Ban_3210a
 = INKEY(0.01)
 SELECT baNcos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Bancos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB9, vcB9
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
 ACTIVATE POPUP vtB5 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE f9312ban TO vbAn
      STORE f9312nba TO vnBa
      @mFI0+12.4,mCO0+99 Say vNBA Font "&mLetAri",9 Style "NQ" Size 1,20.4 Pict "@S25" Color Scheme 7
 ENDIF
 DO orD_0000a WITH "9312", "U", "F9312BAN", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB9, vcB9
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Gra_3210a
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 SELECT teMporal
 ZAP
 REINDEX
 SELECT nuMeracion
 SEEK vtDo+vsEr
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f9999num TO vdOc
 ELSE
      STORE "0000000" TO vdOc
 ENDIF
 STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
 ptX2 = "LETRA: "+vsEr+"-"+vdOc
 SELECT leTras
 SEEK vsEr+vdOc
 IF  .NOT. EOF()
      UNLOCK ALL
      ptX1 = "Este Documento ya está Registrado"+CHR(13)+"Cambiar Numeración"
      poPc = MESSAGEBOX(ptX1, 0048, ptX2)
      STORE SPACE(07) TO vdOc
      RETURN
 ENDIF
 IF vsW1=1 .OR. vtO2=0
      ptX1 = "¿Desea Grabar esta Letra?"
 ELSE
      ptX1 = "¿Desea Grabar a partir de esta Letra?"
 ENDIF
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "1"
 SELECT nuMeracion
 IF vdOc="0000001"
      DO nuEvo_rg
      REPLACE f9999tdo WITH vtDo
      REPLACE f9999ser WITH vsEr
 ENDIF
 UNLOCK
 STORE 1 TO vnUm
 DO WHILE .T.
      SELECT teMporal
      DO nuEvo_rg
      REPLACE ftM1ser WITH vsEr
      REPLACE ftM1let WITH vdOc
      SELECT nuMeracion
      REPLACE f9999num WITH vdOc
      SELECT leTras
      DO nuEvo_rg
      REPLACE f3210ser WITH vsEr
      REPLACE f3210let WITH vdOc
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
      REPLACE f3210fem WITH vfEm
      REPLACE f3210ban WITH vbAn
      REPLACE f3210nba WITH vnBa
      REPLACE f3210tip WITH vtIp
      REPLACE f3210ren WITH vrEn
      REPLACE f3210nre WITH vnRe
      REPLACE f3210mon WITH vmOn
      REPLACE f3210le1 WITH vlE1
      REPLACE f3210ref WITH vrEf
      REPLACE f3210com WITH vcOm
      REPLACE f3210est WITH "1"
      REPLACE f3210usu WITH muSu
      REPLACE f3210dat WITH DATE()
      REPLACE f3210tim WITH TIME()
      IF vsW1=1
           REPLACE f3210dia WITH vdIa
           REPLACE f3210fve WITH vfVe
           REPLACE f3210tot WITH vtOt
           EXIT
      ENDIF
      DO CASE
           CASE vnUm=1 .AND. vtO1<>0
                REPLACE f3210dia WITH vdI1
                REPLACE f3210fve WITH vfV1
                REPLACE f3210tot WITH vtO1
                STORE vnUm+1 TO vnUm
                IF vtO2=0
                     EXIT
                ENDIF
           CASE vnUm=2 .AND. vtO2<>0
                REPLACE f3210dia WITH vdI2
                REPLACE f3210fve WITH vfV2
                REPLACE f3210tot WITH vtO2
                STORE vnUm+1 TO vnUm
                IF vtO3=0
                     EXIT
                ENDIF
           CASE vnUm=3 .AND. vtO3<>0
                REPLACE f3210dia WITH vdI3
                REPLACE f3210fve WITH vfV3
                REPLACE f3210tot WITH vtO3
                STORE vnUm+1 TO vnUm
                IF vtO4=0
                     EXIT
                ENDIF
           CASE vnUm=4 .AND. vtO4<>0
                REPLACE f3210dia WITH vdI4
                REPLACE f3210fve WITH vfV4
                REPLACE f3210tot WITH vtO4
                STORE vnUm+1 TO vnUm
                IF vtO5=0
                     EXIT
                ENDIF
           CASE vnUm=5 .AND. vtO5<>0
                REPLACE f3210dia WITH vdI5
                REPLACE f3210fve WITH vfV5
                REPLACE f3210tot WITH vtO5
                EXIT
      ENDCASE
      UNLOCK
      STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
 ENDDO
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 = INKEY(0.01)
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1ser TO vsEr
      STORE ftM1let TO vdOc
      DO pcI3210z
      SELECT teMporal
      SKIP
 ENDDO
 STORE DATE() TO vfEm, vfVe
 STORE "US$" TO vsIg
 STORE SPACE(04) TO vpRv, vaVa
 STORE SPACE(11) TO vrUc, vaRu
 STORE SPACE(20) TO vtEl, vaTl
 STORE SPACE(25) TO vdIs, vaDs
 STORE SPACE(50) TO vnBa, vrEf
 STORE SPACE(15) TO vlE1, vcOm
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
 DO tiT_0000a WITH "Ingreso de Letras de Proveedores"
 DO p01_3210a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_3210a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "BOT_MA05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_99
ENDPROC
*
PROCEDURE P01_3210a
 STORE mfI0+00.60 TO vfB1, vfB2, vfB3
 STORE mfI0+02.10 TO vfB4
 STORE mfI0+07.25 TO vfB5, vfB6, vfB7
 STORE mfI0+08.75 TO vfB8
 STORE mfI0+12.30 TO vfB9
 STORE mcO0+76.9 TO vcB1, vcB4, vcB5, vcB8
 STORE vcB1+4 TO vcB2, vcB6
 STORE vcB2+4 TO vcB3, vcB7
 STORE mcO0+119.8 TO vcB9
 STORE mfI0+muFi+3 TO mmF2
 Define Popup vTB1 from mFI0+01.8,mCO0+12.8 to mFI0+mUFI+12,mCO0+111 Font "&mLetAri",12 Style "NQ" Prompt Field F2101NOM Scroll Color Scheme 3 Footer "PROVEEDORES"
 Define Popup vTB2 from mFI0+08.7,mCO0+12.8 to mFI0+mUFI+12,mCO0+111 Font "&mLetAri",12 Style "NQ" Prompt Field F2101NOM Scroll Color Scheme 3 Footer "PROVEEDORES"
 Define Popup vTB3 from mFI0+03.4,mCO0+12.8 to mFI0+mUFI+12,mCO0+111 Font "&mLetAri",12 Style "NQ" Prompt Field AllTrim(F2102DIR)+", "+AllTrim(F2102DIS) Scroll Color Scheme 3 Footer "DIRECCIONES/SUCURSALES"
 Define Popup vTB4 from mFI0+10.1,mCO0+12.8 to mFI0+mUFI+12,mCO0+111 Font "&mLetAri",12 Style "NQ" Prompt Field AllTrim(F2102DIR)+", "+AllTrim(F2102DIS) Scroll Color Scheme 3 Footer "DIRECCIONES/SUCURSALES"
 Define Popup vTB5 from mFI0+13.6,mCO0+98.4 to mFI0+mUFI+12,mCO0+143 Font "&mLetAri",12 Style "NQ" Prompt Field F9312NBA Scroll Color Scheme 3 Footer "BANCOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLplp
 DO cuAdro WITH mfI0-1.2, mcO0-3, mfI0+muFi+1.2, mcO0+muCo+3
 DO coLneb
 @ mfI0-1.4, mcO0-3.3 TO mfI0+muFi+1.5, mcO0+muCo+3.3 PATTERN 7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mmC2, mmF2+1, mcO0+muCo+3.1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ mfI0+06.7, mcO0+00 TO mfI0+06.7, mcO0+89
 @ mfI0+00.0, mcO0+89 TO mfI0+16.0, mcO0+muCo PATTERN 1 COLOR SCHEME 6
 @ mfI0+05.4, mcO0+89 TO mfI0+14.0, mcO0+muCo PATTERN 1 COLOR SCHEME 7
 @ mfI0+14.0, mcO0+00 TO mfI0+16.0, mcO0+40 PATTERN 1 COLOR SCHEME 3
 @ mfI0+07.4, mcO0+89 TO mfI0+11.8, mcO0+muCo
 @mFI0+00.6,mCO0+01.0 Say "Proveedor"    Font "&mLetAri",9  Style "NT"
 @mFI0+02.1,mCO0+01.0 Say "Dirección"  Font "&mLetAri",9  Style "NT"
 @mFI0+03.6,mCO0+01.0 Say "Distrito"   Font "&mLetAri",9  Style "NT"
 @mFI0+03.6,mCO0+57.5 Say "Teléfono"   Font "&mLetAri",9  Style "NT"
 @mFI0+05.1,mCO0+01.0 Say "R.U.C."     Font "&mLetAri",9  Style "NT"
 @mFI0+07.3,mCO0+01.0 Say "Aval"       Font "&mLetAri",9  Style "NT"
 @mFI0+08.8,mCO0+01.0 Say "Dirección"  Font "&mLetAri",9  Style "NT"
 @mFI0+10.3,mCO0+01.0 Say "Distrito"   Font "&mLetAri",9  Style "NT"
 @mFI0+10.3,mCO0+57.5 Say "Teléfono"   Font "&mLetAri",9  Style "NT"
 @mFI0+11.8,mCO0+01.0 Say "R.U.C."     Font "&mLetAri",9  Style "NT"
 @mFI0+00.6,mCO0+90.0 Say "Fecha"      Font "&mLetAri",9  Style "NT"
 @mFI0+02.1,mCO0+90.0 Say "Días"       Font "&mLetAri",9  Style "NT"
 @mFI0+03.6,mCO0+90.0 Say "Vencim."    Font "&mLetAri",9  Style "NT"
 @mFI0+05.9,mCO0+91.0 Say "Moneda"     Font "&mLetAri",9  Style "NT"
 @mFI0+08.8,mCO0+91.0 Say "Tipo"       Font "&mLetRom",13 Style "NT"
 @mFI0+12.4,mCO0+90.0 Say "Banco"      Font "&mLetAri",9  Style "NT"
 @mFI0+14.5,mCO0+01.0 Say "Renovación" Font "&mLetAri",9  Style "NT"
 @mFI0+14.5,mCO0+49.0 Say "No.Banco"   Font "&mLetAri",9  Style "NT"
 @mFI0+14.5,mCO0+90.0 Say "MONTO"      Font "&mLetAri",9  Style "NT"
 @mFI0+14.5,mCO0+100  Say vSIG         Font "&mLetAri",9  Style "NT"
 @mFI0+16.5,mCO0+01.0 Say "Comentario" Font "&mLetAri",9  Style "NT"
 @mFI0+16.5,mCO0+49.0 Say "Referencia" Font "&mLetAri",9  Style "NT"
 DO p04_3210a
ENDPROC
*
PROCEDURE P02_3210a
 DO coL_beige
 DO cuAdro WITH vfI0, vcO0, vfI0+9.5, vcO0+54
 IF mkEy=k_Esc
      EXIT
 ENDIF
 DO coL_fondo
 @ vfI0-0.2, vcO0-0.2 CLEAR TO vfI0+1.2, vcO0+54.1
 @ vfI0-0.2, vcO0-0.2 CLEAR TO vfI0+9.7, vcO0+06.0
 DO coL_beige
 @ vfI0+1.2, vcO0-0.1 TO vfI0+1.2, vcO0+54.1
 @ vfI0-0.2, vcO0+06 TO vfI0+9.7, vcO0+06.0
 @vFI0+0.1,vCO0+10 Say "Días"     Font "&mLetAri",9 Style "BT"
 @vFI0+0.1,vCO0+20 Say "Vencimie" Font "&mLetAri",9 Style "BT"
 @vFI0+2.1,vCO0+02 Say "1."       Font "&mLetAri",9 Style "BT"
 @vFI0+3.6,vCO0+02 Say "2."       Font "&mLetAri",9 Style "BT"
 @vFI0+5.1,vCO0+02 Say "3."       Font "&mLetAri",9 Style "BT"
 @vFI0+6.6,vCO0+02 Say "4."       Font "&mLetAri",9 Style "BT"
 @vFI0+8.1,vCO0+02 Say "5."       Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE vmOn=1
           @vFI0+0.1,vCO0+37 Say "Monto "+mSIG Font "&mLetAri",9 Style "BT"
      CASE vmOn=2
           @vFI0+0.1,vCO0+37 Say "Monto US$"   Font "&mLetAri",9 Style "BT"
 ENDCASE
 @vFI0+2.1,vCO0+37 Get vTO1 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
 @vFI0+3.6,vCO0+37 Get vTO2 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
 @vFI0+5.1,vCO0+37 Get vTO3 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
 @vFI0+6.6,vCO0+37 Get vTO4 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
 @vFI0+8.1,vCO0+37 Get vTO5 Font "&mLetAri",9 Style "NQ" Size 1,13.9 Color ,&mColBlN Pict "999999.99"
 DO p03_3210a
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE P03_3210a
 DO CASE
      CASE vsW0=1
           @vFI0+2.1,vCO0+10 Get vDI1 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
           @vFI0+3.6,vCO0+10 Get vDI2 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
           @vFI0+5.1,vCO0+10 Get vDI3 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
           @vFI0+6.6,vCO0+10 Get vDI4 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
           @vFI0+8.1,vCO0+10 Get vDI5 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mColBlN Pict "999"
           @vFI0+2.1,vCO0+20 Get vFV1 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mCol_Beige
           @vFI0+3.6,vCO0+20 Get vFV2 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mCol_Beige
           @vFI0+5.1,vCO0+20 Get vFV3 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mCol_Beige
           @vFI0+6.6,vCO0+20 Get vFV4 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mCol_Beige
           @vFI0+8.1,vCO0+20 Get vFV5 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mCol_Beige
      CASE vsW0=2
           @vFI0+2.1,vCO0+10 Get vDI1 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mCol_Beige Pict "999"
           @vFI0+3.6,vCO0+10 Get vDI2 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mCol_Beige Pict "999"
           @vFI0+5.1,vCO0+10 Get vDI3 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mCol_Beige Pict "999"
           @vFI0+6.6,vCO0+10 Get vDI4 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mCol_Beige Pict "999"
           @vFI0+8.1,vCO0+10 Get vDI5 Font "&mLetAri",9 Style "NQ" Size 1,5.4  Color ,&mCol_Beige Pict "999"
           @vFI0+2.1,vCO0+20 Get vFV1 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
           @vFI0+3.6,vCO0+20 Get vFV2 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
           @vFI0+5.1,vCO0+20 Get vFV3 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
           @vFI0+6.6,vCO0+20 Get vFV4 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
           @vFI0+8.1,vCO0+20 Get vFV5 Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
 ENDCASE
ENDPROC
*
PROCEDURE P04_3210a
 DO coLbln
 @mFI0+14.5,mCO0+034.0 Get  vNRE Font "&mLetAri",9  Style "NQ" Size 1,4    Pict "99"  Color ,&mColBlN
 @mFI0+14.5,mCO0+062.4 Edit vLE1 Font "&mLetAri",9  Style "NQ" Size 1,22
 @mFI0+16.5,mCO0+016.4 Edit vCOM Font "&mLetAri",9  Style "NQ" Size 1,22
 @mFI0+16.5,mCO0+062.4 Edit vREF Font "&mLetAri",9  Style "NQ" Size 1,58,50
 @mFI0+02.2,mCO0+101.8 Get  vDIA Font "&mLetAri",9  Style "NQ" Size 1,5.4  Pict "999" Color ,&mColBlN   
 IF veSt>"1"
      DO coL_fonpl
      @mFI0+00.7,mCO0+101.8 Get  vFEM Font "&mLetAri",9  Style "NQ" Size 1,12.1                  Color ,&mColSc3
      @mFI0+14.5,mCO0+108.0 Get  vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.9 Pict "999,99.99" Color ,&mColSc3
 ELSE
      @mFI0+00.7,mCO0+101.8 Get  vFEM Font "&mLetAri",9  Style "NQ" Size 1,12.1                  Color ,&mColBlN
      @mFI0+14.5,mCO0+108.0 Get  vTOT Font "&mLetAri",9  Style "NQ" Size 1,13.9 Pict "999,99.99" Color ,&mColBlN
 ENDIF
 @mFI0+00.7,mCO0+013.2 Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,63.4,70
 @mFI0+07.3,mCO0+013.2 Edit vANO Font "&mLetAri",9  Style "NQ" Size 1,63.4,70
 @mFI0+12.4,mCO0+099.0 Edit vNBA Font "&mLetAri",9  Style "NQ" Size 1,20.4,50 Color Scheme 7
 @mFI0+03.7,mCO0+101.8 Get  vFVE Font "&mLetAri",9  Style "NQ" Size 1,12.1    Color Scheme 6
 @mFI0+07.9,mCO0+101.1 Get  vTIP Font "&mLetAri",11 Style "NQ" Default vTIP Function "*RVT Descuento;Cobranza;Cartera"
 @mFI0+14.5,mCO0+016.4 Get  vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
 DO coL_fondo
 @mFI0+02.2,mCO0+013.2 Edit vDIR Font "&mLetAri",9  Style "NQ" Size 1,63.4,70
 @mFI0+03.7,mCO0+013.2 Edit vDIS Font "&mLetAri",9  Style "NQ" Size 1,35,25
 @mFI0+03.7,mCO0+068.1 Edit vTEL Font "&mLetAri",9  Style "NQ" Size 1,20,20
 @mFI0+05.2,mCO0+013.2 Edit vRUC Font "&mLetAri",9  Style "NQ" Size 1,15.5
 @mFI0+08.8,mCO0+013.2 Edit vADI Font "&mLetAri",9  Style "NQ" Size 1,63.4,70
 @mFI0+10.3,mCO0+013.2 Edit vADS Font "&mLetAri",9  Style "NQ" Size 1,35,25
 @mFI0+10.3,mCO0+068.1 Edit vATL Font "&mLetAri",9  Style "NQ" Size 1,20,20
 @mFI0+11.8,mCO0+013.2 Edit vARU Font "&mLetAri",9  Style "NQ" Size 1,15.5
 DO moN_3110a IN PCI3110A
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Bot_3210a
 IF veSt="1"
      DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
 ELSE
      DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "BUSCAR", vfB2, vcB2
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vpRv))=0 .OR. veSt>"1"
      DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vpRv))=0 .OR. veSt>"1"
      DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
 ELSE
      DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF veSt="1"
      DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "BUSCAR", vfB6, vcB6
 ELSE
      DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "3", "BUSCAR", vfB6, vcB6
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vaVa))=0 .OR. veSt>"1"
      DO prEsiona WITH "3", "DESCAR", vfB7, vcB7
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB7, vcB7
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vaVa))=0 .OR. veSt>"1"
      DO prEsiona WITH "3", "CONSUL", vfB8, vcB8
 ELSE
      DO prEsiona WITH "1", "CONSUL", vfB8, vcB8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB9, vcB9
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
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           STORE 01 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. LEN(ALLTRIM(vpRv))<>0
           STORE 01 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. LEN(ALLTRIM(vpRv))<>0
           STORE 01 TO viTe
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2
           STORE 02 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2
           STORE 02 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2 .AND. LEN(ALLTRIM(vaVa))<>0
           STORE 02 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2 .AND. mcCc>=vcB8+mcO1  ;
           .AND. mcCc<=vcB8+mcO2 .AND. LEN(ALLTRIM(vaVa))<>0
           STORE 02 TO viTe
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2 .AND. mcCc>=vcB9+mcO1  ;
           .AND. mcCc<=vcB9+mcO2 .AND. vtIp<3
           STORE k_F6 TO mkEy
      CASE mfIl>=mfI0+5.821 .AND. mfIl<=mfI0+7.036 .AND. mcCc>=mcO0+101  ;
           .AND. mcCc<=mcO0+109 .AND. vmOn<>1
           STORE 01 TO vmOn
           STORE msIg TO vsIg
           DO moN_3110a IN PCI3110A
           @mFI0+14.5,mCO0+100 Say vSIG Font "&mLetAri",9  Style "NQ" Size 1,5 Color Scheme 6
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.821 .AND. mfIl<=mfI0+7.036 .AND. mcCc>=mcO0+109  ;
           .AND. mcCc<=mcO0+119.2 .AND. vmOn<>2
           STORE 02 TO vmOn
           STORE "US$" TO vsIg
           DO moN_3110a IN PCI3110A
           @mFI0+14.5,mCO0+100 Say vSIG Font "&mLetAri",9  Style "NQ" Size 1,5 Color Scheme 6
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.821 .AND. mfIl<=mfI0+9.036 .AND. mcCc>=mcO0+101.2  ;
           .AND. mcCc<=mcO0+119.6 .AND. vtIp<>1
           STORE 01 TO vtIp
           @mFI0+7.9,mCO0+101.1 Get vTIP Font "&mLetAri",11 Style "NQ" Default vTIP Function "*RVT Descuento;Cobranza;Cartera"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.036 .AND. mfIl<=mfI0+10.25 .AND. mcCc>=mcO0+101.2  ;
           .AND. mcCc<=mcO0+119.6 .AND. vtIp<>2
           STORE 02 TO vtIp
           @mFI0+7.9,mCO0+101.1 Get vTIP Font "&mLetAri",11 Style "NQ" Default vTIP Function "*RVT Descuento;Cobranza;Cartera"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.25 .AND. mfIl<=mfI0+11.464 .AND. mcCc>=mcO0+ ;
           101.2 .AND. mcCc<=mcO0+119.6 .AND. vtIp<>3
           STORE 03 TO vtIp
           STORE SPACE(02) TO vbAn
           STORE SPACE(30) TO vnBa
           @mFI0+07.9,mCO0+101.1 Get vTIP Font "&mLetAri",11 Style "NQ" Default vTIP Function "*RVT Descuento;Cobranza;Cartera"
           @mFI0+12.4,mCO0+099.0 Say vNBA Font "&mLetAri",9  Style "NQ" Size 1,20.4 Pict "@S23" Color Scheme 7
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.25 .AND. mfIl<=mfI0+15.536 .AND. mcCc>=mcO0+23.6  ;
           .AND. mcCc<=mcO0+30.6 .AND. vsW1=2
           STORE "No se puede crear Multiletras renovadas..." TO mmSj
      CASE mfIl>=mfI0+14.25 .AND. mfIl<=mfI0+15.536 .AND. mcCc>=mcO0+ ;
           15.80 .AND. mcCc<=mcO0+23.6 .AND. vrEn<>1
           DO coLbln
           STORE 01 TO vrEn
           STORE 00 TO vnRe
           @mFI0+14.5,mCO0+16.4 Get vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
           @mFI0+14.5,mCO0+34.0 Say vNRE Font "&mLetAri",9  Style "NQ" Size 1,4 Pict "99"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.25 .AND. mfIl<=mfI0+15.536 .AND. mcCc>=mcO0+23.6  ;
           .AND. mcCc<=mcO0+30.6 .AND. vrEn<>2
           STORE 2 TO vrEn
           IF vnRe=0
                STORE 1 TO vnRe
           ENDIF
           @mFI0+14.5,mCO0+16.4 Get vREN Font "&mLetAri",10 Style "NQ" Default vREN Function "*RHT No;Si" Color Scheme 3
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.536 .AND. mfIl<=mfI0+1.821 .AND. mcCc>=mcO0+00.8  ;
           .AND. mcCc<=mcO0+76.6 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.321 .AND. mfIl<=mfI0+8.464 .AND. mcCc>=mcO0+00.8  ;
           .AND. mcCc<=mcO0+76.6 .AND. viTe<>2
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
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.607 .AND. mcCc>=mcO0+ ;
           33.6 .AND. mcCc<=mcO0+38.4 .AND. viTe<>3
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
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.607 .AND. mcCc>=mcO0+ ;
           48.2 .AND. mcCc<=mcO0+84.8 .AND. viTe<>4
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
      CASE mfIl>=mfI0+16.464 .AND. mfIl<=mfI0+17.607 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+38.8 .AND. viTe<>5
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
      CASE mfIl>=mfI0+16.464 .AND. mfIl<=mfI0+17.607 .AND. mcCc>=mcO0+ ;
           48.6 .AND. mcCc<=mcO0+120.6 .AND. viTe<>6
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
      CASE mfIl>=mfI0+0.536 .AND. mfIl<=mfI0+1.821 .AND. mcCc>=mcO0+90  ;
           .AND. mcCc<=mcO0+114.8 .AND. viTe<>7
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
      CASE mcCc>=mcO0+90 .AND. mcCc<=mcO0+114.8 .AND. viTe<>8 .AND.  ;
           ((mfIl>=mfI0+2.178 .AND. mfIl<=mfI0+3.321 .AND. vsW0=1) .OR.  ;
           (mfIl>=mfI0+3.607 .AND. mfIl<=mfI0+4.893 .AND. vsW0=2))
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
      CASE mfIl>=mfI0+14.393 .AND. mfIl<=mfI0+15.536 .AND. mcCc>=mcO0+90  ;
           .AND. mcCc<=mcO0+123.4 .AND. viTe<>9
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3210a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En este programa se puede ingresar letras nuevas. Si se imprimen ya no"
 @ pfIl+1, 02 SAY "se pueden modificar."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 24 SAY ":" STYLE "BT"
 @ pfIl+6, 24 SAY ":" STYLE "BT"
 @ pfIl+7, 24 SAY ":" STYLE "BT"
 @ pfIl+5, 06 SAY "ESC" STYLE "BT"
 @ pfIl+6, 06 SAY "F10" STYLE "BT"
 @ pfIl+7, 06 SAY "F1" STYLE "BT"
 @ pfIl+6, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 26 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+5, 26 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+5, 26 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+8 TO pfIl
 DO CASE
      CASE viTe=1
           @ pfIl+0, 24 SAY ":" STYLE "BT"
           @ pfIl+1, 24 SAY ":" STYLE "BT"
           @ pfIl+2, 24 SAY ":" STYLE "BT"
           @ pfIl+0, 06 SAY "F2" STYLE "BT"
           @ pfIl+1, 06 SAY "F3" STYLE "BT"
           @ pfIl+2, 06 SAY "F5" STYLE "BT"
           @ pfIl+0, 26 SAY "Consulta todos los Proveedores registrados"
           @ pfIl+1, 26 SAY  ;
             "Consulta Proveedores que contengan palabra o frase"
           @ pfIl+2, 26 SAY "Consulta Direcciones del Proveedores escogido"
           STORE pfIl+3 TO pfIl
      CASE viTe=2
           @ pfIl+0, 24 SAY ":" STYLE "BT"
           @ pfIl+1, 24 SAY ":" STYLE "BT"
           @ pfIl+2, 24 SAY ":" STYLE "BT"
           @ pfIl+0, 06 SAY "F2" STYLE "BT"
           @ pfIl+1, 06 SAY "F3" STYLE "BT"
           @ pfIl+2, 06 SAY "F5" STYLE "BT"
           @ pfIl+0, 26 SAY "Consulta todos los Avales registrados"
           @ pfIl+1, 26 SAY "Consulta Avales que contengan palabra o frase"
           @ pfIl+2, 26 SAY "Consulta Direcciones del Aval escogido"
           STORE pfIl+3 TO pfIl
 ENDCASE
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
 IF viTe<>1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "CTRL HOME" STYLE "BT"
      @ pfIl, 26 SAY "Regresar al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "CTRL END" STYLE "BT"
 @ pfIl+1, 06 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 26 SAY "Último campo"
 @ pfIl+1, 26 SAY "Ir al campo derecho, llegando al final se graba"
 STORE pfIl+2 TO pfIl
 DO CASE
      CASE viTe=1
           @ pfIl, 24 SAY ":" STYLE "BT"
           @ pfIl, 06 SAY "CTRL DEL" STYLE "BT"
           @ pfIl, 26 SAY "Borrar Proveedor escogido"
           STORE pfIl+1 TO pfIl
      CASE viTe=2
           @ pfIl, 24 SAY ":" STYLE "BT"
           @ pfIl, 06 SAY "CTRL DEL" STYLE "BT"
           @ pfIl, 26 SAY "Borrar Aval escogido"
           STORE pfIl+1 TO pfIl
 ENDCASE
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+3, 24 SAY ":" STYLE "BT"
 @ pfIl+4, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 06 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 06 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+3, 06 SAY "ALT + C" STYLE "BT"
 @ pfIl+4, 06 SAY "TAB" STYLE "BT"
 @ pfIl+0, 26 SAY "Ir al siguiente campo, llegando al final se graba"
 @ pfIl+1, 26 SAY "Ir al campo inferior, llegando al final se graba"
 @ pfIl+2, 26 SAY "Ir al campo superior"
 @ pfIl+3, 26 SAY "Cuadro de Letras múltiples"
 @ pfIl+4, 26 SAY "GRABAR"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3210a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte del programa se puede ingresar los datos para generar varias"
 @ pfIl+01, 02 SAY "letras al mismo tiempo."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 24 SAY ":" STYLE "BT"
 @ pfIl+06, 24 SAY ":" STYLE "BT"
 @ pfIl+07, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+12, 24 SAY ":" STYLE "BT"
 @ pfIl+13, 24 SAY ":" STYLE "BT"
 @ pfIl+14, 24 SAY ":" STYLE "BT"
 @ pfIl+15, 24 SAY ":" STYLE "BT"
 @ pfIl+05, 06 SAY "ESC" STYLE "BT"
 @ pfIl+06, 06 SAY "F10" STYLE "BT"
 @ pfIl+07, 06 SAY "F1" STYLE "BT"
 @ pfIl+08, 06 SAY "F8" STYLE "BT"
 @ pfIl+09, 06 SAY "TAB" STYLE "BT"
 @ pfIl+10, 06 SAY "CTRL DEL" STYLE "BT"
 @ pfIl+11, 06 SAY "CTRL -->" STYLE "BT"
 @ pfIl+12, 06 SAY "CTRL <--" STYLE "BT"
 @ pfIl+13, 06 SAY "ENTER" STYLE "BT"
 @ pfIl+14, 06 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+15, 06 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 26 SAY "Regresar a la pantalla anterior"
 @ pfIl+06, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 26 SAY "Ayuda del Programa"
 @ pfIl+08, 26 SAY "Cambio: Digitar la Fecha o digitar Días"
 @ pfIl+09, 26 SAY "Aceptar Letras multiples"
 @ pfIl+10, 26 SAY "Borrar todos los datos de esta pantalla"
 @ pfIl+11, 26 SAY "Ir a campo derecho"
 @ pfIl+12, 26 SAY "Ir a campo izquierdo"
 @ pfIl+13, 26 SAY "Ir a campo siguiente"
 @ pfIl+14, 26 SAY "Ir a campo inferior"
 @ pfIl+15, 26 SAY "Ir a campo superior"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE viTe, viT1, ciTx, vfRa, vlIn, vtB1, vtB2, vtB3, vtB4, vtB5, vfB1,  ;
         vfB2, vfB3
 RELEASE vfB4, vfB5, vfB6, vfB7, vfB8, vfB9, vcB1, vcB2, vcB3, vcB4, vcB5,  ;
         vcB6, vcB7
 RELEASE vcB8, vcB9, vtDo, vsEr, xsEr, vdOc, xdOc, vfEm, xfEm, vfVe, xfVe,  ;
         vpRv, vnOm
 RELEASE xnOm, vrUc, xrUc, vsUc, xsUc, vdIr, xdIr, vdIs, xdIs, vtEl, xtEl,  ;
         vaVa, xaVa
 RELEASE vaNo, xaNo, vaRu, xaRu, vaSu, xaSu, vaDi, xaDi, vaDs, xaDs, vaTl,  ;
         xaTl, vbAn
 RELEASE xbAn, vnBa, xnBa, vmOn, xmOn, vsIg, vdIa, xdIa, vtIp, xtIp, vrEn,  ;
         xrEn, vnRe
 RELEASE xnRe, vsW0, vlE1, xlE1, vrEf, xrEf, vcOm, xcOm, vpIg, xpIg, vtOt,  ;
         ttOt, xtOt
 RELEASE veSt, xeSt, vfV1, vfV2, vfV3, vfV4, vfV5, vdI1, vdI2, vdI3, vdI4,  ;
         vdI5, vtO1
 RELEASE vtO2, vtO3, vtO4, vtO5, vfI0, vcO0, vsW1, vnUm, xuSu, xdAt, xtIm,  ;
         xmAq, vtCl
 RELEASE vnTc
 RELEASE vpAn_11, vpAn_99
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
 DO deL_file2 WITH "1", "S"
 RELEASE ntM1
ENDPROC
*
