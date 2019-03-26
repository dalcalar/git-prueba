 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO taB_trabajadores IN PUX0004A
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
 INDEX ON f4200cod TAG f4200cod
 INDEX ON f4200ruc+f4200cod TAG f4200ruc
 INDEX ON f4200ele+f4200cod TAG f4200ele
 INDEX ON UPPER(ALLTRIM(f4200nar))+f4200cod TAG f4200nar
 INDEX ON UPPER(ALLTRIM(f4200nca))+f4200cod TAG f4200nca
 INDEX ON UPPER(ALLTRIM(f4200app)+ALLTRIM(f4200apm)+ALLTRIM(f4200nom))+ ;
       f4200cod TAG f4200nom
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[47, 4]
 STORE 1 TO x
 afIl[x, 1] = "CODIGO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "ESTADO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NOMBRE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CARGO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "AREA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRES1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SALIDA1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOLERA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INIREF1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FINREF1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TIEREF1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRES2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SALIDA2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOLERA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INIREF2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FINREF2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TIEREF2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRES3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SALIDA3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOLERA3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INIREF3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FINREF3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TIEREF3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRES4"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SALIDA4"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOLERA4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INIREF4"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FINREF4"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TIEREF4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRES5"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SALIDA5"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOLERA5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INIREF5"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FINREF5"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TIEREF5"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRES6"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SALIDA6"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOLERA6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INIREF6"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FINREF6"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TIEREF6"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRES7"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SALIDA7"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TOLERA7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INIREF7"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FINREF7"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TIEREF7"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
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
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "4200", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Trabajadores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo de Trabajadores no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "4220", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Hor_Area
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4220COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "4221", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Horarios
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4221COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT trAbajadores
 STORE 00 TO meRr
 DO vaR_4221a
 PUBLIC vdAt, xtO1, xtO2, xtO3, xtO4, xtO5, xtO6, xtO7, xrF1, xrF2, xrF3,  ;
        xrF4, xrF5
 PUBLIC xrF6, xrF7, xiN1, xiN2, xiN3, xiN4, xiN5, xiN6, xiN7, xsA1, xsA2,  ;
        xsA3, xsA4
 PUBLIC xsA5, xsA6, xsA7, xrS1, xrS2, xrS3, xrS4, xrS5, xrS6, xrS7, xrI1,  ;
        xrI2, xrI3
 PUBLIC xrI4, xrI5, xrI6, xrI7
 STORE SPACE(03) TO vdAt
 SET READBORDER ON
 DO p00_4221a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4221a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4200a IN PKC4200A
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4200a IN PKC4200A
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4221a
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
                DO p01_4200a IN PKC4200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                DO opC_4221a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
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
                DO pkC4221b
                SET READBORDER ON
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
      DO geT_4200a IN PKC4200A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_4221a
 DO rs2_4200a IN PKC4200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4221a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_4200a IN PKC4200A
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
           CASE mkEy=k_F12
                DO rs1_4221a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_4200a IN PKC4200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F1
                DO hl2_4200a IN PKC4200A
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
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200app)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f4200apm)))<>0
                          DO muE_4200a IN PKC4200A
                          DO grA_4200a IN PKC4200A
                          SELECT trAbajadores
                     ENDIF
                     SKIP
                     DO veR_lock
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
      DO CASE
           CASE mrEs="1"
                @iFIL+1.8,mCO0+21.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="2"
                @iFIL+1.8,mCO0+41.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="3"
                @iFIL+1.8,mCO0+51.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs$"45"
                @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      ENDCASE
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
 DO coL_beige
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Font "&mLetRom",9 Style "BQ" Size 1,47 Pict "@S47"
ENDPROC
*
PROCEDURE Lin_4221a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, icLn+10.2 TO pfIn, icLn+10.2
 @ piNi, icLn+15.7 TO pfIn, icLn+15.7
 DO CASE
      CASE mrEs="2"
           @ piNi, icLn+066.5 TO pfIn, icLn+066.5
      CASE mrEs>"2"
           @ piNi, icLn+076.5 TO pfIn, icLn+076.5
           @ piNi, icLn+106.5 TO pfIn, icLn+106.5
 ENDCASE
ENDPROC
*
PROCEDURE P00_4221a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 21 TO muFi
 STORE 124 TO muCo
 STORE 61.2 TO vuCo
 DO CASE
      CASE mrEs="2"
           STORE vuCo+30 TO vuCo
           STORE muCo+30 TO muCo
           STORE muFi+07 TO muFi
      CASE mrEs="3"
           STORE vuCo+75.6 TO vuCo
           STORE muCo+75.6 TO muCo
           STORE muFi+18 TO muFi
      CASE mrEs="4"
           STORE vuCo+75.6 TO vuCo
           STORE muCo+75.6 TO muCo
           STORE muFi+8 TO muFi
      CASE mrEs>="5"
           STORE vuCo+75.6 TO vuCo
           STORE muCo+75.6 TO muCo
           STORE muFi+18 TO muFi
 ENDCASE
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE ((mwCo-muCo)/2)-0.5 TO mcO0, icLn
 STORE mcO0+vuCo+3 TO vcO0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+vuCo-14 TO mmC2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+6.2 TO vfI0
 STORE mcO0+vuCo TO ucLn
 IF mrEs>="4"
      STORE vcO0+7 TO vcO0
      STORE mcO0-4 TO mcO0, icLn
 ENDIF
 DO tiT_0000a WITH "Consulta de Horarios x Trabajador"
 SAVE SCREEN TO vpAn_99
 DO coL_beige
 DO cuAdro WITH mfI0, icLn, mfI0+muFi, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLplp
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 @ ffIl+1.1, icLn TO ffIl+1.1, ucLn
 DO p01_4200a IN PKC4200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO liN_4221a WITH ifIl-1.4, ffIl+1.1
 DO coLblz
 @iFIL-1.3,iCLN+01.5 Say "Código"              Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,iCLN+11.4 Say "Est"                 Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,iCLN+16.1 Say "Apellidos y Nombres" Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE mrEs="2"
           @iFIL-1.3,iCLN+066.8 Say "Cargo" Font "&mLetAri",9 Style "BT"
      CASE mrEs>"2"
           @iFIL-1.3,iCLN+076.8 Say "Cargo" Font "&mLetAri",9 Style "BT"
           @iFIL-1.3,iCLN+106.9 Say "Area"  Font "&mLetAri",9 Style "BT"
 ENDCASE
 DO coLsc7
 @ vfI0-06.3, vcO0 TO vfI0+14.3, vcO0+61.5 PATTERN 1
 @ vfI0-03.3, vcO0 TO vfI0-03.3, vcO0+61.5
 @ vfI0-03.0, vcO0+15 TO vfI0+14.3, vcO0+15
 @ vfI0-01.6, vcO0+15 TO vfI0-01.6, vcO0+61.5
 @ vfI0+00.0, vcO0 TO vfI0+02.0, vcO0+61.5
 @ vfI0+04.0, vcO0 TO vfI0+06.0, vcO0+61.5
 @ vfI0+08.0, vcO0 TO vfI0+10.0, vcO0+61.5
 @ vfI0+12.0, vcO0 TO vfI0+12.0, vcO0+61.5
 @ vfI0-03.3, vcO0+38.2 TO vfI0+14.3, vcO0+38.2
 DO coLblz
 @vFI0-04.5,vCO0+01.0 Say "Cargo:"         Font "&mLetAri",9  Style "BT"
 @vFI0-04.5,vCO0+31.0 Say "Area:"          Font "&mLetAri",9  Style "BT"
 DO coLscz
 @vFI0-02.9,vCO0+16.6 Say "INGRESO/SALIDA" Font "&mLetRom",10 Style "BT"
 @vFI0-02.9,vCO0+42.3 Say "REFRIGERIO"     Font "&mLetRom",10 Style "BT"
 @vFI0-01.3,vCO0+04.1 Say "DÍA"            Font "&mLetRom",11 Style "BT"
 @vFI0-01.3,vCO0+15.6 Say "Desde"          Font "&mLetRom",11 Style "NT"
 @vFI0-01.3,vCO0+24.5 Say "Hasta"          Font "&mLetRom",11 Style "NT"
 @vFI0-01.3,vCO0+33.3 Say "Tol"            Font "&mLetRom",11 Style "NT"
 @vFI0-01.3,vCO0+38.8 Say "Desde"          Font "&mLetRom",11 Style "NT"
 @vFI0-01.3,vCO0+47.6 Say "Hasta"          Font "&mLetRom",11 Style "NT"
 @vFI0-01.3,vCO0+56.2 Say "Min"            Font "&mLetRom",11 Style "NT"
 DO coLsc7
 @vFI0+00.4,vCO0+00.8 Say "Lunes"          Font "&mLetRom",11 Style "BT"
 @vFI0+02.4,vCO0+00.8 Say "Martes"         Font "&mLetRom",11 Style "BT"
 @vFI0+04.4,vCO0+00.8 Say "Miércoles"      Font "&mLetRom",11 Style "BT"
 @vFI0+06.4,vCO0+00.8 Say "Jueves"         Font "&mLetRom",11 Style "BT"
 @vFI0+08.4,vCO0+00.8 Say "Viernes"        Font "&mLetRom",11 Style "BT"
 @vFI0+10.4,vCO0+00.8 Say "Sabado"         Font "&mLetRom",11 Style "BT"
 @vFI0+12.4,vCO0+00.8 Say "Domingo"        Font "&mLetRom",11 Style "BT"
 DO coLbln
 @vFI0+00.5,vCO0+16.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+02.5,vCO0+16.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+04.5,vCO0+16.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+06.5,vCO0+16.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+08.5,vCO0+16.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+10.5,vCO0+16.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+12.5,vCO0+16.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+00.5,vCO0+25.0 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+02.5,vCO0+25.0 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+04.5,vCO0+25.0 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+06.5,vCO0+25.0 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+08.5,vCO0+25.0 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+10.5,vCO0+25.0 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+12.5,vCO0+25.0 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+00.5,vCO0+33.8 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+02.5,vCO0+33.8 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+04.5,vCO0+33.8 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+06.5,vCO0+33.8 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+08.5,vCO0+33.8 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+10.5,vCO0+33.8 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+12.5,vCO0+33.8 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+00.5,vCO0+39.3 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+02.5,vCO0+39.3 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+04.5,vCO0+39.3 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+06.5,vCO0+39.3 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+08.5,vCO0+39.3 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+10.5,vCO0+39.3 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+12.5,vCO0+39.3 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+00.5,vCO0+48.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+02.5,vCO0+48.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+04.5,vCO0+48.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+06.5,vCO0+48.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+08.5,vCO0+48.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+10.5,vCO0+48.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+12.5,vCO0+48.1 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99" Color ,&mColBlN
 @vFI0+00.5,vCO0+56.9 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+02.5,vCO0+56.9 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+04.5,vCO0+56.9 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+06.5,vCO0+56.9 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+08.5,vCO0+56.9 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+10.5,vCO0+56.9 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 @vFI0+12.5,vCO0+56.9 Get vDAT Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"    Color ,&mColBlN
 READ TIMEOUT 0.01
 DO coL_beige
 @mFI0+mUFI-1.3,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,47 Pict "@S47"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE Rs1_4221a
 DO p00_4221a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      DO CASE
           CASE vsW1=01
                SELECT trAbajadores
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "v", "c"
      DO seE_4200b IN PKC4200B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f4200cod)=ALLTRIM(vcOd)
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
           DO veR_lock
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_4200b IN PKC4200B WITH "v", "c"
           DO muE_4200b IN PKC4200B WITH "v", "i"
      ENDIF
      DO seE_4200b IN PKC4200B WITH "i"
      DO paN_4221b IN PKC4221B
      STORE cfIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "c", "v"
      DO seE_4200b IN PKC4200B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Var_4221a
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vpAl, cpAl, vlIn, vpAg, vuFi, vuCo,  ;
        vfI0, vcO0
 PUBLIC vfIl, ifIl, ufIl, ffIl, cfIl, vcOd, icOd, ucOd, xcOd, ccOd, vaPp,  ;
        iaPp, uaPp
 PUBLIC xaPp, caPp, vaPm, iaPm, uaPm, xaPm, caPm, vnOm, inOm, unOm, xnOm,  ;
        cnOm, vrUc
 PUBLIC irUc, urUc, xrUc, crUc, veLe, ieLe, ueLe, xeLe, ceLe, vnCa, inCa,  ;
        unCa, xnCa
 PUBLIC cnCa, vnAr, inAr, unAr, xnAr, cnAr, xdIr, xdIs, xnDi, xdPt, xnDp,  ;
        xtEl, xmIl
 PUBLIC xcAr, xcIv, xsEx, xsSo, xaFp, xnAf, xsPp, xfNa, xlNa, xgRu, xnAc,  ;
        xcRg, xaRe
 PUBLIC xbAn, xnBa, xcTa, xnCt, xsAl, xnSa, xpEn, xnPe, xiPs, xnIp, xrE4,  ;
        xcCo, xnCc
 PUBLIC xfOt, xcLa, xeSt, xuSu, xdAt, xtIm, icLn, ucLn, vxLs
 PUBLIC vpAn_11, vpAn_99
 STORE SPACE(70) TO vpAl
 STORE SPACE(04) TO vcOd, icOd, ucOd
 STORE SPACE(08) TO veLe, ieLe, ueLe
 STORE SPACE(11) TO vrUc, irUc, urUc
 STORE SPACE(30) TO vnOm, inOm, unOm
 STORE SPACE(25) TO vaPp, iaPp, uaPp, vaPm, iaPm, uaPm
 STORE SPACE(50) TO vnCa, inCa, unCa, vnAr, inAr, unAr
 STORE 01 TO vsW0, csW0, vsW1
 STORE 00 TO csW1
 STORE 88 TO mpAg
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Del_4221a
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vpAl, cpAl, vlIn, vpAg, vuFi, vuCo,  ;
         vfI0, vcO0
 RELEASE vfIl, ifIl, ufIl, ffIl, cfIl, vcOd, icOd, ucOd, xcOd, ccOd, vaPp,  ;
         iaPp, uaPp
 RELEASE xaPp, caPp, vaPm, iaPm, uaPm, xaPm, caPm, vnOm, inOm, unOm, xnOm,  ;
         cnOm, vrUc
 RELEASE irUc, urUc, xrUc, crUc, veLe, ieLe, ueLe, xeLe, ceLe, vnCa, inCa,  ;
         unCa, xnCa
 RELEASE cnCa, vnAr, inAr, unAr, xnAr, cnAr, xdIr, xdIs, xnDi, xdPt, xnDp,  ;
         xtEl, xmIl
 RELEASE xcAr, xcIv, xsEx, xsSo, xaFp, xnAf, xsPp, xfNa, xlNa, xgRu, xnAc,  ;
         xcRg, xaRe
 RELEASE xbAn, xnBa, xcTa, xnCt, xsAl, xnSa, xpEn, xnPe, xiPs, xnIp, xrE4,  ;
         xcCo, xnCc
 RELEASE xfOt, xcLa, xeSt, xuSu, xdAt, xtIm, icLn, ucLn, vxLs
 RELEASE vpAn_11, vpAn_99
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 DO deL_4221a
 RELEASE vdAt, xtO1, xtO2, xtO3, xtO4, xtO5, xtO6, xtO7, xrF1, xrF2, xrF3,  ;
         xrF4, xrF5
 RELEASE xrF6, xrF7, xiN1, xiN2, xiN3, xiN4, xiN5, xiN6, xiN7, xsA1, xsA2,  ;
         xsA3, xsA4
 RELEASE xsA5, xsA6, xsA7, xrS1, xrS2, xrS3, xrS4, xrS5, xrS6, xrS7, xrI1,  ;
         xrI2, xrI3
 RELEASE xrI4, xrI5, xrI6, xrI7
 SET READBORDER OFF
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
 DO deL_file2 WITH "2", "N"
 RELEASE ntM1, ntM2
ENDPROC
*
