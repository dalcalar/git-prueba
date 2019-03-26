 = INKEY(0.01)
 STORE "C1" TO vtDd
 SELECT seLeccion
 ZAP
 REINDEX
 SELECT coP_prod
 ZAP
 REINDEX
 SELECT teMporal
 SET ORDER TO
 ZAP
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 00 TO tvAl, tcAn, tpEr
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      STORE f1301cod TO vcOd
      STORE f1301des TO vdEs
      STORE f1301dcr TO vdCr
      STORE f1301cuv TO vcUv
      STORE f1301nuv TO vnUv
      STORE f1301med TO vmEd
      STORE f1301can TO vcAn
      STORE f1301pie TO vpIe
      STORE f1301md1 TO vmD1
      STORE f1301md2 TO vmD2
      STORE f1301md3 TO vmD3
      STORE f1301pdc TO vpDc
      STORE f1301lar TO vlAr
      STORE f1301la1 TO vlA1
      STORE f1301la2 TO vlA2
      STORE f1301la3 TO vlA3
      STORE f1301la4 TO vlA4
      STORE f1301la5 TO vlA5
      STORE f1301la6 TO vlA6
      STORE f1301la7 TO vlA7
      STORE f1301la8 TO vlA8
      STORE f1301la9 TO vlA9
      STORE f1301anc TO vaNc
      STORE f1301an1 TO vaN1
      STORE f1301an2 TO vaN2
      STORE f1301an3 TO vaN3
      STORE f1301an4 TO vaN4
      STORE f1301an5 TO vaN5
      STORE f1301an6 TO vaN6
      STORE f1301an7 TO vaN7
      STORE f1301an8 TO vaN8
      STORE f1301an9 TO vaN9
      STORE f1301alt TO vaLt
      STORE f1301al1 TO vaL1
      STORE f1301al2 TO vaL2
      STORE f1301al3 TO vaL3
      STORE f1301al4 TO vaL4
      STORE f1301al5 TO vaL5
      STORE f1301al6 TO vaL6
      STORE f1301al7 TO vaL7
      STORE f1301al8 TO vaL8
      STORE f1301al9 TO vaL9
      STORE f1301esp TO veSp
      STORE f1301to1 TO vtO1
      STORE f1301to2 TO vtO2
      STORE tvAl+f1301to2 TO tvAl
      STORE tcAn+f1301can TO tcAn
      SELECT teMporal
      APPEND BLANK
      REPLACE ftM1cod WITH vcOd
      REPLACE ftM1des WITH vdEs
      REPLACE ftM1dcr WITH vdCr
      REPLACE ftM1cuv WITH vcUv
      REPLACE ftM1nuv WITH vnUv
      REPLACE ftM1med WITH vmEd
      REPLACE ftM1can WITH vcAn
      REPLACE ftM1pie WITH vpIe
      REPLACE ftM1md1 WITH vmD1
      REPLACE ftM1md2 WITH vmD2
      REPLACE ftM1md3 WITH vmD3
      REPLACE ftM1pdc WITH vpDc
      REPLACE ftM1lar WITH vlAr
      REPLACE ftM1la1 WITH vlA1
      REPLACE ftM1la2 WITH vlA2
      REPLACE ftM1la3 WITH vlA3
      REPLACE ftM1la4 WITH vlA4
      REPLACE ftM1la5 WITH vlA5
      REPLACE ftM1la6 WITH vlA6
      REPLACE ftM1la7 WITH vlA7
      REPLACE ftM1la8 WITH vlA8
      REPLACE ftM1la9 WITH vlA9
      REPLACE ftM1anc WITH vaNc
      REPLACE ftM1an1 WITH vaN1
      REPLACE ftM1an2 WITH vaN2
      REPLACE ftM1an3 WITH vaN3
      REPLACE ftM1an4 WITH vaN4
      REPLACE ftM1an5 WITH vaN5
      REPLACE ftM1an6 WITH vaN6
      REPLACE ftM1an7 WITH vaN7
      REPLACE ftM1an8 WITH vaN8
      REPLACE ftM1an9 WITH vaN9
      REPLACE ftM1alt WITH vaLt
      REPLACE ftM1al1 WITH vaL1
      REPLACE ftM1al2 WITH vaL2
      REPLACE ftM1al3 WITH vaL3
      REPLACE ftM1al4 WITH vaL4
      REPLACE ftM1al5 WITH vaL5
      REPLACE ftM1al6 WITH vaL6
      REPLACE ftM1al7 WITH vaL7
      REPLACE ftM1al8 WITH vaL8
      REPLACE ftM1al9 WITH vaL9
      REPLACE ftM1esp WITH veSp
      REPLACE ftM1tip WITH vtIp
      REPLACE ftM1tpo WITH vtPo
      REPLACE ftM1to2 WITH vtO2
      SELECT deT_fact
      SKIP
 ENDDO
 DO CASE
      CASE vsW1=01
           SELECT caB_fact
      CASE vsW1=02
           SELECT teMporal_doc
 ENDCASE
 DO muE_1300a
 STORE 01 TO vsW4, vsW5
 STORE xdCl TO vdCl
 STORE xdTc TO vdTc
 STORE xpGd TO vpGd
 STORE xsWg TO vsWg
 STORE xpIg TO vpIg
 DO CASE
      CASE xmOn=1
           STORE "S/." TO xsIg
      CASE xmOn=2
           STORE "US$" TO xsIg
 ENDCASE
 SELECT caMbio
 SEEK xfEm
 IF EOF()
      STORE 1 TO xtCa
 ELSE
      STORE f9111tc3 TO xtCa
 ENDIF
 DO ct1_1200b IN PVI1200B
 DO ct2_1200b IN PVI1200B
 DO p00_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="4"
      STORE 0 TO tpEs
      STORE DATE() TO vfE1
      STORE SPACE(90) TO vcM2
      STORE SPACE(10) TO vpLc, vpL2
      STORE SPACE(11) TO vtRu, vtRr
      STORE SPACE(30) TO vlC1, vlC2
      STORE SPACE(20) TO vmR1, vmR2, vcIm
      STORE SPACE(02) TO vcC1, vcC2, vcR1, vcR2
      STORE SPACE(04) TO vaLm, vaL1, vtRa, vtR1
      STORE SPACE(25) TO vpPd, xpPd, vpPp, xpPp, vtDs, vtDp, vlD2, vlP2
      STORE SPACE(70) TO vnAl, vnA1, vpPa, xpPa, vpPn, xpPn, vtNo, vtN1,  ;
            vtDi, vcHo, vcH2, vlG2, vcM1
      STORE xlUg TO vlUg
      STORE xlUd TO vlUd
      STORE xlUp TO vlUp
 ENDIF
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_1300c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_1300c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1300c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1300c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE wtPo$"15" .AND. vtDo="CT" .AND. mkEy=k_F8
                DO exC_1300c
                WAIT CLEAR
                SELECT deT_fact
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                STORE 99 TO mkEy
           CASE wtPo$"15" .AND. mkEy=k_Alt_s .AND. mpPe>0 .AND. (vtDo= ;
                "FA" .OR. vtDo="FE" .OR. vtDo="FC" .OR. vtDo="TF" .OR.  ;
                (vtDo="TK" .AND. LEN(ALLTRIM(xrUc))<>0))
                DO peR_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_fact
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. wtPo$"26" .AND. vsW4=2
                STORE "No se puede cambiar a Pantalla de Modificación de Cabecera..."  ;
                      TO mmSj
           CASE mkEy=k_F2 .AND. wtPo$"26"
                IF vsW5=1
                     STORE 2 TO vsW5
                ELSE
                     STORE 1 TO vsW5
                ENDIF
                DO p01_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO toT_1300c
                DO boT_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                IF vsW4=1
                     STORE 2 TO vsW4
                ELSE
                     STORE 1 TO vsW4
                ENDIF
                DO rs2_1300c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_o .AND. vtDo<>"CT"
                STORE 99 TO mkEy
                STORE "N" TO moPc
                DO prE_docum WITH "¿Desea imprimir Orden de Despacho?"
                IF moPc$"Ss"
                     SET READBORDER ON
                     DO q1_0000a
                     STORE mdEs TO xdEs
                     STORE 1 TO mdEs
                     DO pvI1300z
                     STORE xdEs TO mdEs
                     DO p1_0000a
                     SET READBORDER OFF
                     = INKEY(0.01)
                     STORE 99 TO mkEy
                     DO prEsiona WITH "4", "R_CONS15", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SELECT caB_fact
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SELECT deT_fact
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                ENDIF
           CASE mkEy=k_Ctrl_p .OR. mkEy=k_Ctrl_o
                STORE "N" TO moPc
                IF vtDo<>"CT"
                     DO prE_docum WITH "¿Desea imprimir Documento?"
                ELSE
                     IF mkEy=k_Ctrl_o
                          STORE "C1" TO vtDd
                          DO prE_docum WITH  ;
                             "¿Desea imprimir Cotización SIN Precios?"
                     ELSE
                          STORE "  " TO vtDd
                          DO prE_docum WITH  ;
                             "¿Desea imprimir Cotización CON Precios?"
                     ENDIF
                ENDIF
                IF moPc$"Ss"
                     STORE 99 TO mkEy
                     STORE "" TO vcM3, vcM4, vcM5, vcM6
                     SET READBORDER ON
                     DO q1_0000a
                     DO pvI1300z
                     DO p1_0000a
                     SET READBORDER OFF
                     = INKEY(0.01)
                     STORE 99 TO mkEy
                     SELECT caB_fact
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SELECT deT_fact
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                ENDIF
                STORE "C1" TO vtDd
                DO prEsiona WITH "4", "R_CONS15", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                EXIT
           CASE mkEy=k_Enter
                STORE f1301cod TO vcOd
                STORE f1301des TO vdEs
                STORE f1301nuv TO vnUv
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
                          SELECT itE_fact
                     CASE vtPo=10
                          SELECT coN_fact
                     OTHERWISE
                          SELECT seR_fact
                ENDCASE
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Documento no tiene Detalle..." TO mmSj
                     CASE  .NOT. EOF()
                          SAVE SCREEN TO vpAn_12
                          DO CASE
                               CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                                    DO paC2701a WITH "1300"
                               CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                                    DO paC2701b WITH "1300"
                               CASE vtPo=11
                                    DO paC2701c WITH "1300"
                               CASE vtPo=10
                                    DO paC2701d WITH "1300"
                               CASE vsRr=1
                                    DO paC2702a WITH "1300"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          RESTORE SCREEN FROM vpAn_12
                ENDCASE
                SELECT deT_fact
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE wtPo$"26" .AND. vsW5=2 .AND. (mkEy=k_Alt_z .OR. mkEy=k_Alt_s)
                DO CASE
                     CASE mkEy=k_Alt_z
                          DO fvE_1300c
                     CASE mkEy=k_Alt_s
                          DO coM_1300c
                ENDCASE
                STORE 99 TO mkEy
           CASE wtPo="4" .AND. (mkEy=k_F2 .OR. mkEy=k_F7 .OR. mkEy=k_Tab)
                DO CASE
                     CASE mkEy=k_F2
                          DO caM_1300c
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          IF mkEy=k_Down .OR. mkEy=k_Up .OR. mkEy= ;
                             k_Ctrl_home .OR. mkEy=k_Ctrl_end
                               LOOP
                          ENDIF
                     CASE mkEy=k_F7
                          SAVE SCREEN TO vpAn_12
                          STORE 1 TO vmOt
                          DO pvC1300d
                          RESTORE SCREEN FROM vpAn_12
                          UNLOCK ALL
                          WAIT CLEAR
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT deT_fact
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                     CASE mkEy=k_Tab
                          DO esC_1300c
                          SELECT deT_fact
                ENDCASE
                DO diS_1300c WITH "R"
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f1301ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_1300c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_1300c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(99, 2, 0)
                SET NEAR OFF
                IF EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f1301ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_1300c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_1300c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "N"
                          SKIP
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_1300c WITH ffFs, ffFs+1
                               STORE f1301ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f1301ite TO irEc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f1301ite TO vrEc
                               STORE vfFs+01 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "N"
                          SKIP -1
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_1300c WITH ifFs, ifFs+1
                               STORE f1301ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f1301ite TO urEc
                               ENDIF
                          ELSE
                               STORE f1301ite TO vrEc
                               STORE vfFs-01 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+STR(urEc, 2, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1300c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_1300c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_1300c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
      DO viR_000
 ENDDO
ENDPROC
*
PROCEDURE Pan_1300c
 SELECT deT_fact
 STORE ifFs TO vfFs, ufFs
 STORE f1301ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      DO diS_1300c WITH "N"
      STORE f1301ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_1300c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1300c
 PARAMETER ptIp
 PRIVATE psW0
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prD_1300z IN FAC0000A
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
 SELECT deT_fact
 STORE 0 TO psW0
 STORE f1301can TO vcAn
 STORE f1301fde TO xfDe
 STORE VAL(f1301ref) TO vcAj
 SELECT seLeccion
 SEEK ALLTRIM(vcOd)+"*"
 DO CASE
      CASE EOF()
           SELECT deT_fact
           STORE f1301ref TO vcAj
      OTHERWISE
           STORE 1 TO psW0
           DO CASE
                CASE ptIp="N"
                     DO coLsc4
                CASE ptIp="R"
                     SET COLOR TO RGB(255,255,255,141,136,122)
           ENDCASE
           STORE ftM3can TO vcAn
           STORE ftM3caj TO vcAj
 ENDCASE
 SELECT deT_fact
 @vFFS,vCO3+000.4 Say F1301ITE                   Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
 @vFFS,vCO3+004.1 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetAri",9 Style "NQ" Size 1,65.0 Pict "@S68"
 @vFFS,vCO3+070.2 Say vCAN                       Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @vFFS,vCO3+087.9 Say F1301NUC                   Font "&mLetAri",9 Style "NQ" Size 1,09.4
 @vFFS,vCO3+098.4 Say vCAJ                       Font "&mLetAri",9 Style "NQ" Size 1,07.0 Pict "@S07"
 @vFFS,vCO3+106.4 Say F1301PIE                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @vFFS,vCO3+124.2 Say F1301NUV                   Font "&mLetAri",9 Style "NQ" Size 1,09.4
 @vFFS,vCO3+134.6 Say F1301COD                   Font "&mLetAri",9 Style "NQ" Size 1,13.5 Pict "@S15"
 @vFFS,vCO3+149.1 Say F1301PRE                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @vFFS,vCO3+166.9 Say F1301PDC                   Font "&mLetAri",9 Style "NQ" Size 1,08.4 Pict "99.999"
 @vFFS,vCO3+176.4 Say F1301TO2                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 DO coLsc1
 @fFFS+3.8,vCO3+011.5 Say "["+F1301COD+"]"+F1301DES Font "&mLetAri",9 Style "NQ" Size 1,91.4 Pict "@S94"
 @fFFS+3.8,vCO3+115.0 Say F1301REF                  Font "&mLetAri",9 Style "NQ" Size 1,41.4 Pict "@S43"
 @fFFS+3.8,vCO3+157.3 Say vNGR                      Font "&mLetAri",9 Style "NQ" Size 1,30   Pict "@S32"
 @fFFS+5.2,vCO3+095.0 Say cLAR                      Font "&mLetAri",9 Style "NQ" Size 1,92.4 Pict "@S94"
 @fFFS+5.2,vCO3+011.5 Say F1301PRE                  Font "&mLetAri",9 Style "NQ" Size 1,18   Pict "999,999.9999"
 @fFFS+5.2,vCO3+038.0 Say F1301PDC                  Font "&mLetAri",9 Style "NQ" Size 1,8.4  Pict "99.999"
 @fFFS+5.2,vCO3+062.0 Say F1301TO2                  Font "&mLetAri",9 Style "NQ" Size 1,21   Pict "99,999,999.9999"
 DO CASE
      CASE vsW5=2 .AND. (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC" .OR.  ;
           vtDo="TB" .OR. (vtDo="TK" .AND. LEN(ALLTRIM(xrUc))=0))
           DO coLsc3
      OTHERWISE
           DO coLbln
 ENDCASE
 DO CASE
      CASE vsW5=1 .AND. vsW4=1
           @vFI0+7.3,vCLL+35.7 Say xFDE Font "&mLetAri",9 Style "NQ" Size 1,12.4 Color &mCol_Beige
      CASE vsW5=2 .AND. vsW4=1
           @vFI0+7.3,vCLL+35.7 Say xFDE Font "&mLetAri",9 Style "NQ" Size 1,12.4 Color &mColSc3
 ENDCASE
ENDPROC
*
PROCEDURE Esc_1300c
 SELECT deT_fact
 STORE f1301cod TO vcOd
 STORE f1301can TO vcAn
 IF mcAj=1 .AND. vsRr=1
      STORE VAL(f1301ref) TO vcAj
 ENDIF
 SELECT seLeccion
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      APPEND BLANK
      REPLACE ftM3cod WITH vcOd
      REPLACE ftM3can WITH vcAn
 ELSE
      DELETE
      PACK
      REINDEX
 ENDIF
 SELECT deT_fact
ENDPROC
*
PROCEDURE Lin_1300c
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
PROCEDURE P00_1300c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 IF wtPo="4"
      DO prEsiona WITH "4", "R_CONS16", mmF1, mmC1
 ELSE
      DO prEsiona WITH "4", "R_CONS15", mmF1, mmC1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_1300a
 IF vsW4=1
      DO coL_fondo
      DO cuAdro WITH vfI0+0.3, vcO0, vfI0+14.1, vcO0+vuCo
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coL_beige
      @ vfI0+00.4, vcLl+01.3 TO vfI0+6.85, vcO0+vuCo-0.9 PATTERN 1
      @ vfI0+08.9, vcO0+00.1 TO vfI0+14.0, vcO0+vuCo-0.9 PATTERN 1
      @ vfI0+08.9, vcO0+00.1 TO vfI0+14, vcO0+0.1 COLOR RGB(128,128,128,0,0,0)
      @vFI0+05.5,vCO0+01.1 Say "L.Entrega"                Font "&mLetAri",9 Style "BT"
      @vFI0+07.0,vCO0+01.1 Say "Distr/Dpto"               Font "&mLetAri",9 Style "NT"
      @vFI0+09.3,vCLL+32.3 Say "I.G.V."                   Font "&mLetAri",9 Style "BT"
      @vFI0+12.5,vCO0+01.1 Say "Dcto.Gral:"               Font "&mLetAri",9 Style "BT"
      @vFI0+12.5,vCO0+58.0 Say "% Dcto.x Tipo de Cliente" Font "&mLetAri",9 Style "NT" Color &mColPlP
      @vFI0+12.5,vCO0+96.4 Say "% Dcto.x Cliente"         Font "&mLetAri",9 Style "NT" Color &mColPlP
      DO coLbln
      SET READBORDER ON
      @vFI0+05.5,vCO0+13.5 Edit xLUG Font "&mLetAri",9 Style "NQ" Size 1,102,70
      @vFI0+07.0,vCO0+13.5 Edit xLUD Font "&mLetAri",9 Style "NQ" Size 1,030,25
      @vFI0+07.0,vCO0+45.0 Edit xLUP Font "&mLetAri",9 Style "NQ" Size 1,030,25
      DO coLsc6
      @vFI0+12.5,vCO0+043.5 Get xPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
      @vFI0+12.5,vCO0+013.5 Get xSWG Font "&mLetAri",9 Style "NQ" Default xSWG Size 1,4,.1 Function "*RHT x Porcentaje;x Monto" Color RGB(0,0,0,235,231,222)
      @vFI0+12.5,vCO0+085.5 Get xDTC Font "&mLetAri",9 Style "NQ" Size 1,07.9 Pict "999.99" Color ,RGB(0,0,0,235,231,222)
      @vFI0+12.5,vCO0+115.5 Get xDCL Font "&mLetAri",9 Style "NQ" Size 1,07.9 Pict "999.99" Color ,RGB(0,0,0,235,231,222)
      @vFI0+09.3,vCLL+039.4 Get xPIG Font "&mLetAri",9 Style "NQ" Size 1,7.3 Pict  "99.99" Color ,&mCol_Beige
      DO p01_1300c
      DO boT_1300c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_fondo
 @ ifFs-1.3, vcO3 TO ffFs+3.25, vcO3+vuC1 PATTERN 1
 DO coLsc7
 @ ifFs-1.3, vcO3 TO ifFs-0.20, vcO3+vuC1 PATTERN 1
 @ ffFs+1.1, vcO3 TO ffFs+3.35, vcO3+vuC1 PATTERN 1
 DO coLsc1
 @ ffFs+3.6, vcO3 TO ffFs+6.40, vcO3+vuC1 PATTERN 1
 @ ffFs+4.9, vcO3 TO ffFs+4.90, vcO3+vuC1
 @fFFS+3.7,vCO3+0.4 Say "Producto:"       Font "&mLetAri",9 Style "NQ"
 DO coL_fondo
 @fFFS+6.6,vCO3+vUC1-45.4 Say " Usuario:" Font "&mLetAri",9 Style "BQ" Size 1,36
 @fFFS+6.6,vCO3+vUC1-34.4 Say xUSU        Font "&mLetAri",9 Style "BQ" Size 1,28 Pict "@S31"
 DO coLsc1
 @ ffFs+1.1, vcO3+011.0 TO ffFs+3.4, vcO3+011.0
 @ ffFs+1.1, vcO3+029.6 TO ffFs+3.4, vcO3+029.6
 @ ffFs+1.1, vcO3+047.6 TO ffFs+3.4, vcO3+047.6
 @ ffFs+1.1, vcO3+065.6 TO ffFs+3.4, vcO3+065.6
 @ ffFs+1.1, vcO3+083.6 TO ffFs+3.4, vcO3+083.6
 @ ffFs+1.1, vcO3+101.6 TO ffFs+3.4, vcO3+101.6
 @ ffFs+1.1, vcO3+119.6 TO ffFs+3.4, vcO3+119.6
 @ ffFs+1.1, vcO3+137.6 TO ffFs+3.4, vcO3+137.6
 @ ffFs+1.1, vcO3+155.6 TO ffFs+3.4, vcO3+155.6
 @ ffFs+3.6, vcO3+011.0 TO ffFs+6.3, vcO3+011.0
 @ ffFs+3.6, vcO3+103.0 TO ffFs+4.9, vcO3+103.0
 @ ffFs+3.6, vcO3+114.0 TO ffFs+4.9, vcO3+114.0
 @ ffFs+3.6, vcO3+156.3 TO ffFs+4.9, vcO3+156.3
 @ ffFs+4.9, vcO3+029.9 TO ffFs+6.3, vcO3+029.9
 @ ffFs+4.9, vcO3+037.4 TO ffFs+6.3, vcO3+037.4
 @ ffFs+4.9, vcO3+046.8 TO ffFs+6.3, vcO3+046.8
 @ ffFs+4.9, vcO3+061.4 TO ffFs+6.3, vcO3+061.4
 @ ffFs+4.9, vcO3+083.4 TO ffFs+6.3, vcO3+083.4
 @fFFS+3.7,vCO3+104.0 Say "Referen:"            Font "&mLetAri",9 Style "NT"
 @fFFS+5.2,vCO3+084.0 Say "Medidas:"            Font "&mLetAri",9 Style "NT"
 DO coLsc7
 @iFFS-1.3,vCO3+000.8 Say "Ite"                 Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+004.2 Say "Descripción impresa" Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+076.5 Say "Cantidad"            Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+088.4 Say "Uni.Inv."            Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+098.4 Say "Refer."              Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+110.5 Say "m3 o p2"             Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+124.0 Say "Unid.Vta"            Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+137.0 Say "Código"              Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+150.0 Say "Precio Unitario"     Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+167.0 Say "%Dcto."              Font "&mLetAri",9 Style "NT"
 @iFFS-1.3,vCO3+179.0 Say "Precio Total"        Font "&mLetAri",9 Style "NT"
 @fFFS+1.2,vCO3+000.1 Say "Totales:"            Font "&mLetAri",9 Style "BT"
 @fFFS+2.2,vCO3+014.9 Say "Total Ítems"         Font "&mLetAri",9 Style "NT"
 @fFFS+2.2,vCO3+030.1 Say "Dcto.x Tip/Clien"    Font "&mLetAri",9 Style "NT"
 @fFFS+2.2,vCO3+049.5 Say "Dcto.x Cliente"      Font "&mLetAri",9 Style "NT"
 @fFFS+2.2,vCO3+067.6 Say "Dcto.General"        Font "&mLetAri",9 Style "NT"
 @fFFS+2.2,vCO3+087.2 Say "Total Dctos."        Font "&mLetAri",9 Style "NT"
 DO coLblz
 @fFFS+2.2,vCO3+108.4 Say "Neto"                Font "&mLetAri",9 Style "NT"
 @fFFS+2.2,vCO3+125.9 Say "I.G.V."              Font "&mLetAri",9 Style "NT"
 DO coLsc1
 @fFFS+5.2,vCO3+30.5 Say "%Dct:"                Font "&mLetAri",9 Style "NT"
 @fFFS+5.2,vCO3+00.0 Say "Prec.Unit:"           Font "&mLetAri",9 Style "NT" Color 1
 @fFFS+5.2,vCO3+47.4 Say "Precio Total:"        Font "&mLetAri",9 Style "NT" Color 4
 DO liN_1300c WITH ifFs-1.3, ffFs+1.15
 SET COLOR TO GR+/GR
 STORE vfI0-0.5 TO vfI0
 DO CASE
      CASE xtDo="TK"
           @vFI0-1.4,vCO0+0.6 Say "Ticket No.:"                             +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="TF"
           @vFI0-1.4,vCO0+0.6 Say "Ticket Factura No.:"                     +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="TB"
           @vFI0-1.4,vCO0+0.6 Say "Ticket Boleta No.:"                      +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="FA"
           @vFI0-1.4,vCO0+0.6 Say "Factura No.:"                            +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="FE"
           @vFI0-1.4,vCO0+0.6 Say "Factura Electrónica No. F:"              +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="FC"
           @vFI0-1.4,vCO0+0.6 Say "Factura Electrónica SOL No. E:"          +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="BO"
           @vFI0-1.4,vCO0+0.6 Say "Boleta de Venta No.:"                    +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="BE"
           @vFI0-1.4,vCO0+0.6 Say "Boleta de Venta Electrónica No. B:"      +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="BC"
           @vFI0-1.4,vCO0+0.6 Say "Boleta de Venta Electrónica SOL No. EB:" +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE xtDo="NP"
           @vFI0-1.4,vCO0+0.6 Say "Nota de Pedido No.:"                     +xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
 ENDCASE
 STORE vfI0+0.5 TO vfI0
 DO toT_1300c
 DO boT_1300c
 IF vtDo="CT" .AND. wtPo$"15"
      DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE P01_1300c
 DO coL_fondo
 IF LEN(ALLTRIM(xcLi))=0
      @vFI0+1.1,vCO0+1.1 Say "Cl.Compl" Font "&mLetAri",9 Style "BQ"
 ELSE
      @vFI0+1.1,vCO0+1.1 Say "Cliente"  Font "&mLetAri",9 Style "BQ"
 ENDIF
 @vFI0+2.5,vCO0+1.1 Say "Dirección"   Font "&mLetAri",9 Style "NQ"
 @vFI0+4.0,vCO0+1.1 Say "Distr/Dpto"  Font "&mLetAri",9 Style "NQ"
 DO coL_beige
 @vFI0+09.5,vCO0+1.1 Say "G.Remision" Font "&mLetAri",9 Style "BQ"
 @vFI0+11.0,vCO0+1.1 Say "Observac"   Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE vsW5=1
           DO coL_beige
      CASE vsW5=2
           DO coLsc3
 ENDCASE
 @ vfI0+00.40, vcLl+01.3 TO vfI0+6.85, vcO0+vuCo-0.9 PATTERN 1 PEN 0
 @ vfI0+07.25, vcLl-41.4 TO vfI0+8.45, vcLl-33.4 PATTERN 1 PEN 0
 @ vfI0+07.25, vcLl+23.8 TO vfI0+8.45, vcLl+35.4 PATTERN 1 PEN 0
 @vFI0+01.00,vCLL+02.3 Say "Emisión"    Font "&mLetAri",9 Style "BQ"
 @vFI0+01.00,vCLL+26.3 Say "T.Cambio"   Font "&mLetAri",9 Style "NQ"
 @vFI0+02.50,vCLL+02.3 Say "F.Pago"     Font "&mLetAri",9 Style "BQ"
 @vFI0+04.10,vCLL+02.3 Say "Vended"     Font "&mLetAri",9 Style "BQ"
 @vFI0+05.70,vCLL+02.3 Say "Técn/Mail"  Font "&mLetAri",9 Style "BQ"
 @vFI0+07.30,vCLL-40.9 Say "Titular"    Font "&mLetAri",9 Style "BQ"
 @vFI0+07.30,vCLL+24.3 Say "Fec.Desp"   Font "&mLetAri",9 Style "BQ"
 DO coL_fondo
 IF vsW5=2 .AND. (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC" .OR. vtDo="PC"  ;
    .OR. vtDo="TF" .OR. (vtDo="TK" .AND. LEN(ALLTRIM(xrUc))<>0))
      DO coLsc3
 ENDIF
 @vFI0+4,vCLL-40.7 Say "RUC" Font "&mLetAri",9 Style "NQ"
 DO coL_fondo
 IF vsW5=2 .AND. (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC" .OR. vtDo="TB"  ;
    .OR. (vtDo="TK" .AND. LEN(ALLTRIM(xrUc))=0))
      DO coLsc3
 ENDIF
 DO CASE
      CASE xtDi$"16"
           @vFI0+4,vCLL-18.2 Say "DNI" Font "&mLetAri",9 Style "NQ"
      CASE xtDi="4"
           @vFI0+4,vCLL-18.2 Say "C.E" Font "&mLetAri",9 Style "NQ"
      CASE xtDi="7"
           @vFI0+4,vCLL-18.2 Say "Pas" Font "&mLetAri",9 Style "NQ"
      CASE xtDi="A"
           @vFI0+4,vCLL-18.2 Say "C.P" Font "&mLetAri",9 Style "NQ"
      OTHERWISE
           @vFI0+4,vCLL-18.2 Say "Otr" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 DO coL_fondo
 IF vsW5=2
      DO coLsc3
 ENDIF
 @fFFS+7.7,vCO3+vUC1-45.4 Say " Fecha:" Font "&mLetAri",9 Style "BQ" Size 1,10
 @fFFS+7.7,vCO3+vUC1-19.4 Say " Hora:"  Font "&mLetAri",9 Style "BQ" Size 1,7
 @1,1 Say " "                           Font "&mLetAri",9 Style "BT"
 DO p02_1300c
ENDPROC
*
PROCEDURE P02_1300c
 PRIVATE ptMn
 STORE 46.7 TO ptMn
 DO CASE
      CASE vsW5=1
           DO coL_beige
      CASE vsW5=2
           DO coLsc3
 ENDCASE
 SET READBORDER ON
 @vFI0+2.5,vCLL+12.6 Edit xNFP Font "&mLetAri",9 Style "NQ" Size 1,pTMN+4,50
 @vFI0+4.0,vCLL+12.6 Edit xNVE Font "&mLetAri",9 Style "NQ" Size 1,pTMN+4,70
 @vFI0+5.5,vCLL+12.6 Edit xNTE Font "&mLetAri",9 Style "NQ" Size 1,pTMN,70
 @vFI0+7.3,vCLL-33.2 Edit xTIT Font "&mLetAri",9 Style "NQ" Size 1,5.9
 @vFI0+7.3,vCLL-17.7 Edit xNTT Font "&mLetAri",9 Style "NQ" Size 1,40,70
 DO CASE
      CASE vsW5=2 .AND. (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC" .OR.  ;
           vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC" .OR. vtDo="TF" .OR.  ;
           vtDo="TB" .OR. (vtDo="TK" .AND. LEN(ALLTRIM(xrUc))=0))
           DO coLsc3
      OTHERWISE
           DO coLbln
 ENDCASE
 @vFI0+1.0,vCO0+13.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,102,70
 @vFI0+2.5,vCO0+13.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,102,70
 @vFI0+4.0,vCO0+13.5 Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,030,25
 @vFI0+4.0,vCO0+45.0 Edit xDEP Font "&mLetAri",9 Style "NQ" Size 1,030,25
 DO CASE
      CASE vsW5=1
           @vFI0+1.0,vCLL+12.7      Get xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
           @vFI0+1.0,vCLL+38.4      Get xTCA Font "&mLetAri",9 Style "NQ" Size 1,8.3  Color ,&mCol_Beige Pict "99.999"
           @vFI0+7.3,vCLL+35.7      Get xFDE Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mCol_Beige
           @fFFS+7.7,vCO3+vUC1-34.4 Get xDAT Font "&mLetAri",9 Style "BQ" Size 1,12   Color ,&mCol_Fondo
           @fFFS+7.7,vCO3+vUC1-11.4 Get xTIM Font "&mLetAri",9 Style "BQ" Size 1,08.5 Color ,&mCol_Fondo
      CASE vsW5=2
           @vFI0+1.0,vCLL+12.7      Get xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColSc3
           @vFI0+1.0,vCLL+38.4      Get xTCA Font "&mLetAri",9 Style "NQ" Size 1,8.3  Color ,&mColSc3 Pict "99.999"
           @vFI0+7.3,vCLL+35.7      Get xFDE Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColSc3
           @fFFS+7.7,vCO3+vUC1-34.4 Get xDAT Font "&mLetAri",9 Style "BQ" Size 1,12   Color ,&mColSc3
           @fFFS+7.7,vCO3+vUC1-11.4 Get xTIM Font "&mLetAri",9 Style "BQ" Size 1,08.5 Color ,&mColSc3
 ENDCASE
 DO CASE
      CASE vsW5=2
           DO coLsc3
      OTHERWISE
           DO coLbln
 ENDCASE
 @vFI0+09.5,vCO0+14.3 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
 @vFI0+11.0,vCO0+14.3 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
 DO CASE
      CASE vsW5=2 .AND. (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC" .OR.  ;
           vtDo="PC" .OR. vtDo="TF" .OR. (vtDo="TK" .AND.  ;
           LEN(ALLTRIM(xrUc))<>0))
           @vFI0+4,vCLL-34.8 Get xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColSc3
      CASE LEN(ALLTRIM(xcLi))<>0 .AND. vsW5=1
           @vFI0+4,vCLL-34.8 Get xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,RGB(0,0,0,235,231,222)
      OTHERWISE
           @vFI0+4,vCLL-34.8 Get xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
 ENDCASE
 DO CASE
      CASE vsW5=2 .AND. (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC" .OR.  ;
           vtDo="TB" .OR. (vtDo="TK" .AND. LEN(ALLTRIM(xrUc))<>0))
           @vFI0+4,vCLL-13 Get xDNI Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99999999"    Color ,&mColSc3
      CASE LEN(ALLTRIM(xcLi))<>0 .AND. vsW5=1
           @vFI0+4,vCLL-13 Get xDNI Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99999999"    Color ,RGB(0,0,0,235,231,222)
      OTHERWISE
           @vFI0+4,vCLL-13 Get xDNI Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99999999"    Color ,&mColBlN
 ENDCASE
 SET READBORDER OFF
 READ TIMEOUT 0.1
ENDPROC
*
PROCEDURE Bot_1300c
 STORE vfI0+07.25 TO vfB1, vfB2
 STORE vfI0+02.40 TO vfB3
 STORE vfI0+03.90 TO vfB4
 STORE vfI0+05.40 TO vfB5, vfB6
 STORE vcLl-26.60 TO vcB1
 STORE vcB1+04.00 TO vcB2
 STORE vcO0+180.5 TO vcB3
 STORE vcO0+180.5 TO vcB4
 STORE vcO0+176.5 TO vcB5
 STORE vcB5+004.0 TO vcB6
 DO CASE
      CASE vsW5=2
           DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
      OTHERWISE
           DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW5=2 .AND. LEN(ALLTRIM(xtIt))<>0
           DO prEsiona WITH "1", "DESCAR", vfB2, vcB2
      OTHERWISE
           DO prEsiona WITH "3", "DESCAR", vfB2, vcB2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW5=2
           DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
      OTHERWISE
           DO prEsiona WITH "3", "CONSUL", vfB3, vcB3
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW5=2
           DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
      OTHERWISE
           DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW5=2
           DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
      OTHERWISE
           DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW5=2 .AND. LEN(ALLTRIM(xtEc))<>0
           DO prEsiona WITH "1", "DESCAR", vfB6, vcB6
      OTHERWISE
           DO prEsiona WITH "3", "DESCAR", vfB6, vcB6
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tot_1300c
 DO coLsc7
 @fFFS+1.2,vCO3+012.2 Say tVAL           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.2,vCO3+030.2 Say tDC1           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.2,vCO3+048.2 Say tDC2           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.2,vCO3+066.2 Say tDC3           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.2,vCO3+084.2 Say tDC1+tDC2+tDC3 Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.2,vCO3+102.2 Say xNET           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 @fFFS+1.2,vCO3+120.2 Say xIGV           Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
 DO CASE
      CASE vsW5=1
           DO coLsc7
      CASE vsW5=2
           DO coLsc3
 ENDCASE
 @fFFS+2.2,vCO3+141.9 Say "Total "+xSIG Font "&mLetAri",9 Style "BQ"
 @fFFS+1.3,vCO3+138.0 Say " "           Font "&mLetAri",9 Style "BQ" Size 1,1
 @fFFS+1.3,vCO3+154.2 Say " "           Font "&mLetAri",9 Style "BQ" Size 1,1
 @fFFS+1.3,vCO3+138.2 Say xTOT          Font "&mLetAri",9 Style "BQ" Pict "99999,999.99" Size 1,14
ENDPROC
*
PROCEDURE Tt1_1300c
 PRIVATE ptT1
 DO coLbln
 STORE xtOt TO ptT1
 STORE k_Enter TO mkEy
 @fFFS+1.3,vCO3+138.2 Get pTT1 Font "&mLetAri",9 Style "BQ" Pict "99999999.99" Size 1,14 Color ,&mColBlN
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 IF mkEy=k_Enter
      STORE ptT1 TO xtOt
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT caB_fact
      REPLACE f1300tot WITH ptT1
      REPLACE f1300net WITH f1300tot/(1+(f1300pig/100))
      REPLACE f1300igv WITH f1300tot-f1300net
      UNLOCK
      IF vsW1=2
           SELECT teMporal_doc
           REPLACE f1300tot WITH ptT1
           REPLACE f1300net WITH f1300tot/(1+(f1300pig/100))
           REPLACE f1300igv WITH f1300tot-f1300net
      ENDIF
      STORE f1300net TO xnEt
      STORE f1300igv TO xiGv
 ENDIF
 DO toT_1300c
 STORE 99 TO mkEy
 RELEASE ptT1
ENDPROC
*
PROCEDURE Cam_1300c
 SELECT seLeccion
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE "No se puede modificar cantidad de un Item no seleccionado..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(1)
      RETURN
 ENDIF
 SELECT deT_fact
 STORE f1301can TO ccAn
 IF mcAj=1
      STORE VAL(ALLTRIM(f1301ref)) TO ccAj
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
                DO hl2_1200c IN PVC1200C
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
                     OTHERWISE
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
 SELECT deT_fact
 DO diS_1300c WITH "R"
 IF mkEy=k_Down .OR. mkEy=k_Up .OR. mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Tit_1300c
 = INKEY(0.01)
 SELECT clIentes
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Titulares registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(xnTt)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB9 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE f1101cod TO xtIt
      STORE f1101nom TO xnTt
      STORE f1101ruc TO crUc
      STORE f1101ele TO cdNi
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      IF vtDo<>"CT"
           SELECT peNd_vtas
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc
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
      SELECT caB_fact
      IF ALLTRIM(f1300ruc)+"*"=ALLTRIM(crUc)+"*" .OR. ALLTRIM(f1300ele)+ ;
         "*"=ALLTRIM(cdNi)+"*" .AND. (LEN(ALLTRIM(f1300ruc))<>0 .OR.  ;
         LEN(ALLTRIM(f1300ele))<>0)
           REPLACE f1300cli WITH xtIt
           REPLACE f1300nom WITH xnTt
           REPLACE f1300tit WITH SPACE(04)
           REPLACE f1300ntt WITH SPACE(70)
      ELSE
           REPLACE f1300cli WITH SPACE(04)
           REPLACE f1300suc WITH SPACE(02)
           REPLACE f1300tit WITH xtIt
           REPLACE f1300ntt WITH xnTt
      ENDIF
      UNLOCK
      STORE f1300cli TO xcLi
      STORE f1300suc TO xsUc
      STORE f1300tit TO xtIt
      STORE f1300ntt TO xnTt
      IF vsW1=02
           SELECT teMporal_doc
           REPLACE f1300cli WITH xcLi
           REPLACE f1300nom WITH xnOm
           REPLACE f1300tit WITH xtIt
           REPLACE f1300ntt WITH xnTt
      ENDIF
      SELECT clIentes
      SEEK xtIt
      STORE f1101tip TO vtCl
      SELECT tiPo_cli
      SEEK vtCl
      STORE f9110nti TO vnTi
      IF vtDo<>"CT"
           SELECT peNd_vtas
           IF  .NOT. EOF()
                REPLACE f3500cli WITH xcLi
                REPLACE f3500suc WITH xsUc
                REPLACE f3500tit WITH xtIt
                REPLACE f3500nti WITH xnTt
                REPLACE f3500tcl WITH vtCl
                REPLACE f3500ntc WITH vnTi
                UNLOCK
           ENDIF
      ENDIF
      DO p01_1300c
 ENDIF
 DO boT_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT clIentes
 STORE 99 TO mkEy
 DO orD_0000a WITH "1101", "V", "F1101COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Fpa_1300c
 = INKEY(0.01)
 SELECT fpAgo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Formas de Pago registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9112", "U", "F9112NFP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(xnFp)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB0 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE f9112fpa TO xfPa
      STORE f9112nfp TO xnFp
      STORE f9112dia TO xdIa
      STORE f9112tip TO xtFp
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f1300fpa WITH xfPa
      REPLACE f1300nfp WITH xnFp
      REPLACE f1300dia WITH xdIa
      REPLACE f1300tfp WITH xtFp
      UNLOCK
      IF vsW1=02
           SELECT teMporal_doc
           REPLACE f1300fpa WITH xfPa
           REPLACE f1300nfp WITH xnFp
           REPLACE f1300dia WITH xdIa
           REPLACE f1300tfp WITH xtFp
      ENDIF
      IF vtDo<>"CT"
           SELECT peNd_vtas
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f3500fpa WITH xfPa
                REPLACE f3500nfp WITH xnFp
                REPLACE f3500fve WITH f3500fem+xdIa
                UNLOCK
           ENDIF
      ENDIF
      DO p02_1300c
 ENDIF
 DO boT_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT fpAgo
 STORE 99 TO mkEy
 DO orD_0000a WITH "9112", "U", "F9112FPA", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Ven_1300c
 = INKEY(0.01)
 SELECT veNdedores
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Vendedores registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(xnVe)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtBa REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE f9113cod TO xvEn
      STORE f9113nom TO xnVe
      STORE f9113com TO xcOm
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f1300ven WITH xvEn
      REPLACE f1300nve WITH xnVe
      REPLACE f1300com WITH xcOm
      UNLOCK
      IF vsW1=02
           SELECT teMporal_doc
           REPLACE f1300ven WITH xvEn
           REPLACE f1300nve WITH xnVe
           REPLACE f1300com WITH xcOm
      ENDIF
      IF vtDo<>"CT"
           SELECT peNd_vtas
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          UNLOCK ALL
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f3500ven WITH xvEn
                REPLACE f3500nve WITH xnVe
                UNLOCK
           ENDIF
      ENDIF
      DO p02_1300c
 ENDIF
 DO boT_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT veNdedores
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Tec_1300c
 = INKEY(0.01)
 SELECT teCnico
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Técnicos de Instalación registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9116", "U", "F9116NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(xnTe)
 SET NEAR OFF
 DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtBb REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE f9116cod TO xtEc
      STORE f9116nom TO xnTe
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f1300tec WITH xtEc
      REPLACE f1300nte WITH xnTe
      UNLOCK
      IF vsW1=02
           SELECT teMporal_doc
           REPLACE f1300tec WITH xtEc
           REPLACE f1300nte WITH xnTe
      ENDIF
      DO p02_1300c
 ENDIF
 DO boT_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teCnico
 STORE 99 TO mkEy
 DO orD_0000a WITH "9116", "U", "F9116COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE BTi_1300c
 = INKEY(0.01)
 SELECT caB_fact
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE SPACE(04) TO xtIt
 STORE SPACE(70) TO xnTt
 STORE f1300cli TO xcLi
 REPLACE f1300tit WITH xtIt
 REPLACE f1300ntt WITH xnTt
 UNLOCK
 IF vsW1=02
      SELECT teMporal_doc
      REPLACE f1300tit WITH xtIt
      REPLACE f1300ntt WITH xnTt
 ENDIF
 IF vtDo<>"CT"
      SELECT peNd_vtas
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f3500tit WITH SPACE(04)
           REPLACE f3500nti WITH SPACE(70)
           REPLACE f3500tcl WITH SPACE(02)
           REPLACE f3500ntc WITH SPACE(50)
           UNLOCK
      ENDIF
 ENDIF
 DO p02_1300c
 DO boT_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE BTe_1300c
 = INKEY(0.01)
 SELECT caB_fact
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE SPACE(02) TO xtEc
 STORE SPACE(50) TO xnTe
 REPLACE f1300tec WITH xtEc
 REPLACE f1300nte WITH xnTe
 UNLOCK
 IF vsW1=02
      SELECT teMporal_doc
      REPLACE f1300tec WITH xtEc
      REPLACE f1300nte WITH xnTe
 ENDIF
 DO p02_1300c
 DO boT_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dir_1300c
 PRIVATE pdIr
 DO coLbln
 SET READBORDER ON
 STORE xdIr TO pdIr
 STORE k_Enter TO mkEy
 @vFI0+2.5,vCO0+13.5 Edit pDIR Font "&mLetAri",9 Style "NQ" Size 1,102,70
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      STORE pdIr TO xdIr
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f1300dir WITH xdIr
      UNLOCK
 ENDIF
 DO coLsc3
 @vFI0+2.5,vCO0+13.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,102,70
 READ TIMEOUT 0.01
 STORE 99 TO mkEy
 RELEASE pnOm
ENDPROC
*
PROCEDURE Ruc_1300c
 PRIVATE prUc
 DO coL_fondo
 SET READBORDER ON
 STORE xrUc TO prUc
 STORE k_Enter TO mkEy
 @vFI0+4,vCLL-34.8 Get pRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColBlN
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      STORE prUc TO xrUc
      IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
           DO vaL_ruc IN FAC0000A WITH prUc
           IF mkEy<>99
                DO veR_ruc IN FAC0000A WITH "1", prUc
                IF mkEy=1733
                     STORE "RUC no se encuentra en la BASE DE SUNAT" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ENDIF
      ENDIF
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f1300ruc WITH xrUc
      IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
           REPLACE f1300nom WITH vnOm
           REPLACE f1300dir WITH vdIr
           REPLACE f1300dis WITH vdIs
           REPLACE f1300dep WITH vdEp
           STORE vnOm TO xnOm
           STORE vdIr TO xdIr
           STORE vdIs TO xdIs
           STORE vdEp TO xdEp
      ENDIF
      UNLOCK
      IF f1300est>"1"
           SELECT peNd_vtas
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f3500ruc WITH xrUc
           IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                REPLACE f3500nom WITH vnOm
           ENDIF
           UNLOCK
      ENDIF
 ENDIF
 @vFI0+4,vCLL-34.8 Get xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "99999999999" Color ,&mColSc3
 READ TIMEOUT 0.01
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO coLbln
      @vFI0+2.5,vCO0+13.5 Say xDIR Font "&mLetAri",9 Style "NQ" Size 1,102 Pict "@S70"
      @vFI0+4.0,vCO0+13.5 Say xDIS Font "&mLetAri",9 Style "NQ" Size 1,030 Pict "@S25"
      @vFI0+4.0,vCO0+45.0 Say xDEP Font "&mLetAri",9 Style "NQ" Size 1,030 Pict "@S25"
      IF vsW5=2 .AND. (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC" .OR. vtDo= ;
         "TB" .OR. (vtDo="TK" .AND. LEN(ALLTRIM(xrUc))=0))
           DO coLsc3
      ENDIF
      @vFI0+1.0,vCO0+13.5 Say xNOM Font "&mLetAri",9 Style "NQ" Size 1,102 Pict "@S70"
 ENDIF
 STORE 99 TO mkEy
 RELEASE prUc
ENDPROC
*
PROCEDURE Dni_1300c
 PRIVATE pdNi
 DO coL_fondo
 SET READBORDER ON
 STORE xdNi TO pdNi
 STORE k_Enter TO mkEy
 @vFI0+4,vCLL-13 Get pDNI Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99999999"    Color ,&mColBlN
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      STORE pdNi TO xdNi
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f1300ele WITH xdNi
      UNLOCK
 ENDIF
 @vFI0+4,vCLL-13 Get xDNI Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "99999999" Color ,&mColSc3
 READ TIMEOUT 0.01
 STORE 99 TO mkEy
 RELEASE pdNi
ENDPROC
*
PROCEDURE Nom_1300c
 PRIVATE pnOm
 DO coLbln
 SET READBORDER ON
 STORE xnOm TO pnOm
 STORE k_Enter TO mkEy
 @vFI0+1.0,vCO0+13.5 Edit pNOM Font "&mLetAri",9 Style "NQ" Size 1,102,70
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      STORE pnOm TO xnOm
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f1300nom WITH xnOm
      UNLOCK
      IF f1300est>"1"
           SELECT peNd_vtas
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f3500nom WITH xnOm
           UNLOCK
      ENDIF
 ENDIF
 DO coLsc3
 @vFI0+1.0,vCO0+13.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,102,70
 READ TIMEOUT 0.01
 STORE 99 TO mkEy
 RELEASE pnOm
ENDPROC
*
PROCEDURE Com_1300c
 PRIVATE pfIl, pcOl, pfR1, pfR2, pfR3, pfR4, pcOm
 STORE vfI0+03.3 TO pfIl
 STORE vcLl TO pcOl
 SAVE SCREEN TO vpAn_12
 STORE "Cambio de Comisión" TO pfR1
 STORE "Se cambia comisión en este  " TO pfR2
 STORE "documento mas no es genérico" TO pfR3
 STORE "Comision:" TO pfR4
 DO bmP_dial WITH "5", pfIl, pcOl, pfR1, pfR2, pfR3, pfR4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 SET READBORDER ON
 STORE xcOm TO pcOm
 STORE k_Enter TO mkEy
 @pFIL+4.5,pCOL+18 Get pCOM Font "&mLetAri",9 Style "NQ" Size 1,9 Color ,&mColBlN Pict "99.999"
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      STORE pcOm TO xcOm
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           RESTORE SCREEN FROM vpAn_12
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RESTORE SCREEN FROM vpAn_12
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT caB_fact
      REPLACE f1300com WITH pcOm
      UNLOCK
      IF vsW1=02
           SELECT teMporal_doc
           REPLACE f1300com WITH pcOm
      ENDIF
 ENDIF
 RESTORE SCREEN FROM vpAn_12
 DO p02_1300c
 STORE 99 TO mkEy
 RELEASE pfIl, pcOl, pfR1, pfR2, pfR3, pfR4, pcOm
ENDPROC
*
PROCEDURE Fem_1300c
 PRIVATE pfEm, pfVe
 DO coL_fondo
 SET READBORDER ON
 STORE xfEm TO pfEm
 STORE k_Enter TO mkEy
 @vFI0+1,vCLL+12.7 Get pFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      IF AT(" ", DTOC(pfEm))<>0
           STORE xfEm TO pfEm
      ENDIF
      STORE pfEm TO xfEm
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT caB_fact
      STORE xfEm+f1300dia TO pfVe
      REPLACE f1300fem WITH pfEm
      UNLOCK
      IF vsW1=2
           SELECT teMporal_doc
           REPLACE f1300fem WITH pfEm
      ENDIF
      IF f1300est>"1"
           SELECT peNd_vtas
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f3500fem WITH pfEm
           REPLACE f3500fve WITH pfVe
           UNLOCK
      ENDIF
 ENDIF
 DO p02_1300c
 STORE 99 TO mkEy
 RELEASE pfEm, pfVe
ENDPROC
*
PROCEDURE Fve_1300c
 PRIVATE pfIl, pcOl, pfR1, pfR2, pfR3, pfR4, pfVe, pdIa
 STORE vfI0+03.3 TO pfIl
 STORE vcLl TO pcOl
 SAVE SCREEN TO vpAn_12
 STORE "Cambio la Fecha de Vencimiento" TO pfR1
 STORE "Se cambia sin cambiar la For-" TO pfR2
 STORE "ma de Pago. Luego hay que" TO pfR3
 STORE "recalcular:" TO pfR4
 DO bmP_dial WITH "5", pfIl, pcOl, pfR1, pfR2, pfR3, pfR4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 SET READBORDER ON
 STORE xfEm+xdIa TO pfVe
 STORE xdIa TO pdIa
 STORE k_Enter TO mkEy
 @pFIL+4.5,pCOL+18 Get pFVE Font "&mLetAri",9 Style "NQ" Size 1,13 Color ,&mColBlN
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      IF AT(" ", DTOC(pfVe))<>0
           STORE xfEm+xdIa TO pfVe
           STORE xdIa TO pdIa
      ENDIF
      STORE pfVe-xfEm TO pdIa
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           RESTORE SCREEN FROM vpAn_12
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RESTORE SCREEN FROM vpAn_12
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT caB_fact
      REPLACE f1300dia WITH pdIa
      UNLOCK
      IF vsW1=02
           SELECT teMporal_doc
           REPLACE f1300dia WITH pdIa
      ENDIF
      IF f1300est>"1"
           SELECT peNd_vtas
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f3500fve WITH pfVe
           UNLOCK
      ENDIF
 ENDIF
 RESTORE SCREEN FROM vpAn_12
 DO p02_1300c
 STORE 99 TO mkEy
 RELEASE pfIl, pcOl, pfR1, pfR2, pfR3, pfR4, pfVe, pdIa
ENDPROC
*
PROCEDURE Cm1_1300c
 PRIVATE pcM1
 DO coLbln
 SET READBORDER ON
 STORE xcM1 TO pcM1
 STORE k_Enter TO mkEy
 @vFI0+9.5,vCO0+14.3 Edit pCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,70
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      STORE pcM1 TO xcM1
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT caB_fact
      REPLACE f1300cm1 WITH pcM1
      UNLOCK
      IF vsW1=2
           SELECT teMporal_doc
           REPLACE f1300cm1 WITH pcM1
      ENDIF
 ENDIF
 DO p02_1300c
 STORE 99 TO mkEy
 RELEASE pcM1
ENDPROC
*
PROCEDURE Cm2_1300c
 PRIVATE pcM2
 DO coLbln
 SET READBORDER ON
 STORE xcM2 TO pcM2
 STORE k_Enter TO mkEy
 @vFI0+11,vCO0+14.3 Edit pCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,70
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      STORE pcM2 TO xcM2
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT caB_fact
      REPLACE f1300cm2 WITH pcM2
      UNLOCK
      IF vsW1=2
           SELECT teMporal_doc
           REPLACE f1300cm2 WITH pcM2
      ENDIF
 ENDIF
 DO p02_1300c
 STORE 99 TO mkEy
 RELEASE pcM2
ENDPROC
*
PROCEDURE Dat_1300c
 PRIVATE pdAt
 DO coL_fondo
 SET READBORDER ON
 STORE xdAt TO pdAt
 STORE k_Enter TO mkEy
 @fFFS+7.7,vCO3+vUC1-34.4 Get pDAT Font "&mLetAri",9 Style "BQ" Size 1,12 Color ,&mColBlN
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      IF AT(" ", DTOC(pdAt))<>0
           STORE xdAt TO pdAt
      ENDIF
      STORE pdAt TO xdAt
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT caB_fact
      REPLACE f1300dat WITH xdAt
      UNLOCK
      IF vsW1=2
           SELECT teMporal_doc
           REPLACE f1300dat WITH xdAt
      ENDIF
 ENDIF
 DO p02_1300c
 STORE 99 TO mkEy
 RELEASE pdAt
ENDPROC
*
PROCEDURE Tim_1300c
 PRIVATE ptIm
 DO coL_fondo
 SET READBORDER ON
 STORE xtIm TO ptIm
 STORE k_Enter TO mkEy
 @fFFS+7.7,vCO3+vUC1-11.4 Get pTIM Font "&mLetAri",9 Style "BQ" Size 1,08.5 Color ,&mColBlN
 SET CONFIRM ON
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET CONFIRM OFF
 SET READBORDER OFF
 IF mkEy=k_Enter
      IF AT(" ", ptIm)<>0
           STORE xtIm TO ptIm
      ENDIF
      STORE ptIm TO xtIm
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           STORE "Documento ha sido eliminado..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT caB_fact
      REPLACE f1300tim WITH ptIm
      UNLOCK
      IF vsW1=2
           SELECT teMporal_doc
           REPLACE f1300tim WITH ptIm
      ENDIF
 ENDIF
 DO p02_1300c
 STORE 99 TO mkEy
 RELEASE ptIm
ENDPROC
*
PROCEDURE Rs1_1300c
 DO CASE
      CASE vsW1=1
           SELECT caB_fact
      CASE vsW1=2
           SELECT teMporal_doc
 ENDCASE
 DO orD_1300b IN PVC1300B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vrEc TO crEc
 DO rs1_1300b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO CASE
      CASE vsW1=1
           SELECT caB_fact
           DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
      CASE vsW1=2
           SELECT teMporal_doc
           DO orD_0000a WITH "TMP", "V", "F1300DOC", "A"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 STORE crEc TO vrEc
 DO rs2_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs2_1300c
 STORE vrEc TO crEc
 IF vsW4=1
      RESTORE SCREEN FROM vpAn_11
 ENDIF
 DO p00_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      IF f1301ite=vrEc
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
 DO paN_1300c
 STORE crEc TO vrEc
 STORE cfFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_1300c WITH "R"
ENDPROC
*
PROCEDURE Per_1300c
 SELECT caB_fact
 STORE 99 TO mkEy
 DO orD_0000a WITH "1300", "V", "F1300CM1", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+":"+vsEr+"-"+vdOc
 IF  .NOT. EOF() .AND. f1300est<>"9"
      STORE "No se puede GENERAR otra Percepción, ya está generada la sgte.:"+ ;
            f1300tdo+":"+f1300ser+"-"+f1300doc TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 STORE f1300cli TO vcLi
 SELECT clIentes
 SEEK vcLi
 IF  .NOT. EOF()
      STORE f1101ppe TO vpPe
 ELSE
      STORE mpPe TO vpPe
 ENDIF
 DO toT_1300z IN PVI1300Z WITH vtDo, vsEr, vdOc
 IF tpEr=0
      STORE "Documento no está afecto a Percepción" TO mmSj
      DO poNmsj
      STORE 99 TO mkEy
      RETURN
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea Generar Percepción Temporal?"
 IF moPc$"Ss"
      DO ctA_1300c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cta_1300c
 PRIVATE pcPe, psPe
 DO muE_1300z IN PVI1300Z
 SELECT nuMeracion
 STORE "T"+SUBSTR(vsEr, 2, 2) TO psPe
 SEEK "PC"+psPe
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH "PC"
      REPLACE f9999ser WITH psPe
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK "PC"+psPe
 IF  .NOT. RLOCK()
      DO reG_lock WITH "PC"+psPe
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9999num TO pcPe
 STORE STRTRAN(STR(VAL(pcPe)+1, 7, 0), " ", "0") TO pcPe
 REPLACE f9999num WITH pcPe
 UNLOCK
 SELECT caB_fact
 DO nuEvo_rg
 REPLACE f1300tdo WITH "PC"
 REPLACE f1300ser WITH psPe
 REPLACE f1300doc WITH pcPe
 REPLACE f1300cli WITH vcLi
 REPLACE f1300suc WITH vsUc
 REPLACE f1300ruc WITH vrUc
 REPLACE f1300ele WITH vdNi
 REPLACE f1300nom WITH vnOm
 REPLACE f1300dir WITH vdIr
 REPLACE f1300dis WITH vdIs
 REPLACE f1300dep WITH vdEp
 REPLACE f1300fpa WITH vfPa
 REPLACE f1300nfp WITH vnFp
 REPLACE f1300fem WITH vfEm
 REPLACE f1300dia WITH vdIa
 REPLACE f1300mon WITH vmOn
 REPLACE f1300swg WITH 1
 REPLACE f1300net WITH tnEt
 REPLACE f1300pig WITH vpPe
 REPLACE f1300cm1 WITH vtDo+":"+vsEr+"-"+vdOc
 REPLACE f1300nte WITH vtDo+":"+vsEr+"-"+vdOc
 REPLACE f1300tot WITH tpEr
 REPLACE f1300est WITH "3"
 REPLACE f1300can WITH "2"
 REPLACE f1300usu WITH muSu
 REPLACE f1300dat WITH DATE()
 REPLACE f1300tim WITH TIME()
 REPLACE f1300maq WITH mmAq
 UNLOCK
 SELECT peR_fact
 DO nuEvo_rg
 REPLACE f1305ser WITH psPe
 REPLACE f1305doc WITH pcPe
 REPLACE f1305sr1 WITH vsEr
 REPLACE f1305fac WITH vdOc
 REPLACE f1305fem WITH vfEm
 REPLACE f1305mon WITH vmOn
 REPLACE f1305tot WITH ttOt
 UNLOCK
 SELECT peNd_vtas
 DO nuEvo_rg
 REPLACE f3500tdo WITH "PC"
 REPLACE f3500ser WITH psPe
 REPLACE f3500doc WITH pcPe
 REPLACE f3500ruc WITH vrUc
 REPLACE f3500ven WITH vvEn
 REPLACE f3500nve WITH vnVe
 REPLACE f3500tec WITH "  "
 REPLACE f3500nte WITH vtDo+":"+vsEr+"-"+vdOc
 REPLACE f3500tit WITH vtIt
 REPLACE f3500nti WITH vnTt
 REPLACE f3500cli WITH vcLi
 REPLACE f3500suc WITH vsUc
 REPLACE f3500nom WITH vnOm
 REPLACE f3500tcl WITH vtCl
 REPLACE f3500ntc WITH vnTc
 REPLACE f3500fpa WITH vfPa
 REPLACE f3500nfp WITH vnFp
 REPLACE f3500fem WITH vfEm
 REPLACE f3500fve WITH vfEm+vdIa
 REPLACE f3500mon WITH vmOn
 REPLACE f3500can WITH "2"
 REPLACE f3500pig WITH vpPe
 REPLACE f3500tot WITH tpEr
 REPLACE f3500acu WITH 0.00
 UNLOCK
 SELECT ctAs_tot_vtas
 SEEK "PC"+psPe
 IF EOF()
      DO nuEvo_rg
      REPLACE f3502tdo WITH "PC"
      REPLACE f3502ser WITH psPe
      REPLACE f3502to1 WITH 0
      REPLACE f3502in1 WITH 0
      REPLACE f3502ac1 WITH 0
      REPLACE f3502to2 WITH 0
      REPLACE f3502in2 WITH 0
      REPLACE f3502ac2 WITH 0
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH "PC"+psPe
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 DO CASE
      CASE vmOn=1
           REPLACE f3502to1 WITH f3502to1+tpEr
      CASE vmOn=2
           REPLACE f3502to2 WITH f3502to2+tpEr
 ENDCASE
 UNLOCK ALL
 SEEK vtDo+vsEr+vdOc
 RELEASE pcPe, psPe
ENDPROC
*
PROCEDURE Exc_1300c
 DO xl0_0000a WITH mrAz, "Cotizacion", 9
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(11,9)).inSert
 pxLs.ceLls(02, 01).vaLue = mdIr
 pxLs.ceLls(04, 01).vaLue = "Cotizacion "+vsEr+"-"+vdOc
 pxLs.ceLls(04, 01).foNt.naMe = "Times New Roman"
 pxLs.ceLls(04, 01).foNt.siZe = 15
 pxLs.ceLls(04, 01).foNt.boLd = .T.
 pxLs.ceLls(04, 01).foNt.coLorindex = 1
 pxLs.ceLls(06, 01).vaLue = "Sres:"
 pxLs.ceLls(06, 09).vaLue = vfEm
 pxLs.ceLls(07, 01).vaLue = xnOm
 pxLs.ceLls(09, 01).vaLue = "De nuestra consideración:"
 pxLs.ceLls(10, 01).vaLue = "Les presentamos la siguiente Proforma:"
 pxLs.ceLls(12, 01).vaLue = "Cantidad"
 pxLs.ceLls(12, 02).vaLue = "Unidad"
 pxLs.ceLls(12, 03).vaLue = "Descripción"
 pxLs.ceLls(12, 08).vaLue = "Prec.Unitar"
 pxLs.ceLls(12, 09).vaLue = "Total"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(3)).nuMberformat = "@"
 pxLs.raNge(pxLs.ceLls(04,1), pxLs.ceLls(04,9)).meRge
 pxLs.raNge(pxLs.ceLls(04,1), pxLs.ceLls(04,9)).hoRizontalalignment = 3
 pxLs.raNge(pxLs.ceLls(12,3), pxLs.ceLls(12,7)).meRge
 STORE 13 TO viT1
 STORE 01 TO meN1
 IF FILE("LOGO\LOGO.BMP")
      pxLs.raNge(pxLs.ceLls(1,1), pxLs.ceLls(1,9)).inSert
      pxLs.raNge("A1").seLect
      pxLs.acTivesheet.piCtures.inSert("D:\VITRAL\LOGO\LOGO.BMP").wiDth = 120
      STORE 14 TO viT1
 ENDIF
 DO toT_1300z IN PVI1300Z WITH vtDo, vsEr, vdOc
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 PUBLIC puNi
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_1300z IN FAC0000A
      DO pc2_1300z IN FAC0000A
      pxLs.ceLls(viT1, 01).seLect
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
                STORE f1301can TO vcAn
           OTHERWISE
                pxLs.ceLls(viT1, 01).vaLue = vcAn
                pxLs.ceLls(viT1, 01).hoRizontalalignment = 4
                IF INT(vcAn)<>vcAn
                     pxLs.ceLls(viT1, 9).nuMberformat = "###,###,##0.0000"
                ELSE
                     pxLs.ceLls(viT1, 9).nuMberformat = "###,###,##0"
                ENDIF
                IF AT("-", puNi)<>0
                     pxLs.ceLls(viT1, 2).vaLue = SUBSTR(puNi, AT("-",  ;
                               puNi)+1, 20)
                ELSE
                     pxLs.ceLls(viT1, 2).vaLue = puNi
                ENDIF
                pxLs.ceLls(viT1, 8).vaLue = ROUND(f1301to2/f1301can, 4)
                pxLs.ceLls(viT1, 8).hoRizontalalignment = 4
                pxLs.ceLls(viT1, 8).nuMberformat = "###,###,##0.0000"
                pxLs.ceLls(viT1, 9).vaLue = f1301to2
                pxLs.ceLls(viT1, 9).hoRizontalalignment = 4
                pxLs.ceLls(viT1, 9).nuMberformat = "###,###,##0.00"
      ENDCASE
      pxLs.ceLls(viT1, 03).vaLue = ALLTRIM(f1301dcr)+" "+clAr
      pxLs.raNge(pxLs.ceLls(viT1,3), pxLs.ceLls(viT1,7)).meRge
      STORE viT1+1 TO viT1
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1,9)).boRders(3).weIght = 2
 SELECT caB_fact
 RELEASE puNi
 IF meN1<meNn
      WITH pxLs.raNge(pxLs.ceLls(viT1,8),pxLs.ceLls(viT1,9))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
           .hoRizontalalignment = 4
      ENDWITH
      IF tvAl<>f1300tot
           pxLs.ceLls(viT1, 8).vaLue = "Sub-Total"
           pxLs.ceLls(viT1, 9).vaLue = tvAl
           pxLs.ceLls(viT1, 9).nuMberformat = "###,###,##0.00"
           STORE viT1+1 TO viT1
           STORE meN1+1 TO meN1
           WITH pxLs.raNge(pxLs.ceLls(viT1,8),pxLs.ceLls(viT1,9))
                .boRders.liNestyle = 7
                .boRders(1).weIght = 2
                .boRders(2).weIght = 2
                .boRders(3).weIght = 2
                .boRders(4).weIght = 2
                .foNt.naMe = "Times New Roman"
                .foNt.siZe = 11
                .foNt.boLd = .T.
                .foNt.coLorindex = 1
                .inTerior.coLorindex = 15
                .veRticalalignment = 2
                .hoRizontalalignment = 4
           ENDWITH
           IF tvAl<f1300tot
                pxLs.ceLls(viT1, 8).vaLue = "Redondeo"
           ELSE
                pxLs.ceLls(viT1, 8).vaLue = "Descuento"
           ENDIF
           pxLs.ceLls(viT1, 9).vaLue = f1300tot-tvAl
           pxLs.ceLls(viT1, 9).nuMberformat = "###,###,##0.00"
           STORE viT1+1 TO viT1
           STORE meN1+1 TO meN1
           WITH pxLs.raNge(pxLs.ceLls(viT1,8),pxLs.ceLls(viT1,9))
                .boRders.liNestyle = 7
                .boRders(1).weIght = 2
                .boRders(2).weIght = 2
                .boRders(3).weIght = 2
                .boRders(4).weIght = 2
                .foNt.naMe = "Times New Roman"
                .foNt.siZe = 11
                .foNt.boLd = .T.
                .foNt.coLorindex = 1
                .inTerior.coLorindex = 15
                .veRticalalignment = 2
                .hoRizontalalignment = 4
           ENDWITH
      ENDIF
      IF f1300mon=1
           pxLs.ceLls(viT1, 8).vaLue = "Total S/."
      ELSE
           pxLs.ceLls(viT1, 8).vaLue = "Total US$"
      ENDIF
      pxLs.ceLls(viT1, 9).vaLue = f1300tot
      pxLs.ceLls(viT1, 9).nuMberformat = "###,###,##0.00"
      STORE viT1+1 TO viT1
      STORE meN1+1 TO meN1
      pxLs.ceLls(viT1, 1).vaLue = "Observaciones"
      pxLs.ceLls(viT1, 3).vaLue = f1300cm2
      pxLs.ceLls(viT1, 3).hoRizontalalignment = 1
      STORE viT1+1 TO viT1
      STORE meN1+1 TO meN1
      pxLs.ceLls(viT1, 1).vaLue = "Vendedor"
      pxLs.ceLls(viT1, 3).vaLue = f1300nve
      pxLs.ceLls(viT1, 3).hoRizontalalignment = 1
      STORE viT1+1 TO viT1
      STORE meN1+1 TO meN1
      pxLs.ceLls(viT1, 1).vaLue = "Forma de Pago"
      pxLs.ceLls(viT1, 3).vaLue = f1300nfp
      pxLs.ceLls(viT1, 3).hoRizontalalignment = 1
      IF mcIa="MB"
           STORE viT1+2 TO viT1
           STORE meN1+2 TO meN1
           pxLs.ceLls(viT1, 1).vaLue = "Cta.Cte.BCP"
           pxLs.ceLls(viT1, 3).vaLue = "S/. 191-0216412-0-79"
           STORE viT1+1 TO viT1
           STORE meN1+1 TO meN1
           pxLs.ceLls(viT1, 3).vaLue = "US$ 191-0216502-1-98"
      ENDIF
      STORE viT1+2 TO viT1
      STORE meN1+2 TO meN1
      pxLs.ceLls(viT1, 1).vaLue = "Atentamente"
 ENDIF
 DO xl1_0000a WITH 2
ENDPROC
*
PROCEDURE Clp_1300c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=vfI0+0.8645 .AND. mfIl<=vfI0+2.150 .AND. mcCc>=vcO0+ ;
           0.6000 .AND. mcCc<=vcO0+115.8 .AND. vsW5=2
           DO noM_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+2.3645 .AND. mfIl<=vfI0+3.652 .AND. mcCc>=vcO0+ ;
           0.6000 .AND. mcCc<=vcO0+115.8 .AND. vsW5=2
           DO diR_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+3.9360 .AND. mfIl<=vfI0+5.1502 .AND. mcCc>=vcLl- ;
           41.100 .AND. mcCc<=vcLl-18.900 .AND. vsW5=2
           DO ruC_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+3.9360 .AND. mfIl<=vfI0+5.1502 .AND. mcCc>=vcLl- ;
           18.300 .AND. mcCc<=vcLl-0.9000 .AND. vsW5=2
           DO dnI_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+3.9360 .AND. mfIl<=vfI0+5.1502 .AND. mcCc>=vcLl- ;
           18.300 .AND. mcCc<=vcLl-0.9000 .AND. vsW5=2
           DO fvE_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND.  ;
           mcCc<=3 .AND. vtDo="CT" .AND. wtPo$"15"
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+51
           STORE k_F3 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.4 .AND. wtPo="4"
           STORE k_F7 TO mkEy
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
      CASE mfIl>=vfB1+0.007 .AND. mfIl<=vfB1+1.221 .AND. mcCc>=vcB1-0.3  ;
           .AND. mcCc<=vcB1+4.1 .AND. vsW5=2
           DO tiT_1300c
           STORE 99 TO mkEy
      CASE mfIl>=vfB2+0.007 .AND. mfIl<=vfB2+1.221 .AND. mcCc>=vcB2-0.3  ;
           .AND. mcCc<=vcB2+4.1 .AND. vsW5=2
           STORE "N" TO moPc
           DO prE_docum WITH "¿Está seguro de querer borrar el Titular?"
           IF moPc$"Ss"
                DO btI_1300c
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfB3+0.007 .AND. mfIl<=vfB3+1.221 .AND. mcCc>=vcB3-0.3  ;
           .AND. mcCc<=vcB3+4.1 .AND. vsW5=2
           DO fpA_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfB4+0.007 .AND. mfIl<=vfB4+1.221 .AND. mcCc>=vcB4-0.3  ;
           .AND. mcCc<=vcB4+4.1 .AND. vsW5=2
           DO veN_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfB5+0.007 .AND. mfIl<=vfB5+1.221 .AND. mcCc>=vcB5-0.3  ;
           .AND. mcCc<=vcB5+4.1 .AND. vsW5=2
           DO teC_1300c
           STORE 99 TO mkEy
      CASE mfIl>=vfB6+0.007 .AND. mfIl<=vfB6+1.221 .AND. mcCc>=vcB6-0.3  ;
           .AND. mcCc<=vcB6+4.1 .AND. vsW5=2
           STORE "N" TO moPc
           DO prE_docum WITH "¿Está seguro de querer borrar el Técnico/Mail?"
           IF moPc$"Ss"
                DO btE_1300c
           ENDIF
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+0.864 .AND. mfIl<=vfI0+2.221 .AND. mcCc>=vcLl+2.1  ;
           .AND. mcCc<=vcLl+25.7 .AND. vsW5=2
           DO feM_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+9.436 .AND. mfIl<=vfI0+10.7 .AND. mcCc>=vcO0+1  ;
           .AND. mcCc<=vcO0+105.6 .AND. vsW5=2
           DO cm1_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+10.936 .AND. mfIl<=vfI0+12.22 .AND. mcCc>=vcO0+1  ;
           .AND. mcCc<=vcO0+105.6 .AND. vsW5=2
           DO cm2_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=ffFs+1.078 .AND. mfIl<=ffFs+3.293 .AND. mcCc>=vcO3+137.4  ;
           .AND. mcCc<=vcO3+155.6 .AND. vsW5=2
           DO tt1_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=ffFs+7.221 .AND. mfIl<=ffFs+8.293 .AND. maDm=1 .AND.  ;
           mcCc>=vcO3+vuC1-45.6 .AND. mcCc<=vcO3+vuC1-19.6 .AND. vsW5=2
           DO daT_1300c
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           STORE 99 TO mkEy
      CASE mfIl>=ffFs+7.221 .AND. mfIl<=ffFs+8.293 .AND. maDm=1 .AND.  ;
           mcCc>=vcO3+vuC1-19.6 .AND. mcCc<=vcO3+vuC1-0.8 .AND. vsW5=2
           DO tiM_1300c
           STORE 99 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO3 .AND.  ;
           mcCc<=vcO3+vuC1
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO3 .AND.  ;
           mcCc<=vcO3+vuC1
           DO diS_1300c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f1301ite TO vrEc
           DO diS_1300c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1300c
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
 STORE pfIl+3 TO pfIl
 IF wtPo$"26"
      @ pfIl+0, 02 SAY  ;
        "Se pueden modificar algunos datos con F2. Se le da un CLIC con el"
      @ pfIl+1, 02 SAY "mouse en el mismo campo."
      STORE pfIl+2 TO pfIl
 ENDIF
 STORE pfIl+1 TO pfIl
 @ pfIl+0, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 29 SAY ":" STYLE "BT"
 @ pfIl+3, 29 SAY ":" STYLE "BT"
 @ pfIl+4, 29 SAY ":" STYLE "BT"
 @ pfIl+2, 11 SAY "ESC" STYLE "BT"
 @ pfIl+3, 11 SAY "F10" STYLE "BT"
 @ pfIl+4, 11 SAY "F1" STYLE "BT"
 @ pfIl+2, 31 SAY "Regresar a Cabecera"
 @ pfIl+3, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 31 SAY "Ayuda del Programa"
 STORE pfIl+5 TO pfIl
 IF wtPo$"24"
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "F2" STYLE "BT"
      DO CASE
           CASE wtPo$"26"
                @ pfIl, 31 SAY "Entrar/Salir de Modificación de Cabecera"
           CASE wtPo="4"
                @ pfIl, 31 SAY "Cambiar Cantidad en Ítem seleccionado"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF wtPo="4"
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "F7" STYLE "BT"
      @ pfIl, 31 SAY "Entrar a Generar Guía de Remisión"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 29 SAY ":" STYLE "BT"
 @ pfIl, 11 SAY "F3" STYLE "BT"
 @ pfIl, 31 SAY "Ampliar/Reducir Detalle"
 STORE pfIl+1 TO pfIl
 IF wtPo="1"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+1, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 11 SAY "F8" STYLE "BT"
      @ pfIl+1, 11 SAY "ALT+S" STYLE "BT"
      @ pfIl+0, 31 SAY "Pasar a Excel Cotización"
      @ pfIl+1, 31 SAY "Generar Percepc.Temp.faltantes"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF wtPo$"24"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+1, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 11 SAY "ALT+S" STYLE "BT"
      @ pfIl+1, 11 SAY "ALT+Z" STYLE "BT"
      @ pfIl+0, 31 SAY "Cambiar Comision de Vendedor"
      @ pfIl+1, 31 SAY "Cambiar Fecha de vencimiento"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF wtPo="4"
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "TAB" STYLE "BT"
      @ pfIl, 31 SAY "Escoger Ítem que se va a poner en la Guía"
      STORE pfIl+1 TO pfIl
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
 @ pfIl+0, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+1, 11 SAY "CTRL O" STYLE "BT"
 @ pfIl+2, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+3, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+4, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+5, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+6, 11 SAY "HOME" STYLE "BT"
 @ pfIl+7, 11 SAY "END" STYLE "BT"
 @ pfIl+8, 11 SAY "ENTER" STYLE "BT"
 IF vtDo="CT"
      @ pfIl+0, 31 SAY "Imprime Cotización con Precios"
      @ pfIl+1, 31 SAY "Imprime Cotización sin Precios"
 ELSE
      @ pfIl+0, 31 SAY "Imprime Documento"
      @ pfIl+1, 31 SAY "Imprime Orden de Despacho"
 ENDIF
 @ pfIl+2, 31 SAY "Línea inferior"
 @ pfIl+3, 31 SAY "Línea superior"
 @ pfIl+4, 31 SAY "Página siguiente"
 @ pfIl+5, 31 SAY "Página anterior"
 @ pfIl+6, 31 SAY "Primera línea"
 @ pfIl+7, 31 SAY "Última línea"
 @ pfIl+8, 31 SAY "Ver Detalle del ítem"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
