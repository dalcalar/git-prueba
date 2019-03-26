 = INKEY(0.01)
 SELECT teMporal
 SET ORDER TO FTM1NTI
 IF LEN(ALLTRIM(itIt))=0
      GOTO TOP
      DO paN_3556b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE itIt TO vtIt
      STORE inTi TO vnTi
      STORE ifIl TO vfIl
 ELSE
      SEEK UPPER(vnTi)+vtIt
      IF EOF()
           GOTO TOP
           SET NEAR ON
           SEEK UPPER(vnTi)+vtIt
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           STORE ftM1tit TO vtIt
           STORE ftM1nti TO vnTi
      ENDIF
      SEEK UPPER(inTi)+itIt
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1tit=vtIt
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=00
           STORE vtIt TO itIt
           STORE vnTi TO inTi
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 SEEK UPPER(vnTi)+vtIt
 IF EOF()
      SET NEAR ON
      SEEK UPPER(inTi)+itIt
      SET NEAR OFF
      DO paN_3556b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE itIt TO vtIt
      STORE inTi TO vnTi
      STORE ifIl TO vfIl
 ENDIF
 DO diS_3556b WITH "R"
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
           DO reS_3556b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3556b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3556b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3556b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3556b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3556b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_11
                vxLs = PUTFILE("Archivo Excel:", "XLS\CTAS.XLS", "XLS")
                RESTORE SCREEN FROM vpAn_11
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM1TIT,FTM1NTI,FTM1NUV,FTM1TOT,FTM1NUM,FTM1ACU Type XLS
                               DO xlS_0000a
                     ENDCASE
                ENDIF
                SELECT teMporal
                SEEK UPPER(vnTi)+vtIt
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3556b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                SEEK UPPER(vnTi)+vtIt
           CASE mkEy=k_Tab
                SAVE SCREEN TO vpAn_11
                DO pcC3556c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT teMporal
                SEEK UPPER(vnTi)+vtIt
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1tit=itIt .AND. vtIt=itIt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtIt=itIt
                                    DO paN_3556b
                               OTHERWISE
                                    SEEK UPPER(vnTi)+vtIt
                                    DO diS_3556b WITH "N"
                          ENDCASE
                          STORE itIt TO vtIt
                          STORE inTi TO vnTi
                          STORE ifIl TO vfIl
                          SEEK UPPER(vnTi)+vtIt
                          DO diS_3556b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1tit=utIt .AND. vtIt=utIt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtIt=utIt
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3556b
                               OTHERWISE
                                    SEEK UPPER(vnTi)+vtIt
                                    DO diS_3556b WITH "N"
                          ENDCASE
                          STORE utIt TO vtIt
                          STORE unTi TO vnTi
                          STORE ufIl TO vfIl
                          SEEK UPPER(vnTi)+vtIt
                          DO diS_3556b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK UPPER(vnTi)+vtIt
                          DO diS_3556b WITH "N"
                          SKIP
                          IF vtIt=utIt
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3556a WITH ifIl, ffIl+1
                               STORE ftM1tit TO utIt, vtIt
                               STORE ftM1nti TO unTi, vnTi
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE ftM1tit TO itIt
                               STORE ftM1nti TO inTi
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE ftM1tit TO vtIt
                               STORE ftM1nti TO vnTi
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          SEEK UPPER(vnTi)+vtIt
                          DO diS_3556b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK UPPER(vnTi)+vtIt
                          DO diS_3556b WITH "N"
                          SKIP -1
                          IF vtIt=itIt
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3556a WITH ifIl, ffIl+1
                               STORE ftM1tit TO itIt, vtIt
                               STORE ftM1nti TO inTi, vnTi
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    STORE ftM1tit TO utIt
                                    STORE ftM1nti TO unTi
                               ENDIF
                          ELSE
                               STORE ftM1tit TO vtIt
                               STORE ftM1nti TO vnTi
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          SEEK UPPER(vnTi)+vtIt
                          DO diS_3556b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK UPPER(unTi)+utIt
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3556b
                          STORE itIt TO vtIt
                          STORE inTi TO vnTi
                          STORE ifIl TO vfIl
                          SEEK UPPER(vnTi)+vtIt
                          DO diS_3556b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK UPPER(inTi)+itIt
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3556b
                          STORE itIt TO vtIt
                          STORE inTi TO vnTi
                          STORE ifIl TO vfIl
                          SEEK UPPER(vnTi)+vtIt
                          DO diS_3556b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK UPPER(vnTi)+vtIt
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3556b
 STORE ifIl TO vfIl, ufIl
 STORE ftM1tit TO itIt, utIt
 STORE ftM1nti TO inTi, unTi
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3556b WITH "N"
      STORE ftM1tit TO utIt
      STORE ftM1nti TO unTi
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3556a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3556b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+000.0 Say FTM1TIT         Font "&mLetAri",9 Style "NQ" Size 1,06
 @vFIL,mCO0+007.0 Say FTM1NTI         Font "&mLetAri",9 Style "NQ" Size 1,48.8 Pict "@S52"
 @vFIL,mCO0+056.7 Say FTM1NUV         Font "&mLetAri",9 Style "NQ" Pict "99"             Size 1,03.0
 @vFIL,mCO0+060.7 Say FTM1TOT         Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
 @vFIL,mCO0+081.3 Say FTM1INT         Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
 @vFIL,mCO0+101.9 Say FTM1TOT+FTM1INT Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
 @vFIL,mCO0+122.6 Say FTM1NUV         Font "&mLetAri",9 Style "NQ" Pict "99"             Size 1,03.0
 @vFIL,mCO0+126.6 Say FTM1ACU         Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
 @vFIL,mCO0+147.1 Say FTM1ACU/FTM1NUM Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
ENDPROC
*
PROCEDURE Res_3556b
 SET READBORDER ON
 DO reS_3556a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3556b WITH "R"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
ENDPROC
*
PROCEDURE Imp_3556b
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
 DO reP_3556b
 DO fpR_0000a
 STORE 00 TO meRr
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3556b
 PRIVATE ptAm
 DO coLbln
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE mvIs=0
           STORE 92 TO ptAm
           STORE 10 TO mcLn
      CASE mvIs=1
           STORE 92 TO ptAm
           STORE 10 TO mcLn
 ENDCASE
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3556b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN     Say FTM1TIT         Font "&mLetSwi",9 Style "NQ"
           @vLIN,mCLN+06  Say FTM1NTI         Font "&mLetSwi",9 Style "NQ" Size 1,35 Pict "@S38"
           @vLIN,mCLN+60  Say FTM1NUV         Font "&mLetSwi",9 Style "NQ" Size 1,05 Pict "99"
           @vLIN,mCLN+70  Say FTM1TOT+FTM1INT Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
           @vLIN,mCLN+90  Say FTM1NUM         Font "&mLetSwi",9 Style "NQ" Size 1,05 Pict "99"
           @vLIN,mCLN+100 Say FTM1ACU         Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
           @vLIN,mCLN+120 Say FTM1ACU/FTM1NUM Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.4 TO vlIn
      STORE ftM1tit TO ctIt
      SELECT tmP_detalle
      GOTO TOP
      SEEK ctIt
      IF  .NOT. EOF()
           IF vlIn>mpAg-3
                DO caB_3556b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN+72 Say "Pagos:" Font "&mLetSwi",9 Style "NQ"
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO WHILE  .NOT. EOF() .AND. ftM2tit=ctIt
                IF vlIn>mpAg-3
                     DO caB_3556b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+084.5 Say FTM2MES+"/"+FTM2ANO Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+100.0 Say FTM2ACU             Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
                ENDIF
                STORE vlIn+1.3 TO vlIn
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SKIP
           ENDDO
           STORE vlIn+0.6 TO vlIn
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3556b
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
      @vLIN,mCLN Say "Ventas y Cancelaciones Promedio: "+AllTrim(vNTC) Font "&mLetRom",14 Style "BQI"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde el: "+Dtoc(dFEM)+" hasta el "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN       Say "Titular"  Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+060.5 Say "#M"       Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+079.0 Say "Ventas"   Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+090.5 Say "#M"       Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+109.5 Say "Pagos"    Font "&mLetAri",9 Style "BQ"
      @vLIN,mCLN+125.0 Say "Promedio" Font "&mLetAri",9 Style "BQ"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2 TO vlIn
ENDPROC
*
PROCEDURE Clp_3556b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.6
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
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+3.60
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
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3556b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           SEEK UPPER(inTi)+itIt
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           STORE ftM1tit TO vtIt
           STORE ftM1nti TO vnTi
           DO diS_3556b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3556b
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
 @ 1.200, 02 SAY  ;
   "del Tipo elegido y por rango de fechas. Los datos que se muestran son"
 @ 2.200, 02 SAY  ;
   "las Ventas y los pagos realizados, estos últimos no son necesariamente"
 @ 3.200, 02 SAY "de esas ventas."
 @ 5.200, 02 SAY "Las teclas para movilizarse son:"
 @ 7.200, 31 SAY ":" STYLE "BT"
 @ 8.200, 31 SAY ":" STYLE "BT"
 @ 9.200, 31 SAY ":" STYLE "BT"
 @ 10.200, 31 SAY ":" STYLE "BT"
 @ 11.200, 31 SAY ":" STYLE "BT"
 @ 12.200, 31 SAY ":" STYLE "BT"
 @ 13.200, 31 SAY ":" STYLE "BT"
 @ 14.200, 31 SAY ":" STYLE "BT"
 @ 15.200, 31 SAY ":" STYLE "BT"
 @ 16.200, 31 SAY ":" STYLE "BT"
 @ 17.200, 31 SAY ":" STYLE "BT"
 @ 18.200, 31 SAY ":" STYLE "BT"
 @ 7.200, 12 SAY "ESC" STYLE "BT"
 @ 8.200, 12 SAY "F10" STYLE "BT"
 @ 9.200, 12 SAY "F1" STYLE "BT"
 @ 10.200, 12 SAY "F8" STYLE "BT"
 @ 11.200, 12 SAY "FLECHA ABAJO" STYLE "BT"
 @ 12.200, 12 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 13.200, 12 SAY "PAGE DOWN" STYLE "BT"
 @ 14.200, 12 SAY "PAGE UP" STYLE "BT"
 @ 15.200, 12 SAY "HOME" STYLE "BT"
 @ 16.200, 12 SAY "END" STYLE "BT"
 @ 17.200, 12 SAY "CTRL P" STYLE "BT"
 @ 18.200, 12 SAY "TAB" STYLE "BT"
 @ 7.200, 33 SAY "Regresar a Cabecera"
 @ 8.200, 33 SAY "Cerrar y regresar a Windows"
 @ 9.200, 33 SAY "Ayuda del Programa"
 @ 10.200, 33 SAY "Pasar Datos a Excel"
 @ 11.200, 33 SAY "Línea inferior"
 @ 12.200, 33 SAY "Línea superior"
 @ 13.200, 33 SAY "Página siguiente"
 @ 14.200, 33 SAY "Página anterior"
 @ 15.200, 33 SAY "Primera línea"
 @ 16.200, 33 SAY "Última línea"
 @ 17.200, 33 SAY "Imprimir Listado"
 @ 18.200, 33 SAY "Ver detalles x Meses"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
