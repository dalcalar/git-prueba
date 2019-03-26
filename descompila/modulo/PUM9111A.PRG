 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE 01 TO meRr
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TC1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TC3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TC4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM1fem TAG ftM1fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TC1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TC3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TC4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE "TM01"+ntM2+meXt TO mdBf
 DO WHILE .T.
      ntM2 = STRTRAN(STR(VAL(ntM2)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM2+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM2="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO deL_file2 WITH "1", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM2fem TAG ftM2fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3TC1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM3TC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM3TC3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM3TC4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE "TM01"+ntM3+meXt TO mdBf
 DO WHILE .T.
      ntM3 = STRTRAN(STR(VAL(ntM3)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM3+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM3="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM3fem TAG ftM3fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM4FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4TC1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM4TC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM4TC3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM4TC4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE "TM01"+ntM4+meXt TO mdBf
 DO WHILE .T.
      ntM4 = STRTRAN(STR(VAL(ntM4)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM4+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM4="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM4fem TAG ftM4fem
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cambio
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_1
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM1FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_3
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM3FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_4
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM4FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vfEm, cfEm, vtC1, ctC1, vtC2, ctC2, vtC3, ctC3,  ;
        vtC4, ctC4
 PUBLIC vtB1, vlIn, vpAg, vfBi, vcBi, dfEm, hfEm, ifEm, ufEm, vfEc, vmEs,  ;
        vaNo, vnUm
 PUBLIC unUm, cnUm
 STORE CTOD("  /  /    ") TO cfEm
 STORE DATE() TO vfEm
 STORE 00 TO viT1, vtC1, vtC2, vtC3, vtC4
 STORE 01 TO viTe
 STORE 99 TO mkEy
 STORE 12 TO muFi
 STORE 82 TO muCo
 SELECT caMbio
 GOTO TOP
 STORE f9111fem TO dfEm, ifEm
 GOTO BOTTOM
 STORE f9111fem TO hfEm, ufEm
 SET READBORDER ON
 DO p00_9111a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9111a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9111a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                GOTO BOTTOM
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                STORE 99 TO mkEy
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9111fem TO vfEm
                     @mFI0+0.4,mCO0+19 Say vFEM Font "&mLetRom",12 Style "BQ" Size 1,10.1
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9111a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9111a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_c .AND. msUn=" "
                STORE "No TIENE Acceso a la Sunat..." TO mmSj
           CASE mkEy=k_Alt_c .AND. msUn$"BA" .AND. mfDe=CTOD(" ")
                STORE "No TIENE Acceso a la Sunat..." TO mmSj
           CASE mkEy=k_Alt_c .AND. msUn$"BA" .AND. DATE()>mfHa
                STORE "No TIENE Acceso a la Sunat..." TO mmSj
           CASE mkEy=k_Alt_c .AND. msUn$"BA"
                DO q1_0000a
                DO jaL_9111a
                DO p1_0000a
                SELECT caMbio
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_p
                GOTO TOP
                IF BOF()
                     STORE "No hay datos por imprimir..." TO mmSj
                ELSE
                     DO q1_0000a
                     DO imP_9111a
                     DO p1_0000a
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
                SELECT caMbio
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=5
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                GOTO TOP
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vfEm
                     IF EOF()
                          STORE "Fecha no registrada..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9111a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9111fem=vfEm
                          STORE "Esta es la primera Fecha registrada..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9111a
                          DO diS_9111a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+19 Say vFEM Font "&mLetRom",12 Style "BQ" Size 1,10.1
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9111fem=vfEm
                          STORE "Esta es la última Fecha registrada..." TO mmSj
                     OTHERWISE
                          DO muE_9111a
                          DO diS_9111a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+19 Say vFEM Font "&mLetRom",12 Style "BQ" Size 1,10.1
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vfEm
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vfEm=f9111fem
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9111fem=vfEm
                          STORE "Esta es la última Fecha registrada..." TO mmSj
                     OTHERWISE
                          DO muE_9111a
                          DO diS_9111a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+19 Say vFEM Font "&mLetRom",12 Style "BQ" Size 1,10.1
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vfEm
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9111fem>=vfEm
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9111fem=vfEm
                          STORE "Esta es la primera Fecha registrada..."  ;
                                TO mmSj
                     OTHERWISE
                          DO muE_9111a
                          DO diS_9111a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+19 Say vFEM Font "&mLetRom",12 Style "BQ" Size 1,10.1
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=5
                          DO grA_9111a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE 99 TO mkEy
                     ELSE
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 5 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 5 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO grA_9111a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vfEm
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=1
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe<>1
                     DO prEsiona WITH "4", "BOT_UTI2", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(85) Font "&mLetRom",9 Style "BQ" Size 1,81
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+05 Say "EN ESTE CAMPO SE DEBE DIGITAR LA FECHA: DÍA/MES/AÑO..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=2 .OR. viTe=3
                     @mMF2,mMC2+04 Say "CAMPO DE 2 ENTEROS Y 5 DECIMALES, NO PUEDE SER CEROS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=4 .OR. viTe=5
                     @mMF2,mMC2+12 Say "ESTE CAMPO ES DE 2 ENTEROS Y 5 DECIMALES..."             Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+19 Get vFEM Font "&mLetRom",12 Style "BQ" Size 1,10.1 Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+48 Get vTC1 Font "&mLetAri",9  Style "NQ" Size 1,12 Pict "99.99999" Color ,&mColBlN
           CASE viTe=3
                @mFI0+5.5,mCO0+48 Get vTC2 Font "&mLetAri",9  Style "NQ" Size 1,12 Pict "99.99999" Color ,&mColBlN
           CASE viTe=4
                @mFI0+7.5,mCO0+48 Get vTC3 Font "&mLetAri",9  Style "NQ" Size 1,12 Pict "99.99999" Color ,&mColBlN
           CASE viTe=5
                @mFI0+9.5,mCO0+48 Get vTC4 Font "&mLetAri",9  Style "NQ" Size 1,12 Pict "99.99999" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_0000a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. vfEm=CTOD("  /  /  ")
           STORE "Fecha no puede estar vacía..." TO mmSj
      CASE viTe=1 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1
           SEEK vfEm
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12.1 Color Scheme 4
                STORE 00 TO vtC1, vtC2, vtC3, vtC4
           ELSE
                DO muE_9111a
           ENDIF
           IF vfEm<>cfEm
                DO diS_9111a
           ENDIF
      CASE viTe=2 .AND. vtC1=0
           STORE "Tipo de Cambio no puede ser 0..." TO mmSj
      CASE viTe=3 .AND. vtC2=0
           STORE "Tipo de Cambio no puede ser 0..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9111a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12.1 Color Scheme 4
 STORE f9111fem TO vfEm
 STORE f9111tc1 TO vtC1
 STORE f9111tc2 TO vtC2
 STORE f9111tc3 TO vtC3
 STORE f9111tc4 TO vtC4
ENDPROC
*
PROCEDURE Dis_9111a
 DO coLbln
 @mFI0+3.5,mCO0+48 Say vTC1 Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "99.99999"
 @mFI0+5.5,mCO0+48 Say vTC2 Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "99.99999"
 @mFI0+7.5,mCO0+48 Say vTC3 Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "99.99999"
 @mFI0+9.5,mCO0+48 Say vTC4 Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "99.99999"
 STORE vfEm TO cfEm
ENDPROC
*
PROCEDURE Gra_9111a
 DO grAbar WITH "1"
 SEEK vfEm
 IF EOF()
      DO nuEvo_rg
      REPLACE f9111fem WITH vfEm
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vfEm
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9111tc1 WITH vtC1
 REPLACE f9111tc2 WITH vtC2
 REPLACE f9111tc3 WITH vtC3
 REPLACE f9111tc4 WITH vtC4
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9111a
 SEEK vfEm
 IF EOF()
      STORE "Fecha no registrada..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vfEm
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9111fem WITH CTOD("  /  /    ")
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9111a
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina IN PUM9111A
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_9111a
 DO fpR_0001a
ENDPROC
*
PROCEDURE Rep_9111a
 PRIVATE ptAm
 SELECT teMporal_1
 ZAP
 REINDEX
 SELECT teMporal_2
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 REINDEX
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT caMbio
 GOTO TOP
 SET NEAR ON
 SEEK dfEm
 SET NEAR OFF
 STORE 00 TO unUm
 DO WHILE  .NOT. EOF() .AND. f9111fem<=hfEm
      IF f9111fem<dfEm
           SKIP
           LOOP
      ENDIF
      STORE unUm+1 TO unUm
      STORE f9111fem TO vfEc
      STORE f9111tc1 TO ctC1
      STORE f9111tc2 TO ctC2
      STORE f9111tc3 TO ctC3
      STORE f9111tc4 TO ctC4
      SELECT teMporal_1
      APPEND BLANK
      REPLACE ftM1fem WITH vfEc
      REPLACE ftM1tc1 WITH ctC1
      REPLACE ftM1tc2 WITH ctC2
      REPLACE ftM1tc3 WITH ctC3
      REPLACE ftM1tc4 WITH ctC4
      SELECT caMbio
      SKIP
 ENDDO
 SELECT teMporal_1
 GOTO TOP
 DO WHILE .T.
      IF unUm=0
           EXIT
      ENDIF
      STORE 00 TO cnUm
      STORE ftM1fem TO vfEc
      STORE SUBSTR(DTOC(vfEc), 4, 2) TO vmEs
      STORE SUBSTR(DTOC(vfEc), 7, 4) TO vaNo
      SELECT teMporal_1
      DO WHILE  .NOT. EOF()
           IF SUBSTR(DTOC(ftM1fem), 4, 2)<>vmEs .OR. SUBSTR(DTOC(ftM1fem),  ;
              7, 4)<>vaNo
                EXIT
           ENDIF
           STORE cnUm+1 TO cnUm
           SKIP
      ENDDO
      DO CASE
           CASE INT(cnUm/3)=cnUm/3
                STORE cnUm/3 TO vnUm
           OTHERWISE
                STORE INT(cnUm/3)+1 TO vnUm
      ENDCASE
      SEEK vfEc
      STORE 00 TO cnUm
      DO WHILE  .NOT. EOF() .AND. SUBSTR(DTOC(ftM1fem), 4, 7)=vmEs+"/"+vaNo
           STORE cnUm+1 TO cnUm
           STORE unUm-1 TO unUm
           STORE ftM1fem TO vfEc
           STORE ftM1tc1 TO ctC1
           STORE ftM1tc2 TO ctC2
           STORE ftM1tc3 TO ctC3
           STORE ftM1tc4 TO ctC4
           DO CASE
                CASE cnUm<=vnUm
                     SELECT teMporal_2
                     APPEND BLANK
                     REPLACE ftM2fem WITH vfEc
                     REPLACE ftM2tc1 WITH ctC1
                     REPLACE ftM2tc2 WITH ctC2
                     REPLACE ftM2tc3 WITH ctC3
                     REPLACE ftM2tc4 WITH ctC4
                CASE cnUm<=vnUm*2
                     SELECT teMporal_3
                     APPEND BLANK
                     REPLACE ftM3fem WITH vfEc
                     REPLACE ftM3tc1 WITH ctC1
                     REPLACE ftM3tc2 WITH ctC2
                     REPLACE ftM3tc3 WITH ctC3
                     REPLACE ftM3tc4 WITH ctC4
                OTHERWISE
                     SELECT teMporal_4
                     APPEND BLANK
                     REPLACE ftM4fem WITH vfEc
                     REPLACE ftM4tc1 WITH ctC1
                     REPLACE ftM4tc2 WITH ctC2
                     REPLACE ftM4tc3 WITH ctC3
                     REPLACE ftM4tc4 WITH ctC4
           ENDCASE
           SELECT teMporal_1
           SKIP
           IF cnUm=vnUm*3
                EXIT
           ENDIF
      ENDDO
 ENDDO
 DO CASE
      CASE mpRt="1"
           STORE 18 TO mcLn
           STORE 120 TO ptAm
           STORE mcLn+61.6 TO vnUm
           STORE vnUm+61.6 TO cnUm
      CASE mpRt="2"
           STORE 12 TO mcLn
           STORE 94 TO ptAm
           STORE mcLn+61.6 TO vnUm
           STORE vnUm+61.6 TO cnUm
 ENDCASE
 STORE 0 TO vlIn, vpAg
 SELECT teMporal_4
 GOTO TOP
 SELECT teMporal_3
 GOTO TOP
 SELECT teMporal_2
 GOTO TOP
 STORE SUBSTR(DTOC(ftM2fem), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(ftM2fem), 7, 4) TO vaNo
 DO WHILE .T.
      SELECT teMporal_2
      DO CASE
           CASE EOF()
                SELECT teMporal_3
                IF EOF()
                     SELECT teMporal_4
                     IF EOF()
                          EXIT
                     ENDIF
                ENDIF
           CASE SUBSTR(DTOC(ftM2fem), 4, 2)<>vmEs .OR.  ;
                SUBSTR(DTOC(ftM2fem), 7, 4)<>vaNo
                STORE SUBSTR(DTOC(ftM2fem), 4, 2) TO vmEs
                STORE SUBSTR(DTOC(ftM2fem), 7, 4) TO vaNo
                STORE vlIn+1.3 TO vlIn
                LOOP
      ENDCASE
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           IF vpAg<>0
                DO paG_0000a WITH ptAm
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           DO caB_0000a WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO cb1_0000a WITH "Tipos de Cambio", "PUM9111A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde: "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
           ENDIF
           STORE vlIn+1 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.2 TO vlIn
           IF mpRt="2"
                STORE vlIn+0.4 TO vlIn
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+20.0 Say "Contable" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+43.5 Say "Empresa"  Font "&mLetAri",9 Style "BT"
                          @vLIN,vNUM+20.0 Say "Contable" Font "&mLetAri",9 Style "BT"
                          @vLIN,vNUM+43.5 Say "Empresa"  Font "&mLetAri",9 Style "BT"
                          @vLIN,cNUM+20.0 Say "Contable" Font "&mLetAri",9 Style "BT"
                          @vLIN,cNUM+43.5 Say "Empresa"  Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN+17.0 Say "Contable" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+33.5 Say "Empresa"  Font "&mLetAri",9 Style "NT"
                          @vLIN,vNUM+17.0 Say "Contable" Font "&mLetAri",9 Style "NT"
                          @vLIN,vNUM+33.5 Say "Empresa"  Font "&mLetAri",9 Style "NT"
                          @vLIN,cNUM+17.0 Say "Contable" Font "&mLetAri",9 Style "NT"
                          @vLIN,cNUM+33.5 Say "Empresa"  Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+1 TO vlIn
           IF mpRt="2"
                STORE vlIn+0.3 TO vlIn
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN      Say "Fecha"   Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+17.0 Say "Vta"     Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+27.5 Say "Cpra"    Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+40.3 Say "Vta"     Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+50.6 Say "Cpra"    Font "&mLetAri",9 Style "BT"
                          @vLIN,vNUM      Say "Fecha"   Font "&mLetAri",9 Style "BT"
                          @vLIN,vNUM+17.0 Say "Vta"     Font "&mLetAri",9 Style "BT"
                          @vLIN,vNUM+27.5 Say "Cpra"    Font "&mLetAri",9 Style "BT"
                          @vLIN,vNUM+40.3 Say "Vta"     Font "&mLetAri",9 Style "BT"
                          @vLIN,vNUM+50.6 Say "Cpra"    Font "&mLetAri",9 Style "BT"
                          @vLIN,cNUM      Say "Fecha"   Font "&mLetAri",9 Style "BT"
                          @vLIN,cNUM+17.0 Say "Vta"     Font "&mLetAri",9 Style "BT"
                          @vLIN,cNUM+27.5 Say "Cpra"    Font "&mLetAri",9 Style "BT"
                          @vLIN,cNUM+40.3 Say "Vta"     Font "&mLetAri",9 Style "BT"
                          @vLIN,cNUM+50.6 Say "Cpra"    Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN      Say "Fecha"   Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+17.0 Say "Vta"     Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+25.9 Say "Cpra"    Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+36.0 Say "Vta"     Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+44.5 Say "Cpra"    Font "&mLetAri",9 Style "NT"
                          @vLIN,vNUM      Say "Fecha"   Font "&mLetAri",9 Style "NT"
                          @vLIN,vNUM+17.0 Say "Vta"     Font "&mLetAri",9 Style "NT"
                          @vLIN,vNUM+25.9 Say "Cpra"    Font "&mLetAri",9 Style "NT"
                          @vLIN,vNUM+36.0 Say "Vta"     Font "&mLetAri",9 Style "NT"
                          @vLIN,vNUM+44.5 Say "Cpra"    Font "&mLetAri",9 Style "NT"
                          @vLIN,cNUM      Say "Fecha"   Font "&mLetAri",9 Style "NT"
                          @vLIN,cNUM+17.0 Say "Vta"     Font "&mLetAri",9 Style "NT"
                          @vLIN,cNUM+25.9 Say "Cpra"    Font "&mLetAri",9 Style "NT"
                          @vLIN,cNUM+36.0 Say "Vta"     Font "&mLetAri",9 Style "NT"
                          @vLIN,cNUM+44.5 Say "Cpra"    Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           DO coL_pr1
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT teMporal_2
      IF  .NOT. EOF()
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN      Say FTM2FEM Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+22.4 Say FTM2TC1 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,mCLN+34.4 Say FTM2TC2 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,mCLN+46.4 Say FTM2TC3 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,mCLN+58.4 Say FTM2TC4 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                     CASE mpRt="2"
                          @vLIN,mCLN      Say FTM2FEM Font "&mLetSwi",9 Style "NT"
                          @vLIN,mCLN+14.5 Say FTM2TC1 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10
                          @vLIN,mCLN+24.5 Say FTM2TC2 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10
                          @vLIN,mCLN+34.5 Say FTM2TC3 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10
                          @vLIN,mCLN+44.5 Say FTM2TC4 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10
                ENDCASE
           ENDIF
           SKIP
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT teMporal_3
      IF  .NOT. EOF() .AND. SUBSTR(DTOC(ftM3fem), 4, 2)=vmEs .AND.  ;
          SUBSTR(DTOC(ftM3fem), 7, 4)=vaNo
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,vNUM      Say FTM3FEM Font "&mLetAri",9 Style "NT"
                          @vLIN,vNUM+22.4 Say FTM3TC1 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,vNUM+34.4 Say FTM3TC2 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,vNUM+46.4 Say FTM3TC3 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,vNUM+58.4 Say FTM3TC4 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                     CASE mpRt="2"
                          @vLIN,vNUM      Say FTM3FEM Font "&mLetSwi",9 Style "NT"
                          @vLIN,vNUM+14.5 Say FTM3TC1 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10.5
                          @vLIN,vNUM+24.5 Say FTM3TC2 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10.5
                          @vLIN,vNUM+34.5 Say FTM3TC3 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10.5
                          @vLIN,vNUM+44.5 Say FTM3TC4 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10.5
                ENDCASE
           ENDIF
           SKIP
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT teMporal_4
      IF  .NOT. EOF() .AND. SUBSTR(DTOC(ftM4fem), 4, 2)=vmEs .AND.  ;
          SUBSTR(DTOC(ftM4fem), 7, 4)=vaNo
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,cNUM      Say FTM4FEM Font "&mLetAri",9 Style "NT"
                          @vLIN,cNUM+22.4 Say FTM4TC1 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,cNUM+34.4 Say FTM4TC2 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,cNUM+46.4 Say FTM4TC3 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                          @vLIN,cNUM+58.4 Say FTM4TC4 Font "&mLetAri",9 Style "NT" Pict "99.99999" Size 1,11.2
                     CASE mpRt="2"
                          @vLIN,cNUM      Say FTM4FEM Font "&mLetSwi",9 Style "NT"
                          @vLIN,cNUM+14.5 Say FTM4TC1 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10.5
                          @vLIN,cNUM+24.5 Say FTM4TC2 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10.5
                          @vLIN,cNUM+34.5 Say FTM4TC3 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10.5
                          @vLIN,cNUM+44.5 Say FTM4TC4 Font "&mLetSwi",9 Style "NT" Pict "99.99999" Size 1,10.5
                ENDCASE
           ENDIF
           SKIP
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_9111a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+33.8 TO vcBi
 STORE 00 TO viT1
 Define Popup vTB1 from 4,mCO0+39 to mWFI-2,mCO0+70 Font "&mLetAri",13 Style "NQ" Prompt Field "  "+Substr(Dtoc(F9111FEM),1,2)+" / "+Substr(Dtoc(F9111FEM),4,2)+" / "+Substr(Dtoc(F9111FEM),7,4) Scroll Color Scheme 10 Footer "FECHAS CON T/C"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Tipos de Cambios"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1.1, mcO0+muCo-0.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.5,mCO0+3  Say "FECHA:"               Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+14 Say "T/C CONTABLE VENTAS"  Font "&mLetAri",10 Style "NT"
 @mFI0+5.5,mCO0+14 Say "T/C CONTABLE COMPRAS" Font "&mLetAri",10 Style "NT"
 @mFI0+7.5,mCO0+14 Say "T/C EMPRESA VENTAS"   Font "&mLetAri",10 Style "NT"
 @mFI0+9.5,mCO0+14 Say "T/C EMPRESA COMPRAS"  Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0+0.4,mCO0+19 Get vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,10.1               Color ,&mColBlN
 @mFI0+3.5,mCO0+48 Get vTC1                   Font "&mLetAri",9  Style "NQ" Size 1,12 Pict "99.99999" Color ,&mColBlN
 @mFI0+5.5,mCO0+48 Get vTC2                   Font "&mLetAri",9  Style "NQ" Size 1,12 Pict "99.99999" Color ,&mColBlN
 @mFI0+7.5,mCO0+48 Get vTC3                   Font "&mLetAri",9  Style "NQ" Size 1,12 Pict "99.99999" Color ,&mColBlN
 @mFI0+9.5,mCO0+48 Get vTC4                   Font "&mLetAri",9  Style "NQ" Size 1,12 Pict "99.99999" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO prEsiona WITH "1", "INTERN", mmF1+4, 0
 ELSE
      DO prEsiona WITH "3", "INTERN", mmF1+4, 0
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Jal_9111a
 PRIVATE piNt_exp, phTml
 PRIVATE piNi, pfIn, ptAm, pfRa, ptAb, pnUm, pnU1, pnU2, pfEc, pfEm, piTe,  ;
         pdIa, ptCc, ptCv
 piNt_exp = CREATEOBJECT("InternetExplorer.Application")
 piNt_exp.viSible = .F.
 piNt_exp.naVigate("http://www.sunat.gob.pe/cl-at-ittipcam/tcS01Alias")
 STORE 1 TO pnUm
 WAIT WINDOW NOWAIT "Conectandose a la SUNAT..."
 DO WHILE piNt_exp.reAdystate<>4
      STORE pnUm+1 TO pnUm
      IF pnUm=50000
           EXIT
      ENDIF
 ENDDO
 IF pnUm=50000
      WAIT WINDOW NOWAIT  ;
           "En este momento no hay conexión a Internet intente en unos minutos..."
      = INKEY(1.5)
      WAIT CLEAR
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Bajando Tipos de Cambio..."
 = INKEY(0.5)
 phTml = piNt_exp.doCument.boDy.inNertext
 piNi = RAT("Día", phTml)+14
 pfIn = AT("Notas:", phTml)
 STORE pfIn-piNi TO ptAm
 pfRa = SUBSTR(phTml, piNi, ptAm)
 piNt_exp.quIt()
 RELEASE piNt_exp
 PUSH KEY CLEAR
 CREATE CURSOR pTAB (ftM0fec D (8), ftM0tcc N (6, 3), ftM0tcv N (6, 3))
 pfEc = SUBSTR(DTOC(DATE()), 3, 8)
 STORE 99 TO mkEy
 STORE 01 TO pnUm
 SET ESCAPE ON
 ON ESCAPE STORE 9000 TO MKEY
 SELECT ptAb
 DO WHILE .T.
      IF mkEy=9000 .OR. pnUm>62
           EXIT
      ENDIF
      STORE AT(".", pfRa, pnUm) TO pnU1
      STORE AT(".", pfRa, pnUm+1) TO pnU2
      STORE SUBSTR(pfRa, pnU1-1, 5) TO ptCc
      STORE SUBSTR(pfRa, pnU2-1, 5) TO ptCv
      DO CASE
           CASE pnUm>9 .OR. (SUBSTR(pfRa, pnU1-4, 2)>="1" .AND.  ;
                SUBSTR(pfRa, pnU1-4, 2)<="3")
                STORE SUBSTR(pfRa, pnU1-4, 2) TO pdIa
           OTHERWISE
                STORE SUBSTR(pfRa, pnU1-3, 1) TO pdIa
                STORE "0"+pdIa TO pdIa
      ENDCASE
      IF AT(" ", DTOC(CTOD(pdIa+pfEc)))=0
           APPEND BLANK
           REPLACE ptAb.ftM0fec WITH CTOD(pdIa+pfEc)
           REPLACE ptAb.ftM0tcc WITH VAL(ptCc)
           REPLACE ptAb.ftM0tcv WITH VAL(SUBSTR(ptCv, 1, 5))
      ENDIF
      STORE pnUm+2 TO pnUm
 ENDDO
 IF mkEy<>9000
      SELECT ptAb
      GOTO TOP
      DO WHILE  .NOT. EOF()
           IF mkEy=9000
                EXIT
           ENDIF
           STORE ptAb.ftM0fec TO pfEc, pfEm
           STORE ptAb.ftM0tcc TO ptCc
           STORE ptAb.ftM0tcv TO ptCv
           SELECT caMbio
           WAIT WINDOW NOWAIT "Grabando "+DTOC(pfEm)
           = INKEY(0.01)
           DO WHILE .T.
                SEEK pfEm
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f9111fem WITH pfEm
                     REPLACE f9111tc3 WITH ptCv
                     REPLACE f9111tc4 WITH ptCc
                ELSE
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH pfEm
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ENDIF
                REPLACE f9111tc1 WITH ptCv
                REPLACE f9111tc2 WITH ptCc
                IF f9111tc3<=0
                     REPLACE f9111tc3 WITH ptCv
                ENDIF
                IF f9111tc4<=0
                     REPLACE f9111tc4 WITH ptCc
                ENDIF
                UNLOCK
                STORE pfEm+1 TO pfEm
                IF pfEm>DATE() .OR. SUBSTR(DTOC(pfEc), 7, 4)<> ;
                   SUBSTR(DTOC(pfEm), 7, 4) .OR. SUBSTR(DTOC(pfEc), 4, 2)<> ;
                   SUBSTR(DTOC(pfEm), 4, 2)
                     EXIT
                ENDIF
           ENDDO
           SELECT ptAb
           SKIP
      ENDDO
      IF mkEy<>9000
           WAIT WINDOW NOWAIT "Tipos de Cambio actualizados..."+CHR(13)+ ;
                "Presionar una tecla para salir de la Sunat"
           = INKEY(0)
      ENDIF
 ENDIF
 WAIT CLEAR
 RELEASE piNt_exp, phTml, piNi, pfIn, pfRa, ptAb, pnUm, pdEs, pfEc, pfEm,  ;
         piTe, ptCc, ptCv
ENDPROC
*
PROCEDURE Jl1_9111a
 PRIVATE pfEc, pfEm, ptCc, ptCv
 SELECT 6
 USE TC ALIAS arChivo
 INDEX ON feM TO IDX
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=9000
           EXIT
      ENDIF
      STORE feM TO pfEc, pfEm
      STORE tcC TO ptCc
      STORE tcV TO ptCv
      SELECT caMbio
      DO WHILE .T.
           SEEK pfEm
           IF EOF()
                DO nuEvo_rg
                REPLACE f9111fem WITH pfEm
                REPLACE f9111tc3 WITH ptCv
                REPLACE f9111tc4 WITH ptCc
           ELSE
                IF  .NOT. RLOCK()
                     DO reG_lock WITH pfEm
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          = INKEY(0.01)
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
           REPLACE f9111tc1 WITH ptCv
           REPLACE f9111tc2 WITH ptCc
           IF f9111tc3<=0
                REPLACE f9111tc3 WITH ptCv
           ENDIF
           IF f9111tc4<=0
                REPLACE f9111tc4 WITH ptCc
           ENDIF
           UNLOCK
           STORE pfEm+1 TO pfEm
           IF pfEm>DATE() .OR. SUBSTR(DTOC(pfEc), 7, 4)<> ;
              SUBSTR(DTOC(pfEm), 7, 4) .OR. SUBSTR(DTOC(pfEc), 4, 2)<> ;
              SUBSTR(DTOC(pfEm), 4, 2)
                EXIT
           ENDIF
      ENDDO
      SELECT arChivo
      SKIP
 ENDDO
 RELEASE pfEc, pfEm, ptCc, ptCv
ENDPROC
*
PROCEDURE Clp_9111a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1+4 .AND. mfIl<=mmF1+7.214 .AND. mcCc>=0 .AND. mcCc<=9.6
           STORE k_Alt_c TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.40 .AND. viTe>1
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.20 .AND. viTe>1
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+24.2 .AND.  ;
           mcCc<=mmC1+33
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.80
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.40
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.60
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.821 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+2.6 .AND. mcCc<=mcO0+33.6
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.607 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+14.8 .AND. mcCc<=mcO0+61
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.464 .AND. mfIl<=mfI0+6.678 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+14.8 .AND. mcCc<=mcO0+61
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+7.464 .AND. mfIl<=mfI0+8.678 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+14.8 .AND. mcCc<=mcO0+61
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+9.464 .AND. mfIl<=mfI0+10.678 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+14.8 .AND. mcCc<=mcO0+61
           STORE 05 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9111a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y  eliminar las Fechas  en donde se  registrarán los Tipos de"
 @ pfIl+2, 3 SAY "Cambio que el Sistema utilizará."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Fechas"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
 STORE 99 TO mkEy
 DIMENSION plIs(2, 2)
 IF APRINTERS(plIs)=0
      STORE "No hay Impresoras instaladas..." TO mmSj
      STORE k_Esc TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+10.4,pCOL+10 Say "Desde Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+11.8,pCOL+10 Say "Hasta Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.2,pCOL+04 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 @pFIL+07.4,pCOL+10 Say "Desde Fecha:"          Font "&mLetRom",11 Style "BT"
 @pFIL+08.8,pCOL+10 Say "Hasta Fecha:"          Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_2
           @ pfIl+3.5, pcOl+32 TO pfIl+7, pcOl+54 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+3.3,pCOL+32 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+3.3,pCOL+32 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+07.5,pCOL+31.8 Get dFEM Font "&mLetAri",9 Style "NQ" Size 1,12.4 Color ,&mColBlZ Range iFEM,uFEM
      @pFIL+08.9,pCOL+31.8 Get hFEM Font "&mLetAri",9 Style "NQ" Size 1,12.4 Color ,&mColBlZ Range dFEM,uFEM Valid dFEM <= hFEM
      @pFIL+10.5,pCOL+31.8 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.9,pCOL+31.8 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+18.4,pCOL+06.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. (poPc=1 .OR. poPc=3)
                DO CASE
                     CASE dfEm>hfEm
                          STORE "Fecha Inicial mayor a Fecha Final..." TO mmSj
                          DO poNmsj
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=1
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          SELECT caMbio
                          GOTO TOP
                          SET NEAR ON
                          SEEK dfEm
                          SET NEAR OFF
                          IF EOF() .OR. f9111fem>hfEm
                               STORE "Rango de Fechas no se encuentra registrados..."  ;
                                     TO mmSj
                               STORE ifEm TO dfEm
                               STORE ufEm TO hfEm
                          ELSE
                               STORE k_Enter TO mkEy
                               IF poPc=3
                                    STORE 1 TO mvIs
                               ELSE
                                    STORE 0 TO mvIs
                               ENDIF
                               EXIT
                          ENDIF
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE 0 TO mvIs
                STORE k_Esc TO mkEy
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1 IN MODSET
 DO deL_file1 IN PUM9111A
 RELEASE viTe, ciTx, viT1, vfEm, cfEm, vtC1, ctC1, vtC2, ctC2, vtC3, ctC3,  ;
         vtC4, ctC4
 RELEASE vtB1, vlIn, vpAg, vfBi, vcBi, dfEm, hfEm, ifEm, ufEm, vfEc, vmEs,  ;
         vaNo, vnUm
 RELEASE unUm, cnUm
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
 DO deL_file2 WITH "1", "S"
 DO deL_file2 WITH "2", "S"
 DO deL_file2 WITH "3", "S"
 DO deL_file2 WITH "4", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4
ENDPROC
*
