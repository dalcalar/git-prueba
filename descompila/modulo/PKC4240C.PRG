 = INKEY(0.01)
 DO CASE
      CASE vsW1=01
           SELECT caBecera
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 DO muE_4240a
 SEEK xcOd
 DO veR_lock
 IF EOF()
      STORE SPACE(08) TO xfOt
 ELSE
      STORE f4200fot TO xfOt
 ENDIF
 DO p00_4240c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deTalle
 GOTO TOP
 DO veR_lock
 SEEK vsEr+vbOl
 DO veR_lock
 DO paN_4240c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vsEr+vbOl+STR(vrEc, 2, 0)
 DO veR_lock
 DO diS_4240c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4240c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4240c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_4240c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4240c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                SELECT caBecera
                IF vsW0<>01
                     DO orD_0000a WITH "4240", "K", "F4240BOL", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deTalle
                DO orD_0000a WITH "4241", "K", "F4241CPT", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                DO q1_0000a
                DO pkI4240z
                DO p1_0000a
                RESTORE SCREEN FROM vpAn_12
                SET READBORDER OFF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT caBecera
                IF vsW0<>01
                     DO orD_4240b IN PKC4240B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deTalle
                DO orD_0000a WITH "4241", "K", "F4241BOL", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                DO veR_lock
           CASE mkEy=k_Home
                GOTO TOP
                DO veR_lock
                SEEK vsEr+vbOl
                DO veR_lock
                DO CASE
                     CASE f4241ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_4240c
                               OTHERWISE
                                    SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                                    DO veR_lock
                                    DO diS_4240c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                          DO veR_lock
                          DO diS_4240c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vsEr+vbOl+STR(99, 2, 0)
                SET NEAR OFF
                DO veR_lock
                IF EOF() .OR. f4241ser+f4241bol<>vsEr+vbOl
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO veR_lock
                DO CASE
                     CASE f4241ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO veR_lock
                                    DO paN_4240c
                               OTHERWISE
                                    SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                                    DO veR_lock
                                    DO diS_4240c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                          DO veR_lock
                          DO diS_4240c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF() .OR. f4241ser+f4241bol<>vsEr+vbOl
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                          DO veR_lock
                          DO diS_4240c WITH "N"
                          SKIP
                          DO veR_lock
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, icLn, ffFs, ucLn, 1
                               DO liN_4240c WITH ffFs, ffFs+1
                               STORE f4241ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO veR_lock
                               STORE f4241ite TO irEc
                               SKIP INT(ffFs-ifFs)
                               DO veR_lock
                          ELSE
                               STORE f4241ite TO vrEc
                               STORE vfFs+01 TO vfFs
                          ENDIF
                          SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                          DO veR_lock
                          DO diS_4240c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF() .OR. f4241ser+f4241bol<>vsEr+vbOl
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                          DO veR_lock
                          DO diS_4240c WITH "N"
                          SKIP -1
                          DO veR_lock
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, icLn, ffFs, ucLn, 1
                               DO liN_4240c WITH ifFs, ifFs+1
                               STORE f4241ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO veR_lock
                                    STORE f4241ite TO urEc
                               ENDIF
                          ELSE
                               STORE f4241ite TO vrEc
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                          DO veR_lock
                          DO diS_4240c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vsEr+vbOl+STR(urEc, 2, 0)
                DO veR_lock
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF() .OR. f4241ser+f4241bol<>vsEr+vbOl
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_4240c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                          DO veR_lock
                          DO diS_4240c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vsEr+vbOl+STR(irEc, 2, 0)
                DO veR_lock
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF() .OR. f4241ser+f4241bol<>vsEr+vbOl
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          DO veR_lock
                          IF BOF() .OR. f4241ser+f4241bol<>vsEr+vbOl
                               GOTO TOP
                               DO veR_lock
                               SEEK vsEr+vbOl
                               DO veR_lock
                          ENDIF
                          DO paN_4240c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vsEr+vbOl+STR(vrEc, 2, 0)
                          DO veR_lock
                          DO diS_4240c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vsEr+vbOl+STR(vrEc, 2, 0)
           DO veR_lock
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_4240c
 STORE ifFs TO vfFs, ufFs
 STORE f4241ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f4241ser+f4241bol=vsEr+vbOl .AND. vfFs<ffFs+1
      DO diS_4240c WITH "N"
      STORE f4241ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
      DO veR_lock
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icLn CLEAR TO ffFs+1.2, ucLn
      DO liN_4240c WITH ufFs, ffFs+1.2
 ENDIF
ENDPROC
*
PROCEDURE Dis_4240c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. f4241tpo=1
           DO coL_fonaz
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R" .AND. f4241tpo=1
           DO coLblz
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,vCLN+00.0 Say " " Font "&mLetAri",9 Style "NQ" Size 1,14
 @vFFS,vCLN+14.6 Say " " Font "&mLetAri",9 Style "NQ" Size 1,14
 @vFFS,vCLN+29.2 Say " " Font "&mLetAri",9 Style "NQ" Size 1,14
 DO CASE
      CASE f4241tpo=1
           @vFFS,iCLN+3.6 Say F4241DES Font "&mLetAri",9  Style "NQI" Size 1,50 Pict "@S53"
      OTHERWISE
           @vFFS,iCLN+3.6 Say F4241DES Font "&mLetAri",9  Style "NQ"  Size 1,50 Pict "@S53"
 ENDCASE
 DO CASE
      CASE f4241tip=1 .AND. f4241tpo=1
           @vFFS,vCLN      Say F4241TOT Font "&mLetAri",9 Style "NQI" Size 1,14 Pict "999,999.99"
      CASE f4241tip=1
           @vFFS,vCLN      Say F4241TOT Font "&mLetAri",9 Style "NQ"  Size 1,14 Pict "999,999.99"
      CASE f4241tip=2 .AND. f4241tpo=1
           @vFFS,vCLN+14.6 Say F4241TOT Font "&mLetAri",9 Style "NQI" Size 1,14 Pict "999,999.99"
      CASE f4241tip=2
           @vFFS,vCLN+14.6 Say F4241TOT Font "&mLetAri",9 Style "NQ"  Size 1,14 Pict "999,999.99"
      CASE f4241tip=3 .AND. f4241tpo=1
           @vFFS,vCLN+29.2 Say F4241TOT Font "&mLetAri",9 Style "NQI" Size 1,14 Pict "999,999.99"
      CASE f4241tip=3
           @vFFS,vCLN+29.2 Say F4241TOT Font "&mLetAri",9 Style "NQ"  Size 1,14 Pict "999,999.99"
 ENDCASE
 DO CASE
      CASE mrEs="1" .AND. f4241tpo=1
           @vFFS,iCLN+000.1 Say F4241ITE Font "&mLetAri",9 Style "NQI" Size 1,02.7 Pict "99"
           @vFFS,iCLN+054.1 Say F4241DCR Font "&mLetAri",9 Style "NQI" Size 1,21.3 Pict "@S23"
      CASE mrEs="1"
           @vFFS,iCLN+000.1 Say F4241ITE Font "&mLetAri",9 Style "NQ"  Size 1,02.7 Pict "99"
           @vFFS,iCLN+054.1 Say F4241DCR Font "&mLetAri",9 Style "NQ"  Size 1,21.3 Pict "@S23"
      CASE mrEs>="2" .AND. f4241tpo=1
           @vFFS,iCLN+000.1 Say F4241ITE Font "&mLetAri",9 Style "NQI" Size 1,02.7 Pict "99"
           @vFFS,iCLN+054.1 Say F4241DCR Font "&mLetAri",9 Style "NQI" Size 1,30.0 Pict "@S25"
           @vFFS,iCLN+097.4 Say F4241POR Font "&mLetAri",9 Style "NQI" Size 1,08.2 Pict "999.99"
           @vFFS,iCLN+105.6 Say "%"      Font "&mLetAri",9 Style "NQI" Size 1,01.9
           DO CASE
                CASE f4241tip=1
                     @vFFS,iCLN+84.8 Say "Ingreso"    Font "&mLetAri",9 Style "NQI" Size 1,12
                CASE f4241tip=2
                     @vFFS,iCLN+84.8 Say "Descuento"  Font "&mLetAri",9 Style "NQI" Size 1,12
                CASE f4241tip=3
                     @vFFS,iCLN+84.8 Say "Aportacion" Font "&mLetAri",9 Style "NQI" Size 1,12
                OTHERWISE
                     @vFFS,iCLN+84.8 Say Space(12)    Font "&mLetAri",9 Style "NQI" Size 1,12
           ENDCASE
      CASE mrEs>="2"
           @vFFS,iCLN+000.1 Say F4241ITE Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @vFFS,iCLN+054.1 Say F4241DCR Font "&mLetAri",9 Style "NQ" Size 1,30.0 Pict "@S25"
           @vFFS,iCLN+097.4 Say F4241POR Font "&mLetAri",9 Style "NQ" Size 1,08.2 Pict "999.99"
           @vFFS,iCLN+105.6 Say "%"      Font "&mLetAri",9 Style "NQ" Size 1,01.9
           DO CASE
                CASE f4241tip=1
                     @vFFS,iCLN+84.8 Say "Ingreso"    Font "&mLetAri",9 Style "NQ" Size 1,12
                CASE f4241tip=2
                     @vFFS,iCLN+84.8 Say "Descuento"  Font "&mLetAri",9 Style "NQ" Size 1,12
                CASE f4241tip=3
                     @vFFS,iCLN+84.8 Say "Aportacion" Font "&mLetAri",9 Style "NQ" Size 1,12
                OTHERWISE
                     @vFFS,iCLN+84.8 Say Space(12)    Font "&mLetAri",9 Style "NQ" Size 1,12
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Lin_4240c
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, icLn+03.1 TO pfIn, icLn+03.1
 @ piNi, icLn+53.8 TO pfIn, icLn+53.8
 @ piNi, vcLn-00.4 TO pfIn, vcLn-00.4
 @ piNi, vcLn+14.2 TO pfIn, vcLn+14.2
 @ piNi, vcLn+28.8 TO pfIn, vcLn+28.8
 @ piNi, ucLn-04.4 TO pfIn, ucLn-04.4
 IF mrEs>="2"
      @ piNi, icLn+84.4 TO pfIn, icLn+84.4
      @ piNi, icLn+97.0 TO pfIn, icLn+97.0
 ENDIF
ENDPROC
*
PROCEDURE P00_4240c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH vfI0, vcO0, vfI0+7.2, vcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH ifFs-1.8, icLn, ffFs+5, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ vfI0+0.2, vcO1-00.3 TO vfI0+3.4, vcO1+25.5 PATTERN 1 COLOR SCHEME 7
 @vFI0+0.2,vCO0+01.0 Say "Trabajador" Font "&mLetRom",13 Style "BT"
 @vFI0+1.9,vCO0+09.0 Say "Cargo"      Font "&mLetRom",12 Style "BT" Color 1/1
 @vFI0+3.4,vCO0+09.0 Say "Area"       Font "&mLetRom",12 Style "BT" Color 1/1
 @vFI0+1.0,vCO1+02.0 Say "Moneda"     Font "&mLetRom",12 Style "BT" Color 1/1
 @vFI0+5.5,vCO0+01.0 Say "Emisión"    Font "&mLetRom",12 Style "BT"
 @vFI0+5.5,vCO0+32.0 Say "Desde"      Font "&mLetRom",12 Style "BT"
 @vFI0+5.5,vCO0+60.5 Say "Hasta"      Font "&mLetRom",12 Style "BT"
 @ ifFs-1.8, icLn TO ifFs-0.2, ucLn+00.3 PATTERN 1 COLOR SCHEME 7
 @ ffFs+1.2, icLn-00.4 TO ffFs+1.2, ucLn+00.3
 @ ffFs+1.2, vcLn-00.4 TO ffFs+2.8, ucLn-04.2 PATTERN 1 COLOR SCHEME 7
 @ ffFs+2.9, vcLn+12.1 TO ffFs+4.7, vcLn+30.6 PATTERN 1 COLOR SCHEME 7
 @ ffFs+1.2, vcLn+14.2 TO ffFs+2.8, vcLn+28.9
 DO liN_4240c WITH ifFs-1.8, ffFs+1.2
 @iFFS-1.7,iCLN+00.5 Say "It"            Font "&mLetRom",12 Style "BT"
 @iFFS-1.7,iCLN+03.8 Say "Concepto"      Font "&mLetRom",12 Style "BT"
 @iFFS-1.7,vCLN+01.1 Say "Ingresos"      Font "&mLetRom",12 Style "BT"
 @iFFS-1.7,vCLN+16.7 Say "Dctos."        Font "&mLetRom",12 Style "BT"
 @iFFS-1.7,vCLN+30.3 Say "Aportac."      Font "&mLetRom",12 Style "BT"
 @fFFS+3.1,vCLN-11.0 Say "Neto recibido" Font "&mLetRom",14 Style "BT" Color 1
 DO CASE
      CASE mrEs="1"
           @iFFS-1.7,iCLN+54.3 Say "Descripc.Abrev."    Font "&mLetRom",12 Style "BT"
      OTHERWISE
           @iFFS-1.7,iCLN+54.3 Say "Descripc.Abreviada" Font "&mLetRom",12 Style "BT"
           @iFFS-1.7,iCLN+87.8 Say "Tipo"               Font "&mLetRom",12 Style "BT"
           @iFFS-1.7,iCLN+98.0 Say "% Fijo"             Font "&mLetRom",12 Style "BT"
 ENDCASE
 DO coL_fondo
 SET READBORDER ON
 DO CASE
      CASE mrEs="1"
           @vFI0+0.25,vCO0+19 Edit xNOM Font "&mLetRom",11 Style "NQ" Size 1,50,80
      CASE mrEs="2"
           @vFI0+0.25,vCO0+19 Edit xNOM Font "&mLetRom",11 Style "NQ" Size 1,80,80
      OTHERWISE
           @vFI0+0.25,vCO0+19 Edit xNOM Font "&mLetRom",11 Style "NQ" Size 1,100,80
 ENDCASE
 @vFI0+1.9,vCO0+19 Edit xCAR Font "&mLetRom",11 Style "NQ" Size 1,50,50
 @vFI0+3.6,vCO0+19 Edit xARE Font "&mLetRom",11 Style "NQ" Size 1,50,50
 @vFI0+5.5,vCO0+13 Get  xFEM Font "&mLetRom",12 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @vFI0+5.5,vCO0+42 Get  xDFE Font "&mLetRom",12 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @vFI0+5.5,vCO0+70 Get  xHFE Font "&mLetRom",12 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @vFI0+0.4,vCO1+14 Get  xMON Font "&mLetRom",12 Style "BQ" Function "*RVT S/.;US$" Default xMON
 READ TIMEOUT 0.01
 SET READBORDER OFF
 DO coLsc7
 @fFFS+1.4,vCLN+00.0 Say xING      Font "&mLetAri",9  Style "BQ" Size 1,11.6 Pict "999,999.99"
 @fFFS+1.4,vCLN+14.6 Say xDCT      Font "&mLetAri",9  Style "BQ" Size 1,11.6 Pict "999,999.99"
 @fFFS+1.4,vCLN+29.2 Say xAPO      Font "&mLetAri",9  Style "BQ" Size 1,11.6 Pict "999,999.99"
 @fFFS+3.1,vCLN+12.6 Say xING-xDCT Font "&mLetRom",12 Style "BQ" Size 1,12.5 Pict "9999,999.99"
 IF mrEs>"2"
      IF LEN(ALLTRIM(muNi))=0
           STORE mpTh+"DIB\"+ALLTRIM(UPPER(xfOt))+".BMP" TO mdBf
      ELSE
           STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(UPPER(xfOt))+".BMP" TO mdBf
      ENDIF
      If File("&mDBF")
           @iFFS,uCLN+10 Say "&mDBF" BitMap Style "B" Size 15,33 Stretch
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           DO coLbln
           @ ifFs+0, ucLn+10 TO ifFs+15, ucLn+43 PATTERN 1
           @iFFS+4,uCLN+23 Say "SIN"  Font "&mLetRom",14 Style "BT"
           @iFFS+7,uCLN+21 Say "FOTO" Font "&mLetRom",14 Style "BT"
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Clp_4240c
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
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
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           DO diS_4240c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vsEr+vbOl+STR(irEc, 2, 0)
           DO veR_lock
           SKIP INT(mfIl-ifFs)
           DO veR_lock
           STORE 99 TO mkEy
           STORE f4241ite TO vrEc
           DO diS_4240c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_4240c
 STORE vrEc TO crEc
 DO rs1_4240b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 STORE crEc TO vrEc
 DO rs2_4240c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs2_4240c
 STORE vrEc TO crEc
 RESTORE SCREEN FROM vpAn_11
 DO p01_4240a
 DO p00_4240c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deTalle
 GOTO TOP
 DO veR_lock
 SEEK vsEr+vbOl+STR(irEc, 2, 0)
 DO veR_lock
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. f4241ser+f4241bol=vsEr+vbOl .AND. vfFs<ffFs+1
      IF f4241ite=vrEc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
      DO veR_lock
 ENDDO
 IF cfFs=0
      STORE vrEc TO irEc, crEc
      STORE ifFs TO vfFs, cfFs
 ENDIF
 SEEK vsEr+vbOl+STR(irEc, 2, 0)
 DO veR_lock
 DO paN_4240c
 STORE crEc TO vrEc
 STORE cfFs TO vfFs
 SEEK vsEr+vbOl+STR(vrEc, 2, 0)
 DO veR_lock
 DO diS_4240c WITH "R"
ENDPROC
*
PROCEDURE Hl1_4240c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+01, 02 SAY  ;
   "los ítems fueran más de los que se pueden visualizar,  puede verlo por "
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
 @ pfIl+09, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 11 SAY "HOME" STYLE "BT"
 @ pfIl+14, 11 SAY "END" STYLE "BT"
 @ pfIl+15, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Línea inferior"
 @ pfIl+10, 31 SAY "Línea superior"
 @ pfIl+11, 31 SAY "Página siguiente"
 @ pfIl+12, 31 SAY "Página anterior"
 @ pfIl+13, 31 SAY "Primera línea"
 @ pfIl+14, 31 SAY "Última línea"
 @ pfIl+15, 31 SAY "Imprimir Boleta"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
