 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO taB_entradas IN PUX0002A
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
 INDEX ON f2700tdo+f2700ser+f2700doc TAG f2700doc
 INDEX ON UPPER(f2700cm1)+f2700tdo+f2700ser+f2700doc TAG f2700cm1
 INDEX ON SUBSTR(DTOC(f2700fem), 7, 4)+SUBSTR(DTOC(f2700fem), 4, 2)+ ;
       SUBSTR(DTOC(f2700fem), 1, 2)+f2700tdo+f2700ser+f2700doc TAG f2700fem
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
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
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
 SET ORDER TO F2700FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO BOTTOM
 IF EOF()
      STORE "Archivo de Guías de Entrada no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
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
 SET ORDER TO F2701DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
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
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2703", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2703DOC
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
 SET ORDER TO F2800DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
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
 SET ORDER TO F2801COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2910", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Orden
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2910DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "2911", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Orden
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2911DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
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
 SELECT 14
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
 SELECT 15
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
 SELECT 16
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
 SELECT 17
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
 SELECT 18
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
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "9217", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9217NTI
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Entradas a Almacén vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      DO deL_file1
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "9226", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Monedas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9226COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 21
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
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
 STORE 00 TO meRr
 DO vaR_2700a
 PUBLIC xsOr, csOr, xoRd, coRd, vcOp, voPc, viM1, veSp, vpQt, vnUm, caNc,  ;
        vnUc, vrAz
 PUBLIC vmDd, cmD1, cmD2, cdE1, cdE2, cdE3, cdE4, cnU1, cnU2, vc01, vc02,  ;
        ctP1, xtPo
 PUBLIC ctI1, vsGs, vnGs, vcOs, ccOs
 PUBLIC vpAn_14, vpAn_15
 STORE "GI" TO itDo, utDo
 SELECT caB_ingr
 GOTO BOTTOM
 DO muE_2700b IN PAC2700B WITH "F", "v"
 STORE 01 TO meRr
 DO orD_2700b IN PAC2700B
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 STORE 00 TO meRr
 SET READBORDER ON
 DO p00_2700a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2700a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2700a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2700a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2700a
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
                DO tiT_2700a
           CASE mkEy=k_F7
                DO tpO_2700a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE wtPo$"13"
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
                DO paC2700b
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
PROCEDURE Opc_2700a
 DO rs2_2700a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2700a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_2700a
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
                DO hl2_2700a
           CASE mkEy=k_F12
                DO rs1_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_2700a
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
                SELECT caB_ingr
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2700cm1)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2700ped)))<>0
                          DO muE_2700a
                          DO grA_2700a
                          SELECT caB_ingr
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
      DO paL_2700a
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
PROCEDURE Pal_2700a
 STORE k_Enter TO mkEy
 DO coLbln
 DO CASE
      CASE mrEs="3"
           @iFIL+1.8,mCO0+63.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      CASE mrEs="4"
           @iFIL+1.8,mCO0+83.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      OTHERWISE
           @iFIL+1.8,mCO0+93.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
 ENDCASE
 SET CURSOR ON
 READ
 SET CURSOR OFF
ENDPROC
*
PROCEDURE Op1_2700a
 PARAMETER ptPo
 STORE 1 TO vsW1
 SELECT teMporal
 ZAP
 REINDEX
 SELECT caB_ingr
 GOTO TOP
 DO coLsc3
 DO WHILE  .NOT. EOF()
      DO CASE
           CASE mrEs="3"
                @iFIL,mCO0+072.1 Say F2700TDO+":"+F2700SER+"-"+F2700DOC Font "&mLetAri",9 Style "NQ" Size 1,18.5
           CASE mrEs="4"
                @iFIL,mCO0+092.1 Say F2700TDO+":"+F2700SER+"-"+F2700DOC Font "&mLetAri",9 Style "NQ" Size 1,18.5
           OTHERWISE
                @iFIL,mCO0+112.1 Say F2700TDO+":"+F2700SER+"-"+F2700DOC Font "&mLetAri",9 Style "NQ" Size 1,18.5
      ENDCASE
      IF f2700tip=vtIp
           DO CASE
                CASE vsW1=1
                     DO muE_2700a
                     DO grA_2700a
                CASE vsW1=2 .AND. (AT(UPPER(ALLTRIM(vpAl)),  ;
                     UPPER(ALLTRIM(f2700cm1)))<>0 .OR.  ;
                     AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2700ped)))<>0)
                     DO muE_2700a
                     DO grA_2700a
           ENDCASE
      ENDIF
      SELECT caB_ingr
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
                     SELECT caB_ingr
                CASE vsW1=2
                     SELECT teMporal
           ENDCASE
           DO orD_2700b IN PAC2700B
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 00 TO meRr
           GOTO TOP
           DO paN_2700b IN PAC2700B
           DO muE_2700b IN PAC2700B WITH "i", "v"
           STORE vsW1 TO csW1
           STORE ifIl TO vfIl
 ENDCASE
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say AllTrim(vNTI)+" "+vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_2700a
 STORE f2700tdo TO xtDo
 STORE f2700ser TO xsEr
 STORE f2700doc TO xdOc
 STORE f2700fem TO xfEm
 STORE f2700tip TO xtIp
 STORE f2700nti TO xnTi
 STORE f2700tpp TO xtPp
 STORE f2700cm1 TO xcM1
 STORE f2700sor TO xsOr
 STORE f2700ord TO xoRd
 STORE f2700ped TO xpEd
 STORE f2700cos TO xcOs
 STORE f2700td1 TO xtD1
 STORE f2700sr1 TO xsR1
 STORE f2700do1 TO xdO1
 STORE f2700alm TO xaLm
 STORE f2700est TO xeSt
 STORE f2700usu TO xuSu
 STORE f2700dat TO xdAt
 STORE f2700tim TO xtIm
 STORE f2700maq TO xmAq
ENDPROC
*
PROCEDURE Gra_2700a
 SELECT teMporal
 APPEND BLANK
 REPLACE f2700tdo WITH xtDo
 REPLACE f2700ser WITH xsEr
 REPLACE f2700doc WITH xdOc
 REPLACE f2700fem WITH xfEm
 REPLACE f2700tip WITH xtIp
 REPLACE f2700nti WITH xnTi
 REPLACE f2700tpp WITH xtPp
 REPLACE f2700cm1 WITH xcM1
 REPLACE f2700sor WITH xsOr
 REPLACE f2700ord WITH xoRd
 REPLACE f2700ped WITH xpEd
 REPLACE f2700cos WITH xcOs
 REPLACE f2700td1 WITH xtD1
 REPLACE f2700sr1 WITH xsR1
 REPLACE f2700do1 WITH xdO1
 REPLACE f2700alm WITH xaLm
 REPLACE f2700est WITH xeSt
 REPLACE f2700usu WITH xuSu
 REPLACE f2700dat WITH xdAt
 REPLACE f2700tim WITH xtIm
 REPLACE f2700maq WITH xmAq
ENDPROC
*
PROCEDURE Lin_2700a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+18.9 TO pfIn, mcO0+18.9
 @ piNi, mcO0+23.7 TO pfIn, mcO0+23.7
 DO CASE
      CASE mrEs$"34"
           @ piNi, mcO0+099.7 TO pfIn, mcO0+099.7
           @ piNi, mcO0+112.9 TO pfIn, mcO0+112.9
           @ piNi, mcO0+149.5 TO pfIn, mcO0+149.5
           @ piNi, mcO0+178.8 TO pfIn, mcO0+178.8
           IF vsW2=1
                @ piNi, mcO0+86.4 TO pfIn, mcO0+86.4
           ENDIF
           IF mrEs="4"
                @ piNi, mcO0+200.1 TO pfIn, mcO0+200.1
           ENDIF
      OTHERWISE
           @ piNi, mcO0+099.9 TO pfIn, mcO0+099.9
           @ piNi, mcO0+113.1 TO pfIn, mcO0+113.1
           @ piNi, mcO0+156.7 TO pfIn, mcO0+156.7
           @ piNi, mcO0+186.0 TO pfIn, mcO0+186.0
           @ piNi, mcO0+207.4 TO pfIn, mcO0+207.4
           IF vsW2=1
                @ piNi, mcO0+86.4 TO pfIn, mcO0+86.4
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Li1_2700a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+3.2 TO pfIn, mcO0+3.2
 @ piNi, mcO0+8.1 TO pfIn, mcO0+8.1
 DO CASE
      CASE mrEs="4"
           @ piNi, mcO0+206.7 TO pfIn, mcO0+206.7
      CASE mrEs>"4"
           @ piNi, mcO0+214.0 TO pfIn, mcO0+214.0
 ENDCASE
ENDPROC
*
PROCEDURE P00_2700a
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
 DO CASE
      CASE mrEs$"34"
           STORE mcO0+113.6 TO vcB1
      OTHERWISE
           STORE mcO0+113.8 TO vcB1
 ENDCASE
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Guías de Entrada"
      CASE wtPo="2"
           DO tiT_0000a WITH "Anulación de Guías de Entrada"
      CASE wtPo="3"
           DO tiT_0000a WITH  ;
              "Consulta de Guías de Entrada Valorizadas/Poner Costos"
 ENDCASE
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO tiT_2700a
 DO p01_2700a WITH "2700"
 DO p02_2700a
 DO prEsiona WITH "1", "CONSU3", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Define Popup vTB1 from vFB1+1.1,vCB1-.6 to fFIL+1,vCB1+50 Font "&mLetCou",11 Style "NQ" Prompt Field F9217NTI+" ["+F9217TIP+"]" Scroll Color Scheme 3 Footer "TIPOS DE ENTRADAS"
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
PROCEDURE P01_2700a
 PARAMETER ppRg
 PRIVATE pnOm
 DO CASE
      CASE ppRg="2700"
           STORE "Entrada" TO pnOm
      CASE ppRg="2800"
           STORE "Salida" TO pnOm
 ENDCASE
 DO coLsc3
 @ ifIl-1.6, mcO0-0.5 TO ifIl-0.1, mcO0+muCo+0.3
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO liN_2700a IN PAC2700A WITH ifIl-1.5, ffIl+1.2
 DO li1_2700a IN PAC2700A WITH ifIl-0.2, ffIl+1.2
 DO coLscz
 @iFIL-1.3,mCO0      Say "Número" Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+19.7 Say "Est"    Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE mrEs="3"
           @iFIL-1.3,mCO0+048.5 Say "Comentario"         Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+101.0 Say "F.Emisión"          Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+122.0 Say "Tipo de "+pNOM      Font "&mLetAri",9 Style "BQ"
           DO CASE
                CASE wtPo="3"
                     @iFIL-1.3,mCO0+159.2 Say "Document"   Font "&mLetAri",9 Style "BQ"
                     @iFIL-1.3,mCO0+184.4 Say "Costo"      Font "&mLetAri",9 Style "BQ"
                OTHERWISE
                     @iFIL-1.3,mCO0+159.2 Say "Usuario"    Font "&mLetAri",9 Style "BQ"
                     @iFIL-1.3,mCO0+183.4 Say "Fecha/Hora" Font "&mLetAri",9 Style "BQ"
           ENDCASE
      CASE mrEs="4"
           @iFIL-1.3,mCO0+048.5 Say "Comentario"         Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+101.0 Say "F.Emisión"          Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+122.0 Say "Tipo de "+pNOM      Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+220.0 Say "Almacén"            Font "&mLetAri",9 Style "BQ"
           DO CASE
                CASE wtPo="3"
                     @iFIL-1.3,mCO0+159.2 Say "Document"   Font "&mLetAri",9 Style "BQ"
                     @iFIL-1.3,mCO0+184.4 Say "Costo"      Font "&mLetAri",9 Style "BQ"
                OTHERWISE
                     @iFIL-1.3,mCO0+159.2 Say "Usuario"    Font "&mLetAri",9 Style "BQ"
                     @iFIL-1.3,mCO0+183.4 Say "Fecha/Hora" Font "&mLetAri",9 Style "BQ"
           ENDCASE
      OTHERWISE
           @iFIL-1.3,mCO0+048.5 Say "Comentario"         Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+101.0 Say "F.Emisión"          Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+125.0 Say "Tipo de "+pNOM      Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+230.0 Say "Almacén"            Font "&mLetAri",9 Style "BQ"
           DO CASE
                CASE wtPo="3"
                     @iFIL-1.3,mCO0+166.2 Say "Document"   Font "&mLetAri",9 Style "BQ"
                     @iFIL-1.3,mCO0+191.4 Say "Costo"      Font "&mLetAri",9 Style "BQ"
                OTHERWISE
                     @iFIL-1.3,mCO0+166.2 Say "Usuario"    Font "&mLetAri",9 Style "BQ"
                     @iFIL-1.3,mCO0+190.4 Say "Fecha/Hora" Font "&mLetAri",9 Style "BQ"
           ENDCASE
 ENDCASE
 DO CASE
      CASE vsW2=1
           @iFIL-1.3,mCO0+89.1 Say "Pedido" Font "&mLetAri",9 Style "BQ"
      OTHERWISE
           @iFIL-1.3,mCO0+89.1 Say " "      Font "&mLetAri",9 Style "BQ" Size 1,8
 ENDCASE
 RELEASE pnOm
ENDPROC
*
PROCEDURE P02_2700a
 STORE mfI0+6 TO ifFs
 STORE INT(ffFs-ifFs) TO ifFs
 STORE ffFs-ifFs TO ifFs
 IF vsW3>1
      STORE ifFs-7 TO ifFs
 ENDIF
ENDPROC
*
PROCEDURE Tit_2700a
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Comentario:"       Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+16 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
           @iFIL-4,mCO0+22 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+20 Get vCM1 Font "&mLetRom",11 Style "NQ" Size 1,26 Pict "@S29"     Color ,&mColBlN
      CASE vsW0=3
           @iFIL-4,mCO0+29 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5               Color ,&mColBlN
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Clp_2700a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68.00
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77.00
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95.00
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1-0.135 .AND. mfIl<=vfB1+1.7 .AND. mcCc>=vcB1-0.5  ;
           .AND. mcCc<=vcB1+1.9
           STORE k_F7 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2700a
 DO p00_2700a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=1
                SELECT caB_ingr
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_2700b IN PAC2700B WITH "i"
      DO muE_2700b IN PAC2700B WITH "v", "c"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f2700tdo+f2700ser+f2700doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2700b IN PAC2700B WITH "v", "i"
           DO muE_2700b IN PAC2700B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_2700b IN PAC2700B WITH "i"
      DO paN_2700b IN PAC2700B
      DO muE_2700b IN PAC2700B WITH "c", "v"
      DO seE_2700b IN PAC2700B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2700a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="3"
           @ ifIl+0.8, mcO0+061 TO ifIl+4.0, mcO0+139.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+060 TO ifIl+3.5, mcO0+138.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+063 Say "Digitar el Comentario o Pedido a buscar en forma parcial o total:" Font "&mLetAri",9 Style "NQ"
      CASE mrEs="4"
           @ ifIl+0.8, mcO0+081 TO ifIl+4.0, mcO0+159.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+080 TO ifIl+3.5, mcO0+158.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+083 Say "Digitar el Comentario o Pedido a buscar en forma parcial o total:" Font "&mLetAri",9 Style "NQ"
      OTHERWISE
           @ ifIl+0.8, mcO0+091 TO ifIl+4.0, mcO0+169.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+090 TO ifIl+3.5, mcO0+168.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+093 Say "Digitar el Comentario o Pedido a buscar en forma parcial o total:" Font "&mLetAri",9 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE Tpo_2700a
 PARAMETER ptPo
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Entrada registrados..." TO mmSj
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
      STORE f9217tip TO vtIp
      STORE f9217nti TO vnTi
      DO op1_2700a WITH ptPo
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caB_ingr
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Var_2700a
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, csW4, usW4, vsXx, vsWz,  ;
        vpAl, cpAl
 PUBLIC cpA1, vcO1, vlIn, vpAg, vxLs, vfB1, vcB1, vtB1, vfIl, ifIl, ufIl,  ;
        cfIl, ffIl
 PUBLIC vfFs, ifFs, ufFs, cfFs, ffFs, vfFr, ifFr, ufFr, cfFr, ffFr, vrEc,  ;
        irEc, urEc
 PUBLIC crEc, xrEc, vrCc, irCc, urCc, crCc, vpEd, xpEd, ipEd, upEd, cpEd,  ;
        vsEc, isEc
 PUBLIC usEc, csEc, vtDo, itDo, utDo, xtDo, ctDo, xtD1, vsEr, isEr, usEr,  ;
        xsEr, csEr
 PUBLIC xsR1, vdOc, idOc, udOc, xdOc, cdOc, xdO1, vcM1, icM1, ucM1, xcM1,  ;
        ccM1, vfEm
 PUBLIC ifEm, ufEm, xfEm, cfEm, xtPp, ctPp, xtIp, vtIp, xnTi, vnTi, xcOs,  ;
        xaLm, xeSt
 PUBLIC xuSu, xdAt, xtIm, xmAq, vcOd, xcOd, vtPo, ctPo, vsLd, vsLc, vcAj,  ;
        cdIa, xdIa
 PUBLIC cmEs, xmEs, caNo, xaNo, clAr, vpD1, vsRr, vpIe, xpIe, vpLa, tpLa,  ;
        vcTd, xcTd
 PUBLIC vcAn, ccAn, tcAn, veNt, vnAl, viT1, vdEs, vnUv, xoPc, xuN1, xuN2,  ;
        xmLa, xmAn
 PUBLIC tmAn, xp11, xp12, xp21, xp22, xcA1, xcA2, xcA3, xcA4, xpOr, xcMm,  ;
        xcMp, xvCs
 PUBLIC vlA1, vaN1
 PUBLIC vpAn_11, vpAn_12, vpAn_13, vpAn_99
 STORE CTOD("  /  /    ") TO ifEm, ufEm
 STORE msEr(03) TO isEr, usEr
 STORE SPACE(07) TO idOc, udOc
 STORE SPACE(70) TO vcM1, icM1, ucM1, vpAl
 STORE 01 TO vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4
 STORE 88 TO mpAg
 STORE 00 TO tcAn, vsWz, tmAn
 STORE 99 TO mkEy
 STORE " " TO cpA1
 DO CASE
      CASE mrEs="3" .AND. wtPo<"3"
           STORE 2 TO usW4
      CASE mrEs="3"
           STORE 6 TO usW4
      CASE wtPo<"3"
           STORE 1 TO usW4
      OTHERWISE
           STORE 5 TO usW4
 ENDCASE
ENDPROC
*
PROCEDURE DVa_2700a
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, csW4, usW4, vsXx, vsWz,  ;
         vpAl, cpAl
 RELEASE cpA1, vcO1, vlIn, vpAg, vxLs, vfB1, vcB1, vtB1, vfIl, ifIl, ufIl,  ;
         cfIl, ffIl
 RELEASE vfFs, ifFs, ufFs, cfFs, ffFs, vfFr, ifFr, ufFr, cfFr, ffFr, vrEc,  ;
         irEc, urEc
 RELEASE crEc, xrEc, vrCc, irCc, urCc, crCc, vpEd, xpEd, ipEd, upEd, cpEd,  ;
         vsEc, isEc
 RELEASE usEc, csEc, vtDo, itDo, utDo, xtDo, ctDo, xtD1, vsEr, isEr, usEr,  ;
         xsEr, csEr
 RELEASE xsR1, vdOc, idOc, udOc, xdOc, cdOc, xdO1, vcM1, icM1, ucM1, xcM1,  ;
         ccM1, vfEm
 RELEASE ifEm, ufEm, xfEm, cfEm, xtPp, ctPp, xtIp, vtIp, xnTi, vnTi, xcOs,  ;
         xaLm, xeSt
 RELEASE xuSu, xdAt, xtIm, xmAq, vcOd, xcOd, vtPo, ctPo, vsLd, vsLc, vcAj,  ;
         cdIa, xdIa
 RELEASE cmEs, xmEs, caNo, xaNo, clAr, vpD1, vsRr, vpIe, xpIe, vpLa, tpLa,  ;
         vcTd, xcTd
 RELEASE vcAn, ccAn, tcAn, veNt, vnAl, viT1, vdEs, vnUv, xoPc, xuN1, xuN2,  ;
         xmLa, xmAn
 RELEASE tmAn, xp11, xp12, xp21, xp22, xcA1, xcA2, xcA3, xcA4, xpOr, xcMm,  ;
         xcMp, xvCs
 RELEASE vlA1, vaN1
 RELEASE vpAn_11, vpAn_12, vpAn_13, vpAn_99
ENDPROC
*
PROCEDURE Hl1_2700a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo$"13"
           @ pfIl+0, 2 SAY  ;
             "Esta consulta muestra todos los Guías de Entrada en general; incluyendo"
           @ pfIl+1, 2 SAY  ;
             "los que están anulados. Se puede imprimir la Guía de Entrada. Esta es la"
           @ pfIl+2, 2 SAY "parte de la Cabecera de la Consulta."
      CASE wtPo="2"
           @ pfIl+0, 2 SAY  ;
             "La anulación trabaja como la Consulta y muestra todas las Guías de Entra-"
           @ pfIl+1, 2 SAY  ;
             "da en general; incluyendo los que están anuladas. Un documento anulado,"
           @ pfIl+2, 2 SAY  ;
             "no se puede activar nuevamente. Esta es la Cabecera de la Consulta."
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
PROCEDURE Hl2_2700a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del Comentario o Pedido. Si la"
 @ pfIl+01, 02 SAY  ;
   "palabra o frase no se encuentra contenida en ninguno de estos, saldrá"
 @ pfIl+02, 02 SAY  ;
   "un mensaje, en caso de encontrase se regresará a la Cabecera."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 13 SAY "ESC" STYLE "BT"
 @ pfIl+07, 13 SAY "F10" STYLE "BT"
 @ pfIl+08, 13 SAY "F1" STYLE "BT"
 @ pfIl+09, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+06, 23 SAY "Regresar a Cabecera"
 @ pfIl+07, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 23 SAY "Ayuda del Programa"
 @ pfIl+09, 23 SAY "Buscar palabra y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 DO dvA_2700a
 SET READBORDER OFF
 RELEASE xsOr, csOr, xoRd, coRd, vcOp, voPc, viM1, veSp, vpQt, vnUm, caNc,  ;
         vnUc, vrAz
 RELEASE vmDd, cmD1, cmD2, cdE1, cdE2, cdE3, cdE4, cnU1, cnU2, vc01, vc02,  ;
         ctP1, xtPo
 RELEASE ctI1, vsGs, vnGs, vcOs, ccOs
 RELEASE vpAn_14, vpAn_15
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
