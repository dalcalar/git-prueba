 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO taB_letras_cli IN PUX0003A
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
 INDEX ON f3110ser+f3110let TAG f3110let
 INDEX ON UPPER(f3110nom)+f3110ser+f3110let TAG f3110nom
 INDEX ON ALLTRIM(UPPER(f3110le1))+"*"+f3110ser+f3110let TAG f3110le1
 INDEX ON ALLTRIM(UPPER(f3110ref))+"*"+f3110ser+f3110let TAG f3110ref
 INDEX ON ALLTRIM(UPPER(f3110com))+"*"+f3110ser+f3110let TAG f3110com
 INDEX ON SUBSTR(DTOC(f3110fem), 7, 4)+SUBSTR(DTOC(f3110fem), 4, 2)+ ;
       SUBSTR(DTOC(f3110fem), 1, 2)+f3110ser+f3110let TAG f3110fem
 INDEX ON SUBSTR(DTOC(f3110fve), 7, 4)+SUBSTR(DTOC(f3110fve), 4, 2)+ ;
       SUBSTR(DTOC(f3110fve), 1, 2)+f3110ser+f3110let TAG f3110fve
 INDEX ON f3110ven+f3110ser+f3110let TAG f3110vle
 INDEX ON f3110ven+UPPER(f3110nom)+f3110ser+f3110let TAG f3110vno
 INDEX ON f3110ven+ALLTRIM(UPPER(f3110le1))+"*"+f3110ser+f3110let TAG f3110vl2
 INDEX ON f3110ven+ALLTRIM(UPPER(f3110ref))+"*"+f3110ser+f3110let TAG f3110vre
 INDEX ON f3110ven+ALLTRIM(UPPER(f3110com))+"*"+f3110ser+f3110let TAG f3110vco
 INDEX ON f3110ven+SUBSTR(DTOC(f3110fem), 7, 4)+SUBSTR(DTOC(f3110fem), 4,  ;
       2)+SUBSTR(DTOC(f3110fem), 1, 2)+f3110ser+f3110let TAG f3110vfe
 INDEX ON f3110ven+SUBSTR(DTOC(f3110fve), 7, 4)+SUBSTR(DTOC(f3110fve), 4,  ;
       2)+SUBSTR(DTOC(f3110fve), 1, 2)+f3110ser+f3110let TAG f3110vfv
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
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
 INDEX ON ftM2ser+ftM2doc TAG ftM2doc
 INDEX ON ftM2tit+ftM2ser+ftM2doc TAG ftM2tit
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Letras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 DO CASE
      CASE wtPo="4"
           SET ORDER TO F3110VLE
      OTHERWISE
           SET ORDER TO F3110LET
 ENDCASE
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Letras no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      DO deL_file1
      RETURN
 ENDIF
 IF wtPo="4"
      SEEK mvEn
      IF EOF()
           STORE "No hay Letras para este vendedor" TO mmSj
           STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
                 "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
           WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
           WAIT CLEAR
           STORE k_Esc TO mkEy
           DO deL_file1
           RETURN
      ENDIF
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3111", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Letras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3111LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
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
 SELECT 4
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
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3511DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3531DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
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
 SELECT 8
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
 SELECT 9
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
 SELECT 10
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
 SELECT 11
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
 SELECT 12
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Cargos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vpAl, cpAl, vfIl,  ;
        ifIl, ufIl
 PUBLIC cfIl, ffIl, vfRa, vlIn, vpAg, icLn, ucLn, vfI0, vcO0, vtB1, vtB2,  ;
        vfB1, vfB2
 PUBLIC vfB3, vcB1, vcB2, vcB3, vcB4, vcB5, vsEr, isEr, usEr, xsEr, csEr,  ;
        vdOc, idOc
 PUBLIC udOc, cdOc, xdOc, vnOm, inOm, unOm, cnOm, xnOm, vfEm, ifEm, ufEm,  ;
        cfEm, xfEm
 PUBLIC vfVe, ifVe, ufVe, cfVe, xfVe, vlE1, ilE1, ulE1, clE1, xlE1, vrEf,  ;
        irEf, urEf
 PUBLIC crEf, xrEf, vcOm, icOm, ucOm, ccOm, xcOm, xtIt, vtIt, xcLi, vcLi,  ;
        xsUc, vsUc
 PUBLIC xrUc, vrUc, xeLe, xdIr, xdIs, xtEl, xaVa, xaSu, xaNo, xaRu, xaEl,  ;
        xaDi, xaDs
 PUBLIC xaTl, xvEn, vvEn, xnVe, vnVe, xpCo, xdIa, xbAn, xnBa, xtIp, xrEn,  ;
        xnRe, xpIg
 PUBLIC vpIg, xmOn, vmOn, xtOt, ttOt, veSt, xeSt, xuSu, xdAt, xtIm, xmAq,  ;
        xtCl, vtCl
 PUBLIC xnTc, vnTc, cmEs, vsIg, vtCa, xnTi, vnTi, vpOp
 PUBLIC vpAn_11, vpAn_99
 STORE CTOD("  /  /    ") TO ifEm, ufEm, ifVe, ufVe
 STORE msEr(07) TO isEr, usEr
 STORE SPACE(07) TO idOc, udOc
 STORE SPACE(50) TO irEf, urEf
 STORE SPACE(15) TO ilE1, ulE1, icOm, ucOm
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 STORE 01 TO csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 Define Popup vPOP Margin Relative Color Scheme 6 Font "&mLetRom",14 Style "NQ"
 DEFINE BAR 1 OF vpOp PROMPT "Digitada"
 DEFINE BAR 2 OF vpOp PROMPT "Impresa"
 DEFINE BAR 3 OF vpOp PROMPT "Procesada"
 DEFINE BAR 4 OF vpOp PROMPT "Cancelada"
 DEFINE BAR 5 OF vpOp PROMPT "Devuelta"
 DEFINE BAR 6 OF vpOp PROMPT "Protestada"
 DEFINE BAR 7 OF vpOp PROMPT "Anulada"
 DEFINE BAR 8 OF vpOp PROMPT "Errada"
 ON SELECTION POPUP vpOp DO OP1_3110A WITH POPUP()
 IF wtPo<>"1" .AND. wtPo<>"4"
      STORE 3 TO vsW0
 ELSE
      STORE 1 TO vsW0
 ENDIF
 SELECT leTras
 SET NEAR ON
 IF wtPo="4"
      SEEK mvEn+isEr+"ZZ"
 ELSE
      SEEK isEr+"ZZ"
 ENDIF
 SET NEAR OFF
 IF EOF() .OR. (wtPo="4" .AND. f3110ven<>vvEn) .OR. f3110ser<>isEr
      DO CASE
           CASE EOF()
                GOTO BOTTOM
           OTHERWISE
                SKIP -1
      ENDCASE
 ENDIF
 DO muE_3110b IN PCC3110B WITH "F", "v"
 SET READBORDER ON
 DO p00_3110a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3110a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3110a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3110a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3110a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F6
                IF vsW0=7
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO p01_3110a
           CASE mkEy=k_F9
                DO opC_3110a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE wtPo$"14"
                          DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
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
                SET READBORDER OFF
                DO pcC3110b
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
                @mFI0-3.1,mCO0+15.0 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"     Color ,&mColBlN
                @mFI0-3.1,mCO0+21.5 Get  vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @mFI0-3.1,mCO0+14.0 Get  vNOM Font "&mLetRom",11 Style "NQ" Size 1,32  Pict "@S32"    Color ,&mColBlN
           CASE vsW0=3
                @mFI0-3.1,mCO0+29.0 Get  vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5               Color ,&mColBlN
           CASE vsW0=4
                @mFI0-3.1,mCO0+23.0 Get  vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.5               Color ,&mColBlN
           CASE vsW0=5
                @mFI0-3.1,mCO0+29.0 Edit vLE1 Font "&mLetRom",11 Style "NQ" Size 1,20,15
           CASE vsW0=6
                @mFI0-3.1,mCO0+20.0 Edit vREF Font "&mLetRom",11 Style "NQ" Size 1,27,50
           CASE vsW0=7
                @mFI0-3.1,mCO0+21.0 Edit vCOM Font "&mLetRom",11 Style "NQ" Size 1,26,15
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE vsW0=1
                DO coLbln
                vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
                @mFI0-3.1,mCO0+21.5 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "9999999"
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_3110a
 DO rs2_3110a
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3110a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_3110a
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
                DO hl2_3110a
           CASE mkEy=k_F12
                DO reS_3110a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_3110a
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
                SELECT leTras
                GOTO TOP
                IF wtPo="4"
                     SEEK mvEn
                ENDIF
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3110nom)))<>0
                          IF wtPo="4" .AND. f3110ven<>mvEn
                               EXIT
                          ENDIF
                          DO muE_3110a
                          DO grA_3110a
                          SELECT leTras
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
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+51.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="4"
                @iFIL+1.8,mCO0+71.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           OTHERWISE
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
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_3110a
 STORE f3110ser TO xsEr
 STORE f3110let TO xdOc
 STORE f3110tit TO xtIt
 STORE f3110cli TO xcLi
 STORE f3110suc TO xsUc
 STORE f3110nom TO xnOm
 STORE f3110ruc TO xrUc
 STORE f3110ele TO xeLe
 STORE f3110dir TO xdIr
 STORE f3110dis TO xdIs
 STORE f3110tel TO xtEl
 STORE f3110ava TO xaVa
 STORE f3110asu TO xaSu
 STORE f3110ano TO xaNo
 STORE f3110aru TO xaRu
 STORE f3110ael TO xaEl
 STORE f3110adi TO xaDi
 STORE f3110ads TO xaDs
 STORE f3110atl TO xaTl
 STORE f3110ven TO xvEn
 STORE f3110nve TO xnVe
 STORE f3110pco TO xpCo
 STORE f3110fem TO xfEm
 STORE f3110dia TO xdIa
 STORE f3110fve TO xfVe
 STORE f3110ban TO xbAn
 STORE f3110nba TO xnBa
 STORE f3110tip TO xtIp
 STORE f3110ren TO xrEn
 STORE f3110nre TO xnRe
 STORE f3110pig TO xpIg
 STORE f3110mon TO xmOn
 STORE f3110tot TO xtOt
 STORE f3110le1 TO xlE1
 STORE f3110ref TO xrEf
 STORE f3110com TO xcOm
 STORE f3110est TO xeSt
 STORE f3110usu TO xuSu
 STORE f3110dat TO xdAt
 STORE f3110tim TO xtIm
 STORE f3110maq TO xmAq
ENDPROC
*
PROCEDURE Gra_3110a
 SELECT teMporal
 APPEND BLANK
 REPLACE f3110ser WITH xsEr
 REPLACE f3110let WITH xdOc
 REPLACE f3110tit WITH xtIt
 REPLACE f3110cli WITH xcLi
 REPLACE f3110suc WITH xsUc
 REPLACE f3110nom WITH xnOm
 REPLACE f3110ruc WITH xrUc
 REPLACE f3110ele WITH xeLe
 REPLACE f3110dir WITH xdIr
 REPLACE f3110dis WITH xdIs
 REPLACE f3110tel WITH xtEl
 REPLACE f3110ava WITH xaVa
 REPLACE f3110asu WITH xaSu
 REPLACE f3110ano WITH xaNo
 REPLACE f3110aru WITH xaRu
 REPLACE f3110ael WITH xaEl
 REPLACE f3110adi WITH xaDi
 REPLACE f3110ads WITH xaDs
 REPLACE f3110atl WITH xaTl
 REPLACE f3110ven WITH xvEn
 REPLACE f3110nve WITH xnVe
 REPLACE f3110pco WITH xpCo
 REPLACE f3110fem WITH xfEm
 REPLACE f3110dia WITH xdIa
 REPLACE f3110fve WITH xfVe
 REPLACE f3110ban WITH xbAn
 REPLACE f3110nba WITH xnBa
 REPLACE f3110tip WITH xtIp
 REPLACE f3110ren WITH xrEn
 REPLACE f3110nre WITH xnRe
 REPLACE f3110pig WITH xpIg
 REPLACE f3110mon WITH xmOn
 REPLACE f3110tot WITH xtOt
 REPLACE f3110le1 WITH xlE1
 REPLACE f3110ref WITH xrEf
 REPLACE f3110com WITH xcOm
 REPLACE f3110est WITH xeSt
 REPLACE f3110usu WITH xuSu
 REPLACE f3110dat WITH xdAt
 REPLACE f3110tim WITH xtIm
 REPLACE f3110maq WITH xmAq
ENDPROC
*
PROCEDURE P00_3110a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 DO maRcos
 STORE mfI0+2 TO mfI0, vfI0
 STORE mfI0+0.5 TO mfI0
 STORE mcO0+0.2 TO mcO0
 STORE vfI0-3 TO vfI0
 STORE (mwCo-124.2)/2 TO vcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mcO0+0.2 TO icLn
 STORE mcO0+muCo TO ucLn
 DO CASE
      CASE mrEs="3"
           STORE vfI0+7 TO vfI0
           STORE mcO0+21 TO vcB4
           STORE mcO0+86 TO vcB5
      CASE mrEs="4"
           STORE vfI0+7 TO vfI0
           STORE mcO0+21 TO vcB4
           STORE mcO0+86 TO vcB5
      OTHERWISE
           STORE vfI0+7 TO vfI0
           STORE mcO0+21 TO vcB4
           STORE mcO0+86 TO vcB5
 ENDCASE
 STORE vfI0+20.55 TO vfB1, vfB2
 STORE vfB1+2 TO vfB3
 STORE ifIl-2 TO vfB4
 STORE vcO0+107.3 TO vcB1, vcB3
 STORE vcB1+4 TO vcB2
 Define Popup vTB1 from mFI0,vCO0 to mFI0+mUFI+2,vCO0+104 Font "&mLetCou",10 Style "NQU" Prompt Field F1101NOM+" - "+F1101COD Scroll Color Scheme 10 Footer "CONSULTA DE CLIENTES"
 Define Popup vTB2 from mFI0,vCO0 to mFI0+mUFI+2,vCO0+104 Font "&mLetCou",10 Style "NQU" Prompt Field F9113NOM Scroll Color Scheme 10 Footer "CONSULTA DE VENDEDORES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 SAVE SCREEN TO vpAn_99
 DO CASE
      CASE wtPo$"14"
           DO tiT_0000a WITH "Consulta de Letras"
      CASE wtPo="2"
           DO tiT_0000a WITH "Anulación/Procesos Especiales de Letras"
      CASE wtPo="3"
           DO tiT_0000a WITH "Eliminación de Letras"
      CASE wtPo="4"
           DO tiT_0000a WITH "Consulta de Letras x Vendedor"
 ENDCASE
 DO coLsc1
 DO cuAdro WITH ifIl-1.3, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO p01_3110a
 DO liN_3110a WITH ifIl-1.4, ffIl+1.1
 DO li1_3110a
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO coLscz
 @iFIL-1.4,mCO0+01.0 Say " # de Letra" Font "&mLetAri",9 Style "BQ" Size 1,11
 @iFIL-1.4,mCO0+15.9 Say "Est"         Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE mrEs="3"
           @iFIL-1.4,mCO0+075.3 Say "Vencimient"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+114.9 Say "Rn"          Font "&mLetAri",8 Style "NT"
           @iFIL-1.4,mCO0+118.1 Say "#r"          Font "&mLetAri",8 Style "NT"
           @iFIL-1.4,mCO0+130.0 Say "   Banco"    Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+159.0 Say "Referencia"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+187.0 Say "Monto"       Font "&mLetAri",9 Style "BQ"
      CASE mrEs="4"
           @iFIL-1.4,mCO0+075.3 Say "Vencimient"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+091.3 Say "a 8 Días"    Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+104.9 Say "Último"      Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+114.9 Say "Rn"          Font "&mLetAri",8 Style "NT"
           @iFIL-1.4,mCO0+118.1 Say "#r"          Font "&mLetAri",8 Style "NT"
           @iFIL-1.4,mCO0+133.0 Say "Banco"       Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+164.0 Say "Referencia"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+195.5 Say "Comentario"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+218.0 Say "Letra Int"   Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+239.0 Say "Monto"       Font "&mLetAri",9 Style "BQ"
      OTHERWISE
           @iFIL-1.4,mCO0+082.3 Say "Vencimient"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+097.3 Say "a 8 Días"    Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+111.1 Say "Último"      Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+121.9 Say "Rn"          Font "&mLetAri",8 Style "NT"
           @iFIL-1.4,mCO0+125.1 Say "#r"          Font "&mLetAri",8 Style "NT"
           @iFIL-1.4,mCO0+137.0 Say "Banco"       Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+176.0 Say "Referencia"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+212.5 Say "Comentario"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+235.0 Say "Letra Int"   Font "&mLetAri",9 Style "BQ"
           @iFIL-1.4,mCO0+256.0 Say "Monto"       Font "&mLetAri",9 Style "BQ"
 ENDCASE
 DO tiT_3110a
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
ENDPROC
*
PROCEDURE P01_3110a
 DO prEsiona WITH "1", "OPCION", mfI0-3.9, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 DO CASE
      CASE vsW0=1
           @mFI0-3.1,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @mFI0-3.1,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @mFI0-3.1,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
      CASE vsW0=4
           @mFI0-3.1,mCO0+0.8 Say "Vencimiento:"      Font "&mLetRom",13 Style "BT"
      CASE vsW0=5
           @mFI0-3.1,mCO0+0.8 Say "No.Letra Interna:" Font "&mLetRom",13 Style "BT"
      CASE vsW0=6
           @mFI0-3.1,mCO0+0.8 Say "Referencia:"       Font "&mLetRom",13 Style "BT"
      CASE vsW0=7
           @mFI0-3.1,mCO0+0.8 Say "Comentario:"       Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO CASE
      CASE vsW0=1
           @mFI0-3.1,mCO0+15.0 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"     Color ,&mColBlN
           @mFI0-3.1,mCO0+21.5 Get  vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @mFI0-3.1,mCO0+14.0 Get  vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
      CASE vsW0=3
           @mFI0-3.1,mCO0+29.0 Get  vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
      CASE vsW0=4
           @mFI0-3.1,mCO0+23.0 Get  vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
      CASE vsW0=5
           @mFI0-3.1,mCO0+29.0 Edit vLE1 Font "&mLetRom",11 Style "NQ" Size 1,20,15
      CASE vsW0=6
           @mFI0-3.1,mCO0+20.0 Edit vREF Font "&mLetRom",11 Style "NQ" Size 1,27,50
      CASE vsW0=7
           @mFI0-3.1,mCO0+21.0 Edit vCOM Font "&mLetRom",11 Style "NQ" Size 1,26,15
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Lin_3110a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+14.9 TO pfIn, mcO0+14.9
 @ piNi, mcO0+19.9 TO pfIn, mcO0+19.9
 DO coLsc1
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+57.0 CLEAR TO pfIn, mcO0+57.6
           @ piNi, mcO0+70.2 CLEAR TO pfIn, mcO0+70.8
           DO coLplp
           IF vsW4=1
                @ piNi, mcO0+57.2 TO pfIn, mcO0+57.2
                @ piNi, mcO0+70.4 TO pfIn, mcO0+70.4
           ENDIF
           @ piNi, mcO0+075.2 TO pfIn, mcO0+075.2
           @ piNi, mcO0+088.3 TO pfIn, mcO0+088.3
           DO coLsc1
           @ piNi, mcO0+101.4 CLEAR TO pfIn, mcO0+101.9
           DO coLplp
           IF vsW0<5 .OR. vsW0>7
                @ piNi, mcO0+101.5 TO pfIn, mcO0+101.5
           ENDIF
           @ piNi, mcO0+114.8 TO pfIn, mcO0+114.8
           @ piNi, mcO0+117.3 TO pfIn, mcO0+117.3
           @ piNi, mcO0+120.2 TO pfIn, mcO0+120.2
           @ piNi, mcO0+150.4 TO pfIn, mcO0+150.4
           @ piNi, mcO0+180.5 TO pfIn, mcO0+180.5
      CASE mrEs="4"
           @ piNi, mcO0+57.0 CLEAR TO pfIn, mcO0+57.6
           @ piNi, mcO0+70.2 CLEAR TO pfIn, mcO0+70.8
           DO coLplp
           IF vsW4=1
                @ piNi, mcO0+57.2 TO pfIn, mcO0+57.2
                @ piNi, mcO0+70.4 TO pfIn, mcO0+70.4
           ENDIF
           @ piNi, mcO0+075.2 TO pfIn, mcO0+075.2
           @ piNi, mcO0+088.3 TO pfIn, mcO0+088.3
           @ piNi, mcO0+101.5 TO pfIn, mcO0+101.5
           @ piNi, mcO0+114.8 TO pfIn, mcO0+114.8
           @ piNi, mcO0+117.3 TO pfIn, mcO0+117.3
           @ piNi, mcO0+120.2 TO pfIn, mcO0+120.2
           @ piNi, mcO0+150.4 TO pfIn, mcO0+150.4
           @ piNi, mcO0+191.5 TO pfIn, mcO0+191.5
           @ piNi, mcO0+212.7 TO pfIn, mcO0+212.7
           @ piNi, mcO0+232.5 TO pfIn, mcO0+232.5
      OTHERWISE
           @ piNi, mcO0+63.7 CLEAR TO pfIn, mcO0+64.3
           @ piNi, mcO0+76.8 CLEAR TO pfIn, mcO0+77.4
           DO coLplp
           IF vsW4=1
                @ piNi, mcO0+63.9 TO pfIn, mcO0+63.9
                @ piNi, mcO0+77.0 TO pfIn, mcO0+77.0
           ENDIF
           @ piNi, mcO0+081.9 TO pfIn, mcO0+081.9
           @ piNi, mcO0+095.1 TO pfIn, mcO0+095.1
           @ piNi, mcO0+108.3 TO pfIn, mcO0+108.3
           @ piNi, mcO0+121.5 TO pfIn, mcO0+121.5
           @ piNi, mcO0+124.1 TO pfIn, mcO0+124.1
           @ piNi, mcO0+127.0 TO pfIn, mcO0+127.0
           @ piNi, mcO0+157.1 TO pfIn, mcO0+157.1
           @ piNi, mcO0+208.4 TO pfIn, mcO0+208.4
           @ piNi, mcO0+229.7 TO pfIn, mcO0+229.7
           @ piNi, mcO0+249.6 TO pfIn, mcO0+249.6
 ENDCASE
ENDPROC
*
PROCEDURE Li1_3110a
 DO coLplp
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
ENDPROC
*
PROCEDURE Tit_3110a
 DO liN_3110a WITH ifIl-1.4, ffIl+1
 DO li1_3110a
 DO coLscz
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE vsW0=5
                     @iFIL-1.4,mCO0+091.0 Say Space(10)       Font "&mLetAri",9 Style "BQ" Size 1,04.0
                     @iFIL-1.4,mCO0+095.0 Say "Letra Interna" Font "&mLetAri",9 Style "BQ" Size 1,16.3
                CASE vsW0=6 .OR. vsW0=7
                     @iFIL-1.4,mCO0+091.0 Say Space(10)       Font "&mLetAri",9 Style "BQ" Size 1,05.0
                     @iFIL-1.4,mCO0+095.5 Say "Comentario"    Font "&mLetAri",9 Style "BQ" Size 1,15.0
                OTHERWISE
                     @iFIL-1.4,mCO0+091.3 Say "a 8 Días"      Font "&mLetAri",9 Style "BQ" Size 1,08.4
                     @iFIL-1.4,mCO0+101.9 Say Space(10)       Font "&mLetAri",9 Style "BQ" Size 1,03.0
                     @iFIL-1.4,mCO0+104.9 Say "Último"        Font "&mLetAri",9 Style "BQ" Size 1,08.0
           ENDCASE
           DO CASE
                CASE vsW4=1
                     DO CASE
                          CASE vsW2=1
                               @iFIL-1.4,mCO0+34 Say "Cliente"  Font "&mLetAri",9 Style "BQ" Size 1,17.2
                          CASE vsW2=2
                               @iFIL-1.4,mCO0+34 Say "Titular"  Font "&mLetAri",9 Style "BQ" Size 1,17.2
                     ENDCASE
                     @iFIL-1.4,mCO0+57.6 Say Space(10)        Font "&mLetAri",9 Style "BQ" Size 1,02.5
                     @iFIL-1.4,mCO0+59.6 Say "Emisión"        Font "&mLetAri",9 Style "BQ" Size 1,08.6
                     @iFIL-1.4,mCO0+71.0 Say "Día"            Font "&mLetAri",9 Style "BQ" Size 1,03.2
                CASE vsW4=2 .AND. vsW2=1
                     @iFIL-1.4,mCO0+34 Say Space(10)          Font "&mLetAri",9 Style "BQ" Size 1,10.0
                     @iFIL-1.4,mCO0+47 Say "Cliente"          Font "&mLetAri",9 Style "BQ" Size 1,23.4
                CASE vsW4=2 .AND. vsW2=2
                     @iFIL-1.4,mCO0+34 Say Space(10)          Font "&mLetAri",9 Style "BQ" Size 1,10.0
                     @iFIL-1.4,mCO0+47 Say "Titular"          Font "&mLetAri",9 Style "BQ" Size 1,23.4
           ENDCASE
      CASE mrEs="4"
           DO CASE
                CASE vsW4=1
                     DO CASE
                          CASE vsW2=1
                               @iFIL-1.4,mCO0+34 Say "Cliente"  Font "&mLetAri",9 Style "BQ" Size 1,17.2
                          CASE vsW2=2
                               @iFIL-1.4,mCO0+34 Say "Titular"  Font "&mLetAri",9 Style "BQ" Size 1,17.2
                     ENDCASE
                     @iFIL-1.4,mCO0+57.6 Say Space(10)        Font "&mLetAri",9 Style "BQ" Size 1,02.5
                     @iFIL-1.4,mCO0+59.6 Say "Emisión"        Font "&mLetAri",9 Style "BQ" Size 1,08.6
                     @iFIL-1.4,mCO0+71.0 Say "Día"            Font "&mLetAri",9 Style "BQ" Size 1,03.2
                CASE vsW4=2 .AND. vsW2=1
                     @iFIL-1.4,mCO0+34 Say Space(10)          Font "&mLetAri",9 Style "BQ" Size 1,10.0
                     @iFIL-1.4,mCO0+47 Say "Cliente"          Font "&mLetAri",9 Style "BQ" Size 1,23.4
                CASE vsW4=2 .AND. vsW2=2
                     @iFIL-1.4,mCO0+34 Say Space(10)          Font "&mLetAri",9 Style "BQ" Size 1,10.0
                     @iFIL-1.4,mCO0+47 Say "Titular"          Font "&mLetAri",9 Style "BQ" Size 1,23.4
           ENDCASE
      OTHERWISE
           DO CASE
                CASE vsW4=1
                     DO CASE
                          CASE vsW2=1
                               @iFIL-1.4,mCO0+38 Say "Cliente"  Font "&mLetAri",9 Style "BQ" Size 1,19.2
                          CASE vsW2=2
                               @iFIL-1.4,mCO0+38 Say "Titular"  Font "&mLetAri",9 Style "BQ" Size 1,19.2
                     ENDCASE
                     @iFIL-1.4,mCO0+64.6 Say Space(10)        Font "&mLetAri",9 Style "BQ" Size 1,02.5
                     @iFIL-1.4,mCO0+66.6 Say "Emisión"        Font "&mLetAri",9 Style "BQ" Size 1,08.6
                     @iFIL-1.4,mCO0+77.8 Say "Día"            Font "&mLetAri",9 Style "BQ" Size 1,03.2
                CASE vsW4=2 .AND. vsW2=1
                     @iFIL-1.4,mCO0+38 Say Space(10)          Font "&mLetAri",9 Style "BQ" Size 1,10.0
                     @iFIL-1.4,mCO0+48 Say "Cliente"          Font "&mLetAri",9 Style "BQ" Size 1,28.1
                CASE vsW4=2 .AND. vsW2=2
                     @iFIL-1.4,mCO0+38 Say Space(10)          Font "&mLetAri",9 Style "BQ" Size 1,10.0
                     @iFIL-1.4,mCO0+48 Say "Titular"          Font "&mLetAri",9 Style "BQ" Size 1,28.1
           ENDCASE
 ENDCASE
 DO prEsiona WITH "1", "ABREI", ifIl-2.2, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU5", ifIl-2.0, vcB4+2.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ABRED", ifIl-2.2, vcB4+3.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Op1_3110a
 PARAMETER ppOp
 DO CASE
      CASE vpOp=1
           STORE "1" TO veSt
           STORE "Letras Digitadas" TO vpAl
      CASE vpOp=2
           STORE "2" TO veSt
           STORE "Letras Impresas" TO vpAl
      CASE vpOp=3
           STORE "3" TO veSt
           STORE "Letras Procesadas" TO vpAl
      CASE vpOp=4
           STORE "4" TO veSt
           STORE "Letras Canceladas" TO vpAl
      CASE vpOp=5
           STORE "5" TO veSt
           STORE "Letras Devueltas" TO vpAl
      CASE vpOp=6
           STORE "6" TO veSt
           STORE "Letras Protestadas" TO vpAl
      CASE vpOp=7
           STORE "9" TO veSt
           STORE "Letras Anuladas" TO vpAl
      CASE vpOp=8
           STORE " " TO veSt
           STORE "Letras Erradas" TO vpAl
 ENDCASE
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 SELECT teMporal
 ZAP
 REINDEX
 SELECT leTras
 GOTO TOP
 IF wtPo="4"
      SEEK mvEn
 ENDIF
 DO WHILE  .NOT. EOF()
      IF f3110est=veSt
           IF wtPo="4" .AND. f3110ven<>mvEn
                EXIT
           ENDIF
           DO muE_3110a
           DO grA_3110a
           SELECT leTras
      ENDIF
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE SPACE(70) TO vpAl
      STORE "Estado no encontrado..." TO mmSj
      DO poNmsj
 ELSE
      STORE 02 TO vsW1
      EXIT
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
 DEACTIVATE POPUP vpOp
ENDPROC
*
PROCEDURE Clp_3110a
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
PROCEDURE Res_3110a
 DO p00_3110a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=1
                SELECT leTras
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_3110b IN PCC3110B WITH "i"
      DO muE_3110b IN PCC3110B WITH "v", "c"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3110ser+f3110let=vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3110b IN PCC3110B WITH "v", "i"
           DO muE_3110b IN PCC3110B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3110b IN PCC3110B WITH "i"
      DO paN_3110b IN PCC3110B
      DO muE_3110b IN PCC3110B WITH "c", "v"
      DO seE_3110b IN PCC3110B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Rs2_3110a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="3"
           @ ifIl+0.8, mcO0+51 TO ifIl+4.0, mcO0+129.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+50 TO ifIl+3.5, mcO0+128.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+51 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      CASE mrEs="4"
           @ ifIl+0.8, mcO0+71 TO ifIl+4.0, mcO0+149.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+70 TO ifIl+3.5, mcO0+148.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+71 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      OTHERWISE
           @ ifIl+0.8, mcO0+91 TO ifIl+4.0, mcO0+169.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+90 TO ifIl+3.5, mcO0+168.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+91 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3110a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo="1"
           @ 0.200, 1.500 SAY  ;
             "Esta consulta muestra todos las Letras en general; incluyendo las que es-"
           @ 1.200, 1.500 SAY  ;
             "tán anuladas. Se puede imprimir el Documento. Esta es la parte de la Cabe-"
           @ 2.200, 1.500 SAY "cera de la Consulta."
           @ 4.200, 1.500 SAY "Las teclas para movilizarse son:"
      CASE wtPo="2"
           @ 0.200, 01 SAY  ;
             "La anulación trabaja como la Consulta y muestra todas las Letras en gene-"
           @ 1.200, 01 SAY  ;
             "ral; incluyendo los que están anulados. Una Letra Anulada no se puede ac-"
           @ 2.200, 01 SAY  ;
             "tivar nuevamente. Esta es la Cabecera de la Consulta."
           @ 4.200, 01 SAY "Las teclas para movilizarse son:"
      CASE wtPo="3"
           @ 0.200, 01 SAY  ;
             "La Eliminación trabaja como la Consulta y muestra todas las Letras en ge-"
           @ 1.200, 01 SAY  ;
             "neral; sólo se puede eliminar las que están anuladas."
           @ 4.200, 01 SAY "Las teclas para movilizarse son:"
      CASE wtPo="4"
           @ 0.200, 1.500 SAY  ;
             "Esta consulta muestra todos las Letras en general; incluyendo las que es-"
           @ 1.200, 1.500 SAY  ;
             "tán anuladas. Se puede imprimir el Documento. Esta es la parte de la Cabe-"
           @ 2.200, 1.500 SAY "cera de la Consulta."
           @ 4.200, 1.500 SAY "Las teclas para movilizarse son:"
 ENDCASE
 @ 6.200, 17.500 SAY ":" STYLE "BT"
 @ 7.200, 17.500 SAY ":" STYLE "BT"
 @ 8.200, 17.500 SAY ":" STYLE "BT"
 @ 9.200, 17.500 SAY ":" STYLE "BT"
 @ 10.200, 17.500 SAY ":" STYLE "BT"
 @ 11.200, 17.500 SAY ":" STYLE "BT"
 @ 6.200, 1.000 SAY "ESC" STYLE "BT"
 @ 7.200, 1.000 SAY "F10" STYLE "BT"
 @ 8.200, 1.000 SAY "F1" STYLE "BT"
 @ 9.200, 1.000 SAY "F6" STYLE "BT"
 @ 10.200, 1.000 SAY "F9" STYLE "BT"
 @ 11.200, 1.000 SAY "ENTER, TAB," STYLE "BT"
 @ 12.200, 1.000 SAY "CTRL ->," STYLE "BT"
 @ 13.200, 1.000 SAY "FLECHA ABAJO" STYLE "BT"
 @ 6.200, 19.000 SAY "Regresar al Menú Principal"
 @ 7.200, 19.000 SAY "Cerrar y regresar a Windows"
 @ 8.200, 19.000 SAY "Ayuda del Programa"
 @ 9.200, 19.000 SAY "Cambio de Orden de Consulta"
 @ 10.200, 19.000 SAY "Buscar palabra o frase dentro del nombre del Cliente"
 @ 11.200, 19.000 SAY  ;
   "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ 12.200, 19.000 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3110a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ 1.200, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ 2.200, 02 SAY  ;
   "los Clientes, saldrá un mensaje, en caso de encontrase se regresará a"
 @ 3.200, 02 SAY  ;
   "la Cabecera, para que escoge el orden de consulta respectivo."
 @ 5.200, 02 SAY "Las teclas para movilizarse son:"
 @ 7.200, 21 SAY ":" STYLE "BT"
 @ 8.200, 21 SAY ":" STYLE "BT"
 @ 9.200, 21 SAY ":" STYLE "BT"
 @ 10.200, 21 SAY ":" STYLE "BT"
 @ 7.200, 13 SAY "ESC" STYLE "BT"
 @ 8.200, 13 SAY "F10" STYLE "BT"
 @ 9.200, 13 SAY "F1" STYLE "BT"
 @ 10.200, 13 SAY "ENTER" STYLE "BT"
 @ 7.200, 23 SAY "Regresar a Cabecera"
 @ 8.200, 23 SAY "Cerrar y regresar a Windows"
 @ 9.200, 23 SAY "Ayuda del Programa"
 @ 10.200, 23 SAY "Aceptar palabra y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vpAl, cpAl, vfIl,  ;
         ifIl, ufIl
 RELEASE cfIl, ffIl, vfRa, vlIn, vpAg, icLn, ucLn, vfI0, vcO0, vtB1, vtB2,  ;
         vfB1, vfB2
 RELEASE vfB3, vcB1, vcB2, vcB3, vcB4, vcB5, vsEr, isEr, usEr, xsEr, csEr,  ;
         vdOc, idOc
 RELEASE udOc, cdOc, xdOc, vnOm, inOm, unOm, cnOm, xnOm, vfEm, ifEm, ufEm,  ;
         cfEm, xfEm
 RELEASE vfVe, ifVe, ufVe, cfVe, xfVe, vlE1, ilE1, ulE1, clE1, xlE1, vrEf,  ;
         irEf, urEf
 RELEASE crEf, xrEf, vcOm, icOm, ucOm, ccOm, xcOm, xtIt, vtIt, xcLi, vcLi,  ;
         xsUc, vsUc
 RELEASE xrUc, vrUc, xeLe, xdIr, xdIs, xtEl, xaVa, xaSu, xaNo, xaRu, xaEl,  ;
         xaDi, xaDs
 RELEASE xaTl, xvEn, vvEn, xnVe, vnVe, xpCo, xdIa, xbAn, xnBa, xtIp, xrEn,  ;
         xnRe, xpIg
 RELEASE vpIg, xmOn, vmOn, xtOt, ttOt, veSt, xeSt, xuSu, xdAt, xtIm, xmAq,  ;
         xtCl, vtCl
 RELEASE xnTc, vnTc, cmEs, vsIg, vtCa, xnTi, vnTi, vpOp
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
 DO deL_file2 WITH "1", "S"
 DO deL_file2 WITH "2", "S"
 RELEASE ntM1, ntM2
ENDPROC
*
