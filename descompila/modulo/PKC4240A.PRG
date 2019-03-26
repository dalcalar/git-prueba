 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DO taB_boleta IN PUX0004A
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
 INDEX ON f4240ser+f4240bol TAG f4240bol
 INDEX ON UPPER(f4240nom)+f4240ser+f4240bol TAG f4240nom
 INDEX ON SUBSTR(DTOC(f4240fem), 7, 4)+SUBSTR(DTOC(f4240fem), 4, 2)+ ;
       SUBSTR(DTOC(f4240fem), 1, 2)+f4240ser+f4240bol TAG f4240fem
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "4240", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cabecera
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4240BOL
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo de Boletas de Venta no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 DO CASE
      CASE wtPo="2"
           SET FILTER TO f4240est<>"9"
      CASE wtPo="3"
           SET FILTER TO f4240est="9"
 ENDCASE
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      DO CASE
           CASE wtPo="2"
                STORE "No hay Boletas de Pago para Anular..." TO mmSj
           CASE wtPo="3"
                STORE "No hay Boletas de Pago para Eliminar..." TO mmSj
      ENDCASE
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "4241", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Detalle
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4241BOL
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "4299", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Formato
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4299SER
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
 SET ORDER TO F4240BOL
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vpAl, cpAl, vxLs, vfIl, ifIl, ufIl, ffIl,  ;
        cfIl, vfFs
 PUBLIC ifFs, ufFs, ffFs, cfFs, vlIn, vfI0, vcO0, vcO1, vuFi, vuCo, vuC1,  ;
        vcLn, icLn
 PUBLIC ucLn, xsEr, vsEr, isEr, usEr, csEr, xbOl, vbOl, ibOl, ubOl, cbOl,  ;
        xfEm, vfEm
 PUBLIC ifEm, ufEm, cfEm, xnOm, vnOm, inOm, unOm, cnOm, xmOn, xdFe, xhFe,  ;
        xcOd, xdNi
 PUBLIC xdIr, xdIs, xcAr, xaRe, xfIn, xfCe, xfNa, xlNa, xsSo, xsPp, xnAc,  ;
        xiNg, xdCt
 PUBLIC xaPo, xeSt, xuSu, xdAt, xtIm, xmAq, vrEc, irEc, urEc, crEc
 PUBLIC vpAn_11, vpAn_12, vpAn_99
 STORE CTOD("  /  /    ") TO ifEm, ufEm
 STORE msEr(03) TO isEr, usEr
 STORE SPACE(07) TO ibOl, ubOl
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 STORE 01 TO vsW0, csW0, vsW1, csW1
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SELECT caBecera
 GOTO BOTTOM
 DO veR_lock
 DO muE_4240b IN PKC4240B WITH "F", "v"
 SET READBORDER ON
 DO p00_4240a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4240a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4240a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4240a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4240a
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
                DO p01_4240a
           CASE mkEy=k_F9
                DO opC_4240a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE wtPo="1"
                          DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                     CASE wtPo="2"
                          DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
                     CASE wtPo="3"
                          DO prEsiona WITH "4", "R_CONS12", mmF1, mmC1
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
                DO pkC4240b
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
      IF vsW0=1
           STORE VAL(vbOl) TO vbOl
      ENDIF
      DO geT_4240a
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE vsW0=1
                DO coLbln
                vbOl = STRTRAN(STR(vbOl, 7, 0), " ", "0")
                @iFIL-4,mCO0+16.0 Say vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"
                @iFIL-4,mCO0+21.5 Say vBOL Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999"
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Get_4240a
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+16.0 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"     Color ,&mColBlN
           @iFIL-4,mCO0+21.5 Get vBOL Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+18.5 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,28  Pict "@S28"    Color ,&mColBlN
      CASE vsW0=3
           @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5               Color ,&mColBlN
 ENDCASE
ENDPROC
*
PROCEDURE Opc_4240a
 DO rs2_4240a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4240a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_4240a
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
                DO hl2_4240a
           CASE mkEy=k_F12
                DO rs1_4240a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_4240a
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
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caBecera
                GOTO TOP
                DO veR_lock
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f4240nom)))<>0
                          DO muE_4240a
                          DO grA_4240a
                          SELECT caBecera
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
           CASE mrEs="4"
                @iFIL+1.8,mCO0+71.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs>="5"
                @iFIL+1.8,mCO0+91.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
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
      STORE SPACE(07) TO vbOl
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_4240a
 STORE f4240ser TO xsEr
 STORE f4240bol TO xbOl
 STORE f4240mon TO xmOn
 STORE f4240fem TO xfEm
 STORE f4240dfe TO xdFe
 STORE f4240hfe TO xhFe
 STORE f4240cod TO xcOd
 STORE f4240nom TO xnOm
 STORE f4240dni TO xdNi
 STORE f4240dir TO xdIr
 STORE f4240dis TO xdIs
 STORE f4240car TO xcAr
 STORE f4240are TO xaRe
 STORE f4240fin TO xfIn
 STORE f4240fce TO xfCe
 STORE f4240fna TO xfNa
 STORE f4240lna TO xlNa
 STORE f4240sso TO xsSo
 STORE f4240spp TO xsPp
 STORE f4240nac TO xnAc
 STORE f4240ing TO xiNg
 STORE f4240dct TO xdCt
 STORE f4240apo TO xaPo
 STORE f4240est TO xeSt
 STORE f4240usu TO xuSu
 STORE f4240dat TO xdAt
 STORE f4240tim TO xtIm
 STORE f4240maq TO xmAq
ENDPROC
*
PROCEDURE Gra_4240a
 SELECT teMporal
 APPEND BLANK
 REPLACE f4240ser WITH xsEr
 REPLACE f4240bol WITH xbOl
 REPLACE f4240mon WITH xmOn
 REPLACE f4240fem WITH xfEm
 REPLACE f4240dfe WITH xdFe
 REPLACE f4240hfe WITH xhFe
 REPLACE f4240cod WITH xcOd
 REPLACE f4240nom WITH xnOm
 REPLACE f4240dni WITH xdNi
 REPLACE f4240dir WITH xdIr
 REPLACE f4240dis WITH xdIs
 REPLACE f4240car WITH xcAr
 REPLACE f4240are WITH xaRe
 REPLACE f4240fin WITH xfIn
 REPLACE f4240fce WITH xfCe
 REPLACE f4240fna WITH xfNa
 REPLACE f4240lna WITH xlNa
 REPLACE f4240sso WITH xsSo
 REPLACE f4240spp WITH xsPp
 REPLACE f4240nac WITH xnAc
 REPLACE f4240ing WITH xiNg
 REPLACE f4240dct WITH xdCt
 REPLACE f4240apo WITH xaPo
 REPLACE f4240est WITH xeSt
 REPLACE f4240usu WITH xuSu
 REPLACE f4240dat WITH xdAt
 REPLACE f4240tim WITH xtIm
 REPLACE f4240maq WITH xmAq
ENDPROC
*
PROCEDURE Lin_4240a
 PARAMETER piNi, pfIn
 DO coLplp
 DO li1_4240a WITH piNi, pfIn
 DO li2_4240a WITH piNi, pfIn
ENDPROC
*
PROCEDURE Li1_4240a
 PARAMETER piN1, pfI1
 DO coLplp
 @ piN1, mcO0+04.1 TO pfI1, mcO0+04.1
ENDPROC
*
PROCEDURE Li2_4240a
 PARAMETER piN2, pfI2
 DO coLplp
 @ piN2, mcO0+14.5 TO pfI2, mcO0+14.5
 @ piN2, mcO0+19.4 TO pfI2, mcO0+19.4
 DO CASE
      CASE mrEs="1"
           @ piN2, mcO0+032.2 TO pfI2, mcO0+032.2
           @ piN2, mcO0+075.7 TO pfI2, mcO0+075.7
           @ piN2, mcO0+080.4 TO pfI2, mcO0+080.4
           @ piN2, mcO0+094.9 TO pfI2, mcO0+094.9
           @ piN2, mcO0+109.6 TO pfI2, mcO0+109.6
      CASE mrEs="2"
           @ piN2, mcO0+032.2 TO pfI2, mcO0+032.2
           @ piN2, mcO0+092.9 TO pfI2, mcO0+092.9
           @ piN2, mcO0+097.6 TO pfI2, mcO0+097.6
           @ piN2, mcO0+112.1 TO pfI2, mcO0+112.1
           @ piN2, mcO0+126.8 TO pfI2, mcO0+126.8
           @ piN2, mcO0+141.4 TO pfI2, mcO0+141.4
      CASE mrEs="3"
           @ piN2, mcO0+032.2 TO pfI2, mcO0+032.2
           @ piN2, mcO0+099.3 TO pfI2, mcO0+099.3
           @ piN2, mcO0+111.3 TO pfI2, mcO0+111.3
           @ piN2, mcO0+124.1 TO pfI2, mcO0+124.1
           @ piN2, mcO0+137.0 TO pfI2, mcO0+137.0
           @ piN2, mcO0+141.6 TO pfI2, mcO0+141.6
           @ piN2, mcO0+156.1 TO pfI2, mcO0+156.1
           @ piN2, mcO0+170.8 TO pfI2, mcO0+170.8
           @ piN2, mcO0+185.4 TO pfI2, mcO0+185.4
      CASE mrEs="4"
           @ piN2, mcO0+032.2 TO pfI2, mcO0+032.2
           @ piN2, mcO0+099.3 TO pfI2, mcO0+099.3
           @ piN2, mcO0+111.3 TO pfI2, mcO0+111.3
           @ piN2, mcO0+124.1 TO pfI2, mcO0+124.1
           @ piN2, mcO0+137.0 TO pfI2, mcO0+137.0
           @ piN2, mcO0+163.0 TO pfI2, mcO0+163.0
           @ piN2, mcO0+189.0 TO pfI2, mcO0+189.0
           @ piN2, mcO0+193.6 TO pfI2, mcO0+193.6
           @ piN2, mcO0+208.1 TO pfI2, mcO0+208.1
           @ piN2, mcO0+222.8 TO pfI2, mcO0+222.8
           @ piN2, mcO0+237.4 TO pfI2, mcO0+237.4
      CASE mrEs>="5"
           @ piN2, mcO0+032.1 TO pfI2, mcO0+032.1
           @ piN2, mcO0+099.3 TO pfI2, mcO0+099.3
           @ piN2, mcO0+111.3 TO pfI2, mcO0+111.3
           @ piN2, mcO0+138.5 TO pfI2, mcO0+138.5
           @ piN2, mcO0+151.3 TO pfI2, mcO0+151.3
           @ piN2, mcO0+164.1 TO pfI2, mcO0+164.1
           @ piN2, mcO0+185.1 TO pfI2, mcO0+185.1
           @ piN2, mcO0+206.1 TO pfI2, mcO0+206.1
           @ piN2, mcO0+210.7 TO pfI2, mcO0+210.7
           @ piN2, mcO0+225.3 TO pfI2, mcO0+225.3
           @ piN2, mcO0+239.9 TO pfI2, mcO0+239.9
           @ piN2, mcO0+254.5 TO pfI2, mcO0+254.5
 ENDCASE
ENDPROC
*
PROCEDURE P00_4240a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE 22.5 TO vuFi
 STORE 124 TO vuCo, vuC1
 IF mrEs>"1"
      STORE vuC1+32 TO vuC1
 ENDIF
 DO CASE
      CASE mrEs="2"
           STORE vuCo+32 TO vuCo
           STORE vuFi+8 TO vuFi
      CASE mrEs="3"
           STORE vuCo+76 TO vuCo
           STORE vuFi+18 TO vuFi
      CASE mrEs="4"
           STORE vuCo+76 TO vuCo
           STORE vuFi+08 TO vuFi
      CASE mrEs>="5"
           STORE vuCo+76 TO vuCo
           STORE vuFi+20 TO vuFi
 ENDCASE
 STORE (mwFi-vuFi)/2 TO vfI0
 STORE vfI0-0.4 TO vfI0
 STORE (mwCo-vuCo)/2 TO vcO0, icLn
 STORE icLn+vuC1 TO ucLn
 STORE INT(vfI0+10.7) TO ifFs, ufFs, vfFs
 STORE INT(vuFi)+1 TO ffFs
 DO CASE
      CASE mrEs="1"
           STORE icLn+76.2 TO vcLn
      CASE mrEs="2"
           STORE icLn+108.2 TO vcLn
      CASE mrEs>="3"
           STORE icLn+108.2 TO vcLn
 ENDCASE
 STORE vcO0+vuCo-25.5 TO vcO1
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Boletas de Pago"
      CASE wtPo="2"
           DO tiT_0000a WITH "Anulación de Boletas de Pago/Procesos especiales"
      CASE wtPo="3"
           DO tiT_0000a WITH "Eliminación de Boletas de Pago"
 ENDCASE
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
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO p01_4240a
 DO li2_4240a WITH ifIl-1.4, ifIl+0.1
 DO liN_4240a WITH ifIl-0.2, ffIl+1.1
 DO coLblz
 @iFIL-1.4,mCO0+03.9 Say "Boleta"     Font "&mLetAri",9 Style "BT"
 @iFIL-1.4,mCO0+15.3 Say "Est"        Font "&mLetAri",9 Style "BT"
 @iFIL-1.4,mCO0+20.5 Say "F.Emisión"  Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE mrEs="1"
           @iFIL-1.4,mCO0+048.6 Say "Trabajador"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+076.5 Say "Mn"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+082.8 Say "Ingresos"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+095.5 Say "Descuentos"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+110.3 Say "Aportacion."  Font "&mLetAri",9 Style "BT"
      CASE mrEs="2"
           @iFIL-1.4,mCO0+054.6 Say "Trabajador"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+093.7 Say "Mn"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+100.1 Say "Ingresos"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+112.8 Say "Descuentos"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+127.5 Say "Aportacion."  Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+142.8 Say "Neto Recib"   Font "&mLetAri",9 Style "BT"
      CASE mrEs="3"
           @iFIL-1.4,mCO0+060.6 Say "Trabajador"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+103.7 Say "DNI"          Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+112.1 Say "Fecha-Inic"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+125.5 Say "Fecha-Fin"    Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+137.7 Say "Mn"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+144.4 Say "Ingresos"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+156.7 Say "Descuentos"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+171.5 Say "Aportacion."  Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+186.5 Say "Neto Recib"   Font "&mLetAri",9 Style "BT"
      CASE mrEs="4"
           @iFIL-1.4,mCO0+057.6 Say "Trabajador"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+103.7 Say "DNI"          Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+111.9 Say "Fecha-Inic"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+125.1 Say "Fecha-Fin"    Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+146.4 Say "Cargo"        Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+173.4 Say "Area"         Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+189.7 Say "Mn"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+196.1 Say "Ingresos"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+208.7 Say "Descuentos"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+223.5 Say "Aportacion."  Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+238.6 Say "Neto Recib"   Font "&mLetAri",9 Style "BT"
      CASE mrEs>="5"
           @iFIL-1.4,mCO0+060.6 Say "Trabajador"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+103.0 Say "DNI"          Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+120.7 Say "Distrito"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+139.2 Say "Fecha-Inic"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+152.2 Say "Fecha-Fin"    Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+171.5 Say "Cargo"        Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+192.5 Say "Area"         Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+206.8 Say "Mn"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+213.1 Say "Ingresos"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+225.8 Say "Descuentos"   Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+241.0 Say "Aportacion."  Font "&mLetAri",9 Style "BT"
           @iFIL-1.4,mCO0+255.9 Say "Neto Recib"   Font "&mLetAri",9 Style "BT"
 ENDCASE
 DO coLbln
 DO geT_4240a
 READ TIMEOUT 0.01
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
PROCEDURE P01_4240a
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Trabajador:"       Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_4240a
 DO p00_4240a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(ibOl))<>0
      DO CASE
           CASE vsW1=1
                SELECT caBecera
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_4240b IN PKC4240B WITH "i"
      DO muE_4240b IN PKC4240B WITH "v", "c"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f4240ser+f4240bol=vsEr+vbOl
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
           DO veR_lock
      ENDDO
      IF cfIl=0
           DO muE_4240b IN PKC4240B WITH "v", "i"
           DO muE_4240b IN PKC4240B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_4240b IN PKC4240B WITH "i"
      DO paN_4240b IN PKC4240B
      DO muE_4240b IN PKC4240B WITH "c", "v"
      DO seE_4240b IN PKC4240B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Rs2_4240a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="1"
           @ ifIl+0.8, mcO0+21 TO ifIl+4.0, mcO0+101.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+20 TO ifIl+3.5, mcO0+100.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+21 Say "Digitar los Apellidos y/o Nombres del o los Trabajadores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      CASE mrEs="2"
           @ ifIl+0.8, mcO0+41 TO ifIl+4.0, mcO0+119.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+40 TO ifIl+3.5, mcO0+118.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+41 Say "Digitar los Apellidos y/o Nombres del o los Trabajadores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      CASE mrEs="3"
           @ ifIl+0.8, mcO0+51 TO ifIl+4.0, mcO0+129.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+50 TO ifIl+3.5, mcO0+128.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+51 Say "Digitar los Apellidos y/o Nombres del o los Trabajadores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      CASE mrEs="4"
           @ ifIl+0.8, mcO0+71 TO ifIl+4.0, mcO0+149.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+70 TO ifIl+3.5, mcO0+148.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+71 Say "Digitar los Apellidos y/o Nombres del o los Trabajadores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      CASE mrEs>="5"
           @ ifIl+0.8, mcO0+91 TO ifIl+4.0, mcO0+169.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+90 TO ifIl+3.5, mcO0+168.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+91 Say "Digitar los Apellidos y/o Nombres del o los Trabajadores en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE Clp_4240a
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
PROCEDURE Hl1_4240a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo="1"
           @ pfIl+0, 2 SAY  ;
             "Esta consulta muestra todos las Boletas de Pago en general; incluyendo"
           @ pfIl+1, 2 SAY  ;
             "las que están anuladas. Se puede imprimir el Documento."
           @ pfIl+3, 2 SAY "Esta es la parte de la Cabecera de la Consulta."
           STORE pfIl+5 TO pfIl
           @ pfIl, 2 SAY "Las teclas para movilizarse son:"
      CASE wtPo="2"
           @ pfIl+0, 1 SAY  ;
             "La anulación trabaja como la Consulta y muestra todos las Boletas de Pago"
           @ pfIl+1, 1 SAY  ;
             "en general, no incluye los que están anulados. Un Documento Anulado no"
           @ pfIl+2, 1 SAY  ;
             "se puede activar nuevamente. Esta es la Cabecera de la Consulta."
           STORE pfIl+4 TO pfIl
           @ pfIl, 01 SAY "Las teclas para movilizarse son:"
      CASE wtPo="3"
           @ pfIl+0, 1 SAY  ;
             "La Eliminación trabaja como la Consulta y muestra las Boletas de Pago Anu-"
           @ pfIl+1, 1 SAY "ladas."
           STORE pfIl+3 TO pfIl
           @ pfIl, 01 SAY "Las teclas para movilizarse son:"
 ENDCASE
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 17 SAY ":" STYLE "BT"
 @ pfIl+1, 17 SAY ":" STYLE "BT"
 @ pfIl+2, 17 SAY ":" STYLE "BT"
 @ pfIl+3, 17 SAY ":" STYLE "BT"
 @ pfIl+4, 17 SAY ":" STYLE "BT"
 @ pfIl+5, 17 SAY ":" STYLE "BT"
 @ pfIl+0, 03 SAY "ESC" STYLE "BT"
 @ pfIl+1, 03 SAY "F10" STYLE "BT"
 @ pfIl+2, 03 SAY "F1" STYLE "BT"
 @ pfIl+3, 03 SAY "F6" STYLE "BT"
 @ pfIl+4, 03 SAY "F9" STYLE "BT"
 @ pfIl+5, 03 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+6, 03 SAY "CTRL ->," STYLE "BT"
 @ pfIl+7, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 19 SAY "Regresar al Menú Principal"
 @ pfIl+1, 19 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 19 SAY "Ayuda del Programa"
 @ pfIl+3, 19 SAY "Cambio de Orden de Consulta"
 @ pfIl+4, 19 SAY "Buscar palabra o frase dentro del nombre del Trabajador"
 @ pfIl+5, 19 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+6, 19 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_4240a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre del Trabajador. Si"
 @ pfIl+01, 02 SAY  ;
   "la palabra o frase no se encuentra contenida en ninguno de los Traba-"
 @ pfIl+02, 02 SAY  ;
   "jadores, saldrá un mensaje, en caso de encontrase se regresará a la"
 @ pfIl+03, 02 SAY "Cabecera, para que escoge el orden de consulta respectivo."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
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
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, vsW1, csW1, vpAl, cpAl, vxLs, vfIl, ifIl, ufIl, ffIl,  ;
         cfIl, vfFs
 RELEASE ifFs, ufFs, ffFs, cfFs, vlIn, vfI0, vcO0, vcO1, vuFi, vuCo, vuC1,  ;
         vcLn, icLn
 RELEASE ucLn, xsEr, vsEr, isEr, usEr, csEr, xbOl, vbOl, ibOl, ubOl, cbOl,  ;
         xfEm, vfEm
 RELEASE ifEm, ufEm, cfEm, xnOm, vnOm, inOm, unOm, cnOm, xmOn, xdFe, xhFe,  ;
         xcOd, xdNi
 RELEASE xdIr, xdIs, xcAr, xaRe, xfIn, xfCe, xfNa, xlNa, xsSo, xsPp, xnAc,  ;
         xiNg, xdCt
 RELEASE xaPo, xeSt, xuSu, xdAt, xtIm, xmAq, vrEc, irEc, urEc, crEc
 RELEASE vpAn_11, vpAn_12, vpAn_99
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
 RELEASE ntM1
ENDPROC
*
