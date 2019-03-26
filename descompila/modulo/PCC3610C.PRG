 = INKEY(0.01)
 SELECT caB_nota
 DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 DO muE_3610a
 STORE f3610ven TO vvEn
 STORE f3610cli TO vcLi
 STORE f3610suc TO vsUc
 STORE f3610nom TO vnOm
 STORE f3610fem TO vfEm
 STORE f3610mon TO vmOn
 STORE f3610ruc TO vrUc
 STORE f3610ele TO vdNi
 STORE f3610tot TO ttOt
 STORE f3610cm1 TO xcM1
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
 SELECT caB_nota
 DO p00_3610c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_nota
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_3610c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_3610c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3610c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3610c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3610c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3610c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. wtPo="2"
                STORE "N" TO moPc
                DO prE_docum WITH "¿Está seguro de querer borrar el Titular?"
                IF moPc$"Ss"
                     DO btI_3610c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_nota
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                STORE 99 TO mkEy
           CASE mkEy=k_F6 .AND. wtPo="2"
                DO tiT_3610c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_nota
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                STORE 99 TO mkEy
           CASE mkEy=k_F9 .AND. wtPo="2"
                DO veN_3610c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_nota
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_p
                SELECT caB_nota
                STORE 99 TO mkEy
                DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                DO pcI3610z
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT caB_nota
                DO orD_3610b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                EXIT
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f3611ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_3610c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_3610c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_3610c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(99, 2, 0)
                SET NEAR OFF
                IF EOF() .OR. f3611tdo+f3611ser+f3611doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3611ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_3610c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_3610c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_3610c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3611tdo+f3611ser+f3611doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_3610c WITH "N"
                          SKIP
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3610c WITH ifFs, ffFs+1
                               STORE f3611ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f3611ite TO irEc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f3611ite TO vrEc
                               STORE vfFs+01 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_3610c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3611tdo+f3611ser+f3611doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_3610c WITH "N"
                          SKIP -1
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3610c WITH ifFs, ffFs+1
                               STORE f3611ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f3611ite TO urEc
                               ENDIF
                          ELSE
                               STORE f3611ite TO vrEc
                               STORE vfFs-01 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_3610c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+STR(urEc, 2, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f3611tdo+f3611ser+f3611doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3610c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_3610c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3611tdo+f3611ser+f3611doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f3611tdo+f3611ser+f3611doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_3610c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_3610c WITH "R"
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
PROCEDURE Pan_3610c
 STORE ifFs TO vfFs, ufFs
 STORE f3611ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      DO diS_3610c WITH "N"
      STORE f3611ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_3610c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3610c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,vCO0+00.1 Say " "          Font "&mLetAri",9 Style "NQ" Size 1,00.7
 @vFFS,vCO0+00.7 Say F3611ITE     Font "&mLetAri",9 Style "NQ" Size 1,04.5  Pict "999"
 @vFFS,vCO0+05.4 Say " "          Font "&mLetAri",9 Style "NQ" Size 1,00.6
 IF f3611can=0 .AND. f3611tot=0
      @vFFS,vCO0+007.1 Say F3611DES Font "&mLetAri",9 Style "BQ" Size 1,95.1 Pict "@S97"
      @vFFS,vCO0+121.9 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,12
      @vFFS,vCO0+134.9 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,19.6
      @vFFS,vCO0+155.6 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,19.6
      @vFFS,vCO0+176.1 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,19.6
 ELSE
      @vFFS,vCO0+007.1 Say F3611DES Font "&mLetAri",9 Style "NQ" Size 1,113.9 Pict "@S115"
      @vFFS,vCO0+121.9 Say F3611NUV Font "&mLetAri",9 Style "NQ" Size 1,12    Pict "@S15"
      @vFFS,vCO0+134.9 Say F3611CAN Font "&mLetAri",9 Style "NQ" Size 1,19.6  Pict "9,999,999.9999"
      @vFFS,vCO0+155.6 Say F3611PRE Font "&mLetAri",9 Style "NQ" Size 1,19.6  Pict "9,999,999.9999"
      @vFFS,vCO0+176.1 Say F3611TOT Font "&mLetAri",9 Style "NQ" Size 1,19.6  Pict "9,999,999.9999"
 ENDIF
ENDPROC
*
PROCEDURE Lin_3610c
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, vcO0+006.4 TO pfIn, vcO0+006.4
 @ piNi, vcO0+121.4 TO pfIn, vcO0+121.4
 @ piNi, vcO0+134.3 TO pfIn, vcO0+134.3
 @ piNi, vcO0+155.0 TO pfIn, vcO0+155.0
 @ piNi, vcO0+175.5 TO pfIn, vcO0+175.5
ENDPROC
*
PROCEDURE Tit_3610c
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
 SET NEAR ON
 SEEK UPPER(xnTi)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE f1101cod TO xtIt, vtIt
      STORE f1101nom TO xnTi, vnTi
      STORE f1101ruc TO crUc
      STORE f1101ele TO cdNi
      SELECT caB_nota
      IF vsW0<>1 .OR. vsW1=2
           STORE 99 TO mkEy
           DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
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
      SELECT peNd_vtas
      SEEK "1"+vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH "1"+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT caB_nota
      IF ALLTRIM(f3610ruc)+"*"=ALLTRIM(crUc)+"*" .AND. ALLTRIM(f3610ele)+ ;
         "*"=ALLTRIM(cdNi)+"*" .AND. (LEN(ALLTRIM(f3610ruc))<>0 .OR.  ;
         LEN(ALLTRIM(f3610ele))<>0)
           REPLACE f3610cli WITH xtIt
           REPLACE f3610nom WITH xnTi
           REPLACE f3610tit WITH SPACE(04)
           REPLACE f3610nti WITH SPACE(70)
      ELSE
           REPLACE f3610cli WITH SPACE(04)
           REPLACE f3610suc WITH SPACE(02)
           REPLACE f3610tit WITH xtIt
           REPLACE f3610nti WITH xnTi
      ENDIF
      UNLOCK
      STORE f3610cli TO xcLi
      STORE f3610suc TO xsUc
      STORE f3610tit TO xtIt
      STORE f3610nti TO xnTi
      IF LEN(ALLTRIM(xtIt))=0
           STORE xcLi TO xtIt
           STORE xnOm TO xnTi
      ENDIF
      SELECT clIentes
      SEEK xtIt
      STORE f1101tip TO vtCl
      SELECT tiPos
      SEEK vtCl
      STORE f9110nti TO vnTi
      SELECT peNd_vtas
      IF  .NOT. EOF()
           REPLACE f3500cli WITH xcLi
           REPLACE f3500suc WITH xsUc
           REPLACE f3500tit WITH xtIt
           REPLACE f3500nti WITH xnTi
           REPLACE f3500tcl WITH vtCl
           REPLACE f3500ntc WITH vnTi
           UNLOCK
      ENDIF
      DO CASE
           CASE vsW1=01
                SELECT caB_nota
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO orD_3610b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE f3610cli TO xcLi
      STORE f3610suc TO xsUc
      STORE f3610tit TO xtIt
      STORE f3610nti TO xnTi
      DO coL_beige
      IF LEN(ALLTRIM(xcLi))<>0
           @mFI0+1.1,vCO0+10.1 Say "Cliente"  Font "&mLetAri",9 Style "BQ" Size 1,10
      ELSE
           @mFI0+1.1,vCO0+10.1 Say "Cl.Compl" Font "&mLetAri",9 Style "BQ" Size 1,10
      ENDIF
      @mFI0+5.5,vCO0+23.5 Say xTIT Font "&mLetAri",9 Style "NQ" Size 1,5.5
      @mFI0+5.5,vCO0+30.5 Say xNTI Font "&mLetAri",9 Style "NQ" Size 1,31 Pict "@S34"
      SELECT clIentes
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "1101", "V", "F1101COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE BTi_3610c
 = INKEY(0.01)
 SELECT caB_nota
 IF vsW0<>1 .OR. vsW1=2
      STORE 99 TO mkEy
      DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
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
 REPLACE f3610tit WITH SPACE(04)
 REPLACE f3610nti WITH SPACE(70)
 UNLOCK
 STORE SPACE(04) TO xtIt
 STORE SPACE(70) TO xnTi
 STORE f3610cli TO xcLi
 IF vsW1=02
      SELECT teMporal
 ENDIF
 DO orD_3610b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peNd_vtas
 SEEK "1"+vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH "1"+vtDo+vsEr+vdOc
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
 DO coL_beige
 IF LEN(ALLTRIM(xcLi))<>0
      @mFI0+1.1,vCO0+10.1 Say "Cliente"  Font "&mLetAri",9 Style "BQ" Size 1,10
 ELSE
      @mFI0+1.1,vCO0+10.1 Say "Cl.Compl" Font "&mLetAri",9 Style "BQ" Size 1,10
 ENDIF
 @mFI0+5.5,vCO0+23.5 Say xTIT Font "&mLetAri",9 Style "NQ" Size 1,5.5
 @mFI0+5.5,vCO0+30.5 Say xNTI Font "&mLetAri",9 Style "NQ" Size 1,31 Pict "@S34"
ENDPROC
*
PROCEDURE Ven_3610c
 = INKEY(0.01)
 SELECT veNdedor
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
 SET NEAR ON
 SEEK UPPER(xnVe)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9113cod<>xvEn
      STORE f9113cod TO xvEn, vvEn
      STORE f9113nom TO xnVe, vnVe
      SELECT caB_nota
      IF vsW0<>1 .OR. vsW1=2
           STORE 99 TO mkEy
           DO orD_0000a WITH "3610", "C", "F3610DOC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
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
      REPLACE f3610ven WITH xvEn
      REPLACE f3610nve WITH xnVe
      UNLOCK
      DO CASE
           CASE vsW1=01
                SELECT caB_nota
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO orD_3610b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT peNd_vtas
      SEEK "1"+vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH "1"+vtDo+vsEr+vdOc
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
      SELECT veNdedor
      DO coLsc6
      @mFI0+4.5,vCO0+103.1 Say xNVE Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S34"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE P00_3610c
 PRIVATE pcL1, ptM1, ptM2
 STORE vcO0+121.9 TO pcL1
 STORE 130 TO ptM1
 STORE 45 TO ptM2
 RESTORE SCREEN FROM vpAn_12
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mfI0, vcO0, mfI0+11, vcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH ifFs-1.2, vcO0, ffFs+4.50, vcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 @ mfI0+0.4, vcO0+0.1 TO mfI0+07, vcO0+vuCo-49 PATTERN 1
 @ mfI0+7.3, vcO0+0.1 TO mfI0+11, vcO0+vuCo-0.9 PATTERN 1
 @ mfI0+0.4, vcO0+0.1 TO mfI0+00.4, vcO0+vuCo-49 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.4, vcO0+0.1 TO mfI0+07.0, vcO0+0.1 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+7.3, vcO0+0.1 TO mfI0+07.3, vcO0+vuCo-0.9 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+7.3, vcO0+0.1 TO mfI0+11.0, vcO0+0.1 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.4, vcO0+vuCo-48 TO mfI0+6.0, vcO0+vuCo-0.9 PATTERN 1 COLOR SCHEME 6
 @ mfI0+2.4, vcO0+vuCo-48 TO mfI0+2.4, vcO0+vuCo-0.9
 @ mfI0+4.1, vcO0+vuCo-48 TO mfI0+4.1, vcO0+vuCo-0.9
 @ mfI0+6.0, vcO0+vuCo-48 TO mfI0+6.0, vcO0+vuCo-0.9
 DO coLsc3
 @ ifFs-1.3, vcO0 TO ifFs-0.20, vcO0+vuCo PATTERN 1
 @ ffFs+1.3, vcO0 TO ffFs+4.25, vcO0+vuCo PATTERN 1
 @ ffFs+2.8, vcO0+121.9 TO ffFs+2.80, vcO0+vuCo
 @ ffFs+1.3, vcO0+121.9 TO ffFs+4.25, vcO0+121.9
 @ ffFs+1.3, vcO0+146.5 TO ffFs+4.25, vcO0+146.5
 @ ffFs+1.3, vcO0+171.1 TO ffFs+4.25, vcO0+171.1
 @iFFS-1.25,vCO0+000.8    Say "Ítem"                       Font "&mLetAri",9 Style "BT"
 @iFFS-1.25,vCO0+007.1    Say "Descripción"                Font "&mLetAri",9 Style "BT"
 @iFFS-1.25,vCO0+123.9    Say "Unidad"                     Font "&mLetAri",9 Style "BT"
 @iFFS-1.30,vCO0+138.9    Say "Cantidad"                   Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE SUBSTR(xcM1, 1, 1)="F"
           @iFFS-1.30,vCO0+159.6 Say "V.Vta.Unit."           Font "&mLetAri",9 Style "BT"
           @iFFS-1.25,vCO0+180.1 Say "V.Vta.Total"           Font "&mLetAri",9 Style "BT"
      OTHERWISE
           @iFFS-1.30,vCO0+159.1 Say "Precio Unit."          Font "&mLetAri",9 Style "BT"
           @iFFS-1.25,vCO0+179.6 Say "Precio Total"          Font "&mLetAri",9 Style "BT"
 ENDCASE
 @mFI0+1.1,vCO0+1.1       Say "Cliente"                    Font "&mLetAri",9 Style "BT"
 @mFI0+2.5,vCO0+1.1       Say "Dirección"                  Font "&mLetAri",9 Style "NT"
 @mFI0+4.0,vCO0+1.1       Say "Distrito"                   Font "&mLetAri",9 Style "NT"
 @mFI0+8.0,vCO0+1.1       Say "#Facturas"                  Font "&mLetAri",9 Style "BT"
 @mFI0+9.5,vCO0+1.1       Say "Fechas"                     Font "&mLetAri",9 Style "BT"
 @mFI0+4.0,pCL1-6.8       Say "RUC"                        Font "&mLetAri",9 Style "NT"
 @mFI0+5.5,pCL1-6.8       Say "DNI"                        Font "&mLetAri",9 Style "NT"
 @mFI0+1.0,vCO0+vUCO-47   Say "Emisión"                    Font "&mLetAri",9 Style "BT"
 @mFI0+1.0,vCO0+vUCO-16   Say "T/C"                        Font "&mLetAri",9 Style "BT"
 @mFI0+2.8,vCO0+vUCO-47   Say "I.G.V."                     Font "&mLetAri",9 Style "BT"
 @mFI0+8.0,vCO0+137       Say "Fecha para T/C de Registro" Font "&mLetAri",9 Style "BT"
 IF wtPo="2"
      DO coLsc7
      @mFI0+5.5,vCO0+1.1     Say "Titular -->"               Font "&mLetAri",9 Style "NQ"
      DO coL_fondo
      @mFI0+4.5,vCO0+vUCO-47 Say "Vendedor"                  Font "&mLetAri",9 Style "BQ"
 ELSE
      @mFI0+5.5,vCO0+1.1     Say "Titular"                   Font "&mLetAri",9 Style "NT"
      @mFI0+4.5,vCO0+vUCO-47 Say "Vendedor"                  Font "&mLetAri",9 Style "BT"
 ENDIF
 DO coLbln
 SET READBORDER ON
 @mFI0+1.0,vCO0+vUCO-36.0 Get  xFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2              Color ,&mColBlN
 @mFI0+2.7,vCO0+vUCO-20.0 Get  xMON Font "&mLetAri",9 Style "NQ" Size 1,5,1 Default vMON Function "*RHT S/.;US$" Color RGB(0,0,0,235,231,222)
 @mFI0+1.0,vCO0+vUCO-10.5 Get  xTCA Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color Scheme 6
 @mFI0+2.7,vCO0+vUCO-36.0 Get  xPIG Font "&mLetAri",9 Style "NQ" Size 1,7.3 Pict "99.99"  Color ,&mColBlN
 @mFI0+4.5,vCO0+vUCO-35.0 Edit xNVE Font "&mLetAri",9 Style "NQ" Size 1,33,50             Color Scheme 6
 @mFI0+5.5,vCO0+13.5      Get  xTIT Font "&mLetAri",9 Style "NQ" Size 1,05.5              Color ,&mCol_Beige
 @mFI0+8.0,vCO0+013.5     Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,120,80
 @mFI0+8.0,vCO0+170.0     Get  xFRE Font "&mLetAri",9 Style "NQ" Size 1,12.20 Color ,&mColBlN
 @mFI0+9.5,vCO0+013.5     Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,120,80
 DO coLsc1
 @fFFS+5.7,vCO0+145.8 Say " Usuario:"+Space(30) Font "&mLetAri",9 Style "BQ" Size 1,38
 @fFFS+6.7,vCO0+145.8 Say " Fecha: "+Space(30)  Font "&mLetAri",9 Style "BQ" Size 1,38
 @fFFS+6.7,vCO0+175.8 Say " Hora: "             Font "&mLetAri",9 Style "BQ"
 @fFFS+5.7,vCO0+157.0 Say xUSU                  Font "&mLetAri",9 Style "NQ" Size 1,38 Pict "@S30"
 @fFFS+6.7,vCO0+157.0 Say xDAT                  Font "&mLetAri",9 Style "NQ" Size 1,12.4
 @fFFS+6.7,vCO0+184.8 Say xTIM                  Font "&mLetAri",9 Style "NQ" Size 1,10.1
 DO coL_beige
 @mFI0+5.5,vCO0+13.5 Say xTIT Font "&mLetAri",9 Style "NQ" Size 1,5.5
 @mFI0+5.5,vCO0+29.0 Say xNTI Font "&mLetAri",9 Style "NQ" Size 1,75 Pict "@S78"
 IF vsW0=1
      DO coL_beige
      @mFI0+2.5,vCO0+13.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,pTM1,70
      @mFI0+4.0,vCO0+13.5 Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,pTM2,50
      @mFI0+4.0,pCL1      Get  xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.1 Color ,&mCol_Beige
      @mFI0+5.5,pCL1      Edit xDNI Font "&mLetAri",9 Style "NQ" Size 1,12.2,15
      IF LEN(ALLTRIM(vcLi))=0
           DO coLbln
      ENDIF
      @mFI0+1.0,vCO0+13.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,pTM1,70
 ELSE
      DO coLbln
      @mFI0+1.0,vCO0+13.5 Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,pTM1,70
      @mFI0+2.5,vCO0+13.5 Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,pTM1,70
      @mFI0+4.0,vCO0+13.5 Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,pTM2,50
      @mFI0+4.0,pCL1      Get  xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.1 Color ,&mColBlN
      @mFI0+5.5,pCL1      Edit xDNI Font "&mLetAri",9 Style "NQ" Size 1,12.2,15
 ENDIF
 READ TIMEOUT 0.01
 SET READBORDER OFF
 SET COLOR TO GR+/GR
 DO CASE
      CASE vtDo="NC"
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0+110.7 PATTERN 1 COLOR  ;
             SCHEME 7
           @ mfI0-2.8, vcO0-0.6 TO mfI0-2.8, vcO0+110.7 COLOR RGB(255,255, ;
             255,0,0,0)
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0-000.6 COLOR RGB(255,255, ;
             255,0,0,0)
           @mFI0-2.5,vCO0+2.0 Say "NOTA DE CRÉDITO No.: "+xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE vtDo="ND"
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0+110.7 PATTERN 1 COLOR  ;
             SCHEME 7
           @ mfI0-2.8, vcO0-0.6 TO mfI0-2.8, vcO0+110.7 COLOR RGB(255,255, ;
             255,0,0,0)
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0-000.6 COLOR RGB(255,255, ;
             255,0,0,0)
           @mFI0-2.5,vCO0+2.0 Say "NOTA DE DÉBITO No.: "+xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE vtDo="N1" .OR. vtDo="N3" .AND. xcM1="F"
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0+110.7 PATTERN 1 COLOR  ;
             SCHEME 7
           @ mfI0-2.8, vcO0-0.6 TO mfI0-2.8, vcO0+110.7 COLOR RGB(255,255, ;
             255,0,0,0)
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0-000.6 COLOR RGB(255,255, ;
             255,0,0,0)
           @mFI0-2.5,vCO0+2.0 Say "NOTA DE CRÉDITO No.: "+Substr(xSER,1,1)+"0"+Substr(xSER,2,2)+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE vtDo="N2" .OR. vtDo="N4" .AND. xcM1="F"
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0+110.7 PATTERN 1 COLOR  ;
             SCHEME 7
           @ mfI0-2.8, vcO0-0.6 TO mfI0-2.8, vcO0+110.7 COLOR RGB(255,255, ;
             255,0,0,0)
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0-000.6 COLOR RGB(255,255, ;
             255,0,0,0)
           @mFI0-2.5,vCO0+2.0 Say "NOTA DE DÉBITO No.: "+Substr(xSER,1,1)+"0"+Substr(xSER,2,2)+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE vtDo="N1" .OR. vtDo="N3"
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0+110.7 PATTERN 1 COLOR  ;
             SCHEME 7
           @ mfI0-2.8, vcO0-0.6 TO mfI0-2.8, vcO0+110.7 COLOR RGB(255,255, ;
             255,0,0,0)
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0-000.6 COLOR RGB(255,255, ;
             255,0,0,0)
           @mFI0-2.5,vCO0+2 Say "NOTA DE CRÉDITO No.: "+Substr(xSER,1,2)+"0"+Substr(xSER,2,2)+"-"+xDOC Font "&mLetRom",15 Style "BT"
      CASE vtDo="N2" .OR. vtDo="N4"
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0+110.7 PATTERN 1 COLOR  ;
             SCHEME 7
           @ mfI0-2.8, vcO0-0.6 TO mfI0-2.8, vcO0+110.7 COLOR RGB(255,255, ;
             255,0,0,0)
           @ mfI0-2.8, vcO0-0.6 TO mfI0-0.5, vcO0-000.6 COLOR RGB(255,255, ;
             255,0,0,0)
           @mFI0-2.5,vCO0+2 Say "NOTA DE DÉBITO No.: "+Substr(xSER,1,2)+"0"+Substr(xSER,2,2)+"-"+xDOC Font "&mLetRom",15 Style "BT"
 ENDCASE
 DO coLscz
 @fFFS+3.0,vCO0+122.5 Say " "     Font "&mLetAri",9 Style "BQ" Size 1,19.6
 @fFFS+3.0,vCO0+147.1 Say " "     Font "&mLetAri",9 Style "BQ" Size 1,19.6
 @fFFS+3.0,vCO0+171.7 Say " "     Font "&mLetAri",9 Style "BQ" Size 1,19.6
 @fFFS+3.0,vCO0+132.0 Say "Neto"  Font "&mLetAri",9 Style "BQ"
 @fFFS+3.0,vCO0+157.1 Say "IGV"   Font "&mLetAri",9 Style "BQ"
 @fFFS+3.0,vCO0+180.7 Say "Total" Font "&mLetAri",9 Style "BQ"
 DO coLsc3
 @fFFS+1.5,vCO0+122.5 Say xNET    Font "&mLetAri",9 Style "BQ" Size 1,19.6 Pict "9,999,999.9999"
 @fFFS+1.5,vCO0+147.1 Say xIGV    Font "&mLetAri",9 Style "BQ" Size 1,19.6 Pict "9,999,999.9999"
 @fFFS+1.5,vCO0+171.7 Say xTOT    Font "&mLetAri",9 Style "BQ" Size 1,19.6 Pict "9,999,999.9999"
 DO liN_3610c WITH ifFs-1.3, ffFs+1.2
 RELEASE pcL1, ptM1, ptM2
ENDPROC
*
PROCEDURE Clp_3610c
 DO CASE
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
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           DO diS_3610c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f3611ite TO vrEc
           DO diS_3610c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Res_3610c
 DO reS_3610b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 DO p00_3610c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_nota
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
 DO paN_3610c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_3610c WITH "R"
ENDPROC
*
PROCEDURE Hl1_3610c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+01, 02 SAY  ;
   "los items fueran más de los que se pueden visualizar,  puede verlo por "
 @ pfIl+02, 02 SAY  ;
   "páginas.                                                               "
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+12, 29 SAY ":" STYLE "BT"
 @ pfIl+13, 29 SAY ":" STYLE "BT"
 @ pfIl+14, 29 SAY ":" STYLE "BT"
 @ pfIl+15, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 DO CASE
      CASE wtPo="2"
           @ pfIl+16, 29 SAY ":" STYLE "BT"
           @ pfIl+17, 29 SAY ":" STYLE "BT"
           @ pfIl+18, 29 SAY ":" STYLE "BT"
           @ pfIl+09, 11 SAY "F5" STYLE "BT"
           @ pfIl+10, 11 SAY "F6" STYLE "BT"
           @ pfIl+11, 11 SAY "F9" STYLE "BT"
           @ pfIl+12, 11 SAY "CTRL P" STYLE "BT"
           @ pfIl+13, 11 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+14, 11 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+15, 11 SAY "PAGE DOWN" STYLE "BT"
           @ pfIl+16, 11 SAY "PAGE UP" STYLE "BT"
           @ pfIl+17, 11 SAY "HOME" STYLE "BT"
           @ pfIl+18, 11 SAY "END" STYLE "BT"
      OTHERWISE
           @ pfIl+09, 11 SAY "CTRL P" STYLE "BT"
           @ pfIl+10, 11 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+11, 11 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+12, 11 SAY "PAGE DOWN" STYLE "BT"
           @ pfIl+13, 11 SAY "PAGE UP" STYLE "BT"
           @ pfIl+14, 11 SAY "HOME" STYLE "BT"
           @ pfIl+15, 11 SAY "END" STYLE "BT"
 ENDCASE
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 DO CASE
      CASE wtPo="2"
           @ pfIl+09, 31 SAY "Quitar Titular"
           @ pfIl+10, 31 SAY "Poner o Cambiar Titular"
           @ pfIl+11, 31 SAY "Cambiar de Vendedor"
           @ pfIl+12, 31 SAY "Imprime Documento"
           @ pfIl+13, 31 SAY "Línea inferior"
           @ pfIl+14, 31 SAY "Línea superior"
           @ pfIl+15, 31 SAY "Página siguiente"
           @ pfIl+16, 31 SAY "Página anterior"
           @ pfIl+17, 31 SAY "Primera línea"
           @ pfIl+18, 31 SAY "Última línea"
      OTHERWISE
           @ pfIl+09, 31 SAY "Imprime Documento"
           @ pfIl+10, 31 SAY "Línea inferior"
           @ pfIl+11, 31 SAY "Línea superior"
           @ pfIl+12, 31 SAY "Página siguiente"
           @ pfIl+13, 31 SAY "Página anterior"
           @ pfIl+14, 31 SAY "Primera línea"
           @ pfIl+15, 31 SAY "Última línea"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
