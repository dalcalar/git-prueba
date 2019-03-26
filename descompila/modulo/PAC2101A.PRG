 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[17, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2101COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101CRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101CON"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2101MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
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
 INDEX ON f2101cod TAG f2101cod
 INDEX ON UPPER(f2101nom)+f2101cod TAG f2101nom
 INDEX ON f2101ruc+f2101cod TAG f2101ruc
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
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
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Proveedores no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2102", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sucursales
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2105", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Lista
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2105PRV
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2106", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Lista
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2106CD1
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
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
 SELECT 7
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
 SELECT 8
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
 SELECT 9
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 9 TO muLt
 SELECT prOveedores
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6, vsW7, vsWw,  ;
        vpAl, cpAl
 PUBLIC vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, ifFs, ufFs, vfFs, ffFs,  ;
        ifFr, ufFr
 PUBLIC vfFr, ffFr, cfFr, vfF1, ifF1, ufF1, ffF1, vfB1, vcB1, vcOd, icOd,  ;
        ucOd, xcOd
 PUBLIC ccOd, vsUc, isUc, usUc, xsUc, vnOm, inOm, unOm, xnOm, cnOm, vrUc,  ;
        irUc, urUc
 PUBLIC xrUc, crUc, vcDg, icDg, ucDg, ccDg, xcDg, xtPo, xtIp, xnTi, xcRe,  ;
        xmOn, xtOt
 PUBLIC xeSt, xnEs, xuSu, xdAt, xtIm, xmAq, xdIr, vdIr, xnDi, xeNt, veNt,  ;
        xnD1, xcT1
 PUBLIC vcT1, xtL1, xaN1, xcA1, vcA1, xfA1, xcT2, vcT2, xtL2, xaN2, xcA2,  ;
        vcA2, xfA2
 PUBLIC xcT3, vcT3, xtL3, xaN3, xcA3, vcA3, xfA3, xmAi, ccO1, vrEc, irEc,  ;
        urEc, xrEc
 PUBLIC crEc, vfEm, vaNo, caNo, iaNo, uaNo, xaNo, vmEs, cmEs, imEs, umEs,  ;
        xmEs, vdIa
 PUBLIC cdIa, idIa, udIa, xdIa, vpRo, vdCt, vpR1, vpR2, vpR3, vpR4, vlA1,  ;
        vlA2, vlA3
 PUBLIC vaN1, vaN2, vaN3, veSp, icLn, ucLn, icL1, ucL1, vpRv, vtPo, vnU1,  ;
        vnU2, voPc
 PUBLIC vdIs, vdEp, vcOn
 PUBLIC vpAn_11, vpAn_12, vpAn_99
 STORE SPACE(04) TO vcOd, icOd, ucOd
 STORE SPACE(11) TO vrUc, irUc, urUc
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 STORE 01 TO vsW0, csW0, vsW1, vsW3, vsW4, vsW5, vsW6, vsW7
 STORE 00 TO csW1, vnU1, vnU2, cfFr
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SELECT prOveedores
 COUNT FOR f2101est<>"9" TO vnU1
 COUNT FOR f2101est="9" TO vnU2
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
           DO rs1_2101a
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
           CASE mkEy=k_F1
                DO hl1_2101a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F6
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO p01_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
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
                DO paC2101b
                SET READBORDER ON
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
                ELSE
                     DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
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
      DO coLbln
      DO CASE
           CASE vsW0=1
                @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,07.5 Pict "!!!!"
           CASE vsW0=2
                @iFIL-4,mCO0+14 Get vNOM Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,31.0 Pict "@S31"
           CASE vsW0=3
                @iFIL-4,mCO0+13 Get vRUC Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,12.5 Pict "99999999999"
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_2101a
 DO rs2_2101a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2101a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_2101a
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
           CASE mkEy=k_F12
                DO rs1_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F1
                DO hl2_2101a
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal
                ZAP
                REINDEX
                SELECT prOveedores
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2101nom)))<>0
                          DO muE_2101a
                          DO grA_2101a
                          SELECT prOveedores
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     STORE 1 TO vsW1
                     DO poNmsj
                ELSE
                     STORE 0 TO csW1
                     STORE 2 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO paL_1101a IN PVC1101A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_2101a
 STORE f2101cod TO xcOd
 STORE f2101tpo TO xtPo
 STORE f2101tip TO xtIp
 STORE f2101nom TO xnOm
 STORE f2101ruc TO xrUc
 STORE f2101cre TO xcRe
 STORE f2101mon TO xmOn
 STORE f2101tot TO xtOt
 STORE f2101est TO xeSt
 STORE f2101usu TO xuSu
 STORE f2101dat TO xdAt
 STORE f2101tim TO xtIm
 STORE f2101maq TO xmAq
 DO CASE
      CASE xeSt="9"
           STORE "Anu" TO xnEs
      OTHERWISE
           STORE "   " TO xnEs
 ENDCASE
 SELECT suCursales
 SEEK xcOd
 IF  .NOT. EOF()
      STORE f2102dir TO xdIr
      STORE f2102dis TO xnDi
      STORE f2102ct1 TO xcT1
      STORE f2102tl1 TO xtL1
      STORE f2102mai TO xmAi
 ELSE
      STORE " " TO xdIr, xnDi, xcT1, xtL1, xmAi
 ENDIF
 SELECT tiPos
 SEEK xtIp
 IF  .NOT. EOF()
      STORE f9210nti TO xnTi
 ELSE
      STORE " " TO xnTi
 ENDIF
 SELECT prOveedores
ENDPROC
*
PROCEDURE Gra_2101a
 SELECT teMporal
 APPEND BLANK
 REPLACE f2101cod WITH xcOd
 REPLACE f2101tpo WITH xtPo
 REPLACE f2101tip WITH xtIp
 REPLACE f2101nti WITH xnTi
 REPLACE f2101nom WITH xnOm
 REPLACE f2101ruc WITH xrUc
 REPLACE f2101dir WITH xdIr
 REPLACE f2101dis WITH xnDi
 REPLACE f2101cre WITH xcRe
 REPLACE f2101mon WITH xmOn
 REPLACE f2101tot WITH xtOt
 REPLACE f2101est WITH xeSt
 REPLACE f2101usu WITH xuSu
 REPLACE f2101dat WITH xdAt
 REPLACE f2101tim WITH xtIm
 REPLACE f2101maq WITH xmAq
ENDPROC
*
PROCEDURE Lin_2101a
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+010.3 TO pfIn, mcO0+010.3
           @ piNi, mcO0+015.7 TO pfIn, mcO0+015.7
           @ piNi, mcO0+087.3 TO pfIn, mcO0+087.3
           @ piNi, mcO0+103.9 TO pfIn, mcO0+103.9
           @ piNi, mcO0+116.6 TO pfIn, mcO0+116.6
           @ piNi, mcO0+139.2 TO pfIn, mcO0+139.2
      OTHERWISE
           @ piNi, mcO0+010.3 TO pfIn, mcO0+010.3
           @ piNi, mcO0+015.7 TO pfIn, mcO0+015.7
           @ piNi, mcO0+087.3 TO pfIn, mcO0+087.3
           @ piNi, mcO0+103.9 TO pfIn, mcO0+103.9
           @ piNi, mcO0+116.6 TO pfIn, mcO0+116.6
           @ piNi, mcO0+149.1 TO pfIn, mcO0+149.1
 ENDCASE
ENDPROC
*
PROCEDURE P00_2101a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 DO maRcos
 STORE mfI0+2 TO mfI0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mcO0+0.4 TO icLn
 STORE mcO0+muCo-0.2 TO ucLn
 STORE mcO0-0.2 TO icL1
 STORE icL1+muCo+1 TO ucL1
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE ffIl+4.1 TO ffFs
 STORE ffIl+1.1 TO ffFr
 STORE mfI0+8 TO ifFs, ufFs, vfFs
 STORE mfI0+1.3 TO ifFr, ufFr, vfFr
 STORE ifFs+2 TO ifFs, ufFs, vfFs
 STORE ifFs+INT(ffFs-ifFs) TO ffFs
 STORE ifFr+INT(ffFr-ifFr) TO ffFr
 STORE ifFr-4.2 TO vfB1
 DO CASE
      CASE mrEs="3"
           STORE mcO0+191.7 TO vcB1
      CASE mrEs="4"
           STORE mcO0+231.7 TO vcB1
      OTHERWISE
           STORE mcO0+261.7 TO vcB1
 ENDCASE
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Proveedores con Lista de Precios"
      CASE wtPo="2"
           DO tiT_0000a WITH "Consulta de Proveedores con Lista de Productos"
      CASE wtPo="3"
           DO tiT_0000a WITH "Consulta de Proveedores"
 ENDCASE
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLplp
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO p01_2101a
 DO liN_2101a WITH ifIl-1.3, ffIl+1
 DO coLblz
 DO CASE
      CASE mrEs="3"
           @iFIL-1.2,mCO0+000.2 Say "Código"              Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+011.1 Say "Est"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+016.1 Say "Apellidos y Nombres" Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+092.5 Say "RUC"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+117.9 Say "Tipo de Proveed"     Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+139.7 Say "Dirección/Sucursal"  Font "&mLetAri",10 Style "BT"
      OTHERWISE
           @iFIL-1.2,mCO0+000.2 Say "Código"              Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+011.1 Say "Est"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+016.1 Say "Apellidos y Nombres" Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+092.5 Say "RUC"                 Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+120.9 Say "Tipo de Proveedor"   Font "&mLetAri",10 Style "BT"
           @iFIL-1.2,mCO0+149.7 Say "Dirección/Sucursal"  Font "&mLetAri",10 Style "BT"
 ENDCASE
 DO tiT_2101a
 DO coLsc1
 @mFI0+mUFI-01.3,mCO0+01.0 Say "Palabra:"        Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-01.3,mCO0+11.0 Say vPAL              Font "&mLetRom",9  Style "BQ" Size 1,70 Pict "@S70"
 DO toT_2101a
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
 ELSE
      DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Tit_2101a
 DO coLscz
 DO CASE
      CASE mrEs="3" .AND. vsW7=1
           @iFIL-1.3,mCO0+104.3 Say "  Nac/Extr" Font "&mLetAri",9 Style "BQ" Size 1,10.1
      CASE mrEs="3" .AND. vsW7=2
           @iFIL-1.3,mCO0+104.3 Say "Con.Sunat"  Font "&mLetAri",9 Style "BQ" Size 1,10.1
      CASE vsW7=1
           @iFIL-1.3,mCO0+104.3 Say "  Nac/Extr" Font "&mLetAri",9 Style "BQ" Size 1,10.1
      CASE vsW7=2
           @iFIL-1.3,mCO0+104.3 Say "Con.Sunat"  Font "&mLetAri",9 Style "BQ" Size 1,10.1
 ENDCASE
ENDPROC
*
PROCEDURE P01_2101a
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Código:" Font "&mLetRom",12 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Nombre:" Font "&mLetRom",12 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "R.U.C.:" Font "&mLetRom",12 Style "BT"
 ENDCASE
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,07.5 Pict "!!!!"
      CASE vsW0=2
           @iFIL-4,mCO0+14 Get vNOM Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,31.0 Pict "@S31"
      CASE vsW0=3
           @iFIL-4,mCO0+13 Get vRUC Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,12.5 Pict "99999999999"
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Tot_2101a
 DO coLsc3
 @ mfI0+muFi-0.1, mcO0 TO mfI0+muFi+1.3, mcO0+105 PATTERN 1
 @mFI0+mUFI+0.0,mCO0+01.0 Say "Total Proveedores:" Font "&mLetRom",10 Style "BQ"
 @mFI0+mUFI+0.0,mCO0+17.0 Say vNU1+vNU2            Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
 @mFI0+mUFI+0.0,mCO0+37.0 Say "Total Activos:"     Font "&mLetRom",10 Style "BQ"
 @mFI0+mUFI+0.0,mCO0+52.0 Say vNU1                 Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
 @mFI0+mUFI+0.0,mCO0+72.0 Say "Total Anulados:"    Font "&mLetRom",10 Style "BQ"
 @mFI0+mUFI+0.0,mCO0+89.5 Say vNU2                 Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
ENDPROC
*
PROCEDURE Rs1_2101a
 DO p00_2101a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO CASE
           CASE vsW1=1
                SELECT prOveedores
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO muE_2101b IN PAC2101B WITH "v", "c"
      DO seE_2101b IN PAC2101B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2101cod)=ALLTRIM(vcOd)
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_2101b IN PAC2101B WITH "v", "c"
           DO muE_2101b IN PAC2101B WITH "v", "i"
      ENDIF
      DO seE_2101b IN PAC2101B WITH "i"
      DO paN_2101b IN PAC2101B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_2101b IN PAC2101B WITH "c", "v"
      DO seE_2101b IN PAC2101B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2101a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="3"
           @ ifIl+0.8, mcO0+51 TO ifIl+4.0, mcO0+129.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+50 TO ifIl+3.5, mcO0+128.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+51 Say "Digitar los Apellidos y/o Nombres del o los Proveedores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      CASE mrEs="4"
           @ ifIl+0.8, mcO0+71 TO ifIl+4.0, mcO0+149.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+70 TO ifIl+3.5, mcO0+148.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+71 Say "Digitar los Apellidos y/o Nombres del o los Proveedores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      OTHERWISE
           @ ifIl+0.8, mcO0+91 TO ifIl+4.0, mcO0+169.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+90 TO ifIl+3.5, mcO0+168.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+91 Say "Digitar los Apellidos y/o Nombres del o los Proveedores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2101a
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
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF1+3.857 .AND. mfIl<=mmF1+7.071 .AND. mcCc>=mcO0+muCo- ;
           10 .AND. mcCc<=mcO0+muCo .AND. msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
           .AND. DATE()<=mfHa
           SAVE SCREEN TO vpAn_11
           DO jaL_2101a
           WAIT CLEAR
           RESTORE SCREEN FROM vpAn_11
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Jal_2101a
 PRIVATE pdI1, pdP1, pnMr, plIn, psW0
 SELECT prOveedores
 GOTO TOP
 SET NEAR ON
 SEEK vcOd
 SET NEAR OFF
 SET ESCAPE ON
 DO coLbln
 STORE 0 TO pnMr, psW0
 STORE ifIl TO plIn
 STORE k_Enter TO mkEy
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF()
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      STORE pnMr+1 TO pnMr
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+49.5 Say Str(pNMR,5,0)+" - "+F2101COD+": "+F2101NOM Font "&mLetAri",8 Style "NQ" Size 1,90 Pict "@S90"
           CASE mrEs="4"
                @iFIL+1.8,mCO0+69.5 Say Str(pNMR,5,0)+" - "+F2101COD+": "+F2101NOM Font "&mLetAri",8 Style "NQ" Size 1,90 Pict "@S90"
           OTHERWISE
                @iFIL+1.8,mCO0+89.5 Say Str(pNMR,5,0)+" - "+F2101COD+": "+F2101NOM Font "&mLetAri",8 Style "NQ" Size 1,90 Pict "@S90"
      ENDCASE
      STORE k_Enter TO mkEy
      STORE f2101cod TO xcOd
      STORE f2101nom TO vnOm
      STORE f2101ruc TO vrUc
      STORE f2101con TO vcOn
      STORE " " TO vdIr, vdIs, vdEp
      WAIT WINDOW NOCLEAR NOWAIT "Comprobando Direccion..."
      SELECT suCursales
      SEEK xcOd
      IF EOF()
           APPEND BLANK
           REPLACE f2102cod WITH xcOd
           REPLACE f2102suc WITH "01"
      ENDIF
      DO WHILE  .NOT. EOF() .AND. f2102cod=xcOd
           IF mkEy=k_Esc
                EXIT
           ENDIF
           STORE f2102dir TO vdIr
           STORE f2102dis TO vdIs
           STORE f2102ent TO veNt
           STORE f2102ct1 TO vcT1
           STORE f2102ct2 TO vcT2
           STORE f2102ct3 TO vcT3
           STORE f2102ca1 TO vcA1
           STORE f2102ca2 TO vcA2
           STORE f2102ca3 TO vcA3
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "6"
           DO leN_0000a IN FAC0000A WITH "7"
           DO leN_0000a IN FAC0000A WITH "8"
           DO leN_0000a IN FAC0000A WITH "9"
           DO leN_0000a IN FAC0000A WITH "0"
           DO leN_0000a IN FAC0000A WITH "A"
           DO leN_0000a IN FAC0000A WITH "B"
           REPLACE f2102dir WITH vdIr
           REPLACE f2102ent WITH veNt
           REPLACE f2102ct1 WITH vcT1
           REPLACE f2102ct2 WITH vcT2
           REPLACE f2102ct3 WITH vcT3
           REPLACE f2102ca1 WITH vcA1
           REPLACE f2102ca2 WITH vcA2
           REPLACE f2102ca3 WITH vcA3
           REPLACE f2102usu WITH "Sistema Online"
           REPLACE f2102dat WITH DATE()
           REPLACE f2102tim WITH TIME()
           REPLACE f2102maq WITH mmAq
           UNLOCK
           SKIP
      ENDDO
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      SELECT prOveedores
      DO CASE
           CASE LEN(ALLTRIM(vrUc))<11
                WAIT WINDOW NOCLEAR NOWAIT "No tiene RUC..."
                DO leN_0000a IN FAC0000A WITH "4"
                REPLACE f2101nom WITH vnOm
                REPLACE f2101usu WITH "Sistema Online"
                REPLACE f2101dat WITH DATE()
                REPLACE f2101tim WITH TIME()
                REPLACE f2101maq WITH mmAq
                UNLOCK
           OTHERWISE
                WAIT WINDOW NOCLEAR NOWAIT "Comprobando validez del RUC..."
                DO vaL_ruc IN FAC0000A WITH vrUc
                IF mkEy<>99
                     STORE " " TO pdP1, pdI1
                     WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
                     DO veR_ruc IN FAC0000A WITH "2", vrUc
                     IF mkEy=1800 .OR. mkEy=1733 .OR. mkEy<=-204
                          @ plIn, 1 SAY xcOd+" "+vnOm FONT "Courier New",  ;
                            14 STYLE "BQ" SIZE 1, 40
                          STORE 1 TO psW0
                          STORE plIn+2 TO plIn
                          IF plIn>ffIl
                               STORE ifIl TO plIn
                          ENDIF
                          WAIT WINDOW NOCLEAR NOWAIT "SIN ACCESO A SUNAT..."
                          = INKEY(1)
                          SELECT prOveedores
                          SKIP
                          LOOP
                     ENDIF
                     SELECT prOveedores
                     DO leN_0000a IN FAC0000A WITH "4"
                     REPLACE f2101nom WITH vnOm
                     REPLACE f2101con WITH vcOn
                     REPLACE f2101usu WITH "SUNAT Online"
                     REPLACE f2101dat WITH DATE()
                     REPLACE f2101tim WITH TIME()
                     REPLACE f2101maq WITH mmAq
                     UNLOCK
                     DO leN_0000a IN FAC0000A WITH "5"
                     DO leN_0000a IN FAC0000A WITH "C"
                     DO leN_0000a IN FAC0000A WITH "D"
                     SELECT suCursales
                     SEEK xcOd+"01"
                     IF EOF()
                          DO nuEvo_rg
                          REPLACE f2102cod WITH xcOd
                          REPLACE f2102suc WITH "01"
                     ENDIF
                     REPLACE f2102dir WITH vdIr
                     REPLACE f2102dis WITH ALLTRIM(vdIs)+","+ALLTRIM(vdEp)
                     REPLACE f2102usu WITH "SUNAT Online"
                     REPLACE f2102dat WITH DATE()
                     REPLACE f2102tim WITH TIME()
                     REPLACE f2102maq WITH mmAq
                     UNLOCK
                ELSE
                     @ plIn, 1 SAY xcOd+" "+vnOm FONT "Courier New", 14  ;
                       STYLE "BQ" SIZE 1, 40
                     STORE 1 TO psW0
                     STORE plIn+2 TO plIn
                     IF plIn>ffIl
                          STORE ifIl TO plIn
                     ENDIF
                ENDIF
      ENDCASE
      SELECT prOveedores
      SKIP
 ENDDO
 STORE xcOd TO vcOd
 IF psW0<>0
      DO prE_docum WITH "Copie y pulse S/N para continuar"
 ENDIF
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 RELEASE pdI1, pdP1, pnMr, plIn, psW0
ENDPROC
*
PROCEDURE Hl1_2101a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 2.000 SAY  ;
   "Esta consulta muestra todos los Proveedores registrados, incluyendo los"
 @ pfIl+01, 2.000 SAY "que están anulados."
 @ pfIl+03, 2.000 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 17.500 SAY ":" STYLE "BT"
 @ pfIl+06, 17.500 SAY ":" STYLE "BT"
 @ pfIl+07, 17.500 SAY ":" STYLE "BT"
 @ pfIl+08, 17.500 SAY ":" STYLE "BT"
 @ pfIl+09, 17.500 SAY ":" STYLE "BT"
 @ pfIl+10, 17.500 SAY ":" STYLE "BT"
 @ pfIl+12, 17.500 SAY ":" STYLE "BT"
 @ pfIl+14, 17.500 SAY ":" STYLE "BT"
 @ pfIl+16, 17.500 SAY ":" STYLE "BT"
 @ pfIl+05, 1.000 SAY "ESC" STYLE "BT"
 @ pfIl+06, 1.000 SAY "F10" STYLE "BT"
 @ pfIl+07, 1.000 SAY "F1" STYLE "BT"
 @ pfIl+08, 1.000 SAY "F6" STYLE "BT"
 @ pfIl+09, 1.000 SAY "F9" STYLE "BT"
 @ pfIl+10, 1.000 SAY "ENTER" STYLE "BT"
 @ pfIl+12, 1.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+14, 1.000 SAY "CTRL ->" STYLE "BT"
 @ pfIl+16, 1.000 SAY "TAB" STYLE "BT"
 @ pfIl+05, 19.000 SAY "Regresar al Menú Principal"
 @ pfIl+06, 19.000 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 19.000 SAY "Ayuda del Programa"
 @ pfIl+08, 19.000 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 19.000 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+10, 19.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+11, 19.000 SAY "trado va al final del Archivo"
 @ pfIl+12, 19.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+13, 19.000 SAY "trado va al final del Archivo"
 @ pfIl+14, 19.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+15, 19.000 SAY "trado va al final del Archivo"
 @ pfIl+16, 19.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+17, 19.000 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2101a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda,  se da en cualquier parte de Apellidos o Nombres de los"
 @ pfIl+01, 02 SAY  ;
   "Proveedores. Si la palabra o frase, no se encuentra contenida en ningu-"
 @ pfIl+02, 02 SAY  ;
   "no de los nombres de los Proveedores,  saldrá un mensaje.  En caso de"
 @ pfIl+03, 02 SAY  ;
   "encontrarse regresará a la Cabecera,  para que  escoja el orden de con-"
 @ pfIl+04, 02 SAY "sulta respectiva."
 @ pfIl+06, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 13 SAY "ESC" STYLE "BT"
 @ pfIl+09, 13 SAY "F10" STYLE "BT"
 @ pfIl+10, 13 SAY "F1" STYLE "BT"
 @ pfIl+11, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+08, 23 SAY "Regresar a Cabecera"
 @ pfIl+09, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 23 SAY "Ayuda del Programa"
 @ pfIl+11, 23 SAY "Buscar palabra y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6, vsW7, vsWw,  ;
         vpAl, cpAl
 RELEASE vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, ifFs, ufFs, vfFs, ffFs,  ;
         ifFr, ufFr
 RELEASE vfFr, ffFr, cfFr, vfF1, ifF1, ufF1, ffF1, vfB1, vcB1, vcOd, icOd,  ;
         ucOd, xcOd
 RELEASE ccOd, vsUc, isUc, usUc, xsUc, vnOm, inOm, unOm, xnOm, cnOm, vrUc,  ;
         irUc, urUc
 RELEASE xrUc, crUc, vcDg, icDg, ucDg, ccDg, xcDg, xtPo, xtIp, xnTi, xcRe,  ;
         xmOn, xtOt
 RELEASE xeSt, xnEs, xuSu, xdAt, xtIm, xmAq, xdIr, vdIr, xnDi, xeNt, veNt,  ;
         xnD1, xcT1
 RELEASE vcT1, xtL1, xaN1, xcA1, vcA1, xfA1, xcT2, vcT2, xtL2, xaN2, xcA2,  ;
         vcA2, xfA2
 RELEASE xcT3, vcT3, xtL3, xaN3, xcA3, vcA3, xfA3, xmAi, ccO1, vrEc, irEc,  ;
         urEc, xrEc
 RELEASE crEc, vfEm, vaNo, caNo, iaNo, uaNo, xaNo, vmEs, cmEs, imEs, umEs,  ;
         xmEs, vdIa
 RELEASE cdIa, idIa, udIa, xdIa, vpRo, vdCt, vpR1, vpR2, vpR3, vpR4, vlA1,  ;
         vlA2, vlA3
 RELEASE vaN1, vaN2, vaN3, veSp, icLn, ucLn, icL1, ucL1, vpRv, vtPo, vnU1,  ;
         vnU2, voPc
 RELEASE vdIs, vdEp, vcOn
 RELEASE vpAn_11, vpAn_12, vpAn_99
 RELEASE exTended
 RELEASE exTended
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
