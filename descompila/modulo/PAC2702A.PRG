 = INKEY(0.01)
 SELECT seR_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 STORE 00 TO tpLa
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc+ALLTRIM(f2703cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      STORE tpLa+f2703pla TO tpLa
      SKIP
 ENDDO
 DO p00_2702a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seR_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO paN_2702a
 STORE ipEd TO vpEd
 STORE isEc TO vsEc
 STORE ifFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
 DO diS_2702a WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2702a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2702a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2702a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2702a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE ALLTRIM(f2703ped)+f2703sec=ALLTRIM(ipEd)+isEc  ;
                          .AND. ALLTRIM(vpEd)+vsEc=ALLTRIM(ipEd)+isEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vpEd)+vsEc=ALLTRIM(ipEd)+isEc
                                    DO paN_2702a
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     ALLTRIM(vpEd)+vsEc
                                    DO diS_2702a WITH "N"
                          ENDCASE
                          STORE ipEd TO vpEd
                          STORE isEc TO vsEc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          DO diS_2702a WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+"ZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                   ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f2703ped)+f2703sec=ALLTRIM(upEd)+usEc  ;
                          .AND. ALLTRIM(vpEd)+vsEc=ALLTRIM(upEd)+usEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vpEd)+vsEc=ALLTRIM(upEd)+usEc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2702a
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     ALLTRIM(vpEd)+vsEc
                                    DO diS_2702a WITH "N"
                          ENDCASE
                          STORE upEd TO vpEd
                          STORE usEc TO vsEc
                          STORE ufFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          DO diS_2702a WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                          ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          DO diS_2702a WITH "N"
                          SKIP
                          IF ALLTRIM(vpEd)+vsEc=ALLTRIM(upEd)+usEc
                               DO coLsc1
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2702a WITH ffFr, ffFr+1
                               STORE f2703ped TO upEd, vpEd
                               STORE f2703sec TO usEc, vsEc
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               STORE f2703ped TO ipEd
                               STORE f2703sec TO isEc
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE f2703ped TO vpEd
                               STORE f2703sec TO vsEc
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          DO diS_2702a WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                          ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          DO diS_2702a WITH "N"
                          SKIP -1
                          IF ALLTRIM(vpEd)+vsEc=ALLTRIM(ipEd)+isEc
                               DO coLsc1
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2702a WITH ifFr, ifFr+1
                               STORE f2703ped TO ipEd, vpEd
                               STORE f2703sec TO isEc, vsEc
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    STORE f2703ped TO upEd
                                    STORE f2703sec TO usEc
                               ENDIF
                          ELSE
                               STORE f2703ped TO vpEd
                               STORE f2703sec TO vsEc
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          DO diS_2702a WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(upEd)+usEc
                SKIP
                DO CASE
                     CASE EOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                          ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2702a
                          STORE ipEd TO vpEd
                          STORE isEc TO vsEc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          DO diS_2702a WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ipEd)+isEc
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                          ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                             ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                             ALLTRIM(vcOd)+"*"
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                          ENDIF
                          DO paN_2702a
                          STORE ipEd TO vpEd
                          STORE isEc TO vsEc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          DO diS_2702a WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2702a
 STORE ifFr TO vfFr, ufFr
 STORE f2703ped TO ipEd, upEd
 STORE f2703sec TO isEc, usEc
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc+ALLTRIM(f2703cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*" .AND. vfFr<ffFr+1
      DO diS_2702a WITH "N"
      STORE f2703ped TO upEd
      STORE f2703sec TO usEc
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2702a WITH vfFr, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2702a
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+00.4 Say F2703PED Font "&mLetAri",9 Style "NQ" Size 1,10.5 Pict "@S7"
 @vFFR,pICL+12.4 Say F2703SEC Font "&mLetAri",9 Style "NQ" Size 1,05.7 Pict "9999"
 @vFFR,pICL+19.6 Say F2703PLA Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "9,999.9999"
ENDPROC
*
PROCEDURE Lin_2702a
 PARAMETER piNi, pfIn
 DO coLsc1
 @ piNi, piCl+11.6 TO pfIn, piCl+11.6
 @ piNi, piCl+18.8 TO pfIn, piCl+18.8
ENDPROC
*
PROCEDURE P00_2702a
 STORE vcO1+20.0 TO piCl
 STORE piCl+34.4 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.8, piCl, ffFr+2.4, puCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifFr-1.7, piCl-00.5 TO ifFr-0.2, puCl+0.4 PATTERN 1
 @ ffFr+1.3, piCl-00.5 TO ffFr+1.3, puCl+0.4
 @iFFR-1.4,pICL+01.3 Say "Pedido"   Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,pICL+12.4 Say "Secu"     Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,pICL+21.6 Say "Cantidad" Font "&mLetAri",9 Style "BT"
 DO coLsc1
 @fFFR+1.4,pICL+12.6 Say tPLA       Font "&mLetAri",9 Style "BQ" Pict "999,999.9999" Size 1,18
 DO liN_2702a WITH ifFr-1.7, ffFr+1.3
ENDPROC
*
PROCEDURE P01_2702a
 PRIVATE pcO0
 STORE mcO0+30 TO pcO0
 DO coLsc7
 STORE .T. TO viM1
 STORE .F. TO veSp, vpQt
 STORE 00 TO vcTd, voPc
 STORE 01 TO mcOl, vcOp
 @ mfI0-02.5, pcO0+10 TO mfI0+15, pcO0+114 PATTERN 1
 @mFI0-01.3,pCO0+19 Say "Escoger Tipo de Documento"       Font "&mLetRom",13 Style "BTI" Color 4
 @mFI0-01.5,pCO0+74 Say "Copias:"                         Font "&mLetRom",11 Style "BT"  Color 2
 @mFI0+00.5,pCO0+74 Say "Espacio:"                        Font "&mLetRom",11 Style "BT"  Color 2
 @mFI0+02.5,pCO0+74 Say "Cantidad x Paquete:"             Font "&mLetRom",11 Style "BT"  Color 3
 @mFI0+04.0,pCO0+74 Say "(sólo funciona si no hay series" Font "&mLetAri",9  Style "NT"
 @mFI0+05.0,pCO0+74 Say "y no hay Cálculo automático)"    Font "&mLetAri",9  Style "NT"
 @mFI0+06.5,pCO0+74 Say "Cálculo automático x Caja"       Font "&mLetRom",11 Style "BT"  Color 1
 @mFI0+08.0,pCO0+74 Say "(sólo funciona si no hay series" Font "&mLetAri",9  Style "NT"
 @mFI0+09.0,pCO0+74 Say "y no hay Cantidad x Paquete)"    Font "&mLetAri",9  Style "NT"
 @mFI0+11.0,pCO0+74 Say "Tipo de Impresora:"              Font "&mLetRom",11 Style "BT"  Color 4
 DO WHILE .T.
      STORE k_Enter TO mkEy
      @mFI0+1.4,pCO0+14 Get vOPC Font "&mLetRom",12 Style "BQ" Size 1.4,38,.4 Default vOPC Function "*@T Etiqueta Grande;Etiqueta Chica"
      DO coLbln
      @mFI0-01.5,pCO0+086 Get vCOP Font "&mLetRom",11 Style "NQ" Size 1,3 Spinner 1,1,9 Default 3          Color ,&mColBlN
      @mFI0+00.5,pCO0+086 Get vESP Font "&mLetRom",12 Style "NQ" Size 1,1 Default vESP Function "*C"       Color ,,,,,,,,&mColSc7
      @mFI0+02.5,pCO0+102 Get vCTD Font "&mLetRom",11 Style "NQ" Size 1,6 Pict "99999"                     Color ,&mColBlN
      @mFI0+06.5,pCO0+109 Get vPQT Font "&mLetAri",11 Style "NQ" Size 1,1 Default vPQT Function "*C"       Color ,,,,,,,,&mColSc7
      @mFI0+13.0,pCO0+074 Get vIM1 Font "&mLetAri",11 Style "NQ" Size 1,1 Default vIM1 Function "*C Zebra" Color ,,,,,,,,&mColSc7
      SET CURSOR ON
      READ CYCLE
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc .OR. voPc=0
                STORE 00 TO voPc
                STORE k_Esc TO mkEy
                EXIT
           CASE mkEy=k_Enter
                EXIT
      ENDCASE
 ENDDO
 IF veSp=.T.
      STORE SPACE(01) TO veSp
 ELSE
      STORE "" TO veSp
 ENDIF
ENDPROC
*
PROCEDURE Rs1_2702a
 STORE vpEd TO cpEd
 STORE vsEc TO csEc
 DO rs1_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2702a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 SELECT seR_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ipEd)+isEc
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc+ALLTRIM(f2703cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*" .AND. vfFr<ffFr+1
      IF f2703ped=vpEd .AND. f2703sec=vsEc
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      STORE vpEd TO ipEd, cpEd
      STORE vsEc TO isEc, csEc
      STORE ifFr TO vfFr, cfFr
 ENDIF
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ipEd)+isEc
 DO paN_2702a
 STORE cpEd TO vpEd
 STORE csEc TO vsEc
 STORE cfFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
 DO diS_2702a WITH "R"
ENDPROC
*
PROCEDURE Clp_2702a
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE 99 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_2702a WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ipEd)+isEc
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           STORE f2703ped TO vpEd
           STORE f2703sec TO vsEc
           DO diS_2702a WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2702a
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
