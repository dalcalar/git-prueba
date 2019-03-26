 PARAMETER wtPo
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
 DIMENSION afIl[12, 4]
 STORE 1 TO x
 afIl[x, 1] = "CODIGO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "EST"
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
 afIl[x, 1] = "DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 9
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FECHA"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRESO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SALIDA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INIREF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FINREF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "ESTADO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
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
 DO abR_0000a IN PUX0000A WITH "4230", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Marcaciones
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4230COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
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
 SELECT 6
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Excel
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT trAbajadores
 SET FILTER TO f4200est<>"9"
 STORE 00 TO meRr
 DO vaR_4221a IN PKC4221A
 PUBLIC viTe, ifEm, ufEm, vfEm, cfEm, dfEm, hfEm, vfFs, ifFs, ufFs, ffFs,  ;
        cfFs, dcOd
 PUBLIC hcOd, vdIa, vmEs, vaNo, veSt, vdDd, voPc, voP1, veNt, vsAl, vrIn,  ;
        vrFi, icL1
 PUBLIC ucL1, vcDd, vaRr
 STORE DATE() TO dfEm, hfEm
 SET READBORDER ON
 DO p00_4230a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4230a
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
                DO hl1_4230a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4230a
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
                DO opC_4230a
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
                DO pkC4230b
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
      @iFIL-4,vCO0+11 Get dFEM Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,10.8
      @iFIL-4,vCO0+35 Get hFEM Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,10.8
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_4230a
 DO rs2_4200a IN PKC4200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4230a
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
                DO rs1_4230a
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
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200app)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f4200apm)))<>0
                          IF f4200est<>"9"
                               DO muE_4200a IN PKC4200A
                               DO grA_4200a IN PKC4200A
                               SELECT trAbajadores
                          ENDIF
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
      DO CASE
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
PROCEDURE Lin_4230a
 PARAMETER piNi, pfIn
 DO coLbln
 @ piNi, icL1+12.9 TO pfIn, icL1+12.9
 @ piNi, icL1+24.1 TO pfIn, icL1+24.1
 @ piNi, icL1+31.3 TO pfIn, icL1+31.3
 @ piNi, icL1+38.5 TO pfIn, icL1+38.5
 IF mrEs<"4"
      @ piNi, icL1+47.2 TO pfIn, icL1+47.2
      @ piNi, icL1+54.4 TO pfIn, icL1+54.4
 ELSE
      @ piNi, icL1+53.2 TO pfIn, icL1+53.2
      @ piNi, icL1+60.4 TO pfIn, icL1+60.4
 ENDIF
ENDPROC
*
PROCEDURE P00_4230a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 21 TO muFi
 STORE 124 TO muCo
 STORE 61.2 TO vuCo
 DO CASE
      CASE mrEs="3"
           STORE vuCo+75.6 TO vuCo
           STORE muCo+75.6 TO muCo
           STORE muFi+18 TO muFi
      CASE mrEs="4"
           STORE vuCo+75.6 TO vuCo
           STORE muCo+85.6 TO muCo
           STORE muFi+8 TO muFi
      CASE mrEs>="5"
           STORE vuCo+75.6 TO vuCo
           STORE muCo+85.6 TO muCo
           STORE muFi+18 TO muFi
 ENDCASE
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE ((mwCo-muCo)/2)-0.5 TO mcO0, icLn
 STORE mcO0+vuCo+2 TO vcO0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+vuCo-14 TO mmC2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mcO0+vuCo TO ucLn
 STORE mfI0+5 TO ifFs, ufFs, vfFs
 STORE ifFs+(INT(muFi)-6) TO ffFs
 IF mrEs>="4"
      STORE vcO0+7 TO vcO0
      STORE mcO0-4 TO mcO0, icLn
 ENDIF
 STORE vcO0 TO icL1
 STORE icL1+61.4 TO ucL1
 IF mrEs>"3"
      STORE ucL1+6 TO ucL1
 ENDIF
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Asistencia x Trabajador"
      CASE wtPo="2"
           DO tiT_0000a WITH "Consulta y Arreglos de Asistencias"
 ENDCASE
 SAVE SCREEN TO vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_beige
 DO cuAdro WITH mfI0, icLn, mfI0+muFi, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLplp
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 @ ffIl+1.1, icLn TO ffIl+1.1, ucLn
 DO p01_4200a IN PKC4200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, vcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO liN_4221a IN PKC4221A WITH ifIl-1.4, ffIl+1.1
 DO coLblz
 @iFIL-4.0,vCO0+003.0 Say "Del:"                Font "&mLetRom",12 Style "BT"
 @iFIL-4.0,vCO0+030.0 Say "al:"                 Font "&mLetRom",12 Style "BT"
 @iFIL-1.3,iCLN+001.5 Say "Código"              Font "&mLetAri",9  Style "BT"
 @iFIL-1.3,iCLN+011.2 Say "Est"                 Font "&mLetAri",9  Style "BT"
 @iFIL-1.3,iCLN+016.1 Say "Apellidos y Nombres" Font "&mLetAri",9  Style "BT"
 @iFIL-1.3,iCLN+076.8 Say "Cargo"               Font "&mLetAri",9  Style "BT"
 @iFIL-1.3,iCLN+106.9 Say "Area"                Font "&mLetAri",9  Style "BT"
 DO coLblz
 @iFIL-4.0,vCO0+11 Get dFEM Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,10.8
 @iFIL-4.0,vCO0+35 Get hFEM Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,10.8
 READ TIMEOUT 0.01
 DO coL_beige
 DO cuAdro WITH mfI0, icL1, ffFs+1.2, ucL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFs-03.6, icL1-00.6 TO ifFs-0.5, ucL1+00.4 PATTERN 1 COLOR SCHEME 7
 @ ifFs-01.9, icL1+24.1 TO ifFs-1.9, ucL1+00.4
 @ ifFs-03.6, icL1+12.9 TO ifFs+0.0, icL1+12.9
 @ ifFs-03.6, icL1+24.1 TO ifFs+0.0, icL1+24.1
 @mFI0+00.1,iCL1+01.0 Say "Cargo:"         Font "&mLetRom",12 Style "BT"
 @mFI0+00.1,iCL1+31.0 Say "Area:"          Font "&mLetRom",12 Style "BT"
 @iFFS-01.8,iCL1+02.1 Say "Fecha"          Font "&mLetRom",12 Style "BT"
 @iFFS-01.8,iCL1+16.4 Say "Dia"            Font "&mLetRom",12 Style "BT"
 @iFFS-01.8,iCL1+25.5 Say "Ent"            Font "&mLetRom",11 Style "BT"
 @iFFS-01.8,iCL1+32.9 Say "Sal"            Font "&mLetRom",11 Style "BT"
 IF mrEs<"4"
      @ ifFs-3.6, icL1+47.2 TO ifFs, icL1+47.2
      @iFFS-3.4,iCL1+26.6 Say "Ingreso/Salida" Font "&mLetRom",11 Style "BT"
      @iFFS-3.4,iCL1+47.9 Say "Refrigerio"     Font "&mLetRom",11 Style "BT"
      @iFFS-1.8,iCL1+48.8 Say "Ini"            Font "&mLetRom",11 Style "BT"
      @iFFS-1.8,iCL1+55.8 Say "Fin"            Font "&mLetRom",11 Style "BT"
 ELSE
      @ ifFs-3.6, icL1+53.2 TO ifFs, icL1+53.2
      @iFFS-3.4,iCL1+29.6 Say "Ingreso/Salida" Font "&mLetRom",11 Style "BT"
      @iFFS-3.4,iCL1+53.9 Say "Refrigerio"     Font "&mLetRom",11 Style "BT"
      @iFFS-1.8,iCL1+54.8 Say "Ini"            Font "&mLetRom",11 Style "BT"
      @iFFS-1.8,iCL1+61.8 Say "Fin"            Font "&mLetRom",11 Style "BT"
 ENDIF
 DO liN_4230a WITH ifFs-1.9, ffFs+1.4
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
PROCEDURE Rs1_4230a
 DO p00_4230a WITH "1"
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
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_4200b IN PKC4200B WITH "v", "c"
           DO muE_4200b IN PKC4200B WITH "v", "i"
      ENDIF
      DO seE_4200b IN PKC4200B WITH "i"
      DO paN_4230b IN PKC4230B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "c", "v"
      DO seE_4200b IN PKC4200B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Hl1_4230a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra todos los Trabajadores registrados, incluyendo los"
 @ pfIl+01, 02 SAY  ;
   "que están anulados, con sus Asistencias. Se puede consultar por rango"
 @ pfIl+02, 02 SAY  ;
   "de Fechas poniendo Desde-Hasta con la Tecla FIN para moverse de cam-"
 @ pfIl+03, 02 SAY "po en campo o regresar con la Tecla Inicio."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 17 SAY ":" STYLE "BT"
 @ pfIl+08, 17 SAY ":" STYLE "BT"
 @ pfIl+09, 17 SAY ":" STYLE "BT"
 @ pfIl+10, 17 SAY ":" STYLE "BT"
 @ pfIl+11, 17 SAY ":" STYLE "BT"
 @ pfIl+12, 17 SAY ":" STYLE "BT"
 @ pfIl+07, 01 SAY "ESC" STYLE "BT"
 @ pfIl+08, 01 SAY "F10" STYLE "BT"
 @ pfIl+09, 01 SAY "F1" STYLE "BT"
 @ pfIl+10, 01 SAY "F6" STYLE "BT"
 @ pfIl+11, 01 SAY "F9" STYLE "BT"
 @ pfIl+12, 01 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+13, 01 SAY "CTRL ->," STYLE "BT"
 @ pfIl+14, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+07, 19 SAY "Regresar al Menú Principal"
 @ pfIl+08, 19 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 19 SAY "Ayuda del Programa"
 @ pfIl+10, 19 SAY "Cambio de Orden de Consulta"
 @ pfIl+11, 19 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+12, 19 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+13, 19 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 DO deL_4221a IN PKC4221A
 SET READBORDER OFF
 RELEASE viTe, ifEm, ufEm, vfEm, cfEm, dfEm, hfEm, vfFs, ifFs, ufFs, ffFs,  ;
         cfFs, dcOd
 RELEASE hcOd, vdIa, vmEs, vaNo, veSt, vdDd, voPc, voP1, veNt, vsAl, vrIn,  ;
         vrFi, icL1
 RELEASE ucL1, vcDd, vaRr
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
