 = INKEY(0.01)
 SELECT teMporal_3
 SET ORDER TO FTM3PPE
 GOTO TOP
 SEEK ALLTRIM(vpRv)+"*"
 DO paN_2431h
 STORE 999 TO mkEy
 STORE ipEd TO vpEd
 STORE ifFs TO vfFs
 SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
 DO diS_2431h WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2431h
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2431h
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                DO diS_2431h WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2431h
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2431h
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_13
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Cpras_"+vFEC+"_Prv."+AllTrim(vPRV)+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_13
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM3PED,FTM3TO1,FTM3TO2 Type XLS for AllTrim(FTM3PRV)+"*" = AllTrim(vPRV)+"*"
                     ENDCASE
                ENDIF
                SELECT teMporal_3
                SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2431h
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                GOTO TOP
                SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vpRv)+"*"
                DO CASE
                     CASE ALLTRIM(vpEd)+"*"=ALLTRIM(ftM3ped)+"*" .AND.  ;
                          ALLTRIM(vpEd)+"*"=ALLTRIM(ipEd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vpEd)+"*"=ALLTRIM(ipEd)+"*"
                                    DO paN_2431h
                               OTHERWISE
                                    SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                                    DO diS_2431h WITH "N"
                          ENDCASE
                          STORE ipEd TO vpEd
                          STORE ifFs TO vfFs
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                          DO diS_2431h WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vpRv)+"*ZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(ftM3prv)+"*"<>ALLTRIM(vpRv)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(vpEd)+"*"=ALLTRIM(ftM3ped)+"*" .AND.  ;
                          ALLTRIM(vpEd)+"*"=ALLTRIM(upEd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vpEd)+"*"=ALLTRIM(upEd)+"*"
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2431h
                               OTHERWISE
                                    SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                                    DO diS_2431h WITH "N"
                          ENDCASE
                          STORE upEd TO vpEd
                          STORE ufFs TO vfFs
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                          DO diS_2431h WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM3prv)+"*"<>ALLTRIM(vpRv)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                          DO diS_2431h WITH "N"
                          SKIP
                          IF ALLTRIM(vpEd)+"*"=ALLTRIM(upEd)+"*"
                               DO coL_beige
                               DO suBe WITH ifFs, piC4, ffFs, puC4-1, 1
                               DO liN_2431h WITH ifFs, ffFs+1
                               STORE ftM3ped TO upEd, vpEd
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE ftM3ped TO ipEd
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE ftM3ped TO vpEd
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                          DO diS_2431h WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM3prv)+"*"<>ALLTRIM(vpRv)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                          DO diS_2431h WITH "N"
                          SKIP -1
                          IF ALLTRIM(vpEd)+"*"=ALLTRIM(ipEd)+"*"
                               DO coL_beige
                               DO baJa WITH ifFs, piC4, ffFs, puC4-1, 1
                               DO liN_2431h WITH ifFs, ffFs+1
                               STORE ftM3ped TO ipEd, vpEd
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE ftM3ped TO upEd
                               ENDIF
                          ELSE
                               STORE ftM3ped TO vpEd
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                          DO diS_2431h WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(upEd)+"*"
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM3prv)+"*"<>ALLTRIM(vpRv)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2431h
                          STORE ipEd TO vpEd
                          STORE ifFs TO vfFs
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                          DO diS_2431h WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(ipEd)+"*"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM3prv)+"*"<>ALLTRIM(vpRv)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ALLTRIM(ftM3prv)+"*"<>ALLTRIM(vpRv)+"*"
                               GOTO TOP
                               SEEK ALLTRIM(vpRv)+"*"
                          ENDIF
                          DO paN_2431h
                          STORE ipEd TO vpEd
                          STORE ifFs TO vfFs
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                          DO diS_2431h WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2431h
 STORE ifFs TO vfFs, ufFs
 STORE ftM3ped TO ipEd, upEd
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3prv)+"*"=ALLTRIM(vpRv)+"*" .AND.  ;
    vfFs<ffFs+1
      DO diS_2431h WITH "N"
      STORE ftM3ped TO upEd
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_beige
      @ ufFs+1, piC4 CLEAR TO ffFs+1, puC4
      DO liN_2431h WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2431h
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,pIC4+00.2 Say FTM3PED Font "&mLetAri",9 Style "NQ" Size 1,12
 DO CASE
      CASE ptIp="N" .AND. ftM3to1<0
           DO coL_beiro
      CASE ptIp="R" .AND. ftM3to1<0
           DO coLblr
 ENDCASE
 @vFFS,pIC4+13.1 Say FTM3TO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 DO CASE
      CASE ptIp="N" .AND. ftM3to2<0
           DO coL_beiro
      CASE ptIp="R" .AND. ftM3to2<0
           DO coLblr
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,pIC4+33.9 Say FTM3TO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
ENDPROC
*
PROCEDURE Lin_2431h
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piC4+12.5 TO pfIn, piC4+12.5
 @ piNi, piC4+33.3 TO pfIn, piC4+33.3
ENDPROC
*
PROCEDURE Imp_2431h
 STORE 0 TO mvIs
 DO ipR_0001a WITH "VE"
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
 DO ipR_0001a WITH "VE"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO reP_2431h
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2431h
 PRIVATE ptAm, psW0
 STORE 60 TO ptAm
 STORE 15 TO mcLn
 SELECT teMporal_3
 GOTO TOP
 SEEK ALLTRIM(vpRv)+"*"
 STORE 0 TO vlIn, vpAg
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3prv)+"*"=ALLTRIM(vpRv)+"*"
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4
           DO caB_2431h
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+00.0 Say FTM3PED Font "&mLetAri",9  Style "NQ" Size 1,15   Pict "@S10"
                     @vLIN,mCLN+57.5 Say FTM3TO1 Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     @vLIN,mCLN+77.8 Say FTM3TO2 Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+00.0 Say FTM3PED Font "&mLetRom",10 Style "NQ" Size 1,15   Pict "@S10"
                     @vLIN,mCLN+57.5 Say FTM3TO1 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     @vLIN,mCLN+77.8 Say FTM3TO2 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
      IF EOF() .OR. ALLTRIM(ftM3prv)+"*"<>ALLTRIM(vpRv)+"*"
           STORE vlIn+0.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+57.5 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+78.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                     CASE mpRt="2"
                          @vLIN,mCLN+57.5 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+78.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+33   Say "TOTAL PROVEEDOR" Font "&mLetAri",9  Style "BQ"
                @vLIN,mCLN+57.5 Say tTT1              Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+78.0 Say tTT2              Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+33   Say "TOTAL PROVEEDOR" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+57.5 Say tTT1              Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+78.0 Say tTT2              Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2431h
 IF vpAg>=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
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
      STORE "del "+DTOC(dfEm)+" al "+DTOC(hfEm) TO vfEc
      @vLIN,mCLN Say "Compras x Proveedor/Pedido "+vFEC Font "&mLetRom",13 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Proveedor: "+AllTrim(vPRV)+" - "+vNOM Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde Pedido: "+AllTrim(dPED)+" hasta "+AllTrim(hPED) Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN      Say "PEDIDO"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+63.4 Say "TOTAL S/." Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+82.2 Say "TOTAL US$" Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN      Say "PEDIDO"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+63.4 Say "TOTAL S/." Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+82.2 Say "TOTAL US$" Font "&mLetRom",9 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
ENDPROC
*
PROCEDURE Res_2431h
 DO reS_2430h
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_3
 SET ORDER TO FTM3PPE
 SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(ipEd)+"*"
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3prv)+"*"=ALLTRIM(vpRv)+"*" .AND.  ;
    vfFs<ffFs+1
      IF ALLTRIM(vpEd)+"*"=ALLTRIM(ftM3ped)+"*"
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE ipEd TO vpEd
      STORE ifFs TO vfFs
 ENDIF
 SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
 DO diS_2431h WITH "R"
ENDPROC
*
PROCEDURE Clp_2431h
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=piC4 .AND.  ;
           mcCc<=puC4
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=piC4 .AND.  ;
           mcCc<=puC4
           DO diS_2431h WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(ipEd)+"*"
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           STORE ftM3ped TO vpEd
           DO diS_2431h WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2431h
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Pedidos con Montos"
 @ pfIl+01, 02 SAY  ;
   "en Soles y Dólares, en el rango de fechas seleccionado y Proveedor es-"
 @ pfIl+02, 02 SAY "cogido."
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
 @ pfIl+16, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "F8" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+12, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+13, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+14, 11 SAY "HOME" STYLE "BT"
 @ pfIl+15, 11 SAY "END" STYLE "BT"
 @ pfIl+16, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Pasar Datos a Excel"
 @ pfIl+10, 31 SAY "Línea inferior"
 @ pfIl+11, 31 SAY "Línea superior"
 @ pfIl+12, 31 SAY "Página siguiente"
 @ pfIl+13, 31 SAY "Página anterior"
 @ pfIl+14, 31 SAY "Primera línea"
 @ pfIl+15, 31 SAY "Última línea"
 @ pfIl+16, 31 SAY "Imprimir Reporte"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
