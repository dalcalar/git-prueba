 PARAMETER wnIv
 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DO tmP_2111a IN PAC2111A
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
 SET FILTER TO f2111tpo<3 .AND. f2111est<>"9"
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
 SELECT 2
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
 SELECT 3
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
 SELECT 4
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
 SELECT prOductos
 STORE 00 TO meRr
 DO vaR_2111a IN PAC2111A
 PUBLIC vsW0, csW0, vsW1, csW1, xsW1, vsW2, xsW2, vsW3, xsW3, vsWa, vsWb,  ;
        vpAl, cpAl
 PUBLIC vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, vcOd, icOd, ucOd, ccOd,  ;
        dcOd, hcOd
 PUBLIC vdEs, idEs, udEs, cdEs, xnTi, xnGr, vmOn, voPc, voPs, voPr, voPt,  ;
        voPu, vxLs
 PUBLIC xtPp, vtB1, vtB2, vmOv, vnL1, vnL2, vnL3, vuFi, vuCo, vfI0, vcO0, vuLt
 PUBLIC vpAn_11, vpAn_99
 STORE SPACE(70) TO vpAl, vmAr
 STORE SPACE(mtMa) TO vcOd, icOd, ucOd
 STORE SPACE(120) TO vdEs, idEs, udEs
 STORE 01 TO vsW0, csW0, vsW1, vsW2, voPc, vsWa, voP1, voPs, voPr, vuLt
 STORE 00 TO csW1, voP2, voP3, voP4
 STORE 02 TO vsWb
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE mmOn TO vmOn
 SET READBORDER ON
 DO p00_2113a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SELECT grUpos
 GOTO TOP
 STORE f9216cod TO vgRu
 STORE f9216des TO vnGr
 SELECT tiP_prod
 GOTO TOP
 STORE f9211tip TO vtPp
 STORE f9211nti TO vnTi
 SELECT prOductos
 GOTO TOP
 STORE f2111cod TO dcOd
 GOTO BOTTOM
 STORE f2111cod TO hcOd
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2113a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2113a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2113a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2113a
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
                IF vsW0=2
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO p02_2113a
           CASE mkEy=k_F9
                DO opC_2111a IN PAC2111A WITH "PAC2113A", "1"
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
                DO paC2113b
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
      DO geT_2111a IN PAC2111A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Lin_2113a
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE mrEs="3"
           @ piNi, icLn+027.6 TO pfIn, icLn+027.6
           @ piNi, icLn+118.1 TO pfIn, icLn+118.1
           @ piNi, icLn+128.3 TO pfIn, icLn+128.3
           @ piNi, icLn+146.1 TO pfIn, icLn+146.1
           @ piNi, icLn+163.9 TO pfIn, icLn+163.9
           @ piNi, icLn+181.8 TO pfIn, icLn+181.8
      OTHERWISE
           @ piNi, icLn+027.6 TO pfIn, icLn+027.6
           @ piNi, icLn+118.1 TO pfIn, icLn+118.1
           @ piNi, icLn+129.4 TO pfIn, icLn+129.4
           @ piNi, icLn+146.9 TO pfIn, icLn+146.9
           @ piNi, icLn+164.2 TO pfIn, icLn+164.2
           @ piNi, icLn+181.6 TO pfIn, icLn+181.6
           @ piNi, icLn+199.0 TO pfIn, icLn+199.0
           @ piNi, icLn+216.4 TO pfIn, icLn+216.4
           @ piNi, icLn+233.8 TO pfIn, icLn+233.8
           @ piNi, icLn+251.2 TO pfIn, icLn+251.2
 ENDCASE
ENDPROC
*
PROCEDURE P00_2113a
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
 STORE mcO0+0.4 TO icLn
 STORE mcO0+muCo-0.2 TO ucLn
 DO CASE
      CASE mrEs="3"
           STORE mcO0+62 TO vcB3, vcB4, vcB5, vcB6
      OTHERWISE
           STORE mcO0+102 TO vcB3, vcB4, vcB5, vcB6
 ENDCASE
 STORE vcB3+40 TO vcB1, vcB2
 DO CASE
      CASE mrEs="3"
           STORE 6 TO vuLt
      OTHERWISE
           STORE 3 TO vuLt
 ENDCASE
 DO tiT_0000a WITH "Consulta de Listas de Precios"
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
 DO p02_2113a
 DO liN_2113a WITH ifIl-1.3, ffIl+1
 DO coLsc1
 @iFIL-1.2,iCLN+000.1 Say "Código"      Font "&mLetAri",8 Style "NT"
 @iFIL-1.2,iCLN+028.0 Say "Descripción" Font "&mLetAri",8 Style "NT"
 @iFIL-1.2,iCLN+118.7 Say "Unid.Cpra"   Font "&mLetAri",8 Style "NT"
 @mFI0+mUFI-1.3,mCO0+1 Say "Palabra:"   Font "&mLetRom",10 Style "BT"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_2113a
 DO paL_2111a IN PAC2111A
 DO tb1_2111a IN PAC2111A
ENDPROC
*
PROCEDURE P01_2113a
 DO coLsc1
 DO CASE
      CASE mrEs="3" .AND. ((vsW2=1 .AND. mmOn=1) .OR. (vsW2=4 .AND. mmOn=2))
           @iFIL-1.2,iCLN+129.4 Say " Lista Prec-1 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+147.2 Say " Lista Prec-2 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+165.0 Say " Lista Prec-3 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+182.8 Say " Lista Prec-4 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
      CASE mrEs="3" .AND. ((vsW2=2 .AND. mmOn=1) .OR. (vsW2=5 .AND. mmOn=2))
           @iFIL-1.2,iCLN+129.4 Say " Lista Prec-5 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+147.2 Say " Lista Prec-6 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+165.0 Say " Lista Prec-7 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+182.8 Say " Lista Prec-8 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
      CASE mrEs="3" .AND. ((vsW2=3 .AND. mmOn=1) .OR. (vsW2=6 .AND. mmOn=2))
           @iFIL-1.2,iCLN+129.4 Say " Lista Prec-9 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+147.2 Say " Lista Prec10 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+165.0 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+182.8 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.6
      CASE mrEs="3" .AND. ((vsW2=4 .AND. mmOn=1) .OR. (vsW2=1 .AND. mmOn=2))
           @iFIL-1.2,iCLN+129.4 Say "Lista Prec-1 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+147.2 Say "Lista Prec-2 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+165.0 Say "Lista Prec-3 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+182.8 Say "Lista Prec-4 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
      CASE mrEs="3" .AND. ((vsW2=5 .AND. mmOn=1) .OR. (vsW2=2 .AND. mmOn=2))
           @iFIL-1.2,iCLN+129.4 Say "Lista Prec-5 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+147.2 Say "Lista Prec-6 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+165.0 Say "Lista Prec-7 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+182.8 Say "Lista Prec-8 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
      CASE mrEs="3" .AND. ((vsW2=6 .AND. mmOn=1) .OR. (vsW2=3 .AND. mmOn=2))
           @iFIL-1.2,iCLN+129.4 Say "Lista Prec-9 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+147.2 Say "Lista Prec10 US$"  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+165.0 Say "                "  Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+182.8 Say "                "  Font "&mLetAri",8 Style "NQ" Size 1,16.6
      CASE vsW2=1 .AND. mmOn=1
           @iFIL-1.2,iCLN+129.8 Say " Lista Prec-1 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+147.2 Say " Lista Prec-2 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+164.6 Say " Lista Prec-3 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+182.0 Say " Lista Prec-4 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+199.4 Say " Lista Prec-5 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+216.8 Say " Lista Prec-6 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+234.2 Say " Lista Prec-7 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+251.6 Say " Lista Prec-8 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
      CASE vsW2=2 .AND. mmOn=1
           @iFIL-1.2,iCLN+129.8 Say " Lista Prec-9 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+147.2 Say " Lista Prec10 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+164.6 Say "Lista Prec-1 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+182.0 Say "Lista Prec-2 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+199.4 Say "Lista Prec-3 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+216.8 Say "Lista Prec-4 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+234.2 Say "Lista Prec-5 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+251.6 Say "Lista Prec-6 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
      CASE vsW2=3 .AND. mmOn=1
           @iFIL-1.2,iCLN+129.8 Say "Lista Prec-7 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+147.2 Say "Lista Prec-8 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+164.6 Say "Lista Prec-9 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+182.0 Say "Lista Prec10 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+199.4 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+216.8 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+234.2 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+251.6 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.4
      CASE vsW2=1 .AND. mmOn=2
           @iFIL-1.2,iCLN+129.8 Say "Lista Prec-1 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+147.2 Say "Lista Prec-2 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+164.6 Say "Lista Prec-3 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+182.0 Say "Lista Prec-4 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+199.4 Say "Lista Prec-5 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+216.8 Say "Lista Prec-6 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+234.2 Say "Lista Prec-7 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+251.6 Say "Lista Prec-8 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
      CASE vsW2=2 .AND. mmOn=2
           @iFIL-1.2,iCLN+129.8 Say "Lista Prec-9 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+147.2 Say "Lista Prec10 US$ " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+164.6 Say " Lista Prec-1 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+182.0 Say " Lista Prec-2 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+199.4 Say " Lista Prec-3 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+216.8 Say " Lista Prec-4 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+234.2 Say " Lista Prec-5 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+251.6 Say " Lista Prec-6 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
      CASE vsW2=3 .AND. mmOn=2
           @iFIL-1.2,iCLN+129.8 Say " Lista Prec-7 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+147.2 Say " Lista Prec-8 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+164.6 Say " Lista Prec-9 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+182.0 Say " Lista Prec10 S/." Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+199.4 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+216.8 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+234.2 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.4
           @iFIL-1.2,iCLN+251.6 Say "                 " Font "&mLetAri",8 Style "NQ" Size 1,16.4
 ENDCASE
 IF vuLt>1
      DO coLblr
      DO prEsiona WITH "1", "BOTON", ifIl-1.7, icLn+110.1
      @iFIL-1.5,iCLN+112.2 Say Str(vSW2,1,0)+"/"+Str(vULT,1,0) Font "&mLetRom",9 Style "BT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cod_2113a
 DO coLbln
 DO CASE
      CASE vsW0=01
           @iFIL-4,mCO0+0.8 Say "Código:"      Font "&mLetRom",12 Style "BT"
      CASE vsW0=02
           @iFIL-4,mCO0+0.8 Say "Descripción:" Font "&mLetRom",12 Style "BT"
 ENDCASE
ENDPROC
*
PROCEDURE P02_2113a
 DO coD_2113a
 DO geT_2111a IN PAC2111A
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Rs1_2113a
 DO p00_2113a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO CASE
           CASE vsW1=01
                SELECT prOductos
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO muE_2112b IN PAC2112B WITH "v", "c"
      DO seE_2112b IN PAC2112B WITH "i"
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
           DO muE_2112b IN PAC2112B WITH "v", "c"
           DO muE_2112b IN PAC2112B WITH "v", "i"
      ENDIF
      DO seE_2112b IN PAC2112B WITH "i"
      DO paN_2113b IN PAC2113B
      DO muE_2112b IN PAC2112B WITH "c", "v"
      DO seE_2112b IN PAC2112B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Clp_2113a
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
PROCEDURE Hl1_2113a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 02 SAY  ;
   "Esta consulta muestra todos los Productos y Servicios con todas las listas"
 @ pfIl+1, 02 SAY "de precios no incluyen los que están anulados."
 DO CASE
      CASE wnIv="1"
           @ pfIl+3, 02 SAY  ;
             "Se puede visualizar en el Detalle del Producto los Precios de Lista y Costo"
           @ pfIl+4, 02 SAY "promedio aproximado."
      CASE wnIv="2"
           @ pfIl+3, 02 SAY  ;
             "No se puede visualizar en el Detalle del Producto Precios de Lista y Costo"
           @ pfIl+4, 02 SAY "promedio aproximado."
      CASE wnIv="3"
           @ pfIl+3, 02 SAY  ;
             "Se puede visualizar en el Detalle del Producto los Precios de Lista, mas no"
           @ pfIl+4, 02 SAY "el Costo promedio aproximado."
 ENDCASE
 @ pfIl+06, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+09, 18 SAY ":" STYLE "BT"
 @ pfIl+10, 18 SAY ":" STYLE "BT"
 @ pfIl+11, 18 SAY ":" STYLE "BT"
 @ pfIl+12, 18 SAY ":" STYLE "BT"
 @ pfIl+13, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 02 SAY "ESC" STYLE "BT"
 @ pfIl+09, 02 SAY "F10" STYLE "BT"
 @ pfIl+10, 02 SAY "F1" STYLE "BT"
 @ pfIl+11, 02 SAY "F6" STYLE "BT"
 @ pfIl+12, 02 SAY "F9" STYLE "BT"
 @ pfIl+13, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+14, 02 SAY "CTRL ->, " STYLE "BT"
 @ pfIl+15, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+08, 20 SAY "Regresar al Menú Principal"
 @ pfIl+09, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 20 SAY "Ayuda del Programa"
 @ pfIl+11, 20 SAY "Cambio de Orden de Consulta"
 @ pfIl+12, 20 SAY "Buscar palabra o frase dentro de la descripción"
 @ pfIl+13, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+14, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a IN MODSET
 DO deL_file1
 SET READBORDER OFF
 DO bvA_2111a IN PAC2111A
 RELEASE vsW0, csW0, vsW1, csW1, xsW1, vsW2, xsW2, vsW3, xsW3, vsWa, vsWb,  ;
         vpAl, cpAl
 RELEASE vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, vcOd, icOd, ucOd, ccOd,  ;
         dcOd, hcOd
 RELEASE vdEs, idEs, udEs, cdEs, xnTi, xnGr, vmOn, voPc, voPs, voPr, voPt,  ;
         voPu, vxLs
 RELEASE xtPp, vtB1, vtB2, vmOv, vnL1, vnL2, vnL3, vuFi, vuCo, vfI0, vcO0, vuLt
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
 RELEASE ntM1
ENDPROC
*
