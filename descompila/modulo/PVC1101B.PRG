 = INKEY(0.01)
 DO CASE
      CASE vsW0>4 .AND. vsW1=1
           SELECT teMporal_2
      CASE vsW0>4 .AND. vsW1=2
           SELECT teMporal
      CASE vsW1=1
           SELECT clIentes
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_1101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(04) TO icOd
 ENDIF
 IF LEN(ALLTRIM(icOd))=0 .OR. (vsW0=1 .AND. (UPPER(ALLTRIM(icOd))+"*"> ;
    UPPER(ALLTRIM(vcOd))+"*" .OR. UPPER(ALLTRIM(ucOd))+"*"< ;
    UPPER(ALLTRIM(vcOd))+"*")) .OR. (vsW0=3 .AND. (UPPER(ALLTRIM(irUc))+ ;
    "*">UPPER(ALLTRIM(vrUc))+"*" .OR. UPPER(ALLTRIM(urUc))+"*"< ;
    UPPER(ALLTRIM(vrUc))+"*")) .OR. (vsW0=4 .AND. (UPPER(ALLTRIM(ieLe))+ ;
    "*">UPPER(ALLTRIM(veLe))+"*" .OR. UPPER(ALLTRIM(ueLe))+"*"< ;
    UPPER(ALLTRIM(veLe))+"*")) .OR. ((vsW0=2 .OR. vsW0=5 .OR. vsW0=6 .OR.  ;
    vsW0=7 .OR. vsW0=8) .AND. (UPPER(ALLTRIM(inOm))+"*"> ;
    UPPER(ALLTRIM(vnOm))+"*" .OR. UPPER(ALLTRIM(unOm))+"*"< ;
    UPPER(ALLTRIM(vnOm))+"*"))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK ALLTRIM(UPPER(vcOd))
           CASE vsW0=2 .OR. vsW0=5 .OR. vsW0=6
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=3
                SEEK ALLTRIM(UPPER(vrUc))
           CASE vsW0=4
                SEEK ALLTRIM(UPPER(veLe))
           CASE vsW0=7
                SEEK ALLTRIM(UPPER(vvEn))
           CASE vsW0=8
                SEEK ALLTRIM(UPPER(vtIp))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_1101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_1101b WITH "i", "v"
 ELSE
      DO seE_1101b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(UPPER(vcOd))
                CASE vsW0=2 .OR. vsW0=5 .OR. vsW0=6
                     SEEK ALLTRIM(UPPER(vnOm))
                CASE vsW0=3
                     SEEK ALLTRIM(UPPER(vrUc))
                CASE vsW0=4
                     SEEK ALLTRIM(UPPER(veLe))
                CASE vsW0=7
                     SEEK ALLTRIM(UPPER(vvEn))
                CASE vsW0=8
                     SEEK ALLTRIM(UPPER(vtIp))
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_1101b WITH "F", "v"
      ENDIF
      DO seE_1101b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f1101cod)=ALLTRIM(vcOd)
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_1101b WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_1101b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_1101b WITH "i"
      SET NEAR OFF
      DO paN_1101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_1101b WITH "i", "v"
      DO seE_1101b WITH "v"
 ENDIF
 DO diS_1101b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           IF mvIr=1
                mkEy = INKEY(0.1, "HM")
                IF mkEy=0
                     DO viR_000
                     LOOP
                ENDIF
           ELSE
                mkEy = INKEY(0, "HM")
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1101b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1101b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_1101b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_1101b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                EXIT
           CASE mkEy=k_F1
                DO hl1_1101b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=8
                          STORE 1 TO vsW0
                     CASE vsW0=6 .AND. mvNd=1
                          STORE 8 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                SET READBORDER ON
                DO p01_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                IF vsW0>4 .OR. vsW0=1
                     EXIT
                ENDIF
                DO caM_1101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO CASE
                     CASE vsW0=5
                          DO xl0_0000a WITH "Clientes por Departamento:"+ ;
                             ALLTRIM(vnDp), "Lista de Clientes", 21
                     CASE vsW0=6
                          DO xl0_0000a WITH "Clientes por Ciudad:"+ ;
                             ALLTRIM(vnDi), "Lista de Clientes", 21
                     CASE vsW0=7
                          DO xl0_0000a WITH "Clientes por Vendedor:"+ ;
                             ALLTRIM(vnVe), "Lista de Clientes", 21
                     CASE vsW0=8
                          DO xl0_0000a WITH "Clientes por Tipo:"+ ;
                             ALLTRIM(vnTi), "Lista de Clientes", 21
                     OTHERWISE
                          DO xl0_0000a WITH "Clientes", "Lista de Clientes", 21
                ENDCASE
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Código"
                pxLs.ceLls(3, 02).vaLue = "Est"
                pxLs.ceLls(3, 03).vaLue = "Razón Social/Apellidos y Nombres"
                pxLs.ceLls(3, 04).vaLue = "Alias"
                pxLs.ceLls(3, 05).vaLue = "Tipo de Cliente"
                pxLs.ceLls(3, 06).vaLue = "Dcto.de Cliente"
                pxLs.ceLls(3, 07).vaLue = "Dcto.x Tip-Cli"
                pxLs.ceLls(3, 08).vaLue = "RUC"
                pxLs.ceLls(3, 09).vaLue = "DNI"
                pxLs.ceLls(3, 10).vaLue = "Vendedor"
                pxLs.ceLls(3, 11).vaLue = "No.de Lista1"
                pxLs.ceLls(3, 12).vaLue = "No.de Lista2"
                pxLs.ceLls(3, 13).vaLue = "No.de Lista3"
                pxLs.ceLls(3, 14).vaLue = "Moneda"
                pxLs.ceLls(3, 15).vaLue = "Límite-Crédito"
                pxLs.ceLls(3, 16).vaLue = "Dirección"
                pxLs.ceLls(3, 17).vaLue = "Distrito"
                pxLs.ceLls(3, 18).vaLue = "Departamento"
                pxLs.ceLls(3, 19).vaLue = "Contacto"
                pxLs.ceLls(3, 20).vaLue = "Teléfono"
                pxLs.ceLls(3, 21).vaLue = "e-mail"
                pxLs.coLumns(15).nuMberformat = "##,###,##0"
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(05)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(06),  ;
                          pxLs.coLumns(07)).nuMberformat = "##0.00"
                pxLs.raNge(pxLs.coLumns(08),  ;
                          pxLs.coLumns(10)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(11),  ;
                          pxLs.coLumns(13)).nuMberformat = "##0"
                pxLs.coLumns(14).nuMberformat = "@"
                pxLs.coLumns(15).nuMberformat = "#,###,##0.00"
                pxLs.raNge(pxLs.coLumns(16),  ;
                          pxLs.coLumns(21)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(11),  ;
                          pxLs.coLumns(14)).hoRizontalalignment = 3
                IF vsW1=1 .AND. vsW0<=4
                     SELECT clIentes
                ELSE
                     SELECT teMporal_2
                ENDIF
                GOTO TOP
                STORE 4 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     DO muE_1101a
                     DO mu1_1101a
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = xcOd
                     pxLs.ceLls(viT1, 02).vaLue = xnEs
                     pxLs.ceLls(viT1, 03).vaLue = xnOm
                     pxLs.ceLls(viT1, 04).vaLue = xaLi
                     pxLs.ceLls(viT1, 05).vaLue = xnTi
                     pxLs.ceLls(viT1, 06).vaLue = xdCt
                     pxLs.ceLls(viT1, 07).vaLue = xdTc
                     pxLs.ceLls(viT1, 08).vaLue = xrUc
                     pxLs.ceLls(viT1, 09).vaLue = xeLe
                     pxLs.ceLls(viT1, 10).vaLue = xnVe
                     pxLs.ceLls(viT1, 11).vaLue = xlIs
                     pxLs.ceLls(viT1, 12).vaLue = xlI2
                     pxLs.ceLls(viT1, 13).vaLue = xlI3
                     pxLs.ceLls(viT1, 14).vaLue = xsIg
                     pxLs.ceLls(viT1, 15).vaLue = xtOt
                     pxLs.ceLls(viT1, 16).vaLue = vdIr
                     pxLs.ceLls(viT1, 17).vaLue = xnDi
                     pxLs.ceLls(viT1, 18).vaLue = xnDp
                     pxLs.ceLls(viT1, 19).vaLue = vcT1
                     pxLs.ceLls(viT1, 20).vaLue = xtL1
                     pxLs.ceLls(viT1, 21).vaLue = xmAi
                     STORE viT1+1 TO viT1
                     IF vsW1=1 .AND. vsW0<=4
                          SELECT clIentes
                     ELSE
                          SELECT teMporal_2
                     ENDIF
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                DO xl1_0000a WITH 1
                WAIT CLEAR
                DO CASE
                     CASE vsW0>4 .AND. vsW1=1
                          SELECT teMporal_2
                     CASE vsW0>4 .AND. vsW1=2
                          SELECT teMporal
                     CASE vsW1=1
                          SELECT clIentes
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_1101b WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_1101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW0>4 .AND. vsW1=1
                          SELECT teMporal_2
                     CASE vsW0>4 .AND. vsW1=2
                          SELECT teMporal
                     CASE vsW1=1
                          SELECT clIentes
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_1101b WITH "v"
                DO diS_1101b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                DO CASE
                     CASE vsW4=1
                          STORE 2 TO vsW4
                     CASE vsW4=2
                          STORE 1 TO vsW4
                ENDCASE
                DO tiT_1101a
                DO muE_1101b WITH "v", "x"
                DO caM_1101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO boT_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT suCursales
                SEEK vcOd
                IF EOF()
                     STORE 0 TO vsW2
                ELSE
                     STORE 1 TO vsW2
                ENDIF
                DO CASE
                     CASE vsW0>4 .AND. vsW1=1
                          SELECT teMporal_2
                     CASE vsW0>4 .AND. vsW1=2
                          SELECT teMporal
                     CASE vsW1=1
                          SELECT clIentes
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                SAVE SCREEN TO vpAn_11
                SET READBORDER ON
                DO pvC1101c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW0>4 .AND. vsW1=1
                          SELECT teMporal_2
                     CASE vsW0>4 .AND. vsW1=2
                          SELECT teMporal
                     CASE vsW1=1
                          SELECT clIentes
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO reS_0000a
                IF mrEs<>mrSs
                     LOOP
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_1101b
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW0>4 .AND. vsW1=1
                          SELECT teMporal_2
                     CASE vsW0>4 .AND. vsW1=2
                          SELECT teMporal
                     CASE vsW1=1
                          SELECT clIentes
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_1101b WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE f1101cod=icOd .AND. vcOd=icOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=icOd
                                    DO paN_1101b
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_1101b WITH "v"
                                    DO diS_1101b WITH "N"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1101b WITH "i", "v"
                          DO seE_1101b WITH "v"
                          DO diS_1101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f1101cod=ucOd .AND. vcOd=ucOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=ucOd
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1101b
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_1101b WITH "v"
                                    DO diS_1101b WITH "N"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1101b WITH "u", "v"
                          DO seE_1101b WITH "v"
                          DO diS_1101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1101b WITH "v"
                          DO diS_1101b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF vcOd=ucOd
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_1101a WITH ffIl, ffIl+1
                               DO muE_1101b WITH "F", "v"
                               DO muE_1101b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1101b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1101b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1101b WITH "v"
                          DO diS_1101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1101b WITH "v"
                          DO diS_1101b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF vcOd=icOd
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_1101a WITH ifIl, ifIl+1
                               DO muE_1101b WITH "F", "i"
                               DO muE_1101b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1101b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1101b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1101b WITH "v"
                          DO diS_1101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1101b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1101b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_1101b WITH "i", "v"
                          DO seE_1101b WITH "v"
                          DO diS_1101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1101b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1101b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_1101b WITH "i", "v"
                          DO seE_1101b WITH "v"
                          DO diS_1101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1101b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_1101b
 DO pn1_1101b WITH "1"
ENDPROC
*
PROCEDURE Pa1_1101b
 DO pn1_1101b WITH "2"
ENDPROC
*
PROCEDURE Pn1_1101b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_1101b WITH "F", "i"
 DO muE_1101b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f1101cod=xcOd
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_1101b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO muE_1101b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_1101a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1101b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 STORE f1101cod TO ccO1
 STORE f1101ven TO cvE1
 STORE f1101tip TO xtIp
 SELECT tiPos_cli
 SEEK xtIp
 IF EOF()
      STORE " " TO xnTi
 ELSE
      STORE f9110nti TO xnTi
 ENDIF
 SELECT veNdedores
 SEEK cvE1
 IF EOF()
      STORE " " TO cnV1
 ELSE
      STORE f9113nom TO cnV1
 ENDIF
 SELECT suCursales
 SEEK ccO1
 STORE SPACE(02) TO xsUc
 IF EOF()
      STORE " " TO vdIr
 ELSE
      STORE ALLTRIM(f1102dir)+", "+ALLTRIM(f1102ndi) TO vdIr
      SKIP
      IF  .NOT. EOF() .AND. f1102cod=ccO1
           STORE f1102suc TO xsUc
      ENDIF
 ENDIF
 DO CASE
      CASE vsW0>4 .AND. vsW1=1
           SELECT teMporal_2
      CASE vsW0>4 .AND. vsW1=2
           SELECT teMporal
      CASE vsW1=1
           SELECT clIentes
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,mCO0+000.4 Say F1101COD Font "&mLetAri",9 Style "NQ" Size 1,9.7
           @vFIL,mCO0+016.2 Say F1101NOM Font "&mLetAri",9 Style "NQ" Size 1,71 Pict "@S74"
           @vFIL,mCO0+087.8 Say F1101RUC Font "&mLetAri",9 Style "NQ" Size 1,15.9
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+104.4 Say F1101ELE Font "&mLetAri",9 Style "NQ" Size 1,15.9
                CASE vsW4=2
                     @vFIL,mCO0+104.4 Say F1101CON Font "&mLetAri",9 Style "NQ" Size 1,15.9
           ENDCASE
           IF mvNd=2
                @vFIL,mCO0+120.9 Say cNV1  Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S21"
           ELSE
                @vFIL,mCO0+120.9 Say xNTI  Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S21"
           ENDIF
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+139.6 Say Substr(AllTrim(vDIR),1,62)                        Font "&mLetAri",9 Style "NQ" Size 1,60.2 Pict "@S63"
                CASE vsW4=2
                     @vFIL,mCO0+139.6 Say AllTrim(F1101USU)+"/"+Dtoc(F1101DAT)+"/"+F1101TIM Font "&mLetAri",9 Style "NQ" Size 1,60.2 Pict "@S63"
           ENDCASE
           IF f1101est="9"
                @vFIL,mCO0+10.7 Say "Anu"  Font "&mLetAri",9 Style "NQ" Size 1,4.7
           ELSE
                @vFIL,mCO0+10.7 Say "   "  Font "&mLetAri",9 Style "NQ" Size 1,4.7
           ENDIF
           IF LEN(ALLTRIM(xsUc))<>0
                DO prEsiona WITH "1", "DETALL", vfIl, mcO0+197.2
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      OTHERWISE
           @vFIL,mCO0+000.4 Say F1101COD Font "&mLetAri",9 Style "NQ" Size 1,9.7
           @vFIL,mCO0+016.2 Say F1101NOM Font "&mLetAri",9 Style "NQ" Size 1,71 Pict "@S70"
           @vFIL,mCO0+087.8 Say F1101RUC Font "&mLetAri",9 Style "NQ" Size 1,15.9
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+104.4 Say F1101ELE Font "&mLetAri",9 Style "NQ" Size 1,15.9
                CASE vsW4=2
                     @vFIL,mCO0+104.4 Say F1101CON Font "&mLetAri",9 Style "NQ" Size 1,15.9
           ENDCASE
           IF mvNd=2
                @vFIL,mCO0+120.9 Say cNV1  Font "&mLetAri",9 Style "NQ" Size 1,28 Pict "@S31"
           ELSE
                @vFIL,mCO0+120.9 Say xNTI  Font "&mLetAri",9 Style "NQ" Size 1,28 Pict "@S31"
           ENDIF
           DO CASE
                CASE vsW4=1
                     @vFIL,mCO0+149.6 Say Substr(AllTrim(vDIR),1,119)                       Font "&mLetAri",9 Style "NQ" Size 1,119.2 Pict "@S119"
                CASE vsW4=2
                     @vFIL,mCO0+149.6 Say AllTrim(F1101USU)+"/"+Dtoc(F1101DAT)+"/"+F1101TIM Font "&mLetAri",9 Style "NQ" Size 1,119.2 Pict "@S119"
           ENDCASE
           IF f1101est="9"
                @vFIL,mCO0+10.7 Say "Anu"  Font "&mLetAri",9 Style "NQ" Size 1,4.7
           ELSE
                @vFIL,mCO0+10.7 Say "   "  Font "&mLetAri",9 Style "NQ" Size 1,4.7
           ENDIF
           IF LEN(ALLTRIM(xsUc))<>0
                DO prEsiona WITH "1", "DETALL", vfIl, mcO0+266.4
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Opc_1101b
 DO rs2_1101a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1101b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SET READBORDER ON
           DO rs2_1101a
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
                DO hl2_1101b
           CASE mkEy=k_F12
                DO rs1_1101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO rs2_1101a
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
                PRIVATE psW1, pdE1, pdE2, pdE3, pdE4, pdE5, pnU1, pnU2,  ;
                        pnU3, pnU4, pnUm
                STORE UPPER(ALLTRIM(vpAl)) TO pdE1
                STORE "" TO pdE2, pdE3, pdE4, pdE5
                STORE AT(",", vpAl, 1) TO pnU1
                STORE AT(",", vpAl, 2) TO pnU2
                STORE AT(",", vpAl, 3) TO pnU3
                STORE AT(",", vpAl, 4) TO pnU4
                IF pnU1<>0
                     STORE SUBSTR(vpAl, 1, pnU1-1) TO pdE1
                ENDIF
                IF pnU2=0
                     IF pnU1>0
                          STORE SUBSTR(vpAl, pnU1+1) TO pdE2
                     ENDIF
                ELSE
                     STORE SUBSTR(vpAl, pnU1+1, pnU2-pnU1-1) TO pdE2
                ENDIF
                IF pnU3=0
                     IF pnU2>0
                          STORE SUBSTR(vpAl, pnU2+1) TO pdE3
                     ENDIF
                ELSE
                     STORE SUBSTR(vpAl, pnU2+1, pnU3-pnU2-1) TO pdE3
                ENDIF
                IF pnU4=0
                     IF pnU3>0
                          STORE SUBSTR(vpAl, pnU3+1) TO pdE4
                     ENDIF
                ELSE
                     STORE SUBSTR(vpAl, pnU3+1, pnU4-pnU3-1) TO pdE4
                     STORE SUBSTR(vpAl, pnU4+1) TO pdE5
                ENDIF
                STORE UPPER(ALLTRIM(pdE1)) TO pdE1
                STORE UPPER(ALLTRIM(pdE2)) TO pdE2
                STORE UPPER(ALLTRIM(pdE3)) TO pdE3
                STORE UPPER(ALLTRIM(pdE4)) TO pdE4
                STORE UPPER(ALLTRIM(pdE5)) TO pdE5
                DO CASE
                     CASE LEN(ALLTRIM(pdE1))<>0 .AND. LEN(ALLTRIM(pdE2))<> ;
                          0 .AND. LEN(ALLTRIM(pdE3))<>0 .AND.  ;
                          LEN(ALLTRIM(pdE4))<>0 .AND. LEN(ALLTRIM(pdE5))<>0
                          STORE 5 TO pnUm
                     CASE LEN(ALLTRIM(pdE1))<>0 .AND. LEN(ALLTRIM(pdE2))<> ;
                          0 .AND. LEN(ALLTRIM(pdE3))<>0 .AND.  ;
                          LEN(ALLTRIM(pdE4))<>0
                          STORE 4 TO pnUm
                     CASE LEN(ALLTRIM(pdE1))<>0 .AND. LEN(ALLTRIM(pdE2))<> ;
                          0 .AND. LEN(ALLTRIM(pdE3))<>0
                          STORE 3 TO pnUm
                     CASE LEN(ALLTRIM(pdE1))<>0 .AND. LEN(ALLTRIM(pdE2))<>0
                          STORE 2 TO pnUm
                     CASE LEN(ALLTRIM(pdE1))<>0
                          STORE 1 TO pnUm
                ENDCASE
                SELECT teMporal
                ZAP
                REINDEX
                SELECT clIentes
                GOTO TOP
                STORE 0 TO psW1
                DO WHILE  .NOT. EOF()
                     DO CASE
                          CASE pnUm=1 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          CASE pnUm=2 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE2)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          CASE pnUm=3 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE2)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE3)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          CASE pnUm=4 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE2)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE3)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE4)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          CASE pnUm=5 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE2)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE3)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE4)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE5)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          OTHERWISE
                               STORE 0 TO psW1
                     ENDCASE
                     IF psW1=1
                          DO muE_1101a
                          DO mu1_1101a
                          SELECT teMporal
                          DO grA_1101a
                     ENDIF
                     SELECT clIentes
                     SKIP
                ENDDO
                RELEASE psW1, pdE1, pdE2, pdE3, pdE4, pdE5, pnU1, pnU2,  ;
                        pnU3, pnU4, pnUm
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 1 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 2 TO vsW1
                     STORE 0 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO paL_1101a IN PVC1101A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW0>4 .AND. vsW1=1
                SELECT teMporal_2
           CASE vsW0>4 .AND. vsW1=2
                SELECT teMporal
           CASE vsW1=1
                SELECT clIentes
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_1101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_1101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_1101b WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_1101b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_1101b WITH "v", "x"
 DO orD_1101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_1101b WITH "i"
 DO pa1_1101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_1101b WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_1101b WITH "x", "v"
 ENDIF
 DO seE_1101b WITH "v"
 DO diS_1101b WITH "R"
ENDPROC
*
PROCEDURE Imp_1101b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_1101b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_1101b
 PRIVATE ptAm
 STORE 96 TO ptAm
 STORE 10 TO mcLn
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE vsW0>4 .AND. vsW1=1
           SELECT teMporal_2
      CASE vsW0>4 .AND. vsW1=2
           SELECT teMporal
      CASE vsW1=1
           SELECT clIentes
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF (voPc=2 .AND. f1101est<>"9") .OR. (voPc=3 .AND. f1101est="9")
           SKIP
           LOOP
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_1101b WITH ptAm
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           IF f1101est="9"
                @vLIN,mCLN-1.8 Say "@" Font "&mLetAri",8 Style "BT"
           ENDIF
           IF STR(VAL(f1101cod), 4, 0)=f1101cod
                @vLIN,mCLN Say F1101COD Font "&mLetAri",9 Style "NT"
           ELSE
                @vLIN,mCLN Say F1101COD Font "&mLetSwB",9 Style "NT"
           ENDIF
           @vLIN,mCLN+8  Say F1101NOM Font "&mLetAri",9 Style "NT" Size 1,45 Pict "@S48"
           @vLIN,mCLN+62 Say F1101RUC Font "&mLetAri",9 Style "NT"
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE f1101cod TO xcOd
      SELECT suCursales
      SEEK xcOd
      IF  .NOT. EOF()
           DO WHILE  .NOT. EOF() .AND. f1102cod=xcOd
                IF vlIn>mpAg-3
                     DO caB_1101b WITH ptAm
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+79 Say AllTrim(F1102DIR)+" "+AllTrim(F1102NDI) Font "&mLetAri",9 Style "NT" Size 1,54 Pict "@S56"
                ENDIF
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE vlIn+1.3 TO vlIn
                SKIP
           ENDDO
      ELSE
           STORE vlIn+1.3 TO vlIn
      ENDIF
      DO CASE
           CASE vsW0>4 .AND. vsW1=1
                SELECT teMporal_2
           CASE vsW0>4 .AND. vsW1=2
                SELECT teMporal
           CASE vsW1=1
                SELECT clIentes
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm
ENDPROC
*
PROCEDURE Cab_1101b
 PARAMETER ptAm
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE voPc=1
           DO cb1_0000a WITH "Clientes", "PVC1101B"
      CASE voPc=2
           DO cb1_0000a WITH "Clientes Anulados", "PVC1101B"
      CASE voPc=3
           DO cb1_0000a WITH "Clientes Activos", "PVC1101B"
 ENDCASE
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1
                @vLIN,mCLN Say "Orden de Códigos"                             Font "&mLetAri",10 Style "NQ"
           CASE vsW0=2
                @vLIN,mCLN Say "Orden Alfabético"                             Font "&mLetAri",10 Style "NQ"
           CASE vsW0=3
                @vLIN,mCLN Say "Orden: x RUC"                                 Font "&mLetAri",10 Style "NQ"
           CASE vsW0=4
                @vLIN,mCLN Say "Orden: x DNI"                                 Font "&mLetAri",10 Style "NQ"
           CASE vsW0=5
                @vLIN,mCLN Say "Orden Alfabético. Ciudad/Departamento: "+vNDP Font "&mLetAri",10 Style "NQ"
           CASE vsW0=6
                @vLIN,mCLN Say "Orden Alfabético. Distrito: "+vNDI            Font "&mLetAri",10 Style "NQ"
           CASE vsW0=7
                @vLIN,mCLN Say "Orden Alfabético. Vendedor: "+vNVE            Font "&mLetAri",10 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Códi"                Font "&mLetAri",9 Style "BT"
      @vLIN,mCLN+8  Say "Apellidos y Nombres" Font "&mLetAri",9 Style "BT"
      @vLIN,mCLN+62 Say "RUC"                 Font "&mLetAri",9 Style "BT"
      @vLIN,mCLN+79 Say "Direcciones"         Font "&mLetAri",9 Style "BT"
 ENDIF
 STORE vlIn+0.3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Ord_1101b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "1101", "V", "F1101RUC", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "1101", "V", "F1101ELE", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "V", "F1101COD", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "V", "F1101NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "V", "F1101RUC", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "V", "F1101ELE", "A"
      CASE vsW0=5 .OR. vsW0=6
           DO orD_0000a WITH "TMP", "V", "F1101NOM", "A"
      CASE vsW0=7
           DO orD_0000a WITH "TMP", "V", "F1101VEN", "A"
      CASE vsW0=8
           DO orD_0000a WITH "TMP", "V", "F1101TIP", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_1101b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vcOd
                CASE vsW0=2 .OR. vsW0=5 .OR. vsW0=6
                     SEEK UPPER(vnOm)+vcOd
                CASE vsW0=3
                     SEEK ALLTRIM(vrUc)+"*"+vcOd
                CASE vsW0=4
                     SEEK ALLTRIM(veLe)+"*"+vcOd
                CASE vsW0=7
                     SEEK vvEn+UPPER(vnOm)+vcOd
                CASE vsW0=8
                     SEEK vtIp+UPPER(vnOm)+vcOd
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK icOd
                CASE vsW0=2 .OR. vsW0=5 .OR. vsW0=6
                     SEEK UPPER(inOm)+icOd
                CASE vsW0=3
                     SEEK ALLTRIM(irUc)+"*"+icOd
                CASE vsW0=4
                     SEEK ALLTRIM(ieLe)+"*"+icOd
                CASE vsW0=7
                     SEEK vvEn+UPPER(inOm)+icOd
                CASE vsW0=8
                     SEEK vtIp+UPPER(inOm)+icOd
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK ucOd
                CASE vsW0=2 .OR. vsW0=5 .OR. vsW0=6
                     SEEK UPPER(unOm)+ucOd
                CASE vsW0=3
                     SEEK ALLTRIM(urUc)+"*"+ucOd
                CASE vsW0=4
                     SEEK ALLTRIM(ueLe)+"*"+ucOd
                CASE vsW0=7
                     SEEK vvEn+UPPER(unOm)+ucOd
                CASE vsW0=8
                     SEEK vtIp+UPPER(unOm)+ucOd
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1101b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE icOd TO vcOd
           STORE inOm TO vnOm
           STORE irUc TO vrUc
           STORE ieLe TO veLe
      CASE pmU1="v" .AND. pmU2="i"
           STORE vcOd TO icOd
           STORE vnOm TO inOm
           STORE vrUc TO irUc
           STORE veLe TO ieLe
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcOd TO xcOd
           STORE vnOm TO xnOm
           STORE vrUc TO xrUc
           STORE veLe TO xeLe
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcOd TO ccOd
           STORE vnOm TO cnOm
           STORE vrUc TO crUc
           STORE veLe TO ceLe
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcOd TO vcOd
           STORE xnOm TO vnOm
           STORE xrUc TO vrUc
           STORE xeLe TO veLe
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccOd TO vcOd
           STORE cnOm TO vnOm
           STORE crUc TO vrUc
           STORE ceLe TO veLe
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucOd TO vcOd
           STORE unOm TO vnOm
           STORE urUc TO vrUc
           STORE ueLe TO veLe
      CASE pmU1="F" .AND. pmU2="v"
           STORE f1101cod TO vcOd
           STORE f1101nom TO vnOm
           STORE f1101ruc TO vrUc
           STORE f1101ele TO veLe
      CASE pmU1="F" .AND. pmU2="u"
           STORE f1101cod TO ucOd
           STORE f1101nom TO unOm
           STORE f1101ruc TO urUc
           STORE f1101ele TO ueLe
      CASE pmU1="F" .AND. pmU2="i"
           STORE f1101cod TO icOd
           STORE f1101nom TO inOm
           STORE f1101ruc TO irUc
           STORE f1101ele TO ieLe
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_1101b
 SET READBORDER ON
 DO rs1_1101a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_1101b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Clp_1101b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.6
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.4
           STORE k_F9 TO mkEy
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
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.2
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.8
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1101b WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1101b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_1101b WITH "F", "v"
           DO diS_1101b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, pnUm, piN1, piN2, piN9
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, voPc
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE mrEs TO mrS2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+09.7,pCOL+04 Say "Desde Pág:"            Font "&mLetRom",11 Style "BQ"
 @pFIL+11.4,pCOL+04 Say "Hasta Pág:"            Font "&mLetRom",11 Style "BQ"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NQ"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NQ" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.2,pCOL+15 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+5, pcOl+13 TO pfIl+8.7, pcOl+45 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+15 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+5,pCOL+15 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+09.8,pCOL+33.4 Get vOPC Font "&mLetAri",9 Style "NQ" Size 0.8,38,.2 Default vOPC Function "*RVT Todos;Solo Anulados;Solo activos"
      @pFIL+09.8,pCOL+20 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.5,pCOL+20 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+18.4,pCOL+06 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1 .OR. poPc=3
                DO CASE
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=01
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          IF poPc=3
                               STORE 1 TO mvIs
                          ELSE
                               STORE k_Enter TO mkEy
                               STORE 0 TO mvIs
                          ENDIF
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE 0 TO mvIs
                STORE k_Esc TO mkEy
                EXIT
      ENDCASE
 ENDDO
 DO coLbln
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_1101b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Clientes en el Orden"
 @ pfIl+01, 02 SAY "que se ha elegido."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 26 SAY ":" STYLE "BT"
 @ pfIl+06, 26 SAY ":" STYLE "BT"
 @ pfIl+07, 26 SAY ":" STYLE "BT"
 @ pfIl+08, 26 SAY ":" STYLE "BT"
 @ pfIl+09, 26 SAY ":" STYLE "BT"
 @ pfIl+10, 26 SAY ":" STYLE "BT"
 @ pfIl+11, 26 SAY ":" STYLE "BT"
 @ pfIl+12, 26 SAY ":" STYLE "BT"
 @ pfIl+13, 26 SAY ":" STYLE "BT"
 @ pfIl+14, 26 SAY ":" STYLE "BT"
 @ pfIl+15, 26 SAY ":" STYLE "BT"
 @ pfIl+16, 26 SAY ":" STYLE "BT"
 @ pfIl+17, 26 SAY ":" STYLE "BT"
 @ pfIl+18, 26 SAY ":" STYLE "BT"
 @ pfIl+19, 26 SAY ":" STYLE "BT"
 @ pfIl+05, 08 SAY "ESC" STYLE "BT"
 @ pfIl+06, 08 SAY "F10" STYLE "BT"
 @ pfIl+07, 08 SAY "F1" STYLE "BT"
 @ pfIl+08, 08 SAY "F6" STYLE "BT"
 @ pfIl+09, 08 SAY "F8" STYLE "BT"
 @ pfIl+10, 08 SAY "F9" STYLE "BT"
 @ pfIl+11, 08 SAY "ENTER" STYLE "BT"
 @ pfIl+12, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+13, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+14, 08 SAY "FLECHA -> <-" STYLE "BT"
 @ pfIl+15, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+16, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+17, 08 SAY "HOME" STYLE "BT"
 @ pfIl+18, 08 SAY "END" STYLE "BT"
 @ pfIl+19, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 28 SAY "Pasar datos a Excel"
 @ pfIl+10, 28 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+11, 28 SAY "Visualizar todos los datos del Cliente"
 @ pfIl+12, 28 SAY "Línea inferior"
 @ pfIl+13, 28 SAY "Línea superior"
 @ pfIl+14, 28 SAY "Ver Condición SUNAT o DNI"
 @ pfIl+15, 28 SAY "Página siguiente"
 @ pfIl+16, 28 SAY "Página anterior"
 @ pfIl+17, 28 SAY "Primera línea"
 @ pfIl+18, 28 SAY "Última línea"
 @ pfIl+19, 28 SAY "Imprime LISTADO"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_1101b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda,  se da en cualquier parte de Apellidos o Nombres de los"
 @ pfIl+01, 02 SAY  ;
   "Clientes. Si la palabra o frase, no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los nombres de los Clientes, saldrá un mensaje. En caso de encontrarse,"
 @ pfIl+03, 02 SAY  ;
   "se regresará al Detalle. Se puede buscar hasta 5 palabras divididas x "
 @ pfIl+04, 02 SAY "comas."
 @ pfIl+06, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 13 SAY "ESC" STYLE "BT"
 @ pfIl+09, 13 SAY "F10" STYLE "BT"
 @ pfIl+10, 13 SAY "F1" STYLE "BT"
 @ pfIl+11, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+08, 23 SAY "Regresar a Detalle"
 @ pfIl+09, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 23 SAY "Ayuda del Programa"
 @ pfIl+11, 23 SAY "Buscar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
