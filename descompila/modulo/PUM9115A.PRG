 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9115", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Distritos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9115DIS
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Departamentos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9114DPT
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vdPt, cdPt, cdP1, vnDp, vdIs, cdIs, vnOm, vtB1,  ;
        vtB2, vfBi
 PUBLIC vfB1, vcBi, vcB1, ccOd, csUc, vpAg, vlIn
 STORE SPACE(02) TO vdPt, cdPt, cdP1
 STORE SPACE(04) TO vdIs, cdIs
 STORE SPACE(50) TO vnOm, vnDp
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 06 TO muFi
 STORE 115 TO muCo
 SELECT diStritos
 GOTO TOP
 IF  .NOT. EOF()
      STORE f9115dpt TO vdPt
      STORE f9115dis TO vdIs
      STORE f9115nom TO vnOm
      SELECT dePartamentos
      SEEK vdPt
      IF  .NOT. EOF()
           STORE f9114nom TO vnDp
      ENDIF
 ELSE
      SELECT dePartamentos
      GOTO TOP
      IF  .NOT. EOF()
           STORE f9114dpt TO vdPt
           STORE f9114nom TO vnDp
      ENDIF
 ENDIF
 SELECT diStritos
 SET READBORDER ON
 DO p00_9115a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9115a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9115a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SET FILTER TO f9115dpt=vdPt
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SET FILTER TO
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vdPt+vdIs
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9115", "U", "F9115NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                SET FILTER TO
                DO orD_0000a WITH "9115", "U", "F9115DIS", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9115dpt TO vdPt
                     STORE f9115dis TO vdIs
                     SELECT dePartamentos
                     SEEK vdPt
                     IF  .NOT. EOF()
                          STORE f9114nom TO vnDp
                     ELSE
                          STORE SPACE(02) TO vdPt
                          STORE SPACE(50) TO vnDp
                     ENDIF
                     SELECT diStritos
                     @mFI0-3.4,mCO0+30 Say vNDP Font "&mLetAri",9  Style "NQ" Size 1,69  Pict "@S50" Color Scheme 7
                     @mFI0+0.4,mCO0+20 Say vDIS Font "&mLetRom",12 Style "BQ" Size 1,8 Pict "!!!!"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9115a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9115a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_p
                GOTO TOP
                IF BOF()
                     STORE "No hay datos por imprimir..." TO mmSj
                ELSE
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9115", "U", "F9115NOM", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9115a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9115", "U", "F9115DIS", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=2
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
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
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vdPt+vdIs
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9115a
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
                     CASE f9115dpt+f9115dis=vdPt+vdIs
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9115a
                          DO diS_9115a
                          DO coLbln
                          @mFI0-3.4,mCO0+30 Say vNDP Font "&mLetAri",9  Style "NQ" Size 1,69 Pict "@S50" Color Scheme 7
                          @mFI0+0.4,mCO0+20 Say vDIS Font "&mLetRom",12 Style "BQ" Size 1,8  Pict "!!!!"
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9115dpt+f9115dis=vdPt+vdIs
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9115a
                          DO diS_9115a
                          DO coLbln
                          @mFI0-3.4,mCO0+30 Say vNDP Font "&mLetAri",9  Style "NQ" Size 1,69 Pict "@S50" Color Scheme 7
                          @mFI0+0.4,mCO0+20 Say vDIS Font "&mLetRom",12 Style "BQ" Size 1,8  Pict "!!!!"
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vdPt+vdIs
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vdPt+vdIs=f9115dpt+f9115dis
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9115dpt+f9115dis=vdPt+vdIs
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9115a
                          DO diS_9115a
                          DO coLbln
                          @mFI0-3.4,mCO0+30 Say vNDP Font "&mLetAri",9  Style "NQ" Size 1,69 Pict "@S50" Color Scheme 7
                          @mFI0+0.4,mCO0+20 Say vDIS Font "&mLetRom",12 Style "BQ" Size 1,8  Pict "!!!!"
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vdPt+vdIs
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9115dpt+ ;
                    f9115dis>=vdPt+vdIs
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9115dpt+f9115dis=vdPt+vdIs
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9115a
                          DO diS_9115a
                          DO coLbln
                          @mFI0-3.4,mCO0+30 Say vNDP Font "&mLetAri",9  Style "NQ" Size 1,69 Pict "@S50" Color Scheme 7
                          @mFI0+0.4,mCO0+20 Say vDIS Font "&mLetRom",12 Style "BQ" Size 1,8  Pict "!!!!"
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=2
                          DO grA_9115a
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
                STORE 2 TO ciTx
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
                STORE 4 TO ciTx
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
                     DO grA_9115a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vdPt+vdIs
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=1
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe<>1
                     DO prEsiona WITH "4", "BOT_UTI2", mmF1, mmC1
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+22 Say "ES DE 4 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."         Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+11 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vDIS Font "&mLetRom",12 Style "BQ" Pict "!!!!" Size 1,8 Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+30 Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,74,50
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
      CASE LEN(ALLTRIM(vdPt))=0
           STORE "Departamento o Ciudad no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(vdIs))=0
           STORE "Código no puede estar vacío..." TO mmSj
      CASE viTe=1
           SEEK vdPt+vdIs
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(50) TO vnOm
           ELSE
                DO muE_9115a
           ENDIF
           IF vdPt+vdIs<>cdPt+cdIs
                DO diS_9115a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9115a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9115dpt TO vdPt
 STORE f9115dis TO vdIs
 STORE f9115nom TO vnOm
 SELECT dePartamentos
 SEEK vdPt
 IF  .NOT. EOF()
      STORE f9114nom TO vnDp
 ELSE
      STORE SPACE(02) TO vdPt
      STORE SPACE(50) TO vnDp
 ENDIF
 SELECT diStritos
ENDPROC
*
PROCEDURE Dis_9115a
 DO coLbln
 @mFI0+3.5,mCO0+30.1 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 STORE vdPt TO cdPt
 STORE vdIs TO cdIs
ENDPROC
*
PROCEDURE Gra_9115a
 DO grAbar WITH "1"
 SEEK vdPt+vdIs
 IF EOF()
      DO nuEvo_rg
      REPLACE f9115dpt WITH vdPt
      REPLACE f9115dis WITH vdIs
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vdPt+vdIs
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9115nom WITH ALLTRIM(vnOm)
 UNLOCK ALL
 FLUSH
 SELECT diStritos
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9115a
 SEEK vdPt+vdIs
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vdPt+vdIs
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9115dpt WITH SPACE(02)
 REPLACE f9115dis WITH SPACE(04)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Dpt_9115a
 = INKEY(0.01)
 SELECT dePartamentos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Departamentos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9114", "U", "F9114NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB2 REST
 DO p1_0000a
 SET CONFIRM OFF
 IF mkEy=k_Enter
      STORE f9114dpt TO vdPt
      STORE f9114nom TO vnDp
      @mFI0-3.4,mCO0+30 Say vNDP Font "&mLetAri",9 Style "NQ" Size 1,69 Pict "@S50" Color Scheme 7
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9114", "U", "F9114DPT", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Imp_9115a
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
 DO reP_9115a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9115a
 PRIVATE ptAm
 DO CASE
      CASE mpRt="1"
           STORE 15 TO mcLn
           STORE 77 TO ptAm
      CASE mpRt="2"
           STORE 15 TO mcLn
           STORE 90 TO ptAm
 ENDCASE
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
           DO cb1_0000a WITH "Distritos", "PUM9115A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Ciudad"   Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+43 Say "Cód"      Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+52 Say "Distrito" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Ciudad"   Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+43 Say "Cód"      Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+52 Say "Distrito" Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           DO coL_pr1
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           STORE f9115dpt TO cdP1
           SELECT dePartamentos
           SEEK cdP1
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN    Say F9114NOM  Font "&mLetAri",9 Style "NT"
                     SELECT diStritos
                     @vLIN,mCLN+41 Say Space(11) Font "&mLetAri",9 Style "NT" Size 1,11
                     @vLIN,mCLN+43 Say F9115DIS  Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+52 Say F9115NOM  Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN    Say F9114NOM  Font "&mLetSwi",9 Style "NT"
                     SELECT diStritos
                     @vLIN,mCLN+41 Say Space(11) Font "&mLetSwi",9 Style "NT" Size 1,11
                     @vLIN,mCLN+43 Say F9115DIS  Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+52 Say F9115NOM  Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9115a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+32.2 TO vcBi
 STORE mfI0-03.45 TO vfB1
 STORE mcO0+99.6 TO vcB1
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0+0.0,mCO0+36.6 to mWFI-2,mWCO-3 Font "&mLetCou",13 Style "NQ" Prompt Field F9115NOM+" : "+F9115DIS Scroll Color Scheme 10 Footer "DISTRITOS"
 Define Popup vTB2 from mFI0-2.4,mCO0+29.6 to mWFI-2,mWCO-3 Font "&mLetCou",13 Style "NQ" Prompt Field F9114NOM+" : "+F9114DPT Scroll Color Scheme 10 Footer "DEPARTAMENTOS/CIUDADES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO tiT_0000a WITH "Distritos"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 DO cuAdro WITH mfI0-3.5, mcO0, mfI0-2, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0-3.5,mCO0    Say "Departamento/Ciudad" Font "&mLetRom",11 Style "BT"
 @mFI0+0.4,mCO0+02 Say "CÓDIGO:"             Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+10 Say "NOMBRE"              Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0-3.4,mCO0+30 Edit vNDP                 Font "&mLetAri",9  Style "NQ" Size 1,69,50         Color Scheme 7
 @mFI0+0.4,mCO0+20 Get  vDIS                 Font "&mLetRom",12 Style "BQ" Size 1,8 Pict "!!!!" Color ,&mColBlN
 @mFI0+3.5,mCO0+30 Edit vNOM                 Font "&mLetAri",9  Style "NQ" Size 1,74,50
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
ENDPROC
*
PROCEDURE Clp_9115a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.40 .AND. viTe>1
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.20 .AND. viTe>1
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
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.1  ;
           .AND. mcCc<=vcB1+3.9 .AND. viTe=1
           DO dpT_9115a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
           SELECT diStritos
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.607 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+7.3 .AND. mcCc<=mcO0+107.3
           STORE 02 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9115a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este  Mantenimiento es un programa  utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Distritos por Departamento o Ciudad, para  ubicar"
 @ pfIl+2, 3 SAY "los Clientes/Proveedores/Trabajadores."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Distritos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vdPt, cdPt, cdP1, vnDp, vdIs, cdIs, vnOm, vtB1,  ;
         vtB2, vfBi
 RELEASE vfB1, vcBi, vcB1, ccOd, csUc, vpAg, vlIn
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
