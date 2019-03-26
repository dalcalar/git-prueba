 PARAMETER wtPo
 SET CENTURY ON
 STORE 01 TO meRr
 IF wtPo<>"5"
      PUBLIC ntM1
      STORE "0000" TO ntM1
      DO taB_notas IN PUX0003A
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
      INDEX ON f3610tdo+f3610ser+f3610doc TAG f3610doc
      INDEX ON ALLTRIM(f3610ruc)+"*"+f3610tdo+f3610ser+f3610doc TAG f3610ruc
      INDEX ON ALLTRIM(f3610ele)+"*"+f3610tdo+f3610ser+f3610doc TAG f3610ele
      INDEX ON UPPER(f3610nom)+f3610tdo+f3610ser+f3610doc TAG f3610nom
      INDEX ON f3610tit+f3610tdo+f3610ser+f3610doc TAG f3610tit
      INDEX ON SUBSTR(DTOC(f3610fem), 7, 4)+SUBSTR(DTOC(f3610fem), 4, 2)+ ;
            SUBSTR(DTOC(f3610fem), 1, 2)+f3610tdo+f3610ser+f3610doc TAG  ;
            f3610fem
      CLOSE DATABASES
      CLOSE INDEXES
      RELEASE afIl, x
 ENDIF
 STORE 99 TO mkEy
 DO ab1_3610a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
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
 SEEK "90"
 IF  .NOT. EOF()
      STORE UPPER(ALLTRIM(f9991pth)) TO mpT3
 ELSE
      STORE "FACT\" TO mpT3
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Tot_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 IF wtPo<>"5"
      SELECT 6
      DO abR_0000a IN PUX0000A WITH "3510", "C"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared Alias Cab_Ing_Caja
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F3510NUM
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 7
      DO abR_0000a IN PUX0000A WITH "3511", "C"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared Alias Det_Ing_Caja
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F3511NUM
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 8
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
      SELECT 9
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
      SELECT 10
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
      SET ORDER TO F1204CDG
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 11
      DO abR_0000a IN PUX0000A WITH "1300", "V"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared Alias Cab_Fact
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F1300DOC
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 12
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
      SELECT 13
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
      SELECT 14
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
      SELECT 15
      DO abR_0000a IN PUX0000A WITH "2990", "A"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared Alias Kardex
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F2990COD
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 16
      DO abR_0000a IN PUX0000A WITH "2700", "A"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared Alias Cab_Ingr
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F2700CM1
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 17
      DO abR_0000a IN PUX0000A WITH "2701", "A"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared Alias Det_Ingr
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F2701DOC
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 18
      DO abR_0000a IN PUX0000A WITH "9110", "U"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared NoUpdate Alias Tipos
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F9110TIP
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 19
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
      SELECT 20
      DO abR_0000a IN PUX0000A WITH "9113", "U"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared NoUpdate Alias Vendedor
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F9113COD
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 21
      DO abR_0000a IN PUX0000A WITH "9114", "U"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared NoUpdate Alias Departamentos
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F9114DPT
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 22
      DO abR_0000a IN PUX0000A WITH "9115", "U"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared NoUpdate Alias Distritos
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F9115DIS
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 23
      DO abR_0000a IN PUX0000A WITH "9998", "U"
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      Use &mDBF Shared NoUpdate Alias Numeros
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F9998NUM
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SELECT 24
      STORE "TM01"+ntM1+meXt TO mdBf
      Use &mDBF Exclusive Alias Temporal
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
      SET ORDER TO F3610DOC
      IF mkEy=k_Esc
           DO deL_file1
           RETURN
      ENDIF
 ENDIF
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vpAl, cpAl, vfIl, ifIl, ufIl, cfIl, ffIl,  ;
        vfFs, ifFs
 PUBLIC ufFs, ffFs, vuFi, vuCo, vfI0, vcO0, vtB1, vtB2, vtDo, itDo, utDo,  ;
        xtDo, ctDo
 PUBLIC vsEr, isEr, usEr, xsEr, csEr, vdOc, idOc, udOc, xdOc, cdOc, vnOm,  ;
        inOm, unOm
 PUBLIC xnOm, vfEm, ifEm, ufEm, xfEm, vtIt, itIt, utIt, xtIt, xnTi, vrEc,  ;
        irEc, urEc
 PUBLIC vcLi, xcLi, vsUc, xsUc, xdIr, xdIs, xdEp, xrUc, crUc, vrUc, xdNi,  ;
        cdNi, vdNi
 PUBLIC xtEl, xvEn, xnVe, vnVe, xcOm, vmOn, xmOn, xpIg, xnEt, tnEt, xiGv,  ;
        xtOt, ttOt
 PUBLIC vcM1, xcM1, vcM2, xcM2, xfRe, xeSt, xuSu, xdAt, xtIm, xsIg, xrEl,  ;
        xtD1, xsR1
 PUBLIC xdO1, xfE1, xsRi, xnUi, xsRs, xnUs, vlIn, vfRa, vdIa, vtPo, vvEn,  ;
        vnUm, vtCa
 PUBLIC vtCv, xtCa, vsIg, vtCl, vnTc, vnTi, vpIg, icLn, ucLn, icL1, ucL1,  ;
        vdIr, vdIs
 PUBLIC vdEp, vtOt, tvAl, vcOd, vsLd, vsLc, caNo, cmEs, cdIa, ctPo, ctPp
 PUBLIC ctDo, csEr, cdOc, vsRr, vcAn, ccAn, vcAj, vsRr, vcDg
 PUBLIC vpAn_11, vpAn_12
 STORE CTOD("  /  /    ") TO ifEm, ufEm
 STORE "ND" TO itDo, utDo
 STORE msEr(06) TO isEr, usEr
 STORE SPACE(07) TO idOc, udOc
 STORE SPACE(04) TO vtIt, itIt, utIt
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 STORE 01 TO csW0, vsW1, csW1
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 IF wtPo<>"1"
      STORE 03 TO vsW0
 ELSE
      STORE 01 TO vsW0
 ENDIF
 SELECT caB_nota
 SET NEAR ON
 SEEK itDo+isEr+"ZZ"
 SET NEAR OFF
 IF EOF() .OR. f3610tdo+f3610ser<>itDo+isEr
      IF EOF()
           GOTO BOTTOM
      ELSE
           SKIP -1
      ENDIF
 ENDIF
 DO muE_3610b IN PCC3610B WITH "F", "v"
 SET READBORDER ON
 DO p00_3610a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3610a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3610a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3610a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3610a
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
                IF vsW0=4
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                     CASE vsW0=4
                          @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
                ENDCASE
           CASE mkEy=k_F9 .AND. wtPo<>"5"
                DO opC_3610a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE wtPo$"145"
                          DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                     CASE wtPo="2"
                          DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
                     CASE wtPo="3"
                          DO prEsiona WITH "4", "R_CONS12", mmF1, mmC1
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa  ;
                   .AND. wtPo<>"5"
                     DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO acC_1200w IN PVI1200W WITH "1"
                ENDIF
                DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO pcC3610b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa  ;
                   .AND. wtPo<>"5"
                     DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
                ELSE
                     DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO acC_1200w IN PVI1200W WITH "1"
                DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
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
                @iFIL-4,mCO0+16.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.2 Pict "!!"      Color ,&mColBlN
                @iFIL-4,mCO0+21.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"     Color ,&mColBlN
                @iFIL-4,mCO0+27.0 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @iFIL-4,mCO0+14.0 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
           CASE vsW0=3
                @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
           CASE vsW0=4
                @iFIL-4,mCO0+16.0 Get vTIT Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "!!!!"    Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE vsW0=1
                DO coLbln
                vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
                @iFIL-4,mCO0+27 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "9999999"
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_3610a
 DO rs2_3610a
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3610a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_3610a
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
                DO hl2_3610a
           CASE mkEy=k_F12
                DO reS_3610a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_3610a
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
                SELECT caB_nota
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3610nom)))<>0
                          DO muE_3610a
                          DO grA_3610a
                          SELECT caB_nota
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
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
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
PROCEDURE Mue_3610a
 STORE f3610tdo TO xtDo
 STORE f3610ser TO xsEr
 STORE f3610doc TO xdOc
 STORE f3610tit TO xtIt
 STORE f3610nti TO xnTi
 STORE f3610cli TO xcLi
 STORE f3610suc TO xsUc
 STORE f3610nom TO xnOm
 STORE f3610dir TO xdIr
 STORE f3610dis TO xdIs
 STORE f3610dep TO xdEp
 STORE f3610ruc TO xrUc
 STORE f3610ele TO xdNi
 STORE f3610tel TO xtEl
 STORE f3610ven TO xvEn
 STORE f3610nve TO xnVe
 STORE f3610com TO xcOm
 STORE f3610fem TO xfEm
 STORE f3610mon TO xmOn
 STORE f3610pig TO xpIg
 STORE f3610net TO xnEt
 STORE f3610igv TO xiGv
 STORE f3610tot TO xtOt
 STORE f3610rel TO xrEl
 STORE f3610td1 TO xtD1
 STORE f3610sr1 TO xsR1
 STORE f3610do1 TO xdO1
 STORE f3610fe1 TO xfE1
 STORE f3610sri TO xsRi
 STORE f3610nui TO xnUi
 STORE f3610srs TO xsRs
 STORE f3610nus TO xnUs
 STORE f3610cm1 TO xcM1
 STORE f3610cm2 TO xcM2
 STORE f3610fre TO xfRe
 STORE f3610est TO xeSt
 STORE f3610usu TO xuSu
 STORE f3610dat TO xdAt
 STORE f3610tim TO xtIm
ENDPROC
*
PROCEDURE Gra_3610a
 SELECT teMporal
 APPEND BLANK
 REPLACE f3610tdo WITH xtDo
 REPLACE f3610ser WITH xsEr
 REPLACE f3610doc WITH xdOc
 REPLACE f3610tit WITH xtIt
 REPLACE f3610nti WITH xnTi
 REPLACE f3610cli WITH xcLi
 REPLACE f3610suc WITH xsUc
 REPLACE f3610nom WITH xnOm
 REPLACE f3610dir WITH xdIr
 REPLACE f3610dis WITH xdIs
 REPLACE f3610dep WITH xdEp
 REPLACE f3610ruc WITH xrUc
 REPLACE f3610ele WITH xdNi
 REPLACE f3610tel WITH xtEl
 REPLACE f3610ven WITH xvEn
 REPLACE f3610nve WITH xnVe
 REPLACE f3610com WITH xcOm
 REPLACE f3610fem WITH xfEm
 REPLACE f3610mon WITH xmOn
 REPLACE f3610pig WITH xpIg
 REPLACE f3610net WITH xnEt
 REPLACE f3610igv WITH xiGv
 REPLACE f3610tot WITH xtOt
 REPLACE f3610rel WITH xrEl
 REPLACE f3610td1 WITH xtD1
 REPLACE f3610sr1 WITH xsR1
 REPLACE f3610do1 WITH xdO1
 REPLACE f3610fe1 WITH xfE1
 REPLACE f3610sri WITH xsRi
 REPLACE f3610nui WITH xnUi
 REPLACE f3610srs WITH xsRs
 REPLACE f3610nus WITH xnUs
 REPLACE f3610cm1 WITH xcM1
 REPLACE f3610cm2 WITH xcM2
 REPLACE f3610fre WITH xfRe
 REPLACE f3610est WITH xeSt
 REPLACE f3610usu WITH xuSu
 REPLACE f3610dat WITH xdAt
 REPLACE f3610tim WITH xtIm
ENDPROC
*
PROCEDURE Lin_3610a
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
PROCEDURE P00_3610a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 39 TO muFi
 STORE 194.2 TO muCo
 STORE 40.3 TO vuFi
 STORE 196 TO vuCo
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE ((mwFi-vuFi)/2)-1.4 TO vfI0
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl, ffIl
 STORE vfI0+17.5 TO ifFs, ufFs, vfFs
 STORE ifFs+INT(muFi-ifFs) TO ffFs
 STORE ffFs-2 TO ffFs
 STORE mcO0 TO icLn
 STORE vcO0+0.1 TO icL1
 STORE vcO0+125.8 TO ucL1
 STORE mcO0+193.9 TO ucLn
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Notas Contables"
      CASE wtPo="2"
           DO tiT_0000a WITH "Anulación/Procesos Especiales de Notas Contables"
      CASE wtPo="3"
           DO tiT_0000a WITH "Eliminación de Notas Contables"
      CASE wtPo="4"
           DO tiT_0000a WITH "Consulta/Procesos Especiales de Notas Contables"
      CASE wtPo="5"
           DO tiT_0000a WITH "Consulta On-Line de Notas Contables"
 ENDCASE
 DO coLsc1
 SAVE SCREEN TO vpAn_12
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
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
      CASE vsW0=4
           @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO liN_3610a WITH ifIl-0.2, ffIl+1
 DO coLplp
 @ ifIl-1.3, mcO0+019.6 TO ifIl-0.2, mcO0+019.6
 @ ifIl-1.3, mcO0+024.8 TO ifIl-0.2, mcO0+024.8
 @ ifIl-1.3, mcO0+051.9 TO ifIl-0.2, mcO0+051.9
 @ ifIl-1.3, mcO0+105.3 TO ifIl-0.2, mcO0+105.3
 @ ifIl-1.3, mcO0+118.9 TO ifIl-0.2, mcO0+118.9
 @ ifIl-1.3, mcO0+144.9 TO ifIl-0.2, mcO0+144.9
 @ ifIl-1.3, mcO0+174.4 TO ifIl-0.2, mcO0+174.4
 DO coLblz
 @iFIL-1.2,mCO0+000.0 Say "Número"    Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+020.8 Say "Est"       Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+025.5 Say "Cliente"   Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+053.1 Say "Dirección" Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+106.9 Say "F.Emisión" Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+123.1 Say "Facturas"  Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+150.2 Say "Vendedor"  Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+188.1 Say "Total"     Font "&mLetAri",9 Style "BT"
 Define Popup vTB1 from vFI0+10.5,mCO0+4 to fFFS+6,mCO0+165 Font "&mLetCou",12 Style "NQ" Prompt Field F1101NOM+" ["+F1101COD+"]" Scroll Color Scheme 1 Footer "CLIENTES TITULARES"
 Define Popup vTB2 from vFI0+09.5,mCO0+86 to fFFS+7,mCO0+185 Font "&mLetCou",12 Style "NQ" Prompt Field Substr(F9113NOM,1,42)+" ["+F9113COD+"]" Scroll Color Scheme 3 Footer "VENDEDORES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+16.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.2 Pict "!!"      Color ,&mColBlN
           @iFIL-4,mCO0+21.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"     Color ,&mColBlN
           @iFIL-4,mCO0+27.0 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,8   Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+14.0 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
      CASE vsW0=3
           @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
      CASE vsW0=4
           @iFIL-4,mCO0+16.0 Get vTIT Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "!!!!"    Color ,&mColBlN
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
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
 ELSE
      DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Ab1_3610a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3610", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Nota
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3610DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Notas Contables no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3611", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Nota
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3611DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3610a
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40 .AND. wtPo<>"5"
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
      CASE mfIl>=mmF1+3.857 .AND. mfIl<=mmF1+7.071 .AND. wtPo<>"5" .AND.  ;
           mcCc>=mcO0+muCo-10 .AND. mcCc<=mcO0+muCo .AND. msUn$"AB" .AND.  ;
           mfDe<>CTOD(" ") .AND. DATE()<=mfHa
           SAVE SCREEN TO vpAn_11
           DO jaL_3610a
           WAIT CLEAR
           STORE 99 TO mkEy
           RESTORE SCREEN FROM vpAn_11
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Res_3610a
 DO p00_3610a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=1
                SELECT caB_nota
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_3610b IN PCC3610A WITH "i"
      DO muE_3610b IN PCC3610A WITH "v", "c"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3610tdo+f3610ser+f3610doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3610b IN PCC3610A WITH "v", "i"
           DO muE_3610b IN PCC3610A WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3610b IN PCC3610A WITH "i"
      DO paN_3610b IN PCC3610B
      DO muE_3610b IN PCC3610A WITH "c", "v"
      DO seE_3610b IN PCC3610A WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Rs2_3610a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, mcO0+61 TO ifIl+4.0, mcO0+139.1 PATTERN 1 PEN 1
 @ ifIl+0.0, mcO0+60 TO ifIl+3.5, mcO0+138.0 PATTERN 1 PEN 3
 @iFIL+0.5,mCO0+61 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
ENDPROC
*
PROCEDURE Jal_3610a
 PRIVATE pnMr
 SELECT caB_nota
 GOTO TOP
 SET NEAR ON
 SEEK vtDo+vsEr+vdOc
 SET NEAR OFF
 SET ESCAPE ON
 STORE 0 TO pnMr
 STORE k_Enter TO mkEy
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF()
      IF f3610est="9"
           SKIP
           LOOP
      ENDIF
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+49.5 Say Str(pNMR,5,0)+" - "+F3610TDO+":"+F3610SER+"-"+F3610DOC+"  "+Dtoc(F3610FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           CASE mrEs="4"
                @iFIL+1.8,mCO0+69.5 Say Str(pNMR,5,0)+" - "+F3610TDO+":"+F3610SER+"-"+F3610DOC+"  "+Dtoc(F3610FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           OTHERWISE
                @iFIL+1.8,mCO0+89.5 Say Str(pNMR,5,0)+" - "+F3610TDO+":"+F3610SER+"-"+F3610DOC+"  "+Dtoc(F3610FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
      ENDCASE
      STORE pnMr+1 TO pnMr
      STORE k_Enter TO mkEy
      STORE f3610nom TO vnOm
      STORE f3610ruc TO vrUc
      STORE f3610dir TO vdIr
      STORE f3610dis TO vdIs
      STORE f3610dep TO vdEp
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      IF SUBSTR(f3610cm1, 1, 2)<>"FA" .AND. SUBSTR(f3610cm1, 1, 2)<>"FE"  ;
         .AND. SUBSTR(f3610cm1, 1, 2)<>"FC"
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           DO leN_0000a IN FAC0000A WITH "D"
           REPLACE f3610nom WITH vnOm
           REPLACE f3610dir WITH vdIr
           REPLACE f3610dis WITH vdIs
           REPLACE f3610dep WITH vdEp
           UNLOCK
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "Comprobando validez del RUC..."
      DO vaL_ruc IN FAC0000A WITH vrUc
      IF mkEy<>99
           WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
           DO veR_ruc IN FAC0000A WITH "2", vrUc
           IF mkEy=1733
                WAIT WINDOW NOCLEAR NOWAIT  ;
                     "RUC no registrado en BASE de SUNAT..."
                = INKEY(1)
                SELECT caB_nota
                SKIP
                LOOP
           ENDIF
           WAIT WINDOW NOCLEAR NOWAIT "Grabando..."
           SELECT caB_nota
           REPLACE f3610nom WITH vnOm
           REPLACE f3610dir WITH vdIr
           REPLACE f3610dis WITH vdIs
           REPLACE f3610dep WITH vdEp
           UNLOCK
      ENDIF
      SELECT caB_nota
      SKIP
 ENDDO
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 RELEASE pnMr
ENDPROC
*
PROCEDURE Hl1_3610a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo="1"
           @ pfIl+00, 2.000 SAY  ;
             "Esta consulta muestra todos los Notas Contables en general; incluyendo "
           @ pfIl+01, 2.000 SAY  ;
             "las que están anuladas. Se puede imprimir el Documento."
           @ pfIl+02, 2.000 SAY  ;
             "Esta es la parte de la Cabecera de la Consulta."
           @ pfIl+04, 2.000 SAY "Las teclas para movilizarse son:"
           @ pfIl+14, 1.000 SAY "ALT C" STYLE "BT"
           @ pfIl+14, 17.500 SAY ":" STYLE "BT"
           @ pfIl+14, 19.000 SAY "Cambiar a un Año almacenado"
      CASE wtPo="2"
           @ pfIl+00, 01 SAY  ;
             "La anulación trabaja como la Consulta y muestra todas las Notas Contables"
           @ pfIl+01, 01 SAY  ;
             "en general; incluyendo las que están anuladas.  Un Documento Anulado no"
           @ pfIl+02, 01 SAY  ;
             "se puede activar nuevamente. Esta es la Cabecera de la Consulta."
           @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
      CASE wtPo="3"
           @ pfIl+00, 01 SAY  ;
             "La Eliminación trabaja como la Consulta y muestra todas las Notas Conta-"
           @ pfIl+01, 01 SAY  ;
             "bles en general; sólo se puede eliminar las que están anuladas."
           @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
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
 @ pfIl+10, 19.000 SAY "Buscar palabra o frase dentro del nombre del Cliente"
 @ pfIl+11, 19.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+12, 19.000 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3610a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los Clientes, saldrá un mensaje, en caso de encontrase se regresará a"
 @ pfIl+03, 02 SAY  ;
   "la Cabecera, para que escoge el orden de consulta respectivo."
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
 RELEASE vsW0, csW0, vsW1, csW1, vpAl, cpAl, vfIl, ifIl, ufIl, cfIl, ffIl,  ;
         vfFs, ifFs
 RELEASE ufFs, ffFs, vuFi, vuCo, vfI0, vcO0, vtB1, vtB2, vtDo, itDo, utDo,  ;
         xtDo, ctDo
 RELEASE vsEr, isEr, usEr, xsEr, csEr, vdOc, idOc, udOc, xdOc, cdOc, vnOm,  ;
         inOm, unOm
 RELEASE xnOm, vfEm, ifEm, ufEm, xfEm, vtIt, itIt, utIt, xtIt, xnTi, vrEc,  ;
         irEc, urEc
 RELEASE vcLi, xcLi, vsUc, xsUc, xdIr, xdIs, xdEp, xrUc, crUc, vrUc, xdNi,  ;
         cdNi, vdNi
 RELEASE xtEl, xvEn, xnVe, vnVe, xcOm, vmOn, xmOn, xpIg, xnEt, tnEt, xiGv,  ;
         xtOt, ttOt
 RELEASE vcM1, xcM1, vcM2, xcM2, xfRe, xeSt, xuSu, xdAt, xtIm, xsIg, xrEl,  ;
         xtD1, xsR1
 RELEASE xdO1, xfE1, xsRi, xnUi, xsRs, xnUs, vlIn, vfRa, vdIa, vtPo, vvEn,  ;
         vnUm, vtCa
 RELEASE vtCv, xtCa, vsIg, vtCl, vnTc, vnTi, vpIg, icLn, ucLn, icL1, ucL1,  ;
         vdIr, vdIs
 RELEASE vdEp, vtOt, tvAl, vcOd, ctI1, ctP1, vsLd, vsLc, caNo, cmEs, cdIa,  ;
         ctPo, ctPp
 RELEASE ctDo, csEr, cdOc, vsRr, vcAn, ccAn, vcAj, vsRr, vcDg
 RELEASE vpAn_11, vpAn_12
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
