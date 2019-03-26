 = INKEY(0.01)
 DO CASE
      CASE vsW0=3
           SELECT prOductos
           STORE 99 TO mkEy
           DO orD_0000a WITH "2111", "A", "F2111COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO bsE_2111b
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2111b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(mtMa) TO icOd, ibAs
      STORE SPACE(01) TO itIp, vtIp
 ENDIF
 IF LEN(ALLTRIM(icOd))=0 .OR. (vsW0=1 .AND. (ALLTRIM(icOd)+"*"> ;
    ALLTRIM(vcOd)+"*" .OR. ALLTRIM(ucOd)+"*"<ALLTRIM(vcOd)+"*")) .OR.  ;
    (vsW0=2 .AND. (UPPER(ALLTRIM(idEs))+"*">UPPER(ALLTRIM(vdEs))+"*" .OR.  ;
    UPPER(ALLTRIM(udEs))+"*"<UPPER(ALLTRIM(vdEs))+"*")) .OR. (vsW0=3  ;
    .AND. (ALLTRIM(ibAs)+"*"+UPPER(idEs)+ALLTRIM(icOd)+"*">ALLTRIM(vbAs)+ ;
    "*"+UPPER(vdEs)+ALLTRIM(vcOd)+"*" .OR. ALLTRIM(ubAs)+"*"+UPPER(udEs)+ ;
    ALLTRIM(ucOd)+"*"<ALLTRIM(vbAs)+"*"+UPPER(vdEs)+ALLTRIM(vcOd)+"*"))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK ALLTRIM(UPPER(vcOd))
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vdEs))
           CASE vsW0=3
                SEEK ALLTRIM(UPPER(vbAs))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_2111b
      STORE ifIl TO vfIl
      DO muE_2111b WITH "i", "v"
 ELSE
      DO seE_2111b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(UPPER(vcOd))
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vdEs))
                CASE vsW0=3
                     SEEK " "+UPPER(ALLTRIM(vbAs))
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2111b WITH "F", "v"
      ENDIF
      DO seE_2111b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2111cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_2111b WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_2111b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2111b WITH "i"
      SET NEAR OFF
      DO paN_2111b
      STORE ifIl TO vfIl
      DO muE_2111b WITH "i", "v"
      DO seE_2111b WITH "v"
 ENDIF
 DO diS_2111b WITH "R"
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
           DO rs1_2111b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2111b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2111b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2111b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_2111b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2111b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLplp
                DO CASE
                     CASE vsW0=1
                          STORE 2 TO vsW0
                     CASE vsW0=2
                          STORE 3 TO vsW0
                          DO prEsiona WITH "4", "R_CONS23", mmF1, mmC1
                          @ ifIl-1.5, icLn+23.8 CLEAR TO ifIl-0.2, ucLn
                          @ ifIl-0.1, icLn CLEAR TO ffIl+1.0, ucLn
                     CASE vsW0=3
                          STORE 1 TO vsW0
                          DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                          @ ifIl-1.5, icLn+23.8 CLEAR TO ifIl-0.2, ucLn
                          @ ifIl-0.1, icLn CLEAR TO ffIl+1.0, ucLn
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
                SET READBORDER ON
                DO p01_2111a
                SET READBORDER OFF
                DO caM_2111b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. vsW0<>3
                DO prE_docum WITH "¿Desea pasar Productos a PLC?"
                IF moPc$"Ss"
                     DO plC_2111b
                     DO seE_2111b WITH "v"
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F8
                DO xlS_2111b
                STORE 99 TO mkEy
           CASE mkEy=k_F9 .AND. vsW0<>3
                SET READBORDER ON
                DO opC_2111a IN PAC2111A WITH "PAC2111A", "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW0=3
                          SELECT tmP_base
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2111b WITH "v"
                DO diS_2111b WITH "R"
           CASE mkEy=k_Tab .AND. wtPo="6" .AND. vsW0<3
                STORE SPACE(04) TO vcL1, vcL2, vcL3, vcL4, vcL5, vcL6,  ;
                      vcL7, vcL8, vcL9, vcL0
                STORE SPACE(70) TO vnO1, vnO2, vnO3, vnO4, vnO5, vnO6,  ;
                      vnO7, vnO8, vnO9, vnO0
                STORE SPACE(20) TO vrF1, vrF2, vrF3, vrF4, vrF5, vrF6,  ;
                      vrF7, vrF8, vrF9, vrF0
                DO muE_2111a IN PAC2111A
                SELECT clIentes
                DO orD_0000a WITH "1101", "V", "F1101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT coD_cli
                SEEK ALLTRIM(vcOd)+"*"
                STORE 1 TO vnUm
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1104cod)+"*"= ;
                   ALLTRIM(vcOd)+"*"
                     DO CASE
                          CASE vnUm=1
                               STORE f1104cli TO vcL1
                               STORE f1104cdg TO vrF1
                               SELECT clIentes
                               SEEK vcL1
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO1
                               ENDIF
                          CASE vnUm=2
                               STORE f1104cli TO vcL2
                               STORE f1104cdg TO vrF2
                               SELECT clIentes
                               SEEK vcL2
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO2
                               ENDIF
                          CASE vnUm=3
                               STORE f1104cli TO vcL3
                               STORE f1104cdg TO vrF3
                               SELECT clIentes
                               SEEK vcL3
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO3
                               ENDIF
                          CASE vnUm=4
                               STORE f1104cli TO vcL4
                               STORE f1104cdg TO vrF4
                               SELECT clIentes
                               SEEK vcL4
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO4
                               ENDIF
                          CASE vnUm=5
                               STORE f1104cli TO vcL5
                               STORE f1104cdg TO vrF5
                               SELECT clIentes
                               SEEK vcL5
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO5
                               ENDIF
                          CASE vnUm=6
                               STORE f1104cli TO vcL6
                               STORE f1104cdg TO vrF6
                               SELECT clIentes
                               SEEK vcL6
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO6
                               ENDIF
                          CASE vnUm=7
                               STORE f1104cli TO vcL7
                               STORE f1104cdg TO vrF7
                               SELECT clIentes
                               SEEK vcL7
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO7
                               ENDIF
                          CASE vnUm=8
                               STORE f1104cli TO vcL8
                               STORE f1104cdg TO vrF8
                               SELECT clIentes
                               SEEK vcL8
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO8
                               ENDIF
                          CASE vnUm=9
                               STORE f1104cli TO vcL9
                               STORE f1104cdg TO vrF9
                               SELECT clIentes
                               SEEK vcL9
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO9
                               ENDIF
                          CASE vnUm=10
                               STORE f1104cli TO vcL0
                               STORE f1104cdg TO vrF0
                               SELECT clIentes
                               SEEK vcL0
                               IF  .NOT. EOF()
                                    STORE f1101nom TO vnO0
                               ENDIF
                               EXIT
                     ENDCASE
                     STORE vnUm+1 TO vnUm
                     SELECT coD_cli
                     SKIP
                ENDDO
                SELECT clIentes
                DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 01 TO viTe
                STORE 99 TO mkEy
                DO p00_2111b
                DO WHILE .T.
                     DO reS_0000a
                     IF mrEs<>mrSs
                          DO rs1_2111b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SET READBORDER ON
                          DO rs2_2111a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO p00_2111b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ENDIF
                     IF mkEy=k_Clic
                          DO clP_coo
                          DO CASE
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+59.4 .AND. mcCc<=mmC1+68
                                    STORE k_Enter TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+68 .AND. mcCc<=mmC1+77
                                    STORE k_F1 TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+77 .AND. mcCc<=mmC1+85.8
                                    STORE k_Esc TO mkEy
                                    EXIT
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+85.8 .AND. mcCc<=mmC1+95
                                    STORE k_F10 TO mkEy
                               CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2  ;
                                    .AND. mcCc>=vcB7+mcO1 .AND. mcCc<=vcB7+mcO2
                                    STORE 01 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2  ;
                                    .AND. mcCc>=vcB8+mcO1 .AND. mcCc<=vcB8+mcO2
                                    STORE 03 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2  ;
                                    .AND. mcCc>=vcB9+mcO1 .AND. mcCc<=vcB9+mcO2
                                    STORE 05 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2  ;
                                    .AND. mcCc>=vcB0+mcO1 .AND. mcCc<=vcB0+mcO2
                                    STORE 07 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfBa+mfI1 .AND. mfIl<=vfBa+mfI2  ;
                                    .AND. mcCc>=vcBa+mcO1 .AND. mcCc<=vcBa+mcO2
                                    STORE 09 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfBb+mfI1 .AND. mfIl<=vfBb+mfI2  ;
                                    .AND. mcCc>=vcBb+mcO1 .AND. mcCc<=vcBb+mcO2
                                    STORE 11 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfBc+mfI1 .AND. mfIl<=vfBc+mfI2  ;
                                    .AND. mcCc>=vcBc+mcO1 .AND. mcCc<=vcBc+mcO2
                                    STORE 13 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfBd+mfI1 .AND. mfIl<=vfBd+mfI2  ;
                                    .AND. mcCc>=vcBd+mcO1 .AND. mcCc<=vcBd+mcO2
                                    STORE 15 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfBe+mfI1 .AND. mfIl<=vfBe+mfI2  ;
                                    .AND. mcCc>=vcBe+mcO1 .AND. mcCc<=vcBe+mcO2
                                    STORE 17 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfBf+mfI1 .AND. mfIl<=vfBf+mfI2  ;
                                    .AND. mcCc>=vcBf+mcO1 .AND. mcCc<=vcBf+mcO2
                                    STORE 19 TO viTe
                                    STORE k_F2 TO mkEy
                               CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2  ;
                                    .AND. mcCc>=vcB7+4+mcO1 .AND. mcCc<= ;
                                    vcB7+4+mcO2
                                    STORE 01 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2  ;
                                    .AND. mcCc>=vcB8+4+mcO1 .AND. mcCc<= ;
                                    vcB8+4+mcO2
                                    STORE 03 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2  ;
                                    .AND. mcCc>=vcB9+4+mcO1 .AND. mcCc<= ;
                                    vcB9+4+mcO2
                                    STORE 05 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2  ;
                                    .AND. mcCc>=vcB0+4+mcO1 .AND. mcCc<= ;
                                    vcB0+4+mcO2
                                    STORE 07 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfBa+mfI1 .AND. mfIl<=vfBa+mfI2  ;
                                    .AND. mcCc>=vcBa+4+mcO1 .AND. mcCc<= ;
                                    vcBa+4+mcO2
                                    STORE 09 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfBb+mfI1 .AND. mfIl<=vfBb+mfI2  ;
                                    .AND. mcCc>=vcBb+4+mcO1 .AND. mcCc<= ;
                                    vcBb+4+mcO2
                                    STORE 11 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfBc+mfI1 .AND. mfIl<=vfBc+mfI2  ;
                                    .AND. mcCc>=vcBc+4+mcO1 .AND. mcCc<= ;
                                    vcBc+4+mcO2
                                    STORE 13 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfBd+mfI1 .AND. mfIl<=vfBd+mfI2  ;
                                    .AND. mcCc>=vcBd+4+mcO1 .AND. mcCc<= ;
                                    vcBd+4+mcO2
                                    STORE 15 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfBe+mfI1 .AND. mfIl<=vfBe+mfI2  ;
                                    .AND. mcCc>=vcBe+4+mcO1 .AND. mcCc<= ;
                                    vcBe+4+mcO2
                                    STORE 17 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfBf+mfI1 .AND. mfIl<=vfBf+mfI2  ;
                                    .AND. mcCc>=vcBf+4+mcO1 .AND. mcCc<= ;
                                    vcBf+4+mcO2
                                    STORE 19 TO viTe
                                    STORE k_F3 TO mkEy
                               CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2  ;
                                    .AND. mcCc>=vcB7+8+mcO1 .AND. mcCc<= ;
                                    vcB7+8+mcO2
                                    STORE 01 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2  ;
                                    .AND. mcCc>=vcB8+8+mcO1 .AND. mcCc<= ;
                                    vcB8+8+mcO2
                                    STORE 03 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2  ;
                                    .AND. mcCc>=vcB9+8+mcO1 .AND. mcCc<= ;
                                    vcB9+8+mcO2
                                    STORE 05 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2  ;
                                    .AND. mcCc>=vcB0+8+mcO1 .AND. mcCc<= ;
                                    vcB0+8+mcO2
                                    STORE 07 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfBa+mfI1 .AND. mfIl<=vfBa+mfI2  ;
                                    .AND. mcCc>=vcBa+8+mcO1 .AND. mcCc<= ;
                                    vcBa+8+mcO2
                                    STORE 09 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfBb+mfI1 .AND. mfIl<=vfBb+mfI2  ;
                                    .AND. mcCc>=vcBb+8+mcO1 .AND. mcCc<= ;
                                    vcBb+8+mcO2
                                    STORE 11 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfBc+mfI1 .AND. mfIl<=vfBc+mfI2  ;
                                    .AND. mcCc>=vcBc+8+mcO1 .AND. mcCc<= ;
                                    vcBc+8+mcO2
                                    STORE 13 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfBd+mfI1 .AND. mfIl<=vfBd+mfI2  ;
                                    .AND. mcCc>=vcBd+8+mcO1 .AND. mcCc<= ;
                                    vcBd+8+mcO2
                                    STORE 15 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfBe+mfI1 .AND. mfIl<=vfBe+mfI2  ;
                                    .AND. mcCc>=vcBe+8+mcO1 .AND. mcCc<= ;
                                    vcBe+8+mcO2
                                    STORE 17 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               CASE mfIl>=vfBf+mfI1 .AND. mfIl<=vfBf+mfI2  ;
                                    .AND. mcCc>=vcBf+8+mcO1 .AND. mcCc<= ;
                                    vcBf+8+mcO2
                                    STORE 19 TO viTe
                                    STORE k_Ctrl_del TO mkEy
                               OTHERWISE
                                    STORE 99 TO mkEy
                          ENDCASE
                     ENDIF
                     DO CASE
                          CASE mkEy=k_F2 .AND. (viTe=1 .OR. viTe=3 .OR.  ;
                               viTe=5 .OR. viTe=7 .OR. viTe=9 .OR. viTe= ;
                               11 .OR. viTe=13 .OR. viTe=15 .OR. viTe=17  ;
                               .OR. viTe=19)
                               = INKEY(0.01)
                               SELECT clIentes
                               GOTO TOP
                               IF BOF() .OR. EOF()
                                    STORE  ;
                                     "No hay Clientes registrados..." TO mmSj
                                    STORE 99 TO mkEy
                                    DO poNmsj
                                    LOOP
                               ENDIF
                               SET NEAR ON
                               DO CASE
                                    CASE viTe=1
                                         SEEK ALLTRIM(UPPER(vnO1))
                                    CASE viTe=3
                                         SEEK ALLTRIM(UPPER(vnO2))
                                    CASE viTe=5
                                         SEEK ALLTRIM(UPPER(vnO3))
                                    CASE viTe=7
                                         SEEK ALLTRIM(UPPER(vnO4))
                                    CASE viTe=9
                                         SEEK ALLTRIM(UPPER(vnO5))
                                    CASE viTe=11
                                         SEEK ALLTRIM(UPPER(vnO6))
                                    CASE viTe=13
                                         SEEK ALLTRIM(UPPER(vnO7))
                                    CASE viTe=15
                                         SEEK ALLTRIM(UPPER(vnO8))
                                    CASE viTe=17
                                         SEEK ALLTRIM(UPPER(vnO9))
                                    CASE viTe=19
                                         SEEK ALLTRIM(UPPER(vnO0))
                               ENDCASE
                               SET NEAR OFF
                               DO CASE
                                    CASE viTe=1
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfB7, vcB8
                                    CASE viTe=3
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfB8, vcB8
                                    CASE viTe=5
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfB9, vcB9
                                    CASE viTe=7
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfB0, vcB0
                                    CASE viTe=9
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfBa, vcBa
                                    CASE viTe=11
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfBb, vcBb
                                    CASE viTe=13
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfBc, vcBc
                                    CASE viTe=15
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfBd, vcBd
                                    CASE viTe=17
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfBe, vcBe
                                    CASE viTe=19
                                         DO prEsiona WITH "2", "CONSUL",  ;
                                          vfBf, vcBf
                               ENDCASE
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO q1_0000a IN MODSET
                               SET CONFIRM ON
                               ACTIVATE POPUP vtB3 REST
                               SET CONFIRM OFF
                               DO p1_0000a IN MODSET
                               IF mkEy=k_Enter
                                    STORE 99 TO mkEy
                                    DO coLbln
                                    DO CASE
                                         CASE viTe=1
                                              STORE f1101cod TO vcL1
                                              STORE f1101nom TO vnO1
                                              @vFI0+08.5,vCO0+13.5 Say vNO1 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=3
                                              STORE f1101cod TO vcL2
                                              STORE f1101nom TO vnO2
                                              @vFI0+10.5,vCO0+13.5 Say vNO2 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=5
                                              STORE f1101cod TO vcL3
                                              STORE f1101nom TO vnO3
                                              @vFI0+12.5,vCO0+13.5 Say vNO3 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=7
                                              STORE f1101cod TO vcL4
                                              STORE f1101nom TO vnO4
                                              @vFI0+14.5,vCO0+13.5 Say vNO4 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=9
                                              STORE f1101cod TO vcL5
                                              STORE f1101nom TO vnO5
                                              @vFI0+16.5,vCO0+13.5 Say vNO5 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=11
                                              STORE f1101cod TO vcL6
                                              STORE f1101nom TO vnO6
                                              @vFI0+18.5,vCO0+13.5 Say vNO6 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=13
                                              STORE f1101cod TO vcL7
                                              STORE f1101nom TO vnO7
                                              @vFI0+20.5,vCO0+13.5 Say vNO7 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=15
                                              STORE f1101cod TO vcL8
                                              STORE f1101nom TO vnO8
                                              @vFI0+22.5,vCO0+13.5 Say vNO8 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=17
                                              STORE f1101cod TO vcL9
                                              STORE f1101nom TO vnO9
                                              @vFI0+24.5,vCO0+13.5 Say vNO9 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=19
                                              STORE f1101cod TO vcL0
                                              STORE f1101nom TO vnO0
                                              @vFI0+26.5,vCO0+13.5 Say vNO0 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    ENDCASE
                               ENDIF
                               DO boT_2111b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          CASE mkEy=k_F3 .AND. (viTe=1 .OR. viTe=3 .OR.  ;
                               viTe=5 .OR. viTe=7 .OR. viTe=9 .OR. viTe= ;
                               11 .OR. viTe=13 .OR. viTe=15 .OR. viTe=17  ;
                               .OR. viTe=19)
                               = INKEY(0.01)
                               SELECT clIentes
                               GOTO TOP
                               IF BOF() .OR. EOF()
                                    STORE  ;
                                     "No hay Clientes registrados..." TO mmSj
                                    STORE 99 TO mkEy
                                    DO poNmsj
                                    LOOP
                               ENDIF
                               DO CASE
                                    CASE viTe=1
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO1)), UPPER(f1101nom))<>0
                                    CASE viTe=3
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO2)), UPPER(f1101nom))<>0
                                    CASE viTe=5
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO3)), UPPER(f1101nom))<>0
                                    CASE viTe=7
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO4)), UPPER(f1101nom))<>0
                                    CASE viTe=9
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO5)), UPPER(f1101nom))<>0
                                    CASE viTe=11
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO6)), UPPER(f1101nom))<>0
                                    CASE viTe=13
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO7)), UPPER(f1101nom))<>0
                                    CASE viTe=15
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO8)), UPPER(f1101nom))<>0
                                    CASE viTe=17
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO9)), UPPER(f1101nom))<>0
                                    CASE viTe=19
                                         SET FILTER TO AT(ALLTRIM(UPPER(vnO0)), UPPER(f1101nom))<>0
                               ENDCASE
                               GOTO TOP
                               IF BOF() .OR. EOF()
                                    STORE  ;
                                     "No hay Clientes que contengan la palabra o frase..."  ;
                                     TO mmSj
                                    STORE 99 TO mkEy
                                    SET FILTER TO
                                    DO poNmsj
                                    LOOP
                               ENDIF
                               DO CASE
                                    CASE viTe=1
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfB7, vcB7+4
                                    CASE viTe=3
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfB8, vcB8+4
                                    CASE viTe=5
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfB9, vcB9+4
                                    CASE viTe=7
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfB0, vcB0+4
                                    CASE viTe=9
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfBa, vcBa+4
                                    CASE viTe=11
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfBb, vcBb+4
                                    CASE viTe=13
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfBc, vcBc+4
                                    CASE viTe=15
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfBd, vcBd+4
                                    CASE viTe=17
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfBe, vcBe+4
                                    CASE viTe=19
                                         DO prEsiona WITH "2", "BUSCAR",  ;
                                          vfBf, vcBf+4
                               ENDCASE
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO q1_0000a IN MODSET
                               SET CONFIRM ON
                               ACTIVATE POPUP vtB3 REST
                               SET CONFIRM OFF
                               DO p1_0000a IN MODSET
                               SET FILTER TO
                               IF mkEy=k_Enter
                                    STORE 99 TO mkEy
                                    DO coLbln
                                    DO CASE
                                         CASE viTe=1
                                              STORE f1101cod TO vcL1
                                              STORE f1101nom TO vnO1
                                              @vFI0+08.5,vCO0+13.5 Say vNO1 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=3
                                              STORE f1101cod TO vcL2
                                              STORE f1101nom TO vnO2
                                              @vFI0+10.5,vCO0+13.5 Say vNO2 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=5
                                              STORE f1101cod TO vcL3
                                              STORE f1101nom TO vnO3
                                              @vFI0+12.5,vCO0+13.5 Say vNO3 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=7
                                              STORE f1101cod TO vcL4
                                              STORE f1101nom TO vnO4
                                              @vFI0+14.5,vCO0+13.5 Say vNO4 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=9
                                              STORE f1101cod TO vcL5
                                              STORE f1101nom TO vnO5
                                              @vFI0+16.5,vCO0+13.5 Say vNO5 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=11
                                              STORE f1101cod TO vcL6
                                              STORE f1101nom TO vnO6
                                              @vFI0+18.5,vCO0+13.5 Say vNO6 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=13
                                              STORE f1101cod TO vcL7
                                              STORE f1101nom TO vnO7
                                              @vFI0+20.5,vCO0+13.5 Say vNO7 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=15
                                              STORE f1101cod TO vcL8
                                              STORE f1101nom TO vnO8
                                              @vFI0+22.5,vCO0+13.5 Say vNO8 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=17
                                              STORE f1101cod TO vcL9
                                              STORE f1101nom TO vnO9
                                              @vFI0+24.5,vCO0+13.5 Say vNO9 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                         CASE viTe=19
                                              STORE f1101cod TO vcL0
                                              STORE f1101nom TO vnO0
                                              @vFI0+26.5,vCO0+13.5 Say vNO0 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    ENDCASE
                               ENDIF
                               DO boT_2111b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                     ENDCASE
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_F12
                               DO rs1_2111b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO p00_2111b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          CASE mkEy=k_F1
                               DO hl2_2111b
                          CASE mkEy=k_Esc
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Tab
                               SELECT coD_cli
                               DO WHILE .T.
                                    SEEK ALLTRIM(vcOd)+"*"
                                    IF BOF() .OR. EOF()
                                         EXIT
                                    ENDIF
                                    STORE f1104cli TO vcLi
                                    SEEK ALLTRIM(vcOd)+"*"+vcLi
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH ALLTRIM(vcOd)+ ;
                                          "*"+vcLi
                                         IF mkEy=k_Esc
                                              WAIT CLEAR
                                              = INKEY(0.01)
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    REPLACE f1104cli WITH " "
                                    REPLACE f1104cod WITH " "
                                    DELETE
                                    UNLOCK
                               ENDDO
                               IF LEN(ALLTRIM(vcL1))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL1
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL1
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL1
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF1
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL2))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL2
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL2
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL2
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF2
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL3))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL3
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL3
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL3
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF3
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL4))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL4
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL4
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL4
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF4
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL5))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL5
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL5
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL5
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF5
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL6))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL6
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL6
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL6
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF6
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL7))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL7
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL7
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL7
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF7
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL8))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL8
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL8
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL8
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF8
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL9))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL9
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL9
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL9
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF9
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               IF LEN(ALLTRIM(vcL0))<>0
                                    SEEK ALLTRIM(vcOd)+"*"+vcL0
                                    DO CASE
                                         CASE EOF()
                                              DO nuEvo_rg
                                              REPLACE f1104cod WITH vcOd
                                              REPLACE f1104cli WITH vcL0
                                         CASE  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+vcL0
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                    ENDCASE
                                    REPLACE f1104cdg WITH vrF0
                                    REPLACE f1104usu WITH muSu
                                    REPLACE f1104maq WITH mmAq
                                    REPLACE f1104dat WITH DATE()
                                    REPLACE f1104tim WITH TIME()
                                    UNLOCK
                               ENDIF
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Ctrl_del .AND. (viTe=1 .OR. viTe=3  ;
                               .OR. viTe=5 .OR. viTe=7 .OR. viTe=9 .OR.  ;
                               viTe=11 .OR. viTe=13 .OR. viTe=15 .OR.  ;
                               viTe=17 .OR. viTe=19)
                               = INKEY(0.01)
                               DO coLbln
                               DO CASE
                                    CASE viTe=1
                                         STORE SPACE(04) TO vcL1
                                         STORE SPACE(70) TO vnO1
                                         @vFI0+08.5,vCO0+13.5 Say vNO1 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=3
                                         STORE SPACE(04) TO vcL2
                                         STORE SPACE(70) TO vnO2
                                         @vFI0+10.5,vCO0+13.5 Say vNO2 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=5
                                         STORE SPACE(04) TO vcL3
                                         STORE SPACE(70) TO vnO3
                                         @vFI0+12.5,vCO0+13.5 Say vNO3 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=7
                                         STORE SPACE(04) TO vcL4
                                         STORE SPACE(70) TO vnO4
                                         @vFI0+14.5,vCO0+13.5 Say vNO4 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=9
                                         STORE SPACE(04) TO vcL5
                                         STORE SPACE(70) TO vnO5
                                         @vFI0+16.5,vCO0+13.5 Say vNO5 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=11
                                         STORE SPACE(04) TO vcL6
                                         STORE SPACE(70) TO vnO6
                                         @vFI0+18.5,vCO0+13.5 Say vNO6 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=13
                                         STORE SPACE(04) TO vcL7
                                         STORE SPACE(70) TO vnO7
                                         @vFI0+20.5,vCO0+13.5 Say vNO7 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=15
                                         STORE SPACE(04) TO vcL8
                                         STORE SPACE(70) TO vnO8
                                         @vFI0+22.5,vCO0+13.5 Say vNO8 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=17
                                         STORE SPACE(04) TO vcL9
                                         STORE SPACE(70) TO vnO9
                                         @vFI0+24.5,vCO0+13.5 Say vNO9 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                                    CASE viTe=19
                                         STORE SPACE(04) TO vcL0
                                         STORE SPACE(70) TO vnO0
                                         @vFI0+26.5,vCO0+13.5 Say vNO0 Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                               ENDCASE
                               DO boT_2111b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          CASE mkEy=k_Enter
                               DO CASE
                                    CASE viTe=20
                                         STORE 99 TO mkEy
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                                         STORE 99 TO mkEy
                               ENDCASE
                          CASE mkEy=k_Down
                               DO CASE
                                    CASE viTe>18
                                         STORE 99 TO mkEy
                                    OTHERWISE
                                         STORE viTe+2 TO viTe
                                         STORE 99 TO mkEy
                               ENDCASE
                          CASE mkEy=k_Up
                               DO CASE
                                    CASE viTe<3
                                         STORE 99 TO mkEy
                                    OTHERWISE
                                         STORE viTe-2 TO viTe
                                         STORE 99 TO mkEy
                               ENDCASE
                     ENDCASE
                     DO coLbln
                     STORE k_Enter TO mkEy
                     DO CASE
                          CASE viTe=1
                               @vFI0+08.5,vCO0+13.5 Edit vNO1 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=2
                               @vFI0+08.5,vCO0+94.5 Edit vRF1 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=3
                               @vFI0+10.5,vCO0+13.5 Edit vNO2 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=4
                               @vFI0+10.5,vCO0+94.5 Edit vRF2 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=5
                               @vFI0+12.5,vCO0+13.5 Edit vNO3 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=6
                               @vFI0+12.5,vCO0+94.5 Edit vRF3 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=7
                               @vFI0+14.5,vCO0+13.5 Edit vNO4 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=8
                               @vFI0+14.5,vCO0+94.5 Edit vRF4 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=9
                               @vFI0+16.5,vCO0+13.5 Edit vNO5 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=10
                               @vFI0+16.5,vCO0+94.5 Edit vRF5 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=11
                               @vFI0+18.5,vCO0+13.5 Edit vNO6 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=12
                               @vFI0+18.5,vCO0+94.5 Edit vRF6 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=13
                               @vFI0+20.5,vCO0+13.5 Edit vNO7 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=14
                               @vFI0+20.5,vCO0+94.5 Edit vRF7 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=15
                               @vFI0+22.5,vCO0+13.5 Edit vNO8 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=16
                               @vFI0+22.5,vCO0+94.5 Edit vRF8 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=17
                               @vFI0+24.5,vCO0+13.5 Edit vNO9 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=18
                               @vFI0+24.5,vCO0+94.5 Edit vRF9 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                          CASE viTe=19
                               @vFI0+26.5,vCO0+13.5 Edit vNO0 Font "&mLetAri",9 Style "NQ" Size 1,50,70
                          CASE viTe=20
                               @vFI0+26.5,vCO0+94.5 Edit vRF0 Font "&mLetAri",9 Style "NQ" Size 1,28,20
                     ENDCASE
                     SET READBORDER ON
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                RESTORE SCREEN FROM vpAn_11
                STORE 99 TO mkEy
           CASE mkEy=k_Enter
                IF vsW0=3
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
                SAVE SCREEN TO vpAn_11
                SET READBORDER ON
                DO paC2111c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW0=3
                          SELECT tmP_base
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO orD_2111b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO seE_2111b WITH "v"
                DO reS_0000a
                IF mrEs<>mrSs
                     LOOP
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_Alt_c .AND. vsW0<>3 .AND. mpRf(18,2)="1"
                DO q1_0000a IN MODSET
                DO etI_2111b
                DO p1_0000a IN MODSET
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2111b WITH "v"
                IF vsW0=3
                     DO prEsiona WITH "4", "R_CONS23", mmF1, mmC1
                ELSE
                     DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                ENDIF
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_p .AND. vsW0<>3
                DO q1_0000a IN MODSET
                DO imP_2111b
                DO p1_0000a IN MODSET
                = INKEY(0.01)
                DO CASE
                     CASE vsW0=3
                          SELECT tmP_base
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO orD_2111b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO seE_2111b WITH "v"
           CASE mkEy=k_Ctrl_p .AND. vsW0=3
                DO q1_0000a IN MODSET
                DO baS_2111b
                DO p1_0000a IN MODSET
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW0=3
                          SELECT tmP_base
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO orD_2111b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO seE_2111b WITH "v"
           CASE mkEy=k_Right .AND. vsW0<>3 .AND. mrEs="3"
                DO CASE
                     CASE vsW2=vuLt
                          STORE 1 TO vsW2
                     OTHERWISE
                          STORE vsW2+1 TO vsW2
                ENDCASE
                SET READBORDER ON
                DO p01_2111a
                SET READBORDER OFF
                DO caM_2111b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Left .AND. vsW0<>3 .AND. mrEs="3"
                DO CASE
                     CASE vsW2=1
                          STORE vuLt TO vsW2
                     OTHERWISE
                          STORE vsW2-1 TO vsW2
                ENDCASE
                SET READBORDER ON
                DO p01_2111a
                SET READBORDER OFF
                DO caM_2111b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(f2111cod)+"*"=ALLTRIM(icOd)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                                    DO paN_2111b
                               OTHERWISE
                                    DO seE_2111b WITH "v"
                                    DO diS_2111b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2111b WITH "i", "v"
                          DO seE_2111b WITH "v"
                          DO diS_2111b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(f2111cod)+"*"=ALLTRIM(ucOd)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2111b
                               OTHERWISE
                                    DO seE_2111b WITH "v"
                                    DO diS_2111b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2111b WITH "u", "v"
                          DO seE_2111b WITH "v"
                          DO diS_2111b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2111b WITH "v"
                          DO diS_2111b WITH "N"
                          SKIP
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2111a WITH ffIl, ffIl+1
                               DO muE_2111b WITH "F", "u"
                               DO muE_2111b WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2111b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2111b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2111b WITH "v"
                          DO diS_2111b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2111b WITH "v"
                          DO diS_2111b WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2111a WITH ifIl, ifIl+1
                               DO muE_2111b WITH "F", "i"
                               DO muE_2111b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2111b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2111b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2111b WITH "v"
                          DO diS_2111b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2111b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2111b
                          STORE ifIl TO vfIl
                          DO muE_2111b WITH "i", "v"
                          DO seE_2111b WITH "v"
                          DO diS_2111b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2111b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2111b
                          STORE ifIl TO vfIl
                          DO muE_2111b WITH "i", "v"
                          DO seE_2111b WITH "v"
                          DO diS_2111b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2111b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2111b
 DO pn1_2111b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2111b
 DO pn1_2111b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2111b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2111b WITH "F", "i"
 DO muE_2111b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. ALLTRIM(f2111cod)+"*"=ALLTRIM(xcOd)+"*"
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2111b WITH "N"
      ENDCASE
      DO muE_2111b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_2111a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2111b
 PARAMETER ptIp
 PRIVATE puNi, pnTi, pdEs
 STORE " " TO xnT1, xnT2, xnT3, xnT4, xnT5, puNi, pnTi
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF vsW0=3
      STORE f2111des TO pdEs
 ELSE
      IF vsW2=1
           STORE f2111des TO pdEs
      ELSE
           STORE f2111dcr TO pdEs
      ENDIF
      STORE f2111tip TO xtIp
      SELECT tiP_prod
      SEEK xtIp
      STORE f9211nti TO xnTi
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO CASE
           CASE f2111tpo=1
                STORE "Artic" TO xnT1
           CASE f2111tpo=2
                STORE "Servi" TO xnT1
           CASE f2111tpo=3
                STORE "Activ" TO xnT1
      ENDCASE
      DO CASE
           CASE f2111vta=1
                STORE "Vta" TO xnT2
           CASE f2111vta=2
                STORE "n/V" TO xnT2
      ENDCASE
      DO CASE
           CASE f2111imp=1
                STORE "Imp" TO xnT3
           CASE f2111imp=2
                STORE "Nac" TO xnT3
      ENDCASE
      DO CASE
           CASE f2111cst=1
                STORE "Sto" TO xnT4
           CASE f2111cst=2
                STORE "n/S" TO xnT4
      ENDCASE
      DO CASE
           CASE f2111ser=1
                STORE "Ser" TO xnT5
           CASE f2111ser=2
                STORE "s/S" TO xnT5
      ENDCASE
      DO CASE
           CASE f2111est="9"
                STORE "Anu" TO xeSt
           OTHERWISE
                STORE "   " TO xeSt
      ENDCASE
      STORE f2111cuv+":"+f2111nuv TO puNi
      STORE xnT1+"-"+xnT2+"-"+xnT3+"-"+xnT4+"-"+xnT5 TO pnTi
 ENDIF
 DO CASE
      CASE mrEs="3" .AND. vsW0=3
           @vFIL,iCLN+000.0 Say F2111BAS Font "&mLetAri",9 Style "NQ" Size 1,22.9
           @vFIL,iCLN+023.6 Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,22.8
           DO CASE
                CASE ptIp="N" .AND. vsW0=3 .AND. f2111tip<>"X"
                     DO coLscz
                CASE ptIp="R" .AND. vsW0=3 .AND. f2111tip<>"X"
                     DO coLblz
           ENDCASE
           @vFIL,iCLN+047.0 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,76.3 Pict "@S78"
           @vFIL,iCLN+123.9 Say F2111DCR Font "&mLetAri",9 Style "NQ" Size 1,75.7 Pict "@S77"
      CASE mrEs="3"
           @vFIL,iCLN+023.6 Say xEST Font "&mLetAri",9 Style "NQ" Size 1,04.6
           @vFIL,iCLN+155.8 Say xNTI Font "&mLetAri",9 Style "NQ" Size 1,21.4 Pict "@S24"
           DO CASE
                CASE vsW2=1
                     @vFIL,iCLN+177.8 Say pUNI Font "&mLetAri",9 Style "NQ" Size 1,21.5 Pict "@S24"
                CASE vsW2=2
                     @vFIL,iCLN+177.8 Say pNTI Font "&mLetAri",9 Style "NQ" Size 1,21.5 Pict "@S24"
           ENDCASE
           DO CASE
                CASE ptIp="N" .AND. f2111cst=1
                     DO coLscz
                CASE ptIp="R" .AND. f2111cst=1
                     DO coLblz
           ENDCASE
           @vFIL,iCLN Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,22.9
           DO CASE
                CASE ptIp="N" .AND. f2111md1=1
                     DO coLscr
                CASE ptIp="R" .AND. f2111md1=1
                     DO coLblr
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
           @vFIL,iCLN+028.8 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,80.6 Pict "@S83"
           @vFIL,iCLN+110.0 Say F2111DCR Font "&mLetAri",9 Style "NQ" Size 1,45.1 Pict "@S48"
           IF f2111md3=2
                DO CASE
                     CASE ptIp="N"
                          DO coLsc1
                     CASE ptIp="R"
                          DO coLbln
                ENDCASE
                @vFIL,iCLN+28.8 Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
           ENDIF
      CASE vsW0=3
           @vFIL,iCLN+000.0 Say F2111BAS Font "&mLetAri",9 Style "NQ" Size 1,27.9 Pict "@S28"
           @vFIL,iCLN+028.6 Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,27.9 Pict "@S28"
           DO CASE
                CASE ptIp="N" .AND. vsW0=3 .AND. f2111tip<>"X"
                     DO coLscz
                CASE ptIp="R" .AND. vsW0=3 .AND. f2111tip<>"X"
                     DO coLblz
           ENDCASE
           @vFIL,iCLN+057.1 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,91.6 Pict "@S92"
           @vFIL,iCLN+149.3 Say F2111DCR Font "&mLetAri",9 Style "NQ" Size 1,87.8 Pict "@S88"
           @vFIL,iCLN+237.8 Say Substr(pUNI,1,15) Font "&mLetAri",9 Style "NQ" Size 1,13.4 Pict "@S13"
      OTHERWISE
           @vFIL,iCLN+025.6 Say xEST     Font "&mLetAri",9 Style "NQ" Size 1,04.6
           @vFIL,iCLN+176.6 Say xNTI     Font "&mLetAri",9 Style "NQ" Size 1,29.9 Pict "@S30"
           @vFIL,iCLN+207.1 Say pUNI     Font "&mLetAri",9 Style "NQ" Size 1,30.1 Pict "@S30"
           @vFIL,iCLN+237.8 Say Substr(pNTI,1,25) Font "&mLetAri",9 Style "NQ" Size 1,30.5 Pict "@S31"
           DO CASE
                CASE ptIp="N" .AND. f2111cst=1
                     DO coLscz
                CASE ptIp="R" .AND. f2111cst=1
                     DO coLblz
           ENDCASE
           @vFIL,iCLN Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,24.9 Pict "@S25"
           DO CASE
                CASE ptIp="N" .AND. f2111md1=1
                     DO coLscr
                CASE ptIp="R" .AND. f2111md1=1
                     DO coLblr
                CASE ptIp="N"
                     DO coLsc1
                CASE ptIp="R"
                     DO coLbln
           ENDCASE
           @vFIL,iCLN+030.8 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,81.5 Pict "@S83"
           @vFIL,iCLN+113.0 Say F2111DCR Font "&mLetAri",9 Style "NQ" Size 1,63.0 Pict "@S66"
           IF f2111md3=2
                DO CASE
                     CASE ptIp="N"
                          DO coLsc1
                     CASE ptIp="R"
                          DO coLbln
                ENDCASE
                @vFIL,iCLN+30.8 Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
           ENDIF
 ENDCASE
 RELEASE puNi, pnTi, pdEs
ENDPROC
*
PROCEDURE P00_2111b
 SAVE SCREEN TO vpAn_11
 SET READBORDER ON
 DO coL_fondo
 DO cuAdro WITH vfI0+3.5, vcO0, vfI0+28, vcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fonaz
 @vFI0+03.8,vCO0+00.5 Say "Código:"      Font "&mLetRom",13 Style "BT"
 @vFI0+05.8,vCO0+00.5 Say "Descripción:" Font "&mLetAri",9  Style "BT"
 DO coL_fondo
 @vFI0+08.5,vCO0+00.5 Say "Cliente-1:"   Font "&mLetAri",9  Style "BT"
 @vFI0+08.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+10.5,vCO0+00.5 Say "Cliente-2:"   Font "&mLetAri",9  Style "BT"
 @vFI0+10.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+12.5,vCO0+00.5 Say "Cliente-3:"   Font "&mLetAri",9  Style "BT"
 @vFI0+12.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+14.5,vCO0+00.5 Say "Cliente-4:"   Font "&mLetAri",9  Style "BT"
 @vFI0+14.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+16.5,vCO0+00.5 Say "Cliente-5:"   Font "&mLetAri",9  Style "BT"
 @vFI0+16.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+18.5,vCO0+00.5 Say "Cliente-6:"   Font "&mLetAri",9  Style "BT"
 @vFI0+18.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+20.5,vCO0+00.5 Say "Cliente-7:"   Font "&mLetAri",9  Style "BT"
 @vFI0+20.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+22.5,vCO0+00.5 Say "Cliente-8:"   Font "&mLetAri",9  Style "BT"
 @vFI0+22.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+24.5,vCO0+00.5 Say "Cliente-9:"   Font "&mLetAri",9  Style "BT"
 @vFI0+24.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 @vFI0+26.5,vCO0+00.5 Say "Cliente-10:"  Font "&mLetAri",9  Style "BT"
 @vFI0+26.5,vCO0+83.5 Say "Cód/Ref:"     Font "&mLetAri",9  Style "BT"
 DO coL_fonaz
 @vFI0+03.8,vCO0+15.5 Edit vCOD Font "&mLetAri",9 Style "NQ" Size 1,30,mTMA
 @vFI0+05.8,vCO0+15.5 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,107,100
 DO coLbln
 @vFI0+08.5,vCO0+13.5 Edit vNO1 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+08.5,vCO0+94.5 Edit vRF1 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+10.5,vCO0+13.5 Edit vNO2 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+10.5,vCO0+94.5 Edit vRF2 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+12.5,vCO0+13.5 Edit vNO3 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+12.5,vCO0+94.5 Edit vRF3 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+14.5,vCO0+13.5 Edit vNO4 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+14.5,vCO0+94.5 Edit vRF4 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+16.5,vCO0+13.5 Edit vNO5 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+16.5,vCO0+94.5 Edit vRF5 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+18.5,vCO0+13.5 Edit vNO6 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+18.5,vCO0+94.5 Edit vRF6 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+20.5,vCO0+13.5 Edit vNO7 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+20.5,vCO0+94.5 Edit vRF7 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+22.5,vCO0+13.5 Edit vNO8 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+22.5,vCO0+94.5 Edit vRF8 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+24.5,vCO0+13.5 Edit vNO9 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+24.5,vCO0+94.5 Edit vRF9 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 @vFI0+26.5,vCO0+13.5 Edit vNO0 Font "&mLetAri",9 Style "NQ" Size 1,50,70
 @vFI0+26.5,vCO0+94.5 Edit vRF0 Font "&mLetAri",9 Style "NQ" Size 1,28,20
 READ TIMEOUT 0.01
 SET READBORDER OFF
 DO boT_2111b
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bot_2111b
 DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB7, vcB7+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL1))=0
      DO prEsiona WITH "3", "DESCAR", vfB7, vcB7+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB7, vcB7+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB8, vcB8+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL2))=0
      DO prEsiona WITH "3", "DESCAR", vfB8, vcB8+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB8, vcB8+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB9, vcB9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB9, vcB9+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL3))=0
      DO prEsiona WITH "3", "DESCAR", vfB9, vcB9+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB9, vcB9+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB0, vcB0+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL4))=0
      DO prEsiona WITH "3", "DESCAR", vfB0, vcB0+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB0, vcB0+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBa, vcBa
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBa, vcBa+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL5))=0
      DO prEsiona WITH "3", "DESCAR", vfBa, vcBa+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBa, vcBa+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBb, vcBb
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBb, vcBb+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL6))=0
      DO prEsiona WITH "3", "DESCAR", vfBb, vcBb+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBb, vcBb+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBc, vcBc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBc, vcBc+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL7))=0
      DO prEsiona WITH "3", "DESCAR", vfBc, vcBc+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBc, vcBc+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBd, vcBd
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBd, vcBd+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL8))=0
      DO prEsiona WITH "3", "DESCAR", vfBd, vcBd+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBd, vcBd+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBe, vcBe
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBe, vcBe+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL9))=0
      DO prEsiona WITH "3", "DESCAR", vfBe, vcBe+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBe, vcBe+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfBf, vcBf
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBf, vcBf+4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vcL0))=0
      DO prEsiona WITH "3", "DESCAR", vfBf, vcBf+8
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBf, vcBf+8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bse_2111b
 PRIVATE ppAl
 STORE UPPER(ALLTRIM(vpAl)) TO ppAl
 SELECT tmP_base
 ZAP
 REINDEX
 SELECT tmP_base_2
 ZAP
 REINDEX
 SELECT prOductos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF f2111est="9" .OR. f2111tpo<>1
           SKIP
           LOOP
      ENDIF
      STORE f2111cod TO ccOd
      STORE f2111tip TO ctIp
      SELECT tiP_prod
      SEEK ctIp
      IF EOF()
           STORE 1 TO ctIp
      ELSE
           STORE f9211tpo TO ctIp
      ENDIF
      SELECT prOductos
      IF ctIp>3
           SKIP
           LOOP
      ENDIF
      STORE f2111des TO cdEs
      STORE f2111dcr TO cdCr
      STORE f2111la1 TO clA1
      STORE f2111la2 TO clA2
      STORE f2111an1 TO caN1
      STORE f2111an2 TO caN2
      STORE f2111esp TO ceSp
      STORE f2111bas TO cbAs
      STORE f2111gru TO cgRu
      STORE f2111nuv TO cnUv
      IF vsW1=2 .AND. AT(ppAl, UPPER(cdEs))=0 .AND. AT(ppAl, UPPER(cdCr))=0
           SELECT prOductos
           SKIP
           LOOP
      ENDIF
      SELECT grUpos
      SEEK cgRu
      IF EOF()
           STORE "Grupo no definido" TO cnGr
           STORE "**" TO cgRu
      ELSE
           STORE f9216des TO cnGr
      ENDIF
      SELECT tmP_base
      APPEND BLANK
      REPLACE f2111cod WITH ccOd
      REPLACE f2111des WITH cdEs
      REPLACE f2111dcr WITH cdCr
      REPLACE f2111la1 WITH clA1
      REPLACE f2111la2 WITH clA2
      REPLACE f2111an1 WITH caN1
      REPLACE f2111an2 WITH caN2
      REPLACE f2111esp WITH ceSp
      REPLACE f2111bas WITH cbAs
      REPLACE f2111nuv WITH cnUv
      IF UPPER(ALLTRIM(ccOd))+"*"<>UPPER(ALLTRIM(cbAs))+"*"
           REPLACE f2111tip WITH "X"
      ENDIF
      SELECT tmP_base_2
      SEEK cgRu+ALLTRIM(cbAs)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE f2111gru WITH cgRu
           REPLACE f2111ngr WITH cnGr
           REPLACE f2111bas WITH cbAs
           REPLACE f2111des WITH cdEs
      ENDIF
      SELECT prOductos
      SKIP
 ENDDO
 SELECT tmP_base
 RELEASE ppAl
ENDPROC
*
PROCEDURE Cam_2111b
 IF vsW0=3
      DO bsE_2111b
 ENDIF
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2111b WITH "v", "x"
 DO CASE
      CASE vsW0=3
           SELECT tmP_base
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_2111b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO CASE
      CASE vsW0=1
           SEEK ALLTRIM(icOd)+"*"
      CASE vsW0=2
           SEEK UPPER(ALLTRIM(idEs))+ALLTRIM(icOd)+"*"
      CASE vsW0=3
           GOTO TOP
 ENDCASE
 IF vsW0=3
      DO paN_2111b
 ELSE
      DO pa1_2111b
 ENDIF
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_2111b WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_2111b WITH "x", "v"
 ENDIF
 DO seE_2111b WITH "v"
 DO diS_2111b WITH "R"
ENDPROC
*
PROCEDURE Imp_2111b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PAC2111B
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
 DO reP_2111b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2111b
 PRIVATE ptAm, peSt, pcOd, ppRo, pdEs, pnUv
 STORE 96 TO ptAm
 STORE 08 TO mcLn
 STORE mcLn-03.0 TO vpS1
 STORE mcLn+00.5 TO vpS2
 STORE 1.7 TO vtM1
 STORE 16 TO vtM3
 STORE 13 TO vtM4
 STORE 69 TO vtM5
 STORE mlEtari TO vfOn
 STORE 9 TO vfTm
 DO CASE
      CASE mtMc<=10
           STORE 07 TO vtM2
           STORE mcLn+19 TO vpS3
           STORE mcLn+36 TO vpS4
           STORE mcLn+51 TO vpS5
      CASE mtMc<=15
           STORE 20 TO vtM2
           STORE mcLn+25 TO vpS3
           STORE mcLn+42 TO vpS4
           STORE mcLn+57 TO vpS5
           STORE vtM5-6 TO vtM5
      OTHERWISE
           STORE 27 TO vtM2
           STORE mcLn+30 TO vpS3
           STORE mcLn+48 TO vpS4
           STORE mcLn+63 TO vpS5
           STORE vtM5-10 TO vtM5
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vtPo=2
      STORE 99 TO mkEy
      DO orD_0000a WITH "2111", "A", "F2111TIP", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 GOTO TOP
 STORE SPACE(02) TO ctIp
 STORE 00 TO vlIn, vpAg
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF (ALLTRIM(f2111cod)+"*"<ALLTRIM(dcOd)+"*" .OR. ALLTRIM(f2111cod)+ ;
         "*">ALLTRIM(hcOd)+"*") .OR. (voPc=2 .AND. f2111sto<=0) .OR.  ;
         (veSt=2 .AND. f2111est="9") .OR. (veSt=3 .AND. f2111est<>"9")
           SKIP
           LOOP
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4
           DO cb1_2111b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF f2111tip<>ctIp .AND. vtPo=2
           STORE vlIn+0.8 TO vlIn
           DO li0_2111b
           STORE vlIn+0.4 TO vlIn
           DO li0_2111b
           STORE f2111tip TO ctIp
           SELECT tiP_prod
           SEEK ctIp
           IF vpAg>=miPg .AND. vpAg<=muPg
                IF EOF()
                     @vLIN,mCLN Say "Sin Tipo" Font "&mLetRom",12 Style "BQ"
                ELSE
                     @vLIN,mCLN Say F9211NTI   Font "&mLetRom",12 Style "BQ"
                ENDIF
           ENDIF
           DO li0_2111b
           STORE vlIn+0.4 TO vlIn
           DO li0_2111b
           IF vpAg>=miPg .AND. vpAg<=muPg .AND. mlIn=1
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+0.1 TO vlIn
           DO li0_2111b
           DO CASE
                CASE vsW1=1
                     SELECT prOductos
                CASE vsW1=2
                     SELECT teMporal
           ENDCASE
      ENDIF
      IF f2111est="9"
           STORE "@" TO peSt
      ELSE
           STORE " " TO peSt
      ENDIF
      STORE vlIn+0.8 TO vlIn
      DO liN_2111b
      STORE vlIn+0.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           STORE SUBSTR(f2111cod, 1, vtM2+3) TO pcOd
           STORE SUBSTR(f2111pro, 1, vtM3+3) TO ppRo
           STORE SUBSTR(f2111nuv, 1, vtM4+3) TO pnUv
           STORE SUBSTR(f2111des, 1, vtM5+3) TO pdEs
           @vLIN,vPS1 Say pEST Font "&vFON",vFTM Style "BQ" Size 1,vTM1
           @vLIN,vPS2 Say pCOD Font "&vFON",vFTM Style "NQ" Size 1,vTM2
           @vLIN,vPS3 Say pPRO Font "&vFON",vFTM Style "NQ" Size 1,vTM3
           @vLIN,vPS4 Say pNUV Font "&vFON",vFTM Style "NQ" Size 1,vTM4
           @vLIN,vPS5 Say pDES Font "&vFON",vFTM Style "NQ" Size 1,vTM5
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+0.1 TO vlIn
      DO liN_2111b
      IF vpAg>=miPg .AND. vpAg<=muPg .AND. mlIn=1
           DO liN_0000a WITH ptAm, vlIn
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, peSt, pcOd, ppRo, pdEs, pnUv
ENDPROC
*
PROCEDURE Cb1_2111b
 PARAMETER ptAm
 PRIVATE pfR1, pfR2
 STORE "  Código" TO pfR1
 STORE "  Unidad" TO pfR2
 IF mlIn<>1
      STORE ALLTRIM(pfR1) TO pfR1
      STORE ALLTRIM(pfR2) TO pfR2
 ENDIF
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
      CASE wtPo="1"
           DO cb1_0000a WITH "Productos, Servicios y Activos Fijos", "PAC2111B"
      CASE wtPo="2"
           DO cb1_0000a WITH "Productos", "PAC2111B"
      CASE wtPo="3"
           DO cb1_0000a WITH "Servicios", "PAC2111B"
      CASE wtPo="4"
           DO cb1_0000a WITH "Activos Fijos", "PAC2111B"
      CASE wtPo="5"
           DO cb1_0000a WITH "Productos Importados", "PAC2111B"
 ENDCASE
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1
                @vLIN,mCLN Say "Orden de Códigos - Rango: "+AllTrim(dCOD)+" al "+AllTrim(hCOD) Font "&mLetAri",10 Style "NQ"
           CASE vsW0=2
                @vLIN,mCLN Say "Orden Alfabético - Rango: "+AllTrim(dCOD)+" al "+AllTrim(hCOD) Font "&mLetAri",10 Style "NQ"
      ENDCASE
      DO CASE
           CASE mlIn=1
                @vLIN,mCLN+90 Say "c/lineas" Font "&mLetAri",8 Style "NT"
           CASE mlIn=2
                @vLIN,mCLN+90 Say "s/lineas" Font "&mLetAri",8 Style "NT"
      ENDCASE
      DO CASE
           CASE voPc=1
                @vLIN,mCLN+98 Say "Imprime c/s stock"                 Font "&mLetAri",8 Style "NT"
           CASE voPc=2
                @vLIN,mCLN+98 Say "Imprime sólo los que tienen stock" Font "&mLetAri",8 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vtPo=1
                @vLIN,mCLN+90 Say "Simple" Font "&mLetAri",8 Style "NT"
           CASE vtPo=2
                @vLIN,mCLN+90 Say "x Tipo" Font "&mLetAri",8 Style "NT"
      ENDCASE
      DO CASE
           CASE veSt=1
                @vLIN,mCLN+102 Say "Activos/Anulados" Font "&mLetAri",8 Style "NT"
           CASE veSt=2
                @vLIN,mCLN+102 Say "Sólo Activos"     Font "&mLetAri",8 Style "NT"
           CASE veSt=3
                @vLIN,mCLN+102 Say "Sólo Anulados"    Font "&mLetAri",8 Style "NT"
      ENDCASE
 ENDIF
 IF mlIn=1
      STORE vlIn+0.2 TO vlIn
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.0 TO vlIn
 DO liN_2111b
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,vPS1 Say "E"           Font "&mLetAri",10 Style "BT"
      @vLIN,vPS2 Say pFR1          Font "&mLetAri",10 Style "BT"
      @vLIN,vPS3 Say "Procedenc"   Font "&mLetAri",10 Style "BT"
      @vLIN,vPS4 Say pFR2          Font "&mLetAri",10 Style "BT"
      @vLIN,vPS5 Say "Descripción" Font "&mLetAri",10 Style "BT"
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2111b
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+0.1 TO vlIn
 DO liN_2111b
 DO coL_pr1
ENDPROC
*
PROCEDURE Lin_2111b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 DO li0_2111b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vLIN,vPS3-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,vPS4-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
 @vLIN,vPS5-1.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Li0_2111b
 IF vpAg<miPg .OR. vpAg>muPg .OR. mlIn<>1
      RETURN
 ENDIF
 @vLIN,mCLN-000.4 Say Chr(124)    Font "&mLetAri",9 Style "NT"
 @vLIN,mCLN+148.0 Say Chr(124)    Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Eti_2111b
 STORE 0 TO mvIs
 DO ipR_0001a WITH "ET"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina_1 IN PAC2111B
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "ET"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO et1_2111b
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Et1_2111b
 PRIVATE pnUm, puLt
 obJprinter = CREATEOBJECT("PrinterAPI.CLSPrinter")
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF ALLTRIM(f2111cod)+"*"<ALLTRIM(dcOd)+"*" .OR. ALLTRIM(f2111cod)+ ;
         "*">ALLTRIM(hcOd)+"*"
           SKIP
           LOOP
      ENDIF
      STORE viNi+vcOp TO puLt
      STORE viNi TO pnUm
      DO WHILE .T.
           IF pnUm>=puLt
                EXIT
           ENDIF
           obJprinter.prIntdataln(CHR(2)+"L")
           obJprinter.prIntdataln("A2")
           obJprinter.prIntdataln("D11")
           obJprinter.prIntdataln("z")
           obJprinter.prIntdataln("PN")
           obJprinter.prIntdataln("SN")
           obJprinter.prIntdataln("H10")
           stRcodbarra = ALLTRIM(f2111cod)
           obJprinter.prIntdataln("191100100700016"+stRcodbarra)
           obJprinter.prIntdataln("191100100700146"+STR(pnUm, 9, 0))
           obJprinter.prIntdataln("191100100700230"+stRcodbarra)
           obJprinter.prIntdataln("191100100700360"+STR(pnUm+1, 9, 0))
           obJprinter.prIntdataln("191100100550016"+ALLTRIM(f2111des))
           obJprinter.prIntdataln("191100100550230"+ALLTRIM(f2111des))
           obJprinter.prIntdataln("191100100440016"+ALLTRIM(f2111dcr))
           obJprinter.prIntdataln("191100100440230"+ALLTRIM(f2111dcr))
           obJprinter.prIntdataln("1e2202000140016B"+stRcodbarra)
           obJprinter.prIntdataln("1e2202000140230B"+stRcodbarra)
           obJprinter.prIntdataln("^01")
           obJprinter.prIntdataln("Q0001")
           obJprinter.prIntdataln("E")
           obJprinter.prIntdataln("")
           obJprinter.prIntnewpage()
           STORE pnUm+2 TO pnUm
      ENDDO
      SKIP
 ENDDO
 obJprinter.prIntenddoc()
 obJprinter = .NULL.
 RELEASE obJprinter
ENDPROC
*
PROCEDURE Bas_2111b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN MODSET
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
 DO rp2_2111b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rp2_2111b
 PRIVATE ptAm
 STORE 08 TO mcLn
 STORE 96 TO ptAm
 STORE "@" TO cbAs, cgRu
 STORE 0 TO vlIn, vpAg
 SELECT tmP_base_2
 SET ORDER TO F2111DES
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO cb2_2111b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE f2111gru TO cgRu
           STORE f2111bas TO cbAs
      ENDIF
      IF f2111gru+ALLTRIM(f2111bas)+"*"<>cgRu+ALLTRIM(cbAs)+"*"
           IF vlIn+1.9>mpAg-3
                DO cb2_2111b WITH ptAm
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                STORE vlIn+0.4 TO vlIn
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO liN_0000a WITH ptAm, vlIn
                ENDIF
                STORE vlIn+0.2 TO vlIn
           ENDIF
           STORE f2111gru TO cgRu
           STORE f2111bas TO cbAs
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT tmP_base
      SEEK ALLTRIM(cbAs)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2111bas)+"*"=ALLTRIM(cbAs)+"*"
           IF vpAg>muPg
                EXIT
           ENDIF
           IF vpAg=0 .OR. vlIn>mpAg-3
                DO cb2_2111b WITH ptAm
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF vlIn>mpAg-3
                DO cb2_2111b WITH ptAm
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE vlIn+1.3 TO vlIn
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say F2111BAS Font "&mLetAri",9 Style "BQ" Size 1,15  Pict "@S20"
                IF ALLTRIM(f2111bas)+"*"<>ALLTRIM(f2111cod)+"*"
                     @vLIN,mCLN+19 Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,15  Pict "@S20"
                ENDIF
                @vLIN,mCLN+35 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S103"
                DO CASE
                     CASE f2111la1<>0 .AND. f2111an1<>0
                          @vLIN,mCLN+132.0 Say F2111LA1 Font "&mLetAri",8 Style "NQ" Pict "99.999" Size 1,7.2
                          @vLIN,mCLN+141.5 Say "x"      Font "&mLetAri",8 Style "BQ"
                          @vLIN,mCLN+142.7 Say F2111AN1 Font "&mLetAri",8 Style "NQ" Pict "99.999" Size 1,7.2
                          @vLIN,mCLN+152.4 Say "mt"     Font "&mLetAri",8 Style "NQ" Size 1,4
                     CASE f2111la1<>0
                          @vLIN,mCLN+132.0 Say "Largo:" Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+142.7 Say F2111LA1 Font "&mLetAri",8 Style "NQ" Pict "99.999" Size 1,7.2
                          @vLIN,mCLN+152.4 Say "mt"     Font "&mLetAri",8 Style "NQ" Size 1,4
                     CASE f2111an1<>0
                          @vLIN,mCLN+132.0 Say "Ancho:" Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+142.7 Say F2111AN1 Font "&mLetAri",8 Style "NQ" Pict "99.999" Size 1,7.2
                          @vLIN,mCLN+152.4 Say "mt"     Font "&mLetAri",8 Style "NQ" Size 1,4
                ENDCASE
                DO CASE
                     CASE f2111la2<>0 .AND. f2111an2<>0
                          @vLIN,mCLN+132.0 Say F2111LA2 Font "&mLetAri",8 Style "NQ" Pict "999.999" Size 1,9.2
                          @vLIN,mCLN+141.5 Say "x"      Font "&mLetAri",8 Style "BQ"
                          @vLIN,mCLN+142.7 Say F2111AN2 Font "&mLetAri",8 Style "NQ" Pict "999.999" Size 1,9.2
                          @vLIN,mCLN+152.4 Say "pulg"   Font "&mLetAri",8 Style "NQ" Size 1,4
                     CASE f2111la2<>0
                          @vLIN,mCLN+132.0 Say "Largo:" Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+142.7 Say F2111LA2 Font "&mLetAri",8 Style "NQ" Pict "999.999" Size 1,9.2
                          @vLIN,mCLN+152.4 Say "pulg"   Font "&mLetAri",8 Style "NQ" Size 1,4
                     CASE f2111an2<>0
                          @vLIN,mCLN+132.0 Say "Ancho:" Font "&mLetAri",8 Style "NQ"
                          @vLIN,mCLN+142.7 Say F2111AN2 Font "&mLetAri",8 Style "NQ" Pict "999.999" Size 1,9.2
                          @vLIN,mCLN+152.4 Say "pulg"   Font "&mLetAri",8 Style "NQ" Size 1,4
                ENDCASE
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT tmP_base
           SKIP
      ENDDO
      IF vpAg>muPg
           EXIT
      ENDIF
      SELECT tmP_base_2
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm
ENDPROC
*
PROCEDURE Cb2_2111b
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
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Productos Base" Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Base"        Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+19 Say "Cód.Prod."   Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+35 Say "Descripción" Font "&mLetAri",9 Style "NT"
 ENDIF
 STORE vlIn+0.3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+0.5 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Ord_2111b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "2111", "A", "F2111COD", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "2111", "A", "F2111DES", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "A", "F2111COD", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "A", "F2111DES", "A"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs1_2111b
 SET READBORDER ON
 DO rs1_2111a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2111b WITH "R"
 IF vsW0=3
      DO prEsiona WITH "4", "R_CONS23", mmF1, mmC1
 ELSE
      DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
 ENDIF
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
PROCEDURE Plc_2111b
 DO CASE
      CASE mcIa="MB"
           DO prE_docum WITH "¿Desea pasar SOLO Productos con Stock?"
           IF moPc$"Ss"
                DO plC_2111b IN FACMABER WITH "1"
           ELSE
                DO plC_2111b IN FACMABER WITH "2"
           ENDIF
      OTHERWISE
           WAIT WINDOW NOWAIT "Empresa NO AUTORIZADA..."
           mkEy = INKEY(2)
           RETURN
 ENDCASE
ENDPROC
*
PROCEDURE Xls_2111b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO CASE
      CASE wtPo="2"
           DO xl0_0000a WITH "Productos", "Listado", 5
      CASE wtPo="3"
           DO xl0_0000a WITH "Servicios", "Listado", 5
      CASE wtPo="4"
           DO xl0_0000a WITH "Activos Fijos", "Listado", 5
      CASE wtPo="5"
           DO xl0_0000a WITH "Productos importados", "Listado", 5
      OTHERWISE
           DO xl0_0000a WITH "Productos,Servicios y/o Activos Fijos",  ;
              "Listado", 5
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 1).vaLue = "Codigo"
 pxLs.ceLls(3, 2).vaLue = "Descripción"
 pxLs.ceLls(3, 3).vaLue = "Descripción impresa"
 pxLs.ceLls(3, 4).vaLue = "Unidad-Venta"
 pxLs.ceLls(3, 5).vaLue = "Producto Base"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(5)).nuMberformat = "@"
 DO CASE
      CASE vsW0=3
           SELECT tmP_base
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      STORE f2111cod TO xcOd
      STORE f2111des TO xdEs
      STORE f2111dcr TO xdCr
      STORE f2111nuv TO xnUv
      STORE f2111bas TO xbAs
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 1).vaLue = xcOd
      pxLs.ceLls(viT1, 2).vaLue = xdEs
      pxLs.ceLls(viT1, 3).vaLue = xdCr
      pxLs.ceLls(viT1, 4).vaLue = xnUv
      pxLs.ceLls(viT1, 5).vaLue = xbAs
      STORE viT1+1 TO viT1
      DO CASE
           CASE vsW0=3
                SELECT tmP_base
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
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
      CASE vsW0=3
           SELECT tmP_base
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2111b WITH "v"
ENDPROC
*
PROCEDURE See_2111b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK UPPER(ALLTRIM(vcOd))+"*"
                CASE vsW0=2
                     SEEK UPPER(ALLTRIM(vdEs))+UPPER(ALLTRIM(vcOd))+"*"
                CASE vsW0=3
                     SEEK UPPER(ALLTRIM(vbAs))+"*"+vtIp+ ;
                          UPPER(ALLTRIM(vdEs))+UPPER(ALLTRIM(vcOd))+"*"
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK UPPER(ALLTRIM(icOd))+"*"
                CASE vsW0=2
                     SEEK UPPER(ALLTRIM(idEs))+UPPER(ALLTRIM(icOd))+"*"
                CASE vsW0=3
                     SEEK UPPER(ALLTRIM(ibAs))+"*"+itIp+ ;
                          UPPER(ALLTRIM(idEs))+UPPER(ALLTRIM(icOd))+"*"
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK UPPER(ALLTRIM(ucOd))+"*"
                CASE vsW0=2
                     SEEK UPPER(ALLTRIM(udEs))+UPPER(ALLTRIM(ucOd))+"*"
                CASE vsW0=3
                     SEEK UPPER(ALLTRIM(ubAs))+"*"+utIp+ ;
                          UPPER(ALLTRIM(udEs))+UPPER(ALLTRIM(ucOd))+"*"
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2111b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="i"
           STORE vcOd TO icOd
           STORE vdEs TO idEs
           STORE vbAs TO ibAs
           STORE vtIp TO itIp
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcOd TO xcOd
           STORE vdEs TO xdEs
           STORE vbAs TO xbAs
           STORE vtIp TO xtIp
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcOd TO vcOd
           STORE xdEs TO vdEs
           STORE xbAs TO vbAs
           STORE xtIp TO vtIp
      CASE pmU1="i" .AND. pmU2="v"
           STORE icOd TO vcOd
           STORE idEs TO vdEs
           STORE ibAs TO vbAs
           STORE itIp TO vtIp
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucOd TO vcOd
           STORE udEs TO vdEs
           STORE ubAs TO vbAs
           STORE utIp TO vtIp
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2111cod TO vcOd
           STORE f2111des TO vdEs
           STORE f2111bas TO vbAs
           STORE f2111tip TO vtIp
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2111cod TO ucOd
           STORE f2111des TO udEs
           STORE f2111bas TO ubAs
           STORE f2111tip TO utIp
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2111cod TO icOd
           STORE f2111des TO idEs
           STORE f2111bas TO ibAs
           STORE f2111tip TO itIp
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2111b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=ifIl-1.80 .AND. mfIl<=ifIl-0.30 .AND. mcCc>=icLn+101.2  ;
           .AND. mcCc<=icLn+109.2 .AND. mrEs="3"
           STORE k_Right TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2 .AND. vsW0<>3
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60 .AND. vsW0<>3
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60 .AND. vsW0=3
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40 .AND. vsW0<>3
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40 .AND. vsW0=3
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68.00
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77.00
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95.00
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7.00
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_2111b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2111b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2111b WITH "F", "v"
           DO diS_2111b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, pnUm, piN1, piN2, piN9
 STORE (mwFi/2)-13 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, vtPo, voPc, mlIn, veSt
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFI1", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 @pFIL+12.0,pCOL+05 Say "Desde Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+13.4,pCOL+05 Say "Hasta Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+19.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.3,pCOL+04 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 @pFIL+08.5,pCOL+05 Say "Desde Código:"         Font "&mLetRom",11 Style "BT"
 @pFIL+09.9,pCOL+05 Say "Hasta Código:"         Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_2
           @ pfIl+3.5, pcOl+32 TO pfIl+7, pcOl+54 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+3.2,pCOL+32 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192) Size 1,10,.01
      ELSE
           @pFIL+3.2,pCOL+32 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)                  Size 1,10,.01
      ENDIF
      @pFIL+08.6,pCOL+26.8 Get dCOD Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S20" Color ,&mColBlN
      @pFIL+10.0,pCOL+26.8 Get hCOD Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S20" Color ,&mColBlN
      @pFIL+12.1,pCOL+26.8 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+13.5,pCOL+26.8 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+15.5,pCOL+03.8 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RVT Simple;x Tipo"                            Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+15.5,pCOL+15.8 Get mLIN Font "&mLetAri",9 Style "NQ" Default mLIN Function "*RVT c/Líneas;s/Líneas"                        Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+12.1,pCOL+39.0 Get vEST Font "&mLetAri",9 Style "NQ" Default vEST Function "*RVT Todos;Activos;Anulados"
      @pFIL+15.5,pCOL+29.6 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Function "*RVT Todos;s/los q tienen Stock" Size 1,5.5,.1 Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+23.4,pCOL+06.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. (poPc=1 .OR. poPc=3)
                STORE UPPER(dcOd) TO dcOd
                STORE UPPER(hcOd) TO hcOd
                DO CASE
                     CASE ALLTRIM(dcOd)+"*">ALLTRIM(hcOd)+"*"
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=1
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          IF poPc=3
                               STORE 1 TO mvIs
                          ELSE
                               STORE 0 TO mvIs
                          ENDIF
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE k_Esc TO mkEy
                STORE 0 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Pagina_1
 PRIVATE pfIl, pcOl, poPc
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-35 TO pcOl
 STORE 00 TO poPc
 STORE 01 TO miPg, vcOp
 STORE 99 TO mkEy
 STORE 99999 TO muPg
 STORE 02 TO vcOp
 STORE 01 TO viNi
 STORE 02 TO vmOd
 DO CASE
      CASE vmOd=1
      CASE vmOd=2
 ENDCASE
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLblz
 @pFIL+00.6,pCOL+10 Say "Impresión de Etiquetas" Font "&mLetRom",16 Style "NT"
 DO coLbln
 @pFIL+03.5,pCOL+08 Say "Desde Código:"          Font "&mLetRom",11 Style "BT"
 @pFIL+05.0,pCOL+08 Say "Hasta Código:"          Font "&mLetRom",11 Style "BT"
 DO coLblz
 @pFIL+07.0,pCOL+08 Say "# Copias Correlat.:"    Font "&mLetRom",11 Style "BT"
 @pFIL+09.0,pCOL+08 Say "Correlativo Inicial:"   Font "&mLetRom",11 Style "BT"
 DO coLbln
 @pFIL+11.0,pCOL+08 Say "Tamaño:"                Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      @pFIL+03.6,pCOL+31.8 Get dCOD Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S20"  Color ,&mColBlN
      @pFIL+05.1,pCOL+31.8 Get hCOD Font "&mLetAri",9 Style "NQ" Size 1,18 Pict "@S20"  Color ,&mColBlN
      @pFIL+07.1,pCOL+36.8 Get vCOP Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99999" Color ,&mColBlN
      @pFIL+09.1,pCOL+36.8 Get vINI Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99999" Color ,&mColBlN
      @pFIL+11.1,pCOL+31.8 Get vMOD Font "&mLetAri",9 Style "NQ" Size 0.8,38,.4 Default vMOD Function "*RVT 2x1 simple;2x1 Doble"
      @pFIL+15.1,pCOL+14.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                STORE UPPER(dcOd) TO dcOd
                STORE UPPER(hcOd) TO hcOd
                DO CASE
                     CASE ALLTRIM(dcOd)+"*"=ALLTRIM(hcOd)+"*" .AND.  ;
                          LEN(ALLTRIM(dcOd))=0
                          STORE "Rangos de códigos no pueden estar vacíos..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE ALLTRIM(dcOd)+"*">ALLTRIM(hcOd)+"*"
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE k_Esc TO mkEy
                STORE 0 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, pcOl, poPc
ENDPROC
*
PROCEDURE Hl1_2111b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta, se muestran todos los Productos, Servicios,"
 @ pfIl+1, 2 SAY "Activos Fijos en el orden que se ha elegido."
 DO hl3_2111b
 @ pfIl+0, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 26 SAY ":" STYLE "BT"
 @ pfIl+3, 26 SAY ":" STYLE "BT"
 @ pfIl+4, 26 SAY ":" STYLE "BT"
 @ pfIl+5, 26 SAY ":" STYLE "BT"
 @ pfIl+2, 08 SAY "ESC" STYLE "BT"
 @ pfIl+3, 08 SAY "F10" STYLE "BT"
 @ pfIl+4, 08 SAY "F1" STYLE "BT"
 @ pfIl+5, 08 SAY "F6" STYLE "BT"
 @ pfIl+2, 28 SAY "Regresar a Cabecera"
 @ pfIl+3, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 28 SAY "Ayuda del Programa"
 @ pfIl+5, 28 SAY "Cambio de Orden de Consulta"
 STORE pfIl+6 TO pfIl
 IF vsW0<>3
      @ pfIl, 26 SAY ":" STYLE "BT"
      @ pfIl, 08 SAY "F7" STYLE "BT"
      @ pfIl, 28 SAY "Pasar Datos para PLC"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 26 SAY ":" STYLE "BT"
 @ pfIl, 08 SAY "F8" STYLE "BT"
 @ pfIl, 28 SAY "Pasar datos a Excel"
 STORE pfIl+1 TO pfIl
 IF vsW0<>3
      @ pfIl, 26 SAY ":" STYLE "BT"
      @ pfIl, 08 SAY "F9" STYLE "BT"
      @ pfIl, 28 SAY "Buscar palabra o frase dentro del nombre"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 26 SAY ":" STYLE "BT"
 @ pfIl+1, 26 SAY ":" STYLE "BT"
 @ pfIl+2, 26 SAY ":" STYLE "BT"
 @ pfIl+3, 26 SAY ":" STYLE "BT"
 @ pfIl+4, 26 SAY ":" STYLE "BT"
 @ pfIl+5, 26 SAY ":" STYLE "BT"
 @ pfIl+6, 26 SAY ":" STYLE "BT"
 @ pfIl+7, 26 SAY ":" STYLE "BT"
 @ pfIl+0, 08 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+3, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+4, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+5, 08 SAY "HOME" STYLE "BT"
 @ pfIl+6, 08 SAY "END" STYLE "BT"
 @ pfIl+7, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 28 SAY "Visualizar todos los datos del código"
 @ pfIl+1, 28 SAY "Línea inferior"
 @ pfIl+2, 28 SAY "Línea superior"
 @ pfIl+3, 28 SAY "Página siguiente"
 @ pfIl+4, 28 SAY "Página anterior"
 @ pfIl+5, 28 SAY "Primera línea"
 @ pfIl+6, 28 SAY "Última línea"
 DO CASE
      CASE vsW0<>3
           @ pfIl+7, 28 SAY "Imprime LISTADO de Productos"
      CASE vsW0=3
           @ pfIl+7, 28 SAY "Imprime LISTADO de Productos c/Productos Base"
 ENDCASE
 STORE pfIl+8 TO pfIl
 IF mrEs="3"
      @ pfIl+0, 08 SAY "FLECHA -->" STYLE "BT"
      @ pfIl+1, 08 SAY "FLECHA <--" STYLE "BT"
      @ pfIl+0, 26 SAY ":" STYLE "BT"
      @ pfIl+1, 26 SAY ":" STYLE "BT"
      @ pfIl+0, 28 SAY "Ver Otros datos"
      @ pfIl+1, 28 SAY "Ver Otros datos"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF wtPo="6" .AND. vsW0<3
      @ pfIl, 08 SAY "TAB" STYLE "BT"
      @ pfIl, 26 SAY ":" STYLE "BT"
      @ pfIl, 28 SAY "Poner Códigos de clientes o referencias"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF vsW0<>3 .AND. mpRf(18,2)="1"
      @ pfIl, 08 SAY "ALT C" STYLE "BT"
      @ pfIl, 26 SAY ":" STYLE "BT"
      @ pfIl, 28 SAY "Imprime Etiquetas"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_2111b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte se pueden poner los clientes y sus códigos o referencias que"
 @ pfIl+01, 02 SAY "desen que salgan automáticamente en las Ventas."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 26 SAY ":" STYLE "BT"
 @ pfIl+06, 26 SAY ":" STYLE "BT"
 @ pfIl+07, 26 SAY ":" STYLE "BT"
 @ pfIl+08, 26 SAY ":" STYLE "BT"
 @ pfIl+09, 26 SAY ":" STYLE "BT"
 @ pfIl+10, 26 SAY ":" STYLE "BT"
 @ pfIl+11, 26 SAY ":" STYLE "BT"
 @ pfIl+05, 08 SAY "ESC" STYLE "BT"
 @ pfIl+06, 08 SAY "F10" STYLE "BT"
 @ pfIl+07, 08 SAY "F1" STYLE "BT"
 @ pfIl+08, 08 SAY "ENTER" STYLE "BT"
 @ pfIl+09, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 08 SAY "TAB" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar al detalle sin grabar"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Avanzar de campo en campo"
 @ pfIl+09, 28 SAY "Campo inferior"
 @ pfIl+10, 28 SAY "Campo superior"
 @ pfIl+11, 28 SAY "Cerrar y regresar al detalle grabando"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl3_2111b
 STORE pfIl+3.0 TO pfIl
 @pFIL+0,1 Say "* Los códigos en Azul, indican que controlan Stocks"                      Font "&mLetRom",11 Style "BT"
 @pFIL+1,1 Say "* Las descripciones en Rojo, indican descripción modificable en"          Font "&mLetRom",11 Style "BT"
 @pFIL+2,1 Say "   Ventas"                                                                Font "&mLetRom",11 Style "BT"
 @pFIL+3,1 Say "* Las descripciones que tienen resaltado 3 caracteres, indican Pro-"      Font "&mLetRom",11 Style "BT"
 @pFIL+4,1 Say "   ductos invisibles"                                                     Font "&mLetRom",11 Style "BT"
 STORE pfIl+6.0 TO pfIl
ENDPROC
*
