 = INKEY(0.01)
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_4200b IN PKC4200B
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
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_4230b
      STORE ifIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "i", "v"
 ELSE
      DO seE_4200b IN PKC4200B WITH "v"
      IF EOF()
           GOTO TOP
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
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_4200b IN PKC4200B WITH "F", "v"
      ENDIF
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_4200b IN PKC4200B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f4200cod=vcOd
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_4200b IN PKC4200B WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_4200b IN PKC4200B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_4200b IN PKC4200B WITH "i"
      SET NEAR OFF
      DO paN_4230b
      STORE ifIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "i", "v"
      DO seE_4200b IN PKC4200B WITH "v"
 ENDIF
 DO diS_4230b WITH "R"
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
           DO rs1_4230b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4230b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_4230b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_4230b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_4230b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4230b
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
                DO p01_4200a IN PKC4200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO caM_4230b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F8
                DO tmP_4230b
                DO xl0_0000a WITH "Asistencia_x_Trabajador", "Asistencia", 12
                pxLs.ceLls(3, 01).vaLue = "Codigo"
                pxLs.ceLls(3, 02).vaLue = "Est"
                pxLs.ceLls(3, 03).vaLue = "Apellidos y Nombres"
                pxLs.ceLls(3, 04).vaLue = "Cargo"
                pxLs.ceLls(3, 05).vaLue = "Area"
                pxLs.ceLls(3, 06).vaLue = "Dia"
                pxLs.ceLls(3, 07).vaLue = "Fecha"
                pxLs.ceLls(3, 08).vaLue = "Entrada"
                pxLs.ceLls(3, 09).vaLue = "Salida"
                pxLs.ceLls(3, 10).vaLue = "Inicio"
                pxLs.ceLls(3, 11).vaLue = "Fin"
                pxLs.ceLls(3, 12).vaLue = "Estado"
                pxLs.raNge(pxLs.coLumns(1),  ;
                          pxLs.coLumns(02)).nuMberformat = "@"
                pxLs.raNge(pxLs.coLumns(7),  ;
                          pxLs.coLumns(12)).hoRizontalalignment = 3
                pxLs.coLumns(2).hoRizontalalignment = 3
                pxLs.coLumns(7).nuMberformat = "dd/mm/yyyy"
                SELECT tmP_excel
                GOTO TOP
                DO coLbln
                STORE 4 TO viTe
                DO WHILE  .NOT. EOF()
                     pxLs.ceLls(viTe, 01).vaLue = coDigo
                     pxLs.ceLls(viTe, 02).vaLue = esT
                     pxLs.ceLls(viTe, 03).vaLue = noMbre
                     pxLs.ceLls(viTe, 04).vaLue = caRgo
                     pxLs.ceLls(viTe, 05).vaLue = arEa
                     pxLs.ceLls(viTe, 06).vaLue = diA
                     pxLs.ceLls(viTe, 07).vaLue = feCha
                     pxLs.ceLls(viTe, 08).vaLue = inGreso
                     pxLs.ceLls(viTe, 09).vaLue = saLida
                     pxLs.ceLls(viTe, 10).vaLue = inIref
                     pxLs.ceLls(viTe, 11).vaLue = fiNref
                     pxLs.ceLls(viTe, 12).vaLue = esTado
                     STORE viTe+1 TO viTe
                     SKIP
                ENDDO
                DO xl1_0000a WITH 1
                WAIT CLEAR
                DO CASE
                     CASE vsW1=1
                          SELECT trAbajadores
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_4200b IN PKC4200B WITH "v"
                STORE 99 TO mkEy
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_4230b
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
                DO seE_4200b IN PKC4200B WITH "v"
                DO diS_4230b WITH "R"
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_4230b
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO seE_4200b IN PKC4200B WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Enter
                STORE f4200cod TO vcDd
                STORE f4200are TO vaRr
                SELECT maRcaciones
                SET NEAR ON
                SEEK vcOd+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4,  ;
                     2)+SUBSTR(DTOC(dfEm), 1, 2)
                SET NEAR OFF
                IF EOF() .OR. f4230cod<>vcOd .OR. f4230fem>hfEm
                     STORE "No hay Datos en este rango de fechas" TO mmSj
                ELSE
                     DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO pkC4230c
                     DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO coL_boton
                     @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
                ENDIF
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f4200cod=icOd .AND. vcOd=icOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=icOd
                                    DO paN_4230b
                               OTHERWISE
                                    DO seE_4200b IN PKC4200B WITH "v"
                                    DO diS_4230b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_4200b IN PKC4200B WITH "i", "v"
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4230b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f4200cod=ucOd .AND. vcOd=ucOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=ucOd
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_4230b
                               OTHERWISE
                                    DO seE_4200b IN PKC4200B WITH "v"
                                    DO diS_4230b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_4200b IN PKC4200B WITH "u", "v"
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4230b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4230b WITH "N"
                          SKIP
                          IF vcOd=ucOd
                               DO coL_beige
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO muE_4200b IN PKC4200B WITH "F", "v"
                               DO muE_4200b IN PKC4200B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_4200b IN PKC4200B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_4200b IN PKC4200B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4230b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4230b WITH "N"
                          SKIP -1
                          IF vcOd=icOd
                               DO coL_beige
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO muE_4200b IN PKC4200B WITH "F", "v"
                               DO muE_4200b IN PKC4200B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_4200b IN PKC4200B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_4200b IN PKC4200B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4230b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_4200b IN PKC4200B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_4230b
                          STORE ifIl TO vfIl
                          DO muE_4200b IN PKC4200B WITH "i", "v"
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4230b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_4200b IN PKC4200B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_4230b
                          STORE ifIl TO vfIl
                          DO muE_4200b IN PKC4200B WITH "i", "v"
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4230b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_4200b IN PKC4200B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_4230b
 STORE ifIl TO vfIl, ufIl
 DO muE_4200b IN PKC4200B WITH "F", "i"
 DO muE_4200b IN PKC4200B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_4230b WITH "N"
      DO muE_4200b IN PKC4200B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_beige
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_4221a IN PKC4221A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Pa1_4230b
 STORE ifIl TO vfIl, ufIl
 DO muE_4200b IN PKC4200B WITH "F", "i"
 DO muE_4200b IN PKC4200B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE f4200cod=xcOd
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_4230b WITH "N"
      ENDCASE
      DO muE_4200b IN PKC4200B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_beige
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_4221a IN PKC4221A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_4230b
 PARAMETER ptIp
 PRIVATE pnOm, peSt
 STORE f4200cod TO vcDd
 STORE f4200are TO vaRr
 STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+f4200nom TO pnOm
 IF f4200est="9"
      STORE "Anu" TO peSt
 ELSE
      STORE "   " TO peSt
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN+00.1 Say F4200COD Font "&mLetAri",9 Style "NQ" Size 1,10.0
 @vFIL,iCLN+10.6 Say pEST     Font "&mLetAri",9 Style "NQ" Size 1,04.7
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+016.1 Say pNOM     Font "&mLetAri",9 Style "NQ" Size 1,60.1 Pict "@S63"
           @vFIL,iCLN+076.8 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,29.3 Pict "@S32"
           @vFIL,iCLN+106.9 Say F4200NAR Font "&mLetAri",9 Style "NQ" Size 1,29.9 Pict "@S32"
      CASE mrEs>="4"
           @vFIL,iCLN+016.1 Say pNOM     Font "&mLetAri",9 Style "NQ" Size 1,60.1 Pict "@S63"
           @vFIL,iCLN+076.8 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,29.3 Pict "@S32"
           @vFIL,iCLN+106.9 Say F4200NAR Font "&mLetAri",9 Style "NQ" Size 1,33.7 Pict "@S36"
 ENDCASE
 IF ptIp="N"
      RELEASE pnOm, peSt
      RETURN
 ENDIF
 DO coL_beige
 @iFFS-4.8,iCL1+11 Say F4200NCA Font "&mLetAri",9 Style "BQU" Size 1,16 Pict "@S18"
 @iFFS-4.8,iCL1+39 Say F4200NAR Font "&mLetAri",9 Style "BQU" Size 1,16 Pict "@S18"
 SELECT maRcaciones
 SET NEAR ON
 SEEK vcDd+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
      SUBSTR(DTOC(dfEm), 1, 2)
 SET NEAR OFF
 IF EOF() .OR. f4230cod<>vcDd .OR. f4230fem>hfEm
      DO coL_beige
      @ ifFs, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_4230a WITH ifFs-1.4, ffFs+1.1
 ELSE
      DO paN_4230c IN PKC4230C
      DO muE_4230c IN PKC4230C WITH "i", "v"
      STORE ifFs TO vfFs
 ENDIF
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 RELEASE pnOm, peSt
ENDPROC
*
PROCEDURE Opc_4230b
 DO rs2_4200a IN PKC4200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4230b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_4200a IN PKC4200A
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
                DO rs1_4230b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_4200a IN PKC4200A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_4200b IN PKC4200B
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
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200app)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f4200apm)))<>0
                          IF f4200est<>"9"
                               DO muE_4200a IN PKC4200A
                               DO grA_4200a IN PKC4200A
                               SELECT trAbajadores
                          ENDIF
                     ENDIF
                     SKIP
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
           CASE mrEs="3"
                @iFIL+1.8,mCO0+51.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs$"45"
                @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
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
      DO orD_4200b IN PKC4200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_4230b
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "i", "v"
 ENDIF
 DO coL_beige
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Font "&mLetRom",9 Style "BQ" Size 1,47 Pict "@S47"
ENDPROC
*
PROCEDURE Cam_4230b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_4200b IN PKC4200B WITH "v", "x"
 DO orD_4200b IN PKC4200B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_4200b IN PKC4200B WITH "i"
 DO pa1_4230b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      DO muE_4200b IN PKC4200B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_4200b IN PKC4200B WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_4200b IN PKC4200B WITH "v"
 DO diS_4230b WITH "R"
ENDPROC
*
PROCEDURE Imp_4230b
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
 DO reP_4230b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_4230b
 PUBLIC pcOd, ptAm
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE voP1=1 .AND. voPc=1
           STORE 16 TO mcLn
           STORE 89 TO ptAm
      CASE voP1=1
           STORE 27 TO mcLn
           STORE 70 TO ptAm
      CASE voP1=2
           STORE 27 TO mcLn
           STORE 72 TO ptAm
 ENDCASE
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(dcOd)
 SET NEAR OFF
 DO WHILE  .NOT. EOF() .AND. f4200cod<=ALLTRIM(hcOd)
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF f4200est="9" .OR. (SUBSTR(f4200cod, 1, 1)="9" .AND. voP1=2)
           SKIP
           LOOP
      ENDIF
      IF vpAg=0 .OR. vlIn+3>mpAg-3
           DO caB_4230b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE f4200cod TO pcOd
      STORE f4200are TO paRe
      STORE vlIn+1.0 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           IF voP1=2
                @vLIN,mCLN    Say "DNI: "+F4200ELE                                              Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+30 Say AllTrim(F4200APP)+" "+AllTrim(F4200APM)+" "+AllTrim(F4200NOM) Font "&mLetRom",12 Style "BQ"
           ELSE
                @vLIN,mCLN    Say F4200COD                                                      Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+09 Say F4200ELE                                                      Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+30 Say AllTrim(F4200APP)+" "+AllTrim(F4200APM)+" "+AllTrim(F4200NOM) Font "&mLetRom",12 Style "BQ"
           ENDIF
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.9 TO vlIn
      @vLIN,mCLN+30  Say F4200DIR Font "&mLetAri",9 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN+30  Say F4200NDI Font "&mLetAri",9 Style "NQ"
      STORE vlIn+3.0 TO vlIn
      STORE dfEm TO vfEm
      DO rp1_4230b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE vsW1=01
                SELECT trAbajadores
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      STORE mpAg+3 TO vlIn
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE pcOd, ptAm
ENDPROC
*
PROCEDURE Rp1_4230b
 PRIVATE pmIn, phOr, pmI1, pmI2, pm11, pm12, pm21, pm22, psWw
 DO WHILE .T.
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      DO diA_4230a IN PKM4230A
      DO CASE
           CASE vdDd="F"
                STORE "Feriado" TO pdIa
           CASE vdDd="L"
                STORE "Lunes" TO pdIa
           CASE vdDd="M"
                STORE "Martes" TO pdIa
           CASE vdDd="I"
                STORE "Miercoles" TO pdIa
           CASE vdDd="J"
                STORE "Jueves" TO pdIa
           CASE vdDd="V"
                STORE "Viernes" TO pdIa
           CASE vdDd="S"
                STORE "Sabado" TO pdIa
           CASE vdDd="D"
                STORE "Domingo" TO pdIa
      ENDCASE
      SELECT maRcaciones
      SEEK pcOd+vaNo+vmEs+vdIa
      DO CASE
           CASE EOF()
                IF vfEm=hfEm
                     EXIT
                ENDIF
                STORE vfEm+1 TO vfEm
                LOOP
           CASE f4230est="V"
                STORE "V" TO veSt
                STORE "     " TO peNt, psAl, prIn, prFi
           CASE f4230est="P"
                STORE "P" TO veSt
                STORE "     " TO peNt, psAl, prIn, prFi
           CASE f4230est="I"
                STORE "I" TO veSt
                STORE "     " TO peNt, psAl, prIn, prFi
           OTHERWISE
                STORE f4230ent TO peNt
                STORE f4230sal TO psAl
                STORE f4230rin TO prIn
                STORE f4230rfi TO prFi
                IF LEN(ALLTRIM(peNt))<=1 .AND. LEN(ALLTRIM(psAl))<=1  ;
                   .AND. LEN(ALLTRIM(prIn))<=1 .AND. LEN(ALLTRIM(prFi))<=1
                     STORE "I" TO veSt
                     STORE "     " TO peNt, psAl, prIn, prFi
                ELSE
                     STORE f4230est TO veSt
                ENDIF
      ENDCASE
      DO CASE
           CASE veSt="I"
                STORE "Falta" TO veSt
           CASE veSt="P"
                STORE "Permiso" TO veSt
           CASE veSt="F"
                STORE "Feriado" TO veSt
           CASE veSt="J"
                STORE "Justicada" TO veSt
           CASE veSt="V"
                STORE "Vacacaciones" TO veSt
           OTHERWISE
                STORE " " TO veSt
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN    Say vFEM Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+18 Say pDIA Font "&mLetRom",11 Style "NQ"
           DO CASE
                CASE voP1=1 .AND. voPc=1
                     @vLIN,mCLN+38  Say pENT             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+52  Say pSAL             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+66  Say pRIN             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+80  Say pRFI             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+95  Say vEST             Font "&mLetRom",11 Style "NQ" Size 1,9
                     @vLIN,mCLN+115 Say "______________" Font "&mLetRom",11 Style "NQ" Size 1,9
                CASE voP1=1 .AND. voPc=2
                     @vLIN,mCLN+38  Say pENT             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+52  Say pSAL             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+66  Say vEST             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+86  Say "______________" Font "&mLetRom",11 Style "NQ" Size 1,9
                CASE voP1=1 .AND. voPc=3
                     @vLIN,mCLN+38  Say pRIN             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+52  Say pRFI             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+66  Say vEST             Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+86  Say "______________" Font "&mLetRom",11 Style "NQ" Size 1,9
                CASE voP1=2
                     @vLIN,mCLN+38 Say pENT              Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+52 Say pSAL              Font "&mLetRom",11 Style "NQ" Size 1,6
                     @vLIN,mCLN+96 Say vEST              Font "&mLetRom",11 Style "NQ" Size 1,9
                     IF psAl=f4230sa1 .OR. LEN(ALLTRIM(psAl))=0
                          @vLIN,mCLN+73 Say "00:00"        Font "&mLetRom",11 Style "NQ" Size 1,6
                     ELSE
                          STORE VAL(SUBSTR(f4230sa1, 1, 2))*60 TO pm11
                          STORE VAL(SUBSTR(f4230sa1, 4, 2)) TO pm12
                          STORE VAL(SUBSTR(psAl, 1, 2))*60 TO pm21
                          STORE VAL(SUBSTR(psAl, 4, 2)) TO pm22
                          STORE pm11+pm12 TO pmI1
                          STORE pm21+pm22 TO pmI2
                          IF pmI1>pmI2
                               STORE pmI1-pmI2 TO pmIn
                               STORE 2 TO psWw
                          ELSE
                               STORE pmI2-pmI1 TO pmIn
                               STORE 1 TO psWw
                          ENDIF
                          IF pmIn>60
                               STORE INT(pmIn/60) TO phOr
                               STORE pmIn-(phOr*60) TO pmIn
                          ELSE
                               STORE 0 TO phOr
                          ENDIF
                          STORE STRTRAN(STR(phOr, 2, 0), " ", "0") TO phOr
                          STORE STRTRAN(STR(pmIn, 2, 0), " ", "0") TO pmIn
                          IF psWw=2
                               STORE pmIn+" (-)" TO pmIn
                          ENDIF
                          IF phOr="00"
                               @vLIN,mCLN+73 Say "00:"+pMIN    Font "&mLetRom",11 Style "NQ" Size 1,16
                          ELSE
                               @vLIN,mCLN+73 Say pHOR+":"+pMIN Font "&mLetRom",11 Style "NQ" Size 1,16
                          ENDIF
                     ENDIF
           ENDCASE
      ENDIF
      STORE vlIn+1.6 TO vlIn
      IF vfEm=hfEm
           EXIT
      ENDIF
      STORE vfEm+1 TO vfEm
 ENDDO
 RELEASE pmIn, phOr, pmI1, pmI2, pm11, pm12, pm21, pm22, psWw
ENDPROC
*
PROCEDURE Cab_4230b
 PARAMETER ptAm
 PRIVATE pcLn
 STORE 0 TO pcLn
 DO CASE
      CASE voP1=1 .AND. voPc=1
           STORE 6 TO pcLn
      CASE voP1=1
           STORE 2 TO pcLn
 ENDCASE
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      DO taM_0000a WITH ptAm, "1"
 ELSE
      IF voP1=2
           DO cb1_4230b
           DO taM_0000a WITH ptAm, "1"
      ENDIF
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vpAg+1 TO vpAg
 STORE 00 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "BT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+pTAM+pCLN+16 Say "Fecha:"                             Font "&mLetRom",11 Style "NT"
      DO CASE
           CASE voP1=1
                @vLIN,mCLN+pTAM+pCLN+25 Say Date()                       Font "&mLetRom",11 Style "NT"
           CASE SUBSTR(DTOC(dfEm), 4, 2)="02"
                @vLIN,mCLN+pTAM+pCLN+25 Say "28"+Substr(Dtoc(dFEM),3,10) Font "&mLetRom",11 Style "NT"
           CASE SUBSTR(DTOC(dfEm), 4, 2)="04" .OR. SUBSTR(DTOC(dfEm), 4,  ;
                2)="06" .OR. SUBSTR(DTOC(dfEm), 4, 2)="09" .OR.  ;
                SUBSTR(DTOC(dfEm), 4, 2)="11"
                @vLIN,mCLN+pTAM+pCLN+25 Say "30"+Substr(Dtoc(dFEM),3,10) Font "&mLetRom",11 Style "NT"
           OTHERWISE
                @vLIN,mCLN+pTAM+pCLN+25 Say "31"+Substr(Dtoc(dFEM),3,10) Font "&mLetRom",11 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+pTAM+pCLN+16 Say "Hora:"                           Font "&mLetRom",11 Style "NT"
      DO CASE
           CASE voP1=1
                @vLIN,mCLN+pTAM+pCLN+25 Say Time()                    Font "&mLetRom",11 Style "NT"
           OTHERWISE
                @vLIN,mCLN+pTAM+pCLN+25 Say "18:4"+Substr(Time(),5,1) Font "&mLetRom",11 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_prt
 STORE vlIn+0.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "RUC: "+mRUC Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Dirección: "+mDIR Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Asistencia de Trabajadores" Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1 .AND. voP1=1
                @vLIN,mCLN Say "Orden de Códigos: Desde "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM) Font "&mLetAri",10 Style "NQ"
           CASE vsW0=2 .AND. voP1=1
                @vLIN,mCLN Say "Orden Alfabético: Desde "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM) Font "&mLetAri",10 Style "NQ"
           CASE vsW0=3 .AND. voP1=1
                @vLIN,mCLN Say "Orden: x RUC: Desde "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM)     Font "&mLetAri",10 Style "NQ"
           CASE vsW0=4 .AND. voP1=1
                @vLIN,mCLN Say "Orden: x DNI: Desde "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM)     Font "&mLetAri",10 Style "NQ"
           CASE vsW0=5 .AND. voP1=1
                @vLIN,mCLN Say "Orden: x Cargo: Desde "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM)   Font "&mLetAri",10 Style "NQ"
           CASE vsW0=6 .AND. voP1=1
                @vLIN,mCLN Say "Orden: x Area: Desde "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM)    Font "&mLetAri",10 Style "NQ"
           CASE voP1=2
                @vLIN,mCLN Say "Desde "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM)                   Font "&mLetAri",10 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+38 Say "Hora"                          Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+52 Say "Hora"                          Font "&mLetAri",9 Style "NT"
      DO CASE
           CASE voP1=1 .AND. voPc=1
                @vLIN,mCLN+66 Say "Inicio"                Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+80 Say "Fin"                   Font "&mLetAri",9 Style "NT"
           CASE voP1=2
                @vLIN,mCLN+66 Say "Tiempo de Permanencia" Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+1.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Fecha"                         Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+18 Say "Dia"                           Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+38 Say "Ingreso"                       Font "&mLetAri",9 Style "NT"
      @vLIN,mCLN+52 Say "Salida"                        Font "&mLetAri",9 Style "NT"
      DO CASE
           CASE voP1=2
                @vLIN,mCLN+66  Say "fuera de la Jornada"  Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+96  Say "Estado"               Font "&mLetAri",9 Style "NT"
           CASE voPc=1
                @vLIN,mCLN+66  Say "Refrig"               Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+80  Say "Refrig"               Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+95  Say "Estado"               Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+115 Say "Firma"                Font "&mLetAri",9 Style "NT"
           CASE voPc>1
                @vLIN,mCLN+66  Say "Estado"               Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+86  Say "Firma"                Font "&mLetAri",9 Style "NT"
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
 RELEASE pcLn
ENDPROC
*
PROCEDURE Lin_4230b
 STORE vlIn+0.7 TO vlIn
 @vLIN,020.0   Say "|"                               Font "&mLetAri",13 Style "NT"
 @vLIN,150.1   Say "|"                               Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,020.0   Say "|"                               Font "&mLetAri",13 Style "NT"
 @vLIN,150.1   Say "|"                               Font "&mLetAri",13 Style "NT"
ENDPROC
*
PROCEDURE Cb1_4230b
 DO coLbln
 STORE 05 TO vlIn
 @vLIN,20.0 Say Replicate("-",109) Font "&mLetAri",13 Style "NT"
 @vLIN,20.7 Say Replicate("-",108) Font "&mLetAri",13 Style "NT"
 @vLIN,21.0 Say Replicate("-",108) Font "&mLetAri",13 Style "NT"
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 @vLIN,mCLN+10 Say "REGISTRO PREMANENTE DE CONTROL" Font "&mLetRom",18 Style "BT"
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 @vLIN,mCLN+22 Say "DE CONTROL DE ASISTENCIA"       Font "&mLetRom",18 Style "BT"
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 @vLIN,mCLN+10 Say "Razón Social"                   Font "&mLetRom",12 Style "BT"
 DO liN_4230b
 @vLIN,mCLN+10 Say mRAZ                             Font "&mLetRom",14 Style "NT"
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 @vLIN,mCLN+10 Say "Domicilio Legal:"               Font "&mLetAri",12 Style "BT"
 DO liN_4230b
 @vLIN,mCLN+10 Say mDIR                             Font "&mLetRom",12 Style "NT"
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 @vLIN,mCLN+10 Say "Centro de Trabajo:"             Font "&mLetAri",12 Style "BT"
 DO liN_4230b
 @vLIN,mCLN+10 Say mDIR                             Font "&mLetRom",12 Style "NT"
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 @vLIN,mCLN+10 Say "________________________"       Font "&mLetAri",13 Style "NT"
 @vLIN,mCLN+10.6 Say "________________________"     Font "&mLetAri",13 Style "NT"
 DO liN_4230b
 DO liN_4230b
 @vLIN,mCLN+10 Say "Firma del Representante Legal"  Font "&mLetAri",12 Style "BT"
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 DO liN_4230b
 STORE vlIn+0.5 TO vlIn
 @vLIN,20.0 Say Replicate("-",109) Font "&mLetAri",13 Style "NT"
 @vLIN,20.7 Say Replicate("-",108) Font "&mLetAri",13 Style "NT"
 @vLIN,21.0 Say Replicate("-",108) Font "&mLetAri",13 Style "NT"
ENDPROC
*
PROCEDURE Rs1_4230b
 SET READBORDER ON
 DO rs1_4230a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_4230b WITH "R"
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
PROCEDURE Tmp_4230b
 PRIVATE pdIa, peTt, piNg, peNt, psAl, prIn, prFi, pcOd
 SELECT tmP_excel
 ZAP
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Leyendo: "+f4200cod
      STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+f4200nom TO xnOm
      STORE f4200cod TO xcOd
      STORE f4200nca TO xnCa
      STORE f4200are TO xaRe
      STORE f4200nar TO xnAr
      IF f4200est="9"
           STORE "Anu" TO xeSt
      ELSE
           STORE "   " TO xeSt
      ENDIF
      STORE "S" TO pcOd
      SELECT maRcaciones
      SET NEAR ON
      SEEK xcOd+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
           SUBSTR(DTOC(dfEm), 1, 2)
      SET NEAR OFF
      DO WHILE  .NOT. EOF() .AND. f4230cod=xcOd .AND. f4230fem<=hfEm
           DO muE_4230c IN PKC4230C WITH "F", "v"
           DO diA_4230a IN PKM4230A
           IF vdDd="F"
                STORE "Feriado" TO pdIa
           ELSE
                STORE CDOW(vfEm) TO pdIa
           ENDIF
           DO CASE
                CASE f4230est="I"
                     STORE "Falta" TO peTt
                CASE f4230est="P"
                     STORE "Permiso" TO peTt
                CASE f4230est="F"
                     STORE "Feriado" TO peTt
                CASE f4230est="J"
                     STORE "Justicada" TO peTt
                CASE f4230est="V"
                     STORE "Vacaciones" TO peTt
                OTHERWISE
                     STORE SPACE(10) TO peTt, piNg
                     STORE 0 TO ptOl
                     STORE VAL(SUBSTR(f4230ent, 1, 2)+"."+SUBSTR(f4230ent,  ;
                           4, 2)) TO peNt
                     SELECT hoRarios
                     SEEK vcDd
                     DO CASE
                          CASE  .NOT. EOF() .AND. vdDd="L"
                               STORE f4221in1 TO piNg
                               STORE f4221to1 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="M"
                               STORE f4221in2 TO piNg
                               STORE f4221to2 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="I"
                               STORE f4221in3 TO piNg
                               STORE f4221to3 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="J"
                               STORE f4221in4 TO piNg
                               STORE f4221to4 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="V"
                               STORE f4221in5 TO piNg
                               STORE f4221to5 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="S"
                               STORE f4221in6 TO piNg
                               STORE f4221to6 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="D"
                               STORE f4221in7 TO piNg
                               STORE f4221to7 TO ptOl
                          CASE EOF()
                               SELECT hoR_area
                               SEEK vaRr
                               DO CASE
                                    CASE  .NOT. EOF() .AND. vdDd="L"
                                         STORE f4220in1 TO piNg
                                         STORE f4220to1 TO ptOl
                                    CASE  .NOT. EOF() .AND. vdDd="M"
                                         STORE f4220in2 TO piNg
                                         STORE f4220to2 TO ptOl
                                    CASE  .NOT. EOF() .AND. vdDd="I"
                                         STORE f4220in3 TO piNg
                                         STORE f4220to3 TO ptOl
                                    CASE  .NOT. EOF() .AND. vdDd="J"
                                         STORE f4220in4 TO piNg
                                         STORE f4220to4 TO ptOl
                                    CASE  .NOT. EOF() .AND. vdDd="V"
                                         STORE f4220in5 TO piNg
                                         STORE f4220to5 TO ptOl
                                    CASE  .NOT. EOF() .AND. vdDd="S"
                                         STORE f4220in6 TO piNg
                                         STORE f4220to6 TO ptOl
                                    CASE  .NOT. EOF() .AND. vdDd="D"
                                         STORE f4220in7 TO piNg
                                         STORE f4220to7 TO ptOl
                               ENDCASE
                     ENDCASE
                     STORE VAL(SUBSTR(piNg, 1, 2)+"."+SUBSTR(piNg, 4, 2))  ;
                           TO piNg
                     IF piNg=0 .AND. peNt>piNg .AND. peNt-piNg>ptOl/100
                          STORE "Tardanza" TO peTt
                     ENDIF
                     SELECT maRcaciones
           ENDCASE
           STORE f4230ent TO peNt
           STORE f4230sal TO psAl
           STORE f4230rin TO prIn
           STORE f4230rfi TO prFi
           SELECT tmP_excel
           APPEND BLANK
           IF pcOd="S"
                REPLACE coDigo WITH xcOd
                REPLACE esT WITH xeSt
                REPLACE noMbre WITH xnOm
                REPLACE caRgo WITH xnCa
                REPLACE arEa WITH xnAr
           ENDIF
           REPLACE diA WITH pdIa
           REPLACE feCha WITH vfEm
           REPLACE inGreso WITH peNt
           REPLACE saLida WITH psAl
           REPLACE inIref WITH prIn
           REPLACE fiNref WITH prFi
           REPLACE esTado WITH peTt
           SELECT maRcaciones
           SKIP
           STORE "N" TO pcOd
      ENDDO
      DO CASE
           CASE vsW1=01
                SELECT trAbajadores
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      SKIP
 ENDDO
 RELEASE pdIa, peTt, piNg, peNt, psAl, prIn, prFi, pcOd
ENDPROC
*
PROCEDURE Clp_4230b
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_4230b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_4200b IN PKC4200B WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_4200b IN PKC4200B WITH "F", "v"
           DO diS_4230b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
 STORE (mwFi/2)-12 TO pfIl
 STORE (mwCo/2)-38 TO pcOl
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, voPc, voP1
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE "0000" TO dcOd
 STORE "ZZZZ" TO hcOd
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFI2", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 @pFIL+09.7,pCOL+06 Say "Desde Pagina:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+11.4,pCOL+06 Say "Hasta Pagina:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+09.7,pCOL+39 Say "Desde Código:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+11.4,pCOL+39 Say "Hasta Código:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+13.6,pCOL+06 Say "Imprime:"              Font "&mLetRom",11 Style "BQ"
 @pFIL+13.6,pCOL+39 Say "Imprime:"              Font "&mLetRom",11 Style "BQ"
 @pFIL+19.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+15 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.2,pCOL+21 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+5, pcOl+19 TO pfIl+8.7, pcOl+51 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+21 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+5,pCOL+21 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+13.8,pCOL+18.2 Get vOPC Font "&mLetAri",9 Style "NQ" Size 1,38,.2 Default vOPC Function "*RVT Completo;Ingresos/Salidas;Solo Refrigerios"
      @pFIL+13.8,pCOL+52.5 Get vOP1 Font "&mLetAri",9 Style "NQ" Size 1,38,.2 Default vOP1 Function "*RVT Interno;SUNAFIL"
      @pFIL+09.8,pCOL+25.4 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.4,pCOL+25.4 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+09.8,pCOL+60.0 Get dCOD Font "&mLetAri",9 Style "NQ" Size 1,6 Color ,&mColBlZ
      @pFIL+11.4,pCOL+60.0 Get hCOD Font "&mLetAri",9 Style "NQ" Size 1,6 Color ,&mColBlZ
      @pFIL+23.4,pCOL+12.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                DO CASE
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=01
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          STORE 0 TO mvIs
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE 0 TO mvIs
                STORE k_Esc TO mkEy
                EXIT
           CASE poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 DO coLbln
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 IF voP1=2
      STORE 1 TO voPc
 ENDIF
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_4230b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Trabajadores en el"
 @ pfIl+01, 02 SAY "Orden que se ha elegido, con sus marcaciones."
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
 @ pfIl+11, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+12, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+13, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+14, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+15, 08 SAY "HOME" STYLE "BT"
 @ pfIl+16, 08 SAY "END" STYLE "BT"
 @ pfIl+17, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+18, 08 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 28 SAY "Pasar datos a Excel"
 @ pfIl+10, 28 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+11, 28 SAY "Línea inferior"
 @ pfIl+12, 28 SAY "Línea superior"
 @ pfIl+13, 28 SAY "Página siguiente"
 @ pfIl+14, 28 SAY "Página anterior"
 @ pfIl+15, 28 SAY "Primera línea"
 @ pfIl+16, 28 SAY "Última línea"
 @ pfIl+17, 28 SAY "Imprime LISTADO"
 @ pfIl+18, 28 SAY "Ver detalle de trabajador"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
