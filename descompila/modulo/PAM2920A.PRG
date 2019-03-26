 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FOR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DSP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 4
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1ERR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
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
 INDEX ON UPPER(ALLTRIM(ftM1cod))+"*" TAG ftM1cod
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2920", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Conjuntos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2920COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2921", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Conjuntos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2921COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Maestro de Productos no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Prod
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      CLOSE INDEXES
      CLOSE DATABASES
      STORE "Archivo Utilitario de Tipos de Productos/Servicios/Activos Fijos vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Unidad
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9213UNI
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      CLOSE INDEXES
      CLOSE DATABASES
      STORE "Archivo Utilitario de Unidades de Medida vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "9221", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Primero
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9221DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9222", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Segundo
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9222DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "9223", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tercero
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9223DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "9224", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cuarto
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9224DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "9225", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Quinto
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9225DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO prO_virtual WITH 1
 SELECT 12
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ckEy, viOm, vsW0, vsW1, vsW2, vsWw, csWw, vsWr, vcO0, vuCo,  ;
        vcL0, vfB1
 PUBLIC vfB2, vfB3, vcB1, vcB2, vcB3, vlIn, vfIl, ifIl, ufIl, ffIl, cfIl,  ;
        vfFr, ifFr
 PUBLIC ufFr, ffFr, cfFr, vfFt, ifFt, ufFt, ffFt, cfFt, vfFu, ifFu, ufFu,  ;
        ffFu, cfFu
 PUBLIC vfFv, ifFv, ufFv, ffFv, cfFv, vfFw, ifFw, ufFw, ffFw, cfFw, vfFx,  ;
        ifFx, ufFx
 PUBLIC ffFx, cfFx, vtPo, itPo, utPo, xtPo, ctPo, vnTp, inTp, unTp, cnTp,  ;
        voP1, ioP1
 PUBLIC uoP1, voP2, ioP2, uoP2, voP3, ioP3, uoP3, voP4, ioP4, uoP4, voP5,  ;
        ioP5, uoP5
 PUBLIC voP6, ioP6, uoP6, voP7, ioP7, uoP7, vcDg, icDg, ucDg, ccDg, vdCc,  ;
        idCc, udCc
 PUBLIC cdCc, vdC1, idC1, udC1, cdC1, vdC2, idC2, udC2, cdC2, vdC3, idC3,  ;
        udC3, cdC3
 PUBLIC vdC4, idC4, udC4, cdC4, vdC5, idC5, udC5, cdC5, vdC6, idC6, udC6,  ;
        cdC6, vdC7
 PUBLIC idC7, udC7, cdC7, vrEc, irEc, urEc, frEc, crEc, xrEc, vcOd, ccOd,  ;
        xcOd, ccO1
 PUBLIC vtI1, vtI2, vtI3, vtI4, vtIp, xtIp, vcD1, ccD1, vdEs, xdEs, vdCr,  ;
        cdCr, xdCr
 PUBLIC xsTo, vcAn, ccAn, vpRe, cpRe, cpR1, vcUv, ccUv, vnUv, cnUv, xnUc,  ;
        vfOr, cfOr
 PUBLIC vnUm, vnU1, vnU2, vdSp, vtTt, vcAm, vfOt, cfOt, vnEm, vlEt, xdEt,  ;
        vsEr, vlAr
 PUBLIC xlAr, clAr, vlA1, xlA1, clA1, vlA2, xlA2, clA2, vlA3, xlA3, clA3,  ;
        vlA4, xlA4
 PUBLIC clA4, vlA5, xlA5, clA5, vlA6, xlA6, clA6, vlA7, xlA7, clA7, vlA8,  ;
        xlA8, clA8
 PUBLIC vlA9, xlA9, clA9, vaNc, xaNc, caNc, vaN1, xaN1, caN1, vaN2, xaN2,  ;
        caN2, vaN3
 PUBLIC xaN3, caN3, vaN4, xaN4, caN4, vaN5, xaN5, caN5, vaN6, xaN6, caN6,  ;
        vaN7, xaN7
 PUBLIC caN7, vaN8, xaN8, caN8, vaN9, xaN9, caN9, vaLt, xaLt, caLt, vaL1,  ;
        xaL1, caL1
 PUBLIC vaL2, xaL2, caL2, vaL3, xaL3, caL3, vaL4, xaL4, caL4, vaL5, xaL5,  ;
        caL5, vaL6
 PUBLIC xaL6, caL6, vaL7, xaL7, caL7, vaL8, xaL8, caL8, vaL9, xaL9, caL9,  ;
        veRr, icLn
 PUBLIC ucLn, vdIr
 PUBLIC vpAn_11, vpAn_let, vpAn_le1, vpAn_le2, vpAn_le3, vpAn_le4, vpAn_le5
 STORE 99 TO mkEy
 STORE 00 TO frEc, urEc, crEc, cfIl, vdSp
 STORE 01 TO irEc, vrEc, viOm, viTe, vsW0, vsW1
 STORE 01 TO xlAr, xlA1, xlA2, xlA3, xlA4, xlA5, xlA6, xlA7, xlA8, xlA9
 STORE 01 TO xaNc, xaN1, xaN2, xaN3, xaN4, xaN5, xaN6, xaN7, xaN8, xaN9
 STORE 01 TO xaLt, xaL1, xaL2, xaL3, xaL4, xaL5, xaL6, xaL7, xaL8, xaL9
 STORE SPACE(01) TO vtTt, vcAm
 STORE SPACE(08) TO vfOt
 STORE SPACE(80) TO vfOr
 STORE SPACE(120) TO vdEs
 STORE SPACE(mtMa) TO vcOd, ccOd
 STORE SPACE(10) TO vlAr, vlA1, vlA2, vlA3, vlA4, vlA5, vlA6, vlA7, vlA8, vlA9
 STORE SPACE(10) TO vaNc, vaN1, vaN2, vaN3, vaN4, vaN5, vaN6, vaN7, vaN8, vaN9
 STORE SPACE(10) TO vaLt, vaL1, vaL2, vaL3, vaL4, vaL5, vaL6, vaL7, vaL8, vaL9
 SET READBORDER ON
 DO p00_2920a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO coL_fondo
 @mMF2,mMC2    Say Space(120)                         Font "&mLetRom",9 Style "BQ" Size 1,114
 @mMF2,mMC2+41 Say "DIGITAR EL PRODUCTO PRINCIPAL..." Font "&mLetRom",9 Style "BQ"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2920a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2920a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F3 .AND. LEN(ALLTRIM(vcOd))=0
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4 .OR. mkEy=k_F8
                = INKEY(0.01)
                SELECT prOductos
                DO CASE
                     CASE mkEy=k_F2
                          STORE 2 TO vsWw
                          STORE 1 TO vsWr
                          DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     CASE mkEy=k_F3
                          STORE 2 TO vsWw
                          STORE 2 TO vsWr
                          DO prEsiona WITH "2", "BUSCAR", vfB2, vcB2
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     CASE mkEy=k_F4
                          STORE 1 TO vsWw
                          STORE 1 TO vsWr
                     CASE mkEy=k_F8
                          STORE 2 TO vsWw
                          STORE 3 TO vsWr
                ENDCASE
                SAVE SCREEN TO vpAn_11
                DO paC2111w WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE vcDg TO vcOd
                     @mFI0+1,mCO0+12.1 Say vCOD Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S19"
                ENDIF
           CASE mkEy=k_F6
                = INKEY(0.01)
                SELECT tiP_prod
                SET FILTER TO LEN(ALLTRIM(f9211let))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Codificación Nemotécnica registrada..."  ;
                           TO mmSj
                ELSE
                     STORE "" TO voP1, voP2, voP3, voP4, voP5, voP6, voP7
                     STORE "" TO vdC1, vdC2, vdC3, vdC4, vdC5, vdC6, vdC7
                     STORE 01 TO meRr
                     DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 00 TO meRr
                     SAVE SCREEN TO vpAn_let
                     DO puC9211w WITH "7"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     RESTORE SCREEN FROM vpAn_let
                     SELECT tiP_prod
                     SET FILTER TO
                     DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy=k_Enter
                          STORE ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ ;
                                ALLTRIM(voP3)+ALLTRIM(voP4)+ALLTRIM(voP5)+ ;
                                ALLTRIM(voP6)+ALLTRIM(voP7) TO vcOd
                          @mFI0+1,mCO0+12.1 Say vCOD Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S19"
                     ENDIF
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2920a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2920a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end .OR. mkEy= ;
                k_Ctrl_left .OR. mkEy=k_Up
                STORE "Estás en el único campo...    " TO mmSj
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down .OR.  ;
                mkEy=k_Tab
                DO veR_2920a
                IF mkEy<>99
                     DO deT_2920a
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
      DO coLbln
      STORE k_Enter TO mkEy
      @mFI0+1,mCO0+12.1 Edit vCOD Font "&mLetAri",9 Style "NQ" Size 1,16,mTMA
      SET CURSOR ON
      READ
      SET CURSOR OFF
      STORE UPPER(vcOd) TO vcOd
      @mFI0+1,mCO0+12.1 Say  vCOD Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S19"
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_2920a
 DO CASE
      CASE LEN(ALLTRIM(vcOd))=0
           STORE "Código de Producto no puede estar vacío..." TO mmSj
      OTHERWISE
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           DO CASE
                CASE EOF()
                     STORE "Código de Producto no registrado..." TO mmSj
                CASE ALLTRIM(vcOd)+"*"<>ALLTRIM(ccOd)+"*"
                     DO coL_fondo
                     STORE f2111des TO vdEs
                     STORE f2111ser TO vsEr
                     STORE f2111tip TO vtIp
                     STORE f2111fot TO vfOt
                     @mFI0+1,mCO0+31.1 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,84 Pict "@S87"
                     SELECT tiP_prod
                     SEEK vtIp
                     IF EOF() .OR. f9211tpo<>10
                          STORE "Código de Producto no es Conjunto..." TO mmSj
                     ELSE
                          SELECT caB_conjuntos
                          SEEK ALLTRIM(vcOd)+"*"
                          IF EOF()
                               STORE "N" TO moPc
                               SELECT teMporal
                               GOTO TOP
                               IF  .NOT. BOF()
                                    DO prE_docum WITH  ;
                                       "¨Desea Copiar el Variables y Detalle Anterior en este nuevo Codigo?"
                               ENDIF
                               IF moPc$"Nn"
                                    SELECT teMporal
                                    ZAP
                                    STORE SPACE(10) TO vlAr, vlA1, vlA2,  ;
                                     vlA3, vlA4, vlA5, vlA6, vlA7, vlA8, vlA9
                                    STORE SPACE(10) TO vaNc, vaN1, vaN2,  ;
                                     vaN3, vaN4, vaN5, vaN6, vaN7, vaN8, vaN9
                                    STORE SPACE(10) TO vaLt, vaL1, vaL2,  ;
                                     vaL3, vaL4, vaL5, vaL6, vaL7, vaL8, vaL9
                               ENDIF
                          ELSE
                               SELECT teMporal
                               ZAP
                               SELECT caB_conjuntos
                               STORE f2920lar TO vlAr
                               STORE f2920la1 TO vlA1
                               STORE f2920la2 TO vlA2
                               STORE f2920la3 TO vlA3
                               STORE f2920la4 TO vlA4
                               STORE f2920la5 TO vlA5
                               STORE f2920la6 TO vlA6
                               STORE f2920la7 TO vlA7
                               STORE f2920la8 TO vlA8
                               STORE f2920la9 TO vlA9
                               STORE f2920anc TO vaNc
                               STORE f2920an1 TO vaN1
                               STORE f2920an2 TO vaN2
                               STORE f2920an3 TO vaN3
                               STORE f2920an4 TO vaN4
                               STORE f2920an5 TO vaN5
                               STORE f2920an6 TO vaN6
                               STORE f2920an7 TO vaN7
                               STORE f2920an8 TO vaN8
                               STORE f2920an9 TO vaN9
                               STORE f2920alt TO vaLt
                               STORE f2920al1 TO vaL1
                               STORE f2920al2 TO vaL2
                               STORE f2920al3 TO vaL3
                               STORE f2920al4 TO vaL4
                               STORE f2920al5 TO vaL5
                               STORE f2920al6 TO vaL6
                               STORE f2920al7 TO vaL7
                               STORE f2920al8 TO vaL8
                               STORE f2920al9 TO vaL9
                               SELECT deT_conjuntos
                               SEEK UPPER(ALLTRIM(vcOd))+"*"
                               STORE 00 TO frEc
                               DO WHILE  .NOT. EOF() .AND.  ;
                                  ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
                                    STORE f2921cdg TO vcD1
                                    STORE f2921dcr TO vdCr
                                    STORE f2921cuv TO vcUv
                                    STORE f2921nuv TO vnUv
                                    STORE f2921can TO vcAn
                                    STORE f2921for TO vfOr
                                    STORE f2921dsp TO vdSp
                                    STORE f2921ttt TO vtTt
                                    STORE f2921cam TO vcAm
                                    SELECT prOductos
                                    SEEK UPPER(ALLTRIM(vcD1))+"*"
                                    IF mmOn=1
                                         STORE f2111vv1 TO vpRe
                                    ELSE
                                         STORE f2111vv2 TO vpRe
                                    ENDIF
                                    SELECT teMporal
                                    APPEND BLANK
                                    REPLACE ftM1cod WITH vcD1
                                    REPLACE ftM1des WITH vdCr
                                    REPLACE ftM1cuv WITH vcUv
                                    REPLACE ftM1nuv WITH vnUv
                                    REPLACE ftM1can WITH vcAn
                                    REPLACE ftM1for WITH vfOr
                                    REPLACE ftM1pre WITH vpRe
                                    REPLACE ftM1dsp WITH vdSp
                                    REPLACE ftM1ttt WITH vtTt
                                    REPLACE ftM1cam WITH vcAm
                                    STORE RECNO() TO frEc
                                    SELECT deT_conjuntos
                                    SKIP
                               ENDDO
                          ENDIF
                          SELECT teMporal
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               STORE RECNO() TO vrEc
                               STORE ftM1for TO vfOr
                               DO trA_2920b IN PAM2920B
                               SELECT teMporal
                               GOTO vrEc
                               REPLACE ftM1err WITH veRr
                               SKIP
                          ENDDO
                          DO p02_2920a
                          READ TIMEOUT 0.01
                          SELECT teMporal
                          GOTO TOP
                          DO paN_2920b IN PAM2920B
                          GOTO TOP
                          STORE ifIl TO vfIl
                          STORE 1 TO vrEc, irEc
                     ENDIF
           ENDCASE
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Det_2920a
 DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO q1_0000a
 DO p2_0000a
 DO paM2920b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 DO p1_0000a
 SET READBORDER ON
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @mMF2,mMC2    Say Space(120)                         Font "&mLetRom",9 Style "BQ" Size 1,114
 @mMF2,mMC2+41 Say "DIGITAR EL PRODUCTO PRINCIPAL..." Font "&mLetRom",9 Style "BQ"
 IF mkEy=k_Tab
      DO grA_2920a
      STORE 99 TO mkEy
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Gra_2920a
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT caB_conjuntos
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT deT_conjuntos
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
      STORE f2921cdg TO vcD1
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vcD1)+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vcD1)+"*"
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 DO WHILE .T.
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           EXIT
      ENDIF
      STORE f2921cdg TO vcD1
      REPLACE f2921cod WITH SPACE(mtMa)
      REPLACE f2921cdg WITH SPACE(mtMa)
      DELETE
      UNLOCK
 ENDDO
 SELECT teMporal
 GOTO TOP
 IF BOF()
      SELECT caB_conjuntos
      REPLACE f2920cod WITH SPACE(mtMa)
      DELETE
      UNLOCK
 ELSE
      SELECT caB_conjuntos
      IF EOF()
           DO nuEvo_rg
           REPLACE f2920cod WITH vcOd
           REPLACE f2920des WITH vdEs
      ENDIF
      REPLACE f2920lar WITH vlAr
      REPLACE f2920la1 WITH vlA1
      REPLACE f2920la2 WITH vlA2
      REPLACE f2920la3 WITH vlA3
      REPLACE f2920la4 WITH vlA4
      REPLACE f2920la5 WITH vlA5
      REPLACE f2920la6 WITH vlA6
      REPLACE f2920la7 WITH vlA7
      REPLACE f2920la8 WITH vlA8
      REPLACE f2920la9 WITH vlA9
      REPLACE f2920anc WITH vaNc
      REPLACE f2920an1 WITH vaN1
      REPLACE f2920an2 WITH vaN2
      REPLACE f2920an3 WITH vaN3
      REPLACE f2920an4 WITH vaN4
      REPLACE f2920an5 WITH vaN5
      REPLACE f2920an6 WITH vaN6
      REPLACE f2920an7 WITH vaN7
      REPLACE f2920an8 WITH vaN8
      REPLACE f2920an9 WITH vaN9
      REPLACE f2920alt WITH vaLt
      REPLACE f2920al1 WITH vaL1
      REPLACE f2920al2 WITH vaL2
      REPLACE f2920al3 WITH vaL3
      REPLACE f2920al4 WITH vaL4
      REPLACE f2920al5 WITH vaL5
      REPLACE f2920al6 WITH vaL6
      REPLACE f2920al7 WITH vaL7
      REPLACE f2920al8 WITH vaL8
      REPLACE f2920al9 WITH vaL9
      UNLOCK
      SELECT teMporal
      STORE 00 TO vrEc
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcD1
           STORE ftM1des TO vdCr
           STORE ftM1cuv TO vcUv
           STORE ftM1nuv TO vnUv
           STORE ftM1can TO vcAn
           STORE ftM1for TO vfOr
           STORE ftM1dsp TO vdSp
           STORE ftM1ttt TO vtTt
           STORE ftM1cam TO vcAm
           STORE vrEc+1 TO vrEc
           SELECT deT_conjuntos
           DO nuEvo_rg
           REPLACE f2921cod WITH vcOd
           REPLACE f2921cdg WITH vcD1
           REPLACE f2921dcr WITH vdCr
           REPLACE f2921cuv WITH vcUv
           REPLACE f2921nuv WITH vnUv
           REPLACE f2921can WITH vcAn
           REPLACE f2921for WITH vfOr
           REPLACE f2921dsp WITH vdSp
           REPLACE f2921ttt WITH vtTt
           REPLACE f2921cam WITH vcAm
           UNLOCK
           SELECT teMporal
           SKIP
      ENDDO
 ENDIF
 SELECT teMporal
 ZAP
 REINDEX
 UNLOCK ALL
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm, viTe
 STORE 00 TO frEc, urEc, crEc, cfIl
 STORE SPACE(mtMa) TO ccOd
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2920a WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Lin_2920a
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+04.8 TO pfIn, mcO0+04.8
 @ piNi, mcO0+29.4 TO pfIn, mcO0+29.4
 DO CASE
      CASE vsW0=1
           @ piNi, mcO0+114.8 TO pfIn, mcO0+114.8
           @ piNi, mcO0+133.1 TO pfIn, mcO0+133.1
      CASE vsW0=2
           @ piNi, mcO0+070.3 TO pfIn, mcO0+070.3
           @ piNi, mcO0+080.2 TO pfIn, mcO0+080.2
           @ piNi, mcO0+101.2 TO pfIn, mcO0+101.2
           @ piNi, mcO0+141.6 TO pfIn, mcO0+141.6
 ENDCASE
 @ piNi, ucLn-4.7 TO pfIn, ucLn-4.7
ENDPROC
*
PROCEDURE P02_2920a
 DO coL_fondo
 IF vsW0<>1
      @fFIL+5.5,vCO0+0.2 Say "Variables:" Font "&mLetAri",9 Style "BT"
 ENDIF
 DO CASE
      CASE vsW0=1
           @ ffIl+5.5, vcO0 CLEAR TO ffIl+11.1, vcO0+vuCo-1
      CASE vsW1=1
           @fFIL+6.9,vCO0+000.1 Say "LAR:  "   Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+007.5 Edit vLAR      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+000.1 Say "ANC:  "   Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+007.5 Edit vANC      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+000.1 Say "ALT:  "   Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+007.5 Edit vALT      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+6.9,vCO0+024.1 Say "LAR1:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+031.5 Edit vLA1      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+024.1 Say "ANC1:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+031.5 Edit vAN1      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+024.1 Say "ALT1:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+031.5 Edit vAL1      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+6.9,vCO0+048.1 Say "LAR2:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+055.5 Edit vLA2      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+048.1 Say "ANC2:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+055.5 Edit vAN2      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+048.1 Say "ALT2:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+055.5 Edit vAL2      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+6.9,vCO0+072.1 Say "LAR3:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+079.5 Edit vLA3      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+072.1 Say "ANC3:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+079.5 Edit vAN3      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+072.1 Say "ALT3:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+079.5 Edit vAL3      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+6.9,vCO0+096.1 Say "LAR4:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+103.5 Edit vLA4      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+096.1 Say "ANC4:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+103.5 Edit vAN4      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+096.1 Say "ALT4:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+103.5 Edit vAL4      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+6.9,vCO0+120.1 Say "LAR5:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+127.5 Edit vLA5      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+120.1 Say "ANC5:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+127.5 Edit vAN5      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+120.1 Say "ALT5:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+127.5 Edit vAL5      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+6.9,vCO0+144.1 Say "LAR6:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+151.5 Edit vLA6      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+144.1 Say "ANC6:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+151.5 Edit vAN6      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+144.1 Say "ALT6:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+151.5 Edit vAL6      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+6.9,vCO0+168.1 Say "LAR7:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+175.5 Edit vLA7      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+168.1 Say "ANC7:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+175.5 Edit vAN7      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+168.1 Say "ALT7:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+175.5 Edit vAL7      Font "&mLetAri",9 Style "NQ" Size 1,14,10
      CASE vsW1=2
           @ ffIl+5.6, vcO0+045 CLEAR TO ffIl+11.1, vcO0+vuCo-1
           @fFIL+6.9,vCO0+000.1 Say "LAR8:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+007.5 Edit vLA8      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+000.1 Say "ANC8:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+007.5 Edit vAN8      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+000.1 Say "ALT8:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+007.5 Edit vAL8      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+6.9,vCO0+024.1 Say "LAR9:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+6.9,vCO0+031.5 Edit vLA9      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+8.4,vCO0+024.1 Say "ANC9:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+8.4,vCO0+031.5 Edit vAN9      Font "&mLetAri",9 Style "NQ" Size 1,14,10
           @fFIL+9.9,vCO0+024.1 Say "ALT9:"    Font "&mLetAri",9 Style "NQ"
           @fFIL+9.9,vCO0+031.5 Edit vAL9      Font "&mLetAri",9 Style "NQ" Size 1,14,10
 ENDCASE
ENDPROC
*
PROCEDURE P00_2920a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE irEc TO vrEc
 STORE 42 TO muFi
 STORE 126 TO muCo, vuCo
 STORE (mwCo-muCo)/2 TO mmC2
 STORE muCo+28 TO muCo
 STORE vuCo+68 TO vuCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, icLn, vcL0
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE mcO0+muCo TO ucLn
 STORE mfI0+05 TO ifIl, ufIl, vfIl
 STORE ifIl+28 TO ffIl
 STORE mfI0+04 TO ifFr, ufFr, vfFr
 STORE ifFr+33 TO ffFr
 STORE mfI0+05 TO ifFt, ufFt, vfFt
 STORE ifFt+15 TO ffFt
 STORE mfI0+06 TO ifFu, ufFu, vfFu
 STORE ifFu+14 TO ffFu
 STORE mfI0+07 TO ifFv, ufFv, vfFv
 STORE ifFv+13 TO ffFv
 STORE mfI0+08 TO ifFw, ufFw, vfFw
 STORE ifFw+12 TO ffFw
 STORE mfI0+09 TO ifFx, ufFx, vfFx
 STORE ifFx+11 TO ffFx
 STORE vcL0-06 TO vcL0
 STORE ffIl+3.5 TO mmF2
 STORE mfI0+000.90 TO vfB1
 STORE mfI0+000.90 TO vfB2
 STORE ifIl-001.85 TO vfB3
 STORE mcO0+115.80 TO vcB1
 STORE mcO0+119.80 TO vcB2
 STORE mcO0+065.00 TO vcB3
 DO tiT_0000a WITH "Conjunto de Productos"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "DIBUJO", mmF1, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mfI0, icLn, mfI0+3, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH ffIl+5.6, vcO0, ffIl+11, vcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 @ mfI0+0.4, mcO0+1.1 TO mfI0+2.6, mcO0+124.7 PATTERN 1
 @ mfI0+0.4, mcO0+1.1 TO mfI0+0.4, mcO0+124.7 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.4, mcO0+1.1 TO mfI0+2.6, mcO0+001.1 COLOR RGB(128,128,128,0,0,0)
 @mFI0+1.0,mCO0+02.1 Say "Código:"    Font "&mLetAri",9 Style "BT"
 @mFI0+1.0,mCO0+31.1 Edit vDES        Font "&mLetAri",9 Style "NQ" Size 1,84,120
 DO coLbln
 @mFI0+1.0,mCO0+12.1 Edit vCOD        Font "&mLetAri",9 Style "NQ" Size 1,16,mTMA
 READ TIMEOUT 0.01
 DO p01_2920a
 DO p02_2920a
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      GOTO irEc
      DO paN_2920b IN PAM2920B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO irEc
      STORE ifIl TO vfIl
      STORE irEc TO vrEc
 ENDIF
ENDPROC
*
PROCEDURE P01_2920a
 DO coL_fondo
 DO cuAdro WITH ifIl-1.2, icLn, ffIl+2.6, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifIl-1.4, icLn-0.2 TO ifIl-0.2, ucLn PATTERN 1
 @ ffIl+1.2, icLn-0.2 TO ffIl+2.6, ucLn PATTERN 1
 @iFIL-1.3,mCO0+00.5 Say "Ítem"                      Font "&mLetAri",8 Style "NQ"
 @iFIL-1.3,mCO0+12.0 Say "Código"                    Font "&mLetAri",9 Style "NQ"
 @iFIL-1.3,mCO0+30.0 Say "Descripción"               Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE vsW0=1
           @iFIL-1.3,mCO0+119.5 Say "Unidad"           Font "&mLetAri",9 Style "NQ"
           @iFIL-1.3,mCO0+136.1 Say "Cantidad"         Font "&mLetAri",9 Style "NQ"
      CASE vsW0=2
           @iFIL-1.3,mCO0+071.5 Say "Unidad"           Font "&mLetAri",9 Style "NQ"
           @iFIL-1.3,mCO0+080.8 Say "Comp.Modificable" Font "&mLetAri",9 Style "NQ"
           @iFIL-1.3,mCO0+113.9 Say "Fórmula"          Font "&mLetAri",9 Style "NQ"
           @iFIL-1.3,mCO0+142.8 Say "%De"              Font "&mLetAri",9 Style "NQ"
 ENDCASE
 DO liN_2920a WITH ifIl-1.3, ffIl+1.2
ENDPROC
*
PROCEDURE Clp_2920a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
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
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           STORE k_F3 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2920a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En este programa, se arman los Conjuntos de Productos. El Producto Prin-"
 @ pfIl+01, 01 SAY  ;
   "cipal es el que se encuentra en la Cabecera y los componentes en el Deta-"
 @ pfIl+02, 01 SAY "lle."
 @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 24 SAY ":" STYLE "BT"
 @ pfIl+07, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+12, 24 SAY ":" STYLE "BT"
 @ pfIl+13, 24 SAY ":" STYLE "BT"
 @ pfIl+14, 24 SAY ":" STYLE "BT"
 @ pfIl+06, 06 SAY "F10" STYLE "BT"
 @ pfIl+07, 06 SAY "ESC" STYLE "BT"
 @ pfIl+08, 06 SAY "F1" STYLE "BT"
 @ pfIl+09, 06 SAY "F2" STYLE "BT"
 @ pfIl+10, 06 SAY "F3" STYLE "BT"
 @ pfIl+11, 06 SAY "F4" STYLE "BT"
 @ pfIl+12, 06 SAY "F6" STYLE "BT"
 @ pfIl+13, 06 SAY "F8" STYLE "BT"
 @ pfIl+14, 06 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+15, 06 SAY "FLECHA ABAJO," STYLE "BT"
 @ pfIl+16, 06 SAY "TAB, CTRL -->" STYLE "BT"
 @ pfIl+06, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 26 SAY "Regresar al Menú Principal"
 @ pfIl+08, 26 SAY "Ayuda del Programa"
 @ pfIl+09, 26 SAY "Consultar Productos alfabéticamente"
 @ pfIl+10, 26 SAY "Buscar palabra o frase y consultar"
 @ pfIl+11, 26 SAY "Consultar Productos x Código"
 @ pfIl+12, 26 SAY "Codificación Nemotécnica"
 @ pfIl+13, 26 SAY "Consultar sólo Conjuntos alfabéticamente"
 @ pfIl+14, 26 SAY "Pasar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1
 RELEASE viTe, ckEy, viOm, vsW0, vsW1, vsW2, vsWw, csWw, vsWr, vcO0, vuCo,  ;
         vcL0, vfB1
 RELEASE vfB2, vfB3, vcB1, vcB2, vcB3, vlIn, vfIl, ifIl, ufIl, ffIl, cfIl,  ;
         vfFr, ifFr
 RELEASE ufFr, ffFr, cfFr, vfFt, ifFt, ufFt, ffFt, cfFt, vfFu, ifFu, ufFu,  ;
         ffFu, cfFu
 RELEASE vfFv, ifFv, ufFv, ffFv, cfFv, vfFw, ifFw, ufFw, ffFw, cfFw, vfFx,  ;
         ifFx, ufFx
 RELEASE ffFx, cfFx, vtPo, itPo, utPo, xtPo, ctPo, vnTp, inTp, unTp, cnTp,  ;
         voP1, ioP1
 RELEASE uoP1, voP2, ioP2, uoP2, voP3, ioP3, uoP3, voP4, ioP4, uoP4, voP5,  ;
         ioP5, uoP5
 RELEASE voP6, ioP6, uoP6, voP7, ioP7, uoP7, vcDg, icDg, ucDg, ccDg, vdCc,  ;
         idCc, udCc
 RELEASE cdCc, vdC1, idC1, udC1, cdC1, vdC2, idC2, udC2, cdC2, vdC3, idC3,  ;
         udC3, cdC3
 RELEASE vdC4, idC4, udC4, cdC4, vdC5, idC5, udC5, cdC5, vdC6, idC6, udC6,  ;
         cdC6, vdC7
 RELEASE idC7, udC7, cdC7, vrEc, irEc, urEc, frEc, crEc, xrEc, vcOd, ccOd,  ;
         xcOd, ccO1
 RELEASE vtI1, vtI2, vtI3, vtI4, vtIp, xtIp, vcD1, ccD1, vdEs, xdEs, vdCr,  ;
         cdCr, xdCr
 RELEASE xsTo, vcAn, ccAn, vpRe, cpRe, cpR1, vcUv, ccUv, vnUv, cnUv, xnUc,  ;
         vfOr, cfOr
 RELEASE vnUm, vnU1, vnU2, vdSp, vtTt, vcAm, vfOt, cfOt, vnEm, vlEt, xdEt,  ;
         vsEr, vlAr
 RELEASE xlAr, clAr, vlA1, xlA1, clA1, vlA2, xlA2, clA2, vlA3, xlA3, clA3,  ;
         vlA4, xlA4
 RELEASE clA4, vlA5, xlA5, clA5, vlA6, xlA6, clA6, vlA7, xlA7, clA7, vlA8,  ;
         xlA8, clA8
 RELEASE vlA9, xlA9, clA9, vaNc, xaNc, caNc, vaN1, xaN1, caN1, vaN2, xaN2,  ;
         caN2, vaN3
 RELEASE xaN3, caN3, vaN4, xaN4, caN4, vaN5, xaN5, caN5, vaN6, xaN6, caN6,  ;
         vaN7, xaN7
 RELEASE caN7, vaN8, xaN8, caN8, vaN9, xaN9, caN9, vaLt, xaLt, caLt, vaL1,  ;
         xaL1, caL1
 RELEASE vaL2, xaL2, caL2, vaL3, xaL3, caL3, vaL4, xaL4, caL4, vaL5, xaL5,  ;
         caL5, vaL6
 RELEASE xaL6, caL6, vaL7, xaL7, caL7, vaL8, xaL8, caL8, vaL9, xaL9, caL9,  ;
         veRr, icLn
 RELEASE ucLn, vdIr
 RELEASE vpAn_11, vpAn_let, vpAn_le1, vpAn_le2, vpAn_le3, vpAn_le4, vpAn_le5
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
 DO deL_file2 WITH "1", "S"
 RELEASE ntM1
ENDPROC
*
