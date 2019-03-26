 = INKEY(0.01)
 SELECT seLeccion
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 DO CASE
      CASE vsW1=01
           SELECT caB_ped
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 DO muE_1200a
 STORE 00 TO tpEs, tpEr
 STORE 01 TO vsW3, vsW4
 STORE xpIg TO vpIg
 STORE xdTc TO vdTc
 STORE xdCl TO vdCl
 STORE xsWg TO vsWg
 STORE xpGd TO vpGd
 STORE xlUg TO vlUg
 STORE xlUd TO vlUd
 STORE xlUp TO vlUp
 STORE xeSt TO veSt
 STORE DATE() TO vfE1, xfE1
 STORE SPACE(85) TO vcM1
 STORE SPACE(90) TO vcM2
 STORE SPACE(10) TO vpLc, vpL2
 STORE SPACE(11) TO vtRu, vtRr
 STORE SPACE(30) TO vlC1, vlC2
 STORE SPACE(20) TO vcIm, vmR1, vmR2
 STORE SPACE(02) TO vcC1, vcC2, vcR1, vcR2
 STORE SPACE(04) TO vaLm, vaL1, vtRa, vtR1
 STORE SPACE(25) TO vtDs, vtDp, vpPd, vpPp, vlD2, vlP2
 STORE SPACE(70) TO vnAl, vnA1, vtNo, vtN1, vtDi, vcHo, vcH2, vpPn, vpPa, vlG2
 IF LEN(ALLTRIM(vlUg))=0
      STORE xdIr TO vlUg
      STORE xdIs TO vlUd
      STORE xdEp TO vlUp
 ENDIF
 DO CASE
      CASE xmOn=1
           STORE "S/." TO xsIg
      CASE xmOn=2
           STORE "US$" TO xsIg
 ENDCASE
 SELECT caMbio
 SEEK vfE1
 IF EOF()
      STORE 1 TO xtCa
 ELSE
      STORE f9111tc3 TO xtCa
 ENDIF
 SELECT deT_ped
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 0 TO tvAl, tcAn
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      DO prD_1200z IN PVI1200Z
      SELECT deT_ped
      STORE tvAl+f1201to2 TO tvAl
      STORE tcAn+f1201can TO tcAn
      IF wtPo="7"
           STORE f1201can TO vcAn
           STORE f1201cad TO vcAd
           IF mcAj=1 .AND. vsRr=1
                STORE VAL(f1201ref) TO vcAj
                STORE f1201cjd TO vcJd
           ENDIF
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           DO CASE
                CASE f2111ser=1 .AND. mcAj=1 .AND. vcAj=vcJd
                CASE f2111ser=1 .AND. mcAj=2 .AND. vcAn=vcAd
                CASE f2111ser=2 .AND. vcAn=vcAd
                CASE f2111ser=1
                OTHERWISE
                     DO esC_1200c
           ENDCASE
           SELECT deT_ped
      ENDIF
      SKIP
 ENDDO
 DO ct1_1200b IN PVI1200B
 DO ct2_1200b IN PVI1200B
 DO p00_1200c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ped
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_1200c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_1200c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1200c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1200c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1200c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1200c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. wtPo$"4567"
                DO caM_1200c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Down .OR. mkEy=k_Up .OR. mkEy=k_Ctrl_home .OR.  ;
                   mkEy=k_Ctrl_end
                     LOOP
                ENDIF
           CASE mkEy=k_Alt_s .AND. wtPo="4" .AND. xeSt<>"1"
                DO stO_1200c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_ped
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                DO diS_1200c WITH "R"
           CASE mkEy=k_Right
                DO CASE
                     CASE vsW4=3
                          STORE 1 TO vsW4
                     OTHERWISE
                          STORE vsW4+1 TO vsW4
                ENDCASE
                DO p01_1200c
           CASE mkEy=k_Left
                DO CASE
                     CASE vsW4=1
                          STORE 3 TO vsW4
                     OTHERWISE
                          STORE vsW4-1 TO vsW4
                ENDCASE
                DO p01_1200c
           CASE mkEy=k_Tab .AND. wtPo$"56" .AND. xeSt="1"
                STORE "Pedido tiene que estar Aprobado..." TO mmSj
           CASE mkEy=k_Tab .AND. ((wtPo$"56" .AND. xeSt<>"1") .OR. wtPo="7")
                SELECT deT_ped
                STORE f1201can TO vcAn
                STORE f1201cad TO vcAd
                IF mcAj=1
                     STORE VAL(f1201ref) TO vcAj
                     STORE f1201cjd TO vcJd
                ENDIF
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE f2111ser=1 .AND. mcAj=1 .AND. vcAj=0
                          STORE "La Referencia se encuentra vacía..." TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                     CASE f2111ser=1 .AND. mcAj=1 .AND. vcAj=vcJd
                          STORE "Ítem ya despachado..." TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                     CASE f2111ser=1 .AND. mcAj=2 .AND. vcAn=vcAd
                          STORE "Ítem ya despachado..." TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                     CASE f2111ser=2 .AND. vcAn=vcAd
                          STORE "Ítem ya despachado..." TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                     CASE f2111ser=1
                          SAVE SCREEN TO vpAn_12
                          DO q1_0000a
                          DO p2_0000a
                          DO pvC1202b
                          DO q2_0000a
                          DO p1_0000a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          RESTORE SCREEN FROM vpAn_12
                          SELECT deT_ped
                          STORE f1201cod TO vcOd
                          SELECT teMporal_7
                          SUM ftM7pla TO tpL1 ALL FOR ALLTRIM(ftM7cod)+ ;
                              "*"=ALLTRIM(vcOd)+"*"
                          SELECT seLeccion
                          SEEK ALLTRIM(vcOd)+"*"
                          DO CASE
                               CASE EOF() .AND. tpL1>0
                                    APPEND BLANK
                                    REPLACE ftM3cod WITH vcOd
                                    REPLACE ftM3can WITH vcAn
                                    REPLACE ftM3caj WITH vcAj
                               CASE  .NOT. EOF() .AND. tpL1>0
                                    REPLACE ftM3can WITH vcAn
                                    REPLACE ftM3caj WITH vcAj
                               CASE  .NOT. EOF() .AND. tpL1=0
                                    DELETE
                                    PACK
                                    REINDEX
                          ENDCASE
                          SELECT deT_ped
                     OTHERWISE
                          DO esC_1200c
                ENDCASE
                SELECT deT_ped
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                DO diS_1200c WITH "R"
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_Tab .AND. ((wtPo$"56" .AND. xeSt<>"1") .OR. wtPo="7")
                DO esC_1200c
                SELECT deT_ped
                DO diS_1200c WITH "R"
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE (mkEy=k_F7 .OR. mkEy=k_F8 .OR. mkEy=k_F9) .AND. wtPo$"567"
                SAVE SCREEN TO vpAn_12
                DO CASE
                     CASE mkEy=k_F7
                          STORE 1 TO vmOt
                          DO pvC1200d WITH "1"
                     CASE mkEy=k_F8
                          STORE 1 TO vmOt
                          DO pvC1200d WITH "2"
                     CASE mkEy=k_F9
                          STORE 1 TO vmOt
                          DO pvC1200d WITH "3"
                ENDCASE
                RESTORE SCREEN FROM vpAn_12
                UNLOCK ALL
                WAIT CLEAR
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT caB_ped
                STORE 99 TO mkEy
                DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_ped
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                DO diS_1200c WITH "R"
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Enter
                STORE f1201cod TO vcOd
                STORE f1201des TO vdEs
                STORE f1201nuv TO vnUv
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE 2 TO vsRr
                     STORE 1 TO vtPo
                ELSE
                     STORE f2111ser TO vsRr
                     STORE f2111tip TO vtIp
                     SELECT tiP_prod
                     SEEK vtIp
                     IF EOF()
                          STORE 1 TO vtPo
                     ELSE
                          STORE f9211tpo TO vtPo
                     ENDIF
                ENDIF
                DO CASE
                     CASE (vtPo>3 .AND. vtPo<10) .OR. vtPo=11
                          SELECT itE_ped
                     OTHERWISE
                          SELECT seR_ped
                ENDCASE
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Documento no tiene Detalle..." TO mmSj
                     CASE  .NOT. EOF()
                          SAVE SCREEN TO vpAn_12
                          DO CASE
                               CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                                    DO paC2701a WITH "1200"
                               CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                                    DO paC2701b WITH "1200"
                               CASE vtPo=11
                                    DO paC2701c WITH "1200"
                               CASE vtPo=10
                                    DO paC2701d WITH "1200"
                               CASE vsRr=1
                                    DO paC2702a WITH "1200"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          RESTORE SCREEN FROM vpAn_12
                ENDCASE
                SELECT deT_ped
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE mkEy=k_Ctrl_p
                SET READBORDER ON
                DO q1_0000a
                DO CASE
                     CASE wtPo="5"
                          DO pvI1200z WITH "2"
                     OTHERWISE
                          DO pvI1200z WITH "1"
                ENDCASE
                DO p1_0000a
                SET READBORDER OFF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE wtPo$"567"
                          DO prEsiona WITH "4", "R_CONS10", mmF1, mmC1
                     CASE wtPo="4" .AND. msTp=1 .AND. xeSt<>"1"
                          DO prEsiona WITH "4", "R_CONS19", mmF1, mmC1
                     OTHERWISE
                          DO prEsiona WITH "4", "R_CONS15", mmF1, mmC1
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_ped
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE mkEy=k_F3
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                ENDIF
                DO rs2_1200c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f1201ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_1200c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_1200c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(99, 2, 0)
                SET NEAR OFF
                IF EOF() .OR. f1201tdo+f1201ser+f1201doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f1201ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_1200c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_1200c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f1201tdo+f1201ser+f1201doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "N"
                          SKIP
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_1200c WITH ffFs, ffFs+1
                               STORE f1201ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f1201ite TO irEc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f1201ite TO vrEc
                               STORE vfFs+01 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1201tdo+f1201ser+f1201doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "N"
                          SKIP -1
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_1200c WITH ifFs, ifFs+1
                               STORE f1201ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f1201ite TO urEc
                               ENDIF
                          ELSE
                               STORE f1201ite TO vrEc
                               STORE vfFs-01 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+STR(urEc, 2, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f1201tdo+f1201ser+f1201doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1200c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1201tdo+f1201ser+f1201doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f1201tdo+f1201ser+f1201doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_1200c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1200c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1200c
 STORE ifFs TO vfFs, ufFs
 STORE f1201ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      DO diS_1200c WITH "N"
      STORE f1201ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_1200c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1200c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prD_1200z IN PVI1200Z
 SELECT prOductos
 IF  .NOT. EOF()
      STORE f2111cst TO vcSt
      STORE f2111gru TO vgRu
 ELSE
      STORE 2 TO vcSt
      STORE SPACE(02) TO vgRu
 ENDIF
 SELECT grUpos
 SEEK vgRu
 IF EOF()
      STORE SPACE(30) TO vnGr
 ELSE
      STORE f9216des TO vnGr
 ENDIF
 SELECT deT_ped
 STORE f1201can TO vcAn
 STORE VAL(f1201ref) TO vcAj
 STORE 0 TO ccAn, ccAj
 DO CASE
      CASE mcAj=1 .AND. vsRr=1 .AND. VAL(ALLTRIM(f1201ref))>f1201cjd
           STORE VAL(ALLTRIM(f1201ref))-f1201cjd TO ccAj
           STORE f1201can-f1201cad TO ccAn
      CASE vsRr=2 .AND. f1201can>f1201cad
           STORE f1201can-f1201cad TO ccAn
 ENDCASE
 SELECT seLeccion
 SEEK ALLTRIM(vcOd)+"*"
 DO CASE
      CASE  .NOT. EOF()
           DO CASE
                CASE ptIp="N"
                     DO coLsc4
                CASE ptIp="R"
                     SET COLOR TO RGB(255,255,255,141,136,122)
           ENDCASE
           STORE ftM3can TO vcAn
           STORE ftM3caj TO vcAj
      CASE wtPo>"3" .AND. (ccAj>0 .OR. ccAn>0)
           DO CASE
                CASE ptIp="N"
                     DO coL_fonve
                CASE ptIp="R"
                     DO coLblv
           ENDCASE
 ENDCASE
 SELECT deT_ped
 DO CASE
      CASE wtPo$"1234"
           @vFFS,vCO3+000.4 Say F1201ITE                   Font "&mLetAri",9 Style "NQ" Size 1,2.7  Pict "99"
           @vFFS,vCO3+004.1 Say AllTrim(F1201DCR)+" "+cLAR Font "&mLetAri",9 Style "NQ" Size 1,65   Pict "@S68"
           @vFFS,vCO3+070.2 Say F1201CAN                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFFS,vCO3+087.9 Say F1201NUC                   Font "&mLetAri",9 Style "NQ" Size 1,9.4
           @vFFS,vCO3+098.4 Say F1201REF                   Font "&mLetAri",9 Style "NQ" Size 1,7    Pict "@S6"
           @vFFS,vCO3+106.4 Say F1201PIE                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFFS,vCO3+124.2 Say F1201NUV                   Font "&mLetAri",9 Style "NQ" Size 1,09.4
           @vFFS,vCO3+134.6 Say F1201COD                   Font "&mLetAri",9 Style "NQ" Size 1,13.5 Pict "@S20"
           @vFFS,vCO3+149.1 Say F1201PRE                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFFS,vCO3+166.9 Say F1201PDC                   Font "&mLetAri",9 Style "NQ" Size 1,08.4 Pict "99.999"
           @vFFS,vCO3+176.4 Say F1201TO2                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      OTHERWISE
           @vFFS,vCO3+000.4 Say F1201ITE                   Font "&mLetAri",9 Style "NQ" Size 1,2.7  Pict "99"
           @vFFS,vCO3+004.1 Say AllTrim(F1201DCR)+" "+cLAR Font "&mLetAri",9 Style "NQ" Size 1,65   Pict "@S68"
           @vFFS,vCO3+070.2 Say vCAN                       Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFFS,vCO3+087.9 Say F1201NUC                   Font "&mLetAri",9 Style "NQ" Size 1,9.4
           @vFFS,vCO3+098.4 Say vCAJ                       Font "&mLetAri",9 Style "NQ" Size 1,7    Pict "@S6"
           @vFFS,vCO3+106.4 Say F1201PIE                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFFS,vCO3+124.2 Say F1201NUV                   Font "&mLetAri",9 Style "NQ" Size 1,09.4
           @vFFS,vCO3+134.6 Say F1201COD                   Font "&mLetAri",9 Style "NQ" Size 1,13.5 Pict "@S20"
           @vFFS,vCO3+149.1 Say F1201CAN-F1201CAD          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           @vFFS,vCO3+166.9 Say " "                        Font "&mLetAri",9 Style "NQ" Size 1,08.4
           @vFFS,vCO3+176.4 Say Val(F1201REF)-F1201CJD     Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9999,999,999"
 ENDCASE
 DO coLsc1
 DO CASE
      CASE wtPo<>"5"
           @fFFS+3.5,vCO3+011.5 Say "["+F1201COD+"]"+F1201DES Font "&mLetAri",9 Style "NQ" Size 1,91.4 Pict "@S94"
           @fFFS+3.5,vCO3+115.0 Say F1201REF Font "&mLetAri",9 Style "NQ" Size 1,41.4 Pict "@S43"
           @fFFS+3.5,vCO3+157.3 Say vNGR     Font "&mLetAri",9 Style "NQ" Size 1,30   Pict "@S32"
           @fFFS+4.9,vCO3+095.0 Say cLAR     Font "&mLetAri",9 Style "NQ" Size 1,92.4 Pict "@S94"
           @fFFS+4.9,vCO3+011.5 Say F1201PRE Font "&mLetAri",9 Style "NQ" Size 1,18   Pict "999,999.9999"
           @fFFS+4.9,vCO3+038.0 Say F1201PDC Font "&mLetAri",9 Style "NQ" Size 1,8.4  Pict "99.999"
           @fFFS+4.9,vCO3+062.0 Say F1201TO2 Font "&mLetAri",9 Style "NQ" Size 1,21   Pict "99,999,999.9999"
      OTHERWISE
           @fFFS+1.5,vCO3+011.5 Say "["+F1201COD+"]"+F1201DES Font "&mLetAri",9 Style "NQ" Size 1,91.4 Pict "@S94"
           @fFFS+1.5,vCO3+115.0 Say F1201REF Font "&mLetAri",9 Style "NQ" Size 1,41.4 Pict "@S43"
           @fFFS+1.5,vCO3+157.3 Say vNGR     Font "&mLetAri",9 Style "NQ" Size 1,30   Pict "@S32"
           @fFFS+2.9,vCO3+095.0 Say cLAR     Font "&mLetAri",9 Style "NQ" Size 1,92.4 Pict "@S94"
 ENDCASE
 IF (mcAj=1 .AND. ccAj>0 .AND. vsRr=1) .OR. ccAn>0
      @vFFS,vCO3+0.4 Say "@" Font "&mLetAri",8 Style "NQ" Size 1,1.5
 ENDIF
ENDPROC
*
PROCEDURE Esc_1200c
 SELECT deT_ped
 STORE f1201cod TO vcOd
 STORE f1201can TO vcAn
 STORE f1201cad TO vcAd
 IF mcAj=1 .AND. vsRr=1
      STORE VAL(f1201ref) TO vcAj
      STORE f1201cjd TO vcJd
 ENDIF
 SELECT seLeccion
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      APPEND BLANK
      REPLACE ftM3cod WITH vcOd
      REPLACE ftM3can WITH vcAn-vcAd
      IF mcAj=1 .AND. vsRr=1
           REPLACE ftM3caj WITH vcAj-vcJd
      ENDIF
 ELSE
      DELETE
      PACK
      REINDEX
 ENDIF
 SELECT deT_ped
ENDPROC
*
PROCEDURE Lin_1200c
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, vcO3+003.5 TO pfIn, vcO3+003.5
 @ piNi, vcO3+069.6 TO pfIn, vcO3+069.6
 @ piNi, vcO3+087.4 TO pfIn, vcO3+087.4
 @ piNi, vcO3+097.8 TO pfIn, vcO3+097.8
 @ piNi, vcO3+105.7 TO pfIn, vcO3+105.7
 @ piNi, vcO3+123.6 TO pfIn, vcO3+123.6
 @ piNi, vcO3+134.0 TO pfIn, vcO3+134.0
 @ piNi, vcO3+148.5 TO pfIn, vcO3+148.5
 @ piNi, vcO3+166.3 TO pfIn, vcO3+166.3
 @ piNi, vcO3+175.8 TO pfIn, vcO3+175.8
ENDPROC
*
PROCEDURE P01_1200c
 DO coL_fondo
 DO CASE
      CASE vsW4=1 .AND. wtPo<>"5"
           @fFFS+7.1,vCO3+vUC1-42.4 Say "Gra/Mod "+Space(40) Font "&mLetAri",8 Style "BQ" Size 1,42
           @fFFS+7.1,vCO3+vUC1-32.4 Say xDAT Font "&mLetAri",8 Style "NQ"
           @fFFS+7.1,vCO3+vUC1-09.4 Say xTIM Font "&mLetAri",8 Style "NQ"
      CASE vsW4=2 .AND. wtPo<>"5"
           @fFFS+7.1,vCO3+vUC1-42.4 Say "Aprob-1 "+Space(40) Font "&mLetAri",8 Style "BQ" Size 1,42
           @fFFS+7.1,vCO3+vUC1-32.4 Say xDA1 Font "&mLetAri",8 Style "NQ"
           @fFFS+7.1,vCO3+vUC1-09.4 Say xTI1 Font "&mLetAri",8 Style "NQ"
      CASE vsW4=3 .AND. wtPo<>"5"
           @fFFS+7.1,vCO3+vUC1-42.4 Say "Aprob-2 "+Space(40) Font "&mLetAri",8 Style "BQ" Size 1,42
           @fFFS+7.1,vCO3+vUC1-32.4 Say xDA2 Font "&mLetAri",8 Style "NQ"
           @fFFS+7.1,vCO3+vUC1-09.4 Say xTI2 Font "&mLetAri",8 Style "NQ"
      CASE vsW4=1
           @fFFS+5.1,vCO3+vUC1-42.4 Say "Gra/Mod "+Space(40) Font "&mLetAri",8 Style "BQ" Size 1,42
           @fFFS+5.1,vCO3+vUC1-32.4 Say xDAT Font "&mLetAri",8 Style "NQ"
           @fFFS+5.1,vCO3+vUC1-09.4 Say xTIM Font "&mLetAri",8 Style "NQ"
      CASE vsW4=2
           @fFFS+5.1,vCO3+vUC1-42.4 Say "Aprob-1 "+Space(40) Font "&mLetAri",8 Style "BQ" Size 1,42
           @fFFS+5.1,vCO3+vUC1-32.4 Say xDA1 Font "&mLetAri",8 Style "NQ"
           @fFFS+5.1,vCO3+vUC1-09.4 Say xTI1 Font "&mLetAri",8 Style "NQ"
      CASE vsW4=3
           @fFFS+5.1,vCO3+vUC1-42.4 Say "Aprob-2 "+Space(40) Font "&mLetAri",8 Style "BQ" Size 1,42
           @fFFS+5.1,vCO3+vUC1-32.4 Say xDA2 Font "&mLetAri",8 Style "NQ"
           @fFFS+5.1,vCO3+vUC1-09.4 Say xTI2 Font "&mLetAri",8 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE P00_1200c
 PRIVATE pcLn
 STORE vcO0+116.7 TO pcLn
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO CASE
      CASE wtPo$"567"
           DO prEsiona WITH "4", "R_CONS10", mmF1, mmC1
      CASE wtPo="4" .AND. msTp=1 .AND. xeSt<>"1"
           DO prEsiona WITH "4", "R_CONS19", mmF1, mmC1
      OTHERWISE
           DO prEsiona WITH "4", "R_CONS15", mmF1, mmC1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_1200a
 IF vsW3=1
      DO coL_fondo
      IF wtPo<>"5"
           DO cuAdro WITH vfI0+0.3, vcO0, vfI0+14.1, vcO0+vuCo
      ELSE
           DO cuAdro WITH vfI0+0.3, vcO0, vfI0+12.6, vcO0+vuCo
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coL_beige
      @ vfI0+0.4, vcO0+0.1 TO vfI0+08.5, pcLn PATTERN 1
      @ vfI0+0.4, vcO0+0.1 TO vfI0+0.4, pcLn COLOR RGB(128,128,128,0,0,0)
      @ vfI0+0.4, vcO0+0.1 TO vfI0+8.5, vcO0+0.1 COLOR RGB(128,128,128,0,0,0)
      @ vfI0+8.9, vcO0+0.1 TO vfI0+8.9, vcO0+vuCo-0.9 COLOR RGB(128,128, ;
        128,0,0,0)
      IF wtPo<>"5"
           @ vfI0+8.9, vcO0+0.1 TO vfI0+14.0, vcO0+vuCo-0.9 PATTERN 1
           @ vfI0+8.9, vcO0+0.1 TO vfI0+14.0, vcO0+0.1 COLOR RGB(128,128, ;
             128,0,0,0)
           DO coLsc6
           @ vfI0+0.4, pcLn+1.3 TO vfI0+7.4, vcO0+vuCo-0.9 PATTERN 1
           @ vfI0+3.9, pcLn+1.3 TO vfI0+3.9, vcO0+vuCo-0.9
           @ vfI0+5.6, pcLn+1.3 TO vfI0+5.6, vcO0+vuCo-0.9
      ELSE
           @ vfI0+8.9, vcO0+0.1 TO vfI0+12.5, vcO0+vuCo-0.9 PATTERN 1
           @ vfI0+8.9, vcO0+0.1 TO vfI0+12.5, vcO0+0.1 COLOR RGB(128,128, ;
             128,0,0,0)
           DO coLsc6
           @ vfI0+0.4, pcLn+1.3 TO vfI0+4.0, vcO0+vuCo-0.9 PATTERN 1
      ENDIF
      DO coL_beige
      IF LEN(ALLTRIM(xcLi))=0
           @vFI0+1.1,vCO0+1.1 Say "Cl.Compl"  Font "&mLetAri",9 Style "BT"
      ELSE
           @vFI0+1.1,vCO0+1.1 Say "Cliente"   Font "&mLetAri",9 Style "BT"
      ENDIF
      @vFI0+01.0,pCLN+02.3 Say "Emisión"    Font "&mLetAri",9 Style "BT"
      @vFI0+02.5,vCO0+01.1 Say "Dirección"  Font "&mLetAri",9 Style "NT"
      @vFI0+04.0,vCO0+01.1 Say "Distr/Dpto" Font "&mLetAri",9 Style "NT"
      @vFI0+04.0,pCLN-40.7 Say "RUC"        Font "&mLetAri",9 Style "NT"
      DO CASE
           CASE xtDi$"16"
                @vFI0+4,pCLN-18.2 Say "DNI"   Font "&mLetAri",9 Style "NT"
           CASE xtDi="4"
                @vFI0+4,pCLN-18.2 Say "C.E"   Font "&mLetAri",9 Style "NT"
           CASE xtDi="7"
                @vFI0+4,pCLN-18.2 Say "Pas"   Font "&mLetAri",9 Style "NT"
           CASE xtDi="A"
                @vFI0+4,pCLN-18.2 Say "C.P"   Font "&mLetAri",9 Style "NT"
           OTHERWISE
                @vFI0+4,pCLN-18.2 Say "Otr"   Font "&mLetAri",9 Style "NT"
      ENDCASE
      @vFI0+05.5,vCO0+01.1 Say "L.Entrega"  Font "&mLetAri",9 Style "BT"
      @vFI0+07.0,vCO0+01.1 Say "Distr/Dpto" Font "&mLetAri",9 Style "NT"
      @vFI0+07.0,pCLN-40.7 Say "Titular"    Font "&mLetAri",9 Style "NT"
      @vFI0+09.5,vCO0+01.1 Say "Obs.Imp"    Font "&mLetAri",9 Style "BT"
      @vFI0+11.0,vCO0+01.1 Say "Obs.n/Imp"  Font "&mLetAri",9 Style "BT"
      IF wtPo<>"5"
           @vFI0+01.0,pCLN+26.3 Say "T.Cambio"                 Font "&mLetAri",9 Style "NT"
           @vFI0+02.5,pCLN+02.3 Say "F.Pago"                   Font "&mLetAri",9 Style "NT"
           @vFI0+04.3,pCLN+31.3 Say "I.G.V."                   Font "&mLetAri",9 Style "BT"
           @vFI0+12.5,vCO0+01.1 Say "Dcto.Gral:"               Font "&mLetAri",9 Style "BT"
           @vFI0+12.5,vCO0+58.0 Say "% Dcto.x Tipo de Cliente" Font "&mLetAri",9 Style "NT" Color &mColPlP
           @vFI0+12.5,vCO0+96.4 Say "% Dcto.x Cliente"         Font "&mLetAri",9 Style "NT" Color &mColPlP
      ENDIF
      DO coLbln
      SET READBORDER ON
      @vFI0+01.0,pCLN+12.7 Get  xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
      @vFI0+09.5,vCO0+13.5 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
      @vFI0+11.0,vCO0+13.5 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
      @vFI0+7,pCLN-33.2    Get xTIT Font "&mLetAri",9 Style "NQ" Size 1,5.5 Pict "!!!!" Color ,RGB(0,0,0,235,231,222)
      DO CASE
           CASE LEN(ALLTRIM(xcLi))<>0
                SET COLOR TO RGB(0,0,0,235,231,222)
                @vFI0+4,pCLN-34.8 Get xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,RGB(0,0,0,235,231,222)
                @vFI0+4,pCLN-13   Get xDNI Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99999999"    Color ,RGB(0,0,0,235,231,222)
           OTHERWISE
                DO coLbln
                @vFI0+4,pCLN-34.8 Get xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
                @vFI0+4,pCLN-13   Get xDNI Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99999999"    Color ,&mColBlN
      ENDCASE
      DO coL_beige
      @vFI0+7,pCLN-25.7 Edit xNTT Font "&mLetAri",9 Style "NQ" Size 1,24.5,70
      DO coLbln
      @vFI0+5.5,vCO0+13.5 Edit xLUG Font "&mLetAri",9 Style "NQ" Size 1,102,70
      @vFI0+7.0,vCO0+13.5 Edit xLUD Font "&mLetAri",9 Style "NQ" Size 1,030,25
      @vFI0+7.0,vCO0+45.0 Edit xLUP Font "&mLetAri",9 Style "NQ" Size 1,030,25
      @vFI0+1.0,vCO0+13.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,102,70
      @vFI0+2.5,vCO0+13.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,102,70
      @vFI0+4.0,vCO0+13.5 Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,030,25
      @vFI0+4.0,vCO0+45.0 Edit xDEP Font "&mLetAri",9 Style "NQ" Size 1,030,25
      DO coLsc6
      IF wtPo="5"
           @vFI0+02.5,pCLN+002.3 Say "Vendedor" Font "&mLetAri",9 Style "BT"
           @vFI0+02.5,vCO0+132.0 Edit xNVE      Font "&mLetAri",9 Style "NQ" Size 1,51,70
      ELSE
           @vFI0+06.0,pCLN+002.3 Say "Vendedor" Font "&mLetAri",9 Style "BT"
           @vFI0+06.0,vCO0+132.0 Edit xNVE      Font "&mLetAri",9 Style "NQ" Size 1,51,70
           @vFI0+12.5,vCO0+043.5 Get xPGD       Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
           @vFI0+12.5,vCO0+013.5 Get xSWG       Font "&mLetAri",9 Style "NQ" Default xSWG Size 1,4,.1 Function "*RHT x Porcentaje;x Monto" Color RGB(0,0,0,235,231,222)
           @vFI0+12.5,vCO0+085.5 Get xDTC       Font "&mLetAri",9 Style "NQ" Size 1,07.9 Pict "999.99" Color ,RGB(0,0,0,235,231,222)
           @vFI0+12.5,vCO0+115.5 Get xDCL       Font "&mLetAri",9 Style "NQ" Size 1,07.9 Pict "999.99" Color ,RGB(0,0,0,235,231,222)
           DO coLsc6
           @vFI0+4.2,pCLN+002.7 Get  xMON Font "&mLetAri",9 Style "NQ" Default xMON Size 1,5,1 Function "*RHT S/.;US$" Color RGB(0,0,0,235,231,222)
           @vFI0+2.5,vCO0+129.4 Edit xNFP Font "&mLetAri",9 Style "NQ" Size 1,53.8,50
           @vFI0+1,vCO0+174.4 Get xTCA Font "&mLetAri",9 Style "NQ" Size 1,08.3 Pict "99.999" Color Scheme 6
           DO CASE
                CASE mpIg=2
                     @vFI0+4.2,vCO0+175 Get xPIG Font "&mLetAri",9 Style "NQ" Size 1,7.3 Pict "99.99" Color Scheme 6
                OTHERWISE
                     @vFI0+4.2,vCO0+175 Get xPIG Font "&mLetAri",9 Style "NQ" Size 1,7.3 Pict "99.99" Color ,&mColBlN
           ENDCASE
      ENDIF
      READ TIMEOUT 0.01
      SET READBORDER OFF
 ENDIF
 DO coL_fondo
 IF wtPo<>"5"
      @ ifFs-1.3, vcO3 TO ffFs+3.25, vcO3+vuC1 PATTERN 1
      DO coLsc7
      @ ifFs-1.3, vcO3 TO ifFs-0.20, vcO3+vuC1 PATTERN 1
      @ ffFs+1.1, vcO3 TO ffFs+3.25, vcO3+vuC1 PATTERN 1
      DO coLsc1
      @ ffFs+3.4, vcO3 TO ffFs+6.1, vcO3+vuC1 PATTERN 1
      @ ffFs+4.7, vcO3 TO ffFs+4.7, vcO3+vuC1
      @fFFS+3.5,vCO3+0.4 Say "Producto:" Font "&mLetAri",9 Style "NQ"
 ELSE
      @ ifFs-1.3, vcO3 TO ffFs+1.25, vcO3+vuC1 PATTERN 1
      DO coLsc7
      @ ifFs-1.3, vcO3 TO ifFs-0.20, vcO3+vuC1 PATTERN 1
      DO coLsc1
      @ ffFs+1.4, vcO3 TO ffFs+4.1, vcO3+vuC1 PATTERN 1
      @ ffFs+2.7, vcO3 TO ffFs+2.7, vcO3+vuC1
      @fFFS+1.5,vCO3+0.4 Say "Producto:" Font "&mLetAri",9 Style "NQ"
 ENDIF
 DO coL_fondo
 IF wtPo<>"5"
      @fFFS+6.1,vCO3+vUC1-042.4 Say " Usuario: "         Font "&mLetAri",8 Style "BQ" Size 1,42
      @fFFS+6.1,vCO3+vUC1-032.4 Say xUSU                 Font "&mLetAri",8 Style "NQ" Size 1,30 Pict "@S30"
      @fFFS+7.1,vCO3+vUC1-017.4 Say " Hora:"             Font "&mLetAri",8 Style "BQ"
 ELSE
      @fFFS+4.1,vCO3+vUC1-042.4 Say " Usuario: "         Font "&mLetAri",8 Style "BQ" Size 1,42
      @fFFS+4.1,vCO3+vUC1-032.4 Say xUSU                 Font "&mLetAri",8 Style "NQ" Size 1,30 Pict "@S30"
      @fFFS+5.1,vCO3+vUC1-017.4 Say " Hora:"             Font "&mLetAri",8 Style "BQ"
 ENDIF
 DO p01_1200c
 DO coLsc1
 IF wtPo="5"
      @ ffFs+1.4, vcO3+011.0 TO ffFs+2.7, vcO3+011.0
      @ ffFs+1.4, vcO3+103.4 TO ffFs+2.7, vcO3+103.4
      @ ffFs+1.4, vcO3+114.4 TO ffFs+2.7, vcO3+114.4
      @ ffFs+1.4, vcO3+156.8 TO ffFs+2.7, vcO3+156.8
      @ ffFs+2.7, vcO3+083.4 TO ffFs+4.1, vcO3+083.4
      @ ffFs+2.7, vcO3+094.4 TO ffFs+4.1, vcO3+094.4
      @fFFS+1.5,vCO3+104 Say "Referen:"  Font "&mLetAri",9 Style "NT"
      @fFFS+2.9,vCO3+84  Say "Medidas:"  Font "&mLetAri",9 Style "NT"
 ELSE
      @ ffFs+3.5, vcO3+011.0 TO ffFs+4.7, vcO3+011.0
      @ ffFs+3.5, vcO3+103.4 TO ffFs+4.7, vcO3+103.4
      @ ffFs+3.5, vcO3+114.4 TO ffFs+4.7, vcO3+114.4
      @ ffFs+3.5, vcO3+156.8 TO ffFs+4.7, vcO3+156.8
      @ ffFs+4.7, vcO3+083.4 TO ffFs+6.1, vcO3+083.4
      @ ffFs+4.7, vcO3+094.4 TO ffFs+6.1, vcO3+094.4
      @fFFS+3.5,vCO3+104 Say "Referen:"  Font "&mLetAri",9 Style "NT"
      @fFFS+4.9,vCO3+84  Say "Medidas:"  Font "&mLetAri",9 Style "NT"
 ENDIF
 DO coLsc7
 @iFFS-1.3,vCO3+000.8 Say "Ite"                 Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+004.2 Say "Descripción impresa" Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+076.5 Say "Cantidad"            Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+088.4 Say "Uni.Inv."            Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+098.4 Say "Refer."              Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+110.5 Say "m3 o p2"             Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+124.0 Say "Unid.Vta"            Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+137.0 Say "Código"              Font "&mLetAri",9 Style "NT"
 DO CASE
      CASE wtPo$"56789"
           @iFFS-1.3,vCO3+149.0 Say "Cant.Pendiente"  Font "&mLetAri",9 Style "NT"
           @iFFS-1.3,vCO3+167.0 Say "      "          Font "&mLetAri",9 Style "NT"
           @iFFS-1.3,vCO3+176.5 Say "Refer.Pendient"  Font "&mLetAri",9 Style "NT"
      OTHERWISE
           @iFFS-1.3,vCO3+150.0 Say "Precio Unitario" Font "&mLetAri",9 Style "NT"
           @iFFS-1.3,vCO3+167.0 Say "%Dcto."          Font "&mLetAri",9 Style "NT"
           @iFFS-1.3,vCO3+179.0 Say "Precio Total"    Font "&mLetAri",9 Style "NT"
 ENDCASE
 IF wtPo<>"5"
      @ ffFs+1.1, vcO3+011.6 TO ffFs+3.4, vcO3+011.6
      @ ffFs+1.1, vcO3+029.6 TO ffFs+3.4, vcO3+029.6
      @ ffFs+1.1, vcO3+047.6 TO ffFs+3.4, vcO3+047.6
      @ ffFs+1.1, vcO3+065.6 TO ffFs+3.4, vcO3+065.6
      @ ffFs+1.1, vcO3+083.6 TO ffFs+3.4, vcO3+083.6
      @ ffFs+1.1, vcO3+101.6 TO ffFs+3.4, vcO3+101.6
      @ ffFs+1.1, vcO3+119.6 TO ffFs+3.4, vcO3+119.6
      @ ffFs+1.1, vcO3+137.6 TO ffFs+3.4, vcO3+137.6
      @ ffFs+1.1, vcO3+155.6 TO ffFs+3.4, vcO3+155.6
      @ ffFs+4.8, vcO3+011.0 TO ffFs+6.1, vcO3+11.0
      @ ffFs+4.8, vcO3+029.9 TO ffFs+6.1, vcO3+29.9
      @ ffFs+4.8, vcO3+037.4 TO ffFs+6.1, vcO3+37.4
      @ ffFs+4.8, vcO3+046.8 TO ffFs+6.1, vcO3+46.8
      @ ffFs+4.8, vcO3+061.4 TO ffFs+6.1, vcO3+61.4
      @fFFS+1.2,vCO3+000.1 Say "Totales:"         Font "&mLetAri",9 Style "BT"
      @fFFS+2.2,vCO3+014.9 Say "Total Ítems"      Font "&mLetAri",9 Style "NT"
      @fFFS+2.2,vCO3+030.1 Say "Dcto.x Tip/Clien" Font "&mLetAri",9 Style "NT"
      @fFFS+2.2,vCO3+049.5 Say "Dcto.x Cliente"   Font "&mLetAri",9 Style "NT"
      @fFFS+2.2,vCO3+067.6 Say "Dcto.General"     Font "&mLetAri",9 Style "NT"
      @fFFS+2.2,vCO3+087.2 Say "Total Dctos."     Font "&mLetAri",9 Style "NT"
      DO coLblz
      @fFFS+2.2,vCO3+108.4 Say "Neto"             Font "&mLetAri",9 Style "NT"
      @fFFS+2.2,vCO3+125.9 Say "I.G.V."           Font "&mLetAri",9 Style "NT"
      @fFFS+2.2,vCO3+141.9 Say "Total "+xSIG      Font "&mLetAri",9 Style "NT"
      DO coLsc1
      @fFFS+4.9,vCO3+30.5 Say "%Dct:"             Font "&mLetAri",9 Style "NT"
      @fFFS+4.9,vCO3+00.0 Say "Prec.Unit:"        Font "&mLetAri",9 Style "NT" Color 1
      @fFFS+4.9,vCO3+47.4 Say "Precio Total:"     Font "&mLetAri",9 Style "NT" Color 4
 ENDIF
 DO liN_1200c WITH ifFs-1.3, ffFs+1.15
 SET COLOR TO GR+/GR
 @vFI0-1.8,vCO0+0.6 Say "PEDIDO DE VENTA No."+xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
 DO toT_1200c
 RELEASE pcLn
ENDPROC
*
PROCEDURE Tot_1200c
 IF wtPo="5"
      RETURN
 ENDIF
 DO coLsc7
 @fFFS+1.3,vCO3+012.2 Say tVAL           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.3,vCO3+030.2 Say tDC1           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.3,vCO3+048.2 Say tDC2           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.3,vCO3+066.2 Say tDC3           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.3,vCO3+084.2 Say tDC1+tDC2+tDC3 Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.3,vCO3+102.2 Say xNET           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.3,vCO3+120.2 Say xIGV           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.3,vCO3+138.2 Say xTOT           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
ENDPROC
*
PROCEDURE Sto_1200c
 PRIVATE ptX1, ptX2, poPc, psW0
 = INKEY(0.01)
 SELECT deT_ped
 DO CASE
      CASE vcSt=2
           STORE "Este producto no Controla Stock..." TO mmSj
           DO poNmsj
           = INKEY(0.1)
           RETURN
      CASE mcAj=1 .AND. vsRr=1 .AND. VAL(ALLTRIM(f1201ref))>f1201cjd
      CASE vsRr=2 .AND. f1201can>f1201cad
      OTHERWISE
           STORE "No hay diferencia para devolver el Stock..." TO mmSj
           DO poNmsj
           = INKEY(0.1)
           RETURN
 ENDCASE
 ptX1 = "¿Desea devolver el Stock de este Ítem?"
 ptX2 = "PEDIDO DE VENTA No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO grAbar WITH "5"
 DO CASE
      CASE mcAj=1 .AND. vsRr=1 .AND. VAL(ALLTRIM(f1201ref))>f1201cjd
           STORE f1201can-f1201cad TO vcAn
           STORE VAL(ALLTRIM(f1201ref))-f1201cjd TO vcAj
      CASE vsRr=2 .AND. f1201can>f1201cad
           STORE f1201can-f1201cad TO vcAn
 ENDCASE
 SELECT caB_ped
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT deT_ped
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 IF msTp=1
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. f2111cst=1
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
 ENDIF
 SELECT deT_ped
 REPLACE f1201cad WITH f1201can
 IF mcAj=1
      REPLACE f1201cjd WITH VAL(ALLTRIM(f1201ref))
 ELSE
      REPLACE f1201cjd WITH 0
 ENDIF
 UNLOCK
 SELECT deT_ped
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 0 TO psW0
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      IF f1201can>f1201cad .OR. (mcAj=1 .AND. vsRr=1 .AND.  ;
         VAL(ALLTRIM(f1201ref))>f1201cjd)
           STORE 1 TO psW0
           EXIT
      ENDIF
      SKIP
 ENDDO
 IF psW0=0
      SELECT caB_ped
      REPLACE f1200est WITH "5"
      IF vsW1=02
           SELECT teMporal
           REPLACE f1200est WITH "5"
      ENDIF
 ENDIF
 IF msTp=1
      STORE 99 TO mkEy
      SELECT deT_ped
      DO orD_0000a WITH "1201", "V", "F1201COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT coN_ped
      DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT kaRdex
      SET NEAR ON
      SEEK ALLTRIM(vcOd)+"*ZZ"
      SET NEAR OFF
      IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
           IF EOF()
                GOTO BOTTOM
           ELSE
                SKIP -1
           ENDIF
      ENDIF
      STORE f2990sld TO vsLd
      STORE f2990slc TO vsLc
      STORE 00 TO vcAn, vcAj
      SELECT deT_ped
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1201cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           IF f1201can>f1201cad
                STORE vcAn+(f1201can-f1201cad) TO vcAn
                IF mcAj=1 .AND. vsRr=1
                     STORE vcAj+(VAL(ALLTRIM(f1201ref))-f1201cjd) TO vcAj
                ENDIF
           ENDIF
           SKIP
      ENDDO
      SELECT coN_ped
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1204cdg)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           STORE f1204tdo TO ctD1
           STORE f1204ser TO csR1
           STORE f1204doc TO cdO1
           STORE f1204cod TO vcDg
           STORE f1204cun TO vcUn
           SELECT deT_ped
           SEEK ALLTRIM(vcDg)+"*"+ctD1+csR1+cdO1
           IF  .NOT. EOF() .AND. f1201can>f1201cad
                STORE vcAn+((f1201can-f1201cad)*vcUn) TO vcAn
           ENDIF
           SELECT coN_ped
           SKIP
      ENDDO
      SELECT prOductos
      IF  .NOT. EOF() .AND. f2111cst=1
           REPLACE f2111sto WITH vsLd-vcAn
           REPLACE f2111caj WITH vsLc-vcAj
      ENDIF
      UNLOCK
      STORE 99 TO mkEy
      SELECT deT_ped
      DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT coN_ped
      DO orD_0000a WITH "1204", "V", "F1204DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc, psW0
ENDPROC
*
PROCEDURE Cam_1200c
 PRIVATE psW0
 SELECT seLeccion
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE 0 TO psW0
 ELSE
      STORE 1 TO psW0
 ENDIF
 SELECT deT_ped
 DO CASE
      CASE mcAj=1 .AND. vsRr=1 .AND. VAL(ALLTRIM(f1201ref))>f1201cjd
      CASE vsRr=2 .AND. f1201can>f1201cad
      CASE xeSt$"23"
      OTHERWISE
           STORE "Todo el Ítem ha sido despachado no se puede mover cantidades..."  ;
                 TO mmSj
           DO poNmsj
           RETURN
 ENDCASE
 STORE f1201can TO ccAn
 STORE f1201cad TO ccAd
 IF mcAj=1 .AND. vsRr=1
      STORE VAL(ALLTRIM(f1201ref)) TO ccAj
      STORE f1201cjd TO ccJd
 ENDIF
 DO WHILE .T.
      STORE k_Enter TO mkEy
      DO CASE
           CASE mcAj=1 .AND. vsRr=1
                @vFFS,vCO3+070.2 Get cCAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999999.9999" Color ,&mCol_Fondo
                @vFFS,vCO3+098.4 Get cCAJ Font "&mLetAri",9 Style "NQ" Size 1,7    Pict "99999"       Color ,&mCol_Fondo
           OTHERWISE
                @vFFS,vCO3+070.2 Get cCAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999999.9999" Color ,&mCol_Fondo
      ENDCASE
      SET CONFIRM ON
      SET CURSOR ON
      READ
      SET CURSOR OFF
      SET CONFIRM OFF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl2_1200c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Down .OR. mkEy=k_Up .OR. mkEy=k_Ctrl_home .OR.  ;
                mkEy=k_Ctrl_end
                EXIT
           CASE mkEy=k_Enter
                DO CASE
                     CASE ccAn=0
                          STORE "La Cantidad no pueden ser cero..." TO mmSj
                     CASE ccAn<0
                          STORE "La Cantidad no pueden ser menor a cero..."  ;
                                TO mmSj
                     CASE mcAj=1 .AND. vsRr=1 .AND. ccAj=0
                          STORE "Las Cajas no pueden ser cero..." TO mmSj
                     CASE mcAj=1 .AND. vsRr=1 .AND. ccAj<0
                          STORE "Las Cajas no pueden ser menores a cero..."  ;
                                TO mmSj
                     CASE ccAn<ccAd .AND. psW0=0
                          STORE "La Cantidad no pueden ser menor a la despachada..."  ;
                                TO mmSj
                     CASE mcAj=1 .AND. vsRr=1 .AND. ccAj<ccJd
                          STORE "Las Cajas: "+ALLTRIM(STR(ccAd, 5, 0))+ ;
                                " no pueden ser menor a las despachadas:"+ ;
                                ALLTRIM(STR(ccJd, 5, 0)) TO mmSj
                     CASE psW0=0 .AND. (f1201can<>ccAn .OR. (mcAj=1 .AND.  ;
                          vsRr=1 .AND. VAL(f1201ref)<>ccAj))
                          SELECT tmP_prod
                          ZAP
                          REINDEX
                          APPEND BLANK
                          REPLACE ftM2cod WITH vcOd
                          SELECT deT_ped
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    UNLOCK ALL
                                    = INKEY(0.01)
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          DO CASE
                               CASE f1201can<>ccAn
                                    STORE ccAn TO vcAn
                                    STORE f1201pre TO vpRe
                                    STORE f1201la1 TO vlA1
                                    STORE f1201an1 TO vaN1
                                    STORE f1201la2 TO vlA2
                                    STORE f1201an2 TO vaN2
                                    STORE f1201esp TO veSp
                                    STORE f1201pdc TO vpDc
                                    STORE f1201dct TO vdCt
                                    STORE f1201med TO vmEd
                                    DO caL_1200b IN PVI1200B
                                    SELECT caB_ped
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH vtDo+vsEr+vdOc
                                         IF mkEy=k_Esc
                                              WAIT CLEAR
                                              UNLOCK ALL
                                              = INKEY(0.01)
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    SELECT coN_ped
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                                    DO WHILE  .NOT. EOF() .AND. f1204tdo+ ;
                                       f1204ser+f1204doc+ ;
                                       ALLTRIM(f1204cod)+"*"=vtDo+vsEr+ ;
                                       vdOc+ALLTRIM(vcOd)+"*"
                                         STORE f1204cdg TO vcDg
                                         SELECT tmP_prod
                                         SEEK ALLTRIM(vcDg)+"*"
                                         IF EOF()
                                              APPEND BLANK
                                              REPLACE ftM2cod WITH vcDg
                                         ENDIF
                                         SELECT coN_ped
                                         SEEK vtDo+vsEr+vdOc+ ;
                                          ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
                                         IF  .NOT. RLOCK()
                                              DO reG_lock WITH vtDo+vsEr+ ;
                                               vdOc+ALLTRIM(vcOd)+"*"+ ;
                                               ALLTRIM(vcDg)+"*"
                                              IF mkEy=k_Esc
                                                   WAIT CLEAR
                                                   = INKEY(0.01)
                                                   UNLOCK ALL
                                                   RETURN
                                              ENDIF
                                         ELSE
                                              RLOCK()
                                         ENDIF
                                         IF msTp=1
                                              SELECT prOductos
                                              SEEK ALLTRIM(vcDg)+"*"
                                              IF  .NOT. EOF() .AND. f2111cst=1
                                                   IF  .NOT. RLOCK()
                                                        DO reG_lock WITH  ;
                                                         ALLTRIM(vcDg)+"*"
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
                                         ENDIF
                                         SELECT coN_ped
                                         SKIP
                                    ENDDO
                                    IF msTp=1
                                         SELECT prOductos
                                         SEEK ALLTRIM(vcOd)+"*"
                                         IF  .NOT. EOF() .AND. f2111cst=1
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"
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
                                    ENDIF
                                    SELECT deT_ped
                                    REPLACE f1201can WITH ccAn
                                    REPLACE f1201pie WITH vpIe
                                    REPLACE f1201pr1 WITH vpR1
                                    REPLACE f1201dct WITH vdCt
                                    REPLACE f1201to1 WITH vnEt
                                    REPLACE f1201to2 WITH vtOt
                                    IF mcAj=1 .AND. vsRr=1
                                         REPLACE f1201ref WITH  ;
                                          ALLTRIM(STR(ccAj, 5, 0))
                                    ENDIF
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                                    DO WHILE  .NOT. EOF() .AND. f1204tdo+ ;
                                       f1204ser+f1204doc+ ;
                                       ALLTRIM(f1204cod)+"*"=vtDo+vsEr+ ;
                                       vdOc+ALLTRIM(vcOd)+"*"
                                         REPLACE f1204can WITH ccAn*f1204cun
                                         UNLOCK
                                         SKIP
                                    ENDDO
                                    SELECT deT_ped
                                    GOTO TOP
                                    SEEK vtDo+vsEr+vdOc
                                    STORE 00 TO tvAl
                                    DO WHILE  .NOT. EOF() .AND. f1201tdo+ ;
                                       f1201ser+f1201doc=vtDo+vsEr+vdOc
                                         STORE tvAl+f1201to2 TO tvAl
                                         SKIP
                                    ENDDO
                                    DO ct1_1200b IN PVI1200B
                                    DO ct2_1200b IN PVI1200B
                                    SELECT caB_ped
                                    REPLACE f1200net WITH tnEt
                                    REPLACE f1200igv WITH tiGv
                                    REPLACE f1200tot WITH ttOt
                                    UNLOCK
                                    IF vsW1=02
                                         SELECT teMporal
                                         REPLACE f1200net WITH tnEt
                                         REPLACE f1200igv WITH tiGv
                                         REPLACE f1200tot WITH ttOt
                                    ENDIF
                                    IF msTp=1
                                         STORE 99 TO mkEy
                                         SELECT deT_ped
                                         DO orD_0000a WITH "1201", "V",  ;
                                          "F1201COD", "A"
                                         IF mkEy=k_Esc
                                              RETURN
                                         ENDIF
                                         SELECT coN_ped
                                         DO orD_0000a WITH "1204", "V",  ;
                                          "F1204CDG", "A"
                                         IF mkEy=k_Esc
                                              RETURN
                                         ENDIF
                                         SELECT tmP_prod
                                         GOTO TOP
                                         DO WHILE  .NOT. EOF()
                                              STORE ftM2cod TO vcOd
                                              SELECT prOductos
                                              SEEK ALLTRIM(vcOd)+"*"
                                              IF  .NOT. EOF()
                                                   STORE f2111ser TO vsRr
                                              ELSE
                                                   STORE 2 TO vsRr
                                              ENDIF
                                              SELECT kaRdex
                                              SET NEAR ON
                                              SEEK ALLTRIM(vcOd)+"*ZZ"
                                              SET NEAR OFF
                                              IF EOF() .OR.  ;
                                               ALLTRIM(f2990cod)+"*"<> ;
                                               ALLTRIM(vcOd)+"*"
                                                   IF EOF()
                                                        GOTO BOTTOM
                                                   ELSE
                                                        SKIP -1
                                                   ENDIF
                                              ENDIF
                                              STORE f2990sld TO vsLd
                                              STORE f2990slc TO vsLc
                                              STORE 00 TO vcAn, vcAj
                                              SELECT deT_ped
                                              GOTO TOP
                                              SEEK ALLTRIM(vcOd)+"*"
                                              DO WHILE  .NOT. EOF() .AND.  ;
                                               ALLTRIM(f1201cod)+"*"= ;
                                               ALLTRIM(vcOd)+"*"
                                                   IF mkEy=9000
                                                        STORE 99 TO mkEy
                                                        RETURN
                                                   ENDIF
                                                   IF f1201can>f1201cad
                                                        STORE vcAn+ ;
                                                         (f1201can- ;
                                                         f1201cad) TO vcAn
                                                        IF mcAj=1 .AND. vsRr=1
                                                             STORE vcAj+ ;
                                                              (VAL(ALLTRIM(f1201ref))- ;
                                                              f1201cjd) TO vcAj
                                                        ENDIF
                                                   ENDIF
                                                   SKIP
                                              ENDDO
                                              SELECT coN_ped
                                              SEEK ALLTRIM(vcOd)+"*"
                                              DO WHILE  .NOT. EOF() .AND.  ;
                                               ALLTRIM(f1204cdg)+"*"= ;
                                               ALLTRIM(vcOd)+"*"
                                                   IF mkEy=9000
                                                        STORE 99 TO mkEy
                                                        RETURN
                                                   ENDIF
                                                   STORE f1204tdo TO ctD1
                                                   STORE f1204ser TO csR1
                                                   STORE f1204doc TO cdO1
                                                   STORE f1204cod TO vcDg
                                                   STORE f1204cun TO vcUn
                                                   SELECT deT_ped
                                                   SEEK ALLTRIM(vcDg)+"*"+ ;
                                                    ctD1+csR1+cdO1
                                                   IF  .NOT. EOF() .AND.  ;
                                                    f1201can>f1201cad
                                                        STORE vcAn+ ;
                                                         ((f1201can- ;
                                                         f1201cad)*vcUn)  ;
                                                         TO vcAn
                                                   ENDIF
                                                   SELECT coN_ped
                                                   SKIP
                                              ENDDO
                                              SELECT prOductos
                                              IF  .NOT. EOF() .AND. f2111cst=1
                                                   REPLACE f2111sto WITH  ;
                                                    vsLd-vcAn
                                                   REPLACE f2111caj WITH  ;
                                                    vsLc-vcAj
                                              ENDIF
                                              UNLOCK
                                              SELECT tmP_prod
                                              SKIP
                                         ENDDO
                                         SELECT deT_ped
                                         STORE 99 TO mkEy
                                         DO orD_0000a WITH "1201", "V",  ;
                                          "F1201DOC", "A"
                                         IF mkEy=k_Esc
                                              RETURN
                                         ENDIF
                                         SELECT coN_ped
                                         DO orD_0000a WITH "1204", "V",  ;
                                          "F1204DOC", "A"
                                         IF mkEy=k_Esc
                                              RETURN
                                         ENDIF
                                    ENDIF
                               CASE mcAj=1 .AND. vsRr=1
                                    REPLACE f1201ref WITH  ;
                                     ALLTRIM(STR(ccAj, 5, 0))
                          ENDCASE
                          UNLOCK ALL
                          STORE tnEt TO xnEt
                          STORE tiGv TO xiGv
                          STORE ttOt TO xtOt
                          DO toT_1200c
                          SELECT deT_ped
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          EXIT
                     CASE psW0=1
                          SELECT seLeccion
                          SEEK ALLTRIM(vcOd)+"*"
                          REPLACE ftM3can WITH ccAn
                          IF mcAj=1
                               REPLACE ftM3caj WITH ccAj
                          ENDIF
                          FLUSH
                          EXIT
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 SELECT deT_ped
 DO diS_1200c WITH "R"
 IF mkEy=k_Down .OR. mkEy=k_Up .OR. mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end
      RETURN
 ENDIF
 STORE 99 TO mkEy
 RELEASE psW0
ENDPROC
*
PROCEDURE Rs1_1200c
 DO CASE
      CASE vsW1=1
           SELECT caB_ped
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_1200b IN PVC1200B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vrEc TO crEc
 DO rs1_1200b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caB_ped
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 STORE 99 TO mkEy
 DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 STORE crEc TO vrEc
 DO rs2_1200c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs2_1200c
 STORE vrEc TO crEc
 IF vsW3=1
      RESTORE SCREEN FROM vpAn_11
 ENDIF
 DO p00_1200c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ped
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      IF f1201ite=vrEc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE vrEc TO irEc, crEc
      STORE ifFs TO vfFs, cfFs
 ENDIF
 SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
 DO paN_1200c
 STORE crEc TO vrEc
 STORE cfFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_1200c WITH "R"
ENDPROC
*
PROCEDURE Clp_1200c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+32.8 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo="4" .AND. msTp=1
           STORE k_Alt_s TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+24.2 .AND.  ;
           mcCc<=mmC1+32.8 .AND. wtPo$"567"
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+32.8 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo$"567"
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+51
           STORE k_F3 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.4
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+51
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO3 .AND.  ;
           mcCc<=vcO3+vuC1
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO3 .AND.  ;
           mcCc<=vcO3+vuC1
           DO diS_1200c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f1201ite TO vrEc
           DO diS_1200c WITH "R"
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO3 .AND.  ;
           mcCc<=vcO3+vuC1
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1200c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+1, 02 SAY  ;
   "los ítems fueran más de los que se pueden visualizar,  puede verlo por "
 @ pfIl+2, 02 SAY  ;
   "páginas.                                                               "
 @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+8, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 11 SAY "ESC" STYLE "BT"
 @ pfIl+7, 11 SAY "F10" STYLE "BT"
 @ pfIl+8, 11 SAY "F1" STYLE "BT"
 @ pfIl+6, 31 SAY "Regresar a Cabecera"
 @ pfIl+7, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 31 SAY "Ayuda del Programa"
 STORE pfIl+9 TO pfIl
 IF wtPo$"4567"
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "F2" STYLE "BT"
      @ pfIl, 31 SAY "Cambiar Cantidades del Ítem"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 29 SAY ":" STYLE "BT"
 @ pfIl, 11 SAY "F3" STYLE "BT"
 @ pfIl, 31 SAY "Ampliar/Reducir Detalle"
 STORE pfIl+1 TO pfIl
 IF (wtPo$"56" .AND. xeSt<>"1") .OR. wtPo="7"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+1, 29 SAY ":" STYLE "BT"
      @ pfIl+2, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 11 SAY "F7" STYLE "BT"
      @ pfIl+1, 11 SAY "F8" STYLE "BT"
      @ pfIl+2, 11 SAY "F9" STYLE "BT"
      @ pfIl+0, 31 SAY "Genera Factura y G.Remisión"
      @ pfIl+1, 31 SAY "Genera Boleta y G.Remisión"
      @ pfIl+2, 31 SAY "Genera NP"
      STORE pfIl+3 TO pfIl
 ENDIF
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+2, 29 SAY ":" STYLE "BT"
 @ pfIl+3, 29 SAY ":" STYLE "BT"
 @ pfIl+4, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+8, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+1, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+2, 11 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+3, 11 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+4, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+5, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+6, 11 SAY "HOME" STYLE "BT"
 @ pfIl+7, 11 SAY "END" STYLE "BT"
 @ pfIl+8, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 31 SAY "Línea inferior"
 @ pfIl+1, 31 SAY "Línea superior"
 @ pfIl+2, 31 SAY "Ver Fechas adicionales"
 @ pfIl+3, 31 SAY "Ver Fechas adicionales"
 @ pfIl+4, 31 SAY "Página siguiente"
 @ pfIl+5, 31 SAY "Página anterior"
 @ pfIl+6, 31 SAY "Primera línea"
 @ pfIl+7, 31 SAY "Última línea"
 @ pfIl+8, 31 SAY "Imprime Documento"
 STORE pfIl+7 TO pfIl
 IF wtPo="4" .AND. xeSt<>"1"
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "ALT S" STYLE "BT"
      @ pfIl, 31 SAY "Retornar Stock del Ítem"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_1200c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "Se puede modificar cantidades. Estas no pueden ser cero ni ser menores"
 @ pfIl+1, 02 SAY "a las despachadas."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+8, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 11 SAY "ESC" STYLE "BT"
 @ pfIl+6, 11 SAY "F10" STYLE "BT"
 @ pfIl+7, 11 SAY "F1" STYLE "BT"
 @ pfIl+8, 11 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 31 SAY "Regresar al detalle sin grabar"
 @ pfIl+6, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 31 SAY "Ayuda del Programa"
 @ pfIl+8, 31 SAY "Aceptar el cambio y Grabar"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
