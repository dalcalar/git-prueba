 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO taB_remision IN PUX0002A
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
 INDEX ON f2600tdo+f2600ser+f2600doc TAG f2600doc
 INDEX ON UPPER(f2600nom)+f2600tdo+f2600ser+f2600doc TAG f2600nom
 INDEX ON SUBSTR(DTOC(f2600fem), 7, 4)+SUBSTR(DTOC(f2600fem), 4, 2)+ ;
       SUBSTR(DTOC(f2600fem), 1, 2)+f2600tdo+f2600ser+f2600doc TAG f2600fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[1, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
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
           DO deL_file2 WITH "1", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM2cod)+"*" TAG ftM2cod
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Guías de Remisión no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2601DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2602", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2602DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2603", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2603DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2604", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Con_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2604DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "2402", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2402DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "2403", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2403DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
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
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2112", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "2118", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pro_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2118COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sto_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "2991", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex_Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 17
 DO abR_0000a IN PUX0000A WITH "1201", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1201COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "1204", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Con_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1204CDG
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Clientes vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 21
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
 SELECT 22
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
 SELECT 23
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
      STORE "Archivo Utilitario de Tipos de Productos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "9214", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Almacen
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9214COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 25
 DO abR_0000a IN PUX0000A WITH "9216", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Grupos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9216COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 26
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 27
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsXx, vpAl, cpAl, vuFi,  ;
        vuCo, vfI0
 PUBLIC vcO0, ccO0, vcO1, vlIn, vpAg, icLn, ucLn, vcLn, icL1, ucL1, vfIl,  ;
        ifIl, ufIl
 PUBLIC cfIl, ffIl, vfFs, ifFs, ufFs, cfFs, ffFs, vfFr, ifFr, ufFr, cfFr,  ;
        ffFr, vfB1
 PUBLIC vfB2, vfB3, vfB4, vfB5, vfB6, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6,  ;
        vrEc, irEc
 PUBLIC urEc, crEc, vrCc, irCc, urCc, vpEd, xpEd, ipEd, upEd, cpEd, vsEc,  ;
        isEc, usEc
 PUBLIC csEc, vtDo, itDo, utDo, xtDo, ctDo, vsEr, isEr, usEr, xsEr, csEr,  ;
        vdOc, idOc
 PUBLIC udOc, xdOc, cdOc, vnOm, inOm, unOm, xnOm, cnOm, vfEm, ifEm, ufEm,  ;
        xfEm, cfEm
 PUBLIC xtIt, xnTt, xcLi, xsUc, xdIr, xdIs, xdEp, xrUc, xdNi, xtEl, xlUg,  ;
        xlUd, xlUp
 PUBLIC xaLm, xtRa, xtNo, xtDi, xtDs, xtDp, xtRu, xcIm, xtD1, xsR1, xdO1,  ;
        xfFa, xsRp
 PUBLIC xpEd, xmOt, cmOt, vmOt, xcSt, ccSt, xcR1, xmR1, xpLa, vpLa, tpLa,  ;
        xcR2, xmR2
 PUBLIC xpL2, xcC1, xcHo, xlC1, xcC2, xcH2, xlC2, xpEs, xcM1, xcM2, xcPs,  ;
        ccPs, xcPn
 PUBLIC ccPn, xeSt, ceSt, xuSu, xdAt, xtIm, xnAl, xaDi, xaDs, xaDp, vcOd,  ;
        ccOd, vcDg
 PUBLIC icDg, ucDg, ccDg, vtB1, vtB2, vtPo, ctPo, vaLm, vaDi, vaDs, clAr,  ;
        caNc, vcTd
 PUBLIC xcTd, vcAn, tcAn, ccAn, ctP1, ctI1, ctPp, caNo, xaNo, cmEs, xmEs,  ;
        cdIa, xdIa
 PUBLIC vcAj, vsLd, vsLc, vpD1, cdCr, vmD3, vpDi, vpDs, vpPr, vpDp, vpEs,  ;
        veNt, vsRr
 PUBLIC tcO1, tcO2, tpEs, vdEs, vnUv, vpIe, xpIe, xoPc, xmLa, xmAn, xuN1,  ;
        xuN2, xp11
 PUBLIC xp12, xp21, xp22, xcA1, xcA2, xcA3, xcA4, xpOr, xcMm, xcMp, vlA1, vaN1
 PUBLIC vpAn_11, vpAn_12, vpAn_13, vpAn_99
 STORE CTOD("  /  /    ") TO ifEm, ufEm
 STORE msEr(04) TO isEr, usEr
 STORE "GR" TO itDo, utDo
 STORE SPACE(07) TO idOc, udOc
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 STORE 01 TO vsW0, csW0, vsW1, csW1, vsW2, vsW3
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SELECT caB_remi
 SET NEAR ON
 SEEK "GR"+isEr+"ZZ"
 SET NEAR OFF
 IF EOF() .OR. f2600tdo+f2600ser<>"GR"+isEr
      IF EOF()
           GOTO BOTTOM
      ELSE
           SKIP -1
      ENDIF
 ENDIF
 STORE f2600tdo TO vtDo
 STORE f2600ser TO vsEr
 STORE f2600doc TO vdOc
 STORE f2600fem TO vfEm
 SET READBORDER ON
 DO p00_2600a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2600a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2600a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2600a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                ENDCASE
           CASE mkEy=k_F7
                DO tpO_2600a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_2600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE wtPo="1"
                          DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                     CASE wtPo="2"
                          DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
                     CASE wtPo="3"
                          DO prEsiona WITH "4", "R_CONS12", mmF1, mmC1
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO paC2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coL_boton
                @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      IF vsW0=1
           STORE VAL(vdOc) TO vdOc
      ENDIF
      DO geT_2600a
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF vsW0=1
           DO coLbln
           vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
           @iFIL-4,mCO0+23.5 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "9999999"
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_2600a
 DO rs2_2600a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2600a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_2600a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.8
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl2_2600a
           CASE mkEy=k_F12
                DO rs1_2600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_2600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl, vtIp, vnTi
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caB_remi
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2600nom)))<>0
                          DO muE_2600a
                          DO grA_2600a
                          SELECT caB_remi
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 2 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Op1_2600a
 PARAMETER ptPo
 STORE 1 TO vsW1
 SELECT teMporal
 ZAP
 REINDEX
 SELECT caB_remi
 GOTO TOP
 DO coLsc3
 DO WHILE  .NOT. EOF()
      @iFIL,mCO0+72.1 Say F2600TDO+":"+F2600SER+"-"+F2600DOC Font "&mLetAri",9 Style "NQ" Size 1,19.1
      IF f2600mot=vtIp
           DO CASE
                CASE vsW1=1
                     DO muE_2600a
                     DO grA_2600a
                CASE vsW1=2 .AND. AT(UPPER(ALLTRIM(vpAl)),  ;
                     UPPER(ALLTRIM(f2600nom)))<>0
                     DO muE_2600a
                     DO grA_2600a
           ENDCASE
      ENDIF
      SELECT caB_remi
      SKIP
 ENDDO
 DO coLsc1
 @iFIL,mCO0+72.1 Say Space(20) Font "&mLetAri",9 Style "NQ" Size 1,19.1
 SELECT teMporal
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Palabra no encontrada..." TO mmSj
      STORE SPACE(70) TO vpAl, vtIp, vnTi
      STORE 1 TO vsW1
      DO poNmsj
 ELSE
      STORE 2 TO vsW1
 ENDIF
 DO CASE
      CASE ptPo="1"
           STORE SPACE(07) TO vdOc
           STORE vsW1 TO csW1
           STORE 00 TO csW0
      CASE ptPo="2"
           DO CASE
                CASE vsW1=1
                     SELECT caB_remi
                CASE vsW1=2
                     SELECT teMporal
           ENDCASE
           DO orD_2600b IN PAC2600B
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 00 TO meRr
           GOTO TOP
           DO paN_2600b IN PAC2600B
           DO muE_2600b IN PAC2600B WITH "i", "v"
           STORE vsW1 TO csW1
           STORE ifIl TO vfIl
 ENDCASE
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say AllTrim(vNTI)+" "+vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_2600a
 STORE f2600tdo TO xtDo
 STORE f2600ser TO xsEr
 STORE f2600doc TO xdOc
 STORE f2600tit TO xtIt
 STORE f2600cli TO xcLi
 STORE f2600suc TO xsUc
 STORE f2600nom TO xnOm
 STORE f2600dir TO xdIr
 STORE f2600dis TO xdIs
 STORE f2600dep TO xdEp
 STORE f2600ruc TO xrUc
 STORE f2600ele TO xdNi
 STORE f2600tel TO xtEl
 STORE f2600lug TO xlUg
 STORE f2600lud TO xlUd
 STORE f2600lup TO xlUp
 STORE f2600fem TO xfEm
 STORE f2600alm TO xaLm
 STORE f2600tra TO xtRa
 STORE f2600tno TO xtNo
 STORE f2600tdi TO xtDi
 STORE f2600tds TO xtDs
 STORE f2600tdp TO xtDp
 STORE f2600tru TO xtRu
 STORE f2600cim TO xcIm
 STORE f2600td1 TO xtD1
 STORE f2600sr1 TO xsR1
 STORE f2600do1 TO xdO1
 STORE f2600ffa TO xfFa
 STORE f2600srp TO xsRp
 STORE f2600ped TO xpEd
 STORE f2600mot TO xmOt
 STORE f2600cst TO xcSt
 STORE f2600cr1 TO xcR1
 STORE f2600mr1 TO xmR1
 STORE f2600pla TO xpLa
 STORE f2600cr2 TO xcR2
 STORE f2600mr2 TO xmR2
 STORE f2600pl2 TO xpL2
 STORE f2600cc1 TO xcC1
 STORE f2600cho TO xcHo
 STORE f2600lc1 TO xlC1
 STORE f2600cc2 TO xcC2
 STORE f2600ch2 TO xcH2
 STORE f2600lc2 TO xlC2
 STORE f2600pes TO xpEs
 STORE f2600cm1 TO xcM1
 STORE f2600cm2 TO xcM2
 STORE f2600cps TO xcPs
 STORE f2600cpn TO xcPn
 STORE f2600est TO xeSt
 STORE f2600usu TO xuSu
 STORE f2600dat TO xdAt
 STORE f2600tim TO xtIm
ENDPROC
*
PROCEDURE Gra_2600a
 SELECT teMporal
 APPEND BLANK
 REPLACE f2600tdo WITH xtDo
 REPLACE f2600ser WITH xsEr
 REPLACE f2600doc WITH xdOc
 REPLACE f2600tit WITH xtIt
 REPLACE f2600cli WITH xcLi
 REPLACE f2600suc WITH xsUc
 REPLACE f2600nom WITH xnOm
 REPLACE f2600dir WITH xdIr
 REPLACE f2600dis WITH xdIs
 REPLACE f2600dep WITH xdEp
 REPLACE f2600ruc WITH xrUc
 REPLACE f2600ele WITH xdNi
 REPLACE f2600tel WITH xtEl
 REPLACE f2600lug WITH xlUg
 REPLACE f2600lud WITH xlUd
 REPLACE f2600lup WITH xlUp
 REPLACE f2600fem WITH xfEm
 REPLACE f2600alm WITH xaLm
 REPLACE f2600tra WITH xtRa
 REPLACE f2600tno WITH xtNo
 REPLACE f2600tdi WITH xtDi
 REPLACE f2600tds WITH xtDs
 REPLACE f2600tdp WITH xtDp
 REPLACE f2600tru WITH xtRu
 REPLACE f2600cim WITH xcIm
 REPLACE f2600td1 WITH xtD1
 REPLACE f2600sr1 WITH xsR1
 REPLACE f2600do1 WITH xdO1
 REPLACE f2600ffa WITH xfFa
 REPLACE f2600srp WITH xsRp
 REPLACE f2600ped WITH xpEd
 REPLACE f2600mot WITH xmOt
 REPLACE f2600cst WITH xcSt
 REPLACE f2600cr1 WITH xcR1
 REPLACE f2600mr1 WITH xmR1
 REPLACE f2600pla WITH xpLa
 REPLACE f2600cr2 WITH xcR2
 REPLACE f2600mr2 WITH xmR2
 REPLACE f2600pl2 WITH xpL2
 REPLACE f2600cc1 WITH xcC1
 REPLACE f2600cho WITH xcHo
 REPLACE f2600lc1 WITH xlC1
 REPLACE f2600cc2 WITH xcC2
 REPLACE f2600ch2 WITH xcH2
 REPLACE f2600lc2 WITH xlC2
 REPLACE f2600pes WITH xpEs
 REPLACE f2600cm1 WITH xcM1
 REPLACE f2600cm2 WITH xcM2
 REPLACE f2600cps WITH xcPs
 REPLACE f2600cpn WITH xcPn
 REPLACE f2600est WITH xeSt
 REPLACE f2600usu WITH xuSu
 REPLACE f2600dat WITH xdAt
 REPLACE f2600tim WITH xtIm
ENDPROC
*
PROCEDURE Lin_2600a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+021.0 TO pfIn, mcO0+021.0
 @ piNi, mcO0+026.2 TO pfIn, mcO0+026.2
 @ piNi, mcO0+106.6 TO pfIn, mcO0+106.6
 @ piNi, mcO0+120.2 TO pfIn, mcO0+120.2
 @ piNi, mcO0+146.2 TO pfIn, mcO0+146.2
 @ piNi, mcO0+175.7 TO pfIn, mcO0+175.7
 IF mrEs>"3"
      @ piNi, mcO0+200.5 TO pfIn, mcO0+200.5
 ENDIF
ENDPROC
*
PROCEDURE Li2_2600a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+004.0 TO pfIn, mcO0+004.0
 @ piNi, mcO0+010.2 TO pfIn, mcO0+010.2
ENDPROC
*
PROCEDURE Li3_2600a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+053.2 TO pfIn, mcO0+053.2
ENDPROC
*
PROCEDURE Get_2600a
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+16.0 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,4.5 Pict "!!!"     Color ,&mColBlN
           @iFIL-4,mCO0+23.5 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+14.0 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32  Pict "@S32"    Color ,&mColBlN
      CASE vsW0=3
           @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5               Color ,&mColBlN
 ENDCASE
ENDPROC
*
PROCEDURE P01_2600a
 STORE vfI0+21 TO ifFs, ufFs, vfFs
 STORE ifFs+18 TO ffFs
 IF vsW3=2
      STORE ifFs-14 TO ifFs
 ENDIF
ENDPROC
*
PROCEDURE P00_2600a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi, vuFi
 STORE INT(mwCo-4) TO muCo
 STORE INT(mwCo-2) TO vuCo
 DO maRcos
 DO maRcos2
 STORE mfI0+2 TO mfI0
 STORE (mwCo-100)/2 TO vcO1
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE ffIl+3 TO mmF2
 STORE vfI0+1.8 TO ifFr, ufFr, vfFr
 STORE ifFr+(INT(muFi)-5) TO ffFr
 STORE mcO0 TO icLn
 STORE vcO0 TO icL1
 STORE vcO0+201.8 TO ucL1
 STORE ifIl-1.2 TO vfB6
 STORE mcO0+176 TO vcB6
 DO CASE
      CASE mrEs="3"
           STORE muCo+2.4 TO ucLn
      CASE mrEs="4"
           STORE muCo+1.4 TO ucLn
      CASE mrEs="5"
           STORE muCo+1.7 TO ucLn
 ENDCASE
 DO p01_2600a
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Guías de Remisión"
      CASE wtPo="2"
           DO tiT_0000a WITH  ;
              "Anulación/Procesos Especiales de Guías de Remisión"
      CASE wtPo="3"
           DO tiT_0000a WITH "Eliminación de Guías de Remisión"
 ENDCASE
 SAVE SCREEN TO vpAn_99
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO liN_2600a WITH ifIl-0.2, ffIl+1
 DO li2_2600a WITH ifIl-0.2, ffIl+1
 DO li3_2600a WITH ifIl-1.3, ffIl+1
 DO liN_2600a WITH ifIl-1.3, ffIl-0.2
 DO coLblz
 @iFIL-1.2,mCO0+000.0  Say "Número"           Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+021.8  Say "Est"              Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+026.8  Say "Cliente"          Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+054.0  Say "Dirección"        Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+107.9  Say "F.Emisión"        Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+124.5  Say "Lugar-Entrega"    Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+151.7  Say "Transportista"    Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+178.4  Say "Tipo/Documento"   Font "&mLetAri",9 Style "BT"
 IF mrEs>"3"
      @iFIL-1.2,mCO0+201 Say "Punto de Partida" Font "&mLetAri",9 Style "BT"
 ENDIF
 Define Popup vTB1 from vFI0,mCO0+4 to fFFS+6,mCO0+165 Font "&mLetCou",12 Style "NQ" Prompt Field F1101NOM+" ["+F1101COD+"]" Scroll Color Scheme 1 Footer "CLIENTES TITULARES"
 Define Popup vTB2 from vFB6+1.1,vCB6-55 to fFIL+2,vCB6+15 Font "&mLetCou",11 Style "NQ" Color Scheme 3 Footer "TIPOS DE GUÍAS DE REMISIÓN"
 DEFINE BAR 1 OF vtB2 PROMPT " Ventas                               "
 DEFINE BAR 2 OF vtB2 PROMPT " Salida x Traslado                    "
 DEFINE BAR 3 OF vtB2 PROMPT " Ingreso x Traslado                   "
 DEFINE BAR 4 OF vtB2 PROMPT " Salida x Devolución                  "
 DEFINE BAR 5 OF vtB2 PROMPT " Salida x Consumo                     "
 DEFINE BAR 6 OF vtB2 PROMPT " Ingreso x Compra                     "
 DEFINE BAR 7 OF vtB2 PROMPT " Salida x Venta sujeta a Confirmación "
 DEFINE BAR 8 OF vtB2 PROMPT " Salida x Transformación              "
 DEFINE BAR 9 OF vtB2 PROMPT " Salida x Emisor Itinerante           "
 DEFINE BAR 10 OF vtB2 PROMPT " Salida x Traslado a Zona Primaria    "
 DEFINE BAR 11 OF vtB2 PROMPT " Salida x Consignación                "
 DEFINE BAR 12 OF vtB2 PROMPT " Ingreso x Recojo bienes transformados"
 DEFINE BAR 13 OF vtB2 PROMPT " Salida x Otros                       "
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO prEsiona WITH "1", "CONSU3", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO geT_2600a
 READ TIMEOUT 0.01
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,70 Pict "@S70"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Rs1_2600a
 DO p00_2600a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_2600b WITH "v", "c"
      DO CASE
           CASE vsW1=1
                SELECT caB_remi
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO seE_2600b IN PAC2600B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f2600tdo+f2600ser+f2600doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2600b WITH "v", "i"
           DO muE_2600b WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_2600b IN PAC2600B WITH "i"
      DO paN_2600b IN PAC2600B
      DO muE_2600b IN PAC2600B WITH "c", "v"
      DO seE_2600b IN PAC2600B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2600a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, mcO0+61 TO ifIl+4.0, mcO0+139.1 PATTERN 1 PEN 1
 @ ifIl+0.0, mcO0+60 TO ifIl+3.5, mcO0+138.0 PATTERN 1 PEN 3
 @iFIL+0.5,mCO0+61 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
ENDPROC
*
PROCEDURE Clp_2600a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB6-0.135 .AND. mfIl<=vfB6+1.7 .AND. mcCc>=vcB6-0.5  ;
           .AND. mcCc<=vcB6+1.9
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1+3.857 .AND. mfIl<=mmF1+7.071 .AND. mcCc>=mcO0+muCo- ;
           10 .AND. mcCc<=mcO0+muCo
           SAVE SCREEN TO vpAn_11
           DO jaL_2600a
           WAIT CLEAR
           STORE 99 TO mkEy
           RESTORE SCREEN FROM vpAn_11
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Tpo_2600a
 PARAMETER ptPo
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE BAR() TO vtIp
      DO CASE
           CASE vtIp=1
                STORE " Ventas                               " TO vnTi
           CASE vtIp=2
                STORE " Salida x Traslado                    " TO vnTi
           CASE vtIp=3
                STORE " Ingreso x Traslado                   " TO vnTi
           CASE vtIp=4
                STORE " Salida x Devolución                  " TO vnTi
           CASE vtIp=5
                STORE " Salida x Consumo                     " TO vnTi
           CASE vtIp=6
                STORE " Ingreso x Compra                     " TO vnTi
           CASE vtIp=7
                STORE " Salida x Venta sujeta a Confirmación " TO vnTi
           CASE vtIp=8
                STORE " Salida x Transformación              " TO vnTi
           CASE vtIp=9
                STORE " Salida x Emisor Itinerante           " TO vnTi
           CASE vtIp=10
                STORE " Salida x Traslado a Zona Primaria    " TO vnTi
           CASE vtIp=11
                STORE " Salida x Consignación                " TO vnTi
           CASE vtIp=12
                STORE " Ingreso x Recojo bienes transformados" TO vnTi
           CASE vtIp=13
                STORE " Salida x Otros                       " TO vnTi
      ENDCASE
      DO op1_2600a WITH ptPo
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Jal_2600a
 PRIVATE pnMr
 SELECT caB_remi
 GOTO TOP
 SET NEAR ON
 SEEK vtDo+vsEr+vdOc
 SET NEAR OFF
 SET ESCAPE ON
 STORE 0 TO pnMr
 STORE k_Enter TO mkEy
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF()
      IF f2600est="9"
           SKIP
           LOOP
      ENDIF
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+49.5 Say Str(pNMR,5,0)+" - "+F2600TDO+":"+F2600SER+"-"+F2600DOC+"  "+Dtoc(F2600FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           CASE mrEs="4"
                @iFIL+1.8,mCO0+69.5 Say Str(pNMR,5,0)+" - "+F2600TDO+":"+F2600SER+"-"+F2600DOC+"  "+Dtoc(F2600FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           OTHERWISE
                @iFIL+1.8,mCO0+89.5 Say Str(pNMR,5,0)+" - "+F2600TDO+":"+F2600SER+"-"+F2600DOC+"  "+Dtoc(F2600FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
      ENDCASE
      STORE pnMr+1 TO pnMr
      STORE k_Enter TO mkEy
      STORE f2600nom TO vnOm
      STORE f2600ruc TO vrUc
      STORE f2600dir TO vdIr
      STORE f2600dis TO vdIs
      STORE f2600dep TO vdEp
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      IF LEN(ALLTRIM(f2600ruc))<11
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           DO leN_0000a IN FAC0000A WITH "D"
           REPLACE f2600nom WITH vnOm
           REPLACE f2600dir WITH vdIr
           REPLACE f2600dis WITH vdIs
           REPLACE f2600dep WITH vdEp
           UNLOCK
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "Comprobando validez del RUC..."
      DO vaL_ruc IN FAC0000A WITH vrUc
      IF mkEy<>99
           WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
           DO veR_ruc IN FAC0000A WITH "2", vrUc
           IF mkEy=1733 .OR. mkEy<=-204
                WAIT WINDOW NOCLEAR NOWAIT "SIN ACCESO A SUNAT..."
                = INKEY(1)
                SELECT caB_remi
                SKIP
                LOOP
           ENDIF
           WAIT WINDOW NOCLEAR NOWAIT "Grabando..."
           SELECT caB_remi
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           DO leN_0000a IN FAC0000A WITH "D"
           REPLACE f2600nom WITH vnOm
           REPLACE f2600dir WITH vdIr
           REPLACE f2600dis WITH vdIs
           REPLACE f2600dep WITH vdEp
           UNLOCK
      ENDIF
      SELECT caB_remi
      SKIP
 ENDDO
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 RELEASE pnMr
ENDPROC
*
PROCEDURE Hl1_2600a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 DO CASE
      CASE wtPo="1"
           @ pfIl+0, 1.500 SAY  ;
             "Esta consulta muestra todos los Guías de Remisión en general; incluyen-  "
           @ pfIl+1, 1.500 SAY  ;
             "do los que están anulados. La Guía se puede imprimir en original o copia;"
           @ pfIl+2, 1.500 SAY  ;
             "esta es la parte de la Cabecera de la Consulta."
      CASE wtPo="2"
           @ pfIl+0, 1.500 SAY  ;
             "La anulación trabaja como la Consulta y muestra todas las Guías de Remi-"
           @ pfIl+1, 1.500 SAY  ;
             "sión en general; incluyendo los que están anulados. Un documento anula-"
           @ pfIl+2, 1.500 SAY  ;
             "do no se puede activar nuevamente. Esta es la Cabecera de la Consulta."
      CASE wtPo="3"
           @ pfIl+0, 1.500 SAY  ;
             "La Eliminación trabaja como la Consulta y muestra todas las Guías de Re-"
           @ pfIl+1, 1.500 SAY  ;
             "misión en general; incluyendo las que están anuladas. Esta es la Cabece-"
           @ pfIl+2, 1.500 SAY  ;
             "ra de la Consulta. Sólo se puede eliminar un documento anulado."
 ENDCASE
 STORE pfIl+4 TO pfIl
 @ pfIl+0, 1.500 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 17 SAY ":" STYLE "BT"
 @ pfIl+3, 17 SAY ":" STYLE "BT"
 @ pfIl+4, 17 SAY ":" STYLE "BT"
 @ pfIl+5, 17 SAY ":" STYLE "BT"
 @ pfIl+6, 17 SAY ":" STYLE "BT"
 @ pfIl+7, 17 SAY ":" STYLE "BT"
 @ pfIl+2, 03 SAY "ESC" STYLE "BT"
 @ pfIl+3, 03 SAY "F10" STYLE "BT"
 @ pfIl+4, 03 SAY "F1" STYLE "BT"
 @ pfIl+5, 03 SAY "F6" STYLE "BT"
 @ pfIl+6, 03 SAY "F7" STYLE "BT"
 @ pfIl+7, 03 SAY "F9" STYLE "BT"
 @ pfIl+2, 19 SAY "Regresar al Menú Principal"
 @ pfIl+3, 19 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 19 SAY "Ayuda del Programa"
 @ pfIl+5, 19 SAY "Cambio de Orden de Consulta"
 @ pfIl+6, 19 SAY "Ver Tipos de Guías"
 @ pfIl+7, 19 SAY "Buscar palabra o frase dentro del nombre del Cliente"
 STORE pfIl+8 TO pfIl
 IF wtPo="1"
      @ pfIl, 03 SAY "ALT C" STYLE "BT"
      @ pfIl, 17 SAY ":" STYLE "BT"
      @ pfIl, 19 SAY "Cambiar a un Año almacenado"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 17 SAY ":" STYLE "BT"
 @ pfIl+0, 03 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+1, 03 SAY "CTRL ->," STYLE "BT"
 @ pfIl+2, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 19 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+1, 19 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2600a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los Clientes, saldrá un mensaje, en caso de encontrase se regresará a"
 @ pfIl+03, 02 SAY  ;
   "la Cabecera, para que escoge el orden de consulta respectivo."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Cabecera"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsXx, vpAl, cpAl, vuFi,  ;
         vuCo, vfI0
 RELEASE vcO0, ccO0, vcO1, vlIn, vpAg, icLn, ucLn, vcLn, icL1, ucL1, vfIl,  ;
         ifIl, ufIl
 RELEASE cfIl, ffIl, vfFs, ifFs, ufFs, cfFs, ffFs, vfFr, ifFr, ufFr, cfFr,  ;
         ffFr, vfB1
 RELEASE vfB2, vfB3, vfB4, vfB5, vfB6, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6,  ;
         vrEc, irEc
 RELEASE urEc, crEc, vrCc, irCc, urCc, vpEd, xpEd, ipEd, upEd, cpEd, vsEc,  ;
         isEc, usEc
 RELEASE csEc, vtDo, itDo, utDo, xtDo, ctDo, vsEr, isEr, usEr, xsEr, csEr,  ;
         vdOc, idOc
 RELEASE udOc, xdOc, cdOc, vnOm, inOm, unOm, xnOm, cnOm, vfEm, ifEm, ufEm,  ;
         xfEm, cfEm
 RELEASE xtIt, xnTt, xcLi, xsUc, xdIr, xdIs, xdEp, xrUc, xdNi, xtEl, xlUg,  ;
         xlUd, xlUp
 RELEASE xaLm, xtRa, xtNo, xtDi, xtDs, xtDp, xtRu, xcIm, xtD1, xsR1, xdO1,  ;
         xfFa, xsRp
 RELEASE xpEd, xmOt, cmOt, vmOt, xcSt, ccSt, xcR1, xmR1, xpLa, vpLa, tpLa,  ;
         xcR2, xmR2
 RELEASE xpL2, xcC1, xcHo, xlC1, xcC2, xcH2, xlC2, xpEs, xcM1, xcM2, xcPs,  ;
         ccPs, xcPn
 RELEASE ccPn, xeSt, ceSt, xuSu, xdAt, xtIm, xnAl, xaDi, xaDs, xaDp, vcOd,  ;
         ccOd, vcDg
 RELEASE icDg, ucDg, ccDg, vtB1, vtB2, vtPo, ctPo, vaLm, vaDi, vaDs, clAr,  ;
         caNc, vcTd
 RELEASE xcTd, vcAn, tcAn, ccAn, ctP1, ctI1, ctPp, caNo, xaNo, cmEs, xmEs,  ;
         cdIa, xdIa
 RELEASE vcAj, vsLd, vsLc, vpD1, cdCr, vmD3, vpDi, vpDs, vpPr, vpDp, vpEs,  ;
         veNt, vsRr
 RELEASE tcO1, tcO2, tpEs, vdEs, vnUv, vpIe, xpIe, xoPc, xmLa, xmAn, xuN1,  ;
         xuN2, xp11
 RELEASE xp12, xp21, xp22, xcA1, xcA2, xcA3, xcA4, xpOr, xcMm, xcMp, vlA1, vaN1
 RELEASE vpAn_11, vpAn_12, vpAn_13, vpAn_99
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
 DO deL_file2 WITH "2", "S"
 RELEASE ntM1, ntM2
ENDPROC
*
