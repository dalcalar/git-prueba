 DO muE_3520a
 SELECT veNdedor
 SEEK xvEn
 IF  .NOT. EOF()
      STORE f9113nom TO xnVe
 ELSE
      STORE " " TO xnVe
 ENDIF
 SELECT deT_sal_caja
 SEEK vaNo+vmEs+vsEr+vnUm
 IF EOF()
      STORE 1 TO vsW2
 ELSE
      STORE 2 TO vsW2
 ENDIF
 DO p00_3520c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW2=1
      DO WHILE .T.
           DO reS_0000a
           IF mrEs<>mrSs
                DO reS_3520c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           ENDIF
           IF mkEy=k_Clic
                DO clP_coo
                DO clP_3520c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           ENDIF
           DO CASE
                CASE mkEy=k_Esc .OR. mkEy=k_Clic
                     STORE 99 TO mkEy
                     EXIT
                CASE mkEy=k_F1
                     DO hl1_3510c IN PCC3510C
                CASE mkEy=k_F10
                     DO reTorna
                CASE mkEy=k_F12
                     DO reS_3520c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                CASE mkEy=k_Ctrl_p
                     DO imP_3520c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
           ENDCASE
           IF LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           ENDIF
           mkEy = INKEY(0, "HM")
      ENDDO
      RETURN
 ENDIF
 SELECT deT_sal_caja
 DO paN_3520c
 STORE ifFs TO vfFs
 DO muE_3510c IN PCC3510C WITH "i", "v"
 DO seE_3510c IN PCC3510C WITH "v"
 DO diS_3520c WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3520c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3520c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl2_3510c IN PCC3510C
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3520c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                DO imP_3520c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_sal_caja
                DO seE_3510c IN PCC3510C WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vaNo+vmEs+vsEr+vnUm
                DO CASE
                     CASE f3521tdo+f3521sr1+f3521doc=itDo+isR1+idOc .AND.  ;
                          vtDo+vsR1+vdOc=itDo+isR1+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsR1+vdOc=itDo+isR1+idOc
                                    DO paN_3520c
                               OTHERWISE
                                    DO seE_3510c IN PCC3510C WITH "v"
                                    DO diS_3520c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_3510c IN PCC3510C WITH "i", "v"
                          DO seE_3510c IN PCC3510C WITH "v"
                          DO diS_3520c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vaNo+vmEs+vsEr+vnUm+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f3521ano+f3521mes+f3521ser+f3521num<>vaNo+ ;
                   vmEs+vsEr+vnUm
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3521tdo+f3521sr1+f3521doc=utDo+usR1+udOc .AND.  ;
                          vtDo+vsR1+vdOc=utDo+usR1+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsR1+vdOc=utDo+usR1+udOc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_3520c
                               OTHERWISE
                                    DO seE_3510c IN PCC3510C WITH "v"
                                    DO diS_3520c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_3510c IN PCC3510C WITH "u", "v"
                          DO seE_3510c IN PCC3510C WITH "v"
                          DO diS_3520c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3521ano+f3521mes+f3521ser+f3521num<> ;
                          vaNo+vmEs+vsEr+vnUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3510c IN PCC3510C WITH "v"
                          DO diS_3520c WITH "N"
                          SKIP
                          IF vtDo+vsR1+vdOc=utDo+usR1+udOc
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3510c IN PCC3510C WITH ifFs, ffFs+1
                               DO muE_3520c WITH "F", "v"
                               DO muE_3520c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_3520c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_3520c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_3510c IN PCC3510C WITH "v"
                          DO diS_3520c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3521ano+f3521mes+f3521ser+f3521num<> ;
                          vaNo+vmEs+vsEr+vnUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3510c IN PCC3510C WITH "v"
                          DO diS_3520c WITH "N"
                          SKIP -1
                          IF vtDo+vsR1+vdOc=itDo+isR1+idOc
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3510c IN PCC3510C WITH ifFs, ffFs+1
                               DO muE_3520c WITH "F", "i"
                               DO muE_3520c WITH "F", "v"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_3520c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3520c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_3510c IN PCC3510C WITH "v"
                          DO diS_3520c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3510c IN PCC3510C WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f3521ano+f3521mes+f3521ser+f3521num<> ;
                          vaNo+vmEs+vsEr+vnUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3520c
                          STORE ifFs TO vfFs
                          DO muE_3510c IN PCC3510C WITH "i", "v"
                          DO seE_3510c IN PCC3510C WITH "v"
                          DO diS_3520c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3510c IN PCC3510C WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3521ano+f3521mes+f3521ser+f3521num<> ;
                          vaNo+vmEs+vsEr+vnUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f3521ano+f3521mes+f3521ser+ ;
                             f3521num<>vaNo+vmEs+vsEr+vnUm
                               GOTO TOP
                               SEEK vaNo+vmEs+vsEr+vnUm
                          ENDIF
                          DO paN_3520c
                          STORE ifFs TO vfFs
                          DO muE_3510c IN PCC3510C WITH "i", "v"
                          DO seE_3510c IN PCC3510C WITH "v"
                          DO diS_3520c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3510c IN PCC3510C WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_3520c
 STORE ifFs TO vfFs, ufFs
 DO muE_3520c WITH "F", "i"
 DO muE_3520c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f3521ano+f3521mes+f3521ser+f3521num=vaNo+ ;
    vmEs+vsEr+vnUm .AND. vfFs<ffFs+1
      DO diS_3520c WITH "N"
      DO muE_3520c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_3510c IN PCC3510C WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3520c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO muE_3520c WITH "F", "x"
 SELECT peNd_cpras
 SEEK xtDo+xsR1+xdOc
 IF EOF()
      STORE 0 TO ctOt
      STORE 1 TO cmOn
      STORE SPACE(70) TO cnFp, cnOm
      STORE CTOD("  /  /    ") TO cfEm, cfVe
 ELSE
      STORE f3600nom TO cnOm
      STORE f3600fem TO cfEm
      STORE f3600fve TO cfVe
      STORE f3600mon TO cmOn
      STORE f3600tot TO ctOt
      STORE f3600nfp TO cnFp
 ENDIF
 SELECT deT_sal_caja
 @vFFS,vCO0+000.5 Say F3521TDO Font "&mLetAri",9 Style "NQ" Size 1,03.1 Pict "!!"
 @vFFS,vCO0+004.7 Say F3521SR1 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
 @vFFS,vCO0+010.0 Say F3521DOC Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"
 @vFFS,vCO0+020.6 Say cNOM     Font "&mLetAri",9 Style "NQ" Size 1,86.7 Pict "@S80"
 @vFFS,vCO0+108.4 Say cFEM     Font "&mLetAri",9 Style "NQ" Size 1,12.4
 @vFFS,vCO0+121.8 Say cFVE     Font "&mLetAri",9 Style "NQ" Size 1,12.4
 IF cmOn=1
      @vFFS,vCO0+135.2 Say "S/." Font "&mLetAri",9 Style "NQ" Size 1,4.8
 ELSE
      @vFFS,vCO0+135.2 Say "US$" Font "&mLetAri",9 Style "NQ" Size 1,4.8
 ENDIF
 @vFFS,vCO0+141.1 Say cTOT     Font "&mLetAri",9 Style "NQ" Size 1,14   Pict "999,999.99"
 @vFFS,vCO0+156.2 Say cNFP     Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "@S21"
 @vFFS,vCO0+177.3 Say F3521PAG Font "&mLetAri",9 Style "NQ" Size 1,14   Pict "999,999.99"
ENDPROC
*
PROCEDURE P00_3520c
 PUBLIC pcLn, ptAm
 STORE vcO0+148.1 TO pcLn
 STORE 40.9 TO ptAm
 IF vsW2=1
      STORE vfI0+4 TO vfI0
      STORE ffFs-14 TO ffFs
 ENDIF
 RESTORE SCREEN FROM vpAn_12
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 SELECT deT_sal_caja
 IF vsW2=1
      DO cuAdro WITH vfI0, vcO0, vfI0+14.0, vcO0+vuCo
 ELSE
      DO cuAdro WITH vfI0, vcO0, ffFs+02.8, vcO0+vuCo
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ROMBO", mmF1+0.6, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @mMF1+1.1,1.9 Say StrTran(Str(xCAJ,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
 @ vfI0-2.7, vcO0-0.6 TO vfI0-0.60, vcO0+61.0 PATTERN 1 COLOR SCHEME 7
 @ vfI0-2.7, vcO0-0.6 TO vfI0-2.70, vcO0+61.0 COLOR RGB(255,255,255,0,0,0)
 @ vfI0-2.7, vcO0-0.6 TO vfI0-0.60, vcO0-00.6 COLOR RGB(255,255,255,0,0,0)
 DO coL_fondo
 @ vfI0-2.7, vcO0+63 TO vfI0-0.60, vcO0+77 PATTERN 1
 @ vfI0-2.7, vcO0+63 TO vfI0-2.70, vcO0+77 COLOR RGB(255,255,255,0,0,0)
 @ vfI0-2.7, vcO0+63 TO vfI0-0.60, vcO0+63 COLOR RGB(255,255,255,0,0,0)
 SET READBORDER ON
 @ vfI0+0.1, pcLn TO vfI0+8.05, pcLn+ptAm PATTERN 1 COLOR SCHEME 3
 @ vfI0+0.1, pcLn TO vfI0+0.10, pcLn+ptAm COLOR RGB(255,255,255,0,0,0)
 @ vfI0+0.1, pcLn TO vfI0+8.05, pcLn COLOR RGB(255,255,255,0,0,0)
 @vFI0+0.6,pCLN+0.7 Get xTPO Font "&mLetAri",10 Style "NQ" Default vTPO Function "*RVT &vTAB[1];&vTAB[2];&vTAB[3];&vTAB[4];&vTAB[5];&vTAB[6]"
 DO coLbln
 @vFI0-2.2,vCO0+02.0 Say "A�O:"               Font "&mLetRom",10 Style "BT"
 @vFI0-2.2,vCO0+18.0 Say "MES:"               Font "&mLetRom",10 Style "BT"
 @vFI0-2.2,vCO0+30.0 Say "VOUCHER:"           Font "&mLetRom",10 Style "BT"
 @vFI0-2.2,vCO0+65.0 Say "DIA:"               Font "&mLetRom",10 Style "BT"
 @vFI0+0.5,vCO0+01.0 Say "Moneda"             Font "&mLetAri",10 Style "NT"
 @vFI0+0.5,vCO0+54.0 Say "Tipo de Cambio"     Font "&mLetAri",10 Style "NT"
 @vFI0+2.0,vCO0+01.0 Say "Glosa"              Font "&mLetAri",10 Style "NT"
 @vFI0+3.5,vCO0+01.0 Say "Tipo de Movimiento" Font "&mLetAri",10 Style "NT"
 @vFI0+5.0,vCO0+01.0 Say "Recibo"             Font "&mLetAri",10 Style "NT"
 @vFI0+5.0,vCO0+63.0 Say "Letra"              Font "&mLetAri",10 Style "NT"
 @vFI0-2.2,vCO0+10.0 Get  xANO                Font "&mLetAri",9  Style "BQ" Size 1,04.5                 Color ,&mColBlN
 @vFI0-2.2,vCO0+25.0 Get  xMES                Font "&mLetAri",9  Style "BQ" Size 1,02.2                 Color ,&mColBlN
 @vFI0-2.2,vCO0+45.0 Get  xNUM                Font "&mLetAri",9  Style "BQ" Size 1,08.2                 Color ,&mColBlN
 @vFI0-2.2,vCO0+72.0 Get  xDIA                Font "&mLetAri",9  Style "BQ" Size 1,02.2                 Color ,&mColBlN
 @vFI0+0.5,vCO0+74.3 Get  xTCA                Font "&mLetAri",9  Style "NQ" Size 1,11.2 Pict "99.99999" Color ,&mColBlN
 @vFI0+2.0,vCO0+12.0 Edit xGLO                Font "&mLetAri",9  Style "NQ" Size 1,74,80
 @vFI0+3.5,vCO0+25.0 Edit xNTI                Font "&mLetAri",9  Style "NQ" Size 1,61,50
 @vFI0+5.0,vCO0+12.0 Get  xRCB                Font "&mLetAri",9  Style "NQ" Size 1,10.5                 Color ,&mColBlN
 @vFI0+5.0,vCO0+71.0 Get  xSRL                Font "&mLetAri",9  Style "NQ" Size 1,03.8                 Color ,&mColBlN
 @vFI0+5.0,vCO0+76.0 Get  xLET                Font "&mLetAri",9  Style "NQ" Size 1,09.5                 Color ,&mColBlN
 @vFI0+0.5,vCO0+13.0 Get  xMON                Font "&mLetAri",9  Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 IF LEN(ALLTRIM(xcCo))<>0
      @vFI0+6.5,vCO0+01 Say "C.Costo"           Font "&mLetAri",10 Style "NT"
      @vFI0+6.5,vCO0+12 Edit xNCC               Font "&mLetAri",9  Style "NQ" Size 1,74,80
 ENDIF
 IF LEN(ALLTRIM(xvEn))<>0
      @vFI0+8.0,vCO0+01 Say "Vendedor"          Font "&mLetAri",10 Style "NT"
      @vFI0+8.0,vCO0+13 Edit xNVE               Font "&mLetAri",9  Style "NQ" Size 1,73,80
 ENDIF
 READ TIMEOUT 0.01
 SET READBORDER OFF
 IF xeSt="9"
      DO coLblr
      @vFI0+10.1,vCO0+1 Say "A N U L A D O"    Font "&mLetRom",14 Style "BT"
 ENDIF
 IF vsW2=2
      DO p01_3520c
 ELSE
      DO p02_3510c IN PCC3510C
 ENDIF
 DO coLsc1
 @fFFS+4.3,vCO0+143.8 Say " Usuario: "         Font "&mLetAri",9 Style "BQ"
 @fFFS+5.3,vCO0+143.8 Say " Fecha: "+Space(40) Font "&mLetAri",9 Style "BQ"
 @fFFS+5.3,vCO0+173.8 Say " Hora: "+Space(10)  Font "&mLetAri",9 Style "BQ"
 @fFFS+4.3,vCO0+154.0 Say xUSU                 Font "&mLetAri",9 Style "NQ" Size 1,38 Pict "@S30"
 @fFFS+5.3,vCO0+154.0 Say xDAT                 Font "&mLetAri",9 Style "NQ" Size 1,13
 @fFFS+5.3,vCO0+181.8 Say xTIM                 Font "&mLetAri",9 Style "NQ" Size 1,10.1
 IF vsW2=1
      STORE vfI0-4 TO vfI0
      STORE ffFs+14 TO ffFs
 ENDIF
ENDPROC
*
PROCEDURE P01_3520c
 DO coL_fondo
 @ ifFs-0.25, vcO0 TO ffFs+1.2, vcO0+vuCo PATTERN 1
 DO coLsc7
 @ ifFs-1.6, vcO0 TO ifFs-0.2, vcO0+vuCo PATTERN 1
 @ ffFs+1.1, vcO0 TO ffFs+2.6, vcO0+vuCo PATTERN 1
 @ ifFs-1.5, vcO0+20 TO ifFs-0.2, vcO0+20
 @ ifFs-1.5, vcO0+107.8 TO ifFs-0.2, vcO0+107.8
 @ ifFs-1.5, vcO0+121.2 TO ifFs-0.2, vcO0+121.2
 @ ifFs-1.5, vcO0+134.6 TO ifFs-0.2, vcO0+134.6
 @ ifFs-1.5, vcO0+155.5 TO ifFs-0.2, vcO0+155.5
 @ ifFs-1.5, vcO0+176.5 TO ifFs-0.2, vcO0+176.5
 @ ffFs+1.1, vcO0+155.5 TO ffFs+2.6, vcO0+vuCo
 @iFFS-1.4,vCO0+001.0 Say "Documento" Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+031.8 Say "Proveedor" Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+110.5 Say "Emisi�n"   Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+123.9 Say "Vencim"    Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+139.4 Say "Monto-Doc" Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+163.0 Say "F.Pago"    Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+181.1 Say "A Cuenta"  Font "&mLetAri",9 Style "BQ"
 @fFFS+1.3,vCO0+160.4 Say "Total"     Font "&mLetAri",9 Style "BQ"
 IF xmOn=1
      @fFFS+1.3,vCO0+167.4 Say "S/."    Font "&mLetAri",9 Style "BQ" Size 1,4
 ELSE
      @fFFS+1.3,vCO0+167.4 Say "US$"    Font "&mLetAri",9 Style "BQ" Size 1,4
 ENDIF
 @fFFS+1.3,vCO0+172.3 Say xTOT        Font "&mLetAri",9 Style "BQ" Size 1,16 Pict "99,999,999.99"
 DO liN_3510c IN PCC3510C WITH ifFs-0.2, ffFs+1.1
ENDPROC
*
PROCEDURE Res_3520c
 IF vsW2=2
      DO muE_3510c IN PCC3510C WITH "v", "c"
 ENDIF
 DO reS_3520b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 DO p00_3520c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW2=2
      STORE 00 TO cfFs
      STORE ifFs TO vfFs
      SELECT deT_sal_caja
      DO seE_3510c IN PCC3510C WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
           IF f3521ano+f3521mes+f3521ser+f3521num+f3521tdo+f3521sr1+ ;
              f3521doc=vaNo+vmEs+vsEr+vnUm+vtDo+vsR1+vdOc
                STORE vfFs TO cfFs
                EXIT
           ENDIF
           STORE vfFs+1 TO vfFs
           SKIP
      ENDDO
      IF cfFs=0
           DO muE_3510c IN PCC3510C WITH "v", "i"
           DO muE_3510c IN PCC3510C WITH "v", "c"
           STORE ifFs TO vfFs, cfFs
      ENDIF
      DO seE_3510c IN PCC3510C WITH "i"
      DO paN_3520c
      STORE cfFs TO vfFs
      DO muE_3510c IN PCC3510C WITH "c", "v"
      DO seE_3510c IN PCC3510C WITH "v"
      DO diS_3520c WITH "R"
 ENDIF
ENDPROC
*
PROCEDURE Imp_3520c
 STORE 99 TO mkEy
 SELECT caB_sal_caja
 IF vsW1=2 .OR. vsW0<>1
      DO orD_0000a WITH "3520", "C", "F3520NUM", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SET READBORDER ON
 DO q1_0000a
 DO pcC3520z
 DO p1_0000a
 SET READBORDER OFF
 = INKEY(0.01)
 STORE 99 TO mkEy
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW1=1 .AND. vsW0<>1
      SELECT caB_sal_caja
      DO orD_3520b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Mue_3520c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="F" .AND. pmU2="v"
           STORE f3521tdo TO vtDo
           STORE f3521sr1 TO vsR1
           STORE f3521doc TO vdOc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f3521tdo TO itDo
           STORE f3521sr1 TO isR1
           STORE f3521doc TO idOc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f3521tdo TO utDo
           STORE f3521sr1 TO usR1
           STORE f3521doc TO udOc
      CASE pmU1="F" .AND. pmU2="x"
           STORE f3521tdo TO xtDo
           STORE f3521sr1 TO xsR1
           STORE f3521doc TO xdOc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3520c
 = INKEY(0.01)
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
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. vsW2=2 .AND.  ;
           mcCc>=vcO0+22 .AND. mcCc<=vcO0+25.4
           DO diS_3520c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_3510c IN PCC3510C WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_3520c WITH "F", "v"
           DO diS_3520c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
