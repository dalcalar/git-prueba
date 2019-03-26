 SET CENTURY ON
 PUBLIC wsW0
 STORE 01 TO wsW0
 DO tmP_2700w IN PAI2700W
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_2700w IN PAI2700W
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 DO abR_2700a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 35
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_2700w IN PAI2700W
 PUBLIC vsOr, csOr, voRd, coRd, vpEd, vcM1, vtIp, vnTi, vtB1, vtB2, vfB1,  ;
        vfB2, vfB3
 PUBLIC vfB4, vcB1, vcB2, vcB3, vcB4, vcL0, vcO0, vsW2, vsW3, vaNo, iaNo,  ;
        uaNo, xaNo
 PUBLIC vmEs, imEs, umEs, xmEs, vdIa, idIa, udIa, xdIa, vtP1, vtI1, xtDo,  ;
        itDo, utDo
 PUBLIC xsEr, isEr, usEr, xdOc, idOc, udOc, vnOm, inOm, unOm, xnOm, ccOd,  ;
        vcOs, xcOs
 STORE SPACE(mtMa) TO vcOd
 STORE SPACE(04) TO vaLm
 STORE SPACE(02) TO itDd
 STORE SPACE(120) TO vdEs
 STORE SPACE(03) TO vsOr, csOr, isRo
 STORE SPACE(70) TO vcM1, vnAl
 STORE SPACE(07) TO voRd, coRd, vpEd, idDo
 STORE "GI" TO vtDo
 STORE 1 TO vsW3
 STORE 0 TO vsTo
 SELECT tiPos
 GOTO TOP
 STORE f9217tip TO vtIp
 STORE f9217nti TO vnTi
 STORE f9217tpo TO vtPp
 SET READBORDER ON
 DO p00_2700a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2700a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2700a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>3 .AND. viTe<>4
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                SELECT caB_orden
                GOTO BOTTOM
                IF BOF() .OR. EOF()
                     STORE "No hay Ordenes de Compras registradas registrados..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SET FILTER TO f2910est<"3"
                     GOTO BOTTOM
                     IF BOF() .OR. EOF()
                          STORE "No hay Documentos registrados..." TO mmSj
                          SET FILTER TO
                          STORE 99 TO mkEy
                          DO poNmsj
                     ELSE
                          SAVE SCREEN TO vpAn_11
                          DO paC2910w WITH "2"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          RESTORE SCREEN FROM vpAn_11
                          SELECT caB_orden
                          SET FILTER TO
                          DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          IF mkEy=k_Enter .OR. mkEy=k_Tab
                               STORE f2910tdo TO xtDo
                               STORE f2910ser TO xsEr, vsOr, csOr
                               STORE f2910doc TO xdOc, voRd, coRd
                               DO orD_2400w IN PAI2400W WITH "2"
                          ENDIF
                     ENDIF
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2700a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2700a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                DO alM_2700a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F7
                DO tiP_2700a
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
           CASE mkEy=k_Ctrl_left .AND. viTe<4
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 01 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=5
                               DO deT_2700a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=5
                               DO deT_2700a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe>=3
                               STORE 5 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_2700a
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
                                    DO deT_2700a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe>=3
                          STORE 2 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE 5 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2700a
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
           CASE mkEy=k_Tab
                STORE 5 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2700a
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
                     DO deT_2700a
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
                     @mMF2,mMC2+31 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA..."                             Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+25 Say "CAMPO DE 3 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+25 Say "CAMPO DE 7 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+25 Say "CAMPO DE 5 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+1.0,mCO0+21.5 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE viTe=2
                @mFI0+2.5,mCO0+21.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74,70
           CASE viTe=3
                @mFI0+4.0,mCO0+21.5 Get  vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"     Color ,&mColBlN
           CASE viTe=4
                @mFI0+4.0,mCO0+29.0 Get  vORD Font "&mLetAri",9 Style "NQ" Size 1,9.4 Pict "9999999" Color ,&mColBlN
           CASE viTe=5
                @mFI0+4.0,mCO0+56.5 Get  vPED Font "&mLetAri",9 Style "NQ" Size 1,9.7 Pict "!9999!!" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_2700a
 DO CASE
      CASE viTe=1 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=2 .AND. (AT(CHR(10), vcM1)<>0 .OR. AT(CHR(13), vcM1)<>0)
           DO coLbln
           IF AT(CHR(10), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(10), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(10), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(10), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(10), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(10), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(10), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(10), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(10), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(13), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(13), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(13), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(13), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(13), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(13), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(13), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(13), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(13), vcM1)+1, 100) TO vcM1
           ENDIF
           @mFI0+2.5,mCO0+21.5 Say vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74 Pict "@S70"
      CASE viTe=3 .AND. LEN(ALLTRIM(vsOr))<>0 .AND. LEN(ALLTRIM(vsOr))<>3
           STORE "Serie de Orden de Compra debe estar vacío o tener 3 dígitos..."  ;
                 TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(voRd))<>0 .AND. LEN(ALLTRIM(voRd))<>7
           STORE "Serie de Orden de Compra debe estar vacío o tener 7 dígitos..."  ;
                 TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(voRd))<>0 .AND. vsOr+voRd<>csOr+coRd
           SELECT deT_orden
           DO orD_0000a WITH "2911", "A", "F2911DOC", "A"
           IF mkEy=k_Esc
                WAIT CLEAR
                RETURN
           ENDIF
           SELECT caB_orden
           SEEK "OC"+vsOr+voRd
           DO CASE
                CASE EOF()
                     STORE "Orden de Compra no registrada..." TO mmSj
                     DO coLbln
                     STORE csOr TO vsOr
                     STORE coRd TO voRd
                     @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
                     @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
                CASE f2910est="3"
                     STORE "Orden de Compra ya procesada..." TO mmSj
                     DO coLbln
                     STORE csOr TO vsOr
                     STORE coRd TO voRd
                     @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
                     @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
                CASE f2910est="9"
                     STORE "Orden de Compra anulada..." TO mmSj
                     DO coLbln
                     STORE csOr TO vsOr
                     STORE coRd TO voRd
                     @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
                     @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
                OTHERWISE
                     SELECT tmP_prod
                     ZAP
                     REINDEX
                     SELECT deT_orden
                     SEEK "OC"+vsOr+voRd
                     DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+ ;
                        f2911doc="OC"+vsOr+voRd
                          IF f2911can-f2911ctd<=0
                               SKIP
                               LOOP
                          ENDIF
                          STORE f2911cod TO vcOd
                          SELECT tmP_prod
                          SEEK ALLTRIM(vcOd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH vcOd
                          ENDIF
                          SELECT deT_orden
                          SKIP
                     ENDDO
                     SELECT tmP_prod
                     GOTO TOP
                     IF BOF()
                          STORE "Orden de Compra ya despachada..." TO mmSj
                          DO coLbln
                          STORE csOr TO vsOr
                          STORE coRd TO voRd
                          @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
                          @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
                     ELSE
                          SELECT caB_orden
                          STORE f2910tdo TO xtDo
                          STORE f2910ser TO xsEr, csOr
                          STORE f2910doc TO xdOc, coRd
                          DO orD_2400w IN PAI2400W WITH "2"
                     ENDIF
           ENDCASE
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Det_2700a
 DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO q1_0000a
 DO p2_0000a
 DO paI2700b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 SET READBORDER ON
 IF vsW3<>1
      STORE 1 TO vsW3
      IF wsW0=1
           DO p00_2700a IN PAI2700A WITH "1"
      ELSE
           DO p00_2700a IN PAM2700A WITH "1"
      ENDIF
      STORE irEc TO vrEc
      STORE ifIl TO vfIl
 ELSE
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mkEy=k_Tab
           SELECT teMporal
           SET ORDER TO FTM1COD
           IF wsW0=1
                DO grA_2700a IN PAI2700A
           ELSE
                DO grA_2700a IN PAM2700A
           ENDIF
           WAIT CLEAR
           UNLOCK ALL
           = INKEY(0.01)
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT teMporal
           SET ORDER TO
           STORE 99 TO mkEy
           STORE 01 TO viTe
      CASE wsW0=1
           STORE 01 TO viTe
      CASE wsW0=2
           STORE 03 TO viTe
 ENDCASE
 DO p1_0000a
 STORE 0 TO viT1
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Gra_Serie
 PRIVATE peSt, ptDo, ppLa
 SELECT seRies
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT kaRdex_series
 SET NEAR ON
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+"ZZ"
 SET NEAR OFF
 IF EOF() .OR. ALLTRIM(f2991cod)+"*"+ALLTRIM(f2991ped)+f2991sec<> ;
    ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF EOF()
           GOTO BOTTOM
      ELSE
           SKIP -1
      ENDIF
 ENDIF
 IF BOF() .OR. EOF() .OR. ALLTRIM(f2991cod)+"*"+ALLTRIM(f2991ped)+ ;
    f2991sec<>ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      SELECT seRies
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF()
           REPLACE f2112cod WITH SPACE(15)
           DELETE
           UNLOCK
      ENDIF
 ELSE
      STORE f2991tdo TO ptDo
      STORE f2991pla TO ppLa
      STORE f2991est TO peSt
      SELECT seRies
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF EOF()
           DO nuEvo_rg
           REPLACE f2112cod WITH vcOd
           REPLACE f2112ped WITH vpD1
           REPLACE f2112sec WITH vsEc
           REPLACE f2112pla WITH ppLa
           REPLACE f2112plo WITH ppLa
           REPLACE f2112mot WITH SPACE(15)
      ENDIF
      REPLACE f2112est WITH peSt
      IF ptDo="FA" .OR. ptDo="BO" .OR. ptDo="NP" .OR. ptDo="GS"
           REPLACE f2112pla WITH ppLa
           REPLACE f2112mot WITH vmOt
      ENDIF
      UNLOCK
 ENDIF
 RELEASE peSt, ptDo, ppLa
ENDPROC
*
PROCEDURE Gra_Stock
 PARAMETER pcOd
 PRIVATE ptDo, psEr, pdOc, pcJ1, pcJ2, pvC1, pvC2
 STORE 0 TO vcAn, vcAj
 SELECT prOductos
 SEEK ALLTRIM(pcOd)+"*"
 IF  .NOT. EOF() .AND. f2111cst=1
      IF msTp=1
           STORE f2111ser TO vsRr
           SELECT deT_ped
           GOTO TOP
           SEEK ALLTRIM(pcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1201cod)+"*"=ALLTRIM(pcOd)+"*"
                STORE f1201tdo TO ptDo
                STORE f1201ser TO psEr
                STORE f1201doc TO pdOc
                IF f1201can>f1201cad
                     STORE vcAn+(f1201can-f1201cad) TO vcAn
                     IF mcAj=1 .AND. vsRr=1
                          STORE vcAj+(VAL(ALLTRIM(f1201ref))-f1201cjd) TO vcAj
                     ENDIF
                ENDIF
                SELECT deT_ped
                SKIP
           ENDDO
           SELECT coN_ped
           SEEK ALLTRIM(pcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1204cdg)+"*"=ALLTRIM(pcOd)+"*"
                STORE f1204tdo TO ctDo
                STORE f1204ser TO csEr
                STORE f1204doc TO cdOc
                STORE f1204cod TO vcDg
                STORE f1204cun TO ccAn
                SELECT deT_ped
                SEEK ALLTRIM(vcDg)+"*"+ctDo+csEr+cdOc
                IF  .NOT. EOF() .AND. f1201can>f1201cad
                     STORE vcAn+((f1201can-f1201cad)*ccAn) TO vcAn
                ENDIF
                SELECT coN_ped
                SKIP
           ENDDO
      ENDIF
      SELECT prOductos
      STORE f2111vcs TO pvC1
      STORE f2111vcp TO pvC2
      REPLACE f2111sto WITH vsLd-vcAn
      IF mcAj=1 .AND. vsRr=1
           STORE f2111caj TO pcJ1
           REPLACE f2111caj WITH vsLc-vcAj
           STORE f2111caj TO pcJ2
      ENDIF
      SELECT prO_tot
      SEEK ALLTRIM(pcOd)+"*"
      REPLACE f2118sto WITH vsLd-vcAn
      REPLACE f2118cpe WITH vcAn
      IF mcAj=1 .AND. vsRr=1
           REPLACE f2118caj WITH vsLc-vcAj
           REPLACE f2118cjp WITH vcAj
      ENDIF
      REPLACE f2118vcs WITH pvC1
      REPLACE f2118vcp WITH pvC2
      DO toT_2111c IN PAM2111C
 ENDIF
ENDPROC
*
PROCEDURE Gra_2700a
 PRIVATE ptX1, ptX2, poPc, pnUm, pcAn, ppRe, pmOn, ptCa
 = INKEY(0.01)
 STORE "GI" TO vtDo
 STORE msEr(03) TO vsEr
 SELECT nuMeracion
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH vtDo
      REPLACE f9999ser WITH vsEr
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK vtDo+vsEr
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9999num TO vdOc
 STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
 ptX2 = "DOCUMENTO No.:"+vsEr+"-"+vdOc
 SELECT caB_ingr
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      UNLOCK ALL
      ptX1 = "Este Documento ya está Registrado"+CHR(13)+"Cambiar Numeración"
      poPc = MESSAGEBOX(ptX1, 0048, ptX2)
      STORE SPACE(07) TO vdOc
      RETURN
 ENDIF
 ptX1 = "¿Desea Grabar este Documento?"
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      RETURN
 ENDIF
 DO grAbar WITH "1"
 DO CASE
      CASE vtPp=3
           STORE "1" TO vtP1
           STORE "3" TO vtI1
           STORE "M" TO veSt
      CASE vtPp=4
           STORE "0" TO vtP1
           STORE "1" TO vtI1
           STORE "S" TO veSt
      OTHERWISE
           STORE "1" TO vtP1
           STORE "1" TO vtI1
           STORE "S" TO veSt
 ENDCASE
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
 IF LEN(ALLTRIM(voRd))<>0
      WAIT WINDOW NOWAIT "Verificando Orden de Compra..."
      SELECT caB_orden
      SEEK "OC"+vsOr+voRd
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH "OC"+vsOr+voRd
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           STORE f2910mon TO pmOn
           STORE f2910tca TO ptCa
           SELECT moNedas
           SEEK pmOn
           IF EOF()
                STORE 1 TO pmOn
           ELSE
                STORE f9226tpo TO pmOn
           ENDIF
      ENDIF
 ENDIF
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
 WAIT WINDOW NOWAIT "Grabando Numeración..."
 SELECT nuMeracion
 REPLACE f9999num WITH vdOc
 IF LEN(ALLTRIM(voRd))<>0
      WAIT WINDOW NOWAIT "Grabando Orden..."
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT teMporal
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcOd
           STORE ftM1can TO vcAn
           STORE ftM1caj TO vcAj
           STORE ftM1cos TO vcOs
           SELECT deT_orden
           SEEK ALLTRIM(vcOd)+"*"+"OC"+vsOr+voRd
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2911cod)+"*"+f2911tdo+ ;
              f2911ser+f2911doc=ALLTRIM(vcOd)+"*"+"OC"+vsOr+voRd
                IF f2911can-f2911ctd>0
                     STORE f2911ite TO vrEc
                     SEEK ALLTRIM(vcOd)+"*"+"OC"+vsOr+voRd+STR(vrEc, 4, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+"OC"+vsOr+ ;
                             voRd+STR(vrEc, 4, 0)
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO CASE
                          CASE f2911can-f2911ctd>=vcAn
                               REPLACE f2911ctd WITH f2911ctd+vcAn
                               REPLACE f2911cjd WITH f2911cjd+vcAj
                               STORE f2911pre TO ppRe
                               UNLOCK
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp-vcAn
                               DO CASE
                                    CASE pmOn=1
                                         REPLACE f2119vo2 WITH f2119vo2- ;
                                          ((vcAn*ppRe)/ptCa)
                                         REPLACE f2119vo1 WITH f2119vo1- ;
                                          (vcAn*ppRe)
                                    CASE pmOn=2
                                         REPLACE f2119vo1 WITH f2119vo1- ;
                                          ((vcAn*ppRe)*ptCa)
                                         REPLACE f2119vo2 WITH f2119vo2- ;
                                          (vcAn*ppRe)
                               ENDCASE
                               UNLOCK
                               EXIT
                          OTHERWISE
                               STORE f2911can-f2911ctd TO ccAn
                               STORE f2911caj-f2911cjd TO ccAj
                               STORE vcAn-ccAn TO vcAn
                               STORE vcAj-ccAj TO vcAj
                               REPLACE f2911ctd WITH f2911ctd+ccAn
                               REPLACE f2911cjd WITH f2911cjd+ccAj
                               STORE f2911pre TO ppRe
                               UNLOCK
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp-ccAn
                               DO CASE
                                    CASE pmOn=1
                                         REPLACE f2119vo2 WITH f2119vo2- ;
                                          ((ccAn*ppRe)/ptCa)
                                         REPLACE f2119vo1 WITH f2119vo1- ;
                                          (ccAn*ppRe)
                                    CASE pmOn=2
                                         REPLACE f2119vo1 WITH f2119vo1- ;
                                          ((ccAn*ppRe)*ptCa)
                                         REPLACE f2119vo2 WITH f2119vo2- ;
                                          (ccAn*ppRe)
                               ENDCASE
                               UNLOCK
                     ENDCASE
                ENDIF
                SELECT deT_orden
                SKIP
           ENDDO
           SELECT teMporal
           SKIP
      ENDDO
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK "OC"+vsOr+voRd
      STORE 0 TO pnUm
      DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc="OC"+vsOr+voRd
           IF f2911can-f2911ctd>0
                STORE 1 TO pnUm
           ENDIF
           SKIP
      ENDDO
      SELECT caB_orden
      SEEK "OC"+vsOr+voRd
      IF  .NOT. EOF()
           IF pnUm=0
                REPLACE f2910est WITH "3"
           ELSE
                REPLACE f2910est WITH "2"
           ENDIF
           UNLOCK
      ENDIF
 ENDIF
 SELECT deT_orden
 SUM f2911can-f2911ctd TO pcAn FOR f2911can-f2911ctd>0
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_ingr
 DO nuEvo_rg
 REPLACE f2700tdo WITH vtDo
 REPLACE f2700ser WITH vsEr
 REPLACE f2700doc WITH vdOc
 REPLACE f2700tip WITH vtIp
 REPLACE f2700nti WITH vnTi
 REPLACE f2700tpp WITH vtPp
 REPLACE f2700fem WITH vfEm
 REPLACE f2700sor WITH vsOr
 REPLACE f2700ord WITH voRd
 REPLACE f2700ped WITH vpEd
 REPLACE f2700cm1 WITH vcM1
 REPLACE f2700alm WITH vaLm
 REPLACE f2700est WITH "1"
 REPLACE f2700usu WITH muSu
 REPLACE f2700maq WITH mmAq
 REPLACE f2700dat WITH DATE()
 REPLACE f2700tim WITH TIME()
 UNLOCK
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      IF ftM1can=0 .AND. vtPp<>4
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
      SELECT deT_ingr
      DO orD_0000a WITH "2701", "A", "F2701COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
      DO orD_0000a WITH "2701", "A", "F2701DOC", "A"
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
           REPLACE f2701tdo WITH vtDo
           REPLACE f2701ser WITH vsEr
           REPLACE f2701doc WITH vdOc
           REPLACE f2701ite WITH vrEc
           REPLACE f2701cod WITH vcOd
           REPLACE f2701des WITH vdEs
           REPLACE f2701dcr WITH vdCr
           REPLACE f2701cuv WITH vcUv
           REPLACE f2701nuv WITH vnUv
           REPLACE f2701cuc WITH vcUc
           REPLACE f2701nuc WITH vnUc
           REPLACE f2701med WITH vmEd
           REPLACE f2701can WITH vcAn
           REPLACE f2701caj WITH vcAj
           REPLACE f2701cos WITH vcOs
           REPLACE f2701pie WITH vpIe
           REPLACE f2701la1 WITH vlA1
           REPLACE f2701an1 WITH vaN1
           REPLACE f2701la2 WITH vlA2
           REPLACE f2701an2 WITH vaN2
           REPLACE f2701esp WITH veSp
           REPLACE f2701tpo WITH vtPo
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
           REPLACE f2990sor WITH vsOr
           REPLACE f2990ord WITH voRd
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
           DO grA_stock WITH vcOd
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
                SELECT itE_ingr
                DO nuEvo_rg
                REPLACE f2702tdo WITH vtDo
                REPLACE f2702ser WITH vsEr
                REPLACE f2702doc WITH vdOc
                REPLACE f2702cod WITH vcOd
                REPLACE f2702rcc WITH vrCc
                REPLACE f2702opc WITH voPc
                REPLACE f2702un1 WITH vuN1
                REPLACE f2702un2 WITH vuN2
                REPLACE f2702mla WITH vmLa
                REPLACE f2702man WITH vmAn
                REPLACE f2702p11 WITH vp11
                REPLACE f2702p12 WITH vp12
                REPLACE f2702p21 WITH vp21
                REPLACE f2702p22 WITH vp22
                REPLACE f2702ctd WITH vcTd
                REPLACE f2702ca1 WITH vcA1
                REPLACE f2702ca2 WITH vcA2
                REPLACE f2702ca3 WITH vcA3
                REPLACE f2702ca4 WITH vcA4
                REPLACE f2702por WITH vpOr
                REPLACE f2702mm1 WITH vmM1
                REPLACE f2702mm2 WITH vmM2
                REPLACE f2702mm3 WITH vmM3
                REPLACE f2702mm4 WITH vmM4
                REPLACE f2702cx1 WITH vcX1
                REPLACE f2702cx2 WITH vcX2
                REPLACE f2702cx3 WITH vcX3
                REPLACE f2702cx4 WITH vcX4
                REPLACE f2702cy1 WITH vcY1
                REPLACE f2702cy2 WITH vcY2
                REPLACE f2702cy3 WITH vcY3
                REPLACE f2702cy4 WITH vcY4
                REPLACE f2702pie WITH vtPi
                REPLACE f2702cm1 WITH vcMm
                REPLACE f2702cm2 WITH vcMp
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
           SELECT seR_ingr
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2703tdo WITH vtDo
                REPLACE f2703ser WITH vsEr
                REPLACE f2703doc WITH vdOc
                REPLACE f2703cod WITH vcOd
                REPLACE f2703ped WITH vpD1
                REPLACE f2703sec WITH vsEc
                REPLACE f2703pla WITH vpLa
                REPLACE f2703plo WITH vpLa
                REPLACE f2703mot WITH vmOt
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
                DO grA_serie
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
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE DATE() TO vfEm
 STORE SPACE(70) TO vcM1
 STORE SPACE(03) TO vsOr, csOr
 STORE SPACE(07) TO voRd, coRd, vpEd
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm
 STORE 00 TO frEc, urEc, crEc, cfIl
 DO diS_2700a
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2700a WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE ptX1, ptX2, poPc, pnUm
ENDPROC
*
PROCEDURE Dis_2700a
 DO coL_beige
 @mFI0+1.0,mCO0+81.5 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 DO coLbln
 @mFI0+1.0,mCO0+21.5 Say vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2
 @mFI0+2.5,mCO0+21.5 Say vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74  Pict "@S70"
 @mFI0+4.0,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
 @mFI0+4.0,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
 @mFI0+4.0,mCO0+56.5 Say vPED Font "&mLetAri",9 Style "NQ" Size 1,9.7
ENDPROC
*
PROCEDURE Tip_2700a
 = INKEY(0.01)
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9217", "U", "F9217NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnTi)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9217tip<>vtIp
      DO CASE
           CASE (vtPp=1 .OR. vtPp=3 .OR. vtPp=4) .AND. f9217tpo=2
                SELECT teMporal_6
                GOTO TOP
                IF  .NOT. EOF()
                     STORE "No se puede cambiar de Tipo porque hay Series Ingresadas..."  ;
                           TO mmSj
                     DO poNmsj
                ELSE
                     SELECT tiPos
                     STORE f9217tip TO vtIp
                     STORE f9217nti TO vnTi
                     STORE f9217tpo TO vtPp
                ENDIF
           CASE vtPp=2 .AND. (f9217tpo=1 .OR. f9217tpo=3 .OR. f9217tpo=4)
                SELECT teMporal_6
                GOTO TOP
                IF  .NOT. EOF()
                     STORE "No se puede cambiar de Tipo porque hay Series Ingresadas..."  ;
                           TO mmSj
                     DO poNmsj
                ELSE
                     SELECT tiPos
                     STORE f9217tip TO vtIp
                     STORE f9217nti TO vnTi
                     STORE f9217tpo TO vtPp
                ENDIF
           OTHERWISE
                STORE f9217tip TO vtIp
                STORE f9217nti TO vnTi
                STORE f9217tpo TO vtPp
      ENDCASE
      DO coL_beige
      @mFI0+1,mCO0+81.5 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9217", "U", "F9217TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Alm_2700a
 = INKEY(0.01)
 SELECT alMacen
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Almacenes registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coL_beige
      STORE f9214cod TO vaLm
      STORE f9214nom TO vnAl
      @mFI0+4.0,mCO0+81.5 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S33"
      DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Lin_2700a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+004.8 TO pfIn, mcO0+004.8
 DO CASE
      CASE mrEs="4"
           @ piNi, mcO0+105.9 TO pfIn, mcO0+105.9
           @ piNi, mcO0+116.9 TO pfIn, mcO0+116.9
           @ piNi, mcO0+139.9 TO pfIn, mcO0+139.9
           @ piNi, mcO0+149.9 TO pfIn, mcO0+149.9
      OTHERWISE
           @ piNi, mcO0+117.3 TO pfIn, mcO0+117.3
           @ piNi, mcO0+130.8 TO pfIn, mcO0+130.8
           @ piNi, mcO0+149.0 TO pfIn, mcO0+149.0
           @ piNi, mcO0+172.4 TO pfIn, mcO0+172.4
           @ piNi, mcO0+183.6 TO pfIn, mcO0+183.6
 ENDCASE
ENDPROC
*
PROCEDURE P00_2700a
 PARAMETER ptPo
 DO p01_2700a WITH ptPo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Define Popup vTB1 from mFI0+2.2,mCO0+61.8 to fFIL+6.5,mCO0+116.2 Font "&mLetCou",11 Style "NQ" Prompt Field F9217NTI Scroll Color Scheme 3 Footer "TIPOS DE ENTRADA"
 Define Popup vTB2 from mFI0+5.2,mCO0+69.8 to fFIL+6.5,mCO0+120.2 Font "&mLetCou",11 Style "NQ" Prompt Field F9214NOM Scroll Color Scheme 3 Footer "ALMACENES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO tiT_0000a WITH "Guías de Entradas a Almacén nuevas"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 IF vsW3=1
      DO p02_2700a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p03_2700a
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P01_2700a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 STORE irEc TO vrEc
 STORE 22.3 TO muFi
 STORE 126 TO muCo
 STORE (mwCo-muCo)/2 TO mmC2
 DO CASE
      CASE mrEs="4"
           STORE muCo+28 TO muCo
           STORE muFi+9 TO muFi
      OTHERWISE
           STORE muCo+64 TO muCo
           STORE muFi+21 TO muFi
 ENDCASE
 IF wsW0=2
      STORE muFi-4 TO muFi
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-0.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, vcL0, vcO0
 STORE mfI0+02.0 TO ifFs, ufFs, vfFs
 STORE ifFs+18.0 TO ffFs
 STORE mfI0+01.7 TO ifFr, ufFr, vfFr
 STORE ifFr+18.0 TO ffFr
 STORE mfI0+02.7 TO ifFt, ufFt, vfFt
 STORE ifFt+17.0 TO ffFt
 STORE mfI0+03.7 TO ifFu, ufFu, vfFu
 STORE ifFu+16.0 TO ffFu
 STORE mfI0+04.7 TO ifFv, ufFv, vfFv
 STORE ifFv+15.0 TO ffFv
 STORE mfI0+05.7 TO ifFw, ufFw, vfFw
 STORE ifFw+14.0 TO ffFw
 STORE mfI0+06.7 TO ifFx, ufFx, vfFx
 STORE ifFx+13.0 TO ffFx
 STORE mfI0+00.9 TO vfB1
 STORE mfI0+03.9 TO vfB2, vfB3, vfB4
 STORE mcO0+112.7 TO vcB1
 STORE mcO0+39.0 TO vcB2
 STORE mcO0+112.7 TO vcB3
 STORE vcB3+4 TO vcB4
 STORE mcO0+00.1 TO icLn
 DO CASE
      CASE mrEs="4"
           STORE mcO0+154 TO ucLn
           STORE vcO0+36 TO vcO0
           STORE ffFs+06 TO ffFs
           STORE ffFr+08 TO ffFr
      OTHERWISE
           STORE mcO0+189.1 TO ucLn
           STORE vcO0+46 TO vcO0
           STORE ffFs+17 TO ffFs
           STORE ffFr+19 TO ffFr
 ENDCASE
 DO p04_2700a
 IF wsW0=2
      STORE ffFs-2 TO ffFs
      STORE ffFr-2 TO ffFr
 ENDIF
 STORE ffIl+4 TO mmF2
ENDPROC
*
PROCEDURE P02_2700a
 DO cuAdro WITH mfI0+0.3, mcO0, mfI0+5.6, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 @ mfI0+0.4, mcO0+1.1 TO mfI0+5.5, mcO0+muCo-2 PATTERN 1
 @ mfI0+0.4, mcO0+1.1 TO mfI0+0.4, mcO0+muCo-2 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.4, mcO0+1.1 TO mfI0+5.5, mcO0+1.1 COLOR RGB(128,128,128,0,0,0)
 @mFI0+1.1,mCO0+03.1 Say "Fecha"           Font "&mLetAri",9 Style "BQ"
 @mFI0+1.1,mCO0+62.5 Say "Tipo de Entrada" Font "&mLetAri",9 Style "BQ"
 @mFI0+2.5,mCO0+03.1 Say "Observaciones"   Font "&mLetAri",9 Style "BQ"
 @mFI0+4.0,mCO0+03.1 Say "Orden-Compra"    Font "&mLetAri",9 Style "BQ"
 @mFI0+4.0,mCO0+46.1 Say "Pedido"          Font "&mLetAri",9 Style "BQ"
 @mFI0+4.0,mCO0+70.1 Say "Almacen"         Font "&mLetAri",9 Style "BQ"
 @mFI0+1.0,mCO0+81.5 Edit vNTI             Font "&mLetAri",9 Style "NQ" Size 1,30.7,30
 @mFI0+4.0,mCO0+81.5 Edit vNAL             Font "&mLetAri",9 Style "NQ" Size 1,30.7,70
 DO coLbln
 @mFI0+1.0,mCO0+21.5 Get  vFEM             Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
 @mFI0+2.5,mCO0+21.5 Edit vCM1             Font "&mLetAri",9 Style "NQ" Size 1,74,70
 @mFI0+4.0,mCO0+21.5 Get  vSOR             Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"     Color ,&mColBlN
 @mFI0+4.0,mCO0+29.0 Get  vORD             Font "&mLetAri",9 Style "NQ" Size 1,9.4 Pict "9999999" Color ,&mColBlN
 @mFI0+4.0,mCO0+56.5 Get  vPED             Font "&mLetAri",9 Style "NQ" Size 1,9.7 Pict "!999999" Color ,&mColBlN
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vaLm))=0
      DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P03_2700a
 PRIVATE pdEs
 DO cuAdro WITH ifIl-1.3, mcO0, ffIl+2.6, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl-1.4, mcO0 TO ifIl-0.1, mcO0+muCo PATTERN 1 COLOR SCHEME 3
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo PATTERN 1 COLOR SCHEME 3
 DO coLsc3
 @iFIL-1.3,mCO0+0.6 Say "Ítem"     Font "&mLetAri",8 Style "NQ"
 @iFIL-1.3,mCO0+5.5 Say "Producto" Font "&mLetAri",9 Style "BQ"
 STORE ALLTRIM(vcOd)+" - "+vdEs TO pdEs
 DO CASE
      CASE mrEs="4"
           @iFIL-1.3,mCO0+107.6 Say "Unidad"    Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+123.8 Say "Cantidad"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+141.8 Say "Cajas"     Font "&mLetAri",9 Style "BQ"
           DO coL_fondo
           @fFIL+1.4,mCO0+000.3 Say "Producto:" Font "&mLetAri",9 Style "BQ"
           @fFIL+1.4,mCO0+127.3 Say "Stock:"    Font "&mLetAri",9 Style "BQ"
           @fFIL+1.4,mCO0+012.4 Edit pDES       Font "&mLetAri",9 Style "NQ" Size 1,106,80
           @fFIL+1.4,mCO0+135.5 Get  vSTO       Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mCol_Fondo
      OTHERWISE
           @iFIL-1.3,mCO0+120.3 Say "Unidad"    Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+137.3 Say "Stock"     Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+155.3 Say "Cantidad"  Font "&mLetAri",9 Style "BQ"
           @iFIL-1.3,mCO0+174.9 Say "Cajas"     Font "&mLetAri",9 Style "BQ"
           DO coL_fondo
           @fFIL+1.4,mCO0+000.3 Say "Producto:" Font "&mLetAri",9 Style "BQ"
           @fFIL+1.4,mCO0+012.4 Edit pDES       Font "&mLetAri",9 Style "NQ" Size 1,130,80
 ENDCASE
 READ TIMEOUT 0.01
 DO liN_2700a IN PAI2700A WITH ifIl-1.3, ffIl+1.15
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      IF irEc<=frEc
           GOTO irEc
           DO paN_2700b IN PAI2700B
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           GOTO BOTTOM
           DO coL_fondo
           @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
           DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.15
           STORE ifIl TO cfIl, vfIl
           STORE RECNO()+1 TO vrEc, irEc
      ENDIF
 ENDIF
 STORE cfIl TO vfIl
ENDPROC
*
PROCEDURE P04_2700a
 DO CASE
      CASE mrEs="4"
           STORE mfI0+08.5 TO ifIl, ufIl, vfIl
           STORE ifIl+19 TO ffIl
      OTHERWISE
           STORE mfI0+08.5 TO ifIl, ufIl, vfIl
           STORE ifIl+31 TO ffIl
 ENDCASE
 IF wsW0=2
      STORE ffIl-2 TO ffIl
 ENDIF
 IF vsW3=2
      STORE ifIl-6 TO ifIl
 ENDIF
ENDPROC
*
PROCEDURE Abr_2700a
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2701DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "2702", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2702DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "2703", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2703DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 31
 DO abR_0000a IN PUX0000A WITH "2910", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Orden
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2910DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 32
 DO abR_0000a IN PUX0000A WITH "2911", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Orden
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2911DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "9217", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9217TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Entradas a Almacén vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "9226", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Monedas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9226COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2700a
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
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2
           DO coL_beige
           STORE SPACE(02) TO vaLm
           STORE SPACE(70) TO vnAl
           @mFI0+4,mCO0+81.5 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S33"
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.914 .AND. mfIl<=mfI0+2.128 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+33.2 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.414 .AND. mfIl<=mfI0+3.628 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+94.6 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.985 .AND. mfIl<=mfI0+5.128 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+26.6 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.985 .AND. mfIl<=mfI0+5.128 .AND. mcCc>=mcO0+28.6  ;
           .AND. mcCc<=mcO0+38.8 .AND. viTe<>4
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.985 .AND. mfIl<=mfI0+5.128 .AND. mcCc>=mcO0+45.8  ;
           .AND. mcCc<=mcO0+67 .AND. viTe<>5
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2700a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2700a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En este programa, sólo se pueden crear Entradas a Almacén nuevas.  Los"
 @ pfIl+01, 01 SAY  ;
   "Tipos de Entrada tienen que estar registrados en el Sistema previamente."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 19 SAY ":" STYLE "BT"
 @ pfIl+06, 19 SAY ":" STYLE "BT"
 @ pfIl+07, 19 SAY ":" STYLE "BT"
 @ pfIl+08, 19 SAY ":" STYLE "BT"
 @ pfIl+09, 19 SAY ":" STYLE "BT"
 @ pfIl+10, 19 SAY ":" STYLE "BT"
 @ pfIl+11, 19 SAY ":" STYLE "BT"
 @ pfIl+12, 19 SAY ":" STYLE "BT"
 @ pfIl+13, 19 SAY ":" STYLE "BT"
 @ pfIl+14, 19 SAY ":" STYLE "BT"
 @ pfIl+15, 19 SAY ":" STYLE "BT"
 @ pfIl+16, 19 SAY ":" STYLE "BT"
 @ pfIl+17, 19 SAY ":" STYLE "BT"
 @ pfIl+05, 01 SAY "F10" STYLE "BT"
 @ pfIl+06, 01 SAY "ESC" STYLE "BT"
 @ pfIl+07, 01 SAY "F1" STYLE "BT"
 @ pfIl+08, 01 SAY "F3" STYLE "BT"
 @ pfIl+09, 01 SAY "F7" STYLE "BT"
 @ pfIl+10, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl+11, 01 SAY "CTRL <-" STYLE "BT"
 @ pfIl+12, 01 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+13, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl+14, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+15, 01 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+16, 01 SAY "ENTER" STYLE "BT"
 @ pfIl+17, 01 SAY "TAB" STYLE "BT"
 @ pfIl+05, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 21 SAY "Ayuda del Programa"
 @ pfIl+08, 21 SAY "Seleccionar Almacen"
 @ pfIl+09, 21 SAY "Seleccionar Tipo de Entrada"
 @ pfIl+10, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 @ pfIl+11, 21 SAY "Ir al campo izquierdo"
 @ pfIl+12, 21 SAY "Ir al Primer campo"
 @ pfIl+13, 21 SAY "Ir al Último campo"
 @ pfIl+14, 21 SAY "Ir al campo inferior, llegando al final pasa al Detalle"
 @ pfIl+15, 21 SAY "Ir al campo superior"
 @ pfIl+16, 21 SAY "Ir al siguiente campo, llegando al final pasa al Detalle"
 @ pfIl+17, 21 SAY "Pasar al Detalle"
 IF viTe=1
      @ pfIl+6, 21 SAY "Regresar al primer campo"
 ELSE
      @ pfIl+6, 21 SAY "Regresar al Menú Principal"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1
 DO bvA_2700w IN PAI2700W
 PUBLIC vsOr, csOr, voRd, coRd, vpEd, vcM1, vtIp, vnTi, vtB1, vtB2, vfB1,  ;
        vfB2, vfB3
 PUBLIC vfB4, vcB1, vcB2, vcB3, vcB4, vcL0, vcO0, vsW2, vsW3, vaNo, iaNo,  ;
        uaNo, xaNo
 PUBLIC vmEs, imEs, umEs, xmEs, vdIa, idIa, udIa, xdIa, vtP1, vtI1, xtDo,  ;
        itDo, utDo
 PUBLIC xsEr, isEr, usEr, xdOc, idOc, udOc, vnOm, inOm, unOm, xnOm, ccOd,  ;
        vcOs, xcOs
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
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6
ENDPROC
*
