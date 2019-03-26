 STORE 0 TO voPf, voPb, voPn, voPd, coPf, coPb, coPn, coPd, ttO1, ttO2,  ;
       tsOl, tuSd
 SELECT teMporal_2
 SET FILTER TO
 SET ORDER TO FTM2DOC
 ZAP
 REINDEX
 SELECT teMporal
 GOTO TOP
 WAIT WINDOW NOWAIT "L E Y E N D O  Detalle.. Presionar ESC para Salir"+ ;
      CHR(13)+"Hora Inicial de Lectura: "+TIME()
 DO WHILE  .NOT. EOF()
      STORE ftM1tdo TO vtDo
      STORE ftM1ser TO vsEr
      STORE ftM1doc TO vdOc
      STORE ftM1fem TO vfEm
      STORE ftM1fve TO vfVe
      STORE ftM1ntt TO vnTt
      STORE ftM1nom TO vnOm
      STORE ftM1ruc TO vrUc
      STORE ftM1nfp TO vnFp
      STORE ftM1nve TO vnVe
      STORE ftM1mon TO vmOn
      STORE ftM1tot TO vtOt
      STORE ftM1alm TO vaLm
      SELECT caMbio
      SEEK vfEm
      IF EOF()
           STORE 1 TO vtCa
      ELSE
           STORE f9111tc3 TO vtCa
      ENDIF
      SELECT teMporal_2
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           APPEND BLANK
           REPLACE ftM2tdo WITH vtDo
           REPLACE ftM2ser WITH vsEr
           REPLACE ftM2doc WITH vdOc
           REPLACE ftM2fem WITH vfEm
           REPLACE ftM2fve WITH vfVe
           REPLACE ftM2ntt WITH vnTt
           REPLACE ftM2nom WITH vnOm
           REPLACE ftM2ruc WITH vrUc
           REPLACE ftM2nfp WITH vnFp
           REPLACE ftM2nve WITH vnVe
           REPLACE ftM2mon WITH vmOn
           REPLACE ftM2tca WITH vtCa
           REPLACE ftM2tot WITH vtOt
           REPLACE ftM2to1 WITH 0
           REPLACE ftM2to2 WITH 0
           REPLACE ftM2alm WITH vaLm
           DO CASE
                CASE vmOn=1
                     REPLACE ftM2sig WITH "S/."
                CASE vmOn=2
                     REPLACE ftM2sig WITH "US$"
           ENDCASE
           DO CASE
                CASE vmOn=1
                     REPLACE ftM2to1 WITH ftM2to1+vtOt
                     REPLACE ftM2to2 WITH ftM2to2+ROUND(vtOt/vtCa, 2)
                CASE vmOn=2
                     REPLACE ftM2to2 WITH ftM2to2+vtOt
                     REPLACE ftM2to1 WITH ftM2to1+ROUND(vtOt*vtCa, 2)
           ENDCASE
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
 = INKEY(0.05)
 WAIT CLEAR
 SELECT teMporal_2
 SEEK "FA"
 IF  .NOT. EOF()
      STORE 1 TO voPf, coPf
 ELSE
      STORE 0 TO voPf, coPf
      SEEK "FE"
      IF  .NOT. EOF()
           STORE 1 TO voPf, coPf
      ELSE
           STORE 0 TO voPf, coPf
           SEEK "FC"
           IF  .NOT. EOF()
                STORE 1 TO voPf, coPf
           ELSE
                STORE 0 TO voPf, coPf
           ENDIF
      ENDIF
 ENDIF
 SEEK "BO"
 IF  .NOT. EOF()
      STORE 1 TO voPb, coPb
 ELSE
      STORE 0 TO voPb, coPb
      SEEK "BE"
      IF  .NOT. EOF()
           STORE 1 TO voPb, coPb
      ELSE
           STORE 0 TO voPb, coPb
           SEEK "BC"
           IF  .NOT. EOF()
                STORE 1 TO voPb, coPb
           ELSE
                STORE 0 TO voPb, coPb
           ENDIF
      ENDIF
 ENDIF
 SEEK "NP"
 IF  .NOT. EOF()
      STORE 1 TO voPn, coPn
 ELSE
      STORE 0 TO voPn, coPn
 ENDIF
 SEEK "NC"
 IF  .NOT. EOF()
      STORE 1 TO voPd, coPd
 ELSE
      SEEK "N1"
      IF  .NOT. EOF()
           STORE 1 TO voPd, coPd
      ELSE
           SEEK "N3"
           IF  .NOT. EOF()
                STORE 1 TO voPd, coPd
           ELSE
                SEEK "ND"
                IF  .NOT. EOF()
                     STORE 1 TO voPd, coPd
                ELSE
                     SEEK "N2"
                     IF  .NOT. EOF()
                          STORE 1 TO voPd, coPd
                     ELSE
                          SEEK "N4"
                          IF  .NOT. EOF()
                               STORE 1 TO voPd, coPd
                          ELSE
                               STORE 0 TO voPd, coPd
                          ENDIF
                     ENDIF
                ENDIF
           ENDIF
      ENDIF
 ENDIF
 GOTO TOP
 DO muE_1300b IN PVR1300B WITH "F", "i"
 STORE 1 TO vsW0, csW0, vsW1, vsW2
 DO p00_1300b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1300b
 GOTO TOP
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_1300b WITH "i", "v"
 DO seE_1300b IN PVR1300B WITH "v", "1"
 DO diS_1300b IN PVR1300B WITH "R", "1"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1300b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1300b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. mrEs="3"
                DO CASE
                     CASE vsW1=3
                          STORE 1 TO vsW1
                     OTHERWISE
                          STORE vsW1+1 TO vsW1
                ENDCASE
                DO CASE
                     CASE vsW1=1 .AND. vsW0>8
                          STORE 09 TO vsW0
                     CASE vsW1=2 .AND. vsW0>8
                          STORE 10 TO vsW0
                     CASE vsW1=3 .AND. vsW0>8
                          STORE 11 TO vsW0
                ENDCASE
                DO tiT_1300b
                DO toT_1300b IN PVR1300B WITH "1"
                DO caM_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO boT_1300b IN PVR1300B WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. vsW0>8
                = INKEY(0.01)
                IF csW0=1
                     STORE 2 TO csW0
                ELSE
                     STORE 1 TO csW0
                ENDIF
                DO caM_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                DO CASE
                     CASE mkEy=k_Right .AND. vsW0=11
                          STORE 1 TO vsW0
                     CASE mkEy=k_Right .AND. vsW0=10 .AND. mrEs="3"
                          STORE 1 TO vsW0
                     CASE mkEy=k_Right .AND. vsW0=09 .AND. mrEs="3"
                          STORE 1 TO vsW0
                     CASE mkEy=k_Right
                          STORE vsW0+1 TO vsW0
                     CASE mkEy=k_Left .AND. vsW0=1 .AND. vsW1=1 .AND. mrEs="3"
                          STORE 09 TO vsW0
                     CASE mkEy=k_Left .AND. vsW0=1 .AND. vsW1=2 .AND. mrEs="3"
                          STORE 10 TO vsW0
                     CASE mkEy=k_Left .AND. vsW0=1
                          STORE 11 TO vsW0
                     CASE mkEy=k_Left
                          STORE vsW0-1 TO vsW0
                ENDCASE
                DO caM_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO boT_1300b IN PVR1300B WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_1300b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_1300b IN PVR1300B WITH "v", "1"
                STORE 999 TO mkEy
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE vtDo+vsEr+vdOc=ftM2tdo+ftM2ser+ftM2doc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_1300b
                               OTHERWISE
                                    DO seE_1300b IN PVR1300B WITH "v", "1"
                                    DO diS_1300b IN PVR1300B WITH "N", "1"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1300b WITH "i", "v"
                          DO seE_1300b IN PVR1300B WITH "v", "1"
                          DO diS_1300b IN PVR1300B WITH "R", "1"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE vtDo+vsEr+vdOc=ftM2tdo+ftM2ser+ftM2doc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1300b
                               OTHERWISE
                                    DO seE_1300b IN PVR1300B WITH "v", "1"
                                    DO diS_1300b IN PVR1300B WITH "N", "1"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1300b WITH "u", "v"
                          DO seE_1300b IN PVR1300B WITH "v", "1"
                          DO diS_1300b IN PVR1300B WITH "R", "1"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300b IN PVR1300B WITH "v", "1"
                          DO diS_1300b IN PVR1300B WITH "N", "1"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc7
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1300b IN PVR1300B WITH ffIl, ffIl+1, "1"
                               DO li1_1300b IN PVR1300B WITH ffIl, ffIl+1, "1"
                               DO li2_1300b WITH ffIl, ffIl+1
                               DO muE_1300b WITH "F", "u"
                               DO muE_1300b WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1300b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1300b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1300b IN PVR1300B WITH "v", "1"
                          DO diS_1300b IN PVR1300B WITH "R", "1"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300b IN PVR1300B WITH "v", "1"
                          DO diS_1300b IN PVR1300B WITH "N", "1"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc7
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_1300b IN PVR1300B WITH ifIl, ifIl+1, "1"
                               DO li1_1300b IN PVR1300B WITH ifIl, ifIl+1, "1"
                               DO li2_1300b WITH ifIl, ifIl+1
                               DO muE_1300b WITH "F", "v"
                               DO muE_1300b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1300b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1300b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1300b IN PVR1300B WITH "v", "1"
                          DO diS_1300b IN PVR1300B WITH "R", "1"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1300b IN PVR1300B WITH "u", "1"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1300b
                          STORE ifIl TO vfIl
                          DO muE_1300b WITH "i", "v"
                          DO seE_1300b IN PVR1300B WITH "v", "1"
                          DO diS_1300b IN PVR1300B WITH "R", "1"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1300b IN PVR1300B WITH "i", "1"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1300b
                          STORE ifIl TO vfIl
                          DO muE_1300b WITH "i", "v"
                          DO seE_1300b IN PVR1300B WITH "v", "1"
                          DO diS_1300b IN PVR1300B WITH "R", "1"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1300b IN PVR1300B WITH "v", "1"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1300b
 STORE ifIl TO vfIl, ufIl
 DO muE_1300b WITH "F", "i"
 DO muE_1300b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_1300b IN PVR1300B WITH "N", "1"
      DO muE_1300b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc7
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_1300b IN PVR1300B WITH ufIl+1, ffIl+1, "1"
      DO li1_1300b IN PVR1300B WITH ufIl+1, ffIl+1, "1"
      DO li2_1300b WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1300b
 PARAMETER ptIp, ppRg
 PRIVATE pcLn
 DO CASE
      CASE ppRg="1"
           STORE 0 TO pcLn
      CASE ppRg="2"
           STORE 8 TO pcLn
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. (ftM2tdo="NC" .OR. ftM2tdo="N1" .OR. ftM2tdo="N3")
           DO coL_fonro
      CASE ptIp="R" .AND. (ftM2tdo="NC" .OR. ftM2tdo="N1" .OR. ftM2tdo="N3")
           DO coLblr
      CASE ptIp="N" .AND. (ftM2tdo="ND" .OR. ftM2tdo="N2" .OR. ftM2tdo="N4")
           DO coL_fonaz
      CASE ptIp="R" .AND. (ftM2tdo="ND" .OR. ftM2tdo="N2" .OR. ftM2tdo="N4")
           DO coLblz
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+pCLN+0.0 Say FTM2TDO Font "&mLetAri",9 Style "NQ" Size 1,3.3
 @vFIL,mCO0+pCLN+4.0 Say FTM2SER Font "&mLetAri",9 Style "NQ" Size 1,4.0
 @vFIL,mCO0+pCLN+8.6 Say FTM2DOC Font "&mLetAri",9 Style "NQ" Size 1,9.8
 DO CASE
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+pCLN+19.0 Say FTM2FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+pCLN+32.1 Say FTM2FVE Font "&mLetAri",9 Style "NQ" Size 1,12.6
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE ppRg="1"
                     @vFIL,mCO0+45.3      Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S63"
                CASE ppRg="2"
                     @vFIL,mCO0+pCLN+45.3 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S53"
           ENDCASE
           @vFIL,mCO0+105.9 Say FTM2RUC Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "@S11"
           @vFIL,mCO0+122.5 Say FTM2NVE Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "@S19"
           @vFIL,mCO0+139.2 Say FTM2NFP Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "@S19"
           @vFIL,mCO0+155.8 Say FTM2NTT Font "&mLetAri",9 Style "NQ" Size 1,19.1 Pict "@S22"
           DO CASE
                CASE vsW1=1
                     @vFIL,mCO0+175.5 Say FTM2SIG Font "&mLetAri",9 Style "NQ" Size 1,04.8
                     @vFIL,mCO0+180.4 Say FTM2TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
                CASE vsW1=2
                     @vFIL,mCO0+175.5 Say "S/."   Font "&mLetAri",9 Style "NQ" Size 1,04.8
                     @vFIL,mCO0+180.4 Say FTM2TO1 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
                CASE vsW1=3
                     @vFIL,mCO0+175.5 Say "US$"   Font "&mLetAri",9 Style "NQ" Size 1,04.8
                     @vFIL,mCO0+180.4 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           ENDCASE
      CASE mrEs="4"
           DO CASE
                CASE ppRg="1"
                     @vFIL,mCO0+45.3      Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S63"
                CASE ppRg="2"
                     @vFIL,mCO0+pCLN+45.3 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S53"
           ENDCASE
           @vFIL,mCO0+105.9 Say FTM2RUC Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "@S11"
           @vFIL,mCO0+122.5 Say FTM2NVE Font "&mLetAri",9 Style "NQ" Size 1,20.4 Pict "@S23"
           @vFIL,mCO0+143.6 Say FTM2NFP Font "&mLetAri",9 Style "NQ" Size 1,20.4 Pict "@S23"
           @vFIL,mCO0+164.6 Say FTM2NTT Font "&mLetAri",9 Style "NQ" Size 1,21.8 Pict "@S25"
           @vFIL,mCO0+186.9 Say FTM2SIG Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,mCO0+191.7 Say FTM2TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,mCO0+211.9 Say FTM2TO1 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,mCO0+232.1 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
      OTHERWISE
           DO CASE
                CASE ppRg="1"
                     @vFIL,mCO0+45.2      Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S63"
                CASE ppRg="2"
                     @vFIL,mCO0+pCLN+45.2 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S53"
           ENDCASE
           @vFIL,mCO0+105.9 Say FTM2RUC Font "&mLetAri",9 Style "NQ" Size 1,16.0 Pict "@S11"
           @vFIL,mCO0+122.4 Say FTM2NVE Font "&mLetAri",9 Style "NQ" Size 1,30.0 Pict "@S33"
           @vFIL,mCO0+153.2 Say FTM2NFP Font "&mLetAri",9 Style "NQ" Size 1,20.4 Pict "@S23"
           @vFIL,mCO0+174.2 Say FTM2NTT Font "&mLetAri",9 Style "NQ" Size 1,29.4 Pict "@S32"
           @vFIL,mCO0+204.1 Say FTM2SIG Font "&mLetAri",9 Style "NQ" Size 1,04.8
           @vFIL,mCO0+208.9 Say FTM2TOT Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,mCO0+229.1 Say FTM2TO1 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
           @vFIL,mCO0+249.2 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999,999.99"
 ENDCASE
 RELEASE pcLn
ENDPROC
*
PROCEDURE Lin_1300b
 PARAMETER piNi, pfIn, ppRg
 PRIVATE pcLn
 DO CASE
      CASE ppRg="1"
           STORE 0 TO pcLn
      CASE ppRg="2"
           STORE 8 TO pcLn
 ENDCASE
 DO coLsc3
 @ piNi, mcO0+pcLn+18.6 TO pfIn, mcO0+pcLn+18.6
 @ piNi, mcO0+pcLn+31.8 TO pfIn, mcO0+pcLn+31.8
 @ piNi, mcO0+pcLn+44.9 TO pfIn, mcO0+pcLn+44.9
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+105.5 TO pfIn, mcO0+105.5
           @ piNi, mcO0+122.1 TO pfIn, mcO0+122.1
           @ piNi, mcO0+138.8 TO pfIn, mcO0+138.8
           @ piNi, mcO0+155.4 TO pfIn, mcO0+155.4
      CASE mrEs="4"
           @ piNi, mcO0+105.5 TO pfIn, mcO0+105.5
           @ piNi, mcO0+122.1 TO pfIn, mcO0+122.1
           @ piNi, mcO0+143.2 TO pfIn, mcO0+143.2
           @ piNi, mcO0+164.2 TO pfIn, mcO0+164.2
      OTHERWISE
           @ piNi, mcO0+105.5 TO pfIn, mcO0+105.5
           @ piNi, mcO0+122.0 TO pfIn, mcO0+122.0
           @ piNi, mcO0+152.6 TO pfIn, mcO0+152.6
           @ piNi, mcO0+173.6 TO pfIn, mcO0+173.6
 ENDCASE
 RELEASE pcLn
ENDPROC
*
PROCEDURE Li1_1300b
 PARAMETER piNi, pfIn, ppRg
 PRIVATE pcLn
 DO CASE
      CASE ppRg="1"
           STORE 0 TO pcLn
      CASE ppRg="2"
           STORE 8 TO pcLn
 ENDCASE
 DO coLsc3
 @ piNi, mcO0+pcLn+3.6 TO pfIn, mcO0+pcLn+3.6
 @ piNi, mcO0+pcLn+8.2 TO pfIn, mcO0+pcLn+8.2
 RELEASE pcLn
ENDPROC
*
PROCEDURE Li2_1300b
 PARAMETER piNi, pfIn
 DO coLsc3
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+175.1 TO pfIn, mcO0+175.1
      CASE mrEs="4"
           @ piNi, mcO0+186.5 TO pfIn, mcO0+186.5
           @ piNi, mcO0+211.5 TO pfIn, mcO0+211.5
           @ piNi, mcO0+231.8 TO pfIn, mcO0+231.8
      OTHERWISE
           @ piNi, mcO0+203.7 TO pfIn, mcO0+203.7
           @ piNi, mcO0+228.7 TO pfIn, mcO0+228.7
           @ piNi, mcO0+248.8 TO pfIn, mcO0+248.8
 ENDCASE
ENDPROC
*
PROCEDURE P00_1300b
 RESTORE SCREEN FROM vpAn_99
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 DO cuAdro WITH ifIl-3, mcO0, ffIl+3.5, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifIl-1.8, mcO0-0.8 TO ifIl-0.4, mcO0+muCo+0.5 PATTERN 1
 @ ffIl+1.6, mcO0-0.8 TO ffIl+4.4, mcO0+muCo+0.5 PATTERN 1
 @fFIL+4.8,mCO0+mUCO-83 Say "Reporte de Ventas del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "NT" Color 7+
 DO liN_1300b IN PVR1300B WITH ifIl-1.8, ffIl+1.6, "1"
 DO li1_1300b IN PVR1300B WITH ifIl-0.4, ffIl+1.6, "1"
 DO li2_1300b WITH ifIl-1.8, ffIl+4.4
 DO coLsc4
 @iFIL-1.7,mCO0+02.2 Say "Documento" Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,mCO0+21.4 Say "Fecha"     Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,mCO0+34.0 Say "Vencim"    Font "&mLetAri",10 Style "BQ"
 @iFIL-1.7,mCO0+51.0 Say "Cliente"   Font "&mLetAri",10 Style "BQ"
 DO CASE
      CASE mrEs="3"
           @iFIL-1.7,mCO0+111.0 Say "RUC"           Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+124.4 Say "Vendedor"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+142.7 Say "F.Pago"        Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+160.5 Say "Titular"       Font "&mLetAri",10 Style "BQ"
           @fFIL+2.2,mCO0+156.6 Say "TOTALES:"      Font "&mLetAri",09 Style "BQ"
      CASE mrEs="4"
           @iFIL-1.7,mCO0+111.9 Say "RUC"           Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+126.4 Say "Vendedor"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+144.2 Say "Forma de Pago" Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+171.5 Say "Titular"       Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+195.9 Say "Total"         Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+215.1 Say "Total en S/."  Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+232.8 Say "Total en US$"  Font "&mLetAri",10 Style "BQ"
           @fFIL+2.2,mCO0+166.6 Say "TOTALES:"      Font "&mLetAri",09 Style "BQ"
      OTHERWISE
           @iFIL-1.7,mCO0+111.9 Say "RUC"           Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+130.4 Say "Vendedor"      Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+153.7 Say "Forma de Pago" Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+182.5 Say "Titular"       Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+212.9 Say "Total"         Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+231.1 Say "Total en S/."  Font "&mLetAri",10 Style "BQ"
           @iFIL-1.7,mCO0+250.8 Say "Total en US$"  Font "&mLetAri",10 Style "BQ"
           @fFIL+2.2,mCO0+184.6 Say "TOTALES:"      Font "&mLetAri",09 Style "BQ"
 ENDCASE
 DO p01_1300b IN PVR1300B WITH "1"
 DO tiT_1300b
 DO boT_1300b IN PVR1300B WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO opC_1300b IN PVR1300B WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Opc_1300b
 PARAMETER ppRg
 DO coLsc3
 STORE "**" TO vtD1, vtD2, vtD3, vtD4, vtD5, vt11, vt12, vt21, vt22, vt31,  ;
       vt32, vt41, vt42
 @iFIL-3,mCO0+.2 Say "Incluye:" Font "&mLetAri",10 Style "BQ"
 @iFIL-3,mCO0+15 Say "Facturas" Font "&mLetAri",10 Style "BQ"
 @iFIL-3,mCO0+33 Say "Boletas"  Font "&mLetAri",10 Style "BQ"
 @iFIL-3,mCO0+49 Say "NP"       Font "&mLetAri",10 Style "BQ"
 @iFIL-3,mCO0+56 Say "ND/NC"    Font "&mLetAri",10 Style "BQ"
 DO CASE
      CASE voPf=1
           STORE "FA" TO vtD1
           STORE "FE" TO vt11
           STORE "FC" TO vt12
           DO prEsiona WITH "1", "SI", ifIl-2.9, mcO0+12
      CASE voPf=0
           DO prEsiona WITH "1", "NO", ifIl-2.9, mcO0+12
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE voPb=1
           STORE "BO" TO vtD2
           STORE "BE" TO vt21
           STORE "BC" TO vt22
           DO prEsiona WITH "1", "SI", ifIl-2.9, mcO0+30
      CASE voPb=0
           DO prEsiona WITH "1", "NO", ifIl-2.9, mcO0+30
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE voPn=1
           STORE "NP" TO vtD3
           DO prEsiona WITH "1", "SI", ifIl-2.9, mcO0+46
      CASE voPn=0
           DO prEsiona WITH "1", "NO", ifIl-2.9, mcO0+46
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE voPd=1
           STORE "NC" TO vtD4
           STORE "N1" TO vt31
           STORE "N3" TO vt32
           STORE "ND" TO vtD5
           STORE "N2" TO vt41
           STORE "N4" TO vt42
           DO prEsiona WITH "1", "SI", ifIl-2.9, mcO0+65
      CASE voPd=0
           DO prEsiona WITH "1", "NO", ifIl-2.9, mcO0+65
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 IF voPf=1 .AND. voPb=1 .AND. voPn=1 .AND. voPd=1
      SET FILTER TO
 ELSE
      SET FILTER TO ftM2tdo=vtD1 .OR. ftM2tdo=vtD2 .OR. ftM2tdo=vtD3 .OR. ftM2tdo=vtD4 .OR. ftM2tdo=vtD5 .OR. ftM2tdo=vt11 .OR. ftM2tdo=vt12 .OR. ftM2tdo=vt21 .OR. ftM2tdo=vt22 .OR. ftM2tdo=vt31 .OR. ftM2tdo=vt32 .OR. ftM2tdo=vt41 .OR. ftM2tdo=vt42
 ENDIF
 SET NEAR ON
 DO seE_1300b IN PVR1300B WITH "i", ppRg
 SET NEAR OFF
 IF EOF()
      GOTO BOTTOM
 ENDIF
 STORE ifIl TO vfIl
 DO muE_1300b IN PVR1300B WITH "F", "i"
 IF ppRg="1"
      DO paN_1300b IN PVR1300B
 ELSE
      DO paN_1300e IN PVR1300E
 ENDIF
 SELECT teMporal_2
 GOTO TOP
 IF ppRg="1"
      SUM ftM2tot TO tsOl FOR ftM2mon=1
      SUM ftM2tot TO tuSd FOR ftM2mon=2
      SUM ftM2to1 TO ttO1 ALL
      SUM ftM2to2 TO ttO2 ALL
 ELSE
      SUM ftM2tot TO tsO1 FOR ftM2mon=1
      SUM ftM2tot TO tuS1 FOR ftM2mon=2
      SUM ftM2to1 TO ttT1 ALL
      SUM ftM2to2 TO ttT2 ALL
 ENDIF
 GOTO TOP
 STORE ifIl TO vfIl
 DO muE_1300b IN PVR1300B WITH "i", "v"
 DO seE_1300b IN PVR1300B WITH "v", ppRg
 DO diS_1300b IN PVR1300B WITH "R", ppRg
 DO toT_1300b IN PVR1300B WITH ppRg
ENDPROC
*
PROCEDURE Bot_1300b
 PARAMETER ppRg
 PRIVATE psW0, pcLn
 DO CASE
      CASE ppRg="1"
           STORE vsW0 TO psW0
           STORE 0 TO pcLn
      CASE ppRg="2"
           STORE vsW5 TO psW0
           STORE 8 TO pcLn
 ENDCASE
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ffIl+2.3, mcO0+pcLn
 @fFIL+2.5,mCO0+pCLN+0.9 Say StrTran(Str(pSW0,2,0)," ","0")+"/11" Font "&mLetRom",9 Style "BT"
 RELEASE psW0, pcLn
ENDPROC
*
PROCEDURE Tit_1300b
 DO coLsc3
 IF mrEs="3"
      DO CASE
           CASE vsW1=1
                @iFIL-1.7,mCO0+179.1 Say "      Total"  Font "&mLetAri",10 Style "BQ" Size 1,14
           CASE vsW1=2
                @iFIL-1.7,mCO0+179.1 Say " Total a S/." Font "&mLetAri",10 Style "BQ" Size 1,14
           CASE vsW1=3
                @iFIL-1.7,mCO0+179.1 Say "Total a US$"  Font "&mLetAri",10 Style "BQ" Size 1,14
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE Tot_1300b
 PARAMETER ppRg
 PRIVATE psOl, puSd, ptO1, ptO2
 DO CASE
      CASE ppRg="1"
           STORE tsOl TO psOl
           STORE tuSd TO puSd
           STORE ttO1 TO ptO1
           STORE ttO2 TO ptO2
      CASE ppRg="2"
           STORE tsO1 TO psOl
           STORE tuS1 TO puSd
           STORE ttT1 TO ptO1
           STORE ttT2 TO ptO2
 ENDCASE
 DO coLsc4
 DO CASE
      CASE mrEs="3" .AND. vsW1=1
           @fFIL+1.9,mCO0+171.1 Say "S/." Font "&mLetAri",10 Style "BQ" Size 1,03.0
           @fFIL+3.1,mCO0+169.7 Say "US$" Font "&mLetAri",10 Style "BQ" Size 1,04.2
           @fFIL+1.9,mCO0+175.5 Say pSOL  Font "&mLetAri",9  Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
           @fFIL+3.1,mCO0+175.5 Say pUSD  Font "&mLetAri",9  Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
      CASE mrEs="3" .AND. vsW1=2
           @fFIL+1.9,mCO0+171.1 Say "   " Font "&mLetAri",10 Style "BQ" Size 1,03.0
           @fFIL+3.1,mCO0+169.7 Say "   " Font "&mLetAri",10 Style "BQ" Size 1,04.2
           @fFIL+3.1,mCO0+175.5 Say "   " Font "&mLetAri",9  Style "BQ" Size 1,20.3
           DO CASE
                CASE ptO1>9999999999.99
                     @fFIL+1.9,mCO0+175.5 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
                CASE ptO1>999999999.99
                     @fFIL+1.9,mCO0+175.5 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
                OTHERWISE
                     @fFIL+1.9,mCO0+175.5 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
           ENDCASE
      CASE mrEs="3" .AND. vsW1=3
           @fFIL+1.9,mCO0+171.1 Say "   " Font "&mLetAri",10 Style "BQ" Size 1,03.0
           @fFIL+3.1,mCO0+169.7 Say "   " Font "&mLetAri",10 Style "BQ" Size 1,04.2
           @fFIL+3.1,mCO0+175.5 Say "   " Font "&mLetAri",9  Style "BQ" Size 1,20.3
           DO CASE
                CASE ptO1>9999999999.99
                     @fFIL+1.9,mCO0+175.5 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
                CASE ptO1>999999999.99
                     @fFIL+1.9,mCO0+175.5 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
                OTHERWISE
                     @fFIL+1.9,mCO0+175.5 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
           ENDCASE
      CASE mrEs="4"
           @fFIL+1.9,mCO0+182.6 Say "S/." Font "&mLetAri",10 Style "BQ" Size 1,03.0
           @fFIL+3.1,mCO0+181.1 Say "US$" Font "&mLetAri",10 Style "BQ" Size 1,04.2
           @fFIL+1.9,mCO0+187.0 Say pSOL  Font "&mLetAri",9  Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
           @fFIL+3.1,mCO0+187.0 Say pUSD  Font "&mLetAri",9  Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
           DO CASE
                CASE ptO1>9999999999.99
                     @fFIL+1.9,mCO0+212.0 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "99999999999.99"
                CASE ptO1>999999999.99
                     @fFIL+1.9,mCO0+212.0 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "9999999,999.99"
                OTHERWISE
                     @fFIL+1.9,mCO0+212.0 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
           ENDCASE
           DO CASE
                CASE ptO2>9999999999.99
                     @fFIL+1.9,mCO0+232.3 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "99999999999.99"
                CASE ptO2>999999999.99
                     @fFIL+1.9,mCO0+232.3 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "9999999,999.99"
                OTHERWISE
                     @fFIL+1.9,mCO0+232.3 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
           ENDCASE
      OTHERWISE
           @fFIL+1.9,mCO0+199.6 Say "S/." Font "&mLetAri",10 Style "BQ" Size 1,03.0
           @fFIL+3.1,mCO0+198.3 Say "US$" Font "&mLetAri",10 Style "BQ" Size 1,04.2
           @fFIL+1.9,mCO0+204.1 Say pSOL  Font "&mLetAri",9  Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
           @fFIL+3.1,mCO0+204.1 Say pUSD  Font "&mLetAri",9  Style "BQ" Size 1,20.3 Pict "9999,999,999.99"
           DO CASE
                CASE ptO1>9999999999.99
                     @fFIL+1.9,mCO0+229.1 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "99999999999.99"
                CASE ptO1>999999999.99
                     @fFIL+1.9,mCO0+229.1 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "9999999,999.99"
                OTHERWISE
                     @fFIL+1.9,mCO0+229.1 Say pTO1 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
           ENDCASE
           DO CASE
                CASE ptO2>9999999999.99
                     @fFIL+1.9,mCO0+249.3 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "99999999999.99"
                CASE ptO2>999999999.99
                     @fFIL+1.9,mCO0+249.3 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "9999999,999.99"
                OTHERWISE
                     @fFIL+1.9,mCO0+249.3 Say pTO2 Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
           ENDCASE
 ENDCASE
 RELEASE psOl, puSd, ptO1, ptO2
ENDPROC
*
PROCEDURE P01_1300b
 PARAMETER ppRg
 PRIVATE psW0, psWc, pcLn
 DO CASE
      CASE ppRg="1"
           STORE vsW0 TO psW0
           STORE csW0 TO psWc
           STORE 0 TO pcLn
      CASE ppRg="2"
           STORE vsW5 TO psW0
           STORE csW5 TO psWc
           STORE 8 TO pcLn
 ENDCASE
 DO CASE
      CASE mrEs="3"
           STORE mcO0+pcLn TO vcL1
           STORE mcO0+pcLn+19 TO vcL2
           STORE mcO0+pcLn+32.1 TO vcL3
           STORE mcO0+pcLn+45.2 TO vcL4
           STORE mcO0+105.9 TO vcL5
           STORE mcO0+122.4 TO vcL6
           STORE mcO0+139.2 TO vcL7
           STORE mcO0+155.8 TO vcL8
           STORE mcO0+198.4 TO vcL9
           STORE mcO0+198.4 TO vcL0
           STORE mcO0+198.4 TO vcLa
      CASE mrEs="4"
           STORE mcO0+pcLn TO vcL1
           STORE mcO0+pcLn+19 TO vcL2
           STORE mcO0+pcLn+32.1 TO vcL3
           STORE mcO0+pcLn+45.2 TO vcL4
           STORE mcO0+105.9 TO vcL5
           STORE mcO0+122.4 TO vcL6
           STORE mcO0+143.6 TO vcL7
           STORE mcO0+164.6 TO vcL8
           STORE mcO0+209.4 TO vcL9
           STORE mcO0+229.2 TO vcL0
           STORE mcO0+250.1 TO vcLa
      OTHERWISE
           STORE mcO0+pcLn TO vcL1
           STORE mcO0+pcLn+19 TO vcL2
           STORE mcO0+pcLn+32.1 TO vcL3
           STORE mcO0+pcLn+45.2 TO vcL4
           STORE mcO0+105.9 TO vcL5
           STORE mcO0+122.4 TO vcL6
           STORE mcO0+153.2 TO vcL7
           STORE mcO0+174.2 TO vcL8
           STORE mcO0+226.4 TO vcL9
           STORE mcO0+247.0 TO vcL0
           STORE mcO0+267.1 TO vcLa
 ENDCASE
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcL0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-1.7, vcLa
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE psW0=1
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL1
      CASE psW0=2
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL2
      CASE psW0=3
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL3
      CASE psW0=4
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL4
      CASE psW0=5
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL5
      CASE psW0=6
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL6
      CASE psW0=7
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL7
      CASE psW0=8
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL8
      CASE psW0=9
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL9
      CASE psW0=10
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcL0
      CASE psW0=11
           DO prEsiona WITH "1", "CONSU3", ifIl-1.7, vcLa
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLplp
 @iFIL-3,vCL9-8 Say "Orden:" Font "&mLetAri",9 Style "BT"
 @iFIL-3,vCL0-8 Say "Orden:" Font "&mLetAri",9 Style "BT"
 @iFIL-3,vCLA-8 Say "Orden:" Font "&mLetAri",9 Style "BT"
 DO prEsiona WITH "3", "CONSU3", ifIl-3, vcL9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-3, vcL0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifIl-3, vcLa
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE psW0=9 .AND. psWc=1
           DO coLsc7
           @iFIL-3,vCL9-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU3", ifIl-3, vcL9
      CASE psW0=9 .AND. psWc=2
           DO coLsc7
           @iFIL-3,vCL9-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU4", ifIl-3, vcL9
      CASE psW0=10 .AND. psWc=1
           DO coLsc7
           @iFIL-3,vCL0-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU3", ifIl-3, vcL0
      CASE psW0=10 .AND. psWc=2
           DO coLsc7
           @iFIL-3,vCL0-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU4", ifIl-3, vcL0
      CASE psW0=11 .AND. psWc=1
           DO coLsc7
           @iFIL-3,vCLA-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU3", ifIl-3, vcLa
      CASE psW0=11 .AND. psWc=2
           DO coLsc7
           @iFIL-3,vCLA-8 Say "Orden:" Font "&mLetAri",9 Style "BQ"
           DO prEsiona WITH "1", "CONSU4", ifIl-3, vcLa
 ENDCASE
 RELEASE psW0, psWc
ENDPROC
*
PROCEDURE Cam_1300b
 DO p01_1300b IN PVR1300B WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=1
           SET ORDER TO FTM2DOC
      CASE vsW0=2
           SET ORDER TO FTM2FEM
      CASE vsW0=3
           SET ORDER TO FTM2FVE
      CASE vsW0=4
           SET ORDER TO FTM2NOM
      CASE vsW0=5
           SET ORDER TO FTM2RUC
      CASE vsW0=6
           SET ORDER TO FTM2NVE
      CASE vsW0=7
           SET ORDER TO FTM2NFP
      CASE vsW0=8
           SET ORDER TO FTM2NTT
      CASE vsW0=9 .AND. csW0=1
           SET ORDER TO FTM2TOT ASCENDING
      CASE vsW0=9 .AND. csW0=2
           SET ORDER TO FTM2TOT DESCENDING
      CASE vsW0=10 .AND. csW0=1
           SET ORDER TO FTM2TO1 ASCENDING
      CASE vsW0=10 .AND. csW0=2
           SET ORDER TO FTM2TO1 DESCENDING
      CASE vsW0=11 .AND. csW0=1
           SET ORDER TO FTM2TO2 ASCENDING
      CASE vsW0=11 .AND. csW0=2
           SET ORDER TO FTM2TO2 DESCENDING
 ENDCASE
 GOTO TOP
 DO seE_1300b IN PVR1300B WITH "i", "1"
 DO paN_1300b
 STORE ifIl TO vfIl
 DO muE_1300b WITH "i", "v"
 DO seE_1300b IN PVR1300B WITH "v", "1"
 DO diS_1300b IN PVR1300B WITH "R", "1"
ENDPROC
*
PROCEDURE See_1300b
 PARAMETER psEe, ppRg
 PRIVATE psW0
 DO CASE
      CASE ppRg="1"
           STORE vsW0 TO psW0
      CASE ppRg="2"
           STORE vsW5 TO psW0
 ENDCASE
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE psW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE psW0=2
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
                CASE psW0=3
                     SEEK SUBSTR(DTOC(vfVe), 7, 4)+SUBSTR(DTOC(vfVe), 4,  ;
                          2)+SUBSTR(DTOC(vfVe), 1, 2)+vtDo+vsEr+vdOc
                CASE psW0=4
                     SEEK UPPER(vnOm)+vtDo+vsEr+vdOc
                CASE psW0=5
                     SEEK UPPER(vrUc)+vtDo+vsEr+vdOc
                CASE psW0=6
                     SEEK UPPER(vnVe)+vtDo+vsEr+vdOc
                CASE psW0=7
                     SEEK UPPER(vnFp)+vtDo+vsEr+vdOc
                CASE psW0=8
                     SEEK UPPER(vnTt)+vtDo+vsEr+vdOc
                CASE psW0=9
                     SEEK STR(vmOn, 1, 0)+STR(vtOt, 16, 2)+vtDo+vsEr+vdOc
                CASE psW0=10
                     SEEK STR(vtO1, 16, 2)+vtDo+vsEr+vdOc
                CASE psW0=11
                     SEEK STR(vtO2, 16, 2)+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE psW0=1
                     SEEK itDo+isEr+idOc
                CASE psW0=2
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc
                CASE psW0=3
                     SEEK SUBSTR(DTOC(ifVe), 7, 4)+SUBSTR(DTOC(ifVe), 4,  ;
                          2)+SUBSTR(DTOC(ifVe), 1, 2)+itDo+isEr+idOc
                CASE psW0=4
                     SEEK UPPER(inOm)+itDo+isEr+idOc
                CASE psW0=5
                     SEEK UPPER(irUc)+itDo+isEr+idOc
                CASE psW0=6
                     SEEK UPPER(inVe)+itDo+isEr+idOc
                CASE psW0=7
                     SEEK UPPER(inFp)+itDo+isEr+idOc
                CASE psW0=8
                     SEEK UPPER(inTt)+itDo+isEr+idOc
                CASE psW0=9
                     SEEK STR(imOn, 1, 0)+STR(itOt, 16, 2)+itDo+isEr+idOc
                CASE psW0=10
                     SEEK STR(itO1, 16, 2)+itDo+isEr+idOc
                CASE psW0=11
                     SEEK STR(itO2, 16, 2)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE psW0=1
                     SEEK utDo+usEr+udOc
                CASE psW0=2
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc
                CASE psW0=3
                     SEEK SUBSTR(DTOC(ufVe), 7, 4)+SUBSTR(DTOC(ufVe), 4,  ;
                          2)+SUBSTR(DTOC(ufVe), 1, 2)+utDo+usEr+udOc
                CASE psW0=4
                     SEEK UPPER(unOm)+utDo+usEr+udOc
                CASE psW0=5
                     SEEK UPPER(urUc)+utDo+usEr+udOc
                CASE psW0=6
                     SEEK UPPER(unVe)+utDo+usEr+udOc
                CASE psW0=7
                     SEEK UPPER(unFp)+utDo+usEr+udOc
                CASE psW0=8
                     SEEK UPPER(unTt)+utDo+usEr+udOc
                CASE psW0=9
                     SEEK STR(umOn, 1, 0)+STR(utOt, 16, 2)+utDo+usEr+udOc
                CASE psW0=10
                     SEEK STR(utO1, 16, 2)+utDo+usEr+udOc
                CASE psW0=11
                     SEEK STR(utO2, 16, 2)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
 RELEASE psW0
ENDPROC
*
PROCEDURE Mue_1300b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE ifEm TO vfEm
           STORE ifVe TO vfVe
           STORE inOm TO vnOm
           STORE irUc TO vrUc
           STORE inVe TO vnVe
           STORE inFp TO vnFp
           STORE inTt TO vnTt
           STORE imOn TO vmOn
           STORE itO1 TO vtO1
           STORE itO2 TO vtO2
           STORE itOt TO vtOt
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE ufEm TO vfEm
           STORE ufVe TO vfVe
           STORE unOm TO vnOm
           STORE urUc TO vrUc
           STORE unVe TO vnVe
           STORE unFp TO vnFp
           STORE unTt TO vnTt
           STORE umOn TO vmOn
           STORE utO1 TO vtO1
           STORE utO2 TO vtO2
           STORE utOt TO vtOt
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM2tdo TO vtDo
           STORE ftM2ser TO vsEr
           STORE ftM2doc TO vdOc
           STORE ftM2fem TO vfEm
           STORE ftM2fve TO vfVe
           STORE ftM2nom TO vnOm
           STORE ftM2ruc TO vrUc
           STORE ftM2nve TO vnVe
           STORE ftM2nfp TO vnFp
           STORE ftM2ntt TO vnTt
           STORE ftM2mon TO vmOn
           STORE ftM2to1 TO vtO1
           STORE ftM2to2 TO vtO2
           STORE ftM2tot TO vtOt
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM2tdo TO utDo
           STORE ftM2ser TO usEr
           STORE ftM2doc TO udOc
           STORE ftM2fem TO ufEm
           STORE ftM2fve TO ufVe
           STORE ftM2nom TO unOm
           STORE ftM2ruc TO urUc
           STORE ftM2nve TO unVe
           STORE ftM2nfp TO unFp
           STORE ftM2ntt TO unTt
           STORE ftM2mon TO umOn
           STORE ftM2to1 TO utO1
           STORE ftM2to2 TO utO2
           STORE ftM2tot TO utOt
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM2tdo TO itDo
           STORE ftM2ser TO isEr
           STORE ftM2doc TO idOc
           STORE ftM2fem TO ifEm
           STORE ftM2fve TO ifVe
           STORE ftM2nom TO inOm
           STORE ftM2ruc TO irUc
           STORE ftM2nve TO inVe
           STORE ftM2nfp TO inFp
           STORE ftM2ntt TO inTt
           STORE ftM2mon TO imOn
           STORE ftM2to1 TO itO1
           STORE ftM2to2 TO itO2
           STORE ftM2tot TO itOt
 ENDCASE
ENDPROC
*
PROCEDURE Res_1300b
 DO p00_1300a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_1300b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 DO CASE
      CASE vsW0=1
           SET ORDER TO FTM2DOC
      CASE vsW0=2
           SET ORDER TO FTM2FEM
      CASE vsW0=3
           SET ORDER TO FTM2FVE
      CASE vsW0=4
           SET ORDER TO FTM2NOM
      CASE vsW0=5
           SET ORDER TO FTM2RUC
      CASE vsW0=6
           SET ORDER TO FTM2NVE
      CASE vsW0=7
           SET ORDER TO FTM2NFP
      CASE vsW0=8
           SET ORDER TO FTM2NTT
      CASE vsW0=9 .AND. csW0=1
           SET ORDER TO FTM2TOT ASCENDING
      CASE vsW0=9 .AND. csW0=2
           SET ORDER TO FTM2TOT DESCENDING
      CASE vsW0=10 .AND. csW0=1
           SET ORDER TO FTM2TO1 ASCENDING
      CASE vsW0=10 .AND. csW0=2
           SET ORDER TO FTM2TO1 DESCENDING
      CASE vsW0=11 .AND. csW0=1
           SET ORDER TO FTM2TO2 ASCENDING
      CASE vsW0=11 .AND. csW0=2
           SET ORDER TO FTM2TO2 DESCENDING
 ENDCASE
 DO seE_1300b IN PVR1300B WITH "i", "1"
 DO paN_1300b
 DO seE_1300b IN PVR1300B WITH "i", "1"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vtDo+vsEr+vdOc=ftM2tdo+ftM2ser+ftM2doc
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      DO muE_1300b WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO seE_1300b IN PVR1300B WITH "v", "1"
 DO diS_1300b IN PVR1300B WITH "R", "1"
ENDPROC
*
PROCEDURE Imp_1300b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO reP_1300b
 DO fpR_0000a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_1300b
ENDPROC
*
PROCEDURE Xls_1300b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Ventas detalladas desde "+DTOC(dfEm)+" hasta "+ ;
    DTOC(hfEm), "Listado", 15
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 01).vaLue = "Documento"
 pxLs.ceLls(3, 04).vaLue = "Emisión"
 pxLs.ceLls(3, 05).vaLue = "Vencimiento"
 pxLs.ceLls(3, 06).vaLue = "Cliente"
 pxLs.ceLls(3, 07).vaLue = "RUC"
 pxLs.ceLls(3, 08).vaLue = "Titular"
 pxLs.ceLls(3, 09).vaLue = "Vendedor"
 pxLs.ceLls(3, 10).vaLue = "Forma de Pago"
 pxLs.ceLls(3, 11).vaLue = "Mon"
 pxLs.ceLls(3, 12).vaLue = "Total"
 pxLs.ceLls(3, 13).vaLue = " "
 pxLs.ceLls(3, 14).vaLue = "Total a S/."
 pxLs.ceLls(3, 15).vaLue = "Total a US$"
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,3)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,3)).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(10)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(12), pxLs.coLumns(15)).nuMberformat =  ;
           "###,###,###,##0.00"
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).inSert
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,15)).hoRizontalalignment = 2
 pxLs.ceLls(3, 1).vaLue = "Desde Serie: "+dsEr+" hasta Serie: "+hsEr
 SELECT teMporal_2
 GOTO TOP
 STORE 5 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 01).vaLue = ftM2tdo
      pxLs.ceLls(viT1, 02).vaLue = ftM2ser
      pxLs.ceLls(viT1, 03).vaLue = ftM2doc
      pxLs.ceLls(viT1, 04).vaLue = DTOC(ftM2fem)
      pxLs.ceLls(viT1, 05).vaLue = DTOC(ftM2fve)
      pxLs.ceLls(viT1, 06).vaLue = ftM2nom
      pxLs.ceLls(viT1, 07).vaLue = ftM2ruc
      pxLs.ceLls(viT1, 08).vaLue = ftM2ntt
      pxLs.ceLls(viT1, 09).vaLue = ftM2nve
      pxLs.ceLls(viT1, 10).vaLue = ftM2nfp
      pxLs.ceLls(viT1, 11).vaLue = ftM2sig
      pxLs.ceLls(viT1, 12).vaLue = ftM2tot
      pxLs.ceLls(viT1, 14).vaLue = ftM2to1
      pxLs.ceLls(viT1, 15).vaLue = ftM2to2
      STORE viT1+1 TO viT1
      SELECT teMporal_2
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 IF meN1<meNn
      STORE viT1+1 TO viT1
      pxLs.ceLls(viT1+0, 10).vaLue = "Total S/."
      pxLs.ceLls(viT1+0, 12).vaLue = tsOl
      pxLs.ceLls(viT1+0, 14).vaLue = ttO1
      pxLs.ceLls(viT1+0, 15).vaLue = ttO2
      pxLs.ceLls(viT1+1, 10).vaLue = "Total US$"
      pxLs.ceLls(viT1+1, 12).vaLue = tuSd
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+0,11)).meRge
      pxLs.raNge(pxLs.ceLls(viT1+1,10), pxLs.ceLls(viT1+1,11)).meRge
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+1, ;
                11)).hoRizontalalignment = 4
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+1,11)).foNt.naMe =  ;
                "Times New Roman"
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+1,11)).foNt.siZe = 11
      pxLs.raNge(pxLs.ceLls(viT1+0,10), pxLs.ceLls(viT1+1,11)).foNt.boLd = .T.
      WITH pxLs.raNge(pxLs.ceLls(viT1,12),pxLs.ceLls(viT1+1,12))
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
      WITH pxLs.raNge(pxLs.ceLls(viT1,14),pxLs.ceLls(viT1,15))
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
 DO xl1_0000a WITH 1
 WAIT CLEAR
 SELECT teMporal_2
 DO seE_1300b IN PVR1300B WITH "v", "1"
ENDPROC
*
PROCEDURE Clp_1300b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.4
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
      CASE mfIl>=ifIl-2.80 .AND. mfIl<=ifIl-1.942 .AND. coPf=1 .AND. mcCc>= ;
           mcO0+11.9 .AND. mcCc<=mcO0+14.30 .AND. (voPf+voPb+voPn+voPd>1  ;
           .OR. voPf=0)
           IF voPf=1
                STORE 0 TO voPf
           ELSE
                STORE 1 TO voPf
           ENDIF
           DO opC_1300b IN PVR1300B WITH "1"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.80 .AND. mfIl<=ifIl-1.942 .AND. coPb=1 .AND. mcCc>= ;
           mcO0+29.9 .AND. mcCc<=mcO0+32.50 .AND. (voPf+voPb+voPn+voPd>1  ;
           .OR. voPb=0)
           IF voPb=1
                STORE 0 TO voPb
           ELSE
                STORE 1 TO voPb
           ENDIF
           DO opC_1300b IN PVR1300B WITH "1"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.80 .AND. mfIl<=ifIl-1.942 .AND. coPn=1 .AND. mcCc>= ;
           mcO0+45.9 .AND. mcCc<=mcO0+48.30 .AND. (voPf+voPb+voPn+voPd>1  ;
           .OR. voPn=0)
           IF voPn=1
                STORE 0 TO voPn
           ELSE
                STORE 1 TO voPn
           ENDIF
           DO opC_1300b IN PVR1300B WITH "1"
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.80 .AND. mfIl<=ifIl-1.942 .AND. coPd=1 .AND. mcCc>= ;
           mcO0+64.9 .AND. mcCc<=mcO0+67.30 .AND. (voPf+voPb+voPn+voPd>1  ;
           .OR. voPd=0)
           IF voPd=1
                STORE 0 TO voPd
           ELSE
                STORE 1 TO voPd
           ENDIF
           DO opC_1300b IN PVR1300B WITH "1"
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1300b IN PVR1300B WITH "N", "1"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1300b IN PVR1300B WITH "i", "1"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_1300b WITH "F", "v"
           DO diS_1300b IN PVR1300B WITH "R", "1"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1300b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+1, 01 SAY  ;
   "Boletas, Notas de Pedido, Notas de Crédito y Notas de Débito, sin incluir"
 @ pfIl+2, 01 SAY "las anuladas, en el rango de fechas seleccionadas."
 @ pfIl+4, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 20 SAY ":" STYLE "BT"
 @ pfIl+7, 20 SAY ":" STYLE "BT"
 @ pfIl+8, 20 SAY ":" STYLE "BT"
 @ pfIl+6, 02 SAY "ESC" STYLE "BT"
 @ pfIl+7, 02 SAY "F10" STYLE "BT"
 @ pfIl+8, 02 SAY "F1" STYLE "BT"
 @ pfIl+6, 22 SAY "Regresar a Cabecera"
 @ pfIl+7, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 22 SAY "Ayuda del Programa"
 STORE pfIl+9 TO pfIl
 IF mrEs="3"
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F2" STYLE "BT"
      @ pfIl, 22 SAY "Cambiar de Totales"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 20 SAY ":" STYLE "BT"
 @ pfIl+01, 20 SAY ":" STYLE "BT"
 @ pfIl+02, 20 SAY ":" STYLE "BT"
 @ pfIl+03, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "F5" STYLE "BT"
 @ pfIl+01, 02 SAY "F8" STYLE "BT"
 @ pfIl+02, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+03, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+04, 02 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+05, 02 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+06, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+07, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+08, 02 SAY "HOME" STYLE "BT"
 @ pfIl+09, 02 SAY "END" STYLE "BT"
 @ pfIl+10, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+00, 22 SAY "Cambiar Orden ascendente o descendente en totales"
 @ pfIl+01, 22 SAY "Pasar Datos a Excel"
 @ pfIl+02, 22 SAY "Línea inferior"
 @ pfIl+03, 22 SAY "Línea superior"
 @ pfIl+04, 22 SAY "Cambiar de Orden"
 @ pfIl+05, 22 SAY "Cambiar de Orden"
 @ pfIl+06, 22 SAY "Página siguiente"
 @ pfIl+07, 22 SAY "Página anterior"
 @ pfIl+08, 22 SAY "Primera línea"
 @ pfIl+09, 22 SAY "Última línea"
 @ pfIl+10, 22 SAY "Imprimir Listado de Ventas"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
