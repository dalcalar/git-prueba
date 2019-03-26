 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC ntM1, ntM2, ntM3
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr
 DO taB_salidas IN PUX0002A
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
 INDEX ON f2800tdo+f2800ser+f2800doc TAG f2800doc
 INDEX ON UPPER(f2800cm1)+f2800tdo+f2800ser+f2800doc TAG f2800cm1
 INDEX ON SUBSTR(DTOC(f2800fem), 7, 4)+SUBSTR(DTOC(f2800fem), 4, 2)+ ;
       SUBSTR(DTOC(f2800fem), 1, 2)+f2800tdo+f2800ser+f2800doc TAG f2800fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
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
 INDEX ON ftM2ser+ftM2doc TAG ftM2doc
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[15, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3CDG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM3LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3ESP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM3TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
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
           DO deL_file2 WITH "1", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM3cdg)+"*" TAG ftM3cdg
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2800", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2800FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO BOTTOM
 IF EOF()
      STORE "Archivo de Guías de Salida no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2801", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2801DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2802", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2802DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2803", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2803DOC
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
 SELECT 6
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
 SELECT 7
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
 SELECT 8
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
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2701COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2702", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2702DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
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
 SELECT 13
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
 SELECT 14
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
 SELECT 15
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
 SELECT 16
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
 SELECT 17
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
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "9218", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9218TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Salida de Almacén vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      DO deL_file1
      RETURN
 ENDIF
 SELECT 19
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
 SELECT 20
 IF wtPo="4"
      DO prO_virtual WITH 1
 ELSE
      STORE "FA012111.DLL" TO mdBf
      Use &mDBF Share Alias Virtual_Prod
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F2111COD
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
 ENDIF
 SELECT 21
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2800DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 22
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 23
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_3
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM3CDG
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_2700a IN PAC2700A
 PUBLIC vcDg, icDg, ucDg, ccDg, vdCc, idCc, udCc, cdCc, ctP0, ctP1, ctP2,  ;
        ctI1, ctI2
 PUBLIC xtEc, xnTe, xmOn, cdI1, cmE1, caN1, cdEs, cdCr, ccUv, cnUv, ccUc,  ;
        cnUc, clA1
 PUBLIC clA2, caN1, caN2, vsGi, vnGi, ceSp, cmEd, vgUi, vfB2, vfB3, vcB2,  ;
        vcB3, vsWw
 PUBLIC vsWr, vcL0, ccOd
 STORE "GS" TO itDo, utDo
 SELECT caB_sali
 GOTO BOTTOM
 DO muE_2800b IN PAC2800B WITH "F", "v"
 STORE 01 TO meRr
 DO orD_2800b IN PAC2800B
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 STORE 00 TO meRr
 SET READBORDER ON
 DO p00_2800a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2800a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2700a IN PAC2700A
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2800a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2800a
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
                DO tiT_2700a IN PAC2700A
           CASE mkEy=k_F7
                DO tpO_2800a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_2800a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE wtPo$"134"
                          DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                     CASE wtPo="2"
                          DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
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
                DO paC2800b
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
      DO coLbln
      DO CASE
           CASE vsW0=1
                STORE VAL(vdOc) TO vdOc
                @iFIL-4,mCO0+16 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
                @iFIL-4,mCO0+22 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @iFIL-4,mCO0+20 Get vCM1 Font "&mLetRom",11 Style "NQ" Size 1,26  Pict "@S29"    Color ,&mColBlN
           CASE vsW0=3
                @iFIL-4,mCO0+29 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5               Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE vsW0=1
                DO coLbln
                vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
                @iFIL-4,mCO0+22 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "9999999"
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_2800a
 DO rs2_2700a IN PAC2700A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2800a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_2700a IN PAC2700A
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
                DO hl2_2700a IN PAC2700A
           CASE mkEy=k_F12
                DO rs1_2800a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_2700a IN PAC2700A
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
                SELECT caB_sali
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2800cm1)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2800ped)))<>0
                          DO muE_2800a
                          DO grA_2800a
                          SELECT caB_sali
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
                     STORE 0 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO paL_2700a IN PAC2700A
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc, idOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Op1_2800a
 PARAMETER ptPo
 STORE 1 TO vsW1
 SELECT teMporal
 ZAP
 REINDEX
 SELECT caB_sali
 GOTO TOP
 DO coLsc3
 DO WHILE  .NOT. EOF()
      DO CASE
           CASE mrEs="3"
                @iFIL,mCO0+072.1 Say F2800TDO+":"+F2800SER+"-"+F2800DOC Font "&mLetAri",9 Style "NQ" Size 1,18.5
           CASE mrEs="4"
                @iFIL,mCO0+092.1 Say F2800TDO+":"+F2800SER+"-"+F2800DOC Font "&mLetAri",9 Style "NQ" Size 1,18.5
           OTHERWISE
                @iFIL,mCO0+112.1 Say F2800TDO+":"+F2800SER+"-"+F2800DOC Font "&mLetAri",9 Style "NQ" Size 1,18.5
      ENDCASE
      IF f2800tip=vtIp
           DO CASE
                CASE vsW1=1
                     DO muE_2800a
                     DO grA_2800a
                CASE vsW1=2 .AND. (AT(UPPER(ALLTRIM(vpAl)),  ;
                     UPPER(ALLTRIM(f2800cm1)))<>0 .OR.  ;
                     AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2800ped)))<>0)
                     DO muE_2800a
                     DO grA_2800a
           ENDCASE
      ENDIF
      SELECT caB_sali
      SKIP
 ENDDO
 DO coLsc1
 DO CASE
      CASE mrEs="3"
           @iFIL,mCO0+072.1 Say Space(20) Font "&mLetAri",9 Style "NQ" Size 1,18.5
      CASE mrEs="4"
           @iFIL,mCO0+092.1 Say Space(20) Font "&mLetAri",9 Style "NQ" Size 1,18.5
      OTHERWISE
           @iFIL,mCO0+102.1 Say Space(20) Font "&mLetAri",9 Style "NQ" Size 1,18.5
 ENDCASE
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
                     SELECT caB_sali
                CASE vsW1=2
                     SELECT teMporal
           ENDCASE
           DO orD_2800b IN PAC2800B
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 00 TO meRr
           GOTO TOP
           DO paN_2800b IN PAC2800B
           DO muE_2800b IN PAC2800B WITH "i", "v"
           STORE vsW1 TO csW1
           STORE ifIl TO vfIl
 ENDCASE
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say AllTrim(vNTI)+" "+vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_2800a
 STORE f2800tdo TO xtDo
 STORE f2800ser TO xsEr
 STORE f2800doc TO xdOc
 STORE f2800fem TO xfEm
 STORE f2800tip TO xtIp
 STORE f2800nti TO xnTi
 STORE f2800tpp TO xtPp
 STORE f2800cm1 TO xcM1
 STORE f2800ped TO xpEd
 STORE f2800td1 TO xtD1
 STORE f2800sr1 TO xsR1
 STORE f2800do1 TO xdO1
 STORE f2800tec TO xtEc
 STORE f2800nte TO xnTe
 STORE f2800mon TO xmOn
 STORE f2800cos TO xcOs
 STORE f2800alm TO xaLm
 STORE f2800est TO xeSt
 STORE f2800usu TO xuSu
 STORE f2800dat TO xdAt
 STORE f2800tim TO xtIm
 STORE f2800maq TO xmAq
ENDPROC
*
PROCEDURE Gra_2800a
 SELECT teMporal
 APPEND BLANK
 REPLACE f2800tdo WITH xtDo
 REPLACE f2800ser WITH xsEr
 REPLACE f2800doc WITH xdOc
 REPLACE f2800fem WITH xfEm
 REPLACE f2800tip WITH xtIp
 REPLACE f2800nti WITH xnTi
 REPLACE f2800tpp WITH xtPp
 REPLACE f2800cm1 WITH xcM1
 REPLACE f2800ped WITH xpEd
 REPLACE f2800td1 WITH xtD1
 REPLACE f2800sr1 WITH xsR1
 REPLACE f2800do1 WITH xdO1
 REPLACE f2800tec WITH xtEc
 REPLACE f2800nte WITH xnTe
 REPLACE f2800mon WITH xmOn
 REPLACE f2800cos WITH xcOs
 REPLACE f2800alm WITH xaLm
 REPLACE f2800est WITH xeSt
 REPLACE f2800usu WITH xuSu
 REPLACE f2800dat WITH xdAt
 REPLACE f2800tim WITH xtIm
 REPLACE f2800maq WITH xmAq
ENDPROC
*
PROCEDURE P00_2800a
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
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE ffIl+1.1 TO ffFs, ffFr
 STORE mfI0+5 TO ufFs, vfFs
 STORE mfI0+0.9 TO ifFr, ufFr, vfFr
 STORE (mwCo-100)/2 TO vcO1
 STORE ifIl-1.2 TO vfB1
 STORE mfI0 TO vfB2, vfB3
 STORE mcO0+74 TO vcB2
 STORE vcB2+4 TO vcB3
 DO CASE
      CASE mrEs$"34"
           STORE mcO0+113.6 TO vcB1
      OTHERWISE
           STORE mcO0+113.8 TO vcB1
 ENDCASE
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Guías de Salida"
      CASE wtPo="2"
           DO tiT_0000a WITH "Anulación de Guías de Salida"
      CASE wtPo="3"
           DO tiT_0000a WITH  ;
              "Consulta de Guías de Salida Valorizadas/Poner Costos"
      CASE wtPo="4"
           DO tiT_0000a WITH "Genera Guías de Ingreso Vinculadas"
 ENDCASE
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO tiT_2700a IN PAC2700A
 DO p01_2700a IN PAC2700A WITH "2800"
 DO p02_2700a IN PAC2700A
 DO prEsiona WITH "1", "CONSU3", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Define Popup vTB1 from vFB1+1.1,vCB1-.6 to fFIL+1,vCB1+50 Font "&mLetCou",11 Style "NQ" Prompt Field F9218NTI+" ["+F9218TIP+"]" Scroll Color Scheme 3 Footer "TIPOS DE SALIDAS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,70 Pict "@S70"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE Rs1_2800a
 DO p00_2800a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=1
                SELECT caB_sali
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_2700b IN PAC2700B WITH "i"
      DO muE_2800b IN PAC2800B WITH "v", "c"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f2800tdo+f2800ser+f2800doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2800b IN PAC2800B WITH "v", "i"
           DO muE_2800b IN PAC2800B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_2700b IN PAC2700B WITH "i"
      DO paN_2800b IN PAC2800B
      DO muE_2800b IN PAC2800B WITH "c", "v"
      DO seE_2700b IN PAC2700B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Tpo_2800a
 PARAMETER ptPo
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Salida registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE f9218tip TO vtIp
      STORE f9218nti TO vnTi
      DO op1_2800a WITH ptPo
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caB_sali
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Hl1_2800a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo$"13"
           @ pfIl+0, 2 SAY  ;
             "Esta consulta muestra todos los Guías de Salida en general; incluyendo"
           @ pfIl+1, 2 SAY  ;
             "los que están anulados. Se puede imprimir la Guía de Salida.  Esta es la"
           @ pfIl+2, 2 SAY "parte de la Cabecera de la Consulta."
      CASE wtPo="2"
           @ pfIl+0, 2 SAY  ;
             "La anulación trabaja como la Consulta y muestra todas las Guías de Sa-"
           @ pfIl+1, 2 SAY  ;
             "lida en general; incluyendo los que están anuladas. Un documento anula-"
           @ pfIl+2, 2 SAY  ;
             "do no se puede activar nuevamente. Esta es la Cabecera de la Consulta."
      CASE wtPo="4"
           @ pfIl+0, 2 SAY  ;
             "En esta parte del programa se puede generar Guías de Ingreso de Vidrios"
           @ pfIl+1, 2 SAY  ;
             "cortados, es solo para uso de vidrierías. Esta es la Cabecera de la Con-"
           @ pfIl+2, 2 SAY "sulta."
 ENDCASE
 STORE pfIl+4 TO pfIl
 @ pfIl+00, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+02, 17 SAY ":" STYLE "BT"
 @ pfIl+03, 17 SAY ":" STYLE "BT"
 @ pfIl+04, 17 SAY ":" STYLE "BT"
 @ pfIl+05, 17 SAY ":" STYLE "BT"
 @ pfIl+06, 17 SAY ":" STYLE "BT"
 @ pfIl+07, 17 SAY ":" STYLE "BT"
 @ pfIl+08, 17 SAY ":" STYLE "BT"
 @ pfIl+02, 03 SAY "ESC" STYLE "BT"
 @ pfIl+03, 03 SAY "F10" STYLE "BT"
 @ pfIl+04, 03 SAY "F1" STYLE "BT"
 @ pfIl+05, 03 SAY "F6" STYLE "BT"
 @ pfIl+06, 03 SAY "F7" STYLE "BT"
 @ pfIl+07, 03 SAY "F9" STYLE "BT"
 @ pfIl+08, 03 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+09, 03 SAY "CTRL ->," STYLE "BT"
 @ pfIl+10, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+02, 19 SAY "Regresar al Menú Principal"
 @ pfIl+03, 19 SAY "Cerrar y regresar a Windows"
 @ pfIl+04, 19 SAY "Ayuda del Programa"
 @ pfIl+05, 19 SAY "Cambio de Orden de Consulta"
 @ pfIl+06, 19 SAY "Ver Tipos de Guías"
 @ pfIl+07, 19 SAY "Buscar palabra o frase dentro del Comentario o Pedido"
 @ pfIl+08, 19 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+09, 19 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 DO dvA_2700a IN PAC2700A
 SET READBORDER OFF
 RELEASE vcDg, icDg, ucDg, ccDg, vdCc, idCc, udCc, cdCc, ctP0, ctP1, ctP2,  ;
         ctI1, ctI2
 RELEASE xtEc, xnTe, xmOn, cdI1, cmE1, caN1, cdEs, cdCr, ccUv, cnUv, ccUc,  ;
         cnUc, clA1
 RELEASE clA2, caN1, caN2, vsGi, vnGi, ceSp, cmEd, vgUi, vfB2, vfB3, vcB2,  ;
         vcB3, vsWw
 RELEASE vcL0, ccOd
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
 DO deL_file2 WITH "3", "S"
 RELEASE ntM1, ntM2, ntM3
ENDPROC
*
