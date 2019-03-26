 STORE "3" TO wnIv
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
      STORE "Archivo de Productos/Servicios/Activos Fijos no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SET FILTER TO f2111tpo=1 .AND. f2111est<>"9"
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
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cambio
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "9000", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Fijo
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tiendas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
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
 STORE 8 TO muLt
 SELECT prOductos
 STORE 00 TO meRr
 DO vaR_2111a IN PAC2111A
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6, vsWa, vsWb,  ;
        vpAl, cpAl
 PUBLIC vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, vcOd, icOd, ucOd, ccOd,  ;
        dcOd, hcOd
 PUBLIC vdEs, idEs, udEs, cdEs, xnTi, vdCt, vdC2, cdCt, cdC2, vdCx, vdCy,  ;
        xnGr, voPc
 PUBLIC voPs, voPr, voPt, voPu, vpRe, cpRe, vpR2, cpR2, viTe, vfEm, xfEm,  ;
        vtCa, xtCa
 PUBLIC xtPp, vpOp, vtB1, vtB2, vfB7, vcB7, vmOv, vmOn, ckEy, vuFi, vuCo,  ;
        vfI0, vcO0
 PUBLIC vxLs, viC1, viC2, viC3, viC4, vcP1, vcP2, vcP3, vcP4, vcP5, vlI1,  ;
        vlI2, vlI3
 PUBLIC vlI4, vlI5, icL1, vaLt, vaL2, vaL3, vaL4, vaL5, vnO1, vnO2, vnO3,  ;
        vnO4, vnO5
 PUBLIC vpT2, vpT3, vpT4, vpT5
 PUBLIC vpAn_11, vpAn_99
 DO baR_2114a IN PAC2114A
 STORE CTOD("  /  /    ") TO xfEm
 STORE DATE() TO vfEm
 STORE SPACE(01) TO vtPp
 STORE SPACE(02) TO vgRu
 STORE SPACE(70) TO vpAl, vmAr
 STORE SPACE(mtMa) TO vcOd, icOd, ucOd
 STORE SPACE(120) TO vdEs, idEs, udEs
 STORE SPACE(30) TO vnGr, vnTi, vnO1, vnO2, vnO3, vnO4, vnO5
 STORE 00 TO csW1, voP2, voP3, voP4, vlI2, vlI3, vlI4, vlI5, vcP1, vcP2,  ;
       vcP3, vcP4, vcP5, vsW2, vaL2, vaL3, vaL4, vaL5
 STORE 01 TO vsW0, csW0, vsW1, vsW4, vsW6, vsWa, viTe, voP1, vlI1, vcP1, vaLt
 STORE 02 TO vsWb
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE mlIs TO vsW4
 STORE mmNc TO vmOn, vsW5
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      STORE 1 TO vtCa
 ELSE
      STORE f9111tc3 TO vtCa
 ENDIF
 SELECT fiJo
 GOTO TOP
 IF  .NOT. BOF()
      STORE f9000tc1 TO vtCa
 ENDIF
 SELECT grUpos
 GOTO TOP
 STORE f9216cod TO vgRu
 STORE f9216des TO vnGr
 SELECT tiP_prod
 GOTO TOP
 STORE f9211tip TO vtPp
 STORE f9211nti TO vnTi
 WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO1)+"..."
 SELECT tiEndas
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f9991cod TO vcOd
      DO CASE
           CASE vcOd="01"
                STORE f9991nom TO vnO1
                SKIP
                LOOP
           CASE vcOd="02"
                SKIP
                LOOP
           CASE vcOd="03"
                STORE f9991nom TO vnO2
                STORE f9991pth TO vpT2
           CASE vcOd="04"
                STORE f9991nom TO vnO3
                STORE f9991pth TO vpT3
           CASE vcOd="05"
                STORE f9991nom TO vnO4
                STORE f9991pth TO vpT4
           CASE vcOd="06"
                STORE f9991nom TO vnO5
                STORE f9991pth TO vpT5
           OTHERWISE
                EXIT
      ENDCASE
      DO seL_0000a WITH muLt
      DO CASE
           CASE vcOd="03"
                STORE vaLt+1 TO vaLt
                WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO2)+"..."
                STORE ALLTRIM(vpT2)+"FA012111.DBF" TO mdBf
                DO veR_0000a IN PUX0000A
                IF mkEy=k_Esc
                     STORE ALLTRIM(vnO2)+" APAG" TO vnO2
                     SAVE SCREEN TO vpAn_11
                     DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     @ mfI0+08, mcO0+19 SAY ALLTRIM(vnO2) FONT "Arial",  ;
                       16 STYLE "BT"
                     @ mfI0+10, mcO0+19 SAY "NO HAY ACCESO..." FONT  ;
                       "Arial", 16 STYLE "BT"
                     mkEy = INKEY(5)
                     RESTORE SCREEN FROM vpAn_11
                     STORE 99 TO mkEy
                     SELECT tiEndas
                     SKIP
                     LOOP
                ENDIF
                Use &mDBF Shared Alias Tienda2
                STORE 1 TO vaL2
           CASE vcOd="04"
                STORE vaLt+1 TO vaLt
                WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO3)+"..."
                STORE ALLTRIM(vpT3)+"FA012111.DBF" TO mdBf
                DO veR_0000a IN PUX0000A
                IF mkEy=k_Esc
                     STORE ALLTRIM(vnO3)+" APAG" TO vnO3
                     SAVE SCREEN TO vpAn_11
                     DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     @ mfI0+08, mcO0+19 SAY ALLTRIM(vnO3) FONT "Arial",  ;
                       16 STYLE "BT"
                     @ mfI0+10, mcO0+19 SAY "NO HAY ACCESO..." FONT  ;
                       "Arial", 16 STYLE "BT"
                     mkEy = INKEY(5)
                     RESTORE SCREEN FROM vpAn_11
                     STORE 99 TO mkEy
                     SELECT tiEndas
                     SKIP
                     LOOP
                ENDIF
                Use &mDBF Shared Alias Tienda3
                STORE 1 TO vaL3
           CASE vcOd="05"
                STORE vaLt+1 TO vaLt
                WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO4)+"..."
                STORE ALLTRIM(vpT4)+"FA012111.DBF" TO mdBf
                DO veR_0000a IN PUX0000A
                IF mkEy=k_Esc
                     STORE ALLTRIM(vnO4)+" APAG" TO vnO4
                     SAVE SCREEN TO vpAn_11
                     DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     @ mfI0+08, mcO0+19 SAY ALLTRIM(vnO4) FONT "Arial",  ;
                       16 STYLE "BT"
                     @ mfI0+10, mcO0+19 SAY "NO HAY ACCESO..." FONT  ;
                       "Arial", 16 STYLE "BT"
                     mkEy = INKEY(5)
                     RESTORE SCREEN FROM vpAn_11
                     STORE 99 TO mkEy
                     SELECT tiEndas
                     SKIP
                     LOOP
                ENDIF
                Use &mDBF Shared Alias Tienda4
                STORE 1 TO vaL4
           CASE vcOd="06"
                STORE vaLt+1 TO vaLt
                WAIT WINDOW NOCLEAR NOWAIT "ABRIENDO: "+ALLTRIM(vnO5)+"..."
                STORE ALLTRIM(vpT5)+"FA012111.DBF" TO mdBf
                DO veR_0000a IN PUX0000A
                IF mkEy=k_Esc
                     STORE ALLTRIM(vnO5)+" APAG" TO vnO5
                     SAVE SCREEN TO vpAn_11
                     DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     @ mfI0+08, mcO0+19 SAY ALLTRIM(vnO5) FONT "Arial",  ;
                       16 STYLE "BT"
                     @ mfI0+10, mcO0+19 SAY "NO HAY ACCESO..." FONT  ;
                       "Arial", 16 STYLE "BT"
                     mkEy = INKEY(5)
                     RESTORE SCREEN FROM vpAn_11
                     STORE 99 TO mkEy
                     SELECT tiEndas
                     SKIP
                     LOOP
                ENDIF
                Use &mDBF Shared Alias Tienda5
                STORE 1 TO vaL5
      ENDCASE
      IF mkEy=k_Esc
           EXIT
      ENDIF
      SET ORDER TO F2111COD
      IF mkEy=k_Esc
           EXIT
      ENDIF
      STORE muLt+1 TO muLt
      SELECT tiEndas
      SKIP
 ENDDO
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 WAIT CLEAR
 SELECT prOductos
 GOTO TOP
 STORE f2111cod TO vcOd, icOd, dcOd
 STORE f2111des TO vdEs, idEs
 GOTO BOTTOM
 STORE f2111cod TO hcOd
 SET READBORDER ON
 DO p00_2116a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2116a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2116a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2116a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2116a
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
                DO coLbln
                IF vsW0=2
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO coD_2113a IN PAC2113A
           CASE mkEy=k_F9
                DO opC_2111a IN PAC2111A WITH "PAC2116A", "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                IF vsW2=0
                     SAVE SCREEN TO mpAn_11
                     DO coLbln
                     IF vcP1=1
                          SELECT prOductos
                          USE
                          IF LEN(ALLTRIM(muNi))=0
                               STORE mpTh+"FA012111"+meXt TO mdBf
                               STORE mpTh+"FA012111.1" TO mdB1
                          ELSE
                               STORE muNi+":"+mpTh+"FA012111"+meXt TO mdBf
                               STORE muNi+":"+mpTh+"FA012111.1" TO mdB1
                          ENDIF
                          @ ifIl+0, mcO0+03 CLEAR TO ifIl+5, mcO0+muCo-03
                          @ ifIl+0, mcO0+03 TO ifIl+5, mcO0+muCo-03
                          @iFIL+1,mCO0+10 Say "SACANDO COPIA DE SEGURIDAD DE "+AllTrim(vNO1)+" ..." Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+2,mCO0+10 Say mDBF                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+3,mCO0+10 Say mDB1                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          Copy File &mDBF to &mDB1
                          DO seL_2114a IN PAC2114A
                          = INKEY(1)
                     ENDIF
                     IF vcP2=1 .AND. vaL2=1
                          SELECT tiEnda2
                          USE
                          STORE ALLTRIM(vpT2)+"FA012111.DBF" TO mdBf
                          IF LEN(ALLTRIM(muNi))=0
                               STORE mpTh+"FA012111.2" TO mdB1
                          ELSE
                               STORE muNi+":"+mpTh+"FA012111.2" TO mdB1
                          ENDIF
                          @ ifIl+0, mcO0+03 CLEAR TO ifIl+5, mcO0+muCo-03
                          @ ifIl+0, mcO0+03 TO ifIl+5, mcO0+muCo-03
                          @iFIL+1,mCO0+10 Say "SACANDO COPIA DE SEGURIDAD DE "+AllTrim(vNO2)+" ..." Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+2,mCO0+10 Say mDBF                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+3,mCO0+10 Say mDB1                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          Copy File &mDBF to &mDB1
                          STORE ALLTRIM(vpT2)+"FA012111.DBF" TO mdBf
                          DO veR_0000a IN PUX0000A
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          Use &mDBF Shared Alias Tienda2
                          SET ORDER TO F2111COD
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          = INKEY(1)
                     ENDIF
                     IF vcP3=1 .AND. vaL3=1
                          SELECT tiEnda3
                          USE
                          STORE ALLTRIM(vpT3)+"FA012111.DBF" TO mdBf
                          IF LEN(ALLTRIM(muNi))=0
                               STORE mpTh+"FA012111.3" TO mdB1
                          ELSE
                               STORE muNi+":"+mpTh+"FA012111.3" TO mdB1
                          ENDIF
                          @ ifIl+0, mcO0+03 CLEAR TO ifIl+5, mcO0+muCo-03
                          @ ifIl+0, mcO0+03 TO ifIl+5, mcO0+muCo-03
                          @iFIL+1,mCO0+10 Say "SACANDO COPIA DE SEGURIDAD DE "+AllTrim(vNO3)+" ..." Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+2,mCO0+10 Say mDBF                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+3,mCO0+10 Say mDB1                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          Copy File &mDBF to &mDB1
                          STORE ALLTRIM(vpT3)+"FA012111.DBF" TO mdBf
                          DO veR_0000a IN PUX0000A
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          Use &mDBF Shared Alias Tienda3
                          SET ORDER TO F2111COD
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          = INKEY(1)
                     ENDIF
                     IF vcP4=1 .AND. vaL4=1
                          SELECT tiEnda4
                          USE
                          STORE ALLTRIM(vpT4)+"FA012111.DBF" TO mdBf
                          IF LEN(ALLTRIM(muNi))=0
                               STORE mpTh+"FA012111.4" TO mdB1
                          ELSE
                               STORE muNi+":"+mpTh+"FA012111.4" TO mdB1
                          ENDIF
                          @ ifIl+0, mcO0+03 CLEAR TO ifIl+5, mcO0+muCo-03
                          @ ifIl+0, mcO0+03 TO ifIl+5, mcO0+muCo-03
                          @iFIL+1,mCO0+10 Say "SACANDO COPIA DE SEGURIDAD DE "+AllTrim(vNO4)+" ..." Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+2,mCO0+10 Say mDBF                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+3,mCO0+10 Say mDB1                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          Copy File &mDBF to &mDB1
                          STORE ALLTRIM(vpT4)+"FA012111.DBF" TO mdBf
                          DO veR_0000a IN PUX0000A
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          Use &mDBF Shared Alias Tienda4
                          SET ORDER TO F2111COD
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          = INKEY(1)
                     ENDIF
                     IF vcP5=1 .AND. vaL5=1
                          SELECT tiEnda5
                          USE
                          STORE ALLTRIM(vpT5)+"FA012111.DBF" TO mdBf
                          IF LEN(ALLTRIM(muNi))=0
                               STORE mpTh+"FA012111.5" TO mdB1
                          ELSE
                               STORE muNi+":"+mpTh+"FA012111.5" TO mdB1
                          ENDIF
                          @ ifIl+0, mcO0+03 CLEAR TO ifIl+5, mcO0+muCo-03
                          @ ifIl+0, mcO0+03 TO ifIl+5, mcO0+muCo-03
                          @iFIL+1,mCO0+10 Say "SACANDO COPIA DE SEGURIDAD DE "+AllTrim(vNO5)+" ..." Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+2,mCO0+10 Say mDBF                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          @iFIL+3,mCO0+10 Say mDB1                                                  Font "&mLetAri",10 Style "BQ" Size 1,120
                          Copy File &mDBF to &mDB1
                          STORE ALLTRIM(vpT5)+"FA012111.DBF" TO mdBf
                          DO veR_0000a IN PUX0000A
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          Use &mDBF Shared Alias Tienda5
                          SET ORDER TO F2111COD
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          = INKEY(1)
                     ENDIF
                     RESTORE SCREEN FROM mpAn_11
                     STORE 1 TO vsW2
                     STORE 0 TO csW0
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
                DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO q1_0000a
                DO p2_0000a
                DO paC2116b
                DO q2_0000a
                DO p1_0000a
                SET READBORDER ON
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB7, vcB7
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
PROCEDURE Lin_2116a
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE mrEs="3"
           @ piNi, icLn+122.1 TO pfIn, icLn+122.1
           @ piNi, icLn+136.3 TO pfIn, icLn+136.3
           @ piNi, icLn+147.4 TO pfIn, icLn+147.4
           @ piNi, icLn+164.8 TO pfIn, icLn+164.8
           @ piNi, icLn+182.1 TO pfIn, icLn+182.1
      OTHERWISE
           @ piNi, icLn+123.6 TO pfIn, icLn+123.6
           @ piNi, icLn+142.0 TO pfIn, icLn+142.0
           @ piNi, icLn+153.0 TO pfIn, icLn+153.0
           @ piNi, icLn+170.4 TO pfIn, icLn+170.4
           @ piNi, icLn+187.8 TO pfIn, icLn+187.8
           @ piNi, icLn+205.2 TO pfIn, icLn+205.2
           @ piNi, icLn+216.3 TO pfIn, icLn+216.3
           @ piNi, icLn+233.6 TO pfIn, icLn+233.6
           @ piNi, icLn+251.0 TO pfIn, icLn+251.0
 ENDCASE
ENDPROC
*
PROCEDURE Li1_2116a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, icLn+27.8 TO pfIn, icLn+27.8
ENDPROC
*
PROCEDURE P00_2116a
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
 STORE ifIl-1.5 TO vfB7
 STORE mcO0+0.4 TO icLn
 STORE mcO0+muCo-0.2 TO ucLn
 DO CASE
      CASE mrEs="3"
           STORE mcO0+062.0 TO vcB3, vcB4, vcB5, vcB6
           STORE icLn+082.2 TO vcB7
           STORE icLn+136.9 TO viC1
           STORE icLn+148.5 TO viC2
           STORE 0 TO viC3, viC4
           STORE mcO0+070 TO icL1
      OTHERWISE
           STORE mcO0+102.0 TO vcB3, vcB4, vcB5, vcB6
           STORE icLn+112.2 TO vcB7
           STORE icLn+142.6 TO viC1
           STORE icLn+154.0 TO viC2
           STORE icLn+205.8 TO viC3
           STORE icLn+217.2 TO viC4
           STORE mcO0+136.9 TO icL1
 ENDCASE
 STORE vcB3+40 TO vcB1, vcB2
 DO tiT_0000a WITH "Cambio de Descuentos, Mínimos y Listas de Precios"
 DO coLsc1
 DO cuAdro WITH mfI0, icLn-0.4, mfI0+muFi, ucLn+0.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coD_2113a IN PAC2113A
 DO geT_2111a IN PAC2111A
 READ TIMEOUT 0.01
 DO li1_2116a WITH ifIl-0.1, ffIl+1.1
 DO liN_2116a WITH ifIl-1.5, ffIl+1.1
 DO coLplp
 @ ifIl-0.15, icLn-0.2 TO ifIl-0.15, ucLn
 @ ffIl+1.10, icLn-0.2 TO ffIl+1.10, ucLn
 DO coLsc1
 @iFIL-1.2,iCLN+0.4 Say "Producto" Font "&mLetAri",8 Style "NQ"
 DO CASE
      CASE mrEs="3"
           @iFIL-1.5,iCLN+056.0 Say "T/C"              Font "&mLetAri",10 Style "BQ" Size 1,17.2
           @iFIL-1.5,iCLN+062.4 Get vTCA               Font "&mLetAri",9  Style "BQ" Pict "99.999" Size 1,8 Color ,&mColBlN
           @iFIL-1.2,iCLN+122.9 Say "Unidad-Venta"     Font "&mLetAri",8  Style "NQ"
      OTHERWISE
           @iFIL-1.5,iCLN+066.0 Say "T/C"              Font "&mLetAri",10 Style "BQ" Size 1,17.2
           @iFIL-1.5,iCLN+072.4 Get vTCA               Font "&mLetAri",9  Style "BQ" Pict "99.999" Size 1,8 Color ,&mColBlN
           @iFIL-1.2,iCLN+129.9 Say "Uni.Vta"          Font "&mLetAri",8  Style "NQ"
 ENDCASE
 READ TIMEOUT 0.01
 DO moN_2116a
 DO dcT_2116a
 @iFIL-1.4,vCB7-8      Say "Listas"   Font "&mLetAri",10 Style "BT" Color 1
 @mFI0+mUFI-1.3,mCO0+1 Say "Palabra:" Font "&mLetRom",10 Style "BT"
 DO prEsiona WITH "3", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paL_2111a IN PAC2111A
 DO tb1_2111a IN PAC2111A
 DO ti2_2114a IN PAC2114A
ENDPROC
*
PROCEDURE Dct_2116a
 PRIVATE pcL1, pcL2, pcL3, pcL4, pcL5, pcL6
 STORE icLn+143.1 TO pcL1
 STORE icLn+171.3 TO pcL2
 STORE icLn+189.1 TO pcL3
 STORE icLn+206.3 TO pcL4
 STORE icLn+234.9 TO pcL5
 STORE icLn+252.4 TO pcL6
 DO coLsc1
 DO CASE
      CASE mrEs="3" .AND. vsW4<10
           @iFIL-1.2,iCLN+137.2 Say "%Dcto-"+AllTrim(Str(vSW4,2,0))                Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,iCLN+165.1 Say " Prec.Mínim-"+AllTrim(Str(vSW4,2,0))+" "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+183.1 Say "Prec.Mín."+AllTrim(Str(vSW4,2,0))+" US$"      Font "&mLetAri",8 Style "NQ" Size 1,16.6
      CASE mrEs="3"
           @iFIL-1.2,iCLN+137.2 Say "%Dcto-"+AllTrim(Str(vSW4,2,0))                Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,iCLN+165.1 Say " Prec.Mínim."+AllTrim(Str(vSW4,2,0))+" "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16.6
           @iFIL-1.2,iCLN+183.1 Say "Prec.Mín."+AllTrim(Str(vSW4,2,0))+" US$"      Font "&mLetAri",8 Style "NQ" Size 1,16.6
      CASE vsW4<=2
           @iFIL-1.2,pCL1 Say "%Dcto-1"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL2 Say " Prec.Mínim-1 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL3 Say "Prec.Mínim-1 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL4 Say "%Dcto-2"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL5 Say " Prec.Mínim-2 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL6 Say "Prec.Mínim-2 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
      CASE vsW4>=3 .AND. vsW4<=4
           @iFIL-1.2,pCL1 Say "%Dcto-3"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL2 Say " Prec.Mínim-3 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL3 Say "Prec.Mínim-3 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL4 Say "%Dcto-4"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL5 Say " Prec.Mínim-4 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL6 Say "Prec.Mínim-4 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
      CASE vsW4>=5 .AND. vsW4<=6
           @iFIL-1.2,pCL1 Say "%Dcto-5"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL2 Say " Prec.Mínim-5 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL3 Say "Prec.Mínim-5 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL4 Say "%Dcto-6"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL5 Say " Prec.Mínim-6 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL6 Say "Prec.Mínim-6 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
      CASE vsW4>=7 .AND. vsW4<=8
           @iFIL-1.2,pCL1 Say "%Dcto-7"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL2 Say " Prec.Mínim-7 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL3 Say "Prec.Mínim-7 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL4 Say "%Dcto-8"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL5 Say " Prec.Mínim-8 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL6 Say "Prec.Mínim-8 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
      CASE vsW4>=9 .AND. vsW4<=10
           @iFIL-1.2,pCL1 Say "%Dcto-9"             Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL2 Say " Prec.Mínim-9 "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL3 Say "Prec.Mínim-9 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL4 Say "%Dcto-10"            Font "&mLetAri",8 Style "NQ" Size 1,9.6
           @iFIL-1.2,pCL5 Say "Prec.Míni-10 "+mSIG  Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,pCL6 Say "Prec.Míni-10 U$"     Font "&mLetAri",8 Style "NQ" Size 1,16.3
 ENDCASE
 RELEASE pcL1, pcL2, pcL3, pcL4, pcL5, pcL6
ENDPROC
*
PROCEDURE Mon_2116a
 DO coLsc1
 DO CASE
      CASE mrEs="3" .AND. vsW5=1
           @iFIL-1.2,iCLN+148.4 Say " Precio Lista "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
      CASE mrEs="3" .AND. vsW5=2
           @iFIL-1.2,iCLN+148.4 Say "Precio Lista US$ "   Font "&mLetAri",8 Style "NQ" Size 1,16
      CASE vsW5=1
           @iFIL-1.2,iCLN+153.9 Say " Precio Lista "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,iCLN+217.0 Say " Precio Lista "+mSIG Font "&mLetAri",8 Style "NQ" Size 1,16
      CASE vsW5=2
           @iFIL-1.2,iCLN+153.9 Say "Precio Lista US$ "   Font "&mLetAri",8 Style "NQ" Size 1,16
           @iFIL-1.2,iCLN+217.0 Say "Precio Lista US$ "   Font "&mLetAri",8 Style "NQ" Size 1,16
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2116a
 DO p00_2116a WITH "1"
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
      DO paN_2116b IN PAC2116B
      DO muE_2112b IN PAC2112B WITH "c", "v"
      DO seE_2112b IN PAC2112B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Clp_2116a
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
      CASE mfIl>=ifIl-3.014 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=icL1+009.2  ;
           .AND. mcCc<=icL1+011.6
           IF vcP1=1
                STORE 0 TO vcP1
           ELSE
                STORE 1 TO vcP1
           ENDIF
           DO boT_2114a IN PAC2114A
      CASE mfIl>=ifIl-3.014 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=icL1+029.2  ;
           .AND. mcCc<=icL1+031.6 .AND. vaLt>1
           IF vcP2=1
                STORE 0 TO vcP2
           ELSE
                STORE 1 TO vcP2
           ENDIF
           DO boT_2114a IN PAC2114A
      CASE mfIl>=ifIl-3.014 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=icL1+049.2  ;
           .AND. mcCc<=icL1+051.6 .AND. vaLt>2
           IF vcP3=1
                STORE 0 TO vcP3
           ELSE
                STORE 1 TO vcP3
           ENDIF
           DO boT_2114a IN PAC2114A
      CASE mfIl>=ifIl-3.014 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=icL1+069.2  ;
           .AND. mcCc<=icL1+071.6 .AND. vaLt>3
           IF vcP4=1
                STORE 0 TO vcP4
           ELSE
                STORE 1 TO vcP4
           ENDIF
           DO boT_2114a IN PAC2114A
      CASE mfIl>=ifIl-3.014 .AND. mfIl<=ifIl-2.085 .AND. mcCc>=icL1+089.2  ;
           .AND. mcCc<=icL1+091.6 .AND. vaLt>4
           IF vcP5=1
                STORE 0 TO vcP5
           ELSE
                STORE 1 TO vcP5
           ENDIF
           DO boT_2114a IN PAC2114A
      CASE mfIl>=ifIl-4.299 .AND. mfIl<=ifIl-3.299 .AND. mcCc>=icL1+029.2  ;
           .AND. mcCc<=icL1+031.6 .AND. vaLt>1
           IF vlI2=1
                STORE 0 TO vlI2
           ELSE
                STORE 1 TO vlI2
           ENDIF
           DO boT_2114a IN PAC2114A
      CASE mfIl>=ifIl-4.299 .AND. mfIl<=ifIl-3.299 .AND. mcCc>=icL1+049.2  ;
           .AND. mcCc<=icL1+051.6 .AND. vaLt>2
           IF vlI3=1
                STORE 0 TO vlI3
           ELSE
                STORE 1 TO vlI3
           ENDIF
           DO boT_2114a IN PAC2114A
      CASE mfIl>=ifIl-4.299 .AND. mfIl<=ifIl-3.299 .AND. mcCc>=icL1+069.2  ;
           .AND. mcCc<=icL1+071.6 .AND. vaLt>3
           IF vlI4=1
                STORE 0 TO vlI4
           ELSE
                STORE 1 TO vlI4
           ENDIF
           DO boT_2114a IN PAC2114A
      CASE mfIl>=ifIl-4.299 .AND. mfIl<=ifIl-3.299 .AND. mcCc>=icL1+089.2  ;
           .AND. mcCc<=icL1+091.6 .AND. vaLt>4
           IF vlI5=1
                STORE 0 TO vlI5
           ELSE
                STORE 1 TO vlI5
           ENDIF
           DO boT_2114a IN PAC2114A
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2116a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra todos los Productos, Servicios y/o Activos Fijos in-"
 @ pfIl+01, 02 SAY "cluyendo los que están anulados."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 18 SAY ":" STYLE "BT"
 @ pfIl+06, 18 SAY ":" STYLE "BT"
 @ pfIl+07, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+09, 18 SAY ":" STYLE "BT"
 @ pfIl+10, 18 SAY ":" STYLE "BT"
 @ pfIl+05, 01 SAY "ESC" STYLE "BT"
 @ pfIl+06, 01 SAY "F10" STYLE "BT"
 @ pfIl+07, 01 SAY "F1" STYLE "BT"
 @ pfIl+08, 01 SAY "F6" STYLE "BT"
 @ pfIl+09, 01 SAY "F9" STYLE "BT"
 @ pfIl+10, 01 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+11, 01 SAY "FLECHA ABAJO," STYLE "BT"
 @ pfIl+12, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl+05, 20 SAY "Regresar al Menú Principal"
 @ pfIl+06, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 20 SAY "Ayuda del Programa"
 @ pfIl+08, 20 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 20 SAY "Buscar palabra o frase dentro de la descripción"
 @ pfIl+10, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+11, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1 IN MODSET
 SET READBORDER OFF
 DO bvA_2111a IN PAC2111A
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6, vsWa, vsWb,  ;
         vpAl, cpAl
 RELEASE vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, vcOd, icOd, ucOd, ccOd,  ;
         dcOd, hcOd
 RELEASE vdEs, idEs, udEs, cdEs, xnTi, vdCt, vdC2, cdCt, cdC2, vdCx, vdCy,  ;
         xnGr, voPc
 RELEASE voPs, voPr, voPt, voPu, vpRe, cpRe, vpR2, cpR2, viTe, vfEm, xfEm,  ;
         vtCa, xtCa
 RELEASE xtPp, vpOp, vtB1, vtB2, vfB7, vcB7, vmOv, vmOn, ckEy, vuFi, vuCo,  ;
         vfI0, vcO0
 RELEASE vxLs, viC1, viC2, viC3, viC4, vcP1, vcP2, vcP3, vcP4, vcP5, vlI1,  ;
         vlI2, vlI3
 RELEASE vlI4, vlI5, icL1, vaLt, vaL2, vaL3, vaL4, vaL5, vnO1, vnO2, vnO3,  ;
         vnO4, vnO5
 RELEASE vpT2, vpT3, vpT4, vpT5
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
