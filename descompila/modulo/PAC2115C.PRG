 = INKEY(0.01)
 DO p00_2115c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+vtIp
 DO paN_2115c
 STORE ifFs TO vfFs
 DO muE_2115c WITH "i", "v"
 DO seE_2115c WITH "v"
 DO diS_2115c WITH "R"
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
           DO reS_2115c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2115c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2115c WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2115c WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2115c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2115c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"+vtIp
                DO CASE
                     CASE ftM2ano+ftM2mes=iaNo+imEs .AND. vaNo+vmEs=iaNo+imEs
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs=iaNo+imEs
                                    DO paN_2115c
                               OTHERWISE
                                    DO seE_2115c WITH "v"
                                    DO diS_2115c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_2115c WITH "i", "v"
                          DO seE_2115c WITH "v"
                          DO diS_2115c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*"+vtIp+"ZZZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(ftM2cod)+"*"+ftM2tip<>ALLTRIM(vcOd)+ ;
                   "*"+vtIp
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ftM2ano+ftM2mes=uaNo+umEs .AND. vaNo+vmEs=uaNo+umEs
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs=uaNo+umEs
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2115c
                               OTHERWISE
                                    DO seE_2115c WITH "v"
                                    DO diS_2115c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_2115c WITH "u", "v"
                          DO seE_2115c WITH "v"
                          DO diS_2115c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM2cod)+"*"+ftM2tip<> ;
                          ALLTRIM(vcOd)+"*"+vtIp
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2115c WITH "v"
                          DO diS_2115c WITH "N"
                          SKIP
                          IF vaNo+vmEs=uaNo+umEs
                               DO coLsc3
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_2115c WITH ifFs+1, ffFs
                               DO muE_2115c WITH "F", "v"
                               DO muE_2115c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_2115c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_2115c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_2115c WITH "v"
                          DO diS_2115c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM2cod)+"*"+ftM2tip<> ;
                          ALLTRIM(vcOd)+"*"+vtIp
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2115c WITH "v"
                          DO diS_2115c WITH "N"
                          SKIP -1
                          IF vaNo+vmEs=iaNo+imEs
                               DO coLsc3
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_2115c WITH ifFs+1, ffFs
                               DO muE_2115c WITH "F", "i"
                               DO muE_2115c WITH "F", "v"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_2115c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2115c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_2115c WITH "v"
                          DO diS_2115c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2115c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM2cod)+"*"+ftM2tip<> ;
                          ALLTRIM(vcOd)+"*"+vtIp
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2115c
                          STORE ifFs TO vfFs
                          DO muE_2115c WITH "i", "v"
                          DO seE_2115c WITH "v"
                          DO diS_2115c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2115c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM2cod)+"*"+ftM2tip<> ;
                          ALLTRIM(vcOd)+"*"+vtIp
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ALLTRIM(ftM2cod)+"*"+ftM2tip<> ;
                             ALLTRIM(vcOd)+"*"+vtIp
                               GOTO TOP
                               SEEK ALLTRIM(vcOd)+"*"+vtIp
                          ENDIF
                          DO paN_2115c
                          STORE ifFs TO vfFs
                          DO muE_2115c WITH "i", "v"
                          DO seE_2115c WITH "v"
                          DO diS_2115c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
           DO seE_2115c WITH "v"
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2115c
 STORE ifFs TO vfFs, ufFs
 DO muE_2115c WITH "F", "i"
 DO muE_2115c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM2cod)+"*"+ftM2tip=ALLTRIM(vcOd)+ ;
    "*"+vtIp .AND. vfFs<ffFs+1
      DO diS_2115c WITH "N"
      DO muE_2115c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coLsc3
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_2115c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2115c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,iCL1      Say FTM2ANO Font "&mLetAri",9 Style "NQ" Size 1,05.6
 @vFFS,iCL1+07.0 Say FTM2MES Font "&mLetAri",9 Style "NQ" Size 1,03
 @vFFS,iCL1+11.4 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,49   Pict "@S51"
 @vFFS,iCL1+61.7 Say FTM2CAN Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "9999,999.9999"
ENDPROC
*
PROCEDURE Res_2115c
 DO muE_2115c WITH "v", "c"
 DO reS_2115b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2115c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 SELECT teMporal_2
 GOTO TOP
 DO seE_2115c WITH "i"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM2cod)+"*"+ftM2tip=ALLTRIM(vcOd)+ ;
    "*"+vtIp .AND. vfFs<ffFs+1
      IF ftM2ano+ftM2mes=vaNo+vmEs
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_2115c WITH "v", "c"
      DO muE_2115c WITH "v", "i"
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_2115c WITH "i"
 DO paN_2115c
 STORE cfFs TO vfFs
 DO muE_2115c WITH "c", "v"
 DO seE_2115c WITH "v"
 DO diS_2115c WITH "R"
ENDPROC
*
PROCEDURE Lin_2115c
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, icL1+06.1 TO pfIn, icL1+06.1
 @ piNi, icL1+10.6 TO pfIn, icL1+10.6
 @ piNi, icL1+61.0 TO pfIn, icL1+61.0
ENDPROC
*
PROCEDURE P00_2115c
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFs-1.5, icL1-0.1, ffFs+1.1, ucL1+0.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @iFFS-1.4,iCL1+00.4 Say "Año"                    Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,iCL1+07.0 Say "Me"                     Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,iCL1+11.4 Say "Cliente/Proveedor/Tipo" Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,iCL1+70.7 Say "Cantidad"               Font "&mLetAri",9 Style "BQ"
 @ ifFs-0.3, icL1-0.1 TO ifFs-0.3, ucL1+0.2
 DO liN_2115c WITH ifFs-1.5, ffFs+1.3
ENDPROC
*
PROCEDURE See_2115c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK ALLTRIM(vcOd)+"*"+vtIp+vaNo+vmEs
      CASE psEe="i"
           SEEK ALLTRIM(vcOd)+"*"+vtIp+iaNo+imEs
      CASE psEe="u"
           SEEK ALLTRIM(vcOd)+"*"+vtIp+uaNo+umEs
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2115c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM2mes TO imEs
           STORE ftM2ano TO iaNo
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM2mes TO umEs
           STORE ftM2ano TO uaNo
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM2mes TO vmEs
           STORE ftM2ano TO vaNo
      CASE pmU1="v" .AND. pmU2="i"
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
      CASE pmU1="v" .AND. pmU2="c"
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
      CASE pmU1="c" .AND. pmU2="v"
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
      CASE pmU1="u" .AND. pmU2="v"
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
      CASE pmU1="i" .AND. pmU2="v"
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2115c
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=ucL1
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=ucL1
           DO diS_2115c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_2115c WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_2115c WITH "F", "v"
           DO diS_2115c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2115c
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra un resumen x Mes y Año de"
 @ pfIl+01, 02 SAY "cada Tipo de Movimiento."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 27 SAY ":" STYLE "BT"
 @ pfIl+06, 27 SAY ":" STYLE "BT"
 @ pfIl+07, 27 SAY ":" STYLE "BT"
 @ pfIl+08, 27 SAY ":" STYLE "BT"
 @ pfIl+09, 27 SAY ":" STYLE "BT"
 @ pfIl+10, 27 SAY ":" STYLE "BT"
 @ pfIl+11, 27 SAY ":" STYLE "BT"
 @ pfIl+12, 27 SAY ":" STYLE "BT"
 @ pfIl+13, 27 SAY ":" STYLE "BT"
 @ pfIl+05, 08 SAY "ESC" STYLE "BT"
 @ pfIl+06, 08 SAY "F10" STYLE "BT"
 @ pfIl+07, 08 SAY "F1" STYLE "BT"
 @ pfIl+08, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+11, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+12, 08 SAY "HOME" STYLE "BT"
 @ pfIl+13, 08 SAY "END" STYLE "BT"
 @ pfIl+05, 29 SAY "Regresar a Cabecera"
 @ pfIl+06, 29 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 29 SAY "Ayuda del Programa"
 @ pfIl+08, 29 SAY "Línea inferior"
 @ pfIl+09, 29 SAY "Línea superior"
 @ pfIl+10, 29 SAY "Página siguiente"
 @ pfIl+11, 29 SAY "Página anterior"
 @ pfIl+12, 29 SAY "Primera línea"
 @ pfIl+13, 29 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
