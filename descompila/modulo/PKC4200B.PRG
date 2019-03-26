 = INKEY(0.01)
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_4200b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(04) TO icOd
 ENDIF
 IF LEN(ALLTRIM(icOd))=0 .OR. (vsW0=1 .AND. (UPPER(ALLTRIM(icOd))> ;
    UPPER(ALLTRIM(vcOd)) .OR. UPPER(ALLTRIM(ucOd))<UPPER(ALLTRIM(vcOd))))  ;
    .OR. (vsW0=2 .AND. (UPPER(ALLTRIM(iaPp))>UPPER(ALLTRIM(vaPp)) .OR.  ;
    UPPER(ALLTRIM(uaPp))<UPPER(ALLTRIM(vaPp)))) .OR. (vsW0=3 .AND.  ;
    (UPPER(ALLTRIM(irUc))>UPPER(ALLTRIM(vrUc)) .OR. UPPER(ALLTRIM(urUc))< ;
    UPPER(ALLTRIM(vrUc)))) .OR. (vsW0=4 .AND. (UPPER(ALLTRIM(ieLe))> ;
    UPPER(ALLTRIM(veLe)) .OR. UPPER(ALLTRIM(ueLe))<UPPER(ALLTRIM(veLe))))  ;
    .OR. (vsW0=5 .AND. (UPPER(ALLTRIM(inCa))>UPPER(ALLTRIM(vnCa)) .OR.  ;
    UPPER(ALLTRIM(unCa))<UPPER(ALLTRIM(vnCa)))) .OR. (vsW0=6 .AND.  ;
    (UPPER(ALLTRIM(inAr))>UPPER(ALLTRIM(vnAr)) .OR. UPPER(ALLTRIM(unAr))< ;
    UPPER(ALLTRIM(vnAr))))
      GOTO TOP
      DO veR_lock
      SET NEAR ON
      DO CASE
           CASE vsW0=01
                SEEK ALLTRIM(UPPER(vcOd))
           CASE vsW0=02
                SEEK ALLTRIM(UPPER(vaPp))
           CASE vsW0=03
                SEEK ALLTRIM(UPPER(vrUc))
           CASE vsW0=04
                SEEK ALLTRIM(UPPER(veLe))
           CASE vsW0=05
                SEEK ALLTRIM(UPPER(vnCa))
           CASE vsW0=06
                SEEK ALLTRIM(UPPER(vnAr))
      ENDCASE
      SET NEAR OFF
      DO veR_lock
      IF EOF()
           GOTO BOTTOM
           DO veR_lock
      ENDIF
      DO paN_4200b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_4200b WITH "i", "v"
 ELSE
      DO seE_4200b WITH "v"
      IF EOF()
           GOTO TOP
           DO veR_lock
           SET NEAR ON
           DO CASE
                CASE vsW0=01
                     SEEK vcOd
                CASE vsW0=02
                     SEEK UPPER(ALLTRIM(vaPp))
                CASE vsW0=03
                     SEEK vrUc
                CASE vsW0=04
                     SEEK veLe
                CASE vsW0=05
                     SEEK UPPER(ALLTRIM(vnCa))
                CASE vsW0=06
                     SEEK UPPER(ALLTRIM(vnAr))
           ENDCASE
           SET NEAR OFF
           DO veR_lock
           IF EOF()
                GOTO BOTTOM
                DO veR_lock
           ENDIF
           DO muE_4200b WITH "F", "v"
      ENDIF
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_4200b WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f4200cod=vcOd
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
           DO veR_lock
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_4200b WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_4200b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_4200b WITH "i"
      SET NEAR OFF
      DO paN_4200b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ifIl TO vfIl
      DO muE_4200b WITH "i", "v"
      DO seE_4200b WITH "v"
 ENDIF
 DO diS_4200b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4200b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4200b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_4200b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_4200b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_4200b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4200b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=6
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                SET READBORDER ON
                DO p01_4200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO caM_4200b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Leyendo"
                DO xl0_0000a WITH "Trabajadores", "Trabajadores", 25
                pxLs.ceLls(3, 01).vaLue = "Codigo"
                pxLs.ceLls(3, 02).vaLue = "Apellido Paterno"
                pxLs.ceLls(3, 03).vaLue = "Apellido Materno"
                pxLs.ceLls(3, 04).vaLue = "Nombres"
                pxLs.ceLls(3, 05).vaLue = "Direccion"
                pxLs.ceLls(3, 06).vaLue = "Distrito"
                pxLs.ceLls(3, 07).vaLue = "Departamento"
                pxLs.ceLls(3, 08).vaLue = "Telefono"
                pxLs.ceLls(3, 09).vaLue = "DNI"
                pxLs.ceLls(3, 10).vaLue = "Libreta Militar"
                pxLs.ceLls(3, 11).vaLue = "R.U.C."
                pxLs.ceLls(3, 12).vaLue = "Cargas Familiares"
                pxLs.ceLls(3, 13).vaLue = "# Autogenerado IPSS"
                pxLs.ceLls(3, 14).vaLue = "AFP"
                pxLs.ceLls(3, 15).vaLue = "# Autogenerado AFP"
                pxLs.ceLls(3, 16).vaLue = "Fecha-Nacim"
                pxLs.ceLls(3, 17).vaLue = "Lugar de Nacimiento"
                pxLs.ceLls(3, 18).vaLue = "Grupo Sanguineo"
                pxLs.ceLls(3, 19).vaLue = "Nacionalidad"
                pxLs.ceLls(3, 20).vaLue = "Cargo"
                pxLs.ceLls(3, 21).vaLue = "Area"
                pxLs.ceLls(3, 22).vaLue = "Banco"
                pxLs.ceLls(3, 23).vaLue = "Cuenta"
                pxLs.ceLls(3, 24).vaLue = "Centro de Costos"
                pxLs.ceLls(3, 25).vaLue = "Estado"
                pxLs.coLumns(01).nuMberformat = "@"
                pxLs.coLumns(16).hoRizontalalignment = 3
                pxLs.coLumns(25).hoRizontalalignment = 3
                pxLs.raNge(pxLs.coLumns(8),  ;
                          pxLs.coLumns(11)).nuMberformat = "@"
                DO CASE
                     CASE vsW1=1
                          SELECT trAbajadores
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                GOTO TOP
                DO veR_lock
                DO coLbln
                STORE 4 TO viTe
                DO WHILE  .NOT. EOF()
                     WAIT WINDOW NOWAIT f4200cod
                     DO CASE
                          CASE f4200est="1"
                               STORE "Dig" TO veSt
                          CASE f4200est="9"
                               STORE "Anu" TO veSt
                          OTHERWISE
                               STORE "   " TO veSt
                     ENDCASE
                     pxLs.raNge(pxLs.ceLls(viTe,8), pxLs.ceLls(viTe, ;
                               11)).nuMberformat = "@"
                     pxLs.ceLls(viTe, 01).vaLue = f4200cod
                     pxLs.ceLls(viTe, 02).vaLue = f4200app
                     pxLs.ceLls(viTe, 03).vaLue = f4200apm
                     pxLs.ceLls(viTe, 04).vaLue = f4200nom
                     pxLs.ceLls(viTe, 05).vaLue = f4200dir
                     pxLs.ceLls(viTe, 06).vaLue = f4200ndi
                     pxLs.ceLls(viTe, 07).vaLue = f4200ndp
                     pxLs.ceLls(viTe, 08).vaLue = f4200tel
                     pxLs.ceLls(viTe, 09).vaLue = f4200ele
                     pxLs.ceLls(viTe, 10).vaLue = f4200mil
                     pxLs.ceLls(viTe, 11).vaLue = f4200ruc
                     pxLs.ceLls(viTe, 12).vaLue = f4200car
                     pxLs.ceLls(viTe, 13).vaLue = f4200sso
                     pxLs.ceLls(viTe, 14).vaLue = f4200naf
                     pxLs.ceLls(viTe, 15).vaLue = f4200spp
                     pxLs.ceLls(viTe, 16).vaLue = f4200fna
                     pxLs.ceLls(viTe, 17).vaLue = f4200lna
                     pxLs.ceLls(viTe, 18).vaLue = f4200gru
                     pxLs.ceLls(viTe, 19).vaLue = f4200nac
                     pxLs.ceLls(viTe, 20).vaLue = f4200nca
                     pxLs.ceLls(viTe, 21).vaLue = f4200nar
                     pxLs.ceLls(viTe, 22).vaLue = f4200nba
                     pxLs.ceLls(viTe, 23).vaLue = f4200nct
                     pxLs.ceLls(viTe, 24).vaLue = f4200ncc
                     pxLs.ceLls(viTe, 25).vaLue = veSt
                     DO CASE
                          CASE vsW1=1
                               SELECT trAbajadores
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                     STORE viTe+1 TO viTe
                     SKIP
                     DO veR_lock
                ENDDO
                DO xl1_0000a WITH 1
                WAIT CLEAR
                DO CASE
                     CASE vsW1=1
                          SELECT trAbajadores
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_4200b WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_4200b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO seE_4200b WITH "v"
                DO diS_4200b WITH "R"
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                SET READBORDER ON
                DO pkC4200c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO reS_0000a
                IF mrEs<>mrSs
                     LOOP
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_4200b
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO seE_4200b WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO veR_lock
                DO CASE
                     CASE f4200cod=icOd .AND. vcOd=icOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=icOd
                                    DO paN_4200b
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                               OTHERWISE
                                    DO seE_4200b WITH "v"
                                    DO diS_4200b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_4200b WITH "i", "v"
                          DO seE_4200b WITH "v"
                          DO diS_4200b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE f4200cod=ucOd .AND. vcOd=ucOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=ucOd
                                    SKIP -INT(ffIl-ifIl)
                                    DO veR_lock
                                    DO paN_4200b
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                               OTHERWISE
                                    DO seE_4200b WITH "v"
                                    DO diS_4200b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_4200b WITH "u", "v"
                          DO seE_4200b WITH "v"
                          DO diS_4200b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4200b WITH "v"
                          DO diS_4200b WITH "N"
                          SKIP
                          DO veR_lock
                          IF vcOd=ucOd
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_4200a WITH ffIl, ffIl+1
                               DO muE_4200b WITH "F", "v"
                               DO muE_4200b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO veR_lock
                               DO muE_4200b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                               DO veR_lock
                          ELSE
                               DO muE_4200b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_4200b WITH "v"
                          DO diS_4200b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4200b WITH "v"
                          DO diS_4200b WITH "N"
                          SKIP -1
                          DO veR_lock
                          IF vcOd=icOd
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_4200a WITH ifIl, ifIl+1
                               DO muE_4200b WITH "F", "i"
                               DO muE_4200b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO veR_lock
                                    DO muE_4200b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_4200b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_4200b WITH "v"
                          DO diS_4200b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_4200b WITH "u"
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_4200b
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_4200b WITH "i", "v"
                          DO seE_4200b WITH "v"
                          DO diS_4200b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_4200b WITH "i"
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          DO veR_lock
                          IF BOF()
                               GOTO TOP
                               DO veR_lock
                          ENDIF
                          DO paN_4200b
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_4200b WITH "i", "v"
                          DO seE_4200b WITH "v"
                          DO diS_4200b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_4200b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_4200b
 DO pn1_4200b WITH "1"
ENDPROC
*
PROCEDURE Pa1_4200b
 DO pn1_4200b WITH "2"
ENDPROC
*
PROCEDURE Pn1_4200b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_4200b WITH "F", "i"
 DO muE_4200b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f4200cod=xcOd
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_4200b WITH "N"
      ENDCASE
      DO muE_4200b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
      DO veR_lock
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_4200a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_4200b
 PARAMETER ptIp
 PRIVATE pnOm, peSt, psEx, pcIv
 STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+f4200nom TO pnOm
 DO CASE
      CASE f4200est="9"
           STORE "Anu" TO peSt
      OTHERWISE
           STORE "   " TO peSt
 ENDCASE
 DO CASE
      CASE f4200sex=1
           STORE "Mas" TO psEx
      OTHERWISE
           STORE "Fem" TO psEx
 ENDCASE
 DO CASE
      CASE f4200civ=1
           STORE "Sol" TO pcIv
      CASE f4200civ=2
           STORE "Cas" TO pcIv
      CASE f4200civ=3
           STORE "Viu" TO pcIv
      OTHERWISE
           STORE "Div" TO pcIv
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="1"
           @vFIL,mCO0+000.0 Say F4200COD    Font "&mLetRom",8 Style "NQ" Size 1,09.7
           @vFIL,mCO0+008.3 Say pEST        Font "&mLetRom",8 Style "NQ" Size 1,4.7
           @vFIL,mCO0+012.8 Say pNOM        Font "&mLetAri",8 Style "NQ" Size 1,32.7 Pict "@S36"
           @vFIL,mCO0+046.1 Say F4200RUC    Font "&mLetAri",8 Style "NQ" Size 1,13.5
           @vFIL,mCO0+060.3 Say F4200ELE    Font "&mLetAri",8 Style "NQ" Size 1,09.5
           @vFIL,mCO0+070.6 Say F4200NCA    Font "&mLetAri",8 Style "NQ" Size 1,15.0 Pict "@S18"
           @vFIL,mCO0+086.2 Say F4200NAR    Font "&mLetAri",8 Style "NQ" Size 1,15.0 Pict "@S18"
           @vFIL,mCO0+101.7 Say F4200DIR    Font "&mLetAri",8 Style "NQ" Size 1,22.2 Pict "@S24"
      CASE mrEs$"23"
           @vFIL,mCO0+000.0 Say F4200COD    Font "&mLetAri",9 Style "NQ" Size 1,9.7
           @vFIL,mCO0+010.3 Say pEST        Font "&mLetAri",9 Style "NQ" Size 1,4.7
           @vFIL,mCO0+015.8 Say pNOM        Font "&mLetAri",9 Style "NQ" Size 1,41 Pict "@S43"
           @vFIL,mCO0+057.4 Say F4200RUC    Font "&mLetAri",9 Style "NQ" Size 1,15.9
           @vFIL,mCO0+074.0 Say F4200ELE    Font "&mLetAri",9 Style "NQ" Size 1,11.9
           IF mrEs="2"
                @vFIL,mCO0+086.5 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,15   Pict "@S18"
                @vFIL,mCO0+102.1 Say F4200NAR Font "&mLetAri",9 Style "NQ" Size 1,15   Pict "@S18"
                @vFIL,mCO0+117.7 Say F4200DIR Font "&mLetAri",9 Style "NQ" Size 1,39.4 Pict "@S42"
           ELSE
                @vFIL,mCO0+086.5 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,23   Pict "@S26"
                @vFIL,mCO0+110.1 Say F4200NAR Font "&mLetAri",9 Style "NQ" Size 1,23   Pict "@S26"
                @vFIL,mCO0+133.7 Say F4200DIR Font "&mLetAri",9 Style "NQ" Size 1,64.1 Pict "@S67"
           ENDIF
      CASE mrEs>="4"
           @vFIL,mCO0+000.0 Say F4200COD    Font "&mLetAri",9 Style "NQ" Size 1,9.7
           @vFIL,mCO0+010.3 Say pEST        Font "&mLetAri",9 Style "NQ" Size 1,4.7
           @vFIL,mCO0+015.8 Say pNOM        Font "&mLetAri",9 Style "NQ" Size 1,51   Pict "@S53"
           @vFIL,mCO0+067.4 Say F4200RUC    Font "&mLetAri",9 Style "NQ" Size 1,15.9
           @vFIL,mCO0+084.0 Say F4200ELE    Font "&mLetAri",9 Style "NQ" Size 1,11.9
           @vFIL,mCO0+096.5 Say F4200NCA    Font "&mLetAri",9 Style "NQ" Size 1,23   Pict "@S26"
           @vFIL,mCO0+120.1 Say F4200NAR    Font "&mLetAri",9 Style "NQ" Size 1,23   Pict "@S26"
           @vFIL,mCO0+143.7 Say F4200DIR    Font "&mLetAri",9 Style "NQ" Size 1,64.1 Pict "@S67"
           @vFIL,mCO0+208.6 Say F4200FNA    Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+221.8 Say F4200LNA    Font "&mLetAri",9 Style "NQ" Size 1,15.2 Pict "@S17"
           @vFIL,mCO0+237.6 Say pSEX        Font "&mLetAri",9 Style "NQ" Size 1,4.7
           @vFIL,mCO0+242.9 Say pCIV        Font "&mLetAri",9 Style "NQ" Size 1,4.7
           IF mrEs>="5"
                @vFIL,mCO0+248.4 Say F4200TEL Font "&mLetAri",9 Style "NQ" Size 1,19.4 Pict "@S12"
           ENDIF
 ENDCASE
 RELEASE pnOm, peSt, psEx, pcIv
ENDPROC
*
PROCEDURE Opc_4200b
 DO rs2_4200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4200b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_4200a
           IF mkEy=k_Esc
                RETURN
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
           CASE mkEy=k_F12
                DO rs1_4200b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_4200a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_4200b
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
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200app)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f4200apm)))<>0
                          DO muE_4200a
                          DO grA_4200a
                          SELECT trAbajadores
                     ENDIF
                     SKIP
                     DO veR_lock
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO CASE
           CASE mrEs="1"
                @iFIL+1.8,mCO0+21.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs>"1"
                @iFIL+1.8,mCO0+41.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
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
      DO CASE
           CASE vsW1=01
                SELECT trAbajadores
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO orD_4200b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO veR_lock
      DO paN_4200b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_4200b WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_4200b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_4200b WITH "v", "x"
 DO orD_4200b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 DO seE_4200b WITH "i"
 DO pa1_4200b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      DO muE_4200b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_4200b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_4200b WITH "v"
 DO diS_4200b WITH "R"
ENDPROC
*
PROCEDURE Imp_4200b
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
 DO reP_4200b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_4200b
 PRIVATE ptAm
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 96 TO ptAm
           STORE 10 TO mcLn
      CASE mvIs=0 .AND. mpRt="2"
           STORE 90 TO ptAm
           STORE 10 TO mcLn
      CASE mvIs=1
           DO CASE
                CASE mrEs="1"
                     STORE 78 TO ptAm
                CASE mrEs="2"
                     STORE 96 TO ptAm
                CASE mrEs="3"
                     STORE 124 TO ptAm
                CASE mrEs="4"
                     STORE 154 TO ptAm
                CASE mrEs>="5"
                     STORE 166 TO ptAm
           ENDCASE
           DO npG_0000a
           DO CASE
                CASE mrEs="2"
                     STORE mcLn-2 TO mcLn
                CASE mrEs="3"
                     STORE mcLn-10 TO mcLn
                CASE mrEs="4"
                     STORE mcLn-20 TO mcLn
                CASE mrEs>="5"
                     STORE mcLn-23 TO mcLn
           ENDCASE
 ENDCASE
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_4200b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1 .AND. f4200est="9"
                     @vLIN,mCLN-1.8 Say "@"     Font "&mLetAri",8 Style "BQ"
                CASE mpRt="1" .AND. f4200est="9"
                     @vLIN,mCLN-1.8 Say "@"     Font "&mLetAri",8 Style "BQ"
                CASE mpRt="2" .AND. f4200est="9"
                     @vLIN,mCLN-1.9 Say "@"     Font "&mLetSwi",8 Style "BQ"
           ENDCASE
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN         Say F4200COD Font "&mLetAri",9 Style "NQ" Size 1,06 Pict "@S04"
                     @vLIN,mCLN+06.8    Say F4200APP Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
                     @vLIN,mCLN+32.6    Say F4200APM Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
                     @vLIN,mCLN+58.4    Say F4200NOM Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S30"
                     DO CASE
                          CASE mrEs="1"
                               @vLIN,mCLN+089.2    Say F4200DIR Font "&mLetAri",9 Style "NQ" Size 1,35 Pict "@S37"
                          OTHERWISE
                               IF mrEs>"1"
                                    @vLIN,mCLN+089.2 Say F4200DIR Font "&mLetAri",9 Style "NQ" Size 1,38 Pict "@S41"
                                    @vLIN,mCLN+128.0 Say F4200NDI Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
                               ENDIF
                               IF mrEs>"2"
                                    @vLIN,mCLN+154.0 Say F4200TEL Font "&mLetAri",9 Style "NQ" Size 1,17.2 Pict "@S12"
                                    @vLIN,mCLN+172.0 Say F4200ELE Font "&mLetAri",9 Style "NQ" Size 1,11.2 Pict "@S08"
                                    @vLIN,mCLN+184.0 Say F4200MIL Font "&mLetAri",9 Style "NQ" Size 1,14.2 Pict "@S10"
                               ENDIF
                               IF mrEs="4"
                                    @vLIN,mCLN+199.0 Say F4200RUC Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "@S11"
                                    @vLIN,mCLN+215.4 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,30.4 Pict "@S32"
                               ENDIF
                               IF mrEs>"4"
                                    @vLIN,mCLN+199.0 Say F4200RUC Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "@S11"
                                    @vLIN,mCLN+215.4 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,24.4 Pict "@S26"
                                    @vLIN,mCLN+241.0 Say F4200NAR Font "&mLetAri",9 Style "NQ" Size 1,24.4 Pict "@S26"
                               ENDIF
                     ENDCASE
                CASE mpRt="1"
                     @vLIN,mCLN     Say F4200COD Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+7   Say F4200APP Font "&mLetAri",9 Style "NT" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+27  Say F4200APM Font "&mLetAri",9 Style "NT" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+47  Say F4200NOM Font "&mLetAri",9 Style "NT" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+67  Say F4200DIR Font "&mLetAri",9 Style "NT" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+97  Say F4200NDI Font "&mLetAri",9 Style "NT" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+117 Say F4200TEL Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+137 Say F4200ELE Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+157 Say F4200MIL Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+177 Say F4200RUC Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN     Say F4200COD Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+7   Say F4200APP Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+27  Say F4200APM Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+47  Say F4200NOM Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+67  Say F4200DIR Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+97  Say F4200NDI Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+117 Say F4200TEL Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+137 Say F4200ELE Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+157 Say F4200MIL Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+177 Say F4200RUC Font "&mLetSwi",9 Style "NQ"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm
ENDPROC
*
PROCEDURE Cab_4200b
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
 DO cb1_0000a WITH "Trabajadores", "PKC4200B"
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1
                @vLIN,mCLN Say "Orden de Códigos" Font "&mLetAri",10 Style "NQ"
           CASE vsW0=2
                @vLIN,mCLN Say "Orden Alfabético" Font "&mLetAri",10 Style "NQ"
           CASE vsW0=3
                @vLIN,mCLN Say "Orden: x RUC"     Font "&mLetAri",10 Style "NQ"
           CASE vsW0=4
                @vLIN,mCLN Say "Orden: x DNI"     Font "&mLetAri",10 Style "NQ"
           CASE vsW0=5
                @vLIN,mCLN Say "Orden: x Cargo"   Font "&mLetAri",10 Style "NQ"
           CASE vsW0=6
                @vLIN,mCLN Say "Orden: x Area"    Font "&mLetAri",10 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN      Say "Cód."       Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+06.8 Say "Ap.Paterno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+32.6 Say "Ap.Materno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+58.4 Say "Nombres"    Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+89.2 Say "Dirección"  Font "&mLetAri",9 Style "NT"
                IF mrEs>"1"
                     @vLIN,mCLN+128 Say "Distrito" Font "&mLetAri",9 Style "NT"
                ENDIF
                IF mrEs>"2"
                     @vLIN,mCLN+154 Say "Teléfono" Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+172 Say "DNI"      Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+184 Say "Militar"  Font "&mLetAri",9 Style "NT"
                ENDIF
                IF mrEs>"3"
                     @vLIN,mCLN+199.0 Say "RUC"    Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+215.4 Say "Cargo"  Font "&mLetAri",9 Style "NT"
                ENDIF
                IF mrEs>"4"
                     @vLIN,mCLN+241.0 Say "Area"   Font "&mLetAri",9 Style "NT"
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN     Say "Código"     Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+7   Say "Ap.Paterno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+27  Say "Ap.Materno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+47  Say "Nombres"    Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+67  Say "Dirección"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+97  Say "Distrito"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+117 Say "Teléfono"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+137 Say "DNI"        Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+157 Say "Militar"    Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+177 Say "RUC"        Font "&mLetAri",9 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Código"     Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+7   Say "Ap.Paterno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+27  Say "Ap.Materno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+47  Say "Nombres"    Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+67  Say "Dirección"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+97  Say "Distrito"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+117 Say "Teléfono"   Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+137 Say "DNI"        Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+157 Say "Militar"    Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+177 Say "RUC"        Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+0.3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
 DO CASE
      CASE mcOl=1
           DO coLbln
      CASE mcOl>1
           DO coLblz
 ENDCASE
ENDPROC
*
PROCEDURE Ord_4200b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "4200", "K", "F4200COD", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "4200", "K", "F4200NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "4200", "K", "F4200RUC", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "4200", "K", "F4200ELE", "A"
      CASE vsW0=5 .AND. vsW1=1
           DO orD_0000a WITH "4200", "K", "F4200NCA", "A"
      CASE vsW0=6 .AND. vsW1=1
           DO orD_0000a WITH "4200", "K", "F4200NAR", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "K", "F4200COD", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "K", "F4200NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "K", "F4200RUC", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "K", "F4200ELE", "A"
      CASE vsW0=5
           DO orD_0000a WITH "TMP", "K", "F4200NCA", "A"
      CASE vsW0=6
           DO orD_0000a WITH "TMP", "K", "F4200NAR", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_4200b
 SET READBORDER ON
 DO rs1_4200a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_4200b WITH "R"
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
ENDPROC
*
PROCEDURE See_4200b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=01
                     SEEK vcOd
                CASE vsW0=02
                     SEEK UPPER(ALLTRIM(vaPp))+UPPER(ALLTRIM(vaPm))+ ;
                          UPPER(ALLTRIM(vnOm))+vcOd
                CASE vsW0=03
                     SEEK vrUc+vcOd
                CASE vsW0=04
                     SEEK veLe+vcOd
                CASE vsW0=05
                     SEEK UPPER(ALLTRIM(vnCa))+vcOd
                CASE vsW0=06
                     SEEK UPPER(ALLTRIM(vnAr))+vcOd
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=01
                     SEEK icOd
                CASE vsW0=02
                     SEEK UPPER(ALLTRIM(iaPp))+UPPER(ALLTRIM(iaPm))+ ;
                          UPPER(ALLTRIM(inOm))+icOd
                CASE vsW0=03
                     SEEK irUc+icOd
                CASE vsW0=04
                     SEEK ieLe+icOd
                CASE vsW0=05
                     SEEK UPPER(ALLTRIM(inCa))+icOd
                CASE vsW0=06
                     SEEK UPPER(ALLTRIM(inAr))+icOd
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=01
                     SEEK ucOd
                CASE vsW0=02
                     SEEK UPPER(ALLTRIM(uaPp))+UPPER(ALLTRIM(uaPm))+ ;
                          UPPER(ALLTRIM(unOm))+ucOd
                CASE vsW0=03
                     SEEK urUc+ucOd
                CASE vsW0=04
                     SEEK ueLe+ucOd
                CASE vsW0=05
                     SEEK UPPER(ALLTRIM(unCa))+ucOd
                CASE vsW0=06
                     SEEK UPPER(ALLTRIM(unAr))+ucOd
           ENDCASE
 ENDCASE
 DO veR_lock
ENDPROC
*
PROCEDURE Mue_4200b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="i"
           STORE vcOd TO icOd
           STORE vaPp TO iaPp
           STORE vaPm TO iaPm
           STORE vnOm TO inOm
           STORE vrUc TO irUc
           STORE veLe TO ieLe
           STORE vnCa TO inCa
           STORE vnAr TO inAr
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcOd TO xcOd
           STORE vaPp TO xaPp
           STORE vaPm TO xaPm
           STORE vnOm TO xnOm
           STORE vrUc TO xrUc
           STORE veLe TO xeLe
           STORE vnCa TO xnCa
           STORE vnAr TO xnAr
      CASE pmU1="i" .AND. pmU2="v"
           STORE icOd TO vcOd
           STORE iaPp TO vaPp
           STORE iaPm TO vaPm
           STORE inOm TO vnOm
           STORE irUc TO vrUc
           STORE ieLe TO veLe
           STORE inCa TO vnCa
           STORE inAr TO vnAr
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcOd TO vcOd
           STORE xaPp TO vaPp
           STORE xaPm TO vaPm
           STORE xnOm TO vnOm
           STORE xrUc TO vrUc
           STORE xeLe TO veLe
           STORE xnCa TO vnCa
           STORE xnAr TO vnAr
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccOd TO vcOd
           STORE caPp TO vaPp
           STORE caPm TO vaPm
           STORE cnOm TO vnOm
           STORE crUc TO vrUc
           STORE ceLe TO veLe
           STORE cnCa TO vnCa
           STORE cnAr TO vnAr
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcOd TO ccOd
           STORE vaPp TO caPp
           STORE vaPm TO caPm
           STORE vnOm TO cnOm
           STORE vrUc TO crUc
           STORE veLe TO ceLe
           STORE vnCa TO cnCa
           STORE vnAr TO cnAr
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucOd TO vcOd
           STORE uaPp TO vaPp
           STORE uaPm TO vaPm
           STORE unOm TO vnOm
           STORE urUc TO vrUc
           STORE ueLe TO veLe
           STORE unCa TO vnCa
           STORE unAr TO vnAr
      CASE pmU1="F" .AND. pmU2="v"
           STORE f4200cod TO vcOd
           STORE f4200app TO vaPp
           STORE f4200apm TO vaPm
           STORE f4200nom TO vnOm
           STORE f4200ruc TO vrUc
           STORE f4200ele TO veLe
           STORE f4200nca TO vnCa
           STORE f4200nar TO vnAr
      CASE pmU1="F" .AND. pmU2="i"
           STORE f4200cod TO icOd
           STORE f4200app TO iaPp
           STORE f4200apm TO iaPm
           STORE f4200nom TO inOm
           STORE f4200ruc TO irUc
           STORE f4200ele TO ieLe
           STORE f4200nca TO inCa
           STORE f4200nar TO inAr
      CASE pmU1="F" .AND. pmU2="u"
           STORE f4200cod TO ucOd
           STORE f4200app TO uaPp
           STORE f4200apm TO uaPm
           STORE f4200nom TO unOm
           STORE f4200ruc TO urUc
           STORE f4200ele TO ueLe
           STORE f4200nca TO unCa
           STORE f4200nar TO unAr
 ENDCASE
ENDPROC
*
PROCEDURE Clp_4200b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
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
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_4200b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_4200b WITH "i"
           SKIP INT(mfIl-ifIl)
           DO veR_lock
           STORE 99 TO mkEy
           DO muE_4200b WITH "F", "v"
           DO diS_4200b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4200b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Trabajadores en el"
 @ pfIl+01, 02 SAY "Orden que se ha elegido."
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
 @ pfIl+18, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 28 SAY "Pasar datos a Excel"
 @ pfIl+10, 28 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+11, 28 SAY "Visualizar todos los datos del Trabajador"
 @ pfIl+12, 28 SAY "Línea inferior"
 @ pfIl+13, 28 SAY "Línea superior"
 @ pfIl+14, 28 SAY "Página siguiente"
 @ pfIl+15, 28 SAY "Página anterior"
 @ pfIl+16, 28 SAY "Primera línea"
 @ pfIl+17, 28 SAY "Última línea"
 @ pfIl+18, 28 SAY "Imprime LISTADO"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_4200b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda,  se da en cualquier parte de Apellidos o Nombres de los"
 @ pfIl+01, 02 SAY  ;
   "Trabajadores. Si la palabra o frase, no se encuentra contenida en ningu-"
 @ pfIl+02, 02 SAY  ;
   "no de los nombres de los Trabajadores, saldrá un mensaje. En caso de en-"
 @ pfIl+03, 02 SAY "contrarse, se regresará al Detalle."
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
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
