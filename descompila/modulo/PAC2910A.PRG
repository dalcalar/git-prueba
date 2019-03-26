 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO taB_orden IN PUX0002A
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
 INDEX ON f2910tdo+f2910ser+f2910doc TAG f2910doc
 INDEX ON UPPER(f2910nom)+f2910tdo+f2910ser+f2910doc TAG f2910nom
 INDEX ON SUBSTR(DTOC(f2910fem), 7, 4)+SUBSTR(DTOC(f2910fem), 4, 2)+ ;
       SUBSTR(DTOC(f2910fem), 1, 2)+f2910tdo+f2910ser+f2910doc TAG f2910fem
 INDEX ON f2910est+f2910tdo+f2910ser+f2910doc TAG f2910do1
 INDEX ON f2910est+UPPER(f2910nom)+f2910tdo+f2910ser+f2910doc TAG f2910no1
 INDEX ON f2910est+SUBSTR(DTOC(f2910fem), 7, 4)+SUBSTR(DTOC(f2910fem), 4,  ;
       2)+SUBSTR(DTOC(f2910fem), 1, 2)+f2910tdo+f2910ser+f2910doc TAG f2910fe1
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SW0"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
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
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM2cod)+"*" TAG ftM2cod
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO ab1_2910a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
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
      STORE "Archivo Maestro de Productos no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
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
 SELECT 5
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
 SELECT 6
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
 SELECT 7
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
 SELECT 8
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2910DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
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
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW9, vpAl, cpAl, vfIl,  ;
        ifIl, ufIl
 PUBLIC cfIl, ffIl, vfFs, ifFs, ufFs, ffFs, vuFi, vuCo, vfI0, vcO0, vcO1,  ;
        vtDo, itDo
 PUBLIC utDo, xtDo, ctDo, vsEr, isEr, usEr, xsEr, csEr, vdOc, idOc, udOc,  ;
        xdOc, cdOc
 PUBLIC vnOm, inOm, unOm, xnOm, cnOm, vfEm, ifEm, ufEm, xfEm, cfEm, veSt,  ;
        ieSt, ueSt
 PUBLIC xeSt, ceSt, xpRv, xsUc, xdIr, xdIs, xeMb, xfLl, xmOn, xsIg, xtCa,  ;
        xfPa, xtPo
 PUBLIC xtTt, xpRo, xpLz, xpLa, xtCo, xeNt, xpEd, xcM1, xcM2, xcM3, xcM4,  ;
        xcAn, xcM5
 PUBLIC xcM6, xvAp, xfDi, xhDi, xuSu, xdAt, xtIm, xmAq, vrEc, irEc, urEc,  ;
        ttOt, vpAg
 PUBLIC vlIn, vyEa, icLn, ucLn, icL1, ucL1, viTe, vcOd, viT1, ciTx
 PUBLIC vpAn_11, vpAn_12, vpAn_99
 STORE SUBSTR(DTOC(DATE()), 7, 4) TO vyEa
 STORE CTOD("  /  /    ") TO ifEm, ufEm
 STORE msEr(03) TO isEr, usEr
 STORE "OC" TO itDo, utDo
 STORE SPACE(07) TO idOc, udOc
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 STORE 01 TO vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW9
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 IF miMp=1
      STORE 2 TO vsW3
 ENDIF
 SELECT caBecera
 IF wtPo="3"
      GOTO TOP
      SET NEAR ON
      SEEK "1"
      SET NEAR OFF
 ELSE
      GOTO BOTTOM
 ENDIF
 STORE f2910est TO veSt
 STORE f2910tdo TO vtDo
 STORE f2910ser TO vsEr
 STORE f2910doc TO vdOc
 STORE f2910nom TO vnOm
 STORE f2910fem TO vfEm
 SET READBORDER ON
 DO p00_2910a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2910a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2910a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2910a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2910a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_c .AND. wtPo="1"
                DO coLsc3
                SAVE SCREEN TO vpAn_11
                DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @ ifIl+0.8, mcO0+69 TO ifIl+5.0, mcO0+100.1 PATTERN 1 PEN 1
                @ ifIl+0.0, mcO0+68 TO ifIl+4.5, mcO0+099.0 PATTERN 1 PEN 3
                @iFIL+1.5,mCO0+74 Say "Año:" Font "&mLetRom",12 Style "BQ"
                DO WHILE .T.
                     IF mkEy=k_Clic
                          DO clP_coo
                          DO CASE
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+59.4 .AND. mcCc<=mmC1+68
                                    STORE k_Enter TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+68 .AND. mcCc<=mmC1+77
                                    STORE k_F1 TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+77 .AND. mcCc<=mmC1+85.80
                                    STORE k_Esc TO mkEy
                                    EXIT
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+85.8 .AND. mcCc<=mmC1+95
                                    STORE k_F10 TO mkEy
                               OTHERWISE
                                    STORE 99 TO mkEy
                          ENDCASE
                     ENDIF
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_F1
                               DO hl3_2910a
                          CASE mkEy=k_Esc
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vyEa))=0
                               DO ab1_2910a
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                               STORE 1 TO vsW9
                               STORE SPACE(07) TO idOc
                               EXIT
                          CASE mkEy=k_Enter
                               IF LEN(ALLTRIM(muNi))=0
                                    STORE mpTh+"D"+vyEa+"\FA"+mcIi+ ;
                                     "2910.DBF" TO mdBf
                               ELSE
                                    STORE muNi+":"+mpTh+"D"+vyEa+"\FA"+ ;
                                     mcIi+"2910.DBF" TO mdBf
                               ENDIF
                               DO CASE
                                    Case .not.File("&mDBF") .and. vYEA <> Substr(Dtoc(Date()),7,4)
                                         STORE  ;
                                          "No hay documentos en este Año..."  ;
                                          TO mmSj
                                         DO poNmsj
                                    Case .not.File("&mDBF") .and. vYEA = Substr(Dtoc(Date()),7,4)
                                         DO ab1_2910a
                                         IF mkEy=k_Esc
                                              RETURN
                                         ENDIF
                                         STORE 1 TO vsW9
                                         STORE SPACE(07) TO idOc
                                         EXIT
                                    OTHERWISE
                                         DO ab2_2910a
                                         IF mkEy=k_Esc
                                              RETURN
                                         ENDIF
                                         STORE 2 TO vsW9
                                         STORE SPACE(07) TO idOc
                                         EXIT
                               ENDCASE
                     ENDCASE
                     DO coLbln
                     STORE k_Enter TO mkEy
                     @iFIL+1.5,mCO0+84 Get vYEA Font "&mLetRom",12 Style "NQ" Size 1,5.4 Pict "9999" Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                ENDDO
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=01
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=02
                          @iFIL-4,mCO0+0.8 Say "Proveedor:"        Font "&mLetRom",13 Style "BT"
                     CASE vsW0=03
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                ENDCASE
           CASE mkEy=k_F9
                DO opC_2910a
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
                DO paC2910b
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
           CASE vsW0=01
                STORE VAL(vdOc) TO vdOc
                @iFIL-4,mCO0+16 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9  Pict "9999999" Color ,&mColBlN
           CASE vsW0=02
                @iFIL-4,mCO0+18 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,28 Pict "@S30"    Color ,&mColBlN
           CASE vsW0=03
                @iFIL-4,mCO0+29 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE vsW0=01
                DO coLbln
                vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
                @iFIL-4,mCO0+16 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "9999999"
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_2910a
 DO rs2_2910a
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2910a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_2910a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68.00
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77.00
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.80
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95.00
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl2_2910a
           CASE mkEy=k_F12
                DO rs1_2910a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_2910a
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
                IF wtPo="3"
                     SET NEAR ON
                     SEEK "1"
                     SET NEAR OFF
                ENDIF
                DO WHILE  .NOT. EOF()
                     IF wtPo="3" .AND. f2910est>"2"
                          EXIT
                     ENDIF
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2910nom)))<>0
                          DO muE_2910a
                          DO grA_2910a
                          SELECT caBecera
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+41.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_2910a
 STORE f2910tdo TO xtDo
 STORE f2910ser TO xsEr
 STORE f2910doc TO xdOc
 STORE f2910fem TO xfEm
 STORE f2910prv TO xpRv
 STORE f2910nom TO xnOm
 STORE f2910suc TO xsUc
 STORE f2910dir TO xdIr
 STORE f2910dis TO xdIs
 STORE f2910emb TO xeMb
 STORE f2910fll TO xfLl
 STORE f2910mon TO xmOn
 STORE f2910sig TO xsIg
 STORE f2910tca TO xtCa
 STORE f2910fpa TO xfPa
 STORE f2910tpo TO xtPo
 STORE f2910ttt TO xtTt
 STORE f2910pro TO xpRo
 STORE f2910plz TO xpLz
 STORE f2910pla TO xpLa
 STORE f2910tco TO xtCo
 STORE f2910ent TO xeNt
 STORE f2910ped TO xpEd
 STORE f2910cm1 TO xcM1
 STORE f2910cm2 TO xcM2
 STORE f2910cm3 TO xcM3
 STORE f2910cm4 TO xcM4
 STORE f2910can TO xcAn
 STORE f2910cm5 TO xcM5
 STORE f2910cm6 TO xcM6
 STORE f2910vap TO xvAp
 STORE f2910fdi TO xfDi
 STORE f2910hdi TO xhDi
 STORE f2910est TO xeSt
 STORE f2910usu TO xuSu
 STORE f2910dat TO xdAt
 STORE f2910tim TO xtIm
 STORE f2910maq TO xmAq
ENDPROC
*
PROCEDURE Gra_2910a
 SELECT teMporal
 APPEND BLANK
 REPLACE f2910tdo WITH xtDo
 REPLACE f2910ser WITH xsEr
 REPLACE f2910doc WITH xdOc
 REPLACE f2910fem WITH xfEm
 REPLACE f2910prv WITH xpRv
 REPLACE f2910nom WITH xnOm
 REPLACE f2910suc WITH xsUc
 REPLACE f2910dir WITH xdIr
 REPLACE f2910dis WITH xdIs
 REPLACE f2910emb WITH xeMb
 REPLACE f2910fll WITH xfLl
 REPLACE f2910mon WITH xmOn
 REPLACE f2910sig WITH xsIg
 REPLACE f2910tca WITH xtCa
 REPLACE f2910fpa WITH xfPa
 REPLACE f2910tpo WITH xtPo
 REPLACE f2910ttt WITH xtTt
 REPLACE f2910pro WITH xpRo
 REPLACE f2910plz WITH xpLz
 REPLACE f2910pla WITH xpLa
 REPLACE f2910tco WITH xtCo
 REPLACE f2910ent WITH xeNt
 REPLACE f2910ped WITH xpEd
 REPLACE f2910cm1 WITH xcM1
 REPLACE f2910cm2 WITH xcM2
 REPLACE f2910cm3 WITH xcM3
 REPLACE f2910cm4 WITH xcM4
 REPLACE f2910can WITH xcAn
 REPLACE f2910cm5 WITH xcM5
 REPLACE f2910cm6 WITH xcM6
 REPLACE f2910vap WITH xvAp
 REPLACE f2910fdi WITH xfDi
 REPLACE f2910hdi WITH xhDi
 REPLACE f2910est WITH xeSt
 REPLACE f2910usu WITH xuSu
 REPLACE f2910dat WITH xdAt
 REPLACE f2910tim WITH xtIm
 REPLACE f2910maq WITH xmAq
ENDPROC
*
PROCEDURE Lin_2910a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
 @ piNi, mcO0+008.8 TO pfIn, mcO0+008.8
 @ piNi, mcO0+019.6 TO pfIn, mcO0+019.6
 @ piNi, mcO0+024.8 TO pfIn, mcO0+024.8
 @ piNi, mcO0+051.9 TO pfIn, mcO0+051.9
 @ piNi, mcO0+105.3 TO pfIn, mcO0+105.3
 @ piNi, mcO0+118.9 TO pfIn, mcO0+118.9
 @ piNi, mcO0+144.9 TO pfIn, mcO0+144.9
 @ piNi, mcO0+174.4 TO pfIn, mcO0+174.4
ENDPROC
*
PROCEDURE P01_2910a
 STORE vfI0+13 TO ifFs, ufFs, vfFs
 STORE ifFs+23 TO ffFs
 IF vsW4=2
      STORE ifFs-11 TO ifFs
 ENDIF
ENDPROC
*
PROCEDURE P00_2910a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 39 TO muFi
 STORE 194.2 TO muCo
 STORE 41 TO vuFi
 STORE 194 TO vuCo
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE ((mwFi-vuFi)/2)+1 TO vfI0
 STORE (mwCo-vuCo)/2 TO vcO1
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mcO0 TO icLn
 STORE vcO1+0.1 TO icL1
 DO p01_2910a
 STORE mcO0+193.9 TO ucLn
 STORE vcO1+193.9 TO ucL1
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Ordenes de Compra"
      CASE wtPo="2"
           DO tiT_0000a WITH "Anulación de Ordenes de Compra"
      CASE wtPo="3"
           DO tiT_0000a WITH "Ordenes de Compra Pendientes"
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
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=01
           @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=02
           @iFIL-4,mCO0+0.8 Say "Proveedor:"        Font "&mLetRom",13 Style "BT"
      CASE vsW0=03
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO coLplp
 DO liN_2910a WITH ifIl-0.2, ffIl+1
 @ ifIl-1.3, mcO0+019.6 TO ffIl-0.2, mcO0+019.6
 @ ifIl-1.3, mcO0+024.8 TO ffIl-0.2, mcO0+024.8
 @ ifIl-1.3, mcO0+051.9 TO ffIl-0.2, mcO0+051.9
 @ ifIl-1.3, mcO0+105.3 TO ffIl-0.2, mcO0+105.3
 @ ifIl-1.3, mcO0+118.9 TO ffIl-0.2, mcO0+118.9
 @ ifIl-1.3, mcO0+144.9 TO ffIl-0.2, mcO0+144.9
 @ ifIl-1.3, mcO0+174.4 TO ffIl-0.2, mcO0+174.4
 DO coLblz
 @iFIL-1.2,mCO0+000.0 Say "Número"          Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+020.8 Say "Est"             Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+025.5 Say "Proveedor"       Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+053.1 Say "F.Pago"          Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+106.9 Say "F.Emisión"       Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+123.1 Say "Comentario"      Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+150.2 Say "Usuario"         Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+175.4 Say "Fecha/Hora"      Font "&mLetAri",9 Style "BT"
 DO coLbln
 DO CASE
      CASE vsW0=01
           @iFIL-4,mCO0+16 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,8   Pict "9999999" Color ,&mColBlN
      CASE vsW0=02
           @iFIL-4,mCO0+18 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,28 Pict "@S30"     Color ,&mColBlN
      CASE vsW0=03
           @iFIL-4,mCO0+29 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5               Color ,&mColBlN
 ENDCASE
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
PROCEDURE Ab1_2910a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2910", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      SET ORDER TO F2910DO1
 ELSE
      SET ORDER TO F2910DOC
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Ordenes de Compra no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 IF wtPo="3"
      SET NEAR ON
      SEEK "1"
      SET NEAR OFF
      IF EOF() .OR. f2910est>"2"
           STORE "Archivo de Ordenes de Compra no puede estar vacío" TO mmSj
           STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
                 "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
           WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
           WAIT CLEAR
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2911", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Detalle
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2911DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ab2_2910a
 SELECT 1
 STORE muNi+":"+mpTh+"D"+vyEa+"\FA"+mcIi+"2910"+meXt TO mdBf
 Use &mDBF Shared Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      SET ORDER TO F2910DO1
 ELSE
      SET ORDER TO F2910DOC
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Ordenes de Compra no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 IF wtPo="3"
      SET NEAR ON
      SEEK "1"
      SET NEAR OFF
      IF EOF()
           STORE "Archivo de Ordenes de Compra no puede estar vacío" TO mmSj
           STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
                 "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
           WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
           WAIT CLEAR
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDIF
 SELECT 2
 STORE muNi+":"+mpTh+"D"+vyEa+"\FA"+mcIi+"2911"+meXt TO mdBf
 Use &mDBF Shared Alias Detalle
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2911DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2910a
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2910a
 DO p00_2910a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=01
                SELECT caBecera
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO seE_2910b IN PAC2910B WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_2910b IN PAC2910B WITH "v", "c"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF wtPo="3" .AND. f2910est>"2"
                EXIT
           ENDIF
           IF f2910tdo+f2910ser+f2910doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2910b IN PAC2910B WITH "v", "i"
           DO muE_2910b IN PAC2910B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_2910b IN PAC2910B WITH "i"
      DO paN_2910b IN PAC2910B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_2910b IN PAC2910B WITH "c", "v"
      DO seE_2910b IN PAC2910B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2910a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, mcO0+41 TO ifIl+4.0, mcO0+119.1 PATTERN 1 PEN 1
 @ ifIl+0.0, mcO0+40 TO ifIl+3.5, mcO0+118.0 PATTERN 1 PEN 3
 @iFIL+0.5,mCO0+41 Say "Digitar el Comentario o Referencia a buscar en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
ENDPROC
*
PROCEDURE Hl1_2910a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo="1"
           @ pfIl+00, 2.000 SAY  ;
             "Esta consulta muestra todas las Ordenes de Compra en general; in-"
           @ pfIl+01, 2.000 SAY  ;
             "cluyendo las que están anuladas. Se puede imprimir la Orden. Esta"
           @ pfIl+02, 2.000 SAY "es la parte de la Cabecera de la Consulta."
           @ pfIl+04, 2.000 SAY "Las teclas para movilizarse son:"
           @ pfIl+14, 1.000 SAY "ALT C" STYLE "BT"
           @ pfIl+14, 17.500 SAY ":" STYLE "BT"
           @ pfIl+14, 19.000 SAY "Cambiar a un Año almacenado"
      CASE wtPo="2"
           @ pfIl+00, 01 SAY  ;
             "La anulación trabaja como la Consulta y muestra todas las Ordenes"
           @ pfIl+01, 01 SAY  ;
             "de Compra en general; incluyendo las que están anuladas. Un documento"
           @ pfIl+02, 01 SAY  ;
             "anulado no se puede activar nuevamente. Esta es la Cabecera de la"
           @ pfIl+03, 01 SAY "Consulta."
           @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
      CASE wtPo="3"
           @ pfIl+00, 02 SAY  ;
             "Esta consulta muestra solo las Ordenes de Compra que se encuentran"
           @ pfIl+01, 02 SAY  ;
             "pendientes. Se puede imprimir la Orden. Esta es la parte de la Ca-"
           @ pfIl+02, 02 SAY "becera de la Consulta."
           @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 ENDCASE
 @ pfIl+06, 17.500 SAY ":" STYLE "BT"
 @ pfIl+07, 17.500 SAY ":" STYLE "BT"
 @ pfIl+08, 17.500 SAY ":" STYLE "BT"
 @ pfIl+09, 17.500 SAY ":" STYLE "BT"
 @ pfIl+10, 17.500 SAY ":" STYLE "BT"
 @ pfIl+11, 17.500 SAY ":" STYLE "BT"
 @ pfIl+06, 1.000 SAY "ESC" STYLE "BT"
 @ pfIl+07, 1.000 SAY "F10" STYLE "BT"
 @ pfIl+08, 1.000 SAY "F1" STYLE "BT"
 @ pfIl+09, 1.000 SAY "F6" STYLE "BT"
 @ pfIl+10, 1.000 SAY "F9" STYLE "BT"
 @ pfIl+11, 1.000 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+12, 1.000 SAY "CTRL ->," STYLE "BT"
 @ pfIl+13, 1.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+06, 19.000 SAY "Regresar al Menú Principal"
 @ pfIl+07, 19.000 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 19.000 SAY "Ayuda del Programa"
 @ pfIl+09, 19.000 SAY "Cambio de Orden de Consulta"
 @ pfIl+10, 19.000 SAY "Buscar palabra o frase dentro del nombre del Proveedor"
 @ pfIl+11, 19.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+12, 19.000 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2910a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del Nombre del Proveedor."
 @ pfIl+01, 02 SAY  ;
   "Si la palabra o frase no se encuentra contenida en ninguno de estos,"
 @ pfIl+02, 02 SAY  ;
   "saldrá un mensaje, en caso de encontrase se regresará a la Cabecera,"
 @ pfIl+03, 02 SAY "para que escoge el orden de consulta respectivo."
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
PROCEDURE Hl3_2910a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 03 SAY  ;
   "Esta opción selecciona el Año que se quiere visualizar. Esta opción"
 @ pfIl+01, 03 SAY "sólo funciona cuando hay años anteriores guardados."
 @ pfIl+03, 03 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+05, 13 SAY "ESC" STYLE "BT"
 @ pfIl+06, 13 SAY "F10" STYLE "BT"
 @ pfIl+07, 13 SAY "F1" STYLE "BT"
 @ pfIl+08, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 23 SAY "Regresar a Cabecera"
 @ pfIl+06, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 23 SAY "Ayuda del Programa"
 @ pfIl+08, 23 SAY "Aceptar y mostrar rango"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW9, vpAl, cpAl, vfIl,  ;
         ifIl, ufIl
 RELEASE cfIl, ffIl, vfFs, ifFs, ufFs, ffFs, vuFi, vuCo, vfI0, vcO0, vcO1,  ;
         vtDo, itDo
 RELEASE utDo, xtDo, ctDo, vsEr, isEr, usEr, xsEr, csEr, vdOc, idOc, udOc,  ;
         xdOc, cdOc
 RELEASE vnOm, inOm, unOm, xnOm, cnOm, vfEm, ifEm, ufEm, xfEm, cfEm, veSt,  ;
         ieSt, ueSt
 RELEASE xeSt, ceSt, xpRv, xsUc, xdIr, xdIs, xeMb, xfLl, xmOn, xsIg, xtCa,  ;
         xfPa, xtPo
 RELEASE xtTt, xpRo, xpLz, xpLa, xtCo, xeNt, xpEd, xcM1, xcM2, xcM3, xcM4,  ;
         xcAn, xcM5
 RELEASE xcM6, xvAp, xfDi, xhDi, xuSu, xdAt, xtIm, xmAq, vrEc, irEc, urEc,  ;
         ttOt, vpAg
 RELEASE vlIn, vyEa, icLn, ucLn, icL1, ucL1, viTe, vcOd, viT1, ciTx
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
 DO deL_file2 WITH "2", "S"
 RELEASE ntM1, ntM2
ENDPROC
*
