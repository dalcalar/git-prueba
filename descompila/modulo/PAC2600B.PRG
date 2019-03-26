 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caB_remi
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (itDo+isEr+idOc>vtDo+vsEr+ ;
    vdOc .OR. utDo+usEr+udOc<vtDo+vsEr+vdOc)) .OR. (vsW0=2 .AND.  ;
    (UPPER(inOm)>UPPER(vnOm) .OR. UPPER(unOm)<UPPER(vnOm))) .OR. (vsW0=3  ;
    .AND. (ifEm>vfEm .OR. ufEm<vfEm))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=3
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_2600b
      DO muE_2600b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_2600b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO seE_2600b WITH "v"
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2600b WITH "F", "v"
      ENDIF
      DO seE_2600b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f2600tdo+f2600ser+f2600doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2600b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_2600b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2600b WITH "i"
      SET NEAR OFF
      DO paN_2600b
      STORE ifIl TO vfIl
      DO muE_2600b WITH "i", "v"
      DO seE_2600b WITH "v"
 ENDIF
 DO diS_2600b WITH "R"
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
           DO rs1_2600b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2600b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2600b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2600b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2600b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                IF vsW2=1
                     STORE 2 TO vsW2
                ELSE
                     STORE 1 TO vsW2
                ENDIF
                DO coLsc1
                @ ifIl-1.3, mcO0+53.0 CLEAR TO ffIl+1.0, mcO0+53.5
                @ ifIl-1.2, mcO0+53.1 CLEAR TO ifIl-0.2, mcO0+66.1
                DO coLsc3
                @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
                DO coLsc1
                DO seE_2600b WITH "i"
                STORE vfIl TO cfIl
                STORE ifIl TO vfIl
                DO WHILE  .NOT. EOF() .AND. vfIl<ufIl+1
                     IF vsW2=1
                          @vFIL,mCO0+26.8 Say F2600CLI+":"+F2600NOM          Font "&mLetAri",9 Style "NQ" Size 1,26.0 Pict "@S28"
                          @vFIL,mCO0+51.8 Say " "                            Font "&mLetAri",9 Style "NQ" Size 1,01.8
                          @vFIL,mCO0+53.5 Say " "                            Font "&mLetAri",9 Style "NQ" Size 1,01.8
                          @vFIL,mCO0+54.0 Say AllTrim(F2600DIR)+","+F2600DIS Font "&mLetAri",9 Style "NQ" Size 1,52.2 Pict "@S53"
                     ELSE
                          @vFIL,mCO0+26.8 Say F2600CLI+":"+F2600NOM          Font "&mLetAri",9 Style "NQ" Size 1,79.4 Pict "@S82"
                     ENDIF
                     STORE vfIl+1 TO vfIl
                     SKIP
                ENDDO
                IF vsW2=1
                     DO li3_2600a WITH ifIl-1.3, ffIl+1
                     DO coLblz
                     @iFIL-1.2,mCO0+54 Say "Dirección" Font "&mLetAri",9 Style "BT"
                ENDIF
                STORE cfIl TO vfIl
                DO seE_2600b WITH "v"
                DO diS_2600b WITH "R"
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=3
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                ENDCASE
                SET READBORDER ON
                DO geT_2600a
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                DO tpO_2600a WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. f2600est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Enter .AND. f2600est="8"
                STORE "Documento se encuentra dado de baja..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f2600est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f2600est<>"9" .AND. wtPo="3"
                STORE "Documento NO se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_2600b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. wtPo="3"
                DO elI_2600b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT caB_remi
                IF vsW0<>1 .OR. vsW1<>1
                     DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_remi
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO paC2600c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO esT_2600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2600tdo+f2600ser+f2600doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2600b
                               OTHERWISE
                                    DO seE_2600b WITH "v"
                                    DO diS_2600b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2600b WITH "i", "v"
                          DO seE_2600b WITH "v"
                          DO diS_2600b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2600tdo+f2600ser+f2600doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2600b
                               OTHERWISE
                                    DO seE_2600b WITH "v"
                                    DO diS_2600b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2600b WITH "u", "v"
                          DO seE_2600b WITH "v"
                          DO diS_2600b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2600b WITH "v"
                          DO diS_2600b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2600a WITH ffIl, ffIl+1
                               DO li2_2600a WITH ffIl, ffIl+1
                               DO li3_2600a WITH ffIl, ffIl+1
                               DO muE_2600b WITH "F", "v"
                               DO muE_2600b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2600b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2600b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2600b WITH "v"
                          DO diS_2600b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2600b WITH "v"
                          DO diS_2600b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2600a WITH ifIl, ifIl+1
                               DO li2_2600a WITH ifIl, ifIl+1
                               DO li3_2600a WITH ifIl, ifIl+1
                               DO muE_2600b WITH "F", "i"
                               DO muE_2600b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2600b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2600b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2600b WITH "v"
                          DO diS_2600b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2600b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2600b
                          STORE ifIl TO vfIl
                          DO muE_2600b WITH "i", "v"
                          DO seE_2600b WITH "v"
                          DO diS_2600b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2600b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2600b
                          STORE ifIl TO vfIl
                          DO muE_2600b WITH "i", "v"
                          DO seE_2600b WITH "v"
                          DO diS_2600b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2600b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2600b
 DO pn1_2600b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2600b
 DO pn1_2600b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2600b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2600b WITH "F", "i"
 DO muE_2600b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f2600tdo+f2600ser+f2600doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2600b WITH "N"
      ENDCASE
      DO muE_2600b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_2600a WITH ufIl, ffIl+1
      DO li2_2600a WITH ufIl, ffIl+1
      DO li3_2600a WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2600b
 PARAMETER ptIp
 PRIVATE peSt, pdOc
 STORE f2600alm TO xaLm
 SELECT alMacen
 SEEK xaLm
 STORE f9214nom TO xnAl
 STORE f9214dir TO xaDi
 STORE f9214dis TO xaDs
 STORE f9214dpt TO xaDp
 DO CASE
      CASE vsW1=1
           SELECT caB_remi
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE f2600est="1"
           STORE "Dig" TO peSt
      CASE f2600est="2"
           STORE "Imp" TO peSt
      CASE f2600est="8"
           STORE "Baj" TO peSt
      CASE f2600est="9"
           STORE "Anu" TO peSt
      OTHERWISE
           STORE "   " TO peSt
 ENDCASE
 DO CASE
      CASE f2600mot=1
           STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pdOc
      CASE f2600mot=2
           STORE "Salida x Traslado" TO pdOc
      CASE f2600mot=3
           STORE "Ingreso x Traslado" TO pdOc
      CASE f2600mot=4
           STORE "Salida x Devolucion" TO pdOc
      CASE f2600mot=5
           STORE "Salida x Consumo" TO pdOc
      CASE f2600mot=6
           STORE "Ingreso x Compra" TO pdOc
      CASE f2600mot=7
           STORE "Salida x Vta.suj.Confirmacion" TO pdOc
      CASE f2600mot=8
           STORE "Salida x Transformacion" TO pdOc
      CASE f2600mot=9
           STORE "Salida x Emis.Itinerante" TO pdOc
      CASE f2600mot=10
           STORE "Salida x Trasl.Zona Primaria" TO pdOc
      CASE f2600mot=11
           STORE "Salida x Consignacion" TO pdOc
      CASE f2600mot=12
           STORE "Ingreso x Recojo de Bienes" TO pdOc
      CASE f2600mot=13
           STORE "Salida x Otros" TO pdOc
      OTHERWISE
           STORE " " TO pdOc
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+000.0 Say F2600TDO                              Font "&mLetAri",9 Style "NQ" Size 1,03.5
 @vFIL,mCO0+004.6 Say F2600SER                              Font "&mLetAri",9 Style "NQ" Size 1,05.2
 @vFIL,mCO0+010.8 Say F2600DOC                              Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,mCO0+021.6 Say pEST                                  Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFIL,mCO0+107.2 Say F2600FEM                              Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+120.8 Say F2600LUG                              Font "&mLetAri",9 Style "NQ" Size 1,24.9 Pict "@S26"
 @vFIL,mCO0+146.8 Say F2600TNO                              Font "&mLetAri",9 Style "NQ" Size 1,28.2 Pict "@S30"
 DO CASE
      CASE vsW2=1
           @vFIL,mCO0+26.8 Say F2600CLI+":"+F2600NOM          Font "&mLetAri",9 Style "NQ" Size 1,26.0 Pict "@S28"
           @vFIL,mCO0+54.0 Say AllTrim(F2600DIR)+","+F2600DIS Font "&mLetAri",9 Style "NQ" Size 1,52.2 Pict "@S53"
      CASE vsW2=2
           @vFIL,mCO0+26.8 Say F2600CLI+":"+F2600NOM          Font "&mLetAri",9 Style "NQ" Size 1,79.4 Pict "@S82"
 ENDCASE
 DO CASE
      CASE (f2600mot=3 .OR. f2600mot=6 .OR. f2600mot=12) .AND. ptIp="N"
           DO coLscz
      CASE (f2600mot=3 .OR. f2600mot=6 .OR. f2600mot=12) .AND. ptIp="R"
           DO coLblz
      CASE f2600mot<>1 .AND. ptIp="N"
           DO coLscr
      CASE f2600mot<>1 .AND. ptIp="R"
           DO coLblr
 ENDCASE
 DO CASE
      CASE f2600mot=1
           @vFIL,mCO0+176.4 Say pDOC Font "&mLetAri",9 Style "NQ" Size 1,23.4
      OTHERWISE
           @vFIL,mCO0+176.4 Say pDOC Font "&mLetAri",9 Style "BQ" Size 1,20.4 Pict "@S18"
 ENDCASE
 DO CASE
      CASE mrEs="4"
           @vFIL,mCO0+201 Say xADI   Font "&mLetAri",9 Style "NQ" Size 1,50.3 Pict "@S53"
      CASE mrEs="5"
           @vFIL,mCO0+201 Say xADI   Font "&mLetAri",9 Style "NQ" Size 1,67.3 Pict "@S70"
 ENDCASE
 RELEASE peSt, pdOc
ENDPROC
*
PROCEDURE Opc_2600b
 DO rs2_2600a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2600b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_2600a
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
           CASE mkEy=k_F12
                DO rs1_2600b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_2600a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_2600b
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
                SELECT caB_remi
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2600nom)))<>0
                          DO muE_2600a
                          DO grA_2600a
                          SELECT caB_remi
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
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
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
           CASE vsW1=1
                SELECT caB_remi
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_2600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_2600b
      DO muE_2600b WITH "i", "v"
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_2600b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2600b WITH "v", "x"
 DO orD_2600b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2600b WITH "i"
 DO pa1_2600b
 IF cfIl=0
      DO muE_2600b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_2600b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_2600b WITH "v"
 DO diS_2600b WITH "R"
ENDPROC
*
PROCEDURE Est_2600b
 DO CASE
      CASE vsW1=1
           SELECT caB_remi
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_2600b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2600b WITH "v"
 DO diS_2600b WITH "R"
ENDPROC
*
PROCEDURE Anu_2600b
 PRIVATE ptX1, ptX2, poPc, pnUm
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "GUÍA DE REMISIÓN No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT caB_remi
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE 99 TO mkEy
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE "1" TO ctP1
 STORE f2600mot TO cmOt
 STORE f2600cst TO ccSt
 STORE f2600cps TO ccPs
 STORE f2600cpn TO ccPn
 STORE SUBSTR(DTOC(f2600fem), 1, 2) TO xdIa
 STORE SUBSTR(DTOC(f2600fem), 4, 2) TO xmEs
 STORE SUBSTR(DTOC(f2600fem), 7, 4) TO xaNo
 DO CASE
      CASE cmOt-1=2 .OR. cmOt-1=5 .OR. cmOt-1=11
           STORE "1" TO ctI1
           STORE "S" TO ceSt
      OTHERWISE
           STORE "2" TO ctI1
           STORE "O" TO ceSt
 ENDCASE
 IF cmOt-1=5 .OR. cmOt-1=11
      SELECT caB_cpra
      SEEK "CO"+ccPs+ccPn
      IF EOF()
           STORE 99 TO mkEy
           RETURN
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH "CO"+ccPs+ccPn
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT teMporal_2
 ZAP
 REINDEX
 IF cmOt-1=5 .OR. cmOt-1=11 .OR. (ccSt=1 .AND. cmOt<>1)
      SELECT deT_remi
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
           STORE f2601cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SELECT deT_remi
                SKIP
                LOOP
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT prO_tot
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                DO nuEvo_rg
                REPLACE f2118cod WITH vcOd
                REPLACE f2118sto WITH 0
                REPLACE f2118caj WITH 0
                REPLACE f2118cpe WITH 0
                REPLACE f2118cjp WITH 0
                REPLACE f2118sts WITH 0
                REPLACE f2118orp WITH 0
                REPLACE f2118vcp WITH 0
                REPLACE f2118vcs WITH 0
                REPLACE f2118prm WITH 0
                UNLOCK
                SEEK ALLTRIM(vcOd)+"*"
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT teMporal_2
           APPEND BLANK
           REPLACE ftM2cod WITH vcOd
           SELECT deT_remi
           SKIP
      ENDDO
      SELECT coN_remi
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f2604tdo+f2604ser+f2604doc=vtDo+vsEr+vdOc
           STORE f2604cdg TO vcOd
           SELECT teMporal_2
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcOd
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     SELECT coN_remi
                     SKIP
                     LOOP
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                SELECT prO_tot
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f2118cod WITH vcOd
                     REPLACE f2118sto WITH 0
                     REPLACE f2118caj WITH 0
                     REPLACE f2118cpe WITH 0
                     REPLACE f2118cjp WITH 0
                     REPLACE f2118sts WITH 0
                     REPLACE f2118orp WITH 0
                     REPLACE f2118vcp WITH 0
                     REPLACE f2118vcs WITH 0
                     REPLACE f2118prm WITH 0
                     UNLOCK
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
           SELECT coN_remi
           SKIP
      ENDDO
 ENDIF
 WAIT WINDOW NOWAIT "Anulando Cabecera de Guía de Remisión..."
 SELECT caB_remi
 REPLACE f2600est WITH "9"
 REPLACE f2600usu WITH muSu
 REPLACE f2600maq WITH mmAq
 REPLACE f2600dat WITH DATE()
 REPLACE f2600tim WITH TIME()
 IF vsW1=2
      SELECT teMporal
      REPLACE f2600est WITH "9"
      REPLACE f2600usu WITH muSu
      REPLACE f2600maq WITH mmAq
      REPLACE f2600dat WITH DATE()
      REPLACE f2600tim WITH TIME()
 ENDIF
 IF cmOt-1=5 .OR. cmOt-1=11
      WAIT WINDOW NOWAIT "Anulando Cabecera de Compra..."
      SELECT caB_cpra
      REPLACE f2400est WITH "9"
      REPLACE f2400usu WITH muSu
      REPLACE f2400maq WITH mmAq
      REPLACE f2400dat WITH DATE()
      REPLACE f2400tim WITH TIME()
      SELECT deT_cpra
      DO WHILE .T.
           SEEK "CO"+ccPs+ccPs
           IF EOF()
                EXIT
           ENDIF
           STORE f2401ite TO vrEc
           SEEK "CO"+ccPs+ccPs+STR(vrEc, 2, 0)
           IF  .NOT. RLOCK()
                DO reG_lock WITH "CO"+ccPs+ccPs+STR(vrEc, 2, 0)
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2401tdo WITH SPACE(02)
           REPLACE f2401ser WITH SPACE(03)
           REPLACE f2401doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDDO
      SELECT itE_cpra
      DO WHILE .T.
           SEEK "CO"+ccPs+ccPs
           IF EOF()
                EXIT
           ENDIF
           STORE f2402cod TO vcOd
           STORE f2402rcc TO vrCc
           SEEK "CO"+ccPs+ccPs+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF  .NOT. RLOCK()
                DO reG_lock WITH "CO"+ccPs+ccPs+ALLTRIM(vcOd)+"*"+ ;
                   STR(vrCc, 3, 0)
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2402tdo WITH SPACE(02)
           REPLACE f2402ser WITH SPACE(03)
           REPLACE f2402doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDDO
      SELECT seR_cpra
      DO WHILE .T.
           SEEK "CO"+ccPs+ccPs
           IF EOF()
                EXIT
           ENDIF
           STORE f2403cod TO vcOd
           STORE f2403ped TO vpD1
           STORE f2403sec TO vsEc
           SEEK "CO"+ccPs+ccPs+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF  .NOT. RLOCK()
                DO reG_lock WITH "CO"+ccPs+ccPs+ALLTRIM(vcOd)+"*"+ ;
                   ALLTRIM(vpD1)+vsEc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2403tdo WITH SPACE(02)
           REPLACE f2403ser WITH SPACE(03)
           REPLACE f2403doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDDO
 ENDIF
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      STORE f2601ite TO vrEc
      STORE f2601cod TO vcOd
      STORE f2601can TO vcAn
      STORE f2601caj TO vcAj
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2601tdo WITH SPACE(02)
      REPLACE f2601ser WITH SPACE(03)
      REPLACE f2601doc WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      IF cmOt-1=5 .OR. cmOt-1=11 .OR. (ccSt=1 .AND. cmOt<>1)
           SELECT kaRdex
           IF cmOt-1=5 .OR. cmOt-1=11
                SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+"CO"+ccPs+ccPn
           ELSE
                SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
           ENDIF
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     IF cmOt-1=5 .OR. cmOt-1=11
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+xaNo+xmEs+ ;
                             xdIa+ctI1+ctP1+"CO"+ccPs+ccPn
                     ELSE
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+xaNo+xmEs+ ;
                             xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
                     ENDIF
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2990cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE 0 TO vsLd, vsLc
           ELSE
                SET NEAR ON
                IF cmOt-1=5 .OR. cmOt-1=11
                     SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+"CO"+ ;
                          ccPs+ccPn
                ELSE
                     SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+ ;
                          vsEr+vdOc
                ENDIF
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                     SKIP
                ELSE
                     STORE 0 TO vsLd, vsLc
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
           ENDIF
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990fem TO cfEm
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(cfEm), 7, 4)+ ;
                     SUBSTR(DTOC(cfEm), 4, 2)+SUBSTR(DTOC(cfEm), 1, 2)+ ;
                     ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(cfEm),  ;
                        7, 4)+SUBSTR(DTOC(cfEm), 4, 2)+SUBSTR(DTOC(cfEm),  ;
                        1, 2)+ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo="1"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                IF mcAj=1 .AND. vsRr=1
                     REPLACE f2990slc WITH vsLc
                ENDIF
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH vcOd
      ENDIF
      SELECT deT_remi
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT itE_remi
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2602cod TO vcOd
      STORE f2602rcc TO vrCc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2602tdo WITH SPACE(02)
      REPLACE f2602ser WITH SPACE(03)
      REPLACE f2602doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 DO WHILE .T.
      SELECT seR_remi
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2603cod TO vcOd
      STORE f2603ped TO vpD1
      STORE f2603sec TO vsEc
      STORE f2603pla TO vpLa
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2603tdo WITH SPACE(02)
      REPLACE f2603ser WITH SPACE(03)
      REPLACE f2603doc WITH SPACE(07)
      DELETE
      UNLOCK
      IF cmOt-1=5 .OR. cmOt-1=11 .OR. (ccSt=1 .AND. cmOt<>1)
           SELECT kaRdex_series
           IF cmOt-1=5 .OR. cmOt-1=11
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ ;
                     ctI1+ctP1+"CO"+ccPs+ccPs
           ELSE
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ ;
                     ctI1+ctP1+vtDo+vsEr+vdOc
           ENDIF
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     IF cmOt-1=5 .OR. cmOt-1=11
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+ ;
                             ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ctI1+ctP1+ ;
                             "CO"+ccPs+ccPs
                     ELSE
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+ ;
                             ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ctI1+ctP1+ ;
                             vtDo+vsEr+vdOc
                     ENDIF
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2991cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
           ENDIF
           DO grA_serie IN PAI2700A
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
      ENDIF
 ENDDO
 DO WHILE .T.
      SELECT coN_remi
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2604cod TO vcOd
      STORE f2604cdg TO ccDg
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ccDg)+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ccDg)+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2604tdo WITH SPACE(02)
      REPLACE f2604ser WITH SPACE(03)
      REPLACE f2604doc WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT prOductos
      SEEK ALLTRIM(ccDg)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      IF ccSt=1 .AND. cmOt<>1
           SELECT kaRdex
           SEEK ALLTRIM(ccDg)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(ccDg)+"*"+xaNo+xmEs+xdIa+ ;
                        ctI1+ctP1+vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2990cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
           ENDIF
           SEEK ALLTRIM(ccDg)+"*"
           IF EOF()
                STORE 0 TO vsLd, vsLc
           ELSE
                SET NEAR ON
                SEEK ALLTRIM(ccDg)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(ccDg)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(ccDg)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                     SKIP
                ELSE
                     STORE 0 TO vsLd, vsLc
                     SEEK ALLTRIM(ccDg)+"*"
                ENDIF
           ENDIF
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(ccDg)+"*"
                STORE f2990fem TO cfEm
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(ccDg)+"*"+SUBSTR(DTOC(cfEm), 7, 4)+ ;
                     SUBSTR(DTOC(cfEm), 4, 2)+SUBSTR(DTOC(cfEm), 1, 2)+ ;
                     ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(ccDg)+"*"+SUBSTR(DTOC(cfEm),  ;
                        7, 4)+SUBSTR(DTOC(cfEm), 4, 2)+SUBSTR(DTOC(cfEm),  ;
                        1, 2)+ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo="1"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                IF mcAj=1 .AND. vsRr=1
                     REPLACE f2990slc WITH vsLc
                ENDIF
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH ccDg
      ENDIF
 ENDDO
 UNLOCK ALL
 RELEASE ptX1, ptX2, poPc, pnUm
ENDPROC
*
PROCEDURE Eli_2600b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea ELIMINAR este Documento?"
 ptX2 = "GUÍA DE REMISIÓN No.:"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "2"
 SELECT caB_remi
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
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
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f2600tdo WITH SPACE(02)
 REPLACE f2600ser WITH SPACE(03)
 REPLACE f2600doc WITH SPACE(07)
 DELETE
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      DELETE
      PACK
 ENDIF
 DO orD_2600b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 DO seE_2600b WITH "i"
 SET NEAR OFF
 IF EOF()
      GOTO BOTTOM
 ENDIF
 DO paN_2600b
 DO muE_2600b WITH "i", "v"
 DO seE_2600b WITH "v"
 STORE ifIl TO vfIl
 STORE 99 TO mkEy
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Rs1_2600b
 SET READBORDER ON
 DO rs1_2600a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2600b WITH "R"
 DO CASE
      CASE wtPo="1"
           DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
      CASE wtPo="2"
           DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
      CASE wtPo="3"
           DO prEsiona WITH "4", "R_CONS12", mmF1, mmC1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Exc_2600b
 SAVE SCREEN TO vpAn_11
 vXLS=PutFile("Archivo Excel:","&mVIN"+"Guias_Remision.XLS","XLS")
 RESTORE SCREEN FROM vpAn_11
 IF LEN(ALLTRIM(vxLs))<>0
      DO CASE
           CASE AT(" ", vxLs)<>0
                STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                      TO mmSj
                DO poNmsj
                = INKEY(0.05)
                RETURN
           OTHERWISE
                Export to &vXLS Fiel F2600NOM,F2600RUC,F2600LUG,F2600LUD,F2600LUP,F2600FEM,F2600TNO,F2600TRU,F2600CIM,F2600TD1,F2600SR1,F2600DO1,F2600FFA,F2600SRP, F2600PED,F2600MOT,F2600CST,F2600CR1,F2600MR1,F2600PLA,F2600CR2,F2600MR2,F2600PL2,F2600CHO,F2600LC1,F2600PES,F2600CM1,F2600CM2,F2600EST Type XLS
                DO xlS_0000a
      ENDCASE
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caB_remi
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2600b WITH "v"
ENDPROC
*
PROCEDURE Ord_2600b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "2600", "A", "F2600NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "2600", "A", "F2600FEM", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "A", "F2600DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "A", "F2600NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "A", "F2600FEM", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_2600b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vnOm)+vtDo+vsEr+vdOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK itDo+isEr+idOc
                CASE vsW0=2
                     SEEK UPPER(inOm)+itDo+isEr+idOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK utDo+usEr+udOc
                CASE vsW0=2
                     SEEK UPPER(unOm)+utDo+usEr+udOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2600b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE inOm TO vnOm
           STORE ifEm TO vfEm
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE ufEm TO vfEm
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xfEm TO vfEm
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cnOm TO vnOm
           STORE cfEm TO vfEm
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vnOm TO inOm
           STORE vfEm TO ifEm
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vfEm TO xfEm
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vnOm TO cnOm
           STORE vfEm TO cfEm
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2600tdo TO vtDo
           STORE f2600ser TO vsEr
           STORE f2600doc TO vdOc
           STORE f2600nom TO vnOm
           STORE f2600fem TO vfEm
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2600tdo TO itDo
           STORE f2600ser TO isEr
           STORE f2600doc TO idOc
           STORE f2600nom TO inOm
           STORE f2600fem TO ifEm
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2600tdo TO utDo
           STORE f2600ser TO usEr
           STORE f2600doc TO udOc
           STORE f2600nom TO unOm
           STORE f2600fem TO ufEm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2600b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO exC_2600b
           STORE 99 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo$"23"
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
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
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB6-0.135 .AND. mfIl<=vfB6+1.7 .AND. mcCc>=vcB6-0.5  ;
           .AND. mcCc<=vcB6+1.9
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+03.6 .AND.  ;
           mcCc<=mmC2+07
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
           DO diS_2600b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2600b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2600b WITH "F", "v"
           DO diS_2600b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2600b
 STORE 0.2 TO pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ pfIl+01, 02 SAY  ;
   "den que se ha elegido. No totaliza, pero si se puede seleccionar parte de"
 @ pfIl+02, 02 SAY "la información."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 23 SAY ":" STYLE "BT"
 @ pfIl+07, 23 SAY ":" STYLE "BT"
 @ pfIl+08, 23 SAY ":" STYLE "BT"
 @ pfIl+09, 23 SAY ":" STYLE "BT"
 @ pfIl+10, 23 SAY ":" STYLE "BT"
 @ pfIl+11, 23 SAY ":" STYLE "BT"
 @ pfIl+12, 23 SAY ":" STYLE "BT"
 @ pfIl+13, 23 SAY ":" STYLE "BT"
 @ pfIl+14, 23 SAY ":" STYLE "BT"
 @ pfIl+15, 23 SAY ":" STYLE "BT"
 @ pfIl+16, 23 SAY ":" STYLE "BT"
 @ pfIl+17, 23 SAY ":" STYLE "BT"
 @ pfIl+18, 23 SAY ":" STYLE "BT"
 @ pfIl+19, 23 SAY ":" STYLE "BT"
 @ pfIl+06, 04 SAY "ESC" STYLE "BT"
 @ pfIl+07, 04 SAY "F10" STYLE "BT"
 @ pfIl+08, 04 SAY "F1" STYLE "BT"
 @ pfIl+09, 04 SAY "F2" STYLE "BT"
 @ pfIl+10, 04 SAY "F6" STYLE "BT"
 @ pfIl+11, 04 SAY "F7" STYLE "BT"
 @ pfIl+12, 04 SAY "F9" STYLE "BT"
 @ pfIl+13, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+14, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+15, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+16, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+17, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+18, 04 SAY "HOME" STYLE "BT"
 @ pfIl+19, 04 SAY "END" STYLE "BT"
 @ pfIl+06, 25 SAY "Regresar a Cabecera"
 @ pfIl+07, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 25 SAY "Ayuda del Programa"
 @ pfIl+09, 25 SAY "Ampliar reducir vista de nombre de Cliente"
 @ pfIl+10, 25 SAY "Cambio de Orden de Consulta"
 @ pfIl+11, 25 SAY "Ver Tipos de Guías"
 @ pfIl+12, 25 SAY "Buscar palabra o frase dentro del Cliente"
 @ pfIl+13, 25 SAY "Visualizar Contenido completo del Documento"
 @ pfIl+14, 25 SAY "Línea inferior"
 @ pfIl+15, 25 SAY "Línea superior"
 @ pfIl+16, 25 SAY "Página siguiente"
 @ pfIl+17, 25 SAY "Página anterior"
 @ pfIl+18, 25 SAY "Primera línea"
 @ pfIl+19, 25 SAY "Última línea"
 DO CASE
      CASE wtPo="2"
           @ pfIl+20, 23 SAY ":" STYLE "BT"
           @ pfIl+20, 04 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+20, 25 SAY "Anulación del Documento"
      CASE wtPo="3"
           @ pfIl+20, 23 SAY ":" STYLE "BT"
           @ pfIl+20, 04 SAY "CTRL DEL" STYLE "BT"
           @ pfIl+20, 25 SAY "Eliminación del Documento"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2600b
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los Clientes,  saldrá un mensaje,  en caso de encontrase se regresará"
 @ pfIl+03, 02 SAY "al Detalle."
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
ENDPROC
*
