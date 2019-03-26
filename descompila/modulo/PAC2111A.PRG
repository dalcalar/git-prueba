 PARAMETER wtPo, wnIv
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr
 DO tmP_2111a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DIMENSION afIl[12, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2111TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111BAS"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "F2111ESP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
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
 INDEX ON UPPER(ALLTRIM(f2111bas))+"*"+f2111tip+UPPER(ALLTRIM(f2111des))+ ;
       UPPER(ALLTRIM(f2111cod))+"*" TAG f2111tip
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[4, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2111GRU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111NGR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111BAS"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2111DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
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
           DO deL_file2 WITH "2", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON f2111gru+ALLTRIM(f2111bas)+"*" TAG f2111bas
 INDEX ON f2111gru+UPPER(f2111des)+ALLTRIM(f2111bas)+"*" TAG f2111des
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
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
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Productos/Servicios/Activos Fijos no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 DO CASE
      CASE wtPo="2"
           SET FILTER TO f2111tpo=1
      CASE wtPo="3"
           SET FILTER TO f2111tpo=2
      CASE wtPo="4"
           SET FILTER TO f2111tpo=3
      CASE wtPo="5"
           SET FILTER TO f2111tpo=1 .AND. f2111imp=1
 ENDCASE
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos para esta consulta" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "1104", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cod_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1104COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Base
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Base_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111BAS
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 STORE 00 TO meRr
 DO vaR_2111a
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsWa, vsWb, vpAl, cpAl, vlIn,  ;
        vpAg, vfIl
 PUBLIC ifIl, ufIl, ffIl, cfIl, vcOd, icOd, ucOd, ccOd, dcOd, hcOd, vdEs,  ;
        idEs, udEs
 PUBLIC cdEs, vbAs, ibAs, ubAs, cbAs, vtIp, itIp, utIp, ctIp, xnTi, cdCr,  ;
        clA1, clA2
 PUBLIC clA3, caN1, caN2, caN3, ceSp, xnT1, xnT2, xnT3, xnT4, xnT5, cgRu,  ;
        cnGr, xnGr
 PUBLIC ctOt, xtPp, vcOp, vaLt, vsEp, vtB1, vtB2, vtB3, vfB7, vfB8, vfB9,  ;
        vfB0, vfBa
 PUBLIC vfBb, vfBc, vfBd, vfBe, vfBf, vcB7, vcB8, vcB9, vcB0, vcBa, vcBb,  ;
        vcBc, vcBd
 PUBLIC vcBe, vcBf, voPc, vtPo, vuFi, vuCo, vfI0, vcO0, vxLs, vcL1, vcL2,  ;
        vcL3, vcL4
 PUBLIC vcL5, vcL6, vcL7, vcL8, vcL9, vcL0, vnO1, vnO2, vnO3, vnO4, vnO5,  ;
        vnO6, vnO7
 PUBLIC vnO8, vnO9, vnO0, vrF1, vrF2, vrF3, vrF4, vrF5, vrF6, vrF7, vrF8,  ;
        vrF9, vrF0
 PUBLIC viTe, veSt, cnUv, vuLt, viNi, vmOd
 PUBLIC vpAn_11, vpAn_99
 STORE SPACE(70) TO vpAl, vmAr
 STORE SPACE(01) TO vtIp, itIp, utIp
 STORE SPACE(120) TO vdEs, idEs, udEs
 STORE SPACE(mtMa) TO vcOd, icOd, ucOd, vbAs, ibAs, ubAs
 STORE SPACE(04) TO vcL1, vcL2, vcL3, vcL4, vcL5, vcL6, vcL7, vcL8, vcL9, vcL0
 STORE SPACE(70) TO vnO1, vnO2, vnO3, vnO4, vnO5, vnO6, vnO7, vnO8, vnO9, vnO0
 STORE SPACE(20) TO vrF1, vrF2, vrF3, vrF4, vrF5, vrF6, vrF7, vrF8, vrF9, vrF0
 STORE 01 TO vsW0, csW0, vsW1, vsW2, vsWa, voP1, vuLt
 STORE 00 TO csW1, voP2, voP3, voP4
 STORE 02 TO vsWb
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SELECT grUpos
 GOTO TOP
 STORE f9216cod TO vgRu
 STORE f9216des TO vnGr
 SELECT tiP_prod
 GOTO TOP
 STORE f9211tip TO vtPp
 STORE f9211nti TO vnTi
 SELECT prOductos
 GOTO BOTTOM
 STORE f2111cod TO hcOd
 GOTO TOP
 STORE f2111cod TO dcOd
 SET READBORDER ON
 DO p00_2111a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a IN MODSET
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2111a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2111a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2111a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2111a
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
                DO coLplp
                DO CASE
                     CASE vsW0=1
                          STORE 2 TO vsW0
                     CASE vsW0=2
                          STORE 3 TO vsW0
                          STORE 0 TO csW0
                          @ ifIl-1.5, icLn+23.8 CLEAR TO ifIl-0.2, ucLn
                          @ ifIl-0.1, icLn CLEAR TO ffIl+1.0, ucLn
                     CASE vsW0=3
                          STORE 1 TO vsW0
                          STORE 0 TO csW0
                          @ ifIl-1.5, icLn+23.8 CLEAR TO ifIl-0.2, ucLn
                          @ ifIl-0.1, icLn CLEAR TO ffIl+1.0, ucLn
                ENDCASE
                @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
                DO p01_2111a
           CASE mkEy=k_F9 .AND. vsW0<>3
                DO opC_2111a IN PAC2111A WITH "PAC2111A", "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                IF vsW0=3
                     DO prEsiona WITH "4", "R_CONS23", mmF1, mmC1
                ELSE
                     DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                ENDIF
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
                DO paC2111b
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
      DO geT_2111a
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_2111a
 PARAMETER ppRg, ptPo
 PRIVATE psW0, psW1, psW2, psW3, psW4, pnU1, pnU2, pnU3, pnU4, pdE1, pdE2,  ;
         pdE3, pdE4, pdE5, pdEs
 DO rs2_2111a IN PAC2111A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO CASE
                CASE ppRg="PAC2111A"
                     DO rs1_2111a IN PAC2111A
                CASE ppRg="PAC2112A"
                     DO rs1_2112a IN PAC2112A
                CASE ppRg="PAC2113A"
                     DO rs1_2113a IN PAC2113A
                CASE ppRg="PAC2114A"
                     DO rs1_2114a IN PAC2114A
                CASE ppRg="PAC2116A"
                     DO rs1_2116a IN PAC2116A
                CASE ppRg="PAC2117A"
                     DO rs1_2117a IN PAC2117A
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF ptPo="2"
                SET READBORDER ON
           ENDIF
           DO rs2_2111a IN PAC2111A
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=vfB3-0.021 .AND. mfIl<=vfB3+1.093 .AND. mcCc>= ;
                     vcB3+77.2 .AND. mcCc<=vcB3+80.8 .AND. vsWb=1
                     DO coLsc7
                     STORE 2 TO vsWb
                     @ vfB3-0.1, vcB3+77.2 TO vfB3+1.1, vcB3+80.9 PATTERN  ;
                       1 PEN 1
                     @vFB3-.1,vCB3+77.5 Say "M" Font "&mLetRom",11 Style "BT"
                CASE mfIl>=vfB3-0.021 .AND. mfIl<=vfB3+1.093 .AND. mcCc>= ;
                     vcB3+77.2 .AND. mcCc<=vcB3+80.8 .AND. vsWb=2
                     DO coLsc7
                     STORE 1 TO vsWb
                     @ vfB3-0.1, vcB3+77.2 TO vfB3+1.1, vcB3+80.9 PATTERN  ;
                       1 PEN 1
                     @vFB3-.1,vCB3+78.2 Say "S" Font "&mLetRom",11 Style "BT"
                CASE mfIl>=vfB3+0.021 .AND. mfIl<=vfB3+0.95 .AND. mcCc>= ;
                     vcB3+74 .AND. mcCc<=vcB3+76 .AND. vsWa=1
                     RESTORE SCREEN FROM vpAn_11
                     STORE 02 TO vsWa
                     DO rs3_2111a
                     STORE 99 TO mkEy
                CASE mfIl>=vfB3+0.021 .AND. mfIl<=vfB3+0.95 .AND. mcCc>= ;
                     vcB3+74 .AND. mcCc<=vcB3+76 .AND. vsWa=2
                     RESTORE SCREEN FROM vpAn_11
                     STORE 01 TO vsWa, voP1
                     DO rs3_2111a
                     STORE 99 TO mkEy
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
                CASE mfIl>=vfB1-0.014 .AND. mfIl<=vfB1+1.2 .AND. mcCc>= ;
                     vcB1-0.700 .AND. mcCc<=vcB1+3.7 .AND. voP2=1 .AND. vsWa=2
                     DO grU_2111a IN PAC2111A
                     STORE 99 TO mkEy
                CASE mfIl>=vfB2-0.014 .AND. mfIl<=vfB2+1.2 .AND. mcCc>= ;
                     vcB2-0.700 .AND. mcCc<=vcB2+3.7 .AND. voP3=1 .AND. vsWa=2
                     DO tiP_2111a IN PAC2111A
                     STORE 99 TO mkEy
                CASE mfIl>=vfB3 .AND. mfIl<=vfB3+0.878 .AND. mcCc>=vcB3  ;
                     .AND. mcCc<=vcB3+2.4 .AND. voP1=1 .AND. vsWa=2
                     DO coLsc3
                     STORE 0 TO voP1
                     @vFB3+1.3,vCB3+4.5 Edit vPAL Font "&mLetAri",9 Style "NQ" Size 1,68,70
                     READ TIMEOUT 0.01
                     DO prEsiona WITH "1", "NO", vfB3, vcB3
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                CASE mfIl>=vfB3 .AND. mfIl<=vfB3+0.878 .AND. mcCc>=vcB3  ;
                     .AND. mcCc<=vcB3+2.4 .AND. voP1=0 .AND. vsWa=2
                     STORE 1 TO voP1
                     DO prEsiona WITH "1", "SI", vfB3, vcB3
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                CASE mfIl>=vfB4 .AND. mfIl<=vfB4+0.878 .AND. mcCc>=vcB4  ;
                     .AND. mcCc<=vcB4+2.4 .AND. voP2=1 .AND. vsWa=2
                     STORE 0 TO voP2
                     STORE SPACE(02) TO vgRu
                     STORE SPACE(30) TO vnGr
                     DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "NO", vfB4, vcB4
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO coLsc3
                     @vFB4+1.3,vCB4+4.5 Edit vNGR Font "&mLetAri",9 Style "NQ" Size 1,35,30
                     READ TIMEOUT 0.01
                CASE mfIl>=vfB4 .AND. mfIl<=vfB4+0.878 .AND. mcCc>=vcB4  ;
                     .AND. mcCc<=vcB4+2.4 .AND. voP2=0 .AND. vsWa=2
                     SELECT grUpos
                     GOTO TOP
                     STORE 1 TO voP2
                     STORE f9216cod TO vgRu
                     STORE f9216des TO vnGr
                     DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "SI", vfB4, vcB4
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO coLsc3
                     @vFB4+1.3,vCB4+4.5 Edit vNGR Font "&mLetAri",9 Style "NQ" Size 1,35,30
                     READ TIMEOUT 0.01
                CASE mfIl>=vfB5 .AND. mfIl<=vfB5+0.878 .AND. mcCc>=vcB5  ;
                     .AND. mcCc<=vcB5+2.4 .AND. voP3=1 .AND. vsWa=2
                     STORE 0 TO voP3
                     STORE SPACE(02) TO vtPp
                     STORE SPACE(30) TO vnTi
                     DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "NO", vfB5, vcB5
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO coLsc3
                     @vFB5+1.3,vCB5+4.5 Edit vNTI Font "&mLetAri",9 Style "NQ" Size 1,35,30
                     READ TIMEOUT 0.01
                CASE mfIl>=vfB5 .AND. mfIl<=vfB5+0.878 .AND. mcCc>=vcB5  ;
                     .AND. mcCc<=vcB5+2.4 .AND. voP3=0 .AND. vsWa=2
                     SELECT tiP_prod
                     GOTO TOP
                     STORE 1 TO voP3
                     STORE f9211tip TO vtPp
                     STORE f9211nti TO vnTi
                     DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "SI", vfB5, vcB5
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO coLsc3
                     @vFB5+1.3,vCB5+4.5 Edit vNTI Font "&mLetAri",9 Style "NQ" Size 1,35,30
                     READ TIMEOUT 0.01
                CASE mfIl>=vfB6 .AND. mfIl<=vfB6+0.878 .AND. mcCc>=vcB6  ;
                     .AND. mcCc<=vcB6+2.4 .AND. voP4=1 .AND. vsWa=2
                     DO coLsc3
                     STORE 0 TO voP4
                     @vFB6+1.3,vCB6+4.5 Edit vMAR Font "&mLetAri",9 Style "NQ" Size 1,35,30
                     READ TIMEOUT 0.01
                     DO prEsiona WITH "1", "NO", vfB6, vcB6
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                CASE mfIl>=vfB6 .AND. mfIl<=vfB6+0.878 .AND. mcCc>=vcB6  ;
                     .AND. mcCc<=vcB6+2.4 .AND. voP4=0 .AND. vsWa=2
                     STORE 1 TO voP4
                     DO prEsiona WITH "1", "SI", vfB6, vcB6
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                IF msAl=1
                     STORE "S" TO moPc
                     IF msLd="S"
                          DO prE_docum WITH  ;
                             "¿Está seguro de Salir del Sistema?"
                     ENDIF
                     IF moPc$"Ss"
                          CLOSE ALL
                          DO CASE
                               CASE ppRg="PAC2111A"
                                    DO deL_files IN PAC2111A
                               CASE ppRg="PAC2112A"
                                    DO deL_files IN PAC2112A
                               CASE ppRg="PAC2113A"
                                    DO deL_files IN PAC2113A
                               CASE ppRg="PAC2114A"
                                    DO deL_files IN PAC2114A
                               CASE ppRg="PAC2116A"
                                    DO deL_files IN PAC2116A
                               CASE ppRg="PAC2117A"
                                    DO deL_files IN PAC2117A
                          ENDCASE
                          RELEASE ALL
                          QUIT
                     ENDIF
                ELSE
                     CLOSE ALL
                     RELEASE ALL
                     QUIT
                ENDIF
           CASE mkEy=k_F12
                DO CASE
                     CASE ppRg="PAC2111A"
                          DO rs1_2111a IN PAC2111A
                     CASE ppRg="PAC2112A"
                          DO rs1_2112a IN PAC2112A
                     CASE ppRg="PAC2113A"
                          DO rs1_2113a IN PAC2113A
                     CASE ppRg="PAC2114A"
                          DO rs1_2114a IN PAC2114A
                     CASE ppRg="PAC2116A"
                          DO rs1_2116a IN PAC2116A
                     CASE ppRg="PAC2117A"
                          DO rs1_2117a IN PAC2117A
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_2111a IN PAC2111A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F1 .AND. ptPo<"3"
                DO hl2_2111a IN PAC2111A WITH ptPo
           CASE mkEy=k_Esc
                STORE 00 TO voP2, voP3, voP4
                STORE 01 TO voP1
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. voP1=0 .AND. voP2=0 .AND. voP3=0 .AND.  ;
                voP4=0
                STORE "Tiene que estar seleccionada por lo menos una Opción"  ;
                      TO mmSj
                STORE 99 TO mkEy
                DO poNmsj
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0 .AND. voP1=1
                STORE 00 TO voP2, voP3, voP4
                STORE 01 TO vsW1, voP1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vmAr))=0 .AND. voP4=1
                STORE 00 TO voP1, voP2, voP3
                STORE 01 TO vsW1, voP4
                STORE SPACE(70) TO vmAr
                EXIT
           CASE mkEy=k_Enter
                STORE UPPER(ALLTRIM(vpAl)) TO pdE1
                IF vsWb=2 .AND. voP1=1
                     STORE UPPER(ALLTRIM(vpAl)) TO pdE1
                     STORE AT(",", vpAl, 1) TO pnU1
                     STORE AT(",", vpAl, 2) TO pnU2
                     STORE AT(",", vpAl, 3) TO pnU3
                     STORE AT(",", vpAl, 4) TO pnU4
                     STORE "" TO pdE2, pdE3, pdE4, pdE5
                     IF pnU1<>0
                          STORE SUBSTR(vpAl, 1, pnU1-1) TO pdE1
                     ENDIF
                     IF pnU2=0
                          IF pnU1>0
                               STORE SUBSTR(vpAl, pnU1+1) TO pdE2
                          ENDIF
                     ELSE
                          STORE SUBSTR(vpAl, pnU1+1, pnU2-pnU1-1) TO pdE2
                     ENDIF
                     IF pnU3=0
                          IF pnU2>0
                               STORE SUBSTR(vpAl, pnU2+1) TO pdE3
                          ENDIF
                     ELSE
                          STORE SUBSTR(vpAl, pnU2+1, pnU3-pnU2-1) TO pdE3
                     ENDIF
                     IF pnU4=0
                          IF pnU3>0
                               STORE SUBSTR(vpAl, pnU3+1) TO pdE4
                          ENDIF
                     ELSE
                          STORE SUBSTR(vpAl, pnU3+1, pnU4-pnU3-1) TO pdE4
                          STORE SUBSTR(vpAl, pnU4+1) TO pdE5
                     ENDIF
                     STORE UPPER(ALLTRIM(pdE1)) TO pdE1
                     STORE UPPER(ALLTRIM(pdE2)) TO pdE2
                     STORE UPPER(ALLTRIM(pdE3)) TO pdE3
                     STORE UPPER(ALLTRIM(pdE4)) TO pdE4
                     STORE UPPER(ALLTRIM(pdE5)) TO pdE5
                ENDIF
                SELECT teMporal
                ZAP
                REINDEX
                SELECT prOductos
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     STORE 0 TO psW0, psW1, psW2, psW3, psW4
                     STORE UPPER(ALLTRIM(f2111des)) TO pdEs
                     STORE UPPER(ALLTRIM(f2111dcr)) TO pdCr
                     DO CASE
                          CASE vsWb=1 .AND. voP1=1 .AND. (AT(pdE1, pdEs)<> ;
                               0 .OR. AT(pdE1, pdCr)<>0)
                               STORE 1 TO psW1
                          CASE vsWb=2 .AND. voP1=1
                               DO CASE
                                    CASE LEN(ALLTRIM(pdE1))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE2))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE3))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE4))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE5))<>0
                                         IF (AT(pdE1, pdEs)<>0 .AND.  ;
                                          AT(pdE2, pdEs)<>0 .AND. AT(pdE3,  ;
                                          pdEs)<>0 .AND. AT(pdE4, pdEs)<> ;
                                          0 .AND. AT(pdE5, pdEs)<>0) .OR.  ;
                                          (AT(pdE1, pdCr)<>0 .AND.  ;
                                          AT(pdE2, pdCr)<>0 .AND. AT(pdE3,  ;
                                          pdCr)<>0 .AND. AT(pdE4, pdCr)<> ;
                                          0 .AND. AT(pdE5, pdCr)<>0)
                                              STORE 1 TO psW1
                                         ENDIF
                                    CASE LEN(ALLTRIM(pdE1))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE2))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE3))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE4))<>0
                                         IF (AT(pdE1, pdEs)<>0 .AND.  ;
                                          AT(pdE2, pdEs)<>0 .AND. AT(pdE3,  ;
                                          pdEs)<>0 .AND. AT(pdE4, pdEs)<> ;
                                          0) .OR. (AT(pdE1, pdCr)<>0  ;
                                          .AND. AT(pdE2, pdCr)<>0 .AND.  ;
                                          AT(pdE3, pdCr)<>0 .AND. AT(pdE4,  ;
                                          pdCr)<>0)
                                              STORE 1 TO psW1
                                         ENDIF
                                    CASE LEN(ALLTRIM(pdE1))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE2))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE3))<>0
                                         IF (AT(pdE1, pdEs)<>0 .AND.  ;
                                          AT(pdE2, pdEs)<>0 .AND. AT(pdE3,  ;
                                          pdEs)<>0) .OR. (AT(pdE1, pdCr)<> ;
                                          0 .AND. AT(pdE2, pdCr)<>0 .AND.  ;
                                          AT(pdE3, pdCr)<>0)
                                              STORE 1 TO psW1
                                         ENDIF
                                    CASE LEN(ALLTRIM(pdE1))<>0 .AND.  ;
                                     LEN(ALLTRIM(pdE2))<>0
                                         IF (AT(pdE1, pdEs)<>0 .AND.  ;
                                          AT(pdE2, pdEs)<>0) .OR.  ;
                                          (AT(pdE1, pdCr)<>0 .AND.  ;
                                          AT(pdE2, pdCr)<>0)
                                              STORE 1 TO psW1
                                         ENDIF
                                    CASE LEN(ALLTRIM(pdE1))<>0
                                         IF AT(pdE1, pdEs)<>0 .OR.  ;
                                          AT(pdE1, pdCr)<>0
                                              STORE 1 TO psW1
                                         ENDIF
                               ENDCASE
                     ENDCASE
                     IF voP2=1 .AND. f2111gru=vgRu
                          STORE 1 TO psW2
                     ENDIF
                     IF voP3=1 .AND. f2111tip=vtPp
                          STORE 1 TO psW3
                     ENDIF
                     IF voP4=1 .AND. AT(UPPER(ALLTRIM(vmAr)),  ;
                        UPPER(ALLTRIM(f2111mar)))<>0
                          STORE 1 TO psW4
                     ENDIF
                     IF (voP1=1 .AND. psW1=0) .OR. (voP2=1 .AND. psW2=0)  ;
                        .OR. (voP3=1 .AND. psW3=0) .OR. (voP4=1 .AND. psW4=0)
                          STORE 0 TO psW0
                     ELSE
                          STORE 1 TO psW0
                     ENDIF
                     IF psW0=1
                          DO reM_2111a IN PAC2111A
                          IF ppRg="PAC2112A" .AND. f2111est="1" .AND.  ;
                             f2111tpo=1
                               SELECT prO_tot
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE xsT1+f2118sto TO xsT1
                                    STORE xcJ1+f2118caj TO xcJ1
                                    STORE xcPe+f2118cpe TO xcPe
                                    STORE xcJp+f2118cjp TO xcJp
                                    STORE xoRp+f2118orp TO xoRp
                                    STORE xpRm+f2118prm TO xpRm
                               ENDIF
                          ENDIF
                          SELECT prOductos
                     ENDIF
                     SKIP
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 0 TO csW1
                     STORE 2 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE voP1=1 .AND. voP4=1
                DO coLbln
                STORE k_Enter TO mkEy
                @vFB3+1.3,vCB3+4.5 Edit vPAL Font "&mLetAri",9 Style "NQ" Size 1,68,70
                @vFB6+1.3,vCB6+4.5 Edit vMAR Font "&mLetAri",9 Style "NQ" Size 1,35,30
                SET CURSOR ON
                READ
                SET CURSOR OFF
           CASE voP1=1 .OR. vsWa=1
                DO coLbln
                STORE k_Enter TO mkEy
                @vFB3+1.3,vCB3+4.5 Edit vPAL Font "&mLetAri",9 Style "NQ" Size 1,68,70
                SET CURSOR ON
                READ
                SET CURSOR OFF
           CASE voP4=1
                DO coLbln
                STORE k_Enter TO mkEy
                @vFB6+1.3,vCB6+4.5 Edit vMAR Font "&mLetAri",9 Style "NQ" Size 1,35,30
                SET CURSOR ON
                READ
                SET CURSOR OFF
           OTHERWISE
                mkEy = INKEY(0, "HM")
      ENDCASE
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(mtMa) TO vcOd
      IF ptPo="2"
           DO CASE
                CASE vsW0=3
                     SELECT tmP_base
                CASE vsW1=1
                     SELECT prOductos
                CASE vsW1=2
                     SELECT teMporal
           ENDCASE
           STORE 99 TO mkEy
           DO CASE
                CASE vsW0=1 .AND. vsW1=1
                     DO orD_0000a WITH "2111", "A", "F2111COD", "A"
                CASE vsW0=2 .AND. vsW1=1
                     DO orD_0000a WITH "2111", "A", "F2111DES", "A"
                CASE vsW0=1
                     DO orD_0000a WITH "TMP", "A", "F2111COD", "A"
                CASE vsW0=2
                     DO orD_0000a WITH "TMP", "A", "F2111DES", "A"
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
           GOTO TOP
           DO CASE
                CASE ppRg="PAC2111A"
                     DO paN_2111b IN PAC2111B
                CASE ppRg="PAC2112A"
                     DO paN_2112b IN PAC2112B
                CASE ppRg="PAC2113A"
                     DO paN_2113b IN PAC2113B
                CASE ppRg="PAC2114A"
                     DO paN_2114b IN PAC2114B
                CASE ppRg="PAC2116A"
                     DO paN_2116b IN PAC2116B
                CASE ppRg="PAC2117A"
                     DO paN_2117b IN PAC2117B
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE icOd TO vcOd
           STORE idEs TO vdEs
           STORE ifIl TO vfIl
           IF ppRg="PAC2111A"
                STORE ibAs TO vbAs
                STORE itIp TO vtIp
           ENDIF
      ENDIF
      STORE vsW1 TO csW1
      IF ptPo="1"
           STORE 0 TO csW0
      ENDIF
 ENDIF
 DO paL_2111a IN PAC2111A
 RELEASE psW0, psW1, psW2, psW3, psW4, pnU1, pnU2, pnU3, pnU4, pdE1, pdE2,  ;
         pdE3, pdE4, pdE5, pdEs
ENDPROC
*
PROCEDURE Lin_2111a
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE mrEs="3" .AND. vsW0=3
           @ piNi, icLn+023.2 TO pfIn, icLn+023.2
           @ piNi, icLn+046.6 TO pfIn, icLn+046.6
           @ piNi, icLn+123.6 TO pfIn, icLn+123.6
      CASE mrEs="3"
           @ piNi, icLn+023.2 TO pfIn, icLn+023.2
           @ piNi, icLn+028.4 TO pfIn, icLn+028.4
           @ piNi, icLn+109.5 TO pfIn, icLn+109.5
           @ piNi, icLn+155.3 TO pfIn, icLn+155.3
           @ piNi, icLn+177.3 TO pfIn, icLn+177.3
      CASE vsW0=3
           @ piNi, icLn+028.2 TO pfIn, icLn+028.2
           @ piNi, icLn+056.8 TO pfIn, icLn+056.8
           @ piNi, icLn+148.9 TO pfIn, icLn+148.9
           @ piNi, icLn+237.4 TO pfIn, icLn+237.4
      OTHERWISE
           @ piNi, icLn+025.2 TO pfIn, icLn+025.2
           @ piNi, icLn+030.4 TO pfIn, icLn+030.4
           @ piNi, icLn+112.6 TO pfIn, icLn+112.6
           @ piNi, icLn+176.2 TO pfIn, icLn+176.2
           @ piNi, icLn+206.7 TO pfIn, icLn+206.7
           @ piNi, icLn+237.4 TO pfIn, icLn+237.4
 ENDCASE
ENDPROC
*
PROCEDURE P00_2111a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_99
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 STORE 29 TO vuFi
 STORE 124 TO vuCo
 DO maRcos
 STORE mfI0+2 TO mfI0
 STORE ((mwFi-vuFi)/2)-0.2 TO vfI0
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+1.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE ifIl+4.7 TO vfB1
 STORE ifIl+7.9 TO vfB2
 STORE ifIl+0.5 TO vfB3
 STORE ifIl+3.5 TO vfB4
 STORE ifIl+6.7 TO vfB5
 STORE ifIl+9.9 TO vfB6
 STORE vfI0+8.45 TO vfB7
 STORE vfB7+2 TO vfB8
 STORE vfB8+2 TO vfB9
 STORE vfB9+2 TO vfB0
 STORE vfB0+2 TO vfBa
 STORE vfBa+2 TO vfBb
 STORE vfBb+2 TO vfBc
 STORE vfBc+2 TO vfBd
 STORE vfBd+2 TO vfBe
 STORE vfBe+2 TO vfBf
 STORE mcO0+0.4 TO icLn
 STORE mcO0+muCo-0.2 TO ucLn
 STORE vcO0+63.8 TO vcB7, vcB8, vcB9, vcB0, vcBa, vcBb, vcBc, vcBd, vcBe, vcBf
 DO CASE
      CASE mrEs="3"
           STORE mcO0+62 TO vcB3, vcB4, vcB5, vcB6
      OTHERWISE
           STORE mcO0+82 TO vcB3, vcB4, vcB5, vcB6
 ENDCASE
 STORE vcB3+40 TO vcB1, vcB2
 DO CASE
      CASE mrEs="3"
           STORE 2 TO vuLt
      OTHERWISE
           STORE 1 TO vuLt
 ENDCASE
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Productos/Servicios/Activos Fijos"
      CASE wtPo="2"
           DO tiT_0000a WITH "Consulta de todos los Productos"
      CASE wtPo="3"
           DO tiT_0000a WITH "Consulta de Servicios"
      CASE wtPo="4"
           DO tiT_0000a WITH "Consulta de Activos Fijos"
      CASE wtPo="5"
           DO tiT_0000a WITH "Consulta de Productos Importados"
      CASE wtPo="6"
           DO tiT_0000a WITH  ;
              "Poner Códigos o Referencias de Clientes en Productos"
 ENDCASE
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLplp
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 @ ffIl+1.1, icLn TO ffIl+1.1, ucLn
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_2111a
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1 Say "Palabra:" Font "&mLetRom",10 Style "BT"
 DO paL_2111a IN PAC2111A
 DO tb1_2111a IN PAC2111A
 DO tb3_2111a IN PAC2111A
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P01_2111a
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Código:"      Font "&mLetRom",12 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Descripción:" Font "&mLetRom",12 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Base:"        Font "&mLetRom",12 Style "BT"
 ENDCASE
 DO geT_2111a
 READ TIMEOUT 0.01
 DO liN_2111a WITH ifIl-1.3, ffIl+1
 DO coLpln
 DO CASE
      CASE mrEs="3" .AND. vsW0=3
           @iFIL-1.3,iCLN+000.2 Say "Código Base"                   Font "&mLetAri",9 Style "NQ" Size 1,15
           @iFIL-1.3,iCLN+023.8 Say "Código"                        Font "&mLetAri",9 Style "NQ" Size 1,10
           @iFIL-1.3,iCLN+047.2 Say "Descripción"                   Font "&mLetAri",9 Style "NQ" Size 1,15
           @iFIL-1.3,iCLN+124.1 Say "Descripción Abreviada"         Font "&mLetAri",9 Style "NQ" Size 1,25
      CASE mrEs="3"
           @iFIL-1.3,iCLN+000.2 Say "Código"                        Font "&mLetAri",9 Style "NQ" Size 1,15
           @iFIL-1.3,iCLN+023.8 Say "Est"                           Font "&mLetAri",9 Style "NQ" Size 1,4
           @iFIL-1.3,iCLN+029.0 Say "Descripción"                   Font "&mLetAri",9 Style "NQ" Size 1,25
           @iFIL-1.3,iCLN+110.2 Say "Descripción Abreviada"         Font "&mLetAri",9 Style "NQ" Size 1,25
           @iFIL-1.3,iCLN+156.0 Say "Tipo-Producto"                 Font "&mLetAri",9 Style "NQ" Size 1,20
           DO CASE
                CASE vsW2=1
                     @iFIL-1.3,iCLN+178 Say "Unidad-Vta"              Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW2=2
                     @iFIL-1.3,iCLN+178 Say "Varios"                  Font "&mLetAri",9 Style "NQ" Size 1,20
           ENDCASE
      CASE vsW0=3
           @iFIL-1.3,iCLN+000.0 Say "Código Base"                   Font "&mLetAri",9 Style "NQ" Size 1,15
           @iFIL-1.3,iCLN+028.6 Say "Código"                        Font "&mLetAri",9 Style "NQ" Size 1,10
           @iFIL-1.3,iCLN+057.1 Say "Descripción"                   Font "&mLetAri",9 Style "NQ" Size 1,15
           @iFIL-1.3,iCLN+149.3 Say "Descripción Abreviada"         Font "&mLetAri",9 Style "NQ" Size 1,25
           @iFIL-1.3,iCLN+237.8 Say "Unidad-Vta"                    Font "&mLetAri",9 Style "NQ" Size 1,13
      OTHERWISE
           @iFIL-1.3,iCLN+000.0 Say "Código"                        Font "&mLetAri",9 Style "NQ" Size 1,15
           @iFIL-1.3,iCLN+026.0 Say "Est"                           Font "&mLetAri",9 Style "NQ" Size 1,4
           @iFIL-1.3,iCLN+030.8 Say "Descripción"                   Font "&mLetAri",9 Style "NQ" Size 1,25
           @iFIL-1.3,iCLN+113.0 Say "Descripción Abreviada"         Font "&mLetAri",9 Style "NQ" Size 1,25
           @iFIL-1.3,iCLN+176.6 Say "Tipo-Producto"                 Font "&mLetAri",9 Style "NQ" Size 1,20
           @iFIL-1.3,iCLN+207.1 Say "Unidad-Vta"                    Font "&mLetAri",9 Style "NQ" Size 1,20
           @iFIL-1.3,iCLN+237.8 Say "Varios"                        Font "&mLetAri",9 Style "NQ" Size 1,13
 ENDCASE
 IF vuLt>1
      DO coLblr
      IF mrEs="3"
           DO prEsiona WITH "1", "BOTON", ifIl-1.7, icLn+101.4
           @iFIL-1.5,iCLN+103.5 Say Str(vSW2,1,0)+"/"+Str(vULT,1,0) Font "&mLetRom",9 Style "BT"
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Rs1_2111a
 DO p00_2111a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO CASE
           CASE vsW0=3
                SELECT tmP_base
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO muE_2111b IN PAC2111B WITH "v", "c"
      DO seE_2111b IN PAC2111B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2111cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_2111b IN PAC2111B WITH "v", "i"
           DO muE_2111b IN PAC2111B WITH "v", "c"
      ENDIF
      DO seE_2111b IN PAC2111B WITH "i"
      DO paN_2111b IN PAC2111B
      DO muE_2111b IN PAC2111B WITH "c", "v"
      DO seE_2111b IN PAC2111B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2111a
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO rs3_2111a
ENDPROC
*
PROCEDURE Rs3_2111a
 DO coLsc3
 IF vsWa=1
      @ ifIl+0.8, vcB3-1 TO ifIl+04.2, vcB3+84.1 PATTERN 1 PEN 1
      @ ifIl+0.0, vcB3-2 TO ifIl+03.7, vcB3+83.0 PATTERN 1 PEN 3
      @vFB3,vCB3+4 Say "Digitar la Descripción en forma parcial o total:" Font "&mLetAri",9 Style "NQ"
 ELSE
      @ ifIl+0.8, vcB3-1 TO ifIl+13.2, vcB3+84.1 PATTERN 1 PEN 1
      @ ifIl+0.0, vcB3-2 TO ifIl+12.7, vcB3+83.0 PATTERN 1 PEN 3
      @vFB3,vCB3+4 Say "Digitar la Descripción en forma parcial o total:" Font "&mLetAri",9 Style "NQ"
      @vFB4,vCB4+4 Say "Escoger un Grupo de Productos:"  Font "&mLetAri",9 Style "NQ"
      @vFB5,vCB5+4 Say "Escoger un Tipos de Productos:"  Font "&mLetAri",9 Style "NQ"
      @vFB6,vCB6+4 Say "Escoger una Marca de Productos:" Font "&mLetAri",9 Style "NQ"
      @vFB3+1.3,vCB3+4.5 Edit vPAL                       Font "&mLetAri",9 Style "NQ" Size 1,68,70
      @vFB4+1.3,vCB4+4.5 Edit vNGR                       Font "&mLetAri",9 Style "NQ" Size 1,35,30
      @vFB5+1.3,vCB5+4.5 Edit vNTI                       Font "&mLetAri",9 Style "NQ" Size 1,35,30
      @vFB6+1.3,vCB6+4.5 Edit vMAR                       Font "&mLetAri",9 Style "NQ" Size 1,35,30
 ENDIF
 READ TIMEOUT 0.01
 DO coLsc7
 @ vfB3-0.1, vcB3+77.2 TO vfB3+1.1, vcB3+80.9 PATTERN 1 PEN 1
 IF vsWb=1
      @vFB3-.1,vCB3+78.2 Say "S" Font "&mLetRom",11 Style "BT"
 ELSE
      @vFB3-.1,vCB3+77.5 Say "M" Font "&mLetRom",11 Style "BT"
 ENDIF
 IF vsWa=1
      DO prEsiona WITH "1", "ABRED", vfB3, vcB3+74
 ELSE
      DO prEsiona WITH "1", "ABREI", vfB3, vcB3+74
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF voP1=0
           DO prEsiona WITH "1", "NO", vfB3, vcB3
      ELSE
           DO prEsiona WITH "1", "SI", vfB3, vcB3
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF voP2=0
           DO prEsiona WITH "1", "NO", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
      ELSE
           DO prEsiona WITH "1", "SI", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF voP3=0
           DO prEsiona WITH "1", "NO", vfB5, vcB5
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
      ELSE
           DO prEsiona WITH "1", "SI", vfB5, vcB5
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
      ENDIF
      IF voP4=0
           DO prEsiona WITH "1", "NO", vfB6, vcB6
      ELSE
           DO prEsiona WITH "1", "SI", vfB6, vcB6
      ENDIF
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Gru_2111a
 = INKEY(0.01)
 SELECT grUpos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9216", "U", "F9216DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnGr))
 SET NEAR OFF
 DO q1_0000a IN MODSET
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a IN MODSET
 DO orD_0000a WITH "9216", "U", "F9216COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      DO coLsc3
      STORE f9216cod TO vgRu
      STORE f9216des TO vnGr
      @vFB4+1.3,vCB4+4.5 Say vNGR Font "&mLetAri",9 Style "NQ" Size 1,35 Pict "@S30"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tip_2111a
 = INKEY(0.01)
 SELECT tiP_prod
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnTi))
 SET NEAR OFF
 DO q1_0000a IN MODSET
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a IN MODSET
 DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      DO coLsc3
      STORE f9211tip TO vtPp
      STORE f9211nti TO vnTi
      @vFB5+1.3,vCB5+4.5 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,35 Pict "@S30"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Pal_2111a
 DO coL_beige
 DO CASE
      CASE voP1=1
           @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,64 Pict "@S67" Font "&mLetRom",9 Style "BQ"
      CASE voP2=1
           @mFI0+mUFI-1.3,mCO0+11 Say vNGR Size 1,64 Pict "@S67" Font "&mLetRom",9 Style "BQ"
      CASE voP3=1
           @mFI0+mUFI-1.3,mCO0+11 Say vNTI Size 1,64 Pict "@S67" Font "&mLetRom",9 Style "BQ"
      CASE voP4=1
           @mFI0+mUFI-1.3,mCO0+11 Say vMAR Size 1,64 Pict "@S67" Font "&mLetRom",9 Style "BQ"
      OTHERWISE
           @mFI0+mUFI-1.3,mCO0+11 Say "  " Size 1,64 Pict "@S67" Font "&mLetRom",9 Style "BQ"
 ENDCASE
ENDPROC
*
PROCEDURE Tb1_2111a
 Define Popup vTB1 from vFB4+2.5,vCB4+4.2 to vFB4+16,vCB4+43.6 Font "&mLetAri",10 Style "NQ" Prompt Field F9216DES Scroll Color Scheme 10 Footer "GRUPOS DE PRODUCTOS"
 Define Popup vTB2 from vFB5+2.5,vCB5+4.2 to vFB4+16,vCB5+43.6 Font "&mLetAri",10 Style "NQ" Prompt Field F9211NTI Scroll Color Scheme 10 Footer "TIPOS DE PRODUCTOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
ENDPROC
*
PROCEDURE Tb3_2111a
 DO CASE
      CASE mrEs="3"
           Define Popup vTB3 from vFI0-3,vCB4+52 to mFI0+mUFI-1,mUCO+1 Font "&mLetAri",12 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 10 Footer "CLIENTES"
      OTHERWISE
           Define Popup vTB3 from vFI0-3,vCB4+67 to mFI0+mUFI-3,mUCO-10 Font "&mLetAri",13 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 10 Footer "CLIENTES"
 ENDCASE
 ON SELECTION POPUP vtB3 DO TB3_0000A
ENDPROC
*
PROCEDURE Get_2111a
 DO coLbln
 DO CASE
      CASE vsW0=1
           DO CASE
                CASE mtMc=1
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,02.0 Pict "!"                    Color ,&mColBlN
                CASE mtMc=2
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,04.2 Pict "!!"                   Color ,&mColBlN
                CASE mtMc=3
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,06.4 Pict "!!!"                  Color ,&mColBlN
                CASE mtMc=4
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,08.6 Pict "!!!!"                 Color ,&mColBlN
                CASE mtMc=5
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,10.8 Pict "!!!!!"                Color ,&mColBlN
                CASE mtMc=6
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,13.0 Pict "!!!!!!"               Color ,&mColBlN
                CASE mtMc=7
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,15.2 Pict "!!!!!!!"              Color ,&mColBlN
                CASE mtMc=8
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,17.4 Pict "!!!!!!!!"             Color ,&mColBlN
                CASE mtMc=9
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,19.6 Pict "!!!!!!!!!"            Color ,&mColBlN
                CASE mtMc=10
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,21.8 Pict "!!!!!!!!!!"           Color ,&mColBlN
                CASE mtMc=11
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,24.0 Pict "!!!!!!!!!!!"          Color ,&mColBlN
                CASE mtMc=12
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,26.2 Pict "!!!!!!!!!!!!"         Color ,&mColBlN
                CASE mtMc=13
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,28.4 Pict "!!!!!!!!!!!!!"        Color ,&mColBlN
                CASE mtMc=14
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,30.6 Pict "!!!!!!!!!!!!!!"       Color ,&mColBlN
                CASE mtMc=15
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!"      Color ,&mColBlN
                CASE mtMc=16
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!"     Color ,&mColBlN
                CASE mtMc=17
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!!"    Color ,&mColBlN
                CASE mtMc=18
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!!!"   Color ,&mColBlN
                CASE mtMc=19
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!!!!"  Color ,&mColBlN
                CASE mtMc=20
                     @iFIL-4,mCO0+13 Get vCOD Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!!!!!" Color ,&mColBlN
           ENDCASE
      CASE vsW0=2
           @iFIL-4,mCO0+19 Get vDES Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,27.5 Pict "@S30"
      CASE vsW0=3
           DO CASE
                CASE mtMc=1
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,02.0 Pict "!"                    Color ,&mColBlN
                CASE mtMc=2
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,04.2 Pict "!!"                   Color ,&mColBlN
                CASE mtMc=3
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,06.4 Pict "!!!"                  Color ,&mColBlN
                CASE mtMc=4
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,08.6 Pict "!!!!"                 Color ,&mColBlN
                CASE mtMc=5
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,10.8 Pict "!!!!!"                Color ,&mColBlN
                CASE mtMc=6
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,13.0 Pict "!!!!!!"               Color ,&mColBlN
                CASE mtMc=7
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,15.2 Pict "!!!!!!!"              Color ,&mColBlN
                CASE mtMc=8
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,17.4 Pict "!!!!!!!!"             Color ,&mColBlN
                CASE mtMc=9
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,19.6 Pict "!!!!!!!!!"            Color ,&mColBlN
                CASE mtMc=10
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,21.8 Pict "!!!!!!!!!!"           Color ,&mColBlN
                CASE mtMc=11
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,24.0 Pict "!!!!!!!!!!!"          Color ,&mColBlN
                CASE mtMc=12
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,26.2 Pict "!!!!!!!!!!!!"         Color ,&mColBlN
                CASE mtMc=13
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,28.4 Pict "!!!!!!!!!!!!!"        Color ,&mColBlN
                CASE mtMc=14
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,30.6 Pict "!!!!!!!!!!!!!!"       Color ,&mColBlN
                CASE mtMc=15
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!"      Color ,&mColBlN
                CASE mtMc=16
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!"     Color ,&mColBlN
                CASE mtMc=17
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!!"    Color ,&mColBlN
                CASE mtMc=18
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!!!"   Color ,&mColBlN
                CASE mtMc=19
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!!!!"  Color ,&mColBlN
                CASE mtMc=20
                     @iFIL-4,mCO0+13 Get vBAS Font "&mLetRom",10 Style "BQ" Size 1,32.8 Pict "!!!!!!!!!!!!!!!!!!!!" Color ,&mColBlN
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2111a
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
PROCEDURE Var_2111a
 PUBLIC xcOd, xtPo, xtIp, xdEs, xdCr, xdIn, xcUb, xvTa, xmD1, xmD2, xmD3,  ;
        xvV1, xvV2
 PUBLIC xvV3, xvV4, xvV5, xvV6, xvV7, xvV8, xvV9, xvV0, xvVa, xvVb, xvVc,  ;
        xvVd, xvVe
 PUBLIC xvVf, xvVg, xvVh, xvVi, xvVj, xfLi, xmV1, xmV2, xmV3, xmV4, xmV5,  ;
        xmV6, xmV7
 PUBLIC xmV8, xmV9, xmV0, xmVa, xmVb, xmVc, xmVd, xmVe, xmVf, xmVg, xmVh,  ;
        xmVi, xmVj
 PUBLIC xgRu, xcUv, xnUv, xcUc, xnUc, xcUx, xnUx, xtAm, xcSt, xsEr, xmIn,  ;
        xmAx, xtIe
 PUBLIC xiMp, xpRo, xmAr, xlA1, xaN1, xlA2, xaN2, xlA3, xaN3, xeSp, xaDv,  ;
        xvCp, xvCs
 PUBLIC xpRm, xmOv, xuTi, xuT2, xuT3, xuT4, xuT5, xuT6, xuT7, xuT8, xuT9,  ;
        xuT0, xdCt
 PUBLIC xdC2, xdC3, xdC4, xdC5, xdC6, xdC7, xdC8, xdC9, xdC0, xsTo, xsTs,  ;
        xsTm, xcAj
 PUBLIC xcAs, xpXc, xcX1, xcX2, xbAs, xdBa, xfOt, xuLt, xcMx, xpEs, xeSt,  ;
        xuSu, xdAt
 PUBLIC xtIm, icLn, ucLn, vmAr, vtPp, vnTi, vgRu, vnGr, voP1, voP2, voP3,  ;
        voP4, vfB1
 PUBLIC vfB2, vfB3, vfB4, vfB5, vfB6, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6,  ;
        viT1, vpS0
 PUBLIC vpS1, vpS2, vpS3, vpS4, vpS5, vpS6, vpS7, vpS8, vpS9, vfOn, vfTm,  ;
        vtM1, vtM2
 PUBLIC vtM3, vtM4, vtM5, xmOn
ENDPROC
*
PROCEDURE BVa_2111a
 RELEASE xcOd, xtPo, xtIp, xdEs, xdCr, xdIn, xcUb, xvTa, xmD1, xmD2, xmD3,  ;
         xvV1, xvV2
 RELEASE xvV3, xvV4, xvV5, xvV6, xvV7, xvV8, xvV9, xvV0, xvVa, xvVb, xvVc,  ;
         xvVd, xvVe
 RELEASE xvVf, xvVg, xvVh, xvVi, xvVj, xfLi, xmV1, xmV2, xmV3, xmV4, xmV5,  ;
         xmV6, xmV7
 RELEASE xmV8, xmV9, xmV0, xmVa, xmVb, xmVc, xmVd, xmVe, xmVf, xmVg, xmVh,  ;
         xmVi, xmVj
 RELEASE xgRu, xcUv, xnUv, xcUc, xnUc, xcUx, xnUx, xtAm, xcSt, xsEr, xmIn,  ;
         xmAx, xtIe
 RELEASE xiMp, xpRo, xmAr, xlA1, xaN1, xlA2, xaN2, xlA3, xaN3, xeSp, xaDv,  ;
         xvCp, xvCs
 RELEASE xpRm, xmOv, xuTi, xuT2, xuT3, xuT4, xuT5, xuT6, xuT7, xuT8, xuT9,  ;
         xuT0, xdCt
 RELEASE xdC2, xdC3, xdC4, xdC5, xdC6, xdC7, xdC8, xdC9, xdC0, xsTo, xsTs,  ;
         xsTm, xcAj
 RELEASE xcAs, xpXc, xcX1, xcX2, xbAs, xdBa, xfOt, xuLt, xcMx, xpEs, xeSt,  ;
         xuSu, xdAt
 RELEASE xtIm, icLn, ucLn, vmAr, vtPp, vnTi, vgRu, vnGr, voP1, voP2, voP3,  ;
         voP4, vfB1
 RELEASE vfB2, vfB3, vfB4, vfB5, vfB6, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6,  ;
         viT1, vpS0
 RELEASE vpS1, vpS2, vpS3, vpS4, vpS5, vpS6, vpS7, vpS8, vpS9, vfOn, vfTm,  ;
         vtM1, vtM2
 RELEASE vtM3, vtM4, vtM5, xmOn
ENDPROC
*
PROCEDURE Mue_2111a
 STORE f2111cod TO xcOd
 STORE f2111tpo TO xtPo
 STORE f2111tip TO xtIp
 STORE f2111des TO xdEs
 STORE f2111dcr TO xdCr
 STORE f2111din TO xdIn
 STORE f2111cub TO xcUb
 STORE f2111vta TO xvTa
 STORE f2111md1 TO xmD1
 STORE f2111md2 TO xmD2
 STORE f2111md3 TO xmD3
 STORE f2111vv1 TO xvV1
 STORE f2111vv2 TO xvV2
 STORE f2111vv3 TO xvV3
 STORE f2111vv4 TO xvV4
 STORE f2111vv5 TO xvV5
 STORE f2111vv6 TO xvV6
 STORE f2111vv7 TO xvV7
 STORE f2111vv8 TO xvV8
 STORE f2111vv9 TO xvV9
 STORE f2111vv0 TO xvV0
 STORE f2111vva TO xvVa
 STORE f2111vvb TO xvVb
 STORE f2111vvc TO xvVc
 STORE f2111vvd TO xvVd
 STORE f2111vve TO xvVe
 STORE f2111vvf TO xvVf
 STORE f2111vvg TO xvVg
 STORE f2111vvh TO xvVh
 STORE f2111vvi TO xvVi
 STORE f2111vvj TO xvVj
 STORE f2111fli TO xfLi
 STORE f2111mv1 TO xmV1
 STORE f2111mv2 TO xmV2
 STORE f2111mv3 TO xmV3
 STORE f2111mv4 TO xmV4
 STORE f2111mv5 TO xmV5
 STORE f2111mv6 TO xmV6
 STORE f2111mv7 TO xmV7
 STORE f2111mv8 TO xmV8
 STORE f2111mv9 TO xmV9
 STORE f2111mv0 TO xmV0
 STORE f2111mva TO xmVa
 STORE f2111mvb TO xmVb
 STORE f2111mvc TO xmVc
 STORE f2111mvd TO xmVd
 STORE f2111mve TO xmVe
 STORE f2111mvf TO xmVf
 STORE f2111mvg TO xmVg
 STORE f2111mvh TO xmVh
 STORE f2111mvi TO xmVi
 STORE f2111mvj TO xmVj
 STORE f2111gru TO xgRu
 STORE f2111cuv TO xcUv
 STORE f2111nuv TO xnUv
 STORE f2111cuc TO xcUc
 STORE f2111nuc TO xnUc
 STORE f2111cux TO xcUx
 STORE f2111nux TO xnUx
 STORE f2111tam TO xtAm
 STORE f2111cst TO xcSt
 STORE f2111ser TO xsEr
 STORE f2111min TO xmIn
 STORE f2111max TO xmAx
 STORE f2111tie TO xtIe
 STORE f2111imp TO xiMp
 STORE f2111pro TO xpRo
 STORE f2111mar TO xmAr
 STORE f2111la1 TO xlA1
 STORE f2111an1 TO xaN1
 STORE f2111la2 TO xlA2
 STORE f2111an2 TO xaN2
 STORE f2111la3 TO xlA3
 STORE f2111an3 TO xaN3
 STORE f2111esp TO xeSp
 STORE f2111adv TO xaDv
 STORE f2111mon TO xmOn
 STORE f2111vcp TO xvCp
 STORE f2111vcs TO xvCs
 STORE f2111prm TO xpRm
 STORE f2111mov TO xmOv
 STORE f2111uti TO xuTi
 STORE f2111ut2 TO xuT2
 STORE f2111ut3 TO xuT3
 STORE f2111ut4 TO xuT4
 STORE f2111ut5 TO xuT5
 STORE f2111ut6 TO xuT6
 STORE f2111ut7 TO xuT7
 STORE f2111ut8 TO xuT8
 STORE f2111ut9 TO xuT9
 STORE f2111ut0 TO xuT0
 STORE f2111dct TO xdCt
 STORE f2111dc2 TO xdC2
 STORE f2111dc3 TO xdC3
 STORE f2111dc4 TO xdC4
 STORE f2111dc5 TO xdC5
 STORE f2111dc6 TO xdC6
 STORE f2111dc7 TO xdC7
 STORE f2111dc8 TO xdC8
 STORE f2111dc9 TO xdC9
 STORE f2111dc0 TO xdC0
 STORE f2111sto TO xsTo
 STORE f2111sts TO xsTs
 STORE f2111stm TO xsTm
 STORE f2111caj TO xcAj
 STORE f2111cas TO xcAs
 STORE f2111pxc TO xpXc
 STORE f2111cx1 TO xcX1
 STORE f2111cx2 TO xcX2
 STORE f2111bas TO xbAs
 STORE f2111fot TO xfOt
 STORE f2111ult TO xuLt
 STORE f2111cmx TO xcMx
 STORE f2111pes TO xpEs
 STORE f2111est TO xeSt
 STORE f2111usu TO xuSu
 STORE f2111dat TO xdAt
 STORE f2111tim TO xtIm
ENDPROC
*
PROCEDURE Rem_2111a
 DO muE_2111a
 SELECT teMporal
 APPEND BLANK
 REPLACE f2111cod WITH xcOd
 REPLACE f2111tpo WITH xtPo
 REPLACE f2111tip WITH xtIp
 REPLACE f2111des WITH xdEs
 REPLACE f2111dcr WITH xdCr
 REPLACE f2111din WITH xdIn
 REPLACE f2111cub WITH xcUb
 REPLACE f2111vta WITH xvTa
 REPLACE f2111md1 WITH xmD1
 REPLACE f2111md2 WITH xmD2
 REPLACE f2111md3 WITH xmD3
 REPLACE f2111vv1 WITH xvV1
 REPLACE f2111vv2 WITH xvV2
 REPLACE f2111vv3 WITH xvV3
 REPLACE f2111vv4 WITH xvV4
 REPLACE f2111vv5 WITH xvV5
 REPLACE f2111vv6 WITH xvV6
 REPLACE f2111vv7 WITH xvV7
 REPLACE f2111vv8 WITH xvV8
 REPLACE f2111vv9 WITH xvV9
 REPLACE f2111vv0 WITH xvV0
 REPLACE f2111vva WITH xvVa
 REPLACE f2111vvb WITH xvVb
 REPLACE f2111vvc WITH xvVc
 REPLACE f2111vvd WITH xvVd
 REPLACE f2111vve WITH xvVe
 REPLACE f2111vvf WITH xvVf
 REPLACE f2111vvg WITH xvVg
 REPLACE f2111vvh WITH xvVh
 REPLACE f2111vvi WITH xvVi
 REPLACE f2111vvj WITH xvVj
 REPLACE f2111fli WITH xfLi
 REPLACE f2111mv1 WITH xmV1
 REPLACE f2111mv2 WITH xmV2
 REPLACE f2111mv3 WITH xmV3
 REPLACE f2111mv4 WITH xmV4
 REPLACE f2111mv5 WITH xmV5
 REPLACE f2111mv6 WITH xmV6
 REPLACE f2111mv7 WITH xmV7
 REPLACE f2111mv8 WITH xmV8
 REPLACE f2111mv9 WITH xmV9
 REPLACE f2111mv0 WITH xmV0
 REPLACE f2111mva WITH xmVa
 REPLACE f2111mvb WITH xmVb
 REPLACE f2111mvc WITH xmVc
 REPLACE f2111mvd WITH xmVd
 REPLACE f2111mve WITH xmVe
 REPLACE f2111mvf WITH xmVf
 REPLACE f2111mvg WITH xmVg
 REPLACE f2111mvh WITH xmVh
 REPLACE f2111mvi WITH xmVi
 REPLACE f2111mvj WITH xmVj
 REPLACE f2111gru WITH xgRu
 REPLACE f2111cuv WITH xcUv
 REPLACE f2111nuv WITH xnUv
 REPLACE f2111cuc WITH xcUc
 REPLACE f2111nuc WITH xnUc
 REPLACE f2111cux WITH xcUx
 REPLACE f2111nux WITH xnUx
 REPLACE f2111tam WITH xtAm
 REPLACE f2111cst WITH xcSt
 REPLACE f2111ser WITH xsEr
 REPLACE f2111min WITH xmIn
 REPLACE f2111max WITH xmAx
 REPLACE f2111tie WITH xtIe
 REPLACE f2111imp WITH xiMp
 REPLACE f2111pro WITH xpRo
 REPLACE f2111mar WITH xmAr
 REPLACE f2111la1 WITH xlA1
 REPLACE f2111an1 WITH xaN1
 REPLACE f2111la2 WITH xlA2
 REPLACE f2111an2 WITH xaN2
 REPLACE f2111la3 WITH xlA3
 REPLACE f2111an3 WITH xaN3
 REPLACE f2111esp WITH xeSp
 REPLACE f2111adv WITH xaDv
 REPLACE f2111mon WITH xmOn
 REPLACE f2111vcp WITH xvCp
 REPLACE f2111vcs WITH xvCs
 REPLACE f2111prm WITH xpRm
 REPLACE f2111mov WITH xmOv
 REPLACE f2111uti WITH xuTi
 REPLACE f2111ut2 WITH xuT2
 REPLACE f2111ut3 WITH xuT3
 REPLACE f2111ut4 WITH xuT4
 REPLACE f2111ut5 WITH xuT5
 REPLACE f2111ut6 WITH xuT6
 REPLACE f2111ut7 WITH xuT7
 REPLACE f2111ut8 WITH xuT8
 REPLACE f2111ut9 WITH xuT9
 REPLACE f2111ut0 WITH xuT0
 REPLACE f2111dct WITH xdCt
 REPLACE f2111dc2 WITH xdC2
 REPLACE f2111dc3 WITH xdC3
 REPLACE f2111dc4 WITH xdC4
 REPLACE f2111dc5 WITH xdC5
 REPLACE f2111dc6 WITH xdC6
 REPLACE f2111dc7 WITH xdC7
 REPLACE f2111dc8 WITH xdC8
 REPLACE f2111dc9 WITH xdC9
 REPLACE f2111dc0 WITH xdC0
 REPLACE f2111sto WITH xsTo
 REPLACE f2111sts WITH xsTs
 REPLACE f2111stm WITH xsTm
 REPLACE f2111caj WITH xcAj
 REPLACE f2111cas WITH xcAs
 REPLACE f2111pxc WITH xpXc
 REPLACE f2111cx1 WITH xcX1
 REPLACE f2111cx2 WITH xcX2
 REPLACE f2111bas WITH xbAs
 REPLACE f2111fot WITH xfOt
 REPLACE f2111ult WITH xuLt
 REPLACE f2111cmx WITH xcMx
 REPLACE f2111pes WITH xpEs
 REPLACE f2111est WITH xeSt
 REPLACE f2111usu WITH xuSu
 REPLACE f2111dat WITH xdAt
 REPLACE f2111tim WITH xtIm
ENDPROC
*
PROCEDURE Tmp_2111a
 DO taB_productos IN PUX0002A
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
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON UPPER(ALLTRIM(f2111cod))+"*" TAG f2111cod
 INDEX ON UPPER(ALLTRIM(f2111des))+UPPER(ALLTRIM(f2111cod))+"*" TAG f2111des
 INDEX ON UPPER(ALLTRIM(f2111bas))+"*"+UPPER(ALLTRIM(f2111cod))+"*" TAG  ;
       f2111bas
 INDEX ON f2111tip+UPPER(ALLTRIM(f2111cod))+"*" TAG f2111ti1
 INDEX ON f2111tip+UPPER(ALLTRIM(f2111des))+UPPER(ALLTRIM(f2111cod))+"*"  ;
       TAG f2111tip
 INDEX ON STR(f2111esp, 6, 2)+ALLTRIM(f2111tam)+"*"+ ;
       UPPER(ALLTRIM(f2111cod))+"*" TAG f2111esp
 CLOSE DATABASES
 CLOSE INDEXES
ENDPROC
*
PROCEDURE Hl1_2111a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 2 SAY  ;
   "Esta consulta muestra todos los Productos, Servicios y/o Activos Fijos in-"
 @ pfIl+1, 2 SAY "cluyendo los que están anulados."
 STORE pfIl+3 TO pfIl
 DO CASE
      CASE wnIv="1"
           @ pfIl+0, 2 SAY  ;
             "Se puede visualizar en el Detalle del Producto los Precios de Lista y Costo"
           @ pfIl+1, 2 SAY "promedio aproximado."
      CASE wnIv="2"
           @ pfIl+0, 2 SAY  ;
             "No se puede visualizar en el Detalle del Producto Precios de Lista y Costo"
           @ pfIl+1, 2 SAY "promedio aproximado."
      CASE wnIv="3"
           @ pfIl+0, 2 SAY  ;
             "Se puede visualizar en el Detalle del Producto los Precios de Lista, mas no"
           @ pfIl+1, 2 SAY "el Costo promedio aproximado."
 ENDCASE
 STORE pfIl+3 TO pfIl
 @ pfIl+0, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 18 SAY ":" STYLE "BT"
 @ pfIl+3, 18 SAY ":" STYLE "BT"
 @ pfIl+4, 18 SAY ":" STYLE "BT"
 @ pfIl+5, 18 SAY ":" STYLE "BT"
 @ pfIl+6, 18 SAY ":" STYLE "BT"
 @ pfIl+7, 18 SAY ":" STYLE "BT"
 @ pfIl+2, 02 SAY "ESC" STYLE "BT"
 @ pfIl+3, 02 SAY "F10" STYLE "BT"
 @ pfIl+4, 02 SAY "F1" STYLE "BT"
 @ pfIl+5, 02 SAY "F6" STYLE "BT"
 @ pfIl+6, 02 SAY "F9" STYLE "BT"
 @ pfIl+7, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+8, 02 SAY "CTRL ->," STYLE "BT"
 @ pfIl+9, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 20 SAY "Regresar al Menú Principal"
 @ pfIl+3, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 20 SAY "Ayuda del Programa"
 @ pfIl+5, 20 SAY "Cambio de Orden de Consulta"
 @ pfIl+6, 20 SAY "Buscar palabra o frase dentro de la descripción"
 @ pfIl+7, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+8, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_2111a
 PARAMETER ptPo
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 2.000 SAY "Esta búsqueda es exhaustiva, hay varias opciones:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 2.000 SAY "1o. En la Descripción.-" STYLE "BQ"
 @ pfIl+0, 27.000 SAY "Para una busqueda"
 @ pfIl+0, 47.000 SAY "Simple" STYLE "BQ"
 @ pfIl+0, 54.500 SAY ", el Botón del lado"
 @ pfIl+1, 2.000 SAY "derecho de la pantalla debe estar con la"
 @ pfIl+1, 41.700 SAY "LETRA S" STYLE "BQ"
 @ pfIl+1, 50.900 SAY ".   Lo que realiza esta"
 @ pfIl+2, 2.000 SAY  ;
   "opción es buscar en cualquier parte de la Descripción la palabra o frase."
 @ pfIl+3, 2.000 SAY "Para una búsqueda"
 @ pfIl+3, 21.400 SAY "Multiple" STYLE "BQ"
 @ pfIl+3, 30.200 SAY ", el Botón del lado derecho de la pantalla de-"
 @ pfIl+4, 2.000 SAY "be estar con la "
 @ pfIl+4, 17.700 SAY "LETRA M" STYLE "BQ"
 @ pfIl+4, 27.600 SAY ".  Lo que realiza esta opción es una búsqueda"
 @ pfIl+5, 2.000 SAY  ;
   "de hasta 5 palabras o frases,  dividas por comas,  que se deben encon-"
 @ pfIl+6, 2.000 SAY "trarse"
 @ pfIl+6, 8.500 SAY "TODAS" STYLE "BQ"
 @ pfIl+6, 17.000 SAY "en la cualquier parte de la descripción."
 STORE pfIl+7 TO pfIl
 @ pfIl+0, 2.000 SAY "2o. Grupos de Productos.-" STYLE "BQ"
 @ pfIl+0, 31.500 SAY "Se debe seleccionar el Grupo, que sólo o"
 @ pfIl+1, 2.000 SAY  ;
   "combinado con la descripción y/o Tipo de Productos,  muestra una con-"
 @ pfIl+2, 2.000 SAY  ;
   "sulta con aquellos comprendidos en este(os) parámetro(s)."
 STORE pfIl+3 TO pfIl
 @ pfIl+0, 2.000 SAY "3o. Tipo de Productos.-" STYLE "BQ"
 @ pfIl+0, 28.000 SAY "Se debe seleccionar el Tipo, que sólo o com-"
 @ pfIl+1, 2.000 SAY  ;
   "binado con la descripción y/o Grupo de Productos, muestra una consul-"
 @ pfIl+2, 2.000 SAY "ta con aquellos comprendidos en este(os) parámetro(s)."
 STORE pfIl+3 TO pfIl
 @ pfIl+0, 2.000 SAY "4o. Marca.-" STYLE "BQ"
 @ pfIl+0, 15.500 SAY  ;
   "Se debe digitar una palabra o frase que el sistema buscará"
 @ pfIl+1, 2.000 SAY "en cualquier parte de la Marca del Producto."
 STORE pfIl+3 TO pfIl
 @ pfIl+0, 2.000 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+3, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 13 SAY "ESC" STYLE "BT"
 @ pfIl+1, 13 SAY "F10" STYLE "BT"
 @ pfIl+2, 13 SAY "F1" STYLE "BT"
 @ pfIl+3, 13 SAY "ENTER" STYLE "BT"
 DO CASE
      CASE ptPo="1"
           @ pfIl, 23 SAY "Regresar a Cabecera"
      CASE ptPo="2"
           @ pfIl, 23 SAY "Regresar a Detalle"
 ENDCASE
 @ pfIl+1, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 23 SAY "Ayuda del Programa"
 @ pfIl+3, 23 SAY "Buscar palabra"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a IN MODSET
 DO deL_file1
 DO bvA_2111a
 SET READBORDER OFF
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsWa, vsWb, vpAl, cpAl, vlIn,  ;
         vpAg, vfIl
 RELEASE ifIl, ufIl, ffIl, cfIl, vcOd, icOd, ucOd, ccOd, dcOd, hcOd, vdEs,  ;
         idEs, udEs
 RELEASE cdEs, vbAs, ibAs, ubAs, cbAs, vtIp, itIp, utIp, ctIp, xnTi, cdCr,  ;
         clA1, clA2
 RELEASE clA3, caN1, caN2, caN3, ceSp, xnT1, xnT2, xnT3, xnT4, xnT5, cgRu,  ;
         cnGr, xnGr
 RELEASE ctOt, xtPp, vcOp, vaLt, vsEp, vtB1, vtB2, vtB3, vfB7, vfB8, vfB9,  ;
         vfB0, vfBa
 RELEASE vfBb, vfBc, vfBd, vfBe, vfBf, vcB7, vcB8, vcB9, vcB0, vcBa, vcBb,  ;
         vcBc, vcBd
 RELEASE vcBe, vcBf, voPc, vtPo, vuFi, vuCo, vfI0, vcO0, vxLs, vcL1, vcL2,  ;
         vcL3, vcL4
 RELEASE vcL5, vcL6, vcL7, vcL8, vcL9, vcL0, vnO1, vnO2, vnO3, vnO4, vnO5,  ;
         vnO6, vnO7
 RELEASE vnO8, vnO9, vnO0, vrF1, vrF2, vrF3, vrF4, vrF5, vrF6, vrF7, vrF8,  ;
         vrF9, vrF0
 RELEASE viTe, veSt, cnUv, vuLt, viNi, vmOd
 RELEASE vpAn_11, vpAn_99
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
 DO deL_file2 IN MODSET WITH "1", "S"
 DO deL_file2 IN MODSET WITH "2", "S"
 DO deL_file2 IN MODSET WITH "3", "S"
 RELEASE ntM1, ntM2, ntM3
ENDPROC
*
