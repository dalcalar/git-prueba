 DO muE_3510a
 SELECT deT_ing_caja
 SEEK vaNo+vmEs+vsEr+vnUm
 IF EOF()
      STORE 1 TO vsW2
 ELSE
      STORE 2 TO vsW2
 ENDIF
 DO p00_3510c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW2=1
      DO WHILE .T.
           DO reS_0000a
           IF mrEs<>mrSs
                DO reS_3510c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           ENDIF
           IF mkEy=k_Clic
                DO clP_coo
                DO clP_3510c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           ENDIF
           DO CASE
                CASE mkEy=k_Esc .OR. mkEy=k_Clic
                     STORE 99 TO mkEy
                     EXIT
                CASE mkEy=k_F1
                     DO hl1_3510c
                CASE mkEy=k_F10
                     DO reTorna
                CASE mkEy=k_F12
                     DO reS_3510c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                CASE mkEy=k_Ctrl_p
                     DO imP_3510c
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
 SELECT deT_ing_caja
 DO paN_3510c
 STORE ifFs TO vfFs
 DO muE_3510c WITH "i", "v"
 DO seE_3510c WITH "v"
 DO diS_3510c WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3510c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3510c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl2_3510c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3510c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                DO imP_3510c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_ing_caja
                DO seE_3510c WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vaNo+vmEs+vsEr+vnUm
                DO CASE
                     CASE f3511tdo+f3511sr1+f3511doc=itDo+isR1+idOc .AND.  ;
                          vtDo+vsR1+vdOc=itDo+isR1+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsR1+vdOc=itDo+isR1+idOc
                                    DO paN_3510c
                               OTHERWISE
                                    DO seE_3510c WITH "v"
                                    DO diS_3510c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_3510c WITH "i", "v"
                          DO seE_3510c WITH "v"
                          DO diS_3510c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vaNo+vmEs+vsEr+vnUm+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f3511ano+f3511mes+f3511ser+f3511num<>vaNo+ ;
                   vmEs+vsEr+vnUm
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3511tdo+f3511sr1+f3511doc=utDo+usR1+udOc .AND.  ;
                          vtDo+vsR1+vdOc=utDo+usR1+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsR1+vdOc=utDo+usR1+udOc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_3510c
                               OTHERWISE
                                    DO seE_3510c WITH "v"
                                    DO diS_3510c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_3510c WITH "u", "v"
                          DO seE_3510c WITH "v"
                          DO diS_3510c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3511ano+f3511mes+f3511ser+f3511num<> ;
                          vaNo+vmEs+vsEr+vnUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3510c WITH "v"
                          DO diS_3510c WITH "N"
                          SKIP
                          IF vtDo+vsR1+vdOc=utDo+usR1+udOc
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3510c WITH ifFs, ffFs+1
                               DO muE_3510c WITH "F", "v"
                               DO muE_3510c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_3510c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_3510c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_3510c WITH "v"
                          DO diS_3510c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3511ano+f3511mes+f3511ser+f3511num<> ;
                          vaNo+vmEs+vsEr+vnUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3510c WITH "v"
                          DO diS_3510c WITH "N"
                          SKIP -1
                          IF vtDo+vsR1+vdOc=itDo+isR1+idOc
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3510c WITH ifFs, ffFs+1
                               DO muE_3510c WITH "F", "i"
                               DO muE_3510c WITH "F", "v"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_3510c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3510c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_3510c WITH "v"
                          DO diS_3510c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3510c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f3511ano+f3511mes+f3511ser+f3511num<> ;
                          vaNo+vmEs+vsEr+vnUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3510c
                          STORE ifFs TO vfFs
                          DO muE_3510c WITH "i", "v"
                          DO seE_3510c WITH "v"
                          DO diS_3510c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3510c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3511ano+f3511mes+f3511ser+f3511num<> ;
                          vaNo+vmEs+vsEr+vnUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f3511ano+f3511mes+f3511ser+ ;
                             f3511num<>vaNo+vmEs+vsEr+vnUm
                               GOTO TOP
                               SEEK vaNo+vmEs+vsEr+vnUm
                          ENDIF
                          DO paN_3510c
                          STORE ifFs TO vfFs
                          DO muE_3510c WITH "i", "v"
                          DO seE_3510c WITH "v"
                          DO diS_3510c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3510c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_3510c
 STORE ifFs TO vfFs, ufFs
 DO muE_3510c WITH "F", "i"
 DO muE_3510c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f3511ano+f3511mes+f3511ser+f3511num=vaNo+ ;
    vmEs+vsEr+vnUm .AND. vfFs<ffFs+1
      DO diS_3510c WITH "N"
      DO muE_3510c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_3510c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3510c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO muE_3510c WITH "F", "x"
 SELECT peNd_vtas
 SEEK xtDo+xsR1+xdOc
 IF EOF()
      STORE 0 TO ctOt
      STORE 1 TO cmOn
      STORE SPACE(70) TO cnOm, cnFp, cnTi
      STORE CTOD("  /  /    ") TO cfEm, cfVe
 ELSE
      STORE f3500nom TO cnOm
      STORE f3500fem TO cfEm
      STORE f3500fve TO cfVe
      STORE f3500mon TO cmOn
      STORE f3500tot TO ctOt
      STORE f3500nfp TO cnFp
      STORE f3500nti TO cnTi
 ENDIF
 SELECT deT_ing_caja
 @vFFS,vCO0+000.5 Say F3511TDO Font "&mLetAri",9 Style "NQ" Size 1,03.1 Pict "!!"
 @vFFS,vCO0+004.7 Say F3511SR1 Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
 @vFFS,vCO0+010.0 Say F3511DOC Font "&mLetAri",9 Style "NQ" Size 1,09.5 Pict "9999999"
 @vFFS,vCO0+020.6 Say cNOM     Font "&mLetAri",9 Style "NQ" Size 1,86.7 Pict "@S80"
 @vFFS,vCO0+108.4 Say cFEM     Font "&mLetAri",9 Style "NQ" Size 1,12.4
 @vFFS,vCO0+121.8 Say cNFP     Font "&mLetAri",9 Style "NQ" Size 1,12.4
 IF cmOn=1
      @vFFS,vCO0+135.2 Say "S/." Font "&mLetAri",9 Style "NQ" Size 1,4.8
 ELSE
      @vFFS,vCO0+135.2 Say "US$" Font "&mLetAri",9 Style "NQ" Size 1,4.8
 ENDIF
 @vFFS,vCO0+141.1 Say cTOT     Font "&mLetAri",9 Style "NQ" Size 1,14   Pict "999,999.99"
 @vFFS,vCO0+156.2 Say cNTI     Font "&mLetAri",9 Style "NQ" Size 1,19.8 Pict "@S21"
 @vFFS,vCO0+177.3 Say F3511PAG Font "&mLetAri",9 Style "NQ" Size 1,14   Pict "999,999.99"
ENDPROC
*
PROCEDURE P00_3510c
 PUBLIC pcLn, ptAm
 STORE vcO0+148.1 TO pcLn
 STORE 40.9 TO ptAm
 IF vsW2=1
      STORE vfI0+4 TO vfI0
      STORE ffFs-3 TO ffFs
      STORE ffFs-11 TO ffFs
 ENDIF
 RESTORE SCREEN FROM vpAn_12
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 SELECT deT_ing_caja
 IF vsW2=1
      DO cuAdro WITH vfI0, vcO0, vfI0+13.0, vcO0+vuCo
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
 @ vfI0+0.1, pcLn TO vfI0+8.35, pcLn+ptAm PATTERN 1 COLOR SCHEME 3
 @ vfI0+0.1, pcLn TO vfI0+0.10, pcLn+ptAm COLOR RGB(255,255,255,0,0,0)
 @ vfI0+0.1, pcLn TO vfI0+8.35, pcLn COLOR RGB(255,255,255,0,0,0)
 @vFI0+0.3,pCLN+0.9 Get xTPO Font "&mLetAri",10 Style "NQ" Default vTPO Function "*RVT &vTAB[1];&vTAB[2];&vTAB[3];&vTAB[4];&vTAB[5];&vTAB[6];&vTAB[7]"
 DO coLbln
 @vFI0-2.2,vCO0+02.0 Say "AÑO:"               Font "&mLetRom",10 Style "BT"
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
 READ TIMEOUT 0.01
 SET READBORDER OFF
 IF xeSt="9"
      DO coLblr
      @vFI0+7.8,vCO0+1 Say "A N U L A D O"    Font "&mLetRom",14 Style "BT"
 ENDIF
 IF vsW2=2
      DO p01_3510c
 ELSE
      DO p02_3510c
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
      STORE ffFs+3 TO ffFs
      STORE ffFs+11 TO ffFs
 ENDIF
ENDPROC
*
PROCEDURE P01_3510c
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
 @iFFS-1.4,vCO0+031.8 Say "Cliente"   Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+110.5 Say "Emisión"   Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+123.9 Say "F.Pago"    Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+139.4 Say "Monto-Doc" Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+163.0 Say "Titular"   Font "&mLetAri",9 Style "BQ"
 @iFFS-1.4,vCO0+181.1 Say "A Cuenta"  Font "&mLetAri",9 Style "BQ"
 @fFFS+1.3,vCO0+160.4 Say "Total"     Font "&mLetAri",9 Style "BQ"
 IF xmOn=1
      @fFFS+1.3,vCO0+167.4 Say "S/."    Font "&mLetAri",9 Style "BQ" Size 1,4
 ELSE
      @fFFS+1.3,vCO0+167.4 Say "US$"    Font "&mLetAri",9 Style "BQ" Size 1,4
 ENDIF
 @fFFS+1.3,vCO0+172.3 Say xTOT        Font "&mLetAri",9 Style "BQ" Size 1,16 Pict "99,999,999.99"
 DO liN_3510c WITH ifFs-0.2, ffFs+1.1
ENDPROC
*
PROCEDURE P02_3510c
 DO coLbln
 SET READBORDER ON
 @ vfI0+09.7, pcLn+1 TO vfI0+12.6, pcLn+35.4 PATTERN 1 COLOR SCHEME 7
 @ vfI0+09.7, pcLn+1 TO vfI0+09.7, pcLn+35.4 COLOR RGB(255,255,255,0,0,0)
 @ vfI0+09.7, pcLn+1 TO vfI0+12.6, pcLn+1 COLOR RGB(255,255,255,0,0,0)
 @vFI0+10.5,pCLN+03.4 Say "TOTAL" Font "&mLetRom",12 Style "BT"
 @vFI0+10.5,pCLN+16.4 Get  xTOT   Font "&mLetRom",12 Style "NQ" Pict "999,999.99" Size 1,13.6 Color ,&mColBlN
 READ TIMEOUT 0.01
 SET READBORDER OFF
ENDPROC
*
PROCEDURE Lin_3510c
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, vcO0+004.2 TO pfIn, vcO0+004.2
 @ piNi, vcO0+009.3 TO pfIn, vcO0+009.3
 @ piNi, vcO0+020.0 TO pfIn, vcO0+020.0
 @ piNi, vcO0+107.8 TO pfIn, vcO0+107.8
 @ piNi, vcO0+121.2 TO pfIn, vcO0+121.2
 @ piNi, vcO0+134.6 TO pfIn, vcO0+134.6
 @ piNi, vcO0+140.5 TO pfIn, vcO0+140.5
 @ piNi, vcO0+155.5 TO pfIn, vcO0+155.5
 @ piNi, vcO0+176.5 TO pfIn, vcO0+176.5
ENDPROC
*
PROCEDURE Res_3510c
 IF vsW2=2
      DO muE_3510c WITH "v", "c"
 ENDIF
 DO reS_3510b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 SAVE SCREEN TO vpAn_11
 DO p00_3510c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW2=2
      STORE 00 TO cfFs
      STORE ifFs TO vfFs
      SELECT deT_ing_caja
      DO seE_3510c WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
           IF f3511ano+f3511mes+f3511ser+f3511num+f3511tdo+f3511sr1+ ;
              f3511doc=vaNo+vmEs+vsEr+vnUm+vtDo+vsR1+vdOc
                STORE vfFs TO cfFs
                EXIT
           ENDIF
           STORE vfFs+1 TO vfFs
           SKIP
      ENDDO
      IF cfFs=0
           DO muE_3510c WITH "v", "i"
           DO muE_3510c WITH "v", "c"
           STORE ifFs TO vfFs, cfFs
      ENDIF
      DO seE_3510c WITH "i"
      DO paN_3510c
      STORE cfFs TO vfFs
      DO muE_3510c WITH "c", "v"
      DO seE_3510c WITH "v"
      DO diS_3510c WITH "R"
 ENDIF
ENDPROC
*
PROCEDURE Imp_3510c
 STORE 99 TO mkEy
 SELECT caB_ing_caja
 IF vsW1=2 .OR. vsW0<>1
      DO orD_0000a WITH "3510", "C", "F3510NUM", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SET READBORDER ON
 DO q1_0000a
 DO pcC3510z
 DO p1_0000a
 SET READBORDER OFF
 = INKEY(0.01)
 STORE 99 TO mkEy
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vsW1=1 .AND. vsW0<>1
      SELECT caB_ing_caja
      DO orD_3510b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE See_3510c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vaNo+vmEs+vsEr+vnUm+vtDo+vsR1+vdOc
      CASE psEe="i"
           SEEK vaNo+vmEs+vsEr+vnUm+itDo+isR1+idOc
      CASE psEe="u"
           SEEK vaNo+vmEs+vsEr+vnUm+utDo+usR1+udOc
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3510c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isR1 TO vsR1
           STORE idOc TO vdOc
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usR1 TO vsR1
           STORE udOc TO vdOc
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csR1 TO vsR1
           STORE cdOc TO vdOc
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsR1 TO csR1
           STORE vdOc TO cdOc
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsR1 TO isR1
           STORE vdOc TO idOc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f3511tdo TO vtDo
           STORE f3511sr1 TO vsR1
           STORE f3511doc TO vdOc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f3511tdo TO itDo
           STORE f3511sr1 TO isR1
           STORE f3511doc TO idOc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f3511tdo TO utDo
           STORE f3511sr1 TO usR1
           STORE f3511doc TO udOc
      CASE pmU1="F" .AND. pmU2="x"
           STORE f3511tdo TO xtDo
           STORE f3511sr1 TO xsR1
           STORE f3511doc TO xdOc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3510c
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
           DO diS_3510c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_3510c WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_3510c WITH "F", "v"
           DO diS_3510c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3510c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Voucher, tam-"
 @ pfIl+01, 02 SAY "bien se puede imprimir."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 11 SAY "ESC" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "F1" STYLE "BT"
 @ pfIl+08, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 31 SAY "Regresar a Detalle"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Imprimir Voucher"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3510c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los documentos que es-"
 @ pfIl+01, 02 SAY "tan contenidos en el voucher."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+12, 29 SAY ":" STYLE "BT"
 @ pfIl+13, 29 SAY ":" STYLE "BT"
 @ pfIl+14, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 11 SAY "ESC" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "F1" STYLE "BT"
 @ pfIl+08, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+11, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+12, 11 SAY "HOME/INICIO" STYLE "BT"
 @ pfIl+13, 11 SAY "ENDA/FIN" STYLE "BT"
 @ pfIl+14, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 31 SAY "Regresar a Detalle"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Línea inferior"
 @ pfIl+09, 31 SAY "Línea superior"
 @ pfIl+10, 31 SAY "Página siguiente"
 @ pfIl+11, 31 SAY "Página anterior"
 @ pfIl+12, 31 SAY "Primera línea"
 @ pfIl+13, 31 SAY "Última línea"
 @ pfIl+14, 31 SAY "Imprimir Voucher"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
