 = INKEY(0.01)
 SELECT adI_cpra
 DO p00_2400d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_2400d
 STORE irCc TO vrCc
 STORE ifFr TO vfFr
 SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
 DO diS_2400d WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2400d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2400d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2400d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2400d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_2400d
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                DO diS_2400d WITH "R"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f2404ite=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrCc=irCc
                                    DO paN_2400d
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                                    DO diS_2400d WITH "N"
                          ENDCASE
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                          DO diS_2400d WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(999, 3, 0)
                SET NEAR OFF
                IF EOF() .OR. f2404tdo+f2404ser+f2404doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2404ite=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrCc=urCc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2400d
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                                    DO diS_2400d WITH "N"
                          ENDCASE
                          STORE urCc TO vrCc
                          STORE ufFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                          DO diS_2400d WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2404tdo+f2404ser+f2404doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                          DO diS_2400d WITH "N"
                          SKIP
                          IF vrCc=urCc
                               DO coLsc1
                               DO suBe WITH ifFr, icL2, ffFr, ucL2, 1
                               STORE f2404ite TO urCc, vrCc
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               STORE f2404ite TO irCc
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE f2404ite TO vrCc
                               STORE vfFr+01 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                          DO diS_2400d WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2404tdo+f2404ser+f2404doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                          DO diS_2400d WITH "N"
                          SKIP -1
                          IF vrCc=irCc
                               DO coLsc1
                               DO baJa WITH ifFr, icL2, ffFr, ucL2, 1
                               STORE f2404ite TO irCc, vrCc
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    STORE f2404ite TO urCc
                               ENDIF
                          ELSE
                               STORE f2404ite TO vrCc
                               STORE vfFr-01 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                          DO diS_2400d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+STR(urCc, 3, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f2404tdo+f2404ser+f2404doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2400d
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                          DO diS_2400d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+STR(irCc, 3, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2404tdo+f2404ser+f2404doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f2404tdo+f2404ser+f2404doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_2400d
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
                          DO diS_2400d WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2400d
 STORE ifFr TO vfFr, ufFr
 STORE f2404ite TO irCc, urCc
 DO WHILE  .NOT. EOF() .AND. f2404tdo+f2404ser+f2404doc=vtDo+vsEr+vdOc  ;
    .AND. vfFr<ffFr+1
      DO diS_2400d WITH "N"
      STORE f2404ite TO urCc
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ vfFr, icL2 CLEAR TO ffFr+1.1, ucL2
 ENDIF
ENDPROC
*
PROCEDURE Dis_2400d
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,vCO2+00.1 Say F2404ITE Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
 @vFFR,vCO2+05.3 Say F2404DCP Font "&mLetAri",9 Style "NQ" Size 1,60.1 Pict "@S62"
 @vFFR,vCO2+66.5 Say F2404PRT Font "&mLetAri",9 Style "NQ" Size 1,16.9 Pict "999,999.9999"
ENDPROC
*
PROCEDURE Imp_2400d
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
 DO reP_2400d
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2400d
 PRIVATE ptAm
 STORE 00 TO vlIn, vpAg
 STORE 62 TO ptAm
 STORE 20 TO mcLn
 DO caB_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Costo de un Producto"      Font "&mLetAri",13 Style "BQ"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM)         Font "&mLetAri",10 Style "NT"
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Descripción:"           Font "&mLetAri",11 Style "NQ"
      @vLIN,mCLN+20 Say vDES                     Font "&mLetAri",11 Style "NQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Cantidad:"              Font "&mLetAri",11 Style "NQ"
      @vLIN,mCLN+20 Say vPIE Pict "999,999.9999" Font "&mLetAri",11 Style "NQ"
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM)         Font "&mLetAri",10 Style "NT"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpRe<=0 .OR. vpIe<=0
      STORE 1 TO vpOr
 ELSE
      STORE ROUND((vpIe*vpRe)/xtOt*100, 4) TO vpOr
 ENDIF
 STORE vlIn+2 TO vlIn
 DO orD_0000a WITH "2404", "A", "F2404CPT", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
                @vLIN,mCLN Say "Costo de un Producto"   Font "&mLetAri",13 Style "BQ"
           ENDIF
           STORE vlIn+2.5 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say Replicate("_",pTAM)      Font "&mLetAri",10 Style "NT"
           ENDIF
           STORE vlIn+2.5 TO vlIn
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           IF SUBSTR(f2404dcp, 1, 1)="\"
                IF f2404por=2 .AND. f2404prc<>0
                     @vLIN,mCLN Say AllTrim(Substr(F2404DCP,2,50))+" "+Str(F2404PRC,6,2)+"%" Font "&mLetAri",10 Style "BQ" Size 1,45 Pict "@S48"
                ELSE
                     @vLIN,mCLN Say F2404DCP                                                 Font "&mLetAri",10 Style "BQ" Size 1,45 Pict "@S48"
                ENDIF
           ELSE
                IF f2404por=2 .AND. f2404prc<>0
                     @vLIN,mCLN Say AllTrim(F2404DCP)+" "+Str(F2404PRC,6,2)+"%" Font "&mLetAri",10 Style "NQ" Size 1,45 Pict "@S48"
                ELSE
                     @vLIN,mCLN Say F2404DCP                                    Font "&mLetAri",10 Style "NQ" Size 1,45 Pict "@S48"
                ENDIF
           ENDIF
           @vLIN,mCLN+55 Say Round(F2404PRT*vPOR/100,4)                     Font "&mLetAri",10 Style "NQ" Size 1,16 Pict "999,999.9999"
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF SUBSTR(f2404dcp, 1, 1)="\"
           STORE vlIn+0.5 TO vlIn
      ENDIF
      STORE vlIn+1.5 TO vlIn
      SKIP
 ENDDO
 DO orD_0000a WITH "2404", "A", "F2404DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_2400d
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.3, vcO2, ffFr+2.9, vcO2+84
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifFr-1.4, vcO2 TO ifFr-0.1, vcO2+84 PATTERN 1
 @ ffFr+1.6, vcO2 TO ffFr+3.1, vcO2+84 PATTERN 1
 @ ifFr-1.3, vcO2+04.8 TO ffFr+1.6, vcO2+04.8
 @ ifFr-1.3, vcO2+66.0 TO ffFr+3.1, vcO2+66.0
 @iFFR-1.3,vCO2+01.2 Say "Ít"          Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,vCO2+05.5 Say "Descripción" Font "&mLetAri",9 Style "NT"
 @iFFR-1.3,vCO2+70.6 Say "Monto US$"   Font "&mLetAri",9 Style "NT"
 @fFFR+1.9,vCO2+55.6 Say "Total:"      Font "&mLetAri",9 Style "BQ"
ENDPROC
*
PROCEDURE Clp_2400d
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.4
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+51
           IF mkEy=k_Esc
                RETURN
           ENDIF
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=vcO2 .AND.  ;
           mcCc<=vcO2+vuCo
           STORE 99 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=vcO2 .AND.  ;
           mcCc<=vcO2+vuCo
           DO diS_2400d WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           SEEK vtDo+vsEr+vdOc+STR(irCc, 3, 0)
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           STORE f2404ite TO vrCc
           DO diS_2400d WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2400d
 STORE vrCc TO crCc
 DO rs1_2400c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2400d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 SELECT adI_cpra
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irCc, 3, 0)
 DO WHILE  .NOT. EOF() .AND. f2404tdo+f2404ser+f2404doc=vtDo+vsEr+vdOc  ;
    .AND. vfFr<ffFr+1
      IF f2404rcc=vrCc
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      STORE vrCc TO irCc, crCc
      STORE ifFr TO vfFr, cfFr
 ENDIF
 SEEK vtDo+vsEr+vdOc+STR(irCc, 3, 0)
 DO paN_2400d
 STORE crCc TO vrCc
 STORE cfFr TO vfFr
 SEEK vtDo+vsEr+vdOc+STR(vrCc, 3, 0)
 DO diS_2400d WITH "R"
ENDPROC
*
PROCEDURE Hl1_2400d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido Adicional de la Im-"
 @ pfIl+01, 02 SAY  ;
   "portación. Si los ítems fueran más de los que se pueden visualizar, puede"
 @ pfIl+02, 02 SAY  ;
   "verlo por páginas.                                                       "
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+12, 20 SAY ":" STYLE "BT"
 @ pfIl+13, 20 SAY ":" STYLE "BT"
 @ pfIl+14, 20 SAY ":" STYLE "BT"
 @ pfIl+15, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 02 SAY "ESC" STYLE "BT"
 @ pfIl+07, 02 SAY "F10" STYLE "BT"
 @ pfIl+08, 02 SAY "F1" STYLE "BT"
 @ pfIl+09, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 02 SAY "HOME" STYLE "BT"
 @ pfIl+14, 02 SAY "END" STYLE "BT"
 @ pfIl+15, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+06, 22 SAY "Regresar a Detalle"
 @ pfIl+07, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 22 SAY "Ayuda del Programa"
 @ pfIl+09, 22 SAY "Línea inferior"
 @ pfIl+10, 22 SAY "Línea superior"
 @ pfIl+11, 22 SAY "Página siguiente"
 @ pfIl+12, 22 SAY "Página anterior"
 @ pfIl+13, 22 SAY "Primera línea"
 @ pfIl+14, 22 SAY "Última línea"
 @ pfIl+15, 22 SAY "Imprime Datos Adicionales x Producto Seleccionado"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
