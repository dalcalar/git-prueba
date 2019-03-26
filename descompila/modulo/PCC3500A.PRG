 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE 01 TO meRr
 DO taB_cargos_cli IN PUX0003A
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
 INDEX ON f3500tdo+f3500ser+f3500doc TAG f3500doc
 INDEX ON f3500est+f3500tdo+f3500ser+f3500doc TAG f3500pen
 INDEX ON f3500est+SUBSTR(DTOC(f3500fem), 7, 4)+SUBSTR(DTOC(f3500fem), 4,  ;
       2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500fe2
 INDEX ON f3500est+SUBSTR(DTOC(f3500fve), 7, 4)+SUBSTR(DTOC(f3500fve), 4,  ;
       2)+SUBSTR(DTOC(f3500fve), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500fv2
 INDEX ON f3500est+UPPER(f3500nom)+f3500cli+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500no2
 INDEX ON f3500est+UPPER(f3500nti)+f3500tit+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nt2
 INDEX ON f3500est+UPPER(f3500nve)+f3500ven+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nv2
 CLOSE DATABASES
 CLOSE INDEXES
 DO tm2_3500a IN PCC3500A
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
 INDEX ON ftM2ano+ftM2mes+ftM2dia+ftM2ttt+ftM2ser+ftM2num TAG ftM2doc
 CLOSE DATABASES
 CLOSE INDEXES
 DO tm3_3500a
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
           DO deL_file2 WITH "2", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 CLOSE DATABASES
 DO tm4_3500a
 STORE "TM01"+ntM4+meXt TO mdBf
 DO WHILE .T.
      ntM4 = STRTRAN(STR(VAL(ntM4)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM4+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM4="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "N"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500PEN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 SEEK " "
 IF EOF()
      STORE "No hay Documentos Pendientes por Cobrar..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3501", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ctas_Ini_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3501DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ctas_Total_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3511DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3530", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3530NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3531DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursales
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Copia
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500PEN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Pagos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_3500a
 STORE " " TO veSt
 SELECT peNd_vtas
 STORE f3500tdo TO dtDo
 STORE f3500ser TO dsEr
 STORE f3500doc TO ddOc
 SET NEAR ON
 SEEK veSt+"ZZ"
 SET NEAR OFF
 IF EOF()
      GOTO BOTTOM
 ELSE
      SKIP -1
 ENDIF
 STORE f3500tdo TO htDo
 STORE f3500ser TO hsEr
 STORE f3500doc TO hdOc
 DO muE_3500b IN PCC3500B WITH "F", "v"
 SET READBORDER ON
 DO p00_3500a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO toT_3500a IN PCC3500A
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3500a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3500a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3500a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3500a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=6
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                DO tiT_3500a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_3500a IN PCC3500A WITH "3500"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                DO CASE
                     CASE vsW0=4
                          STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
                          STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
                          STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
                     CASE vsW0=5
                          STORE SUBSTR(DTOC(vfVe), 7, 4) TO vaNv
                          STORE SUBSTR(DTOC(vfVe), 4, 2) TO vmEv
                          STORE SUBSTR(DTOC(vfVe), 1, 2) TO vdIv
                ENDCASE
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_vtas
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                SEEK veSt
                IF BOF() .OR. EOF() .OR. f3500est<>veSt
                     STORE "No hay datos registrados..." TO mmSj
                ELSE
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
                     DO pcC3500b
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
                ENDIF
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
                @iFIL-4,mCO0+20.0 Get  vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!"      Color ,&mColBlN
                @iFIL-4,mCO0+26.3 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "!!!"     Color ,&mColBlN
                @iFIL-4,mCO0+33.3 Get  vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @iFIL-4,mCO0+14.0 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,32,70
           CASE vsW0=3
                @iFIL-4,mCO0+14.0 Edit vNTI Font "&mLetRom",11 Style "NQ" Size 1,32,70
           CASE vsW0=4
                @iFIL-4,mCO0+30.5 Get  vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
           CASE vsW0=5
                @iFIL-4,mCO0+35.5 Get  vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
           CASE vsW0=6
                @iFIL-4,mCO0+16.5 Edit vNVE Font "&mLetRom",11 Style "NQ" Size 1,30,50
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF vsW0=1
           DO coLbln
           vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
           @iFIL-4,mCO0+33.3 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999"
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_3500a
 PARAMETER ppRg
 DO rs2_1101a IN PVC1101A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           IF ppRg="3500"
                DO reS_3500a IN PCC3500A
           ELSE
                DO reS_3501a IN PCC3501A
           ENDIF
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_1101a IN PVC1101A
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
                     77 .AND. mcCc<=mmC1+85.80
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
                DO hl2_3500a IN PCC3500A
           CASE mkEy=k_F12
                IF ppRg="3500"
                     DO reS_3500a IN PCC3500A
                ELSE
                     DO reS_3501a IN PCC3501A
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_1101a IN PVC1101A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT coPia
                ZAP
                REINDEX
                SELECT peNd_vtas
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                IF ppRg="3500"
                     SEEK veSt
                ENDIF
                STORE 00 TO vtO1, vtO2, vaC1, vaC2, viN1, viN2
                STORE 00 TO vfA1, vfA2, vbO1, vbO2, vnP1, vnP2
                STORE 00 TO vlE1, vlE2, vnD1, vnD2, vnC1, vnC2
                STORE 99 TO mkEy
                SET ESCAPE ON
                ON ESCAPE STORE 9000 TO MKEY
                WAIT WINDOW NOWAIT  ;
                     "L E Y E N D O... Presionar ESC para Salir"+CHR(13)+ ;
                     "Hora Inicial de Lectura: "+TIME()
                DO WHILE  .NOT. EOF()
                     IF mkEy=9000
                          RETURN
                     ENDIF
                     IF ppRg="3500" .AND. f3500est<>veSt
                          EXIT
                     ENDIF
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f3500nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3500nti)))<>0
                          DO muE_3500a IN PCC3500A
                          DO grA_3500a IN PCC3500A
                          DO CASE
                               CASE f3500mon=1 .AND. (f3500tdo="NC" .OR.  ;
                                    f3500tdo="N1" .OR. f3500tdo="N3")
                                    STORE vtO1-f3500tot TO vtO1
                                    STORE vaC1-f3500acu TO vaC1
                                    STORE viN1-f3500int TO viN1
                               CASE f3500mon=2 .AND. (f3500tdo="NC" .OR.  ;
                                    f3500tdo="N1" .OR. f3500tdo="N3")
                                    STORE vtO2-f3500tot TO vtO2
                                    STORE vaC2-f3500acu TO vaC2
                                    STORE viN2-f3500int TO viN2
                               CASE f3500mon=1
                                    STORE vtO1+f3500tot TO vtO1
                                    STORE vaC1+f3500acu TO vaC1
                                    STORE viN1+f3500int TO viN1
                               CASE f3500mon=2
                                    STORE vtO2+f3500tot TO vtO2
                                    STORE vaC2+f3500acu TO vaC2
                                    STORE viN2+f3500int TO viN2
                          ENDCASE
                          DO CASE
                               CASE (f3500tdo="FA" .OR. f3500tdo="FE"  ;
                                    .OR. f3500tdo="FC") .AND. f3500mon=1
                                    STORE vfA1+(f3500tot+f3500int- ;
                                     f3500acu) TO vfA1
                               CASE (f3500tdo="FA" .OR. f3500tdo="FE"  ;
                                    .OR. f3500tdo="FC") .AND. f3500mon=2
                                    STORE vfA2+(f3500tot+f3500int- ;
                                     f3500acu) TO vfA2
                               CASE (f3500tdo="BO" .OR. f3500tdo="BE"  ;
                                    .OR. f3500tdo="BC") .AND. f3500mon=1
                                    STORE vbO1+(f3500tot+f3500int- ;
                                     f3500acu) TO vbO1
                               CASE (f3500tdo="BO" .OR. f3500tdo="BE"  ;
                                    .OR. f3500tdo="BC") .AND. f3500mon=2
                                    STORE vbO2+(f3500tot+f3500int- ;
                                     f3500acu) TO vbO2
                               CASE f3500tdo="NP" .AND. f3500mon=1
                                    STORE vnP1+(f3500tot+f3500int- ;
                                     f3500acu) TO vnP1
                               CASE f3500tdo="NP" .AND. f3500mon=2
                                    STORE vnP2+(f3500tot+f3500int- ;
                                     f3500acu) TO vnP2
                               CASE f3500tdo="LE" .AND. f3500mon=1
                                    STORE vlE1+(f3500tot+f3500int- ;
                                     f3500acu) TO vlE1
                               CASE f3500tdo="LE" .AND. f3500mon=2
                                    STORE vlE2+(f3500tot+f3500int- ;
                                     f3500acu) TO vlE2
                               CASE (f3500tdo="ND" .OR. f3500tdo="N2"  ;
                                    .OR. f3500tdo="N4") .AND. f3500mon=1
                                    STORE vnD1+(f3500tot+f3500int- ;
                                     f3500acu) TO vnD1
                               CASE (f3500tdo="ND" .OR. f3500tdo="N2"  ;
                                    .OR. f3500tdo="N4") .AND. f3500mon=2
                                    STORE vnD2+(f3500tot+f3500int- ;
                                     f3500acu) TO vnD2
                               CASE (f3500tdo="NC" .OR. f3500tdo="N1"  ;
                                    .OR. f3500tdo="N3") .AND. f3500mon=1
                                    STORE vnC1+(f3500tot+f3500int- ;
                                     f3500acu) TO vnC1
                               CASE (f3500tdo="NC" .OR. f3500tdo="N1"  ;
                                    .OR. f3500tdo="N3") .AND. f3500mon=2
                                    STORE vnC2+(f3500tot+f3500int- ;
                                     f3500acu) TO vnC2
                          ENDCASE
                          SELECT peNd_vtas
                     ENDIF
                     SKIP
                ENDDO
                WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
                = INKEY(0.5)
                WAIT CLEAR
                ON ESCAPE
                SET ESCAPE OFF
                IF mkEy=9000
                     STORE "Proceso Interrumpido..." TO mmSj
                     DO poNmsj
                ELSE
                     SELECT coPia
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE 01 TO vsW1
                          STORE SPACE(70) TO vpAl, cpAl
                          STORE "Palabra no encontrada..." TO mmSj
                          DO poNmsj
                     ELSE
                          STORE 02 TO vsW1
                          STORE 00 TO csW1
                          EXIT
                     ENDIF
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
 DO CASE
      CASE vsW1=1
           SELECT peNd_vtas
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc7
 @mFI0+mUFI,mCO0+11 Say vPAL Size 1,60 Pict "@S65" Font "&mLetRom",9 Style "BQ"
 DO toT_3500a IN PCC3500A
ENDPROC
*
PROCEDURE Tot_3500a
 DO coLsc6
 DO CASE
      CASE vsW1=1
           @fFIL+2.2,vCL5+001.0 Say tTO1+tIN1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+021.6 Say tAC1           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+042.2 Say tTO1+tIN1-tAC1 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+063.8 Say tTO2+tIN2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+084.4 Say tAC2           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+105.0 Say tTO2+tIN2-tAC2 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
      CASE vsW1=2
           @fFIL+2.2,vCL5+001.0 Say vTO1+vIN1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+021.6 Say vAC1           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+042.2 Say vTO1+vIN1-vAC1 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+063.8 Say vTO2+vIN2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+084.4 Say vAC2           Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           @fFIL+2.2,vCL5+105.0 Say vTO2+vIN2-vAC2 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3500a
 STORE f3500tdo TO xtDo
 STORE f3500ser TO xsEr
 STORE f3500doc TO xdOc
 STORE f3500ven TO xvEn
 STORE f3500nve TO xnVe
 STORE f3500tec TO xtEc
 STORE f3500nte TO xnTe
 STORE f3500tit TO xtIt
 STORE f3500nti TO xnTi
 STORE f3500cli TO xcLi
 STORE f3500suc TO xsUc
 STORE f3500ruc TO xrUc
 STORE f3500nom TO xnOm
 STORE f3500tcl TO xtCl
 STORE f3500ntc TO xnTc
 STORE f3500fpa TO xfPa
 STORE f3500nfp TO xnFp
 STORE f3500fem TO xfEm
 STORE f3500pre TO xpRe
 STORE f3500fve TO xfVe
 STORE f3500fca TO xfCa
 STORE f3500mon TO xmOn
 STORE f3500pig TO xpIg
 STORE f3500tot TO xtOt
 STORE f3500acu TO xaCu
 STORE f3500int TO xiNt
 STORE f3500le1 TO xlE1
 STORE f3500can TO xcAn
 STORE f3500com TO xcOm
 STORE f3500est TO xeSt
ENDPROC
*
PROCEDURE Gra_3500a
 SELECT coPia
 APPEND BLANK
 REPLACE f3500tdo WITH xtDo
 REPLACE f3500ser WITH xsEr
 REPLACE f3500doc WITH xdOc
 REPLACE f3500ven WITH xvEn
 REPLACE f3500nve WITH xnVe
 REPLACE f3500tec WITH xtEc
 REPLACE f3500nte WITH xnTe
 REPLACE f3500tit WITH xtIt
 REPLACE f3500nti WITH xnTi
 REPLACE f3500cli WITH xcLi
 REPLACE f3500suc WITH xsUc
 REPLACE f3500ruc WITH xrUc
 REPLACE f3500nom WITH xnOm
 REPLACE f3500tcl WITH xtCl
 REPLACE f3500ntc WITH xnTc
 REPLACE f3500fpa WITH xfPa
 REPLACE f3500nfp WITH xnFp
 REPLACE f3500fem WITH xfEm
 REPLACE f3500pre WITH xpRe
 REPLACE f3500fve WITH xfVe
 REPLACE f3500fca WITH xfCa
 REPLACE f3500mon WITH xmOn
 REPLACE f3500pig WITH xpIg
 REPLACE f3500tot WITH xtOt
 REPLACE f3500acu WITH xaCu
 REPLACE f3500int WITH xiNt
 REPLACE f3500le1 WITH xlE1
 REPLACE f3500can WITH xcAn
 REPLACE f3500com WITH xcOm
 REPLACE f3500est WITH xeSt
ENDPROC
*
PROCEDURE Tit_3500a
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Documento:"            Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Cliente:"              Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Titular:"              Font "&mLetRom",13 Style "BT"
      CASE vsW0=4
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:"     Font "&mLetRom",13 Style "BT"
      CASE vsW0=5
           @iFIL-4,mCO0+0.8 Say "Fecha de Vencimiento:" Font "&mLetRom",13 Style "BT"
      CASE vsW0=6
           @iFIL-4,mCO0+0.8 Say "Vendedor:"             Font "&mLetRom",13 Style "BT"
 ENDCASE
ENDPROC
*
PROCEDURE Get_3500a
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+20.0 Get  vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!"      Color ,&mColBlN
           @iFIL-4,mCO0+26.3 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "!!!"     Color ,&mColBlN
           @iFIL-4,mCO0+33.3 Get  vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+14.0 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,32,70
      CASE vsW0=3
           @iFIL-4,mCO0+14.0 Edit vNTI Font "&mLetRom",11 Style "NQ" Size 1,32,70
      CASE vsW0=4
           @iFIL-4,mCO0+30.5 Get  vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      CASE vsW0=5
           @iFIL-4,mCO0+35.5 Get  vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      CASE vsW0=6
           @iFIL-4,mCO0+16.5 Edit vNVE Font "&mLetRom",11 Style "NQ" Size 1,30,50
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE P00_3500a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 DO maRcos
 STORE mfI0+2 TO mfI0
 STORE mfI0+muFi+1.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl, ffFs
 STORE mfI0+5 TO ifFs, ufFs, vfFs
 STORE ifFs+INT(ffFs-ifFs) TO ffFs
 STORE ffFs-1 TO ffFs
 STORE mcO0+46.1 TO vcL1
 DO CASE
      CASE mrEs="3"
           STORE mcO0+142.9 TO vcL2
           STORE mcO0+160.4 TO vcL3
           STORE mcO0+177.7 TO vcL4
           STORE mcO0+074.6 TO vcL5
           STORE mcO0+146.5 TO vcL6
           STORE mcO0+085.0 TO vcLa
           STORE mcO0+111.0 TO vcLb
           STORE mcO0+140.0 TO vcLc
      CASE mrEs="4"
           STORE mcO0+194.9 TO vcL2
           STORE mcO0+212.4 TO vcL3
           STORE mcO0+229.7 TO vcL4
           STORE mcO0+126.2 TO vcL5
           STORE mcO0+198.6 TO vcL6
           STORE mcO0+105.0 TO vcLa
           STORE mcO0+151.0 TO vcLb
           STORE mcO0+192.0 TO vcLc
      OTHERWISE
           STORE mcO0+211.9 TO vcL2
           STORE mcO0+229.4 TO vcL3
           STORE mcO0+246.7 TO vcL4
           STORE mcO0+142.2 TO vcL5
           STORE mcO0+215.6 TO vcL6
           STORE mcO0+115.0 TO vcLa
           STORE mcO0+161.0 TO vcLb
           STORE mcO0+202.0 TO vcLc
 ENDCASE
 STORE mcO0+muCo-16.4 TO vcLf
 STORE vcLf-05.6 TO vcLe
 STORE vcLe-09.2 TO vcLd
 DO tiT_0000a WITH "Cuentas por Cobrar detalladas"
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO tiT_3500a
 DO liN_3500a IN PCC3500A WITH ifIl-1.5, ffIl+1.1
 DO li1_3500a IN PCC3500A WITH ifIl-0.2, ffIl+1.1
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO coLsc1
 @iFIL-1.3,mCO0+02.0 Say "Documento" Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+21.5 Say "Emisión"   Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+34.5 Say "Vencim."   Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,vCL2-04.0 Say "Mn"        Font "&mLetAri",9 Style "NT"
 DO p01_3500a IN PCC3500A
 DO coLsc6
 @ ffIl+1.1, vcL5+000.3 TO ffIl+3.5, vcL5+125.2 PATTERN 1 COLOR SCHEME 6
 @ ffIl+1.1, vcL5+021.0 TO ffIl+3.5, vcL5+041.7
 @ ffIl+1.1, vcL5+062.2 TO ffIl+3.5, vcL5+063.2
 @ ffIl+1.1, vcL5+062.6 TO ffIl+3.5, vcL5+062.6
 @ ffIl+1.1, vcL5+083.8 TO ffIl+3.5, vcL5+104.6
 @fFIL+1.2,vCL5+005.5 Say "Totales S/."   Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,vCL5+024.6 Say "Pagos A/C S/." Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,vCL5+046.0 Say "Saldos S/."    Font "&mLetAri",9 Style "NT" Color 5
 @fFIL+1.2,vCL5+066.0 Say "Totales US$"   Font "&mLetAri",9 Style "NT" Color 1
 @fFIL+1.2,vCL5+085.8 Say "Pagos A/C US$" Font "&mLetAri",9 Style "NT" Color 1
 @fFIL+1.2,vCL5+107.6 Say "Saldos US$"    Font "&mLetAri",9 Style "NT" Color 1
 DO geT_3500a
 DO toT_3500a IN PCC3500A
 DO boT_3500a IN PCC3500A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 @mFI0+mUFI,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,60 Pict "@S65"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE P01_3500a
 PRIVATE pcLi
 DO CASE
      CASE vsW2=1
           STORE "Cliente" TO pcLi
      CASE vsW2=2
           STORE "Titular" TO pcLi
      CASE vsW2=3
           STORE "Vendedor" TO pcLi
      CASE vsW2=4
           STORE "Tipo de Cliente" TO pcLi
      CASE vsW2=5
           STORE "Técnico de Instalación" TO pcLi
      CASE vsW2=6
           STORE "Documentos relacionados" TO pcLi
      CASE vsW2=7
           STORE "Forma de Pago" TO pcLi
      CASE vsW2=8
           STORE "Telefono/correo" TO pcLi
      CASE vsW2=9
           STORE "Direccion" TO pcLi
 ENDCASE
 DO coLsc1
 @iFIL-1.3,vCL1 Say pCLI            Font "&mLetAri",9 Style "NQ" Size 1,30.3 Pict "@S33"
 @iFIL-1.3,vCL2 Say "        Total" Font "&mLetAri",9 Style "NQ" Size 1,16.6
 @iFIL-1.3,vCL3 Say "     a Cuenta" Font "&mLetAri",9 Style "NQ" Size 1,16.6
 @iFIL-1.3,vCL4 Say "        Saldo" Font "&mLetAri",9 Style "NQ" Size 1,16.6
ENDPROC
*
PROCEDURE Bot_3500a
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifIl-3, mcO0+104.4
 @iFIL-2.8,mCO0+106.5 Say Str(vSW2,1,0)+"/9" Font "&mLetRom",9 Style "BT"
ENDPROC
*
PROCEDURE Lin_3500a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+19.4 TO pfIn, mcO0+19.4
 @ piNi, mcO0+32.6 TO pfIn, mcO0+32.6
 @ piNi, vcL1-00.4 TO pfIn, vcL1-00.4
 @ piNi, vcL2-04.6 TO pfIn, vcL2-04.6
 @ piNi, vcL2-00.4 TO pfIn, vcL2-00.4
 @ piNi, vcL3-00.4 TO pfIn, vcL3-00.4
 @ piNi, vcL4-00.4 TO pfIn, vcL4-00.4
 @ piNi, vcL4+17.1 TO pfIn, vcL4+17.1
 RELEASE piNi, pfIn
ENDPROC
*
PROCEDURE Li1_3500a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+03.8 TO pfIn, mcO0+03.8
 @ piNi, mcO0+08.6 TO pfIn, mcO0+08.6
 @ piNi, vcL1+07.2 TO pfIn, vcL1+07.2
 @ piNi, vcL4+20.3 TO pfIn, vcL4+20.3
ENDPROC
*
PROCEDURE Res_3500a
 DO p00_3500a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=1
                SELECT peNd_vtas
           CASE vsW1=2
                SELECT coPia
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3500b IN PCC3500B WITH "v", "c"
      DO seE_3500b IN PCC3500B WITH "i"
      DO WHILE  .NOT. EOF() .AND. f3500est=veSt .AND. vfIl<ffIl+1
           IF f3500tdo+f3500ser+f3500doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3500b IN PCC3500B WITH "v", "c"
           DO muE_3500b IN PCC3500B WITH "v", "i"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3500b IN PCC3500B WITH "i"
      DO paN_3500b IN PCC3500B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_3500b IN PCC3500B WITH "c", "v"
      DO seE_3500b IN PCC3500B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Clp_3500a
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Tm2_3500a
 DIMENSION afIl[25, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2RCC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2RCB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SRL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2LET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DNC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2BAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CTA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NCT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CHE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PAG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
ENDPROC
*
PROCEDURE Tm3_3500a
 DIMENSION afIl[18, 4]
 STORE 1 TO x
 afIl[x, 1] = "TIPO_DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOCUMEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "EMISION"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "VENCIMI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "COD_CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CLIENTE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "COD_TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TITULAR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "COD_VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "VENDEDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOT_SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "INT_SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "ACU_SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "SLD_SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "TOT_USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "INT_USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "ACU_USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "SLD_USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
ENDPROC
*
PROCEDURE Tm4_3500a
 DIMENSION afIl[9, 4]
 STORE 1 TO x
 afIl[x, 1] = "DOCUMEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 19
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FECHA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "GLOSA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "BANCO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CUENTA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "OPERAC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "MONEDA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "T_CAMB"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "PAGO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
ENDPROC
*
PROCEDURE Var_3500a
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vxLs, vpAl, cpAl, vlIn, vpAg, vfIl,  ;
        ifIl, ufIl
 PUBLIC ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vcL1, vcL2, vcL3, vcL4,  ;
        vcL5, vcL6
 PUBLIC vcLa, vcLb, vcLc, vcLd, vcLe, vcLf, vtDo, itDo, utDo, ctDo, xtDo,  ;
        dtDo, htDo
 PUBLIC vsEr, isEr, usEr, csEr, xsEr, dsEr, hsEr, vdOc, idOc, udOc, cdOc,  ;
        xdOc, ddOc
 PUBLIC hdOc, vcLi, icLi, ucLi, ccLi, xcLi, vnOm, inOm, unOm, cnOm, xnOm,  ;
        vtIt, itIt
 PUBLIC utIt, ctIt, xtIt, vnTi, inTi, unTi, cnTi, xnTi, vaNo, iaNo, uaNo,  ;
        caNo, xaNo
 PUBLIC vmEs, imEs, umEs, cmEs, xmEs, vdIa, idIa, udIa, cdIa, xdIa, vaNv,  ;
        iaNv, uaNv
 PUBLIC caNv, xaNv, vmEv, imEv, umEv, cmEv, xmEv, vdIv, idIv, udIv, cdIv,  ;
        xdIv, vvEn
 PUBLIC ivEn, uvEn, cvEn, xvEn, vnVe, inVe, unVe, cnVe, xnVe, vmOn, imOn,  ;
        umOn, cmOn
 PUBLIC xmOn, vsLd, isLd, usLd, csLd, xsLd, vfEm, xfEm, dfEm, hfEm, vfVe,  ;
        xfVe, veSt
 PUBLIC xeSt, xtEc, xnTe, xsUc, xrUc, xtCl, xnTc, xfPa, xnFp, xpRe, xfCa,  ;
        vfCa, xpIg
 PUBLIC xtOt, xaCu, vaCu, xiNt, xlE1, xcAn, xcOm, vpA1, vpA2, vrEn, vaN1,  ;
        vmE1, vdI1
 PUBLIC vtTt, vsR1, vnUm, iaN1, imE1, idI1, itTt, isR1, inUm, caN1, cmE1,  ;
        cdI1, ctTt
 PUBLIC csR1, cnUm, uaN1, umE1, udI1, utTt, usR1, unUm, ttO1, ttO2, taC1,  ;
        taC2, tiN1
 PUBLIC tiN2, vtO1, vtO2, vaC1, vaC2, viN1, viN2, tfA1, tfA2, tbO1, tbO2,  ;
        tnP1, tnP2
 PUBLIC tlE1, tlE2, tnD1, tnD2, tnC1, tnC2, vfA1, vfA2, vbO1, vbO2, vnP1,  ;
        vnP2, vlE1
 PUBLIC vlE2, vnD1, vnD2, vnC1, vnC2, vsIg, voPc, voP1, voP2, csL1, csL2,  ;
        ctT1, ctT2
 PUBLIC vdIr, vdIs, vtL1, vtL2, vtL3, veMa, veM2, veM3
 PUBLIC vpAn_11, vpAn_12, vpAn_99
 STORE SPACE(07) TO idOc
 STORE SPACE(50) TO vnVe
 STORE SPACE(70) TO vnOm, vnTi, vpAl, cpAl
 STORE DATE() TO vfEm, vfVe
 STORE 01 TO vsW0, vsW1, vsW2, voP1, voP2
 STORE 00 TO csW0, csW1
 STORE 00 TO ttO1, ttO2, taC1, taC2, tiN1, tiN2, vtO1, vtO2, vaC1, vaC2,  ;
       viN1, viN2
 STORE 00 TO tfA1, tfA2, tbO1, tbO2, tnP1, tnP2, tlE1, tlE2, tnD1, tnD2,  ;
       tnC1, tnC2
 STORE 00 TO vfA1, vfA2, vbO1, vbO2, vnP1, vnP2, vlE1, vlE2, vnD1, vnD2,  ;
       vnC1, vnC2
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SELECT ctAs_total_vtas
 SUM f3502to1 TO ttO1 ALL FOR (f3502tdo<>"NC" .AND. f3502tdo<>"N1" .AND.  ;
     f3502tdo<>"N3")
 SUM f3502to2 TO ttO2 ALL FOR (f3502tdo<>"NC" .AND. f3502tdo<>"N1" .AND.  ;
     f3502tdo<>"N3")
 SUM f3502ac1 TO taC1 ALL FOR (f3502tdo<>"NC" .AND. f3502tdo<>"N1" .AND.  ;
     f3502tdo<>"N3")
 SUM f3502ac2 TO taC2 ALL FOR (f3502tdo<>"NC" .AND. f3502tdo<>"N1" .AND.  ;
     f3502tdo<>"N3")
 SUM f3502in1 TO tiN1 ALL FOR (f3502tdo<>"NC" .AND. f3502tdo<>"N1" .AND.  ;
     f3502tdo<>"N3")
 SUM f3502in2 TO tiN2 ALL FOR (f3502tdo<>"NC" .AND. f3502tdo<>"N1" .AND.  ;
     f3502tdo<>"N3")
 SUM f3502to1 TO vtO1 ALL FOR (f3502tdo="NC" .OR. f3502tdo="N1" .OR.  ;
     f3502tdo="N3")
 SUM f3502to2 TO vtO2 ALL FOR (f3502tdo="NC" .OR. f3502tdo="N1" .OR.  ;
     f3502tdo="N3")
 SUM f3502ac1 TO vaC1 ALL FOR (f3502tdo="NC" .OR. f3502tdo="N1" .OR.  ;
     f3502tdo="N3")
 SUM f3502ac2 TO vaC2 ALL FOR (f3502tdo="NC" .OR. f3502tdo="N1" .OR.  ;
     f3502tdo="N3")
 SUM f3502in1 TO viN1 ALL FOR (f3502tdo="NC" .OR. f3502tdo="N1" .OR.  ;
     f3502tdo="N3")
 SUM f3502in2 TO viN2 ALL FOR (f3502tdo="NC" .OR. f3502tdo="N1" .OR.  ;
     f3502tdo="N3")
 STORE ttO1-vtO1 TO ttO1
 STORE ttO2-vtO2 TO ttO2
 STORE taC1-vaC1 TO taC1
 STORE taC2-vaC2 TO taC2
 STORE tiN1-viN1 TO tiN1
 STORE tiN2-viN2 TO tiN2
 SUM f3502to1+f3502in1-f3502ac1 TO tfA1 ALL FOR (f3502tdo="FA" .OR.  ;
     f3502tdo="FE" .OR. f3502tdo="FC")
 SUM f3502to1+f3502in1-f3502ac1 TO tbO1 ALL FOR (f3502tdo="BO" .OR.  ;
     f3502tdo="BE" .OR. f3502tdo="BC")
 SUM f3502to1+f3502in1-f3502ac1 TO tnP1 ALL FOR f3502tdo="NP"
 SUM f3502to1+f3502in1-f3502ac1 TO tlE1 ALL FOR f3502tdo="LE"
 SUM f3502to1+f3502in1-f3502ac1 TO tnD1 ALL FOR (f3502tdo="ND" .OR.  ;
     f3502tdo="N2" .OR. f3502tdo="N4")
 SUM f3502to1+f3502in1-f3502ac1 TO tnC1 ALL FOR (f3502tdo="NC" .OR.  ;
     f3502tdo="N1" .OR. f3502tdo="N3")
 SUM f3502to2+f3502in2-f3502ac2 TO tfA2 ALL FOR (f3502tdo="FA" .OR.  ;
     f3502tdo="FE" .OR. f3502tdo="FC")
 SUM f3502to2+f3502in2-f3502ac2 TO tbO2 ALL FOR (f3502tdo="BO" .OR.  ;
     f3502tdo="BE" .OR. f3502tdo="BC")
 SUM f3502to2+f3502in2-f3502ac2 TO tnP2 ALL FOR f3502tdo="NP"
 SUM f3502to2+f3502in2-f3502ac2 TO tlE2 ALL FOR f3502tdo="LE"
 SUM f3502to2+f3502in2-f3502ac2 TO tnD2 ALL FOR (f3502tdo="ND" .OR.  ;
     f3502tdo="N2" .OR. f3502tdo="N4")
 SUM f3502to2+f3502in2-f3502ac2 TO tnC2 ALL FOR (f3502tdo="NC" .OR.  ;
     f3502tdo="N1" .OR. f3502tdo="N3")
ENDPROC
*
PROCEDURE Bor_3500a
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vxLs, vpAl, cpAl, vlIn, vpAg, vfIl,  ;
         ifIl, ufIl
 RELEASE ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vcL1, vcL2, vcL3, vcL4,  ;
         vcL5, vcL6
 RELEASE vcLa, vcLb, vcLc, vcLd, vcLe, vcLf, vtDo, itDo, utDo, ctDo, xtDo,  ;
         dtDo, htDo
 RELEASE vsEr, isEr, usEr, csEr, xsEr, dsEr, hsEr, vdOc, idOc, udOc, cdOc,  ;
         xdOc, ddOc
 RELEASE hdOc, vcLi, icLi, ucLi, ccLi, xcLi, vnOm, inOm, unOm, cnOm, xnOm,  ;
         vtIt, itIt
 RELEASE utIt, ctIt, xtIt, vnTi, inTi, unTi, cnTi, xnTi, vaNo, iaNo, uaNo,  ;
         caNo, xaNo
 RELEASE vmEs, imEs, umEs, cmEs, xmEs, vdIa, idIa, udIa, cdIa, xdIa, vaNv,  ;
         iaNv, uaNv
 RELEASE caNv, xaNv, vmEv, imEv, umEv, cmEv, xmEv, vdIv, idIv, udIv, cdIv,  ;
         xdIv, vvEn
 RELEASE ivEn, uvEn, cvEn, xvEn, vnVe, inVe, unVe, cnVe, xnVe, vmOn, imOn,  ;
         umOn, cmOn
 RELEASE xmOn, vsLd, isLd, usLd, csLd, xsLd, vfEm, xfEm, dfEm, hfEm, vfVe,  ;
         xfVe, veSt
 RELEASE xeSt, xtEc, xnTe, xsUc, xrUc, xtCl, xnTc, xfPa, xnFp, xpRe, xfCa,  ;
         vfCa, xpIg
 RELEASE xtOt, xaCu, vaCu, xiNt, xlE1, xcAn, xcOm, vpA1, vpA2, vrEn, vaN1,  ;
         vmE1, vdI1
 RELEASE vtTt, vsR1, vnUm, iaN1, imE1, idI1, itTt, isR1, inUm, caN1, cmE1,  ;
         cdI1, ctTt
 RELEASE csR1, cnUm, uaN1, umE1, udI1, utTt, usR1, unUm, ttO1, ttO2, taC1,  ;
         taC2, tiN1
 RELEASE tiN2, vtO1, vtO2, vaC1, vaC2, viN1, viN2, tfA1, tfA2, tbO1, tbO2,  ;
         tnP1, tnP2
 RELEASE tlE1, tlE2, tnD1, tnD2, tnC1, tnC2, vfA1, vfA2, vbO1, vbO2, vnP1,  ;
         vnP2, vlE1
 RELEASE vlE2, vnD1, vnD2, vnC1, vnC2, vsIg, voPc, voP1, voP2, csL1, csL2,  ;
         ctT1, ctT2
 RELEASE vdIr, vdIs, vtL1, vtL2, vtL3, veMa, veM2, veM3
 RELEASE vpAn_11, vpAn_12, vpAn_99
ENDPROC
*
PROCEDURE Hl1_3500a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 2.000 SAY  ;
   "Esta consulta muestra los Documentos Pendientes x Cobrar. Se puede"
 @ pfIl+01, 2.000 SAY  ;
   "ver esta consulta de diferentes maneras, como x Nombre del Cliente, x"
 @ pfIl+02, 2.000 SAY "Fecha de Vencimiento ,etc."
 @ pfIl+04, 2.000 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 18.500 SAY ":" STYLE "BT"
 @ pfIl+07, 18.500 SAY ":" STYLE "BT"
 @ pfIl+08, 18.500 SAY ":" STYLE "BT"
 @ pfIl+09, 18.500 SAY ":" STYLE "BT"
 @ pfIl+10, 18.500 SAY ":" STYLE "BT"
 @ pfIl+11, 18.500 SAY ":" STYLE "BT"
 @ pfIl+06, 2.000 SAY "ESC" STYLE "BT"
 @ pfIl+07, 2.000 SAY "F10" STYLE "BT"
 @ pfIl+08, 2.000 SAY "F1" STYLE "BT"
 @ pfIl+09, 2.000 SAY "F6" STYLE "BT"
 @ pfIl+10, 2.000 SAY "F9" STYLE "BT"
 @ pfIl+11, 2.000 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+12, 2.000 SAY "CTRL ->," STYLE "BT"
 @ pfIl+13, 2.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+06, 20.000 SAY "Regresar al Menú Principal"
 @ pfIl+07, 20.000 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 20.000 SAY "Ayuda del Programa"
 @ pfIl+09, 20.000 SAY "Cambio de Orden de Consulta"
 @ pfIl+10, 20.000 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+11, 20.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+12, 20.000 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3500a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 03 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social."
 @ pfIl+01, 03 SAY  ;
   "Si la palabra o frase no se encuentra contenida en ninguno de los Do-"
 @ pfIl+02, 03 SAY  ;
   "cumentos, saldrá un mensaje, en caso de encontrase se regresará a"
 @ pfIl+03, 03 SAY  ;
   "la Cabecera, para que escoge el orden de consulta respectivo."
 @ pfIl+05, 03 SAY "Las teclas para movilizarse son:"
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
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 DO boR_3500a
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
 DO deL_file2 WITH "3", "N"
 DO deL_file2 WITH "4", "N"
 RELEASE ntM1, ntM2, ntM3, ntM4
ENDPROC
*
