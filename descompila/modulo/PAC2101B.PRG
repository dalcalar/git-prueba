 = INKEY(0.01)
 DO CASE
      CASE vsW1=01
           SELECT prOveedores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(04) TO icOd
 ENDIF
 IF LEN(ALLTRIM(icOd))=0 .OR. (vsW0=1 .AND. (UPPER(ALLTRIM(icOd))+"*"> ;
    UPPER(ALLTRIM(vcOd))+"*" .OR. UPPER(ALLTRIM(ucOd))+"*"< ;
    UPPER(ALLTRIM(vcOd))+"*")) .OR. (vsW0=2 .AND. (UPPER(ALLTRIM(inOm))+ ;
    "*">UPPER(ALLTRIM(vnOm))+"*" .OR. UPPER(ALLTRIM(unOm))+"*"< ;
    UPPER(ALLTRIM(vnOm))+"*")) .OR. (vsW0=3 .AND. (UPPER(ALLTRIM(irUc))+ ;
    "*">UPPER(ALLTRIM(vrUc))+"*" .OR. UPPER(ALLTRIM(urUc))+"*"< ;
    UPPER(ALLTRIM(vrUc))+"*"))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=01
                SEEK ALLTRIM(UPPER(vcOd))
           CASE vsW0=02
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=03
                SEEK ALLTRIM(UPPER(vrUc))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_2101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_2101b WITH "i", "v"
 ELSE
      DO seE_2101b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(UPPER(vcOd))
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vnOm))
                CASE vsW0=3
                     SEEK ALLTRIM(UPPER(vrUc))
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2101b WITH "F", "v"
      ENDIF
      DO seE_2101b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2101cod)=ALLTRIM(vcOd)
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_2101b WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_2101b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2101b WITH "i"
      SET NEAR OFF
      DO paN_2101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_2101b WITH "i", "v"
      DO seE_2101b WITH "v"
 ENDIF
 DO diS_2101b WITH "R"
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
           DO rs1_2101b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2101b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2101b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2101b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                EXIT
           CASE mkEy=k_F1
                DO hl1_2101b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                SET READBORDER ON
                DO p01_2101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO caM_2101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO xl0_0000a WITH "Proveedores", "Lista de Proveedores", 10
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Codigo"
                pxLs.ceLls(3, 02).vaLue = "Est"
                pxLs.ceLls(3, 03).vaLue = "Razon Social/Apellidos y Nombres"
                pxLs.ceLls(3, 04).vaLue = "Tipo de Proveedor"
                pxLs.ceLls(3, 05).vaLue = "RUC"
                pxLs.ceLls(3, 06).vaLue = "Direccion"
                pxLs.ceLls(3, 07).vaLue = "Distrito"
                pxLs.ceLls(3, 08).vaLue = "Contacto"
                pxLs.ceLls(3, 09).vaLue = "Telefono"
                pxLs.ceLls(3, 10).vaLue = "e-mail"
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(12)).nuMberformat = "@"
                SELECT prOveedores
                GOTO TOP
                STORE 4 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF()
                     DO muE_2101a
                     pxLs.ceLls(viT1, 01).seLect
                     pxLs.ceLls(viT1, 01).vaLue = xcOd
                     pxLs.ceLls(viT1, 02).vaLue = xnEs
                     pxLs.ceLls(viT1, 03).vaLue = xnOm
                     pxLs.ceLls(viT1, 04).vaLue = xnTi
                     pxLs.ceLls(viT1, 05).vaLue = xrUc
                     pxLs.ceLls(viT1, 06).vaLue = xdIr
                     pxLs.ceLls(viT1, 07).vaLue = xnDi
                     pxLs.ceLls(viT1, 08).vaLue = xcT1
                     pxLs.ceLls(viT1, 09).vaLue = xtL1
                     pxLs.ceLls(viT1, 10).vaLue = xmAi
                     STORE viT1+1 TO viT1
                     DO CASE
                          CASE vsW1=01
                               SELECT prOveedores
                          CASE vsW1=02
                               SELECT teMporal
                     ENDCASE
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SKIP
                ENDDO
                DO xl1_0000a WITH 1
                WAIT CLEAR
                DO CASE
                     CASE vsW1=1
                          SELECT prOveedores
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2101b WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=01
                          SELECT prOveedores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO seE_2101b WITH "v"
                DO diS_2101b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                DO CASE
                     CASE vsW7=1
                          STORE 2 TO vsW7
                     CASE vsW7=2
                          STORE 1 TO vsW7
                ENDCASE
                DO tiT_2101a
                DO muE_2101b WITH "v", "x"
                DO caM_2101b
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
                     CASE vsW1=01
                          SELECT prOveedores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                SAVE SCREEN TO vpAn_11
                SET READBORDER ON
                DO paC2101c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=01
                          SELECT prOveedores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO reS_0000a
                IF mrEs<>mrSs
                     LOOP
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_Tab
                STORE f2101tpo TO vtPo
                SELECT deT_lista
                GOTO TOP
                SEEK vcOd
                IF EOF()
                     STORE "No hay datos registrados en este Proveedor..."  ;
                           TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     COMPILE PAC2101D
                     DO paC2101d
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO CASE
                          CASE vsW1=01
                               SELECT prOveedores
                          CASE vsW1=02
                               SELECT teMporal
                     ENDCASE
                     DO reS_0000a
                     IF mrEs<>mrSs
                          LOOP
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO CASE
                     CASE vsW1=01
                          SELECT prOveedores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_2101b
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=01
                          SELECT prOveedores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO seE_2101b WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE f2101cod=icOd .AND. vcOd=icOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=icOd
                                    DO paN_2101b
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_2101b WITH "v"
                                    DO diS_2101b WITH "N"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2101b WITH "i", "v"
                          DO seE_2101b WITH "v"
                          DO diS_2101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2101cod=ucOd .AND. vcOd=ucOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=ucOd
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2101b
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_2101b WITH "v"
                                    DO diS_2101b WITH "N"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2101b WITH "u", "v"
                          DO seE_2101b WITH "v"
                          DO diS_2101b WITH "R"
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
                          DO seE_2101b WITH "v"
                          DO diS_2101b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF vcOd=ucOd
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2101a WITH ffIl, ffIl+1
                               DO muE_2101b WITH "F", "v"
                               DO muE_2101b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2101b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2101b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2101b WITH "v"
                          DO diS_2101b WITH "R"
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
                          DO seE_2101b WITH "v"
                          DO diS_2101b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF vcOd=icOd
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2101a WITH ifIl, ifIl+1
                               DO muE_2101b WITH "F", "i"
                               DO muE_2101b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2101b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2101b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2101b WITH "v"
                          DO diS_2101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2101b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2101b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_2101b WITH "i", "v"
                          DO seE_2101b WITH "v"
                          DO diS_2101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2101b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2101b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_2101b WITH "i", "v"
                          DO seE_2101b WITH "v"
                          DO diS_2101b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2101b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2101b
 DO pn1_2101b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2101b
 DO pn1_2101b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2101b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2101b WITH "F", "i"
 DO muE_2101b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f2101cod=xcOd
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2101b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO muE_2101b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_2101a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2101b
 PARAMETER ptIp
 PRIVATE ptPp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 STORE f2101cod TO ccO1
 STORE f2101tip TO xtIp
 DO CASE
      CASE f2101tpo=1
           STORE "Prov.Nacional" TO ptPp
      CASE f2101tpo=2
           STORE "Prov.Extranjero" TO ptPp
      OTHERWISE
           STORE "No seleccionado" TO ptPp
 ENDCASE
 SELECT tiPos
 SEEK xtIp
 IF EOF()
      STORE "Tipo no registrado..." TO xnTi
 ELSE
      STORE f9210nti TO xnTi
 ENDIF
 SELECT suCursales
 SEEK ccO1
 STORE SPACE(02) TO xsUc
 IF EOF()
      STORE " " TO xdIr
 ELSE
      STORE ALLTRIM(f2102dir)+", "+ALLTRIM(f2102dis) TO xdIr
      SKIP
      IF  .NOT. EOF() .AND. f2102cod=ccO1
           STORE f2102suc TO xsUc
      ENDIF
 ENDIF
 DO CASE
      CASE vsW1=01
           SELECT prOveedores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,mCO0+000.4 Say F2101COD Font "&mLetAri",9 Style "NQ" Size 1,9.7
           @vFIL,mCO0+016.2 Say F2101NOM Font "&mLetAri",9 Style "NQ" Size 1,71 Pict "@S70"
           @vFIL,mCO0+087.8 Say F2101RUC Font "&mLetAri",9 Style "NQ" Size 1,15.9
           @vFIL,mCO0+116.9 Say xNTI     Font "&mLetAri",9 Style "NQ" Size 1,22 Pict "@S26"
           @vFIL,mCO0+139.6 Say xDIR     Font "&mLetAri",9 Style "NQ" Size 1,60.2 Pict "@S63"
           DO CASE
                CASE f2101est="9"
                     @vFIL,mCO0+010.7 Say "Anu"    Font "&mLetAri",9 Style "NQ" Size 1,4.7
                OTHERWISE
                     @vFIL,mCO0+010.7 Say "   "    Font "&mLetAri",9 Style "NQ" Size 1,4.7
           ENDCASE
           DO CASE
                CASE vsW7=1
                     @vFIL,mCO0+104.4 Say pTPP     Font "&mLetAri",9 Style "NQ" Size 1,11.9
                CASE vsW7=2
                     @vFIL,mCO0+104.4 Say F2101CON Font "&mLetAri",9 Style "NQ" Size 1,11.9
           ENDCASE
           IF LEN(ALLTRIM(xsUc))<>0
                DO prEsiona WITH "1", "DETALL", vfIl, mcO0+197.2
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      CASE mrEs="4"
           @vFIL,mCO0+000.4 Say F2101COD           Font "&mLetAri",9 Style "NQ" Size 1,9.7
           @vFIL,mCO0+016.2 Say F2101NOM           Font "&mLetAri",9 Style "NQ" Size 1,71 Pict "@S70"
           @vFIL,mCO0+087.8 Say F2101RUC           Font "&mLetAri",9 Style "NQ" Size 1,15.9
           @vFIL,mCO0+116.9 Say xNTI               Font "&mLetAri",9 Style "NQ" Size 1,32 Pict "@S35"
           @vFIL,mCO0+149.6 Say Substr(xDIR,1,102) Font "&mLetAri",9 Style "NQ" Size 1,102.1 Pict "@S102"
           DO CASE
                CASE f2101est="9"
                     @vFIL,mCO0+010.7 Say "Anu"      Font "&mLetAri",9 Style "NQ" Size 1,4.7
                OTHERWISE
                     @vFIL,mCO0+010.7 Say "   "      Font "&mLetAri",9 Style "NQ" Size 1,4.7
           ENDCASE
           DO CASE
                CASE vsW7=1
                     @vFIL,mCO0+104.4 Say pTPP       Font "&mLetAri",9 Style "NQ" Size 1,11.9
                CASE vsW7=2
                     @vFIL,mCO0+104.4 Say F2101CON   Font "&mLetAri",9 Style "NQ" Size 1,11.9
           ENDCASE
           IF LEN(ALLTRIM(xsUc))<>0
                DO prEsiona WITH "1", "DETALL", vfIl, mcO0+249.2
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      OTHERWISE
           @vFIL,mCO0+000.4 Say F2101COD           Font "&mLetAri",9 Style "NQ" Size 1,9.7
           @vFIL,mCO0+016.2 Say F2101NOM           Font "&mLetAri",9 Style "NQ" Size 1,71 Pict "@S70"
           @vFIL,mCO0+087.8 Say F2101RUC           Font "&mLetAri",9 Style "NQ" Size 1,15.9
           @vFIL,mCO0+116.9 Say xNTI               Font "&mLetAri",9 Style "NQ" Size 1,32 Pict "@S35"
           @vFIL,mCO0+149.6 Say Substr(xDIR,1,119) Font "&mLetAri",9 Style "NQ" Size 1,119.2 Pict "@S119"
           DO CASE
                CASE f2101est="9"
                     @vFIL,mCO0+010.7 Say "Anu"      Font "&mLetAri",9 Style "NQ" Size 1,4.7
                OTHERWISE
                     @vFIL,mCO0+010.7 Say "   "      Font "&mLetAri",9 Style "NQ" Size 1,4.7
           ENDCASE
           DO CASE
                CASE vsW7=1
                     @vFIL,mCO0+104.4 Say pTPP       Font "&mLetAri",9 Style "NQ" Size 1,11.9
                CASE vsW7=2
                     @vFIL,mCO0+104.4 Say F2101CON   Font "&mLetAri",9 Style "NQ" Size 1,11.9
           ENDCASE
           IF LEN(ALLTRIM(xsUc))<>0
                DO prEsiona WITH "1", "DETALL", vfIl, mcO0+266.4
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Opc_2101b
 DO rs2_2101a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2101b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SET READBORDER ON
           DO rs2_2101a
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
                DO hl2_2101b
           CASE mkEy=k_F12
                DO rs1_2101b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO rs2_2101a
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
                SELECT prOveedores
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2101nom)))<>0
                          DO muE_2101a
                          DO grA_2101a
                          SELECT prOveedores
                     ENDIF
                     SKIP
                ENDDO
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
           CASE vsW1=01
                SELECT prOveedores
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO orD_2101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_2101b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_2101b WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_2101b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2101b WITH "v", "x"
 DO orD_2101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2101b WITH "i"
 DO pa1_2101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_2101b WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_2101b WITH "x", "v"
 ENDIF
 DO seE_2101b WITH "v"
 DO diS_2101b WITH "R"
ENDPROC
*
PROCEDURE Imp_2101b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PVC1101A
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
 DO reP_2101b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2101b
 PRIVATE ptAm
 STORE 96 TO ptAm
 STORE 10 TO mcLn
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE vsW1=01
           SELECT prOveedores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_2101b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           IF f2101est="9"
                @vLIN,mCLN-1.8 Say "@" Font "&mLetAri",8 Style "BT"
           ENDIF
           IF STR(VAL(f2101cod), 4, 0)=f2101cod
                @vLIN,mCLN Say F2101COD Font "&mLetAri",9 Style "NT"
           ELSE
                @vLIN,mCLN Say F2101COD Font "&mLetSwB",9 Style "NT"
           ENDIF
           @vLIN,mCLN+8  Say F2101NOM Font "&mLetAri",9 Style "NT" Size 1,45 Pict "@S48"
           @vLIN,mCLN+62 Say F2101RUC Font "&mLetAri",9 Style "NT"
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE f2101cod TO xcOd
      SELECT suCursales
      SEEK xcOd
      IF  .NOT. EOF()
           DO WHILE  .NOT. EOF() .AND. f2102cod=xcOd
                IF vlIn>mpAg-3
                     DO caB_2101b WITH ptAm
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+79 Say AllTrim(F2102DIR)+" "+AllTrim(F2102NDI) Font "&mLetAri",9 Style "NT" Size 1,54 Pict "@S56"
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
           CASE vsW1=1
                SELECT prOveedores
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
PROCEDURE Cab_2101b
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
           DO cb1_0000a WITH "Proveedores", "PAC2101B"
      CASE voPc=2
           DO cb1_0000a WITH "Proveedores Anulados", "PAC2101B"
      CASE voPc=3
           DO cb1_0000a WITH "Proveedores Activos", "PAC2101B"
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
PROCEDURE Ord_2101b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=01
           DO orD_0000a WITH "2101", "A", "F2101COD", "A"
      CASE vsW0=2 .AND. vsW1=01
           DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
      CASE vsW0=3 .AND. vsW1=01
           DO orD_0000a WITH "2101", "A", "F2101RUC", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "A", "F2101COD", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "A", "F2101NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "A", "F2101RUC", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_2101b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vcOd
                CASE vsW0=2
                     SEEK UPPER(vnOm)+vcOd
                CASE vsW0=3
                     SEEK vrUc+vcOd
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK icOd
                CASE vsW0=2
                     SEEK UPPER(inOm)+icOd
                CASE vsW0=3
                     SEEK irUc+icOd
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK ucOd
                CASE vsW0=2
                     SEEK UPPER(unOm)+ucOd
                CASE vsW0=3
                     SEEK urUc+ucOd
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2101b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE icOd TO vcOd
           STORE inOm TO vnOm
           STORE irUc TO vrUc
      CASE pmU1="v" .AND. pmU2="i"
           STORE vcOd TO icOd
           STORE vnOm TO inOm
           STORE vrUc TO irUc
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcOd TO xcOd
           STORE vnOm TO xnOm
           STORE vrUc TO xrUc
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcOd TO ccOd
           STORE vnOm TO cnOm
           STORE vrUc TO crUc
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcOd TO vcOd
           STORE xnOm TO vnOm
           STORE xrUc TO vrUc
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccOd TO vcOd
           STORE cnOm TO vnOm
           STORE crUc TO vrUc
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucOd TO vcOd
           STORE unOm TO vnOm
           STORE urUc TO vrUc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2101cod TO vcOd
           STORE f2101nom TO vnOm
           STORE f2101ruc TO vrUc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2101cod TO ucOd
           STORE f2101nom TO unOm
           STORE f2101ruc TO urUc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2101cod TO icOd
           STORE f2101nom TO inOm
           STORE f2101ruc TO irUc
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2101b
 SET READBORDER ON
 DO rs1_2101a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2101b WITH "R"
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
PROCEDURE Clp_2101b
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
           mcCc<=mmC1+85.8
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
           DO diS_2101b WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2101b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2101b WITH "F", "v"
           DO diS_2101b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2101b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Proveedores en el"
 @ pfIl+01, 02 SAY "orden que se ha elegido."
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
 @ pfIl+14, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+15, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+16, 08 SAY "HOME" STYLE "BT"
 @ pfIl+17, 08 SAY "END" STYLE "BT"
 @ pfIl+18, 08 SAY "TAB" STYLE "BT"
 @ pfIl+19, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 28 SAY "Pasar datos a Excel"
 @ pfIl+10, 28 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+11, 28 SAY "Visualizar todos los datos del Proveedor"
 @ pfIl+12, 28 SAY "Línea inferior"
 @ pfIl+13, 28 SAY "Línea superior"
 @ pfIl+14, 28 SAY "Página siguiente"
 @ pfIl+15, 28 SAY "Página anterior"
 @ pfIl+16, 28 SAY "Primera línea"
 @ pfIl+17, 28 SAY "Última línea"
 @ pfIl+18, 28 SAY "Ver Productos del Proveedor"
 @ pfIl+19, 28 SAY "Imprime LISTADO"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2101b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda,  se da en cualquier parte de Apellidos o Nombres de los"
 @ pfIl+01, 02 SAY  ;
   "Proveedores. Si la palabra o frase, no se encuentra contenida en ningu-"
 @ pfIl+02, 02 SAY  ;
   "no de los nombres de los Proveedores,  saldrá un mensaje.  En caso de"
 @ pfIl+03, 02 SAY "encontrase, se regresará al Detalle."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Detalle"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Buscar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
