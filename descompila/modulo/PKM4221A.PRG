 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "4221", "K"
 Use &mDBF Shared Alias Horarios
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4221COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "4200", "K"
 Use &mDBF Shared NoUpdate Alias Trabajadores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vaRe, vcAr
 DO vaR_4220a IN PKM4220A
 DO liM_4220a IN PKM4220A
 DO ulT_4220a IN PKM4220A
 STORE SPACE(70) TO vnOm
 STORE SPACE(04) TO vcOd, ccOd
 STORE SPACE(25) TO vaRe, vcAr
 SELECT trAbajadores
 GOTO TOP
 DO veR_lock
 STORE f4200cod TO vcOd
 STORE f4200nar TO vaRe
 STORE f4200nca TO vcAr
 STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ALLTRIM(f4200nom) TO vnOm
 SET READBORDER ON
 DO p00_4221a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SELECT hoRarios
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_4221a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4221a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "4200", "K", "F4200NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnOm))
                SET NEAR OFF
                DO veR_lock
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "4200", "K", "F4200COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f4200cod TO vcOd
                     STORE f4200nar TO vaRe
                     STORE f4200nca TO vcAr
                     STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ ;
                           ALLTRIM(f4200nom) TO vnOm
                     DO di2_4221a WITH "1"
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT hoRarios
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4221a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_4221a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=vuLt
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe<3 .OR. viTe=08 .OR. viTe=14  ;
                .OR. viTe=20 .OR. viTe=26 .OR. viTe=32 .OR. viTe=38)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                GOTO TOP
                DO veR_lock
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     DO veR_lock
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_4221a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                GOTO TOP
                DO veR_lock
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4221cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4221a
                          DO diS_4221a
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4221cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4221a
                          DO diS_4221a
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                DO veR_lock
                IF EOF()
                     GOTO BOTTOM
                     DO veR_lock
                ELSE
                     IF vcOd=f4221cod
                          SKIP
                          DO veR_lock
                          IF EOF()
                               GOTO BOTTOM
                               DO veR_lock
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4221cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4221a
                          DO diS_4221a
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                DO veR_lock
                IF EOF()
                     GOTO BOTTOM
                     DO veR_lock
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f4221cod>=vcOd
                     SKIP -1
                     DO veR_lock
                     IF BOF()
                          GOTO TOP
                          DO veR_lock
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4221cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4221a
                          DO diS_4221a
                ENDCASE
           CASE mkEy=k_Enter
                DO veR_4221a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=vuLt
                               DO grA_4221a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_4221a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE 0 TO ciTx
                     DO CASE
                          CASE viTe=vuLt
                               DO grA_4221a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=7 .OR. viTe=13
                               STORE 44 TO ciTx
                          CASE viTe=19 .OR. viTe=25
                               STORE 45 TO ciTx
                          CASE (viTe=31 .OR. viTe=37 .OR. viTe=43) .AND.  ;
                               voPt>0 .AND. voPt<4
                               STORE 46 TO ciTx
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                     IF ciTx<>0
                          STORE viTe+1 TO viTe
                          DO WHILE viTe<ciTx .AND. mkEy<>99
                               DO veR_4221a
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
                               STORE ciTx TO viTe
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                ENDIF
           CASE mkEy=k_Down
                DO veR_4221a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     STORE 0 TO ciTx
                     DO CASE
                          CASE viTe=vuLt
                               DO grA_4221a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe>=2 .AND. viTe<=37
                               STORE viTe+6 TO ciTx
                          CASE viTe>=38 .AND. viTe<=43
                               STORE vuLt TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_4221a
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
                                    DO grA_4221a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                               STORE 0 TO ciTx
                          CASE viTe=46
                               STORE vuLt TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_4221a
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
                                    DO grA_4221a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                               STORE 0 TO ciTx
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                     IF ciTx<>0
                          DO WHILE viTe<ciTx .AND. mkEy<>99
                               DO veR_4221a
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
                               STORE ciTx TO viTe
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe=44
                          STORE 13 TO viTe
                     CASE viTe=45
                          STORE 19 TO viTe
                     CASE viTe=46 .AND. voPt=1
                          STORE 37 TO viTe
                     CASE viTe=46 .AND. voPt=2
                          STORE 43 TO viTe
                     CASE viTe=46 .AND. voPt=3
                          STORE 43 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=47
                          STORE 45 TO viTe
                     CASE viTe=44
                          STORE 13 TO viTe
                     CASE viTe>=3 .AND. viTe<=7
                          STORE 01 TO viTe
                     CASE viTe<44 .AND. viTe>7
                          STORE viTe-6 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE vuLt TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_4221a
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
                STORE vuLt TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_4221a
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
                     DO grA_4221a
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
           DO CASE
                CASE viTe=1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
                CASE viTe<>1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           STORE viTe TO viT1
           DO msJ_4220a IN PKM4220A
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                DO coLbln
                DO di3_4221a
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                DO di3_4221a
           OTHERWISE
                DO geT_4220a IN PKM4220A WITH viTe
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Dis_4221a
 DO di2_4221a WITH "1"
 DO di1_4220a IN PKM4220A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO exT_4220a IN PKM4220A
 DO taR_4220a IN PKM4220A
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Di2_4221a
 PARAMETER ptPp
 DO coL_fondo
 DO CASE
      CASE ptPp="1"
           DO di3_4221a
      CASE ptPp="2"
           @mFI0-6.1,mCO0+18.0 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,47,50
           DO CASE
                CASE mrEs="1"
                     @mFI0-6.1,mCO0+74.0 Edit vCAR Font "&mLetAri",9  Style "NQ" Size 1,22,25
                     @mFI0-6.1,mCO0+98.5 Edit vARE Font "&mLetAri",9  Style "NQ" Size 1,22,25
                CASE mrEs>"1"
                     @vFI0-4.1,vCO0+14.5 Edit vCAR Font "&mLetRom",12 Style "BQ" Size 1,30,25
                     @vFI0-2.1,vCO0+14.5 Edit vARE Font "&mLetRom",12 Style "BQ" Size 1,30,25
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Di3_4221a
 @mFI0-6.1,mCO0+18.0 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,47 Pict "@S50"
 DO coL_fondo
 DO CASE
      CASE mrEs="1"
           @mFI0-6.1,mCO0+74.0 Say vCAR Font "&mLetAri",9  Style "NQ" Size 1,22 Pict "@S25"
           @mFI0-6.1,mCO0+98.5 Say vARE Font "&mLetAri",9  Style "NQ" Size 1,22 Pict "@S25"
      CASE mrEs>"1"
           @vFI0-4.1,vCO0+14.5 Say vCAR Font "&mLetRom",12 Style "BQ" Size 1,30 Pict "@S25"
           @vFI0-2.1,vCO0+14.5 Say vARE Font "&mLetRom",12 Style "BQ" Size 1,30 Pict "@S25"
 ENDCASE
ENDPROC
*
PROCEDURE P00_4221a
 PARAMETER ptPo
 PUBLIC ptAm, ppFi
 DO p01_4220a IN PKM4220A
 Define Popup vTB1 from vFBI+1.4,mCO0-.6 to mFI0+mUFI+pPFI,vCBI+4 Font "&mLetCou",pTAM Style "NQU" Prompt Field AllTrim(F4200APP)+" "+AllTrim(F4200APM)+" "+F4200NOM Scroll Color Scheme 10 Footer "CONSULTA DE TRABAJADORES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Horarios x Trabajador"
 DO p02_4220a IN PKM4220A
 DO di2_4221a WITH "2"
 DO coLbln
 @mFI0-6.3,mCO0+0.3 Say "Trabajador" Font "&mLetRom",13 Style "BT"
 READ TIMEOUT 0.01
 IF mrEs>"1"
      DO coL_fondo
      STORE "Cargo:" TO vdAt
      @vFI0-4.1,vCO0+2.5 Edit vDAT Font "&mLetRom",12 Style "BQ" Size 1,8,8
      READ TIMEOUT 0.01
      STORE "Area:" TO vdAt
      @vFI0-2.1,vCO0+2.5 Edit vDAT Font "&mLetRom",12 Style "BQ" Size 1,8,8
      READ TIMEOUT 0.01
      STORE " " TO vdAt
 ENDIF
 RELEASE ptAm, ppFi
ENDPROC
*
PROCEDURE Ver_4221a
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Trabajador no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. vcOd<>ccOd
           SELECT hoRarios
           SEEK vcOd
           DO veR_lock
           IF EOF()
                DO coL_beige
                @vFI0+.4,mCO0+mUCO-10 Say "NUEVO" Font "&LetRom",11 Style "BQ" Size 1,8
                DO liM_4220a IN PKM4220A
           ELSE
                DO muE_4221a
           ENDIF
           DO ulT_4220a IN PKM4220A
           DO diS_4221a
           STORE vcOd TO ccOd
      OTHERWISE
           DO ve1_4220a IN PKM4220A
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_4221a
 SELECT hoRarios
 DO coL_beige
 IF f4221est="9"
      @vFI0+.4,mCO0+mUCO-10 Say "ANULAD" Font "&LetRom",11 Style "BQ" Size 1,8
 ELSE
      @vFI0+.4,mCO0+mUCO-10 Say "EXISTE" Font "&LetRom",11 Style "BQ" Size 1,8
 ENDIF
 STORE f4221cod TO vcOd
 STORE f4221ext TO veXt
 STORE f4221tar TO vtAr
 STORE f4221opt TO voPt
 STORE f4221he1 TO vhE1
 STORE f4221he2 TO vhE2
 STORE f4221he3 TO vhE3
 STORE f4221he4 TO vhE4
 STORE f4221he5 TO vhE5
 STORE f4221he6 TO vhE6
 STORE f4221he7 TO vhE7
 STORE f4221he8 TO vhE8
 STORE f4221in1 TO viN1
 STORE f4221sa1 TO vsA1
 STORE f4221to1 TO vtO1
 STORE f4221rs1 TO vrS1
 STORE f4221ri1 TO vrI1
 STORE f4221rf1 TO vrF1
 STORE f4221in2 TO viN2
 STORE f4221sa2 TO vsA2
 STORE f4221to2 TO vtO2
 STORE f4221rs2 TO vrS2
 STORE f4221ri2 TO vrI2
 STORE f4221rf2 TO vrF2
 STORE f4221in3 TO viN3
 STORE f4221sa3 TO vsA3
 STORE f4221to3 TO vtO3
 STORE f4221rs3 TO vrS3
 STORE f4221ri3 TO vrI3
 STORE f4221rf3 TO vrF3
 STORE f4221in4 TO viN4
 STORE f4221sa4 TO vsA4
 STORE f4221to4 TO vtO4
 STORE f4221rs4 TO vrS4
 STORE f4221ri4 TO vrI4
 STORE f4221rf4 TO vrF4
 STORE f4221in5 TO viN5
 STORE f4221sa5 TO vsA5
 STORE f4221to5 TO vtO5
 STORE f4221rs5 TO vrS5
 STORE f4221ri5 TO vrI5
 STORE f4221rf5 TO vrF5
 STORE f4221in6 TO viN6
 STORE f4221sa6 TO vsA6
 STORE f4221to6 TO vtO6
 STORE f4221rs6 TO vrS6
 STORE f4221ri6 TO vrI6
 STORE f4221rf6 TO vrF6
 STORE f4221in7 TO viN7
 STORE f4221sa7 TO vsA7
 STORE f4221to7 TO vtO7
 STORE f4221rs7 TO vrS7
 STORE f4221ri7 TO vrI7
 STORE f4221rf7 TO vrF7
 SELECT trAbajadores
 SEEK vcOd
 DO veR_lock
 IF EOF()
      STORE SPACE(50) TO vnOm
      STORE SPACE(30) TO vaRe, vcAr
 ELSE
      STORE f4200nca TO vcAr
      STORE f4200nar TO vaRe
      STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ALLTRIM(f4200nom)  ;
            TO vnOm
 ENDIF
 SELECT hoRarios
ENDPROC
*
PROCEDURE Gra_4221a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT hoRarios
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f4221cod WITH vcOd
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vcOd
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f4221ext WITH veXt
 REPLACE f4221tar WITH vtAr
 REPLACE f4221opt WITH voPt
 REPLACE f4221he1 WITH vhE1
 REPLACE f4221he2 WITH vhE2
 REPLACE f4221he3 WITH vhE3
 REPLACE f4221he4 WITH vhE4
 REPLACE f4221he5 WITH vhE5
 REPLACE f4221he6 WITH vhE6
 REPLACE f4221he7 WITH vhE7
 REPLACE f4221he8 WITH vhE8
 REPLACE f4221in1 WITH viN1
 REPLACE f4221sa1 WITH vsA1
 REPLACE f4221to1 WITH vtO1
 REPLACE f4221rs1 WITH vrS1
 REPLACE f4221ri1 WITH vrI1
 REPLACE f4221rf1 WITH vrF1
 REPLACE f4221in2 WITH viN2
 REPLACE f4221sa2 WITH vsA2
 REPLACE f4221to2 WITH vtO2
 REPLACE f4221rs2 WITH vrS2
 REPLACE f4221ri2 WITH vrI2
 REPLACE f4221rf2 WITH vrF2
 REPLACE f4221in3 WITH viN3
 REPLACE f4221sa3 WITH vsA3
 REPLACE f4221to3 WITH vtO3
 REPLACE f4221rs3 WITH vrS3
 REPLACE f4221ri3 WITH vrI3
 REPLACE f4221rf3 WITH vrF3
 REPLACE f4221in4 WITH viN4
 REPLACE f4221sa4 WITH vsA4
 REPLACE f4221to4 WITH vtO4
 REPLACE f4221rs4 WITH vrS4
 REPLACE f4221ri4 WITH vrI4
 REPLACE f4221rf4 WITH vrF4
 REPLACE f4221in5 WITH viN5
 REPLACE f4221sa5 WITH vsA5
 REPLACE f4221to5 WITH vtO5
 REPLACE f4221rs5 WITH vrS5
 REPLACE f4221ri5 WITH vrI5
 REPLACE f4221rf5 WITH vrF5
 REPLACE f4221in6 WITH viN6
 REPLACE f4221sa6 WITH vsA6
 REPLACE f4221to6 WITH vtO6
 REPLACE f4221rs6 WITH vrS6
 REPLACE f4221ri6 WITH vrI6
 REPLACE f4221rf6 WITH vrF6
 REPLACE f4221in7 WITH viN7
 REPLACE f4221sa7 WITH vsA7
 REPLACE f4221to7 WITH vtO7
 REPLACE f4221rs7 WITH vrS7
 REPLACE f4221ri7 WITH vrI7
 REPLACE f4221rf7 WITH vrF7
 REPLACE f4221est WITH "1"
 REPLACE f4221usu WITH muSu
 REPLACE f4221dat WITH DATE()
 REPLACE f4221tim WITH TIME()
 UNLOCK
 FLUSH
 WAIT CLEAR
 STORE 1 TO viTe, viT1
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_4221a
 SELECT hoRarios
 SEEK vcOd
 IF EOF()
      STORE "Horario de Trabajador no registrado..." TO mmSj
      RETURN
 ENDIF
 = INKEY(0.01)
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vcOd
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f4221cod WITH SPACE(04)
 DELETE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Clp_4221a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+2.6 .AND.  ;
           mcCc<=mmC1+17.60 .AND. viTe>1
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+17.6 .AND.  ;
           mcCc<=mmC1+33.30 .AND. viTe>1
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.8
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.4
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.6
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi-0.028 .AND. mfIl<=vfBi+1.185 .AND. mcCc>=vcBi-0.2  ;
           .AND. mcCc<=vcBi+3.8
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1 .AND. mfIl<=vfB1+0.928 .AND. viTe>1 .AND. mcCc>= ;
           vcB1 .AND. mcCc<=vcB1+2.4 .AND. vtAr>1 .AND. voPt<>1
           STORE 1 TO voPt
           STORE 0 TO vhE5, vhE6, vhE7, vhE8
           DO ulT_4220a IN PKM4220A
           DO daT_4220a IN PKM4220A
           DO opT_4220a IN PKM4220A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfB2 .AND. mfIl<=vfB2+0.928 .AND. viTe>1 .AND. mcCc>= ;
           vcB2 .AND. mcCc<=vcB2+2.4 .AND. vtAr>1 .AND. voPt<>2
           STORE 2 TO voPt
           STORE 0 TO vhE3, vhE4, vhE7, vhE8
           DO ulT_4220a IN PKM4220A
           DO daT_4220a IN PKM4220A
           DO opT_4220a IN PKM4220A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfB3 .AND. mfIl<=vfB3+0.928 .AND. viTe>1 .AND. mcCc>= ;
           vcB3 .AND. mcCc<=vcB3+2.4 .AND. vtAr>1 .AND. voPt<>3
           STORE 3 TO voPt
           STORE 0 TO vhE3, vhE4, vhE5, vhE6
           DO ulT_4220a IN PKM4220A
           DO daT_4220a IN PKM4220A
           DO opT_4220a IN PKM4220A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfB4 .AND. mfIl<=vfB4+0.928 .AND. viTe>1 .AND. mcCc>= ;
           vcB4 .AND. mcCc<=vcB4+2.4 .AND. vtAr>1 .AND. voPt<>4
           IF viTe>45
                STORE 45 TO viTe
           ENDIF
           STORE 4 TO voPt
           STORE 0 TO vhE3, vhE4, vhE5, vhE6, vhE7, vhE8
           DO ulT_4220a IN PKM4220A
           DO daT_4220a IN PKM4220A
           DO opT_4220a IN PKM4220A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+0.028 .AND. mfIl<=vfI0+1.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+31.8 .AND. veXt<>1
           STORE 1 TO veXt
           DO exT_4220a IN PKM4220A
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+1.028 .AND. mfIl<=vfI0+2.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+38.2 .AND. veXt<>2
           STORE 2 TO veXt
           DO exT_4220a IN PKM4220A
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+2.028 .AND. mfIl<=vfI0+3.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+57.4 .AND. veXt<>3
           STORE 3 TO veXt
           DO exT_4220a IN PKM4220A
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+8.028 .AND. mfIl<=vfI0+9.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+56.2 .AND. vtAr<>1
           STORE 1 TO vtAr
           STORE 0 TO voPt, vhE3, vhE4, vhE5, vhE6, vhE7, vhE8
           DO taR_4220a IN PKM4220A
           READ TIMEOUT 0.01
           DO ulT_4220a IN PKM4220A
           DO daT_4220a IN PKM4220A
           DO opT_4220a IN PKM4220A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+9.028 .AND. mfIl<=vfI0+10.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+56.2 .AND. vtAr<>2
           STORE 1 TO voPt
           STORE 2 TO vtAr
           STORE 0 TO vhE5, vhE6, vhE7, vhE8
           DO taR_4220a IN PKM4220A
           READ TIMEOUT 0.01
           DO ulT_4220a IN PKM4220A
           DO daT_4220a IN PKM4220A
           DO opT_4220a IN PKM4220A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=vfI0+10.028 .AND. mfIl<=vfI0+11.028 .AND. viTe>1 .AND.  ;
           mcCc>=vcO0+15.8 .AND. mcCc<=vcO0+56.2 .AND. vtAr<>3
           STORE 1 TO voPt
           STORE 3 TO vtAr
           STORE 0 TO vhE5, vhE6, vhE7, vhE8
           DO taR_4220a IN PKM4220A
           READ TIMEOUT 0.01
           DO ulT_4220a IN PKM4220A
           DO daT_4220a IN PKM4220A
           DO opT_4220a IN PKM4220A
           IF mkEy=k_Esc
                RETURN
           ENDIF
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-6.143 .AND. mfIl<=mfI0-4.928 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0 .AND. mcCc<=mcO0+65
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+0.499 .AND. mfIl<=mfI0+1.714 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>8 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>9 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 9 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>10 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>11 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>12 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.714 .AND. viTe<>13 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>14 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>15 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 15 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>16 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 16 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>17 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 17 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>18 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 18 TO ciTx
      CASE mfIl>=mfI0+4.428 .AND. mfIl<=mfI0+5.714 .AND. viTe<>19 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 19 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>20 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 20 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>21 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 21 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>22 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 22 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>23 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 23 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>24 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 24 TO ciTx
      CASE mfIl>=mfI0+6.499 .AND. mfIl<=mfI0+7.714 .AND. viTe<>25 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 25 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>26 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 26 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>27 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 27 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>28 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 28 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>29 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 29 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>30 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 30 TO ciTx
      CASE mfIl>=mfI0+8.428 .AND. mfIl<=mfI0+9.714 .AND. viTe<>31 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 31 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>32 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 32 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>33 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 33 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>34 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 34 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>35 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 35 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>36 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 36 TO ciTx
      CASE mfIl>=mfI0+10.428 .AND. mfIl<=mfI0+11.714 .AND. viTe<>37 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 37 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>38 .AND.  ;
           mcCc>=mcO0+12.80 .AND. mcCc<=mcO0+20.00
           STORE 38 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>39 .AND.  ;
           mcCc>=mcO0+21.60 .AND. mcCc<=mcO0+28.80
           STORE 39 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>40 .AND.  ;
           mcCc>=mcO0+30.40 .AND. mcCc<=mcO0+34.40
           STORE 40 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>41 .AND.  ;
           mcCc>=mcO0+36.00 .AND. mcCc<=mcO0+43.20
           STORE 41 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>42 .AND.  ;
           mcCc>=mcO0+44.80 .AND. mcCc<=mcO0+52.00
           STORE 42 TO ciTx
      CASE mfIl>=mfI0+12.499 .AND. mfIl<=mfI0+13.714 .AND. viTe<>43 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+57.60
           STORE 43 TO ciTx
      CASE mfIl>=vfI0+3.957 .AND. mfIl<=vfI0+5.171 .AND. viTe<>44 .AND.  ;
           mcCc>=vcO0+42.40 .AND. mcCc<=vcO0+46.40
           STORE 44 TO ciTx
      CASE mfIl>=vfI0+5.457 .AND. mfIl<=vfI0+6.742 .AND. viTe<>45 .AND.  ;
           mcCc>=vcO0+21.2 .AND. mcCc<=vcO0+30.4
           STORE 45 TO ciTx
      CASE mfIl>=vfI0+12.028 .AND. mfIl<=vfI0+13.242 .AND. viTe<>46 .AND.  ;
           mcCc>=vcO0+19.2 .AND. mcCc<=vcO0+23.2 .AND. voPt=1
           STORE 46 TO ciTx
      CASE mfIl>=vfI0+12.028 .AND. mfIl<=vfI0+13.242 .AND. viTe<>47 .AND.  ;
           mcCc>=vcO0+38.2 .AND. mcCc<=vcO0+42.20 .AND. voPt=1
           STORE 47 TO ciTx
      CASE mfIl>=vfI0+13.457 .AND. mfIl<=vfI0+14.742 .AND. viTe<>46 .AND.  ;
           mcCc>=vcO0+19.2 .AND. mcCc<=vcO0+23.2 .AND. voPt=2
           STORE 46 TO ciTx
      CASE mfIl>=vfI0+13.457 .AND. mfIl<=vfI0+14.742 .AND. viTe<>47 .AND.  ;
           mcCc>=vcO0+38.2 .AND. mcCc<=vcO0+42.20 .AND. voPt=2
           STORE 47 TO ciTx
      CASE mfIl>=vfI0+14.957 .AND. mfIl<=vfI0+16.242 .AND. viTe<>46 .AND.  ;
           mcCc>=vcO0+19.2 .AND. mcCc<=vcO0+23.2 .AND. voPt=3
           STORE 46 TO ciTx
      CASE mfIl>=vfI0+14.957 .AND. mfIl<=vfI0+16.242 .AND. viTe<>47 .AND.  ;
           mcCc>=vcO0+38.2 .AND. mcCc<=vcO0+42.20 .AND. voPt=3
           STORE 47 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_4221a
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
           STORE 99 TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Hl1_4221a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En este programa, se ingresaran los Horarios x Trabajador. Este Hora-"
 @ pfIl+01, 02 SAY  ;
   "rio y sus reglas se aplican en las Asistencias al Trabajador. Y este se"
 @ pfIl+02, 02 SAY "superpone al Horario de Áreas."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "ESC" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "F2" STYLE "BT"
 @ pfIl+10, 11 SAY "CTRL ->, TAB," STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA ABAJO," STYLE "BT"
 @ pfIl+12, 11 SAY "ENTER" STYLE "BT"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Regresar al Menú Principal"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Consulta de Trabajadores registrados"
 @ pfIl+10, 31 SAY "Pasar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, viT1, ciTx, viOm, vfBi, vfB1, vfB2, vfB3, vfB4, vcBi, vcB1,  ;
         vcB2, vcB3
 RELEASE vcB4, vtB1, viN1, viN2, viN3, viN4, viN5, viN6, viN7, vsA1, vsA2,  ;
         vsA3, vsA4
 RELEASE vsA5, vsA6, vsA7, vtO1, vtO2, vtO3, vtO4, vtO5, vtO6, vtO7, vrI1,  ;
         vrI2, vrI3
 RELEASE vrI4, vrI5, vrI6, vrI7, vrS1, vrS2, vrS3, vrS4, vrS5, vrS6, vrS7,  ;
         vrF1, vrF2
 RELEASE vrF3, vrF4, vrF5, vrF6, vrF7, veXt, vtAr, vhE1, vhE2, vhE3, vhE4,  ;
         vhE5, vhE6
 RELEASE vhE7, vhE8, voPt, vdAt, vuLt, vfI0, vcO0, vcOd, ccOd, vnOm, vaRe, vcAr
 RELEASE vpAn_11
 RELEASE exTended
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
