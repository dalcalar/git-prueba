 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caB_cpra
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2400b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (itDo+isEr+idOc>vtDo+vsEr+ ;
    vdOc .OR. utDo+usEr+udOc<vtDo+vsEr+vdOc)) .OR. (vsW0=2 .AND.  ;
    (UPPER(inOm)>UPPER(vnOm) .OR. UPPER(unOm)<UPPER(vnOm))) .OR. (vsW0=3  ;
    .AND. (ifEm>vfEm .OR. ufEm<vfEm)) .OR. (vsW0=4 .AND. (itD1+ ;
    ALLTRIM(isR1)+"*"+ALLTRIM(ifAc)+"*">vtD1+ALLTRIM(vsR1)+"*"+ ;
    ALLTRIM(vfAc)+"*" .OR. utD1+ALLTRIM(usR1)+"*"+ALLTRIM(ufAc)+"*"<vtD1+ ;
    ALLTRIM(vsR1)+"*"+ALLTRIM(vfAc)+"*"))
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
           CASE vsW0=4
                SEEK vtD1+ALLTRIM(vsR1)+"*"+ALLTRIM(vfAc)+"*"
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_2400b
      DO muE_2400b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_2400b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vnOm))
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)
                CASE vsW0=4
                     SEEK vtD1+ALLTRIM(vsR1)+"*"+ALLTRIM(vfAc)+"*"+vtDo+ ;
                          vsEr+vdOc
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2400b WITH "F", "v"
      ENDIF
      DO seE_2400b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f2400tdo+f2400ser+f2400doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2400b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_2400b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2400b WITH "i"
      SET NEAR OFF
      DO paN_2400b
      DO muE_2400b WITH "i", "v"
      DO seE_2400b WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_2400b WITH "R"
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
           DO rs1_2400b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2400b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2400b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2400b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2400b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Left .OR. mkEy=k_Right) .AND. mrEs="3"
                DO CASE
                     CASE mkEy=k_Right .AND. vsW2=3
                          STORE 1 TO vsW2
                     CASE mkEy=k_Right
                          STORE vsW2+1 TO vsW2
                     CASE mkEy=k_Left .AND. vsW2=1
                          STORE 3 TO vsW2
                     CASE mkEy=k_Left
                          STORE vsW2-1 TO vsW2
                ENDCASE
                SET READBORDER ON
                DO p01_2400a
                DO bt1_2400a
                DO tiT_2400a
                SET READBORDER OFF
                DO seE_2400b WITH "i"
                STORE vfIl TO xfIl
                DO paN_2400b
                STORE xfIl TO vfIl
                DO seE_2400b WITH "v"
                DO diS_2400b WITH "R"
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. wtPo<>"4"
                DO CASE
                     CASE vsW3=2
                          STORE 1 TO vsW3
                     CASE vsW3=1
                          STORE 2 TO vsW3
                ENDCASE
                SET READBORDER ON
                DO p01_2400a
                DO bt2_2400a
                DO tiT_2400a
                SET READBORDER OFF
                DO seE_2400b WITH "i"
                STORE vfIl TO xfIl
                DO paN_2400b
                STORE xfIl TO vfIl
                DO seE_2400b WITH "v"
                DO diS_2400b WITH "R"
           CASE mkEy=k_F2
                SELECT tmP_cod
                ZAP
                REINDEX
                SELECT teMporal_2
                GOTO TOP
                IF BOF() .AND. vsW1=1
                     STORE "No hay documentos marcados..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO coL_fondo
                     DO cuAdro WITH ifIl+2, vcO1, ifIl+6, vcO1+60
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     SELECT teMporal_2
                     GOTO TOP
                     IF BOF()
                          SELECT teMporal
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               STORE f2400tdo TO ctDo
                               STORE f2400ser TO csEr
                               STORE f2400doc TO cdOc
                               SELECT deT_cpra
                               GOTO TOP
                               SEEK ctDo+csEr+cdOc
                               DO WHILE  .NOT. EOF() .AND. f2401tdo+ ;
                                  f2401ser+f2401doc=ctDo+csEr+cdOc
                                    STORE f2401cod TO vcOd
                                    STORE f2401des TO vdEs
                                    STORE f2401nuv TO vnUv
                                    STORE f2401can TO ccAn
                                    STORE f2401pre TO cpRe
                                    SELECT tmP_cod
                                    SEEK ALLTRIM(vcOd)+"*"
                                    IF EOF()
                                         APPEND BLANK
                                         REPLACE ftM6cod WITH vcOd
                                         REPLACE ftM6des WITH vdEs
                                         REPLACE ftM6nuv WITH vnUv
                                         REPLACE ftM6can WITH 0
                                         REPLACE ftM6pre WITH 0
                                         REPLACE ftM6tot WITH 0
                                    ENDIF
                                    REPLACE ftM6can WITH ftM6can+ccAn
                                    REPLACE ftM6tot WITH ftM6tot+(ccAn*cpRe)
                                    REPLACE ftM6pre WITH ftM6tot/ftM6can
                                    SELECT deT_cpra
                                    SKIP
                               ENDDO
                               SELECT teMporal
                               SKIP
                          ENDDO
                     ELSE
                          DO WHILE  .NOT. EOF()
                               STORE ftM2tdo TO ctDo
                               STORE ftM2ser TO csEr
                               STORE ftM2doc TO cdOc
                               SELECT deT_cpra
                               GOTO TOP
                               SEEK ctDo+csEr+cdOc
                               DO WHILE  .NOT. EOF() .AND. f2401tdo+ ;
                                  f2401ser+f2401doc=ctDo+csEr+cdOc
                                    STORE f2401cod TO vcOd
                                    STORE f2401des TO vdEs
                                    STORE f2401nuv TO vnUv
                                    STORE f2401can TO ccAn
                                    STORE f2401pre TO cpRe
                                    SELECT tmP_cod
                                    SEEK ALLTRIM(vcOd)+"*"
                                    IF EOF()
                                         APPEND BLANK
                                         REPLACE ftM6cod WITH vcOd
                                         REPLACE ftM6des WITH vdEs
                                         REPLACE ftM6nuv WITH vnUv
                                         REPLACE ftM6can WITH 0
                                         REPLACE ftM6pre WITH 0
                                         REPLACE ftM6tot WITH 0
                                    ENDIF
                                    REPLACE ftM6can WITH ftM6can+ccAn
                                    REPLACE ftM6tot WITH ftM6tot+(ccAn*cpRe)
                                    REPLACE ftM6pre WITH ftM6tot/ftM6can
                                    SELECT deT_cpra
                                    SKIP
                               ENDDO
                               SELECT teMporal_2
                               SKIP
                          ENDDO
                     ENDIF
                     SELECT tmP_cod
                     BROWSE
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=1
                          SELECT caB_cpra
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2400b WITH "v"
           CASE mkEy=k_F5 .AND. miMp=1
                SET READBORDER ON
                DO op1_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_2400b WITH "R"
           CASE mkEy=k_Tab
                STORE 0 TO tnE1, tnE2, tiG1, tiG2, ttO1, ttO2, tpE1, tpE2
                SELECT teMporal_2
                GOTO TOP
                IF  .NOT. BOF()
                     SUM ftM2net TO tnE1 FOR ftM2mon=1
                     SUM ftM2net TO tnE2 FOR ftM2mon=2
                     SUM ftM2igv TO tiG1 FOR ftM2mon=1
                     SUM ftM2igv TO tiG2 FOR ftM2mon=2
                     SUM ftM2tot TO ttO1 FOR ftM2mon=1
                     SUM ftM2tot TO ttO2 FOR ftM2mon=2
                     SUM ftM2per TO tpE1 FOR ftM2mon=1
                     SUM ftM2per TO tpE2 FOR ftM2mon=2
                ELSE
                     IF vsW1=2
                          SELECT teMporal
                          SUM f2400net TO tnE1 FOR f2400mon=1 .AND.  ;
                              f2400est<>"9" .AND. f2400td1<>"NC"
                          SUM f2400net TO tnE2 FOR f2400mon=2 .AND.  ;
                              f2400est<>"9" .AND. f2400td1<>"NC"
                          SUM f2400igv TO tiG1 FOR f2400mon=1 .AND.  ;
                              f2400est<>"9" .AND. f2400td1<>"NC"
                          SUM f2400igv TO tiG2 FOR f2400mon=2 .AND.  ;
                              f2400est<>"9" .AND. f2400td1<>"NC"
                          SUM f2400tot TO ttO1 FOR f2400mon=1 .AND.  ;
                              f2400est<>"9" .AND. f2400td1<>"NC"
                          SUM f2400tot TO ttO2 FOR f2400mon=2 .AND.  ;
                              f2400est<>"9" .AND. f2400td1<>"NC"
                          SUM f2400per TO tpE1 FOR f2400mon=1 .AND.  ;
                              f2400est<>"9" .AND. f2400td1<>"NC"
                          SUM f2400per TO tpE2 FOR f2400mon=2 .AND.  ;
                              f2400est<>"9" .AND. f2400td1<>"NC"
                          SUM f2400net TO xnE1 FOR f2400mon=1 .AND.  ;
                              f2400est<>"9" .AND. f2400td1="NC"
                          SUM f2400net TO xnE2 FOR f2400mon=2 .AND.  ;
                              f2400est<>"9" .AND. f2400td1="NC"
                          SUM f2400igv TO xiG1 FOR f2400mon=1 .AND.  ;
                              f2400est<>"9" .AND. f2400td1="NC"
                          SUM f2400igv TO xiG2 FOR f2400mon=2 .AND.  ;
                              f2400est<>"9" .AND. f2400td1="NC"
                          SUM f2400tot TO xtO1 FOR f2400mon=1 .AND.  ;
                              f2400est<>"9" .AND. f2400td1="NC"
                          SUM f2400tot TO xtO2 FOR f2400mon=2 .AND.  ;
                              f2400est<>"9" .AND. f2400td1="NC"
                          SUM f2400per TO xpE1 FOR f2400mon=1 .AND.  ;
                              f2400est<>"9" .AND. f2400td1="NC"
                          SUM f2400per TO xpE2 FOR f2400mon=2 .AND.  ;
                              f2400est<>"9" .AND. f2400td1="NC"
                          STORE tnE1-xnE1 TO tnE1
                          STORE tnE2-xnE2 TO tnE2
                          STORE tiG1-xiG1 TO tiG1
                          STORE tiG2-xiG2 TO tiG2
                          STORE ttO1-xtO1 TO ttO1
                          STORE ttO2-xtO2 TO ttO2
                          STORE tpE1-xpE1 TO tpE1
                          STORE tpE2-xpE2 TO tpE2
                     ENDIF
                ENDIF
                SAVE SCREEN TO vpAn_11
                DO coL_fondo
                DO cuAdro WITH ifIl+2, vcO1, ifIl+11.6, vcO1+77.4
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @ ifIl+3.5, vcO1 TO ifIl+03.5, vcO1+77.4
                @ ifIl+1.8, vcO1+26 TO ifIl+11.9, vcO1+26
                @ ifIl+1.8, vcO1+52 TO ifIl+11.9, vcO1+52
                @iFIL+02.0,vCO1+38 Say "S/."                                Font "&mLetRom",12 Style "BQ"
                @iFIL+02.0,vCO1+61 Say "US$"                                Font "&mLetRom",12 Style "BQ"
                @iFIL+04.0,vCO1+02 Say "NETO:"                              Font "&mLetRom",12 Style "BQ"
                @iFIL+06.0,vCO1+02 Say "IGV:"                               Font "&mLetRom",12 Style "BQ"
                @iFIL+08.0,vCO1+02 Say "TOTAL:"                             Font "&mLetRom",12 Style "BQ"
                @iFIL+10.0,vCO1+02 Say "Prov.Percepcion:"                   Font "&mLetRom",12 Style "BQ"
                @iFIL+04.0,vCO1+27.8 Say tNE1 Pict "999,999,999.99" Size 1,19 Font "&mLetRom",12 Style "NQ"
                @iFIL+06.0,vCO1+27.8 Say tIG1 Pict "999,999,999.99" Size 1,19 Font "&mLetRom",12 Style "NQ"
                @iFIL+08.0,vCO1+27.8 Say tTO1 Pict "999,999,999.99" Size 1,19 Font "&mLetRom",12 Style "NQ"
                @iFIL+10.0,vCO1+27.8 Say tPE1 Pict "999,999,999.99" Size 1,19 Font "&mLetRom",12 Style "NQ"
                @iFIL+04.0,vCO1+53.4 Say tNE2 Pict "999,999,999.99" Size 1,19 Font "&mLetRom",12 Style "NQ"
                @iFIL+06.0,vCO1+53.4 Say tIG2 Pict "999,999,999.99" Size 1,19 Font "&mLetRom",12 Style "NQ"
                @iFIL+08.0,vCO1+53.4 Say tTO2 Pict "999,999,999.99" Size 1,19 Font "&mLetRom",12 Style "NQ"
                @iFIL+10.0,vCO1+53.4 Say tPE2 Pict "999,999,999.99" Size 1,19 Font "&mLetRom",12 Style "NQ"
                mkEy = INKEY(0)
                RESTORE SCREEN FROM vpAn_11
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=1
                          SELECT caB_cpra
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2400b WITH "v"
           CASE mkEy=k_F6
                DO CASE
                     CASE (vsW0=4 .AND. wtPo$"123") .OR. (vsW0=3 .AND.  ;
                          wtPo="4")
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                SET READBORDER ON
                DO tiT_2400a
                SET READBORDER OFF
                DO caM_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. f2400est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_F7 .AND. wtPo$"12"
                DO CASE
                     CASE vsW1=1
                          SELECT caB_cpra
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                STORE f2400est TO xeSt
                STORE f2400mon TO xmOn
                DO CASE
                     CASE f2400est="9"
                          STORE 0 TO xtOt, xpEr, xiGv, xnEt
                     CASE f2400td1="NC"
                          STORE f2400tot*-1 TO xtOt
                          STORE f2400net*-1 TO xnEt
                          STORE f2400igv*-1 TO xiGv
                          STORE f2400per*-1 TO xpEr
                     OTHERWISE
                          STORE f2400tot TO xtOt
                          STORE f2400net TO xnEt
                          STORE f2400igv TO xiGv
                          STORE f2400per TO xpEr
                ENDCASE
                SELECT teMporal_2
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2tdo WITH vtDo
                     REPLACE ftM2ser WITH vsEr
                     REPLACE ftM2doc WITH vdOc
                     REPLACE ftM2mon WITH xmOn
                     REPLACE ftM2per WITH xpEr
                     REPLACE ftM2net WITH xnEt
                     REPLACE ftM2igv WITH xiGv
                     REPLACE ftM2tot WITH xtOt
                     REPLACE ftM2est WITH xeSt
                ELSE
                     DELETE
                     PACK
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_cpra
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO diS_2400b WITH "R"
           CASE mkEy=k_F8
                IF wtPo="1"
                     DO prO_2400b
                ELSE
                     DO ciE_2400b
                ENDIF
                SELECT teMporal_2
                SET ORDER TO FTM2DOC
                SET FILTER TO
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                = INKEY(0.01)
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. f2400est="9"
                STORE "Documento se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f2400est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f2400est<>"9" .AND. wtPo="3"
                STORE "Documento no se encuentra anulado para poder Eliminar..."  ;
                      TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_2400b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                = INKEY(0.01)
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_2400b WITH "R"
           CASE mkEy=k_Ctrl_del .AND. wtPo="3"
                DO elI_2400b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                = INKEY(0.01)
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_2400b WITH "R"
           CASE mkEy=k_Enter
                SELECT caB_cpra
                IF vsW0<>1 .OR. vsW1<>1
                     DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_cpra
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO paC2400c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO esT_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f2400tdo+f2400ser+f2400doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2400b
                               OTHERWISE
                                    DO seE_2400b WITH "v"
                                    DO diS_2400b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2400b WITH "i", "v"
                          DO seE_2400b WITH "v"
                          DO diS_2400b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f2400tdo+f2400ser+f2400doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2400b
                               OTHERWISE
                                    DO seE_2400b WITH "v"
                                    DO diS_2400b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2400b WITH "u", "v"
                          DO seE_2400b WITH "v"
                          DO diS_2400b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2400b WITH "v"
                          DO diS_2400b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_2400a WITH ffIl, ffIl+1
                               DO li1_2400a WITH ffIl, ffIl+1
                               DO muE_2400b WITH "F", "v"
                               DO muE_2400b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2400b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2400b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2400b WITH "v"
                          DO diS_2400b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2400b WITH "v"
                          DO diS_2400b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_2400a WITH ifIl, ifIl+1
                               DO li1_2400a WITH ifIl, ifIl+1
                               DO muE_2400b WITH "F", "i"
                               DO muE_2400b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2400b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2400b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2400b WITH "v"
                          DO diS_2400b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2400b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2400b
                          STORE ifIl TO vfIl
                          DO muE_2400b WITH "i", "v"
                          DO seE_2400b WITH "v"
                          DO diS_2400b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2400b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2400b
                          STORE ifIl TO vfIl
                          DO muE_2400b WITH "i", "v"
                          DO seE_2400b WITH "v"
                          DO diS_2400b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2400b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2400b
 DO pn1_2400b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2400b
 DO pn1_2400b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2400b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2400b WITH "F", "i"
 DO muE_2400b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f2400tdo+f2400ser+f2400doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2400b WITH "N"
      ENDCASE
      DO muE_2400b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_2400a WITH ufIl, ffIl+1
      DO li1_2400a WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Cl1_2400b
 DO CASE
      CASE f2400est="1" .AND. psW0=0 .AND. ptIp="N"
           DO coLsc1
      CASE f2400est="1" .AND. psW0=0 .AND. ptIp="R"
           DO coLbln
      CASE f2400est="1" .AND. ptIp="N"
           DO coLsc3
      CASE f2400est="1" .AND. ptIp="R"
           DO coLblf
      CASE f2400est="2" .AND. ptIp="N"
           DO coLscz
      CASE f2400est="2" .AND. ptIp="R"
           DO coLblz
      CASE f2400est="3" .AND. ptIp="N"
           DO coLscv
      CASE f2400est="3" .AND. ptIp="R"
           DO coLblv
      CASE f2400est$"9 " .AND. ptIp="N"
           DO coLscr
      CASE f2400est$"9 " .AND. ptIp="R"
           DO coLblr
 ENDCASE
ENDPROC
*
PROCEDURE Cl2_2400b
 DO CASE
      CASE ptIp="N" .AND. psW0=1
           DO coLsc3
      CASE ptIp="R" .AND. psW0=1
           DO coLblf
      CASE ptIp="N" .AND. f2400tpo=2
           DO coLscr
      CASE ptIp="N" .AND. f2400tpo=3
           DO coLscv
      CASE ptIp="N" .AND. f2400tpo=4
           DO coLscz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Cl3_2400b
 DO CASE
      CASE ptIp="N" .AND. psW0=1
           DO coLsc3
      CASE ptIp="R" .AND. psW0=1
           DO coLblf
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Cl4_2400b
 DO CASE
      CASE ptIp="N" .AND. psW0=1
           DO coLsc3
      CASE ptIp="R" .AND. psW0=1
           DO coLblf
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Cl5_2400b
 DO CASE
      CASE ptIp="N" .AND. f2400td1="NC"
           DO coLscr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Dis_2400b
 PARAMETER ptIp
 PRIVATE peSt, ptDo, psEr, pdOc, pnOm, psIg, ptOt, psW0, ptMn, ptD1, psR1,  ;
         pdO1, ptD2
 DO CASE
      CASE mrEs="3"
           STORE 66.2 TO ptMn
      CASE mrEs="4"
           STORE 66.2 TO ptMn
      OTHERWISE
           STORE 66.2 TO ptMn
 ENDCASE
 DO CASE
      CASE vsW2=1 .OR. mrEs>"3"
           STORE SUBSTR(f2400prv+":"+f2400nom, 1, INT(ptMn)+3) TO pnOm
      CASE vsW2=2
           STORE SUBSTR(f2400cm1, 1, INT(ptMn)+3) TO pnOm
      CASE vsW2=3
           STORE SUBSTR(f2400cm2, 1, INT(ptMn)+3) TO pnOm
 ENDCASE
 DO CASE
      CASE vsW3=2 .OR. wtPo="4"
           STORE "GR" TO ptD1
           STORE f2400sr2 TO psR1
           STORE f2400rem TO pdO1
      CASE vsW3=1
           STORE f2400td1 TO ptD1
           STORE f2400sr1 TO psR1
           STORE f2400fac TO pdO1
 ENDCASE
 STORE f2400tot TO ptOt
 STORE f2400tdo TO ptDo
 STORE f2400ser TO psEr
 STORE f2400doc TO pdOc
 STORE 0 TO psW0
 IF f2400td1="NC"
      STORE ptOt*-1 TO ptOt
 ENDIF
 DO CASE
      CASE f2400mon=1
           STORE "S/." TO psIg
      CASE f2400mon=2
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 DO CASE
      CASE f2400tpo=2
           STORE "GA" TO ptD2
      CASE f2400tpo=3
           STORE "IM" TO ptD2
      CASE f2400tpo=4
           STORE "PR" TO ptD2
      CASE f2400tpo=5
           STORE "AD" TO ptD2
      OTHERWISE
           STORE f2400tdo TO ptD2
 ENDCASE
 DO CASE
      CASE f2400est="1"
           STORE "Dig" TO peSt
      CASE f2400est="2"
           STORE "Pro" TO peSt
      CASE f2400est="3"
           STORE "Cer" TO peSt
      CASE f2400est=" "
           STORE "   " TO peSt
           STORE "* * * A N U L A D O * * *" TO pnOm
      CASE f2400est="9"
           STORE "Anu" TO peSt
           STORE "* * * A N U L A D O * * *" TO pnOm
 ENDCASE
 SELECT teMporal_2
 SEEK ptDo+psEr+pdOc
 IF  .NOT. EOF()
      STORE 1 TO psW0
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT caB_cpra
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO cl1_2400b
 @vFIL,mCO0+019.5 Say pEST     Font "&mLetAri",9 Style "NQ" Size 1,4.2
 DO cl2_2400b
 @vFIL,mCO0       Say pTD2     Font "&mLetAri",9 Style "NQ" Size 1,3.5
 DO cl3_2400b
 @vFIL,mCO0+004.2 Say pSER     Font "&mLetAri",9 Style "NQ" Size 1,4.4
 @vFIL,mCO0+009.2 Say pDOC     Font "&mLetAri",9 Style "NQ" Size 1,9.8
 DO cl4_2400b
 @vFIL,vCL1       Say F2400FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,vCL1+013.2 Say F2400FIN Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,vCL1+026.4 Say F2400REG Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,vCL1+039.6 Say pNOM     Font "&mLetAri",9 Style "NQ" Size 1,pTMN
 @vFIL,vCL2+000.0 Say pTD1     Font "&mLetAri",9 Style "NQ" Size 1,03.5
 @vFIL,vCL2+004.2 Say pSR1     Font "&mLetAri",9 Style "NQ" Size 1,05.6 Pict "@S04"
 @vFIL,vCL2+010.4 Say pDO1     Font "&mLetAri",9 Style "NQ" Size 1,14.2 Pict "@S10"
 @vFIL,vCL2+025.2 Say F2400PED Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,vCL2+035.6 Say F2400SOR Font "&mLetAri",9 Style "NQ" Size 1,04.4
 @vFIL,vCL2+040.6 Say F2400ORD Font "&mLetAri",9 Style "NQ" Size 1,09.8
 IF mrEs>"3"
      DO CASE
           CASE wtPo<>"4" .AND. mrEs="4"
                @vFIL,vCL2+50.9 Say F2400CM1 Font "&mLetAri",9 Style "NQ" Size 1,34.0 Pict "@S37"
                @vFIL,vCL2+85.5 Say F2400CM2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S19"
           CASE wtPo<>"4"
                @vFIL,vCL2+50.9 Say F2400CM1 Font "&mLetAri",9 Style "NQ" Size 1,34.0 Pict "@S37"
                @vFIL,vCL2+85.5 Say F2400CM2 Font "&mLetAri",9 Style "NQ" Size 1,34.0 Pict "@S37"
           CASE wtPo="4" .AND. mrEs="4"
                @vFIL,vCL2+50.9 Say F2400CM1 Font "&mLetAri",9 Style "NQ" Size 1,35.0 Pict "@S38"
                @vFIL,vCL2+86.5 Say F2400CM2 Font "&mLetAri",9 Style "NQ" Size 1,35.3 Pict "@S38"
           CASE wtPo="4"
                @vFIL,vCL2+50.9 Say F2400CM1 Font "&mLetAri",9 Style "NQ" Size 1,44.0 Pict "@S47"
                @vFIL,vCL2+95.5 Say F2400CM2 Font "&mLetAri",9 Style "NQ" Size 1,43.6 Pict "@S47"
      ENDCASE
 ENDIF
 DO cl5_2400b
 DO CASE
      CASE wtPo<>"4"
           @vFIL,vCL3-5.4 Say pSIG Font "&mLetAri",9 Style "NQ" Size 1,4.8
           DO CASE
                CASE ABS(ptOt)>999999.99 .AND. f2400est<>"9"
                     @vFIL,vCL3 Say pTOT Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,14
                CASE ABS(ptOt)>0 .AND. f2400est<>"9"
                     @vFIL,vCL3 Say pTOT Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,14
                OTHERWISE
                     @vFIL,vCL3 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,14
           ENDCASE
      CASE mrEs="3"
           @vFIL,vCL3-5.4 Say F2400CM1 Font "&mLetAri",9 Style "NQ" Size 1,19.2 Pict "@S22"
 ENDCASE
 RELEASE peSt, ptDo, psEr, pdOc, pnOm, psIg, ptOt, psW0, ptMn, ptD1, psR1,  ;
         pdO1, ptD2
ENDPROC
*
PROCEDURE Opc_2400b
 DO rs2_2400a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE 02 TO viMp
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2400b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SET READBORDER ON
           DO rs2_2400a WITH "1"
           IF mkEy=k_Esc
                EXIT
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
           CASE mkEy=k_F1
                DO hl2_2400b
           CASE mkEy=k_F12
                DO rs1_2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO rs2_2400a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE 02 TO viMp
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal_2
                ZAP
                REINDEX
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caB_cpra
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400ord)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400cm1)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400cm2)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400fac)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400rem)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2400ped)))<>0
                          DO muE_2400a
                          DO grA_2400a
                          SELECT caB_cpra
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
      DO paL_2700a IN PAC2700A
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW1=1
                SELECT caB_cpra
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_2400b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_2400b
      DO muE_2400b WITH "i", "v"
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
 ENDIF
 DO paL_2400a
ENDPROC
*
PROCEDURE Op1_2400b
 DO rs2_2400a WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2400b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_2400a WITH "2"
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
                DO rs1_2400b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_2400a WITH "2"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_2400b
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE 02 TO viMp
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caB_cpra
                GOTO TOP
                STORE 0 TO ttO1, ttO2, tcTd
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2400ped)))<>0
                          DO muE_2400a
                          DO grA_2400a
                          SELECT deT_cpra
                          SEEK xtDo+xsEr+xdOc
                          DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+ ;
                             f2401doc=xtDo+xsEr+xdOc
                               STORE f2401cod TO vcOd
                               STORE f2401can TO vcAn
                               SELECT prOductos
                               SEEK ALLTRIM(vcOd)+"*"
                               IF  .NOT. EOF() .AND. f2111tpo=1
                                    STORE tcTd+vcAn TO tcTd
                               ENDIF
                               SELECT deT_cpra
                               SKIP
                          ENDDO
                          SELECT caB_cpra
                          IF f2400mon=1
                               STORE ttO1+f2400tot TO ttO1
                          ELSE
                               STORE ttO2+f2400tot TO ttO2
                          ENDIF
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 1 TO vsW1
                     STORE 2 TO viMp
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 2 TO vsW1
                     STORE 0 TO csW1
                     STORE 1 TO viMp
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO paL_2700a IN PAC2700A
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW1=1
                SELECT caB_cpra
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO orD_2400b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_2400b
      DO muE_2400b WITH "i", "v"
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
 ENDIF
 DO paL_2400a
ENDPROC
*
PROCEDURE Cam_2400b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2400b WITH "v", "x"
 DO orD_2400b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2400b WITH "i"
 DO pa1_2400b
 IF cfIl=0
      DO muE_2400b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_2400b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_2400b WITH "v"
 DO diS_2400b WITH "R"
ENDPROC
*
PROCEDURE Est_2400b
 DO CASE
      CASE vsW1=1
           SELECT caB_cpra
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO orD_2400b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_2400b WITH "v"
 DO diS_2400b WITH "R"
ENDPROC
*
PROCEDURE Pro_2400b
 PRIVATE ptX1, ptX2, poPc, pnUm, ptDo, psEr, pdOc, peSt, ptCa, peSt, ppOr, ppIe
 = INKEY(0.01)
 STORE 0 TO pnUm
 SELECT teMporal_2
 SET ORDER TO
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF ftM2est="1"
           STORE pnUm+1 TO pnUm
      ENDIF
      SKIP
 ENDDO
 IF pnUm=0
      SET ORDER TO FTM2DOC
      SET FILTER TO
      STORE "No hay Documentos DIGITADOS marcados..." TO mmSj
      DO poNmsj
      = INKEY(0.5)
      RETURN
 ENDIF
 SET FILTER TO ftM2est="1"
 SET ORDER TO FTM2DOC
 GOTO TOP
 STORE ftM2tdo TO ptDo
 STORE ftM2ser TO psEr
 STORE ftM2doc TO pdOc
 DO CASE
      CASE viMp=1
           STORE 2 TO piMp
           IF pnUm=1
                ptX1 = "¿Desea Procesar y Costear Importación marcada?"
                ptX2 = "DOCUMENTO No.:"+ptDo+":"+psEr+"-"+pdOc
           ELSE
                ptX1 = "¿Desea Procesar y Costear Importaciones marcadas?"
                ptX2 = " "
           ENDIF
           poPc = MESSAGEBOX(ptX1, 0036, ptX2)
           IF poPc=7
                IF pnUm=1
                     ptX1 = "¿Desea Solo Procesar Importación DIG marcada?"
                     ptX2 = "DOCUMENTO No.:"+ptDo+":"+psEr+"-"+pdOc
                ELSE
                     ptX1 = "¿Desea Solo Procesar Importaciones DIG marcadas?"
                     ptX2 = " "
                ENDIF
                poPc = MESSAGEBOX(ptX1, 0036, ptX2)
           ELSE
                STORE 1 TO piMp
           ENDIF
      OTHERWISE
           STORE 1 TO piMp
           IF pnUm=1
                ptX1 = "¿Desea Procesar este Documento DIG?"
                ptX2 = "DOCUMENTO No.:"+ptDo+":"+psEr+"-"+pdOc
           ELSE
                ptX1 = "¿Desea Procesar los Documentos DIG marcados?"
                ptX2 = " "
           ENDIF
           poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 ENDCASE
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "5"
 SELECT caB_cpra
 STORE 99 TO mkEy
 DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW1=2
      SELECT teMporal
      SET ORDER TO F2400DOC
 ENDIF
 SELECT teMporal_2
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM2tdo TO ptDo
      STORE ftM2ser TO psEr
      STORE ftM2doc TO pdOc
      SELECT caB_cpra
      SEEK ptDo+psEr+pdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ptDo+psEr+pdOc
                IF mkEy=k_Esc
                     UNLOCK ALL
                     WAIT CLEAR
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT teMporal_2
      SKIP
 ENDDO
 SELECT teMporal_2
 GOTO TOP
 STORE 0 TO tgAs, tcOs
 DO WHILE  .NOT. EOF()
      STORE ftM2tdo TO ptDo
      STORE ftM2ser TO psEr
      STORE ftM2doc TO pdOc
      STORE ftM2est TO peSt
      SELECT caB_cpra
      SEEK ptDo+psEr+pdOc
      IF  .NOT. EOF() .AND. f2400est<>"9"
           STORE f2400prv TO xpRv
           STORE f2400suc TO xsUc
           STORE f2400nom TO xnOm
           STORE f2400ruc TO xrUc
           STORE f2400tit TO xtIt
           STORE f2400nti TO xnTi
           STORE f2400mon TO xmOn
           STORE f2400fem TO xfEm
           STORE f2400td1 TO xtD1
           STORE f2400sr1 TO xsR1
           STORE f2400fac TO xfAc
           STORE f2400ped TO xpEd
           STORE f2400fpa TO xfPa
           STORE f2400nfp TO xnFp
           STORE f2400dia TO xdIa
           STORE f2400pig TO xpIg
           STORE f2400net TO xnEt
           STORE f2400tot TO xtOt
           STORE f2400pla TO xpLa
           STORE f2400tpo TO xtPo
           STORE f2400est TO peSt
           IF f2400est="1"
                REPLACE f2400est WITH "2"
                REPLACE f2400usu WITH muSu
                REPLACE f2400maq WITH mmAq
                REPLACE f2400dat WITH DATE()
                REPLACE f2400tim WITH TIME()
                UNLOCK
                IF vsW1=2
                     SELECT teMporal
                     SEEK ptDo+psEr+pdOc
                     REPLACE f2400est WITH "2"
                     REPLACE f2400usu WITH muSu
                     REPLACE f2400maq WITH mmAq
                     REPLACE f2400dat WITH DATE()
                     REPLACE f2400tim WITH TIME()
                ENDIF
           ENDIF
           SELECT caMbio
           SEEK xfEm
           IF EOF()
                STORE 3 TO ptCa
           ELSE
                STORE f9111tc4 TO ptCa
           ENDIF
           IF viMp=1 .AND. piMp=1
                DO CASE
                     CASE xtPo=2 .AND. xmOn=1
                          STORE tgAs+(ROUND(xnEt/ptCa, 2)) TO tgAs
                     CASE xtPo=2 .AND. xmOn=2
                          STORE tgAs+xnEt TO tgAs
                     CASE xmOn=1
                          STORE tcOs+(ROUND(xnEt/ptCa, 2)) TO tcOs
                     CASE xmOn=2
                          STORE tcOs+xnEt TO tcOs
                ENDCASE
           ENDIF
           IF peSt="1"
                SELECT tiP_prv
                SEEK xpRv
                IF EOF()
                     STORE "Sin Tipo de Proveedor" TO xnTp
                     STORE "00" TO xtPr
                ELSE
                     STORE f9210tip TO xtPr
                     STORE f9210nti TO xnTp
                ENDIF
                SELECT ctAs_total_cpras
                SEEK ptDo+psEr
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f3602tdo WITH ptDo
                     REPLACE f3602ser WITH psEr
                     REPLACE f3602to1 WITH 0
                     REPLACE f3602in1 WITH 0
                     REPLACE f3602ac1 WITH 0
                     REPLACE f3602to2 WITH 0
                     REPLACE f3602in2 WITH 0
                     REPLACE f3602ac2 WITH 0
                ELSE
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ptDo+psEr
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ENDIF
                DO CASE
                     CASE xmOn=1
                          REPLACE f3602to1 WITH f3602to1+xtOt
                     CASE xmOn=2
                          REPLACE f3602to2 WITH f3602to2+xtOt
                ENDCASE
                UNLOCK
                SELECT peNd_cpras
                DO nuEvo_rg
                REPLACE f3600tdo WITH ptDo
                REPLACE f3600ser WITH psEr
                REPLACE f3600doc WITH pdOc
                REPLACE f3600td1 WITH xtD1
                REPLACE f3600sr1 WITH xsR1
                REPLACE f3600do1 WITH xfAc
                REPLACE f3600prv WITH xpRv
                REPLACE f3600suc WITH xsUc
                REPLACE f3600ruc WITH xrUc
                REPLACE f3600nom WITH xnOm
                REPLACE f3600tit WITH xtIt
                REPLACE f3600nti WITH xnTi
                REPLACE f3600tpr WITH xtPr
                REPLACE f3600ntp WITH xnTp
                REPLACE f3600fpa WITH xfPa
                REPLACE f3600nfp WITH xnFp
                REPLACE f3600ped WITH xpEd
                REPLACE f3600pla WITH xpLa
                REPLACE f3600fem WITH xfEm
                REPLACE f3600pre WITH xfEm
                REPLACE f3600fve WITH xfEm+xdIa
                REPLACE f3600fca WITH CTOD("  /  /    ")
                REPLACE f3600pig WITH xpIg
                REPLACE f3600mon WITH xmOn
                REPLACE f3600tot WITH xtOt
                REPLACE f3600acu WITH 0.00
                REPLACE f3600est WITH SPACE(01)
                UNLOCK
           ENDIF
      ENDIF
      SELECT teMporal_2
      SKIP
 ENDDO
 IF viMp=1 .AND. piMp=1
      SELECT tmP_pro
      ZAP
      REINDEX
      SELECT teMporal_2
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2tdo TO ptDo
           STORE ftM2ser TO psEr
           STORE ftM2doc TO pdOc
           SELECT caB_cpra
           SEEK ptDo+psEr+pdOc
           IF  .NOT. EOF() .AND. f2400tpo<>2 .AND. f2400est<>"9"
                STORE f2400mon TO xmOn
                STORE f2400fem TO xfEm
                STORE f2400net TO xnEt
                SELECT caMbio
                SEEK xfEm
                IF EOF()
                     STORE 3 TO ptCa
                ELSE
                     STORE f9111tc4 TO ptCa
                ENDIF
                IF xmOn=1
                     STORE ROUND(xnEt/ptCa, 2) TO xnEt
                ENDIF
                STORE ROUND(xnEt/tcOs, 2) TO ppOr
                STORE xnEt+ROUND(tgAs*ppOr/100, 2) TO tgA1
                SELECT deT_cpra
                SEEK ptDo+psEr+pdOc
                DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc= ;
                   ptDo+psEr+pdOc
                     STORE f2401cod TO vcOd
                     STORE f2401des TO vdEs
                     STORE f2401can TO vcAn
                     STORE f2401can*f2401pre TO vcUn
                     IF xmOn=1
                          STORE ROUND(vcUn/ptCa, 2) TO vcUn
                     ENDIF
                     STORE ROUND(vcUn/xnEt, 2) TO ppOr
                     STORE ROUND(tgA1*ppOr/100, 2) TO vgAs
                     SELECT tmP_pro
                     SEEK ALLTRIM(vcOd)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE coDigo WITH vcOd
                          REPLACE deScri WITH vdEs
                          REPLACE caNtid WITH 0
                          REPLACE coSto WITH 0
                          REPLACE gaSto WITH 0
                     ENDIF
                     REPLACE caNtid WITH caNtid+vcAn
                     REPLACE coSto WITH coSto+vcUn
                     REPLACE gaSto WITH gaSto+vgAs
                     SELECT deT_cpra
                     SKIP
                ENDDO
           ENDIF
           SELECT teMporal_2
           SKIP
      ENDDO
      SELECT tmP_pro
      REPLACE coSto WITH ROUND(coSto/caNtid, 2) ALL
      REPLACE gaSto WITH ROUND(gaSto/caNtid, 2) ALL
      REPLACE coSto WITH coSto*1.19 ALL
      REPLACE gaSto WITH gaSto*1.19 ALL
      SELECT caMbio
      SEEK DATE()
      IF EOF()
           STORE 1 TO ptCa
      ELSE
           STORE f9111tc3 TO ptCa
      ENDIF
      SELECT fiJo
      GOTO TOP
      IF  .NOT. BOF()
           STORE f9000tc1 TO ptCa
      ENDIF
      SELECT tmP_pro
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE coDigo TO vcOd
           STORE coSto+gaSto TO vcUn
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          UNLOCK ALL
                          WAIT CLEAR
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                STORE f2111tip TO xtPo
                SELECT tiP_prod
                SEEK xtPo
                IF EOF()
                     STORE 1 TO xtPo
                ELSE
                     STORE f9211tpo TO xtPo
                ENDIF
                SELECT prOductos
                DO CASE
                     CASE xtPo=1 .AND. f2111la1<>0 .AND. f2111an1<>0
                          STORE ROUND(f2111la1*f2111an1*mfCt, 8) TO ppIe
                     CASE xtPo=1 .AND. f2111la2<>0 .AND. f2111an2<>0
                          STORE ROUND(f2111la2*f2111an2/mfCp, 8) TO ppIe
                     OTHERWISE
                          STORE 1 TO ppIe
                ENDCASE
                IF ppIe<=0
                     STORE 1 TO ppIe
                ENDIF
                STORE ROUND(vcUn/ppIe, 4) TO vcUn
                REPLACE f2111vcp WITH vcUn
                REPLACE f2111vcs WITH ROUND(f2111vcp*ptCa, 4)
                IF f2111uti<>0
                     REPLACE f2111vv1 WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111uti/100)), 4)
                     REPLACE f2111vv2 WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111uti/100)), 4)
                ENDIF
                IF f2111ut2<>0
                     REPLACE f2111vv3 WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut2/100)), 4)
                     REPLACE f2111vv4 WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut2/100)), 4)
                ENDIF
                IF f2111ut3<>0
                     REPLACE f2111vv5 WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut3/100)), 4)
                     REPLACE f2111vv6 WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut3/100)), 4)
                ENDIF
                IF f2111ut4<>0
                     REPLACE f2111vv7 WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut4/100)), 4)
                     REPLACE f2111vv8 WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut4/100)), 4)
                ENDIF
                IF f2111ut5<>0
                     REPLACE f2111vv9 WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut5/100)), 4)
                     REPLACE f2111vv0 WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut5/100)), 4)
                ENDIF
                IF f2111ut6<>0
                     REPLACE f2111vva WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut6/100)), 4)
                     REPLACE f2111vvb WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut6/100)), 4)
                ENDIF
                IF f2111ut7<>0
                     REPLACE f2111vvc WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut7/100)), 4)
                     REPLACE f2111vvd WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut7/100)), 4)
                ENDIF
                IF f2111ut8<>0
                     REPLACE f2111vve WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut8/100)), 4)
                     REPLACE f2111vvf WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut8/100)), 4)
                ENDIF
                IF f2111ut9<>0
                     REPLACE f2111vvg WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut9/100)), 4)
                     REPLACE f2111vvh WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut9/100)), 4)
                ENDIF
                IF f2111ut0<>0
                     REPLACE f2111vvi WITH ROUND(ppIe*f2111vcs*(1+ ;
                             (f2111ut0/100)), 4)
                     REPLACE f2111vvj WITH ROUND(ppIe*f2111vcp*(1+ ;
                             (f2111ut0/100)), 4)
                ENDIF
                REPLACE f2111mv1 WITH ROUND(f2111vv1-(f2111vv1*f2111dct/ ;
                        100), 4)
                REPLACE f2111mv2 WITH ROUND(f2111vv2-(f2111vv2*f2111dct/ ;
                        100), 4)
                REPLACE f2111mv3 WITH ROUND(f2111vv3-(f2111vv3*f2111dc2/ ;
                        100), 4)
                REPLACE f2111mv4 WITH ROUND(f2111vv4-(f2111vv4*f2111dc2/ ;
                        100), 4)
                REPLACE f2111mv5 WITH ROUND(f2111vv5-(f2111vv5*f2111dc3/ ;
                        100), 4)
                REPLACE f2111mv6 WITH ROUND(f2111vv6-(f2111vv6*f2111dc3/ ;
                        100), 4)
                REPLACE f2111mv7 WITH ROUND(f2111vv7-(f2111vv7*f2111dc4/ ;
                        100), 4)
                REPLACE f2111mv8 WITH ROUND(f2111vv8-(f2111vv8*f2111dc4/ ;
                        100), 4)
                REPLACE f2111mv9 WITH ROUND(f2111vv9-(f2111vv9*f2111dc5/ ;
                        100), 4)
                REPLACE f2111mv0 WITH ROUND(f2111vv0-(f2111vv0*f2111dc5/ ;
                        100), 4)
                REPLACE f2111mva WITH ROUND(f2111vva-(f2111vva*f2111dc6/ ;
                        100), 4)
                REPLACE f2111mvb WITH ROUND(f2111vvb-(f2111vvb*f2111dc6/ ;
                        100), 4)
                REPLACE f2111mvc WITH ROUND(f2111vvc-(f2111vvc*f2111dc7/ ;
                        100), 4)
                REPLACE f2111mvd WITH ROUND(f2111vvd-(f2111vvd*f2111dc7/ ;
                        100), 4)
                REPLACE f2111mve WITH ROUND(f2111vve-(f2111vve*f2111dc8/ ;
                        100), 4)
                REPLACE f2111mvf WITH ROUND(f2111vvf-(f2111vvf*f2111dc8/ ;
                        100), 4)
                REPLACE f2111mvg WITH ROUND(f2111vvg-(f2111vvg*f2111dc9/ ;
                        100), 4)
                REPLACE f2111mvh WITH ROUND(f2111vvh-(f2111vvh*f2111dc9/ ;
                        100), 4)
                REPLACE f2111mvi WITH ROUND(f2111vvi-(f2111vvi*f2111dc0/ ;
                        100), 4)
                REPLACE f2111mvj WITH ROUND(f2111vvj-(f2111vvj*f2111dc0/ ;
                        100), 4)
                REPLACE f2111usu WITH muSu
                REPLACE f2111dat WITH DATE()
                REPLACE f2111tim WITH TIME()
           ENDIF
           SELECT tmP_pro
           SKIP
      ENDDO
 ENDIF
 SELECT teMporal_2
 SET FILTER TO
 ZAP
 REINDEX
 RELEASE ptX1, ptX2, poPc, pnUm, ptDo, psEr, pdOc, peSt, ptCa, peSt, ppOr, ppIe
ENDPROC
*
PROCEDURE Cie_2400b
 PRIVATE ptX1, ptX2, poPc, pnUm, ptDo, psEr, pdOc
 = INKEY(0.01)
 STORE 0 TO pnUm
 SELECT teMporal_2
 SET ORDER TO
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF ftM2est="2"
           STORE pnUm+1 TO pnUm
      ENDIF
      SKIP
 ENDDO
 IF pnUm=0
      SET ORDER TO FTM2DOC
      SET FILTER TO
      STORE "No hay Documentos PROCESADOS marcados..." TO mmSj
      DO poNmsj
      = INKEY(0.5)
      RETURN
 ENDIF
 SET ORDER TO FTM2DOC
 SET FILTER TO ftM2est="2"
 GOTO TOP
 STORE ftM2tdo TO ptDo
 STORE ftM2ser TO psEr
 STORE ftM2doc TO pdOc
 DO CASE
      CASE pnUm=1
           ptX1 = "¿Desea CERRAR este Documento PRO?"
           ptX2 = "DOCUMENTO No.:"+ptDo+":"+psEr+"-"+pdOc
           poPc = MESSAGEBOX(ptX1, 0036, ptX2)
      OTHERWISE
           ptX1 = "¿Desea CERRAR los Documentos PRO marcados?"
           ptX2 = " "
           poPc = MESSAGEBOX(ptX1, 0036)
 ENDCASE
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "5"
 SELECT teMporal
 SET ORDER TO F2400DOC
 SELECT caB_cpra
 STORE 99 TO mkEy
 DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM2tdo TO ptDo
      STORE ftM2ser TO psEr
      STORE ftM2doc TO pdOc
      SELECT caB_cpra
      SEEK ptDo+psEr+pdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ptDo+psEr+pdOc
                IF mkEy=k_Esc
                     UNLOCK ALL
                     WAIT CLEAR
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT teMporal_2
      SKIP
 ENDDO
 SELECT teMporal_2
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM2tdo TO ptDo
      STORE ftM2ser TO psEr
      STORE ftM2doc TO pdOc
      SELECT caB_cpra
      SEEK ptDo+psEr+pdOc
      IF  .NOT. EOF()
           REPLACE f2400est WITH "3"
           REPLACE f2400usu WITH muSu
           REPLACE f2400maq WITH mmAq
           REPLACE f2400dat WITH DATE()
           REPLACE f2400tim WITH TIME()
           UNLOCK
           IF vsW1=2
                SELECT teMporal
                SEEK ptDo+psEr+pdOc
                REPLACE f2400est WITH "3"
                REPLACE f2400usu WITH muSu
                REPLACE f2400maq WITH mmAq
                REPLACE f2400dat WITH DATE()
                REPLACE f2400tim WITH TIME()
           ENDIF
      ENDIF
      SELECT teMporal_2
      SKIP
 ENDDO
 SELECT teMporal_2
 SET FILTER TO
 ZAP
 REINDEX
 RELEASE ptX1, ptX2, poPc, pnUm, ptDo, psEr, pdOc
ENDPROC
*
PROCEDURE Anu_2400b
 PRIVATE ptX1, ptX2, poPc, pmOn, ptCa, ppRe, pnUm
 = INKEY(0.01)
 ptX1 = "¿Desea Anular este Documento?"
 ptX2 = "DOCUMENTO No.:"+vtDo+":"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO grAbar WITH "4"
 SELECT deT_sal_caja
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "No se puede anular Documento porque tiene Pagos en Caja..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(1)
      = INKEY(1)
      RETURN
 ENDIF
 SELECT deT_sal_bancos
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "No se puede anular Documento porque tiene Pagos en Bancos..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT caB_cpra
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
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
           STORE 99 TO mkEy
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE SUBSTR(DTOC(f2400fin), 1, 2) TO xdIa
 STORE SUBSTR(DTOC(f2400fin), 4, 2) TO xmEs
 STORE SUBSTR(DTOC(f2400fin), 7, 4) TO xaNo
 STORE f2400sor TO csOr
 STORE f2400ord TO coRd
 STORE f2400est TO ceSt
 STORE "1" TO ctP1, ctI1
 IF f2400td1="NC"
      STORE "2" TO ctI1
 ENDIF
 IF ceSt$"23"
      SELECT peNd_cpras
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(coRd))<>0
      WAIT WINDOW NOWAIT "Verificando Orden..."
      SELECT caB_orden
      SEEK "OC"+csOr+coRd
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH "OC"+csOr+coRd
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           STORE f2910mon TO pmOn
           STORE f2910tca TO ptCa
           SELECT moNedas
           SEEK pmOn
           IF EOF()
                STORE 1 TO pmOn
           ELSE
                STORE f9226tpo TO pmOn
           ENDIF
      ENDIF
 ENDIF
 SELECT deT_cpra
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc
      STORE f2401cod TO vcOd
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_cpra
           SKIP
           LOOP
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                STORE 99 TO mkEy
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
                STORE 99 TO mkEy
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT deT_cpra
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_cpra
 REPLACE f2400est WITH "9"
 REPLACE f2400usu WITH muSu
 REPLACE f2400maq WITH mmAq
 REPLACE f2400dat WITH DATE()
 REPLACE f2400tim WITH TIME()
 IF vsW1=2
      SELECT teMporal
      REPLACE f2400est WITH "9"
      REPLACE f2400usu WITH muSu
      REPLACE f2400maq WITH mmAq
      REPLACE f2400dat WITH DATE()
      REPLACE f2400tim WITH TIME()
 ENDIF
 IF ceSt$"23"
      SELECT peNd_cpras
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           REPLACE f3600tdo WITH SPACE(02)
           REPLACE f3600ser WITH SPACE(03)
           REPLACE f3600doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(coRd))<>0
      WAIT WINDOW NOWAIT "Grabando Orden..."
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT deT_cpra
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc
           STORE f2401cod TO vcOd
           STORE f2401can TO vcAn
           STORE f2401caj TO vcAj
           SELECT deT_orden
           GOTO TOP
           SEEK ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2911cod)+"*"+f2911tdo+ ;
              f2911ser+f2911doc=ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd
                IF f2911ctd>0
                     STORE f2911ite TO vrEc
                     SEEK ALLTRIM(vcOd)+"*"+"OC"+csOr+coRd+STR(vrEc, 4, 0)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+"OC"+csOr+ ;
                             coRd+STR(vrEc, 4, 0)
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO CASE
                          CASE f2911ctd>=vcAn
                               REPLACE f2911ctd WITH f2911ctd-vcAn
                               REPLACE f2911cjd WITH f2911cjd-vcAj
                               STORE f2911pre TO ppRe
                               UNLOCK
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp+vcAn
                               DO CASE
                                    CASE pmOn=1
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          ((vcAn*ppRe)/ptCa)
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          (vcAn*ppRe)
                                    CASE pmOn=2
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          ((vcAn*ppRe)*ptCa)
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          (vcAn*ppRe)
                               ENDCASE
                               UNLOCK
                               EXIT
                          OTHERWISE
                               STORE vcAn-f2911ctd TO vcAn
                               STORE vcAj-f2911cjd TO vcAj
                               REPLACE f2911ctd WITH 0
                               REPLACE f2911cjd WITH 0
                               UNLOCK
                               STORE f2911pre TO ppRe
                               SELECT stO_tot
                               GOTO TOP
                               REPLACE f2119orp WITH f2119orp+vcAn
                               DO CASE
                                    CASE pmOn=1
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          ((vcAn*ppRe)/ptCa)
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          (vcAn*ppRe)
                                    CASE pmOn=2
                                         REPLACE f2119vo1 WITH f2119vo1+ ;
                                          ((vcAn*ppRe)*ptCa)
                                         REPLACE f2119vo2 WITH f2119vo2+ ;
                                          (vcAn*ppRe)
                               ENDCASE
                               UNLOCK
                     ENDCASE
                     UNLOCK
                ENDIF
                SELECT deT_orden
                SKIP
           ENDDO
           SELECT deT_cpra
           SKIP
      ENDDO
      SELECT deT_orden
      DO orD_0000a WITH "2911", "A", "F2911DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK "OC"+csOr+coRd
      STORE 0 TO pnUm
      DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc="OC"+csOr+coRd
           IF f2911can-f2911ctd>0
                STORE 1 TO pnUm
           ENDIF
           SKIP
      ENDDO
      SELECT caB_orden
      SEEK "OC"+csOr+coRd
      IF  .NOT. EOF()
           IF pnUm=0
                REPLACE f2910est WITH "2"
           ELSE
                REPLACE f2910est WITH "3"
           ENDIF
           UNLOCK
      ENDIF
 ENDIF
 SELECT deT_cpra
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+vsEr+vdOc
      STORE f2401ite TO vrEc
      STORE f2401cod TO vcOd
      STORE f2401can TO vcAn
      STORE f2401caj TO vcAj
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                STORE 99 TO mkEy
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
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT kaRdex
      SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ ;
                   ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
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
           SEEK ALLTRIM(vcOd)+"*"+xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
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
           STORE f2990ano TO caNo
           STORE f2990mes TO cmEs
           STORE f2990dia TO cdIa
           STORE f2990tpo TO ctPo
           STORE f2990tpp TO ctPp
           STORE f2990tdo TO ctDo
           STORE f2990ser TO csEr
           STORE f2990doc TO cdOc
           SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ ;
                   ctPp+ctDo+csEr+cdOc
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
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
      SELECT deT_cpra
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT itE_cpra
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2402cod TO vcOd
      STORE f2402rcc TO vrCc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           IF mkEy=k_Esc
                STORE 99 TO mkEy
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
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2403tdo+f2403ser+f2403doc=vtDo+vsEr+vdOc
      STORE f2403cod TO vcOd
      STORE f2403ped TO vpD1
      STORE f2403sec TO vsEc
      STORE f2403pla TO vpLa
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                STORE 99 TO mkEy
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
      SELECT kaRdex_series
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+xaNo+xmEs+xdIa+ctI1+ctP1+ ;
           vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+ ;
                   xaNo+xmEs+xdIa+ctI1+ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
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
      SELECT seR_cpra
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. EOF()
           SKIP
      ELSE
           SET NEAR ON
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           SET NEAR OFF
      ENDIF
 ENDDO
 SELECT caB_cpra
 SET ORDER TO
 SET FILTER TO f2400est<>"9" .AND. LEN(ALLTRIM(f2400td1))<2 .AND. LEN(ALLTRIM(f2400sr1))<4 .AND. LEN(ALLTRIM(f2400fac))<10
 GOTO TOP
 IF BOF() .OR. EOF()
      SELECT nuMeracion
      SEEK "9C"
      IF  .NOT. EOF()
           REPLACE f9999num WITH "0000000"
      ENDIF
 ELSE
      SELECT nuMeracion
      SEEK "9C"
      IF EOF()
           APPEND BLANK
           REPLACE f9999tdo WITH "9C"
           REPLACE f9999ser WITH "999"
           REPLACE f9999num WITH "0000000"
      ENDIF
      REPLACE f9999num WITH "0000001"
 ENDIF
 SELECT caB_cpra
 SET FILTER TO
 RELEASE ptX1, ptX2, poPc, pmOn, ptCa, ppRe, pnUm
ENDPROC
*
PROCEDURE Eli_2400b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea ELIMINAR este Documento?"
 ptX2 = "DOCUMENTO No.:"+vtDo+":"+vsEr+"-"+vdOc
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "2"
 SELECT caB_cpra
 IF vsW1<>1 .OR. vsW0<>1
      DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
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
           STORE 99 TO mkEy
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f2400tdo WITH SPACE(02)
 REPLACE f2400ser WITH SPACE(03)
 REPLACE f2400doc WITH SPACE(07)
 DELETE
 UNLOCK
 IF vsW1=2
      SELECT teMporal
      DELETE
      PACK
 ENDIF
 DO orD_2400b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 DO seE_2400b WITH "i"
 SET NEAR OFF
 IF EOF()
      GOTO BOTTOM
 ENDIF
 DO paN_2400b
 STORE 99 TO mkEy
 STORE ifIl TO vfIl
 DO muE_2400b WITH "i", "v"
 DO seE_2400b WITH "v"
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Rs1_2400b
 SET READBORDER ON
 DO rs1_2400a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2400b WITH "R"
 DO CASE
      CASE wtPo$"13"
           DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
      CASE wtPo="2"
           DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "INTERN", mmF1+3, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Xls_2400b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO CASE
      CASE wtPo="4"
           DO xl0_0000a WITH "Compras", "Listado", 13
      OTHERWISE
           DO xl0_0000a WITH "Compras", "Listado", 31
 ENDCASE
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 1).vaLue = "Doc.Interno"
 pxLs.ceLls(3, 4).vaLue = "Est"
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,3)).meRge
 DO CASE
      CASE wtPo="4"
           pxLs.ceLls(3, 05).vaLue = "G.Remision"
           pxLs.ceLls(3, 07).vaLue = "Fecha"
           pxLs.ceLls(3, 08).vaLue = "Proveedor"
           pxLs.ceLls(3, 09).vaLue = "Ord-Cpra"
           pxLs.ceLls(3, 11).vaLue = "Pedido"
           pxLs.ceLls(3, 12).vaLue = "Observacion-1"
           pxLs.ceLls(3, 13).vaLue = "Observacion-2"
           pxLs.raNge(pxLs.ceLls(3,05), pxLs.ceLls(3,06)).meRge
           pxLs.raNge(pxLs.ceLls(3,09), pxLs.ceLls(3,10)).meRge
           pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(13)).nuMberformat = "@"
      OTHERWISE
           pxLs.ceLls(3, 05).vaLue = "Documento Real"
           pxLs.ceLls(3, 08).vaLue = "Emision"
           pxLs.ceLls(3, 09).vaLue = "G.Remision"
           pxLs.ceLls(3, 11).vaLue = "Fecha"
           pxLs.ceLls(3, 12).vaLue = "Proveedor"
           pxLs.ceLls(3, 13).vaLue = "RUC"
           pxLs.ceLls(3, 14).vaLue = "F.Registro"
           pxLs.ceLls(3, 15).vaLue = "Ord-Cpra"
           pxLs.ceLls(3, 17).vaLue = "Pedido"
           pxLs.ceLls(3, 18).vaLue = "Centro de Costos"
           pxLs.ceLls(3, 19).vaLue = "Forma de Pago"
           pxLs.ceLls(3, 20).vaLue = "Observacion-1"
           pxLs.ceLls(3, 21).vaLue = "Observacion-2"
           pxLs.ceLls(3, 22).vaLue = "% IGV"
           pxLs.ceLls(3, 23).vaLue = "Mon"
           pxLs.ceLls(3, 24).vaLue = "Valor-Venta"
           pxLs.ceLls(3, 25).vaLue = "Descuento"
           pxLs.ceLls(3, 26).vaLue = "Neto"
           pxLs.ceLls(3, 27).vaLue = "IGV"
           pxLs.ceLls(3, 28).vaLue = "Redondeo"
           pxLs.ceLls(3, 29).vaLue = "Total"
           pxLs.ceLls(3, 30).vaLue = "Usuario"
           pxLs.ceLls(3, 31).vaLue = "Fecha/Hora"
           pxLs.coLumns(22).nuMberformat = "##0"
           pxLs.raNge(pxLs.ceLls(3,05), pxLs.ceLls(3,07)).meRge
           pxLs.raNge(pxLs.ceLls(3,09), pxLs.ceLls(3,10)).meRge
           pxLs.raNge(pxLs.ceLls(3,15), pxLs.ceLls(3,16)).meRge
           pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(21)).nuMberformat = "@"
           pxLs.raNge(pxLs.coLumns(30), pxLs.coLumns(31)).nuMberformat = "@"
           pxLs.raNge(pxLs.coLumns(24), pxLs.coLumns(29)).nuMberformat =  ;
                     "###,###,##0.00"
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT caB_cpra
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6, 0))+ ;
           "... Leyendo Documento: "+f2400tdo+":"+f2400ser+"-"+f2400doc
      DO CASE
           CASE f2400est="1"
                STORE "Dig" TO xeSt
           CASE f2400est="2"
                STORE "Pro" TO xeSt
           CASE f2400est="3"
                STORE "Cer" TO xeSt
           CASE f2400est="9"
                STORE "Anu" TO xeSt
           OTHERWISE
                STORE "   " TO xeSt
      ENDCASE
      DO CASE
           CASE f2400mon=1
                STORE "S/." TO xsIg
           CASE f2400mon=2
                STORE "US$" TO xsIg
           OTHERWISE
                STORE "   " TO xsIg
      ENDCASE
      DO CASE
           CASE vsW1=1
                SELECT caB_cpra
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 01).vaLue = f2400tdo
      pxLs.ceLls(viT1, 02).vaLue = f2400ser
      pxLs.ceLls(viT1, 03).vaLue = f2400doc
      pxLs.ceLls(viT1, 04).vaLue = xeSt
      DO CASE
           CASE wtPo="4"
                pxLs.ceLls(viT1, 05).vaLue = f2400sr2
                pxLs.ceLls(viT1, 06).vaLue = f2400rem
                pxLs.ceLls(viT1, 07).vaLue = DTOC(f2400fin)
                pxLs.ceLls(viT1, 08).vaLue = f2400nom
                pxLs.ceLls(viT1, 09).vaLue = f2400sor
                pxLs.ceLls(viT1, 10).vaLue = f2400ord
                pxLs.ceLls(viT1, 11).vaLue = f2400ped
                pxLs.ceLls(viT1, 12).vaLue = f2400cm1
                pxLs.ceLls(viT1, 13).vaLue = f2400cm2
           OTHERWISE
                pxLs.ceLls(viT1, 05).vaLue = f2400td1
                pxLs.ceLls(viT1, 06).vaLue = f2400sr1
                pxLs.ceLls(viT1, 07).vaLue = f2400fac
                pxLs.ceLls(viT1, 08).vaLue = DTOC(f2400fem)
                pxLs.ceLls(viT1, 09).vaLue = f2400sr2
                pxLs.ceLls(viT1, 10).vaLue = f2400rem
                pxLs.ceLls(viT1, 11).vaLue = DTOC(f2400fin)
                pxLs.ceLls(viT1, 12).vaLue = f2400nom
                pxLs.ceLls(viT1, 13).vaLue = f2400ruc
                pxLs.ceLls(viT1, 14).vaLue = DTOC(f2400reg)
                pxLs.ceLls(viT1, 15).vaLue = f2400sor
                pxLs.ceLls(viT1, 16).vaLue = f2400ord
                pxLs.ceLls(viT1, 17).vaLue = f2400ped
                pxLs.ceLls(viT1, 18).vaLue = f2400ncc
                pxLs.ceLls(viT1, 19).vaLue = f2400nfp
                pxLs.ceLls(viT1, 20).vaLue = f2400cm1
                pxLs.ceLls(viT1, 21).vaLue = f2400cm2
                pxLs.ceLls(viT1, 22).vaLue = f2400pig
                pxLs.ceLls(viT1, 23).vaLue = xsIg
                pxLs.ceLls(viT1, 24).vaLue = f2400val
                pxLs.ceLls(viT1, 25).vaLue = f2400dct
                pxLs.ceLls(viT1, 26).vaLue = f2400net
                pxLs.ceLls(viT1, 27).vaLue = f2400igv
                pxLs.ceLls(viT1, 28).vaLue = f2400red
                pxLs.ceLls(viT1, 29).vaLue = f2400tot
                pxLs.ceLls(viT1, 30).vaLue = f2400usu
                pxLs.ceLls(viT1, 31).vaLue = DTOC(f2400dat)+"/"+f2400tim
      ENDCASE
      STORE viT1+1 TO viT1
      DO CASE
           CASE vsW1=1
                SELECT caB_cpra
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 DO xl1_0000a WITH 1
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caB_cpra
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2400b WITH "v"
ENDPROC
*
PROCEDURE Ord_2400b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "2400", "A", "F2400NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "2400", "A", "F2400FEM", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "2400", "A", "F2400FAC", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "A", "F2400DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "A", "F2400NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "A", "F2400FEM", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "A", "F2400FAC", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_2400b
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
                CASE vsW0=4
                     SEEK vtD1+ALLTRIM(vsR1)+"*"+ALLTRIM(vfAc)+"*"+vtDo+ ;
                          vsEr+vdOc
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
                CASE vsW0=4
                     SEEK itD1+ALLTRIM(isR1)+"*"+ALLTRIM(ifAc)+"*"+itDo+ ;
                          isEr+idOc
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
                CASE vsW0=4
                     SEEK utD1+ALLTRIM(usR1)+"*"+ALLTRIM(ufAc)+"*"+utDo+ ;
                          usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2400b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE inOm TO vnOm
           STORE ifEm TO vfEm
           STORE itD1 TO vtD1
           STORE isR1 TO vsR1
           STORE ifAc TO vfAc
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE ufEm TO vfEm
           STORE utD1 TO vtD1
           STORE usR1 TO vsR1
           STORE ufAc TO vfAc
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xfEm TO vfEm
           STORE xtD1 TO vtD1
           STORE xsR1 TO vsR1
           STORE xfAc TO vfAc
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cnOm TO vnOm
           STORE cfEm TO vfEm
           STORE ctD1 TO vtD1
           STORE csR1 TO vsR1
           STORE cfAc TO vfAc
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vnOm TO inOm
           STORE vfEm TO ifEm
           STORE vtD1 TO itD1
           STORE vsR1 TO isR1
           STORE vfAc TO ifAc
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vfEm TO xfEm
           STORE vtD1 TO xtD1
           STORE vsR1 TO xsR1
           STORE vfAc TO xfAc
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vnOm TO cnOm
           STORE vfEm TO cfEm
           STORE vtD1 TO ctD1
           STORE vsR1 TO csR1
           STORE vfAc TO cfAc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2400tdo TO vtDo
           STORE f2400ser TO vsEr
           STORE f2400doc TO vdOc
           STORE f2400nom TO vnOm
           STORE f2400fem TO vfEm
           STORE f2400td1 TO vtD1
           STORE f2400sr1 TO vsR1
           STORE f2400fac TO vfAc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2400tdo TO itDo
           STORE f2400ser TO isEr
           STORE f2400doc TO idOc
           STORE f2400nom TO inOm
           STORE f2400fem TO ifEm
           STORE f2400td1 TO itD1
           STORE f2400sr1 TO isR1
           STORE f2400fac TO ifAc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2400tdo TO utDo
           STORE f2400ser TO usEr
           STORE f2400doc TO udOc
           STORE f2400nom TO unOm
           STORE f2400fem TO ufEm
           STORE f2400td1 TO utD1
           STORE f2400sr1 TO usR1
           STORE f2400fac TO ufAc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2400b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO xlS_2400b
           STORE 99 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo="1"
           STORE k_F8 TO mkEy
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
      CASE mfIl>=vfB1-0.135 .AND. mfIl<=vfB1+1.7 .AND. mcCc>=vcB1-0.5  ;
           .AND. mcCc<=vcB1+1.9
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
           DO diS_2400b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2400b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2400b WITH "F", "v"
           DO diS_2400b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2400b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ pfIl+01, 02 SAY  ;
   "den que se ha elegido. No totaliza, pero si se puede seleccionar parte de"
 @ pfIl+02, 02 SAY  ;
   "la información. Si la Compra es x Transformación y no esta relacionada"
 @ pfIl+03, 02 SAY "aparece en letras verdes."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 23 SAY ":" STYLE "BT"
 @ pfIl+08, 23 SAY ":" STYLE "BT"
 @ pfIl+09, 23 SAY ":" STYLE "BT"
 @ pfIl+10, 23 SAY ":" STYLE "BT"
 @ pfIl+07, 04 SAY "ESC" STYLE "BT"
 @ pfIl+08, 04 SAY "F10" STYLE "BT"
 @ pfIl+09, 04 SAY "F1" STYLE "BT"
 @ pfIl+10, 04 SAY "F2" STYLE "BT"
 @ pfIl+07, 25 SAY "Regresar a Cabecera"
 @ pfIl+08, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 25 SAY "Ayuda del Programa"
 @ pfIl+10, 25 SAY "Muestra los productos de todas las compras marcadas"
 STORE pfIl+11 TO pfIl
 IF miMp=1
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "F5" STYLE "BT"
      @ pfIl, 25 SAY "Buscar x Pedido"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 23 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "F6" STYLE "BT"
 @ pfIl, 25 SAY "Cambio de Orden de Consulta"
 STORE pfIl+1 TO pfIl
 IF wtPo$"12"
      @ pfIl+0, 23 SAY ":" STYLE "BT"
      @ pfIl+1, 23 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "F7" STYLE "BT"
      @ pfIl+1, 04 SAY "F8" STYLE "BT"
      @ pfIl+0, 25 SAY "Marcar/Desmarcar Documento"
      IF wtPo="1"
           @ pfIl+1, 25 SAY "Procesar Documento(s) marcados"
      ELSE
           @ pfIl+1, 25 SAY "CERRAR Documento(s) marcados"
      ENDIF
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 23 SAY ":" STYLE "BT"
 @ pfIl+3, 23 SAY ":" STYLE "BT"
 @ pfIl+4, 23 SAY ":" STYLE "BT"
 @ pfIl+5, 23 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "F9" STYLE "BT"
 @ pfIl+3, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+4, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+5, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+0, 25 SAY "Buscar palabra o frase dentro del nombre o Razón"
 @ pfIl+1, 25 SAY "Social del Proveedor, Pedido o Comentario, Orden"
 @ pfIl+2, 25 SAY "de Compra, Guía de Remisión."
 @ pfIl+3, 25 SAY "Visualizar Contenido completo del Documento"
 @ pfIl+4, 25 SAY "Línea inferior"
 @ pfIl+5, 25 SAY "Línea superior"
 STORE pfIl+6 TO pfIl
 IF mrEs="3"
      @ pfIl+0, 23 SAY ":" STYLE "BT"
      @ pfIl+1, 23 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "FLECHA -->" STYLE "BT"
      @ pfIl+1, 04 SAY "FLECHA <--" STYLE "BT"
      @ pfIl+0, 25 SAY "Ver otros datos"
      @ pfIl+1, 25 SAY "Ver otros datos"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 23 SAY ":" STYLE "BT"
 @ pfIl+1, 23 SAY ":" STYLE "BT"
 @ pfIl+2, 23 SAY ":" STYLE "BT"
 @ pfIl+3, 23 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 04 SAY "HOME" STYLE "BT"
 @ pfIl+3, 04 SAY "END" STYLE "BT"
 @ pfIl+0, 25 SAY "Página siguiente"
 @ pfIl+1, 25 SAY "Página anterior"
 @ pfIl+2, 25 SAY "Primera línea"
 @ pfIl+3, 25 SAY "Última línea"
 STORE pfIl+4 TO pfIl
 IF wtPo$"23"
      @ pfIl, 23 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
      DO CASE
           CASE wtPo="2"
                @ pfIl, 25 SAY "Anulación del Documento"
           CASE wtPo="3"
                @ pfIl, 25 SAY "Eliminación del Documento"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF wtPo<>"4" .AND. (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right)
      @ pfIl+0, 23 SAY ":" STYLE "BT"
      @ pfIl+1, 23 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "CTRL -->" STYLE "BT"
      @ pfIl+1, 04 SAY "CTRL <--" STYLE "BT"
      @ pfIl+0, 25 SAY "Ver otros datos"
      @ pfIl+1, 25 SAY "Ver otros datos"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl, 23 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "TAB" STYLE "BT"
 @ pfIl, 25 SAY "Suma los documentos marcados"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2400b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Proveedor, Pedido, Orden o Comentario. Si la palabra o frase no se en-"
 @ pfIl+02, 02 SAY  ;
   "cuentra contenida en ninguno de los registros grabados, saldrá un men-"
 @ pfIl+03, 02 SAY  ;
   "saje y se regresará al Detalle. En caso de encontrase se regresará al"
 @ pfIl+04, 02 SAY "Detalle visualizando el resultado."
 @ pfIl+06, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 13 SAY "ESC" STYLE "BT"
 @ pfIl+09, 13 SAY "F10" STYLE "BT"
 @ pfIl+10, 13 SAY "F1" STYLE "BT"
 @ pfIl+11, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+08, 23 SAY "Regresar a Detalle"
 @ pfIl+09, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 23 SAY "Ayuda del Programa"
 @ pfIl+11, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl3_2400b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da solo en los documentos de compra, no en los docu-"
 @ pfIl+01, 02 SAY  ;
   "mentos internos, sino en las reales. Si la palabra o frase no se en-"
 @ pfIl+02, 02 SAY  ;
   "cuentra contenida en ninguno de los registros grabados, saldrá un men-"
 @ pfIl+03, 02 SAY  ;
   "saje y se regresará al Detalle. En caso de encontrase se regresará al"
 @ pfIl+04, 02 SAY "Detalle visualizando el resultado."
 @ pfIl+06, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 23 SAY ":" STYLE "BT"
 @ pfIl+09, 23 SAY ":" STYLE "BT"
 @ pfIl+10, 23 SAY ":" STYLE "BT"
 @ pfIl+11, 23 SAY ":" STYLE "BT"
 @ pfIl+12, 23 SAY ":" STYLE "BT"
 @ pfIl+13, 23 SAY ":" STYLE "BT"
 @ pfIl+14, 23 SAY ":" STYLE "BT"
 @ pfIl+15, 23 SAY ":" STYLE "BT"
 @ pfIl+16, 23 SAY ":" STYLE "BT"
 @ pfIl+08, 03 SAY "ESC" STYLE "BT"
 @ pfIl+09, 03 SAY "F10" STYLE "BT"
 @ pfIl+10, 03 SAY "F1" STYLE "BT"
 @ pfIl+11, 03 SAY "ENTER" STYLE "BT"
 @ pfIl+12, 03 SAY "TAB" STYLE "BT"
 @ pfIl+13, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+14, 03 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+15, 03 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+16, 03 SAY "CTRL END" STYLE "BT"
 @ pfIl+08, 25 SAY "Regresar a Detalle"
 @ pfIl+09, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 25 SAY "Ayuda del Programa"
 @ pfIl+11, 25 SAY "Ir al siguiente campo"
 @ pfIl+12, 25 SAY "Buscar documentos y mostrar el Detalle"
 @ pfIl+13, 25 SAY "Ir al campo inferior"
 @ pfIl+14, 25 SAY "Ir al campo superior"
 @ pfIl+15, 25 SAY "Ir al primer campo"
 @ pfIl+16, 25 SAY "Ir al último campo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
