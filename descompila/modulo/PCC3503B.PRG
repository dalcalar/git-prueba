 = INKEY(0.01)
 SELECT teMporal
 DO orD_3502b IN PCC3502B WITH "3503"
 IF LEN(ALLTRIM(itIt))=0
      GOTO TOP
      DO paN_3503b
      DO muE_3502b IN PCC3502B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3502b IN PCC3502B WITH "v", "3503"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO seE_3502b IN PCC3502B WITH "v", "3503"
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3502b IN PCC3502B WITH "F", "v"
      ENDIF
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_3502b IN PCC3502B WITH "i", "3503"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1tit=vtIt .AND. ftM1ven=vvEn
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3502b IN PCC3502B WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3502b IN PCC3502B WITH "v", "3503"
 IF EOF()
      SET NEAR ON
      DO seE_3502b IN PCC3502B WITH "i", "3503"
      SET NEAR OFF
      DO paN_3503b
      STORE ifIl TO vfIl
      DO muE_3502b IN PCC3502B WITH "i", "v"
      DO seE_3502b IN PCC3502B WITH "v", "3503"
 ENDIF
 DO diS_3502b IN PCC3502B WITH "R", "3503"
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                DO viR_000
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3503b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3502b IN PCC3502B WITH "3503"
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3502b IN PCC3502B WITH "N", "3503"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3502b IN PCC3502B WITH "N", "3503"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3502b IN PCC3502B WITH "3503"
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3503b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                SELECT teMporal
                IF vsW7=1
                     STORE 2 TO vsW7
                     SET ORDER TO FTM1NVE
                ELSE
                     STORE 1 TO vsW7
                     SET ORDER TO FTM1NTT
                ENDIF
                DO p01_3502a IN PCC3502A WITH "3503"
                DO caM_3503b
                STORE 99 TO mkEy
           CASE mkEy=k_F8
                DO xlS_3502b IN PCC3502B WITH "3503"
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3503"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3502b IN PCC3502B WITH "3503"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3503"
                DO diS_3502b IN PCC3502B WITH "R", "3503"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3502b IN PCC3502B WITH "3503"
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE SPACE(01) TO veSt
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3503"
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                STORE SPACE(01) TO veSt
                STORE 99 TO mkEy
                DO pcC3502c WITH "3503"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                STORE SPACE(01) TO veSt
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3503"
           CASE (mkEy=k_Right .OR. mkEy=k_Left) .AND. vuLt>1
                DO CASE
                     CASE mkEy=k_Right .AND. vsW0=vuLt
                          STORE 1 TO vsW0
                     CASE mkEy=k_Right
                          STORE vsW0+1 TO vsW0
                     CASE mkEy=k_Left .AND. vsW0=1
                          STORE vuLt TO vsW0
                     CASE mkEy=k_Left
                          STORE vsW0-1 TO vsW0
                ENDCASE
                SELECT teMporal
                DO caM_3503b
                STORE 99 TO mkEy
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1tit+ftM1ven=itIt+ivEn .AND. vtIt+vvEn=itIt+ivEn
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtIt+vvEn=itIt+ivEn
                                    DO paN_3503b
                               OTHERWISE
                                    DO seE_3502b IN PCC3502B WITH "v", "3503"
                                    DO diS_3502b IN PCC3502B WITH "N", "3503"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3503"
                          DO diS_3502b IN PCC3502B WITH "R", "3503"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1tit+ftM1ven=utIt+uvEn .AND. vtIt+vvEn=utIt+uvEn
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtIt+vvEn=utIt+uvEn
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3503b
                               OTHERWISE
                                    DO seE_3502b IN PCC3502B WITH "v", "3503"
                                    DO diS_3502b IN PCC3502B WITH "N", "3503"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "u", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3503"
                          DO diS_3502b IN PCC3502B WITH "R", "3503"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3502b IN PCC3502B WITH "v", "3503"
                          DO diS_3502b IN PCC3502B WITH "N", "3503"
                          SKIP
                          IF vtIt+vvEn=utIt+uvEn
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3502a IN PCC3502A WITH ifIl, ffIl+1,  ;
                                  "3503"
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               DO muE_3502b IN PCC3502B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3502b IN PCC3502B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3502b IN PCC3502B WITH "v", "3503"
                          DO diS_3502b IN PCC3502B WITH "R", "3503"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3502b IN PCC3502B WITH "v", "3503"
                          DO diS_3502b IN PCC3502B WITH "N", "3503"
                          SKIP -1
                          IF vtIt+vvEn=itIt+ivEn
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3502a IN PCC3502A WITH ifIl, ffIl+1,  ;
                                  "3503"
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               DO muE_3502b IN PCC3502B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3502b IN PCC3502B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3502b IN PCC3502B WITH "v", "3503"
                          DO diS_3502b IN PCC3502B WITH "R", "3503"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3502b IN PCC3502B WITH "u", "3503"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3503b
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3503"
                          DO diS_3502b IN PCC3502B WITH "R", "3503"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3502b IN PCC3502B WITH "i", "3503"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3503b
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3503"
                          DO diS_3502b IN PCC3502B WITH "R", "3503"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3502b IN PCC3502B WITH "v", "3503"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3503b
 DO pn1_3503b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3503b
 DO pn1_3503b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3503b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3502b IN PCC3502B WITH "F", "i"
 DO muE_3502b IN PCC3502B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. ftM1tit+ftM1ven=xtIt+xvEn
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3502b IN PCC3502B WITH "N", "3503"
      ENDCASE
      DO muE_3502b IN PCC3502B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_3502a IN PCC3502A WITH ufIl+1, ffIl+1, "3503"
 ENDIF
ENDPROC
*
PROCEDURE Res_3503b
 SET READBORDER ON
 DO reS_3503a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 SELECT teMporal
 DO diS_3502b IN PCC3502B WITH "R", "3503"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
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
PROCEDURE Cam_3503b
 DO tiT_3502a IN PCC3502A
 DO toT_3502a IN PCC3502A
 STORE 00 TO cfIl
 DO muE_3502b IN PCC3502B WITH "v", "x"
 DO seE_3502b IN PCC3502B WITH "i", "3503"
 DO pa1_3503b
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_3502b IN PCC3502B WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_3502b IN PCC3502B WITH "x", "v"
 ENDIF
 DO seE_3502b IN PCC3502B WITH "v", "3503"
 DO diS_3502b IN PCC3502B WITH "R", "3503"
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
 STORE 99 TO mkEy
 DIMENSION plIs(2, 2)
 IF APRINTERS(plIs)=0
      STORE "No hay Impresoras instaladas..." TO mmSj
      STORE k_Esc TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE (mwFi/2)-12 TO pfIl
 STORE (mwCo/2)-36 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, voPn
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE SPACE(04) TO dtIt
 STORE "ZZZZ" TO htIt
 STORE SPACE(02) TO dvEn
 STORE "ZZ" TO hvEn
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
 @pFIL+07.3,pCOL+06 Say "Desde"          Font "&mLetAri",09 Style "BT"
 @pFIL+09.0,pCOL+06 Say "Hasta"          Font "&mLetAri",09 Style "BT"
 @pFIL+07.2,pCOL+15 Say ":"              Font "&mLetAri",10 Style "BT"
 @pFIL+08.9,pCOL+15 Say ":"              Font "&mLetAri",10 Style "BT"
 @pFIL+07.3,pCOL+17 Say "Cód.de Titular" Font "&mLetAri",10 Style "NT"
 @pFIL+09.0,pCOL+17 Say "Cód.de Titular" Font "&mLetAri",10 Style "NT"
 @pFIL+07.3,pCOL+46 Say "Vendedor"       Font "&mLetAri",10 Style "NT"
 @pFIL+09.0,pCOL+46 Say "Vendedor"       Font "&mLetAri",10 Style "NT"
 @pFIL+11.0,pCOL+06 Say "Desde"          Font "&mLetAri",09 Style "BT"
 @pFIL+12.5,pCOL+06 Say "Hasta"          Font "&mLetAri",09 Style "BT"
 @pFIL+10.9,pCOL+15 Say ":"              Font "&mLetAri",10 Style "BT"
 @pFIL+12.4,pCOL+15 Say ":"              Font "&mLetAri",10 Style "BT"
 @pFIL+11.0,pCOL+24 Say "Página"         Font "&mLetAri",10 Style "NT"
 @pFIL+12.5,pCOL+24 Say "Página"         Font "&mLetAri",10 Style "NT"
 @pFIL+19.0,pCOL+39 Say "No.Líneas:"     Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+49 Say mPAG             Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+17 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.2,pCOL+23 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_3
           @ pfIl+4.9, pcOl+12 TO pfIl+6.1, pcOl+62 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+13 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+5,pCOL+13 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RHT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+07.4,pCOL+36.0 Get dTIT Font "&mLetAri",9 Style "NQ" Pict "!!!!"                  Size 1,6.9 Color ,&mColBlN
      @pFIL+09.1,pCOL+36.0 Get hTIT Font "&mLetAri",9 Style "NQ" Pict "!!!!"                  Size 1,6.9 Color ,&mColBlN
      @pFIL+07.4,pCOL+59.3 Get dVEN Font "&mLetAri",9 Style "NQ" Pict "!!"                    Size 1,3.5 Color ,&mColBlN
      @pFIL+09.1,pCOL+59.3 Get hVEN Font "&mLetAri",9 Style "NQ" Pict "!!"                    Size 1,3.5 Color ,&mColBlN
      @pFIL+11.1,pCOL+33.9 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9   Color ,&mColBlN
      @pFIL+12.6,pCOL+33.9 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9   Color ,&mColBlN
      @pFIL+14.5,pCOL+16.0 Get vOPN Font "&mLetAri",9 Style "NQ" Default vOPN Function "*RVT Reporte;Detallado (solo Pendientes);Detallado (Cancelados y Pendientes)" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+23.4,pCOL+14.5 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                STORE UPPER(dtIt) TO dtIt
                STORE UPPER(htIt) TO htIt
                STORE UPPER(dvEn) TO dvEn
                STORE UPPER(hvEn) TO hvEn
                DO CASE
                     CASE dtIt>htIt
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE dvEn>hvEn
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE LEN(ALLTRIM(dtIt))=0 .AND. LEN(ALLTRIM(htIt))=0
                          STORE "Código de Titular vacío..." TO mmSj
                          DO poNmsj
                     CASE LEN(ALLTRIM(dvEn))=0 .AND. LEN(ALLTRIM(hvEn))=0
                          STORE "Código de Vendedor vacío..." TO mmSj
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
           CASE mkEy=k_Esc .OR. poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
