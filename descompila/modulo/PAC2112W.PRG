 PARAMETER ppRg
 = INKEY(0.01)
 DO p00_2112w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seRies
 DO paN_2112w
 STORE ipDd TO vpDd
 STORE isCc TO vsCc
 STORE ifFt TO vfFt
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
 DO diS_2112w WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2112w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2112w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2112w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2112w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE f2112ped+f2112sec=ipDd+isCc .AND. vpDd+vsCc=ipDd+isCc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vpDd+vsCc=ipDd+isCc
                                    DO paN_2112w
                               OTHERWISE
                                    SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                                    DO diS_2112w WITH "N"
                          ENDCASE
                          STORE ipDd TO vpDd
                          STORE isCc TO vsCc
                          STORE ifFt TO vfFt
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                          DO diS_2112w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*"+"ZZZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2112ped+f2112sec=upDd+usCc .AND. vpDd+vsCc=upDd+usCc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vpDd+vsCc=upDd+usCc
                                    SKIP -INT(ffFt-ifFt)
                                    DO paN_2112w
                               OTHERWISE
                                    SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                                    DO diS_2112w WITH "N"
                          ENDCASE
                          STORE upDd TO vpDd
                          STORE usCc TO vsCc
                          STORE ufFt TO vfFt
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                          DO diS_2112w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                          DO diS_2112w WITH "N"
                          SKIP
                          IF vpDd+vsCc=upDd+usCc
                               DO coLsc7
                               DO suBe WITH ifFt, piCl, ffFt, puCl, 1
                               DO liN_2112w WITH ffFt, ffFt+1
                               STORE f2112ped TO upDd, vpDd
                               STORE f2112sec TO usCc, vsCc
                               STORE ufFt TO vfFt
                               SKIP -INT(ffFt-ifFt)
                               STORE f2112ped TO ipDd
                               STORE f2112sec TO isCc
                               SKIP INT(ffFt-ifFt)
                          ELSE
                               STORE f2112ped TO vpDd
                               STORE f2112sec TO vsCc
                               STORE vfFt+1 TO vfFt
                          ENDIF
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                          DO diS_2112w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                          DO diS_2112w WITH "N"
                          SKIP -1
                          IF vpDd+vsCc=ipDd+isCc
                               DO coLsc7
                               DO baJa WITH ifFt, piCl, ffFt, puCl, 1
                               DO liN_2112w WITH ifFt, ifFt+1
                               STORE f2112ped TO ipDd, vpDd
                               STORE f2112sec TO isCc, vsCc
                               STORE ifFt TO vfFt
                               IF ufFt<ffFt
                                    STORE ufFt+1 TO ufFt
                               ELSE
                                    SKIP INT(ffFt-ifFt)
                                    STORE f2112ped TO upDd
                                    STORE f2112sec TO usCc
                               ENDIF
                          ELSE
                               STORE f2112ped TO vpDd
                               STORE f2112sec TO vsCc
                               STORE vfFt-1 TO vfFt
                          ENDIF
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                          DO diS_2112w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(upDd)+usCc
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2112w
                          STORE ipDd TO vpDd
                          STORE isCc TO vsCc
                          STORE ifFt TO vfFt
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                          DO diS_2112w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ipDd)+isCc
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFt-ifFt)
                          IF BOF() .OR. ALLTRIM(f2112cod)+"*"<> ;
                             ALLTRIM(vcOd)+"*"
                               GOTO TOP
                               SEEK ALLTRIM(vcOd)+"*"
                          ENDIF
                          DO paN_2112w
                          STORE ipDd TO vpDd
                          STORE isCc TO vsCc
                          STORE ifFt TO vfFt
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
                          DO diS_2112w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2112w
 STORE ifFt TO vfFt, ufFt
 STORE f2112ped TO ipDd, upDd
 STORE f2112sec TO isCc, usCc
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2112cod)+"*"=ALLTRIM(vcOd)+"*"  ;
    .AND. vfFt<ffFt+1
      DO diS_2112w WITH "N"
      STORE f2112ped TO upDd
      STORE f2112sec TO usCc
      STORE vfFt TO ufFt
      STORE vfFt+1 TO vfFt
      SKIP
 ENDDO
 IF ufFt+1<=ffFt
      DO coLsc7
      @ ufFt+1, piCl CLEAR TO ffFt+1, puCl
      DO liN_2112w WITH ufFt, ffFt+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2112w
 PARAMETER ptIp
 PRIVATE peSt
 DO CASE
      CASE f2112est="V"
           STORE "Vendido  " TO peSt
      CASE f2112est="D"
           STORE "Dv.al Prv" TO peSt
      CASE f2112est="M"
           STORE "Rot/Vacio" TO peSt
      CASE f2112est="O"
           STORE "Salio" TO peSt
      OTHERWISE
           STORE "En Stock " TO peSt
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc7
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFT,pICL+00.2 Say F2112PED Font "&mLetAri",9 Style "NQ" Size 1,10.1 Pict "@S7"
 @vFFT,pICL+11.3 Say F2112SEC Font "&mLetAri",9 Style "NQ" Size 1,05.8 Pict "9999"
 @vFFT,pICL+18.1 Say F2112PLA Font "&mLetAri",9 Style "NQ" Size 1,15.7 Pict "99,999.9999"
 @vFFT,pICL+34.9 Say F2112PLO Font "&mLetAri",9 Style "NQ" Size 1,15.7 Pict "99,999.9999"
 @vFFT,pICL+51.8 Say F2112MOT Font "&mLetAri",9 Style "NQ" Size 1,18.8 Pict "@S15"
 DO CASE
      CASE ptIp="N" .AND. f2112est="S"
           DO coLscr
      CASE ptIp="R" .AND. f2112est="S"
           DO coLblr
 ENDCASE
 @vFFT,pICL+71.5 Say pEST Font "&mLetAri",9 Style "NQ" Size 1,12.6
ENDPROC
*
PROCEDURE Lin_2112w
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, piCl+10.7 TO pfIn, piCl+10.7
 @ piNi, piCl+17.5 TO pfIn, piCl+17.5
 @ piNi, piCl+34.3 TO pfIn, piCl+34.3
 @ piNi, piCl+51.1 TO pfIn, piCl+51.1
 @ piNi, piCl+70.9 TO pfIn, piCl+70.9
ENDPROC
*
PROCEDURE P00_2112w
 STORE vcL0+41.6 TO piCl
 STORE piCl+83.9 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 DO cuAdro WITH ifFt-1.8, piCl, ffFt+1, puCl+0.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifFt-1.7, piCl-0.1 TO ifFt-0.2, puCl+0.4 PATTERN 1
 DO liN_2112w WITH ifFt-1.7, ffFt+1.2
 @iFFT-1.4,pICL+01.5 Say "Pedido"   Font "&mLetAri",9 Style "BT"
 @iFFT-1.4,pICL+12.3 Say "Sec"      Font "&mLetAri",9 Style "BT"
 @iFFT-1.4,pICL+20.1 Say "Cantidad" Font "&mLetAri",9 Style "BT"
 @iFFT-1.4,pICL+36.9 Say "Cant.Ori" Font "&mLetAri",9 Style "BT"
 @iFFT-1.4,pICL+57.8 Say "Motivo"   Font "&mLetAri",9 Style "BT"
 @iFFT-1.4,pICL+73.5 Say "Estado"   Font "&mLetAri",9 Style "BT"
ENDPROC
*
PROCEDURE Rs1_2112w
 DO CASE
      CASE ppRg="PUX9997A"
           DO p00_9997a WITH "1"
           SAVE SCREEN TO vpAn_11
      CASE ppRg="PVC1202B"
           DO rs1_1202b
           SAVE SCREEN TO vpAn_13
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p00_2112w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seRies
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ipDd)+isCc
 DO paN_2112w
 STORE ipDd TO vpDd
 STORE isCc TO vsCc
 STORE ifFt TO vfFt
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpDd)+vsCc
 DO diS_2112w WITH "R"
ENDPROC
*
PROCEDURE Clp_2112w
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
      CASE mfIl>=vfFt-0.007 .AND. mfIl<=vfFt+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl+0.4
           STORE 99 TO mkEy
      CASE mfIl>=ifFt-0.007 .AND. mfIl<=ufFt+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl+0.4
           DO diS_2112w WITH "N"
           STORE ifFt+INT(mfIl-ifFt) TO vfFt
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ipDd)+isCc
           SKIP INT(mfIl-ifFt)
           STORE 99 TO mkEy
           STORE f2112ped TO vpDd
           STORE f2112sec TO vsCc
           DO diS_2112w WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2112w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra los números de serie del ítem. "
 @ pfIl+01, 02 SAY  ;
   "Las líneas fueran más de las que se pueden visualizar,  puede verlas por"
 @ pfIl+02, 02 SAY  ;
   "páginas.                                                                "
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
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 11 SAY "HOME" STYLE "BT"
 @ pfIl+14, 11 SAY "END" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Detalle"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Línea inferior"
 @ pfIl+10, 31 SAY "Línea superior"
 @ pfIl+11, 31 SAY "Página siguiente"
 @ pfIl+12, 31 SAY "Página anterior"
 @ pfIl+13, 31 SAY "Primera línea"
 @ pfIl+14, 31 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
