 SET CENTURY ON
 PUBLIC wsW0, ntM7
 STORE "0006" TO ntM7
 STORE 02 TO wsW0
 DO tmP_2700w IN PAI2700W
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM7SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE "TM01"+ntM7+meXt TO mdBf
 DO WHILE .T.
      ntM7 = STRTRAN(STR(VAL(ntM7)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM7+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM7="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM7ser+ftM7doc TAG ftM7doc
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_2700w IN PAI2700W
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 DO abR_2800a IN PAI2800A
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_2700w IN PAI2700W
 PUBLIC vpEd, vtIp, vnTi, vtB1, vtB2, vfB1, vfB2, vfB3, vfB4, vcB1, vcB2,  ;
        vcB3, vcB4
 PUBLIC vcL0, vcO0, vsW2, vsW3, vaNo, iaNo, uaNo, xaNo, vmEs, imEs, umEs,  ;
        xmEs, vdIa
 PUBLIC idIa, udIa, xdIa, itDo, utDo, xtDo, isEr, usEr, xsEr, idOc, udOc,  ;
        xdOc, vnOm
 PUBLIC inOm, unOm, xnOm, vtP1, vtI1, ciTe, vtD1, vsE1, vdO1, csE1, cdO1,  ;
        vcM1, icM1
 PUBLIC ucM1, ccM1, xcM1, vfBi, vcBi, ciTe, xtPp, ctP1, ctI1, vcOs, xcOs,  ;
        ctIp, vcD1
 PUBLIC vcD2, vcD3
 STORE SPACE(03) TO csEr
 STORE SPACE(04) TO vaLm
 STORE SPACE(mtMa) TO vcOd
 STORE SPACE(120) TO vdEs
 STORE SPACE(70) TO vcM1, vnAl
 STORE SPACE(07) TO cdOc, vpEd, vcD1, vcD2, vcD3
 STORE "GS" TO vtDo
 STORE 1 TO vsW3
 STORE 0 TO vsTo
 SELECT tiPos
 GOTO TOP
 STORE f9218tip TO vtIp
 STORE f9218nti TO vnTi
 STORE f9218tpo TO vtPp
 SELECT caB_sali
 GOTO BOTTOM
 STORE f2800tdo TO vtDo
 STORE f2800ser TO vsEr
 STORE f2800doc TO vdOc
 SET READBORDER ON
 DO p00_2800a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2800a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2800a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe>3
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe<3
                = INKEY(0.01)
                SELECT caB_sali
                DO orD_0000a WITH "2800", "A", "F2800DOC", "D"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Documentos registrados..." TO mmSj
                     SET FILTER TO
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                SET FILTER TO f2800est="1"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Documentos que se puedan modificar..."  ;
                           TO mmSj
                     SET FILTER TO
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SAVE SCREEN TO vpAn_11
                STORE vsEr TO csE1
                STORE vdOc TO cdO1
                STORE vcM1 TO ccM1
                DO paC2800w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT caB_sali
                SET FILTER TO
                DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_Enter
                          STORE 2 TO viTe
                     OTHERWISE
                          STORE csE1 TO vsEr
                          STORE cdO1 TO vdOc
                          STORE ccM1 TO vcM1
                          STORE 99 TO mkEy
                ENDCASE
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2800a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2800a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. viTe>2
                DO alM_2700a IN PAI2700A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. viTe>2
                DO tiP_2800a IN PAI2800A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=5
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>2
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Up .AND. viTe<3
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 01 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_2800a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=5
                               DO deT_2800a IN PAI2800A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_2800a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=5
                               DO deT_2800a IN PAI2800A
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=1
                               STORE 3 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_2800a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=3
                          STORE 1 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE 5 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2800a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 5 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2800a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99
                     DO deT_2800a IN PAI2800A
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+40 Say "SERIE DE DOCUMENTO ES DE 3 DÍGITOS..."                                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+40 Say "NÚMERO DE DOCUMENTO ES DE 7 DÍGITOS..."                                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+31 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA..."                             Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+25 Say "CAMPO DE 5 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0-1.8,mCO0+13.5 Get  vSER Font "&mLetAri",11 Style "NQ" Size 1,03.4 Pict "999"     Color ,&mColBlN
           CASE viTe=2
                @mFI0-1.8,mCO0+20.2 Get  vDOC Font "&mLetAri",11 Style "NQ" Size 1,08.0 Pict "9999999" Color ,&mColBlN
           CASE viTe=3
                @mFI0+1.0,mCO0+21.5 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE viTe=4
                @mFI0+2.5,mCO0+21.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74,70
           CASE viTe=5
                @mFI0+4.0,mCO0+21.5 Get  vPED Font "&mLetAri",9 Style "NQ" Size 1,9.7 Pict "!9999!!" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_2800a
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vsEr))=0
           STORE "El número de Serie no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. vsEr="000"
           STORE "El número de Serie no puede ser 000..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vdOc))=0
           STORE "El número de Documento no puede estar vacío..." TO mmSj
      CASE viTe=2 .AND. vdOc="0000000"
           STORE "El número de Documento no puede ser 0000000..." TO mmSj
      CASE viTe=2 .AND. (vsEr+vdOc<>csEr+cdOc .OR. LEN(ALLTRIM(cdOc))=0)
           SELECT caB_sali
           SEEK vtDo+vsEr+vdOc
           DO CASE
                CASE EOF()
                     STORE "Esta Guía no se encuentra registrada..." TO mmSj
                CASE f2800est="9"
                     STORE "Esta Guía se encuentra anulada..." TO mmSj
                CASE f2800est="2"
                     STORE "Esta Guía se encuentra Procesada...No se puede modificar..."  ;
                           TO mmSj
                CASE f2800est="4"
                     STORE "Esta Guía se encuentra Generada...No se puede modificar..."  ;
                           TO mmSj
                OTHERWISE
                     STORE vsEr TO csEr
                     STORE vdOc TO cdOc
                     DO muE_2800a
                     STORE 02 TO viTe
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          SELECT teMporal
                          ZAP
                          REINDEX
                     ENDIF
           ENDCASE
      CASE viTe=3 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_2800a
 SELECT caB_sali
 STORE f2800tdo TO vtDo
 STORE f2800ser TO vsEr
 STORE f2800doc TO vdOc
 STORE f2800fem TO vfEm
 STORE f2800tip TO vtIp
 STORE f2800nti TO vnTi
 STORE f2800cm1 TO vcM1
 STORE f2800tpp TO vtPp
 STORE f2800ped TO vpEd
 DO diS_2800a IN PAI2800A
 DO coLbln
 @mFI0-1.8,mCO0+13.5 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.8,mCO0+20.2 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
 SELECT teMporal
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT teMporal_5
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 REINDEX
 SELECT tmP_np
 ZAP
 REINDEX
 FLUSH
 SELECT deT_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
      STORE f2801cod TO vcOd
      STORE f2801can TO vcAn
      STORE f2801caj TO vcAj
      STORE f2801cos TO vcOs
      STORE f2801pie TO vpIe
      STORE 1 TO viOm
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE "Producto ["+ALLTRIM(vcOd)+"] se encuentra BORRADO..." TO mmSj
           STORE mmSj+CHR(13)+"Presionar un Tecla para continuar..." TO mmSj
           DO poNmsj
           = INKEY(0, "HM")
           WAIT CLEAR
           STORE k_Esc TO mkEy
           RETURN
      ELSE
           STORE f2111tip TO vtPo
           SELECT tiP_prod
           SEEK vtPo
           IF EOF()
                STORE 1 TO vtPo
           ELSE
                STORE f9211tpo TO vtPo
           ENDIF
           SELECT prOductos
           STORE f2111des TO vdEs
           STORE f2111dcr TO vdCr
           STORE f2111sto TO vsTo
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
           STORE f2111cuc TO vcUc
           STORE f2111nuc TO vnUc
           STORE f2111cst TO vcSt
           STORE f2111ser TO vsRr
           STORE f2111esp TO veSp
           STORE f2111la1 TO vlA1
           STORE f2111la2 TO vlA2
           STORE f2111an1 TO vaN1
           STORE f2111an2 TO vaN2
           DO CASE
                CASE vlA1=0 .AND. vaN1=0
                     STORE 2 TO vmEd
                OTHERWISE
                     STORE 1 TO vmEd
           ENDCASE
           DO grA_2700b IN PAI2700B
      ENDIF
      SELECT deT_sali
      SKIP
 ENDDO
 SELECT itE_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2802tdo+f2802ser+f2802doc=vtDo+vsEr+vdOc
      STORE f2802cod TO vcOd
      STORE f2802rcc TO vrCc
      STORE f2802opc TO voPc
      STORE f2802un1 TO vuN1
      STORE f2802un2 TO vuN2
      STORE f2802mla TO vmLa
      STORE f2802man TO vmAn
      STORE f2802p11 TO vp11
      STORE f2802p12 TO vp12
      STORE f2802p21 TO vp21
      STORE f2802p22 TO vp22
      STORE f2802ctd TO vcTd
      STORE f2802ca1 TO vcA1
      STORE f2802ca2 TO vcA2
      STORE f2802ca3 TO vcA3
      STORE f2802ca4 TO vcA4
      STORE f2802por TO vpOr
      STORE f2802mm1 TO vmM1
      STORE f2802mm2 TO vmM2
      STORE f2802mm3 TO vmM3
      STORE f2802mm4 TO vmM4
      STORE f2802cx1 TO vcX1
      STORE f2802cx2 TO vcX2
      STORE f2802cx3 TO vcX3
      STORE f2802cx4 TO vcX4
      STORE f2802cy1 TO vcY1
      STORE f2802cy2 TO vcY2
      STORE f2802cy3 TO vcY3
      STORE f2802cy4 TO vcY4
      STORE f2802pie TO vtPi
      STORE f2802cm1 TO vcMm
      STORE f2802cm2 TO vcMp
      SELECT teMporal_4
      APPEND BLANK
      REPLACE ftM4cod WITH vcOd
      REPLACE ftM4rec WITH vrCc
      REPLACE ftM4opc WITH voPc
      REPLACE ftM4un1 WITH vuN1
      REPLACE ftM4un2 WITH vuN2
      REPLACE ftM4mla WITH vmLa
      REPLACE ftM4man WITH vmAn
      REPLACE ftM4p11 WITH vp11
      REPLACE ftM4p12 WITH vp12
      REPLACE ftM4p21 WITH vp21
      REPLACE ftM4p22 WITH vp22
      REPLACE ftM4can WITH vcTd
      REPLACE ftM4ca1 WITH vcA1
      REPLACE ftM4ca2 WITH vcA2
      REPLACE ftM4ca3 WITH vcA3
      REPLACE ftM4ca4 WITH vcA4
      REPLACE ftM4por WITH vpOr
      REPLACE ftM4mm1 WITH vmM1
      REPLACE ftM4mm2 WITH vmM2
      REPLACE ftM4mm3 WITH vmM3
      REPLACE ftM4mm4 WITH vmM4
      REPLACE ftM4cx1 WITH vcX1
      REPLACE ftM4cx2 WITH vcX2
      REPLACE ftM4cx3 WITH vcX3
      REPLACE ftM4cx4 WITH vcX4
      REPLACE ftM4cy1 WITH vcY1
      REPLACE ftM4cy2 WITH vcY2
      REPLACE ftM4cy3 WITH vcY3
      REPLACE ftM4cy4 WITH vcY4
      REPLACE ftM4pie WITH vtPi
      REPLACE ftM4cm1 WITH vcMm
      REPLACE ftM4cm2 WITH vcMp
      SELECT itE_sali
      SKIP
 ENDDO
 SELECT seR_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2803tdo+f2803ser+f2803doc=vtDo+vsEr+vdOc
      STORE f2803cod TO vcOd
      STORE f2803ped TO vpD1
      STORE f2803sec TO vsEc
      STORE f2803pla TO vpLa
      STORE f2803mot TO vmOt
      SELECT teMporal_6
      APPEND BLANK
      REPLACE ftM6cod WITH vcOd
      REPLACE ftM6ped WITH vpD1
      REPLACE ftM6sec WITH vsEc
      REPLACE ftM6pla WITH vpLa
      REPLACE ftM6mot WITH vmOt
      SELECT seR_sali
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO paN_2700b IN PAI2700B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
ENDPROC
*
PROCEDURE Gra_2800a
 PRIVATE pnUm
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT caB_sali
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE SUBSTR(DTOC(f2800fem), 1, 2) TO xdIa
 STORE SUBSTR(DTOC(f2800fem), 4, 2) TO xmEs
 STORE SUBSTR(DTOC(f2800fem), 7, 4) TO xaNo
 STORE f2800tpp TO ctPp
 STORE f2800cm1 TO ccM1
 STORE f2800tip TO ctIp
 STORE "1" TO ctP1
 STORE "2" TO ctI1
 DO CASE
      CASE vtPp=2
           STORE "D" TO veSt
      OTHERWISE
           STORE "O" TO veSt
 ENDCASE
 STORE "1" TO vtP1
 STORE "2" TO vtI1
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Verificando Producto: "+ftM1cod+"..."
      STORE ftM1cod TO vcOd
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal
           SKIP
           LOOP
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT prO_tot
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           DO nuEvo_rg
           REPLACE f2118cod WITH vcOd
           REPLACE f2118sto WITH 0
           REPLACE f2118caj WITH 0
           REPLACE f2118cpe WITH 0
           REPLACE f2118cjp WITH 0
           REPLACE f2118sts WITH 0
           REPLACE f2118orp WITH 0
           REPLACE f2118vcp WITH 0
           REPLACE f2118vcs WITH 0
           REPLACE f2118prm WITH 0
           UNLOCK
           SEEK ALLTRIM(vcOd)+"*"
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 SELECT deT_sali
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
      STORE f2801cod TO vcOd
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SELECT deT_sali
                SKIP
                LOOP
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT prO_tot
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                DO nuEvo_rg
                REPLACE f2118cod WITH vcOd
                REPLACE f2118sto WITH 0
                REPLACE f2118caj WITH 0
                REPLACE f2118cpe WITH 0
                REPLACE f2118cjp WITH 0
                REPLACE f2118sts WITH 0
                REPLACE f2118orp WITH 0
                REPLACE f2118vcp WITH 0
                REPLACE f2118vcs WITH 0
                REPLACE f2118prm WITH 0
                UNLOCK
                SEEK ALLTRIM(vcOd)+"*"
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT deT_sali
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_sali
 REPLACE f2800tip WITH vtIp
 REPLACE f2800nti WITH vnTi
 REPLACE f2800tpp WITH vtPp
 REPLACE f2800fem WITH vfEm
 REPLACE f2800ped WITH vpEd
 REPLACE f2800cm1 WITH vcM1
 REPLACE f2800alm WITH vaLm
 REPLACE f2800est WITH "1"
 REPLACE f2800usu WITH muSu
 REPLACE f2800maq WITH mmAq
 REPLACE f2800dat WITH DATE()
 REPLACE f2800tim WITH TIME()
 SELECT deT_sali
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
      STORE f2801ite TO vrEc
      STORE f2801cod TO vcOd
      STORE f2801can TO vcAn
      STORE f2801caj TO vcAj
      STORE f2801cos TO vcOs
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ftM1can=vcAn .AND. ftM1caj=vcAj .AND. xaNo+ ;
          xmEs+xdIa+ctI1+ctP1+ctIp=vaNo+vmEs+vdIa+vtI1+vtP1+vtIp .AND.  ;
          UPPER(ALLTRIM(vcM1))+"*"=UPPER(ALLTRIM(ccM1))+"*"
           SELECT deT_sali
           SKIP
           LOOP
      ENDIF
      SELECT deT_sali
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT teMporal
      IF  .NOT. EOF() .AND. vcAn<>0
           STORE 1 TO pnUm
           STORE ftM1can TO vcAn
           STORE ftM1caj TO vcAj
           STORE ftM1cos TO vcOs
           SELECT deT_sali
           REPLACE f2801can WITH vcAn
           REPLACE f2801caj WITH vcAj
           REPLACE f2801cos WITH vcOs
      ELSE
           SELECT deT_sali
           STORE 0 TO pnUm
           REPLACE f2801tdo WITH SPACE(02)
           REPLACE f2801ser WITH SPACE(03)
           REPLACE f2801doc WITH SPACE(07)
           DELETE
      ENDIF
      UNLOCK
      SELECT kaRdex
      SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ ;
                   ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           DO CASE
                CASE pnUm<>0 .AND. xaNo+xmEs+xdIa+ctI1+ctP1=vaNo+vmEs+ ;
                     vdIa+vtI1+vtP1
                     REPLACE f2990can WITH vcAn
                     IF mcAj=1 .AND. vsRr=1
                          REPLACE f2990caj WITH vcAj
                     ENDIF
                     REPLACE f2990cos WITH vcOs
                     REPLACE f2990nom WITH vcM1
                     REPLACE f2990pig WITH miGv
                     REPLACE f2990ped WITH vpEd
                     REPLACE f2990ten WITH vtIp
                     STORE 2 TO pnUm
                OTHERWISE
                     REPLACE f2990cod WITH SPACE(mtMa)
                     DELETE
           ENDCASE
           UNLOCK
      ENDIF
      IF pnUm=1
           DO nuEvo_rg
           REPLACE f2990cod WITH vcOd
           REPLACE f2990ano WITH vaNo
           REPLACE f2990mes WITH vmEs
           REPLACE f2990dia WITH vdIa
           REPLACE f2990tpp WITH vtP1
           REPLACE f2990tpo WITH vtI1
           REPLACE f2990tra WITH "1"
           REPLACE f2990can WITH vcAn
           IF mcAj=1 .AND. vsRr=1
                REPLACE f2990caj WITH vcAj
           ENDIF
           REPLACE f2990cos WITH vcOs
           REPLACE f2990sld WITH 0
           REPLACE f2990slc WITH 0
           REPLACE f2990sls WITH 0
           REPLACE f2990scs WITH 0
           REPLACE f2990dct WITH 0
           REPLACE f2990gas WITH 0
           REPLACE f2990prm WITH 0
           REPLACE f2990tdo WITH vtDo
           REPLACE f2990ser WITH vsEr
           REPLACE f2990doc WITH vdOc
           REPLACE f2990sr1 WITH SPACE(03)
           REPLACE f2990rem WITH SPACE(07)
           REPLACE f2990td1 WITH SPACE(02)
           REPLACE f2990srf WITH SPACE(03)
           REPLACE f2990fac WITH SPACE(20)
           REPLACE f2990ped WITH vpEd
           REPLACE f2990sor WITH SPACE(03)
           REPLACE f2990ord WITH SPACE(07)
           REPLACE f2990emi WITH vfEm
           REPLACE f2990fem WITH vfEm
           REPLACE f2990tit WITH SPACE(04)
           REPLACE f2990cli WITH SPACE(04)
           REPLACE f2990nom WITH ALLTRIM(vcM1)
           REPLACE f2990pig WITH miGv
           REPLACE f2990mon WITH 1
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH vtIp
           UNLOCK
      ENDIF
      IF xaNo+xmEs+xdIa+ctI1+ctP1<=vaNo+vmEs+vdIa+vtI1+vtP1
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
           SET NEAR OFF
      ELSE
           SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+vtDo+vsEr+vdOc
      ENDIF
      IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
           IF EOF()
                GOTO BOTTOM
           ELSE
                SKIP -1
           ENDIF
      ENDIF
      SKIP -1
      IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE f2990sld TO vsLd
           STORE f2990slc TO vsLc
           SKIP
      ELSE
           STORE 0 TO vsLd, vsLc
           SEEK ALLTRIM(vcOd)+"*"
      ENDIF
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE f2990ano TO caNo
           STORE f2990mes TO cmEs
           STORE f2990dia TO cdIa
           STORE f2990tpo TO ctPo
           STORE f2990tpp TO ctPp
           STORE f2990tdo TO ctDo
           STORE f2990ser TO csEr
           STORE f2990doc TO cdOc
           SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ ;
                   ctPp+ctDo+csEr+cdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           DO CASE
                CASE f2990tpo="1" .AND. f2990tpp="0"
                     STORE f2990can TO vsLd
                     STORE f2990caj TO vsLc
                CASE f2990tpo="1"
                     STORE vsLd+f2990can TO vsLd
                     STORE vsLc+f2990caj TO vsLc
                CASE f2990tpo="2"
                     STORE vsLd-f2990can TO vsLd
                     STORE vsLc-f2990caj TO vsLc
           ENDCASE
           REPLACE f2990sld WITH vsLd
           REPLACE f2990slc WITH vsLc
           UNLOCK
           SKIP
      ENDDO
      DO grA_stock IN PAI2700A WITH vcOd
      SELECT deT_sali
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT itE_sali
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2802cod TO vcOd
      STORE f2802rcc TO vrCc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2802tdo WITH SPACE(02)
      REPLACE f2802ser WITH SPACE(03)
      REPLACE f2802doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_sali
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2803tdo+f2803ser+f2803doc=vtDo+vsEr+vdOc
      STORE f2803cod TO vcOd
      STORE f2803ped TO vpD1
      STORE f2803sec TO vsEc
      STORE f2803pla TO vpLa
      STORE f2803mot TO vmOt
      SELECT teMporal_6
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF() .AND. xaNo+xmEs+xdIa+ctI1+ctP1=vaNo+vmEs+vdIa+vtI1+ ;
          vtP1 .AND. ftM6pla=vpLa
           SELECT seR_sali
           SKIP
           LOOP
      ENDIF
      SELECT seR_sali
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT teMporal_6
      IF  .NOT. EOF()
           STORE 1 TO pnUm
           STORE ftM6pla TO vpLa
           STORE ftM6mot TO vmOt
           SELECT seR_sali
           REPLACE f2803pla WITH vpLa
           REPLACE f2803mot WITH vmOt
      ELSE
           SELECT seR_sali
           STORE 0 TO pnUm
           REPLACE f2803tdo WITH SPACE(02)
           REPLACE f2803ser WITH SPACE(03)
           REPLACE f2803doc WITH SPACE(07)
           DELETE
      ENDIF
      UNLOCK
      SELECT kaRdex_series
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ctI1+ctP1+ ;
           vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+ ;
                   xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2991cod WITH SPACE(mtMa)
           DELETE
           UNLOCK
      ENDIF
      IF pnUm=1
           DO nuEvo_rg
           REPLACE f2991cod WITH vcOd
           REPLACE f2991ped WITH vpD1
           REPLACE f2991sec WITH vsEc
           REPLACE f2991ano WITH vaNo
           REPLACE f2991mes WITH vmEs
           REPLACE f2991dia WITH vdIa
           REPLACE f2991tpp WITH vtP1
           REPLACE f2991tpo WITH vtI1
           REPLACE f2991tdo WITH vtDo
           REPLACE f2991ser WITH vsEr
           REPLACE f2991doc WITH vdOc
           REPLACE f2991pla WITH vpLa
           REPLACE f2991mot WITH vmOt
           REPLACE f2991est WITH veSt
           UNLOCK
      ENDIF
      DO grA_serie IN PAI2700A
      SELECT seR_sali
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      IF ftM1can=0
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOWAIT "Grabando: "+ftM1cod
      STORE ftM1cod TO vcOd
      STORE ftM1des TO vdEs
      STORE ftM1dcr TO vdCr
      STORE ftM1cuv TO vcUv
      STORE ftM1nuv TO vnUv
      STORE ftM1cuc TO vcUc
      STORE ftM1nuc TO vnUc
      STORE ftM1med TO vmEd
      STORE ftM1can TO vcAn
      STORE ftM1caj TO vcAj
      STORE ftM1cos TO vcOs
      STORE ftM1pie TO vpIe
      STORE ftM1la1 TO vlA1
      STORE ftM1an1 TO vaN1
      STORE ftM1la2 TO vlA2
      STORE ftM1an2 TO vaN2
      STORE ftM1esp TO veSp
      STORE ftM1tpo TO vtPo
      STORE vrEc+1 TO vrEc
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT deT_sali
      DO orD_0000a WITH "2801", "A", "F2801COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
      DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF EOF()
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           IF  .NOT. EOF()
                DO WHILE .T.
                     STORE vrEc+1 TO vrEc
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                     IF EOF()
                          EXIT
                     ENDIF
                     IF vrEc=10000
                          STORE "Límite de Ítems ha sobrepasado 9999..."  ;
                                TO mmSj
                          DO poNmsj
                          = INKEY(0)
                          STORE k_Esc TO mkEy
                          RETURN
                     ENDIF
                ENDDO
           ENDIF
           DO nuEvo_rg
           REPLACE f2801tdo WITH vtDo
           REPLACE f2801ser WITH vsEr
           REPLACE f2801doc WITH vdOc
           REPLACE f2801ite WITH vrEc
           REPLACE f2801cod WITH vcOd
           REPLACE f2801des WITH vdEs
           REPLACE f2801dcr WITH vdCr
           REPLACE f2801cuv WITH vcUv
           REPLACE f2801nuv WITH vnUv
           REPLACE f2801cuc WITH vcUc
           REPLACE f2801nuc WITH vnUc
           REPLACE f2801med WITH vmEd
           REPLACE f2801can WITH vcAn
           REPLACE f2801caj WITH vcAj
           REPLACE f2801cos WITH vcOs
           REPLACE f2801pie WITH vpIe
           REPLACE f2801la1 WITH vlA1
           REPLACE f2801an1 WITH vaN1
           REPLACE f2801la2 WITH vlA2
           REPLACE f2801an2 WITH vaN2
           REPLACE f2801esp WITH veSp
           REPLACE f2801tpo WITH vtPo
           UNLOCK
           SELECT kaRdex
           DO nuEvo_rg
           REPLACE f2990cod WITH vcOd
           REPLACE f2990ano WITH vaNo
           REPLACE f2990mes WITH vmEs
           REPLACE f2990dia WITH vdIa
           REPLACE f2990tpp WITH vtP1
           REPLACE f2990tpo WITH vtI1
           REPLACE f2990tra WITH "1"
           REPLACE f2990can WITH vcAn
           IF mcAj=1 .AND. vsRr=1
                REPLACE f2990caj WITH vcAj
           ENDIF
           REPLACE f2990sld WITH 0
           REPLACE f2990slc WITH 0
           REPLACE f2990sls WITH 0
           REPLACE f2990scs WITH 0
           REPLACE f2990cos WITH vcOs
           REPLACE f2990dct WITH 0
           REPLACE f2990gas WITH 0
           REPLACE f2990prm WITH 0
           REPLACE f2990tdo WITH vtDo
           REPLACE f2990ser WITH vsEr
           REPLACE f2990doc WITH vdOc
           REPLACE f2990sr1 WITH SPACE(03)
           REPLACE f2990rem WITH SPACE(07)
           REPLACE f2990td1 WITH SPACE(02)
           REPLACE f2990srf WITH SPACE(03)
           REPLACE f2990fac WITH SPACE(20)
           REPLACE f2990ped WITH vpEd
           REPLACE f2990sor WITH SPACE(03)
           REPLACE f2990ord WITH SPACE(07)
           REPLACE f2990emi WITH vfEm
           REPLACE f2990fem WITH vfEm
           REPLACE f2990tit WITH SPACE(04)
           REPLACE f2990cli WITH SPACE(04)
           REPLACE f2990nom WITH ALLTRIM(vcM1)
           REPLACE f2990pig WITH miGv
           REPLACE f2990mon WITH 1
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH vtIp
           UNLOCK
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
           ELSE
                STORE 0 TO vsLd, vsLc
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+vtDo+vsEr+vdOc
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo="1"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                REPLACE f2990slc WITH vsLc
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH vcOd
      ENDIF
      SELECT teMporal_4
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE ftM4rec TO vrCc
                STORE ftM4opc TO voPc
                STORE ftM4un1 TO vuN1
                STORE ftM4un2 TO vuN2
                STORE ftM4mla TO vmLa
                STORE ftM4man TO vmAn
                STORE ftM4p11 TO vp11
                STORE ftM4p12 TO vp12
                STORE ftM4p21 TO vp21
                STORE ftM4p22 TO vp22
                STORE ftM4can TO vcTd
                STORE ftM4ca1 TO vcA1
                STORE ftM4ca2 TO vcA2
                STORE ftM4ca3 TO vcA3
                STORE ftM4ca4 TO vcA4
                STORE ftM4por TO vpOr
                STORE ftM4mm1 TO vmM1
                STORE ftM4mm2 TO vmM2
                STORE ftM4mm3 TO vmM3
                STORE ftM4mm4 TO vmM4
                STORE ftM4cx1 TO vcX1
                STORE ftM4cx2 TO vcX2
                STORE ftM4cx3 TO vcX3
                STORE ftM4cx4 TO vcX4
                STORE ftM4cy1 TO vcY1
                STORE ftM4cy2 TO vcY2
                STORE ftM4cy3 TO vcY3
                STORE ftM4cy4 TO vcY4
                STORE ftM4pie TO vtPi
                STORE ftM4cm1 TO vcMm
                STORE ftM4cm2 TO vcMp
                SELECT itE_sali
                DO nuEvo_rg
                REPLACE f2802tdo WITH vtDo
                REPLACE f2802ser WITH vsEr
                REPLACE f2802doc WITH vdOc
                REPLACE f2802cod WITH vcOd
                REPLACE f2802rcc WITH vrCc
                REPLACE f2802opc WITH voPc
                REPLACE f2802un1 WITH vuN1
                REPLACE f2802un2 WITH vuN2
                REPLACE f2802mla WITH vmLa
                REPLACE f2802man WITH vmAn
                REPLACE f2802p11 WITH vp11
                REPLACE f2802p12 WITH vp12
                REPLACE f2802p21 WITH vp21
                REPLACE f2802p22 WITH vp22
                REPLACE f2802ctd WITH vcTd
                REPLACE f2802ca1 WITH vcA1
                REPLACE f2802ca2 WITH vcA2
                REPLACE f2802ca3 WITH vcA3
                REPLACE f2802ca4 WITH vcA4
                REPLACE f2802por WITH vpOr
                REPLACE f2802mm1 WITH vmM1
                REPLACE f2802mm2 WITH vmM2
                REPLACE f2802mm3 WITH vmM3
                REPLACE f2802mm4 WITH vmM4
                REPLACE f2802cx1 WITH vcX1
                REPLACE f2802cx2 WITH vcX2
                REPLACE f2802cx3 WITH vcX3
                REPLACE f2802cx4 WITH vcX4
                REPLACE f2802cy1 WITH vcY1
                REPLACE f2802cy2 WITH vcY2
                REPLACE f2802cy3 WITH vcY3
                REPLACE f2802cy4 WITH vcY4
                REPLACE f2802pie WITH vtPi
                REPLACE f2802cm1 WITH vcMm
                REPLACE f2802cm2 WITH vcMp
                UNLOCK
                SELECT teMporal_4
                SKIP
           ENDDO
      ENDIF
      SELECT teMporal_6
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM6cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE ftM6ped TO vpD1
           STORE ftM6sec TO vsEc
           STORE ftM6pla TO vpLa
           STORE ftM6mot TO vmOt
           SELECT seR_sali
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2803tdo WITH vtDo
                REPLACE f2803ser WITH vsEr
                REPLACE f2803doc WITH vdOc
                REPLACE f2803cod WITH vcOd
                REPLACE f2803ped WITH vpD1
                REPLACE f2803sec WITH vsEc
                REPLACE f2803pla WITH vpLa
                REPLACE f2803plo WITH vpLa
                REPLACE f2803mot WITH vmOt
                UNLOCK
                SELECT kaRdex_series
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH vpD1
                REPLACE f2991sec WITH vsEc
                REPLACE f2991ano WITH vaNo
                REPLACE f2991mes WITH vmEs
                REPLACE f2991dia WITH vdIa
                REPLACE f2991tpp WITH vtP1
                REPLACE f2991tpo WITH vtI1
                REPLACE f2991tdo WITH vtDo
                REPLACE f2991ser WITH vsEr
                REPLACE f2991doc WITH vdOc
                REPLACE f2991pla WITH vpLa
                REPLACE f2991mot WITH vmOt
                REPLACE f2991est WITH veSt
                UNLOCK
                DO grA_serie IN PAI2700A
           ENDIF
           SELECT teMporal_6
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 UNLOCK ALL
 SELECT teMporal
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT teMporal_5
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 REINDEX
 SELECT tmP_np
 ZAP
 REINDEX
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE DATE() TO vfEm
 STORE SPACE(03) TO csEr
 STORE SPACE(70) TO vcM1
 STORE SPACE(07) TO cdOc, vpEd
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm, vsW3
 STORE 00 TO frEc, urEc, crEc, cfIl
 DO diS_2800a IN PAI2800A
 DO coLbln
 @mFI0-1.8,mCO0+13.5 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.8,mCO0+20.2 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE pnUm
ENDPROC
*
PROCEDURE P00_2800a
 PARAMETER ptPo
 DO p01_2700a IN PAI2700A WITH ptPo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Define Popup vTB1 from mFI0+2.2,mCO0+61.8 to fFIL+6.5,mCO0+116.2 Font "&mLetCou",11 Style "NQ" Prompt Field F9218NTI Scroll Color Scheme 3 Footer "TIPOS DE SALIDA"
 Define Popup vTB2 from mFI0+5.2,mCO0+69.8 to fFIL+6.5,mCO0+120.2 Font "&mLetCou",11 Style "NQ" Prompt Field F9214NOM Scroll Color Scheme 3 Footer "ALMACENES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 STORE mfI0-01.9 TO vfBi
 STORE mcO0+32.0 TO vcBi
 DO tiT_0000a WITH "Modificación de Guías de Salidas de Almacén"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 IF vsW3=1
      DO p02_2800a IN PAI2800A
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.2, mcO0+37.7 PATTERN 1 COLOR SCHEME 7
 @ mfI0-2.2, mcO0-0.6 TO mfI0-2.2, mcO0+37.7 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.2, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
 DO coLbln
 @mFI0-1.8,mCO0+00.8 Say "Guía:" Font "&mLetRom",13 Style "BT"
 @mFI0-1.8,mCO0+13.5 Get vSER    Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
 @mFI0-1.8,mCO0+20.2 Get vDOC    Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999" Color ,&mColBlN
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p03_2700a IN PAI2700A
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2800a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
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
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2 .AND. viTe>2
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. viTe>2
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. viTe>2
           DO coL_beige
           STORE SPACE(02) TO vaLm
           STORE SPACE(70) TO vnAl
           @mFI0+4,mCO0+81.5 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S33"
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.956 .AND. mfIl<=mfI0-0.528 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+33.2 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.956 .AND. mfIl<=mfI0-0.528 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+94.6 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2800a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.914 .AND. mfIl<=mfI0+2.128 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+33.2 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2800a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.414 .AND. mfIl<=mfI0+3.628 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+94.6 .AND. viTe<>4
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2800a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.985 .AND. mfIl<=mfI0+5.128 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+31.8 .AND. viTe<>5
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2800a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2800a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En este programa, sólo se pueden crear Salidas de Almacén nuevas.  Los"
 @ pfIl+1, 01 SAY  ;
   "Tipos de Salida tienen que estar registrados en el Sistema previamente."
 @ pfIl+3, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+7, 19 SAY ":" STYLE "BT"
 @ pfIl+5, 01 SAY "F10" STYLE "BT"
 @ pfIl+6, 01 SAY "ESC" STYLE "BT"
 @ pfIl+7, 01 SAY "F1" STYLE "BT"
 @ pfIl+5, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 21 SAY "Ayuda del Programa"
 IF viTe=1
      @ pfIl+6, 21 SAY "Regresar al primer campo"
 ELSE
      @ pfIl+6, 21 SAY "Regresar al Menú Principal"
 ENDIF
 STORE pfIl+8 TO pfIl
 IF viTe<3
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F2" STYLE "BT"
      @ pfIl, 21 SAY "Consultar Salidas de Almacén"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>2
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F3" STYLE "BT"
      @ pfIl+1, 01 SAY "F7" STYLE "BT"
      @ pfIl+0, 21 SAY "Seleccionar Almacen"
      @ pfIl+1, 21 SAY "Seleccionar Tipo de Salida"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+2, 19 SAY ":" STYLE "BT"
 @ pfIl+3, 19 SAY ":" STYLE "BT"
 @ pfIl+4, 19 SAY ":" STYLE "BT"
 @ pfIl+5, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+7, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl+1, 01 SAY "CTRL <-" STYLE "BT"
 @ pfIl+2, 01 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+3, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl+4, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+5, 01 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+6, 01 SAY "ENTER" STYLE "BT"
 @ pfIl+7, 01 SAY "TAB" STYLE "BT"
 @ pfIl+0, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 @ pfIl+1, 21 SAY "Ir al campo izquierdo"
 @ pfIl+2, 21 SAY "Ir al Primer campo"
 @ pfIl+3, 21 SAY "Ir al Último campo"
 @ pfIl+4, 21 SAY "Ir al campo inferior, llegando al final pasa al Detalle"
 @ pfIl+5, 21 SAY "Ir al campo superior"
 @ pfIl+6, 21 SAY "Ir al siguiente campo, llegando al final pasa al Detalle"
 @ pfIl+7, 21 SAY "Pasar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1 IN PAM2800A
 DO bvA_2700w IN PAI2700W
 PUBLIC vpEd, vtIp, vnTi, vtB1, vtB2, vfB1, vfB2, vfB3, vfB4, vcB1, vcB2,  ;
        vcB3, vcB4
 PUBLIC vcL0, vcO0, vsW2, vsW3, vaNo, iaNo, uaNo, xaNo, vmEs, imEs, umEs,  ;
        xmEs, vdIa
 PUBLIC idIa, udIa, xdIa, itDo, utDo, xtDo, isEr, usEr, xsEr, idOc, udOc,  ;
        xdOc, vnOm
 PUBLIC inOm, unOm, xnOm, vtP1, vtI1, ciTe, vtD1, vsE1, vdO1, csE1, cdO1,  ;
        vcM1, icM1
 PUBLIC ucM1, ccM1, xcM1, vfBi, vcBi, ciTe, xtPp, ctP1, ctI1, vcOs, xcOs,  ;
        ctIp, vcD1
 PUBLIC vcD2, vcD3
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
 DO deL_file2 WITH "3", "S"
 DO deL_file2 WITH "4", "N"
 DO deL_file2 WITH "5", "S"
 DO deL_file2 WITH "6", "S"
 DO deL_file2 WITH "7", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7
ENDPROC
*
