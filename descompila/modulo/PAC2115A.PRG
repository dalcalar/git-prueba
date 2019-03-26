 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
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
 afIl[x, 1] = "FTM1LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
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
 INDEX ON ALLTRIM(ftM1cod)+"*"+ftM1tip TAG ftM1cod
 INDEX ON UPPER(ftM1des)+ALLTRIM(ftM1cod)+"*"+ftM1tip TAG ftM1des
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
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
 afIl[x, 1] = "FTM2NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
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
 INDEX ON ALLTRIM(ftM2cod)+"*"+ftM2tip+ftM2ano+ftM2mes TAG ftM2cod
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 45
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
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
 INDEX ON ftM3cod TAG ftM3cod
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
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
 SET ORDER TO F2111GRC
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
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Kardex
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2990TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "1200", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1200FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
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
 SELECT 5
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
 SET ORDER TO F1204CD1
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
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
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9217", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Entradas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9217TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "9218", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Salidas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9218TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_1
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM1COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
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
 SELECT 11
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Mov
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT prOductos
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vcO0, vlIn, vpAg, vfB1, vfB2, vcB1, vcB2, vtB1, vtB2,  ;
        vfIl, ifIl
 PUBLIC ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, dfEm, hfEm, vfEm,  ;
        cdFe, chFe
 PUBLIC vgRu, cgRu, vnGr, vtPo, vnTi, vnMo, cnMo, vcOd, icOd, ucOd, ccOd,  ;
        xcOd, vdEs
 PUBLIC idEs, udEs, cdEs, xdEs, vtIp, itIp, utIp, ctIp, xtIp, vnUc, vnUv,  ;
        vlA1, vlA2
 PUBLIC vaN1, vaN2, vmOv, vnM1, vtDo, vsEr, vdOc, vnOm, vcAn, vtEn, icLn,  ;
        ucLn, icL1
 PUBLIC ucL1, vaNo, iaNo, uaNo, caNo, vmEs, imEs, umEs, cmEs
 PUBLIC vpAn_11, vpAn_12, vpAn_99
 STORE 01 TO vsW0
 STORE DATE() TO dfEm, hfEm
 STORE CTOD("  /  /    ") TO cdFe, chFe
 STORE SPACE(80) TO cnMo
 STORE SPACE(02) TO cgRu
 STORE "" TO vnMo
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SELECT grUpos
 GOTO TOP
 STORE f9216cod TO vgRu
 STORE f9216des TO vnGr
 SELECT tmP_mov
 APPEND BLANK
 REPLACE ftM3cod WITH "COMP"
 REPLACE ftM3des WITH "Compras"
 REPLACE ftM3est WITH "@"
 APPEND BLANK
 REPLACE ftM3cod WITH "VTAS"
 REPLACE ftM3des WITH "Ventas"
 REPLACE ftM3est WITH "@"
 APPEND BLANK
 REPLACE ftM3cod WITH "VTSG"
 REPLACE ftM3des WITH "Ventas sin Guía de Remisión"
 APPEND BLANK
 REPLACE ftM3cod WITH "VTFA"
 REPLACE ftM3des WITH "Ventas sólo Facturas"
 APPEND BLANK
 REPLACE ftM3cod WITH "VTBO"
 REPLACE ftM3des WITH "Ventas sólo Boletas"
 APPEND BLANK
 REPLACE ftM3cod WITH "VTNP"
 REPLACE ftM3des WITH "Ventas sólo Notas de Pedido"
 APPEND BLANK
 REPLACE ftM3cod WITH "VTCO"
 REPLACE ftM3des WITH "Ventas sólo componentes de Conjuntos"
 APPEND BLANK
 REPLACE ftM3cod WITH "PEDI"
 REPLACE ftM3des WITH "Pedidos Pendientes"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR02"
 REPLACE ftM3des WITH "G.Remisión de Salida x Traslado"
 REPLACE ftM3est WITH "@"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR03"
 REPLACE ftM3des WITH "G.Remisión de Devolución"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR04"
 REPLACE ftM3des WITH "G.Remisión de Consumo"
 REPLACE ftM3est WITH "@"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR05"
 REPLACE ftM3des WITH "G.Remisión de Ing.xCompra"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR06"
 REPLACE ftM3des WITH "G.Remisión de Vta.suj.Confirmación"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR07"
 REPLACE ftM3des WITH "G.Remisión de Transformación"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR08"
 REPLACE ftM3des WITH "G.Remisión de Emis.Itinerante"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR09"
 REPLACE ftM3des WITH "G.Remisión de Trasl.Zona Primaria"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR10"
 REPLACE ftM3des WITH "G.Remisión de Consignación"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR11"
 REPLACE ftM3des WITH "G.Remisión de Recojo bienes transf"
 APPEND BLANK
 REPLACE ftM3cod WITH "GR12"
 REPLACE ftM3des WITH "G.Remisión de Otros"
 SELECT tiPo_entradas
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f9217tip TO vtPo
      STORE f9217nti TO vnTi
      SELECT tmP_mov
      APPEND BLANK
      REPLACE ftM3cod WITH "IN"+vtPo
      REPLACE ftM3des WITH "Entradas: "+vnTi
      REPLACE ftM3est WITH "@"
      STORE vnMo+ALLTRIM(ftM3cod) TO vnMo
      SELECT tiPo_entradas
      SKIP
 ENDDO
 SELECT tiPo_salidas
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f9218tip TO vtPo
      STORE f9218nti TO vnTi
      SELECT tmP_mov
      APPEND BLANK
      REPLACE ftM3cod WITH "SA"+vtPo
      REPLACE ftM3des WITH "Salidas: "+vnTi
      REPLACE ftM3est WITH "@"
      STORE vnMo+ALLTRIM(ftM3cod) TO vnMo
      SELECT tiPo_salidas
      SKIP
 ENDDO
 STORE "Varios" TO vnMo
 SET READBORDER ON
 DO p00_2115a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2115a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2115a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2115a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2115a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE dfEm=CTOD("  /  /    ")
                          STORE "Fecha inicial no puede estar vacía..." TO mmSj
                     CASE hfEm=CTOD("  /  /    ")
                          STORE "Fecha final no puede estar vacía..." TO mmSj
                     CASE dfEm>hfEm
                          STORE "Fecha inicial es mayor que fecha final..."  ;
                                TO mmSj
                     CASE cdFe<>dfEm .OR. chFe<>hfEm .OR. vgRu<>cgRu .OR.  ;
                          ALLTRIM(vnMo)+"*"<>ALLTRIM(cnMo)+"*" .OR.  ;
                          ALLTRIM(cnMo)+"*"="*"
                          SELECT teMporal_1
                          SET ORDER TO FTM1COD
                          ZAP
                          REINDEX
                          SELECT teMporal_2
                          ZAP
                          REINDEX
                          SELECT prOductos
                          GOTO TOP
                          SEEK vgRu
                          SET ESCAPE ON
                          ON ESCAPE STORE K_ESC TO MKEY
                          SAVE SCREEN TO vpAn_11
                          DO WHILE  .NOT. EOF() .AND. f2111gru=vgRu
                               IF mkEy=k_Esc
                                    SELECT teMporal_1
                                    ZAP
                                    REINDEX
                                    SELECT teMporal_2
                                    ZAP
                                    REINDEX
                                    EXIT
                               ENDIF
                               IF f2111est="9"
                                    SKIP
                                    LOOP
                               ENDIF
                               STORE f2111cod TO vcOd
                               STORE f2111des TO vdEs
                               STORE f2111nuc TO vnUc
                               STORE f2111nuv TO vnUv
                               STORE f2111la1 TO vlA1
                               STORE f2111la2 TO vlA2
                               STORE f2111an1 TO vaN1
                               STORE f2111an2 TO vaN2
                               @iFIL+2,mCO0+70 Say vCOD Font "&mLetRom",10 Style "BQ" Pict "@S22" Size 1,20
                               SELECT tmP_mov
                               SET ORDER TO FTM3COD
                               DO grA_2115a
                               SELECT tmP_mov
                               SET ORDER TO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               SELECT prOductos
                               SKIP
                          ENDDO
                          RESTORE SCREEN FROM vpAn_11
                          SET ESCAPE OFF
                          ON ESCAPE
                          WAIT CLEAR
                          STORE SPACE(mtMa) TO icOd
                ENDCASE
                IF mkEy<>k_Esc
                     STORE 99 TO mkEy
                     SELECT teMporal_1
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay datos registrados..." TO mmSj
                          DO coLsc1
                          @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
                          DO liN_2115a WITH ifIl, ffIl+1
                     ELSE
                          STORE dfEm TO cdFe
                          STORE hfEm TO chFe
                          STORE vgRu TO cgRu
                          STORE vnMo TO cnMo
                          DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SET READBORDER OFF
                          DO paC2115b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SET READBORDER ON
                          DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
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
                ENDIF
                STORE 99 TO mkEy
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      @iFIL-4,mCO0+07.5 Get dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      @iFIL-4,mCO0+26.5 Get hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Gra_2115a
 PRIVATE pnUm
 SELECT tmP_mov
 GOTO TOP
 STORE 0 TO pnUm
 DO WHILE  .NOT. EOF()
      IF mkEy=k_Esc
           SELECT teMporal_1
           ZAP
           REINDEX
           SELECT teMporal_2
           ZAP
           REINDEX
           EXIT
      ENDIF
      SELECT tmP_mov
      IF ftM3est<>"@"
           SKIP
           LOOP
      ENDIF
      STORE ftM3cod TO vmOv
      STORE ftM3des TO vnM1
      @iFIL+5,mCO0+60 Say vNM1 Font "&mLetRom",10 Style "BQ" Pict "@S32" Size 1,30
      IF SUBSTR(vmOv, 1, 4)="VTAS" .OR. (SUBSTR(vmOv, 1, 2)="VT" .AND.  ;
         (SUBSTR(vmOv, 3, 2)="SG" .OR. SUBSTR(vmOv, 3, 2)="CO"))
           STORE pnUm+1 TO pnUm
      ENDIF
      DO CASE
           CASE vmOv="PEDI"
                DO peD_2115a
                SELECT tmP_mov
                SKIP
                LOOP
           CASE vmOv="COMP"
                STORE "CO" TO vtDo
                STORE "  " TO vtEn
           CASE SUBSTR(vmOv, 1, 2)="IN"
                STORE "GI" TO vtDo
                STORE SUBSTR(vmOv, 3, 2) TO vtEn
           CASE SUBSTR(vmOv, 1, 2)="GR"
                STORE "GR" TO vtDo
                STORE SUBSTR(vmOv, 3, 2) TO vtEn
           CASE SUBSTR(vmOv, 1, 2)="SA"
                STORE "GS" TO vtDo
                STORE SUBSTR(vmOv, 3, 2) TO vtEn
           CASE (SUBSTR(vmOv, 1, 4)="VTAS" .OR. SUBSTR(vmOv, 1, 2)="VT"  ;
                .AND. SUBSTR(vmOv, 3, 2)="SG") .AND. pnUm=1
                STORE "FA" TO vtDo
                STORE "  " TO vtEn
           CASE (SUBSTR(vmOv, 1, 4)="VTAS" .OR. SUBSTR(vmOv, 1, 2)="VT"  ;
                .AND. SUBSTR(vmOv, 3, 2)="SG") .AND. pnUm=2
                STORE "BO" TO vtDo
                STORE "  " TO vtEn
           CASE SUBSTR(vmOv, 1, 4)="VTAS" .AND. pnUm=3
                STORE "NP" TO vtDo
                STORE "  " TO vtEn
           CASE (SUBSTR(vmOv, 1, 2)="VT" .AND. SUBSTR(vmOv, 3, 2)="CO")  ;
                .AND. pnUm=1
                STORE "FA" TO vtDo
                STORE "CJ" TO vtEn
           CASE (SUBSTR(vmOv, 1, 2)="VT" .AND. SUBSTR(vmOv, 3, 2)="CO")  ;
                .AND. pnUm=2
                STORE "BO" TO vtDo
                STORE "CJ" TO vtEn
           CASE (SUBSTR(vmOv, 1, 2)="VT" .AND. SUBSTR(vmOv, 3, 2)="CO")  ;
                .AND. pnUm=3
                STORE "NP" TO vtDo
                STORE "CJ" TO vtEn
      ENDCASE
      SELECT kaRdex
      SET NEAR ON
      SEEK vtDo+vtEn+ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+ ;
           SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 1, 2)
      SET NEAR OFF
      DO WHILE  .NOT. EOF() .AND. f2990tdo+f2990ten+ALLTRIM(f2990cod)+"*"= ;
         vtDo+vtEn+ALLTRIM(vcOd)+"*" .AND. CTOD(f2990dia+"/"+f2990mes+"/"+ ;
         f2990ano)<=hfEm
           IF SUBSTR(vmOv, 3, 2)="SG" .AND. LEN(ALLTRIM(f2990rem))=0
                SKIP
                LOOP
           ENDIF
           IF mkEy=k_Esc
                SELECT teMporal_1
                ZAP
                REINDEX
                SELECT teMporal_2
                ZAP
                REINDEX
                EXIT
           ENDIF
           SELECT kaRdex
           @iFIL+7,mCO0+60 Say F2990TDO+":"+F2990SER+"-"+F2990DOC Font "&mLetRom",10 Style "BQ" Pict "@S32" Size 1,30
           @iFIL+9,mCO0+60 Say F2990FEM                           Font "&mLetRom",10 Style "BQ" Pict "@S32" Size 1,30
           STORE f2990tdo TO vtDo
           STORE f2990ser TO vsEr
           STORE f2990doc TO vdOc
           STORE f2990nom TO vnOm
           STORE f2990fem TO vfEm
           STORE f2990can TO vcAn
           SELECT teMporal_1
           SEEK ALLTRIM(vcOd)+"*"+vmOv
           IF EOF()
                APPEND BLANK
                REPLACE ftM1cod WITH vcOd
                REPLACE ftM1des WITH vdEs
                REPLACE ftM1nuc WITH vnUc
                REPLACE ftM1nuv WITH vnUv
                REPLACE ftM1la1 WITH vlA1
                REPLACE ftM1la2 WITH vlA2
                REPLACE ftM1an1 WITH vaN1
                REPLACE ftM1an2 WITH vaN2
                REPLACE ftM1tip WITH vmOv
                REPLACE ftM1nti WITH vnM1
                REPLACE ftM1can WITH 0
           ENDIF
           REPLACE ftM1can WITH ftM1can+vcAn
           SELECT teMporal_2
           SEEK ALLTRIM(vcOd)+"*"+vmOv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcOd
                REPLACE ftM2tip WITH vmOv
                REPLACE ftM2ano WITH SUBSTR(DTOC(vfEm), 7, 4)
                REPLACE ftM2mes WITH SUBSTR(DTOC(vfEm), 4, 2)
                REPLACE ftM2nom WITH vnOm
                REPLACE ftM2can WITH 0
           ENDIF
           REPLACE ftM2can WITH ftM2can+vcAn
           SELECT kaRdex
           SKIP
      ENDDO
      IF mkEy=k_Esc
           EXIT
      ENDIF
      DO CASE
           CASE SUBSTR(vmOv, 1, 4)="VTAS" .AND. pnUm<3
                LOOP
           CASE SUBSTR(vmOv, 1, 4)="VTAS" .AND. pnUm=3
                STORE 0 TO pnUm
           CASE SUBSTR(vmOv, 1, 2)="VT" .AND. SUBSTR(vmOv, 3, 2)="SG"  ;
                .AND. pnUm<2
                LOOP
           CASE SUBSTR(vmOv, 1, 2)="VT" .AND. SUBSTR(vmOv, 3, 2)="SG"  ;
                .AND. pnUm=2
                STORE 0 TO pnUm
           CASE SUBSTR(vmOv, 1, 2)="VT" .AND. SUBSTR(vmOv, 3, 2)="CO"  ;
                .AND. pnUm<3
                LOOP
           CASE SUBSTR(vmOv, 1, 2)="VT" .AND. SUBSTR(vmOv, 3, 2)="CO"  ;
                .AND. pnUm=3
                STORE 0 TO pnUm
      ENDCASE
      SELECT tmP_mov
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Ped_2115a
 SELECT caB_ped
 SET NEAR ON
 SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm),  ;
      1, 2)
 SET NEAR OFF
 DO WHILE  .NOT. EOF() .AND. f1200fem<=hfEm
      IF f1200est="9"
           SKIP
           LOOP
      ENDIF
      STORE f1200tdo TO vtDo
      STORE f1200ser TO vsEr
      STORE f1200doc TO vdOc
      STORE f1200nom TO vnOm
      STORE f1200fem TO vfEm
      @iFIL+7,mCO0+60 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",10 Style "BQ" Pict "@S32" Size 1,30
      @iFIL+9,mCO0+60 Say vFEM                   Font "&mLetRom",10 Style "BQ" Pict "@S32" Size 1,30
      SELECT deT_ped
      SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc+ ;
         ALLTRIM(f1201cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF f1201can=f1201cad
                SKIP
                LOOP
           ENDIF
           IF mkEy=k_Esc
                SELECT teMporal_1
                ZAP
                REINDEX
                SELECT teMporal_2
                ZAP
                REINDEX
                EXIT
           ENDIF
           STORE f1201can TO vcAn
           SELECT teMporal_1
           SEEK ALLTRIM(vcOd)+"*"+vmOv
           IF EOF()
                APPEND BLANK
                REPLACE ftM1cod WITH vcOd
                REPLACE ftM1des WITH vdEs
                REPLACE ftM1nuc WITH vnUc
                REPLACE ftM1nuv WITH vnUv
                REPLACE ftM1la1 WITH vlA1
                REPLACE ftM1la2 WITH vlA2
                REPLACE ftM1an1 WITH vaN1
                REPLACE ftM1an2 WITH vaN2
                REPLACE ftM1tip WITH vmOv
                REPLACE ftM1nti WITH vnM1
                REPLACE ftM1can WITH 0
           ENDIF
           REPLACE ftM1can WITH ftM1can+vcAn
           SELECT teMporal_2
           SEEK ALLTRIM(vcOd)+"*"+vmOv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcOd
                REPLACE ftM2tip WITH vmOv
                REPLACE ftM2ano WITH SUBSTR(DTOC(vfEm), 7, 4)
                REPLACE ftM2mes WITH SUBSTR(DTOC(vfEm), 4, 2)
                REPLACE ftM2nom WITH vnOm
                REPLACE ftM2can WITH 0
           ENDIF
           REPLACE ftM2can WITH ftM2can+vcAn
           SELECT deT_ped
           SKIP
      ENDDO
      IF mkEy=k_Esc
           EXIT
      ENDIF
      SELECT coN_ped
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc+ ;
         ALLTRIM(f1204cdg)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                SELECT teMporal_1
                ZAP
                REINDEX
                SELECT teMporal_2
                ZAP
                REINDEX
                EXIT
           ENDIF
           STORE f1204can TO vcAn
           SELECT teMporal_1
           SEEK ALLTRIM(vcOd)+"*"+vmOv
           IF EOF()
                APPEND BLANK
                REPLACE ftM1cod WITH vcOd
                REPLACE ftM1des WITH vdEs
                REPLACE ftM1nuc WITH vnUc
                REPLACE ftM1nuv WITH vnUv
                REPLACE ftM1la1 WITH vlA1
                REPLACE ftM1la2 WITH vlA2
                REPLACE ftM1an1 WITH vaN1
                REPLACE ftM1an2 WITH vaN2
                REPLACE ftM1tip WITH vmOv
                REPLACE ftM1nti WITH vnM1
                REPLACE ftM1can WITH 0
           ENDIF
           REPLACE ftM1can WITH ftM1can+vcAn
           SELECT teMporal_2
           SEEK ALLTRIM(vcOd)+"*"+vmOv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcOd
                REPLACE ftM2tip WITH vmOv
                REPLACE ftM2ano WITH SUBSTR(DTOC(vfEm), 7, 4)
                REPLACE ftM2mes WITH SUBSTR(DTOC(vfEm), 4, 2)
                REPLACE ftM2nom WITH vnOm
                REPLACE ftM2can WITH 0
           ENDIF
           REPLACE ftM2can WITH ftM2can+vcAn
           SELECT coN_ped
           SKIP
      ENDDO
      IF mkEy=k_Esc
           EXIT
      ENDIF
      SELECT caB_ped
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Lin_2115a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+16.4 TO pfIn, mcO0+16.4
 @ piNi, mcO0+100.2 TO pfIn, mcO0+100.2
 @ piNi, mcO0+116.1 TO pfIn, mcO0+116.1
 @ piNi, mcO0+132.0 TO pfIn, mcO0+132.0
 @ piNi, mcO0+177.2 TO pfIn, mcO0+177.2
ENDPROC
*
PROCEDURE P00_2115a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 39.4 TO muFi
 STORE 198.4 TO muCo
 DO maRcos
 STORE mfI0+2 TO mfI0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+01.3 TO ifFs, ufFs, vfFs
 STORE ifFs+(INT(muFi)-5) TO ffFs
 STORE ifIl-4.05 TO vfB1
 STORE ifIl-3.95 TO vfB2
 STORE mcO0+72.3 TO vcB1
 STORE mcO0+122.1 TO vcB2
 STORE mcO0 TO icLn
 STORE mcO0+20 TO vcO0
 STORE mcO0+197.8 TO ucLn
 STORE vcO0+22 TO icL1
 STORE vcO0+103.8 TO ucL1
 Define Popup vTB1 from mFI0-1.3,mCO0+24 to fFIL+6.9,mCO0+77  Font "&mLetCou",9 Style "NQ" Prompt Field F9216DES             Scroll Color Scheme 3 Footer "CONSULTA DE GRUPOS"
 Define Popup vTB2 from mFI0-1.3,mCO0+60 to fFIL+6.9,mCO0+126 Font "&mLetCou",9 Multiselect Style "NQ" Prompt Field FTM3EST+"  "+FTM3DES Scroll Color Scheme 3 Footer "CONSULTA DE TIPOS DE MOVIMIENTOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_2115A
 DO tiT_0000a WITH "Consulta de Movimientos de Productos"
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.2, mcO0 TO ffIl+1.2, mcO0+muCo
 DO prEsiona WITH "1", "OPCIO2", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @iFIL-4,mCO0+0.8 Say "Del"     Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+22  Say "al"      Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+79  Say "Elegir:" Font "&mLetRom",12 Style "BT"
 DO liN_2115a WITH ifIl-1.3, ffIl+1.1
 DO coLbln
 @iFIL-1.3,mCO0+000.0 Say "Código"             Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+017.0 Say "Descripción"        Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+101.6 Say "Unid.Invent"        Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+117.7 Say "Unid.Venta"         Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+142.6 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+181.8 Say "Cantidad"           Font "&mLetAri",9 Style "BT"
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, mcO0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, mcO0+17
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=1
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, mcO0
      CASE vsW0=2
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, mcO0+17
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @iFIL-4.0,mCO0+07.5 Get  dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 @iFIL-4.0,mCO0+26.5 Get  hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 DO coLsc1
 @iFIL-4.0,mCO0+42.5 Edit vNGR Font "&mLetRom",11 Style "NQ" Size 1,24.5,25
 DO coLsc3
 @iFIL-3.9,mCO0+89.5 Edit vNMO Font "&mLetRom",10 Style "NQ" Size 1,32.1,35
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE Gru_2115a
 = INKEY(0.01)
 SELECT grUpos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Grupos de Productos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9216cod<>vgRu
      DO coLsc1
      STORE f9216cod TO vgRu
      STORE f9216des TO vnGr
      @iFIL-4,mCO0+42.5 Say vNGR Font "&mLetRom",11 Style "NQ" Size 1,24.5 Pict "@S26"
 ENDIF
 STORE 99 TO mkEy
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Mov_2115a
 PRIVATE pnMo, pnUm
 = INKEY(0.01)
 SELECT tmP_mov
 GOTO TOP
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 GOTO TOP
 STORE "" TO vnMo, pnMo
 STORE 00 TO pnUm
 DO WHILE  .NOT. EOF()
      IF ftM3est="@"
           STORE pnUm+1 TO pnUm
           STORE ftM3des TO pnMo
           STORE vnMo+ALLTRIM(ftM3cod) TO vnMo
      ENDIF
      SKIP
 ENDDO
 IF pnUm>1
      STORE "Varios" TO pnMo
 ENDIF
 DO coLsc3
 STORE 99 TO mkEy
 @iFIL-3.9,mCO0+89.5 Say pNMO Font "&mLetRom",10 Style "NQ" Size 1,32.1 Pict "@S35"
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2115a
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfB1-0.05 .AND. mfIl<=vfB1+1.521 .AND. mcCc>=vcB1-0.30  ;
           .AND. mcCc<=vcB1+3.900
           DO grU_2115a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT teMporal_1
           STORE 99 TO mkEy
      CASE mfIl>=vfB2-0.05 .AND. mfIl<=vfB2+1.521 .AND. mcCc>=vcB2-0.30  ;
           .AND. mcCc<=vcB2+3.900
           DO moV_2115a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT teMporal_1
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Tb2_2115a
 DO CASE
      CASE LASTKEY()=k_Tab
           STORE k_Enter TO mkEy
           DEACTIVATE POPUP vtB2
      CASE LASTKEY()=k_Enter .OR. mkEy=k_Clic
           IF ftM3est=SPACE(01)
                REPLACE ftM3est WITH "@"
           ELSE
                REPLACE ftM3est WITH " "
           ENDIF
 ENDCASE
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Res_2115a
 DO p00_2115a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      SELECT teMporal_1
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_2115b IN PAC2115B WITH "v", "c"
      DO seE_2115b IN PAC2115B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(ftM1cod)+"*"+ftM1tip=ALLTRIM(vcOd)+"*"+vtIp
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2115b IN PAC2115B WITH "v", "c"
           DO muE_2115b IN PAC2115B WITH "v", "i"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_2115b IN PAC2115B WITH "i"
      DO paN_2115b IN PAC2115B
      DO muE_2115b IN PAC2115B WITH "c", "v"
      DO seE_2115b IN PAC2115B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Hl1_2115a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra los Productos organizados x Grupos y el Tipo de"
 @ pfIl+01, 02 SAY  ;
   "movimiento escogido, dentro de los rangos de fechas seleccionadas."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 18 SAY ":" STYLE "BT"
 @ pfIl+06, 18 SAY ":" STYLE "BT"
 @ pfIl+07, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+09, 02 SAY "CTRL ->," STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 20 SAY "Regresar al Menú Principal"
 @ pfIl+06, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 20 SAY "Ayuda del Programa"
 @ pfIl+08, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+09, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, vcO0, vlIn, vpAg, vfB1, vfB2, vcB1, vcB2, vtB1, vtB2,  ;
         vfIl, ifIl
 RELEASE ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, dfEm, hfEm, vfEm,  ;
         cdFe, chFe
 RELEASE vgRu, cgRu, vnGr, vtPo, vnTi, vnMo, cnMo, vcOd, icOd, ucOd, ccOd,  ;
         xcOd, vdEs
 RELEASE idEs, udEs, cdEs, xdEs, vtIp, itIp, utIp, ctIp, xtIp, vnUc, vnUv,  ;
         vlA1, vlA2
 RELEASE vaN1, vaN2, vmOv, vnM1, vtDo, vsEr, vdOc, vnOm, vcAn, vtEn, icLn,  ;
         ucLn, icL1
 RELEASE ucL1, vaNo, iaNo, uaNo, caNo, vmEs, imEs, umEs, cmEs
 RELEASE vpAn_11, vpAn_12, vpAn_99
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
