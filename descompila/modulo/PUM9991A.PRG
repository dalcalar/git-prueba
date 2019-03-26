 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Tiendas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vcOd, ccOd, vnOm, vpTh, vaLm, vnAl, vtB1, vtB2,  ;
        vlIn, vpAg
 PUBLIC vfBi, vfB1, vfB2, vcBi, vcB1, vcB2
 STORE SPACE(02) TO ccOd
 STORE SPACE(70) TO vnOm, vpTh
 STORE "00" TO vcOd
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 08 TO muFi
 STORE 115 TO muCo
 SET READBORDER ON
 DO p00_9991a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9991a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9991a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9991", "U", "F9991NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9991", "U", "F9991COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9991cod TO vcOd
                     @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9991a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9991a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=01
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_p
                GOTO TOP
                IF BOF()
                     STORE "No hay datos por imprimir..." TO mmSj
                ELSE
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9991", "U", "F9991NOM", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9991a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9991", "U", "F9991COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=01
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=02
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=01
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=01
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                GOTO TOP
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vcOd
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9991a
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
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9991cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9991a
                          DO diS_9991a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9991cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9991a
                          DO diS_9991a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vcOd=f9991cod
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9991cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9991a
                          DO diS_9991a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9991cod>=vcOd
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9991cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9991a
                          DO diS_9991a
                          IF viTe<>01
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=03
                          DO grA_9991a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE 99 TO mkEy
                     ELSE
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 3 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 3 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_0000a
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
                     DO grA_9991a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vcOd
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=01
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe<>01
                     DO prEsiona WITH "4", "BOT_UTI2", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=01
                     @mMF2,mMC2+14 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe>01
                     @mMF2,mMC2+13 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=01
                @mFI0+0.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"   Color ,&mColBlN
           CASE viTe=02
                @mFI0+3.5,mCO0+36 Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,74,70
           CASE viTe=03
                @mFI0+5.5,mCO0+36 Edit vPTH Font "&mLetAri",9  Style "NQ" Size 1,74,70
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_0000a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=01 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=01 .AND. AT(" ", vcOd)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=01 .AND. vcOd="00"
           STORE "Código no puede ser 00...               " TO mmSj
      CASE viTe=01 .AND. (vcOd<="00" .OR. vcOd>="07") .AND. maDm<>1
           STORE "Esta autorizado el Código de 01 a 06... " TO mmSj
      CASE viTe=01
           SEEK vcOd
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(70) TO vnOm, vpTh
           ELSE
                DO muE_9991a
           ENDIF
           IF vcOd<>ccOd
                DO diS_9991a
           ENDIF
      CASE viTe=02 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Sucursal no puede estar vacío..." TO mmSj
      CASE viTe=03 .AND. LEN(ALLTRIM(vpTh))=0
           STORE "Ubicación/Path de Principal/Anexo no puede estar vacío..."  ;
                 TO mmSj
      CASE viTe=03 .AND. AT(" ", ALLTRIM(vpTh))<>0
           STORE "Ubicación/Path de Principal/Anexo no puede tener espacios vacíos..."  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9991a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9991cod TO vcOd
 STORE f9991nom TO vnOm
 STORE f9991pth TO vpTh
ENDPROC
*
PROCEDURE Dis_9991a
 DO coLbln
 @mFI0+3.5,mCO0+36.1 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S70"
 @mFI0+5.5,mCO0+36.1 Say vPTH Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S70"
 STORE vcOd TO ccOd
ENDPROC
*
PROCEDURE Gra_9991a
 DO grAbar WITH "1"
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f9991cod WITH vcOd
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
 IF ALLTRIM(f9991nom)+"*"<>ALLTRIM(vnOm)+"*" .OR. ALLTRIM(f9991pth)+"*"<> ;
    ALLTRIM(vpTh)+"*"
      REPLACE f9991nom WITH ALLTRIM(vnOm)
      REPLACE f9991pth WITH ALLTRIM(vpTh)
 ENDIF
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9991a
 SEEK vcOd
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
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
 REPLACE f9991cod WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9991a
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_9991a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9991a
 PRIVATE ptAm
 STORE 20 TO mcLn
 STORE 82 TO ptAm
 STORE 00 TO vlIn, vpAg
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
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
                DO cb1_0000a WITH "Path de Principal y Anexos", "PUM9991A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN    Say "Cód"                Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+06 Say "Nombre de Tda/Ofic" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+80 Say "Ubicación/Path"     Font "&mLetAri",9 Style "NT"
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           DO CASE
                CASE mcOl=1
                     DO coLbln
                CASE mcOl>1
                     DO coLblz
           ENDCASE
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+.9 Say F9991COD Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+6  Say F9991NOM Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+80 Say F9991PTH Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN+.9 Say F9991COD Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+6  Say F9991NOM Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+80 Say F9991PTH Font "&mLetSwi",9 Style "NT"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_9991a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+00.4 TO vfBi
 STORE mfI0+4 TO vfB1
 STORE mcO0+23.8 TO vcBi
 STORE mcO0+70.8 TO vcB1
 STORE vcB1+4 TO vcB2
 STORE mfI0+muFi+3 TO mmF2
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0-16,mCO0+mUCO-87 to mFI0+28,mCO0+mUCO+28 Font "&mLetCou",13 Style "NQ" Prompt Field F9991NOM+" : "+F9991COD Scroll Color Scheme 10 Footer "SUCURSALES"
 Define Popup vTB2 from mFI0+7.9,mCO0+1 to mFI0+mUFI+2,mCO0+53.3 Font "&mLetAri",10 Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 10 Footer "CONSULTA DE VENDEDORES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO tiT_0000a WITH "Path de Principal y Anexos"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.5,mCO0+2 Say "CÓDIGO:"               Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+4 Say "NOMBRE DE SUCURSAL"    Font "&mLetAri",10 Style "NT"
 @mFI0+5.5,mCO0+4 Say "PATH/UBICACIÓN"        Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0+0.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
 @mFI0+3.5,mCO0+36 Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,74,70
 @mFI0+5.5,mCO0+36 Edit vPTH Font "&mLetAri",9  Style "NQ" Size 1,74,70
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9991a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.4 .AND. viTe>01
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.2 .AND. viTe>01
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+24.2 .AND.  ;
           mcCc<=mmC1+33
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.8
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.4
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.6
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>01 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>02 .AND.  ;
           mcCc>=mcO0+10 .AND. mcCc<=mcO0+130.5
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.464 .AND. mfIl<=mfI0+6.678 .AND. viTe<>03 .AND.  ;
           mcCc>=mcO0+10 .AND. mcCc<=mcO0+130.5
           STORE 03 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9991a
 PRIVATE pfIl
 STORE 0.2 TO pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,  "
 @ pfIl+01, 02 SAY  ;
   "modificar y eliminar los Path o Ubicación dentro del Disco o un Servidor"
 @ pfIl+02, 02 SAY  ;
   "de la Red, la información de la Principal y Sucursales o Tiendas.       "
 @ pfIl+03, 02 SAY  ;
   "Adicionalmente,  se puede poner la ruta de la Copia de Seguridad de la"
 @ pfIl+04, 02 SAY "información."
 @ pfIl+06, 02 SAY "Se pueden crear Sucursales del 03 al 06."
 @ pfIl+08, 02 SAY  ;
   "El Código 01, sólo se usa para poner la Unidad y Carpeta de la ruta de"
 @ pfIl+09, 02 SAY "   la información de la Principal."
 @ pfIl+10, 02 SAY  ;
   "El Código 02, se usa para poner la Unidad y Carpeta en donde se guarda-"
 @ pfIl+11, 02 SAY "   rá la Copia de Seguridad."
 @ pfIl+12, 02 SAY  ;
   "El Código 90, es para guardar la Facturación electrónica: TXT"
 @ pfIl+13, 02 SAY  ;
   "El Código 91, es la Ruta de Numeración de Facturación Electrónica SOL."
 @ pfIl+14, 02 SAY  ;
   "El Código 99, tiene la ubicación de donde se actualiza los precios."
 @ pfIl+16, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+18 TO pfIl
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 03 SAY "ESC" STYLE "BT"
 @ pfIl+1, 03 SAY "F10" STYLE "BT"
 @ pfIl+2, 03 SAY "F1" STYLE "BT"
 @ pfIl+0, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 23 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=01
           @ pfIl+1, 23 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+1, 23 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+3 TO pfIl
 IF viTe=01
      @ pfIl, 21 SAY ":" STYLE "BT"
      @ pfIl, 03 SAY "F2" STYLE "BT"
      @ pfIl, 23 SAY "Consulta de los Códigos de Sucursales Registrados"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+3, 21 SAY ":" STYLE "BT"
 @ pfIl+4, 21 SAY ":" STYLE "BT"
 @ pfIl+5, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 03 SAY "F5" STYLE "BT"
 @ pfIl+1, 03 SAY "F6" STYLE "BT"
 @ pfIl+2, 03 SAY "F7" STYLE "BT"
 @ pfIl+3, 03 SAY "F8" STYLE "BT"
 @ pfIl+4, 03 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 23 SAY "Inicio del Archivo"
 @ pfIl+1, 23 SAY "Final del Archivo"
 @ pfIl+2, 23 SAY "Registro siguiente"
 @ pfIl+3, 23 SAY "Registro anterior"
 @ pfIl+4, 23 SAY "Ir al siguiente campo, llegando al final graba"
 @ pfIl+5, 23 SAY "Ir al campo inferior, llegando al final graba"
 STORE pfIl+6 TO pfIl
 IF viTe>01
      @ pfIl, 21 SAY ":" STYLE "BT"
      @ pfIl, 03 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 23 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 21 SAY ":" STYLE "BT"
 @ pfIl, 03 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 23 SAY "Ir al campo derecho, llegando al final graba"
 STORE pfIl+1 TO pfIl
 IF viTe>01
      @ pfIl, 21 SAY ":" STYLE "BT"
      @ pfIl, 03 SAY "CTRL INICIO" STYLE "BT"
      @ pfIl, 23 SAY "Ir al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 03 SAY "CTRL FIN" STYLE "BT"
 @ pfIl+1, 03 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 23 SAY "Ir al último campo"
 @ pfIl+1, 23 SAY "Imprimir Listado"
 STORE pfIl+2 TO pfIl
 IF viTe>01
      @ pfIl+0, 21 SAY ":" STYLE "BT"
      @ pfIl+1, 21 SAY ":" STYLE "BT"
      @ pfIl+0, 03 SAY "CTRL SUPR" STYLE "BT"
      @ pfIl+1, 03 SAY "TAB" STYLE "BT"
      @ pfIl+0, 23 SAY "Borrar registro"
      @ pfIl+1, 23 SAY "Grabar y regresar al 1er.campo"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vcOd, ccOd, vnOm, vpTh, vaLm, vnAl, vtB1, vtB2,  ;
         vlIn, vpAg
 RELEASE vfBi, vfB1, vfB2, vcBi, vcB1, vcB2
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
