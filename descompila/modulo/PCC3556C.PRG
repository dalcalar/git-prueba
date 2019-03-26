 = INKEY(0.01)
 STORE 00 TO vtOt, viNt, vaCu
 SELECT tmP_detalle
 GOTO TOP
 SEEK vtIt
 DO WHILE  .NOT. EOF() .AND. ftM2tit=vtIt
      STORE vtOt+ftM2tot TO vtOt
      STORE viNt+ftM2int TO viNt
      STORE vaCu+ftM2acu TO vaCu
      SKIP
 ENDDO
 DO p00_3556c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tmP_detalle
 GOTO TOP
 SEEK vtIt
 DO paN_3556c
 STORE iaNo TO vaNo
 STORE imEs TO vmEs
 STORE ifFs TO vfFs
 SEEK vtIt+vaNo+vmEs
 DO diS_3556c WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3556c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3556c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3556c WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3556c WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3556c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3556c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_12
                vxLs = PUTFILE("Archivo Excel:", "XLS\RESUMENC.XLS", "XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM2ANO,FTM2MES,FTM2TOT,FTM2INT,FTM2ACU Type XLS
                     ENDCASE
                ENDIF
                SELECT tmP_detalle
                SEEK vtIt+vaNo+vmEs
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3556c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT tmP_detalle
                SEEK vtIt+vaNo+vmEs
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtIt
                DO CASE
                     CASE ftM2ano+ftM2mes=iaNo+imEs .AND. vaNo+vmEs=iaNo+imEs
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs=iaNo+imEs
                                    DO paN_3556c
                               OTHERWISE
                                    SEEK vtIt+vaNo+vmEs
                                    DO diS_3556c WITH "N"
                          ENDCASE
                          STORE iaNo TO vaNo
                          STORE imEs TO vmEs
                          STORE ifFs TO vfFs
                          SEEK vtIt+vaNo+vmEs
                          DO diS_3556c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtIt+"ZZZZ"
                SET NEAR OFF
                IF EOF() .OR. ftM2tit<>vtIt
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
                                    DO paN_3556c
                               OTHERWISE
                                    SEEK vtIt+vaNo+vmEs
                                    DO diS_3556c WITH "N"
                          ENDCASE
                          STORE uaNo TO vaNo
                          STORE umEs TO vmEs
                          STORE ufFs TO vfFs
                          SEEK vtIt+vaNo+vmEs
                          DO diS_3556c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ftM2tit<>vtIt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtIt+vaNo+vmEs
                          DO diS_3556c WITH "N"
                          SKIP
                          IF vaNo+vmEs=uaNo+umEs
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3556c WITH ifFs, ffFs+1
                               STORE ftM2ano TO uaNo, vaNo
                               STORE ftM2mes TO umEs, vmEs
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE ftM2ano TO iaNo
                               STORE ftM2mes TO imEs
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE ftM2ano TO vaNo
                               STORE ftM2mes TO vmEs
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK vtIt+vaNo+vmEs
                          DO diS_3556c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ftM2tit<>vtIt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtIt+vaNo+vmEs
                          DO diS_3556c WITH "N"
                          SKIP -1
                          IF vaNo+vmEs=iaNo+imEs
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_3556c WITH ifFs, ffFs+1
                               STORE ftM2ano TO iaNo, vaNo
                               STORE ftM2mes TO imEs, vmEs
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE ftM2ano TO uaNo
                                    STORE ftM2mes TO umEs
                               ENDIF
                          ELSE
                               STORE ftM2ano TO vaNo
                               STORE ftM2mes TO vmEs
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vtIt+vaNo+vmEs
                          DO diS_3556c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtIt+uaNo+umEs
                SKIP
                DO CASE
                     CASE EOF() .OR. ftM2tit<>vtIt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3556c
                          STORE iaNo TO vaNo
                          STORE imEs TO vmEs
                          STORE ifFs TO vfFs
                          SEEK vtIt+vaNo+vmEs
                          DO diS_3556c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtIt+iaNo+imEs
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ftM2tit<>vtIt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ftM2tit<>vtIt
                               GOTO TOP
                          ENDIF
                          DO paN_3556c
                          STORE iaNo TO vaNo
                          STORE imEs TO vmEs
                          STORE ifFs TO vfFs
                          SEEK vtIt+vaNo+vmEs
                          DO diS_3556c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtIt+vaNo+vmEs
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3556c
 STORE ifFs TO vfFs, ufFs
 STORE ftM2ano TO iaNo, uaNo
 STORE ftM2mes TO imEs, umEs
 DO WHILE  .NOT. EOF() .AND. ftM2tit=vtIt .AND. vfFs<ffFs+1
      DO diS_3556c WITH "N"
      STORE ftM2ano TO uaNo
      STORE ftM2mes TO umEs
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_3556c WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3556c
 PARAMETER pmEs
 DO CASE
      CASE pmEs="N"
           DO coL_fondo
      CASE pmEs="R"
           DO coLbln
 ENDCASE
 @vFFS,vCO0+00.5 Say FTM2ANO         Font "&mLetAri",9 Style "NQ" Pict "9999"           Size 1,06.0
 @vFFS,vCO0+07.5 Say FTM2MES         Font "&mLetAri",9 Style "NQ" Pict "99"             Size 1,03.0
 @vFFS,vCO0+11.5 Say FTM2TOT         Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
 @vFFS,vCO0+32.0 Say FTM2INT         Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
 @vFFS,vCO0+52.6 Say FTM2TOT+FTM2INT Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
 @vFFS,vCO0+73.2 Say FTM2ACU         Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
ENDPROC
*
PROCEDURE Lin_3556c
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, vcO0+06.9 TO pfIn, vcO0+06.9
 @ piNi, vcO0+10.8 TO pfIn, vcO0+10.8
 @ piNi, vcO0+31.5 TO pfIn, vcO0+31.5
 @ piNi, vcO0+52.0 TO pfIn, vcO0+52.0
 @ piNi, vcO0+72.7 TO pfIn, vcO0+72.7
ENDPROC
*
PROCEDURE P00_3556c
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ ifFs-2.0, vcO0+00.0 TO ffFs+2.4, vcO0+vuCo PATTERN 1
 @ ifFs-2.0, vcO0+00.0 TO ifFs-0.2, vcO0+vuCo PATTERN 1 COLOR SCHEME 3
 @ ffFs+1.1, vcO0+00.0 TO ffFs+2.4, vcO0+vuCo PATTERN 1 COLOR SCHEME 3
 DO liN_3556c WITH ifFs-2, ffFs+1.1
 @ ffFs+1.1, vcO0+10.8 TO ffFs+2.3, vcO0+10.8
 @ ffFs+1.1, vcO0+31.5 TO ffFs+2.3, vcO0+31.5
 @ ffFs+1.1, vcO0+52.0 TO ffFs+2.3, vcO0+52.0
 @ ffFs+1.1, vcO0+72.7 TO ffFs+2.3, vcO0+72.7
 DO coLsc3
 @iFFS-1.5,vCO0+01.5 Say "Año"             Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,vCO0+07.5 Say "Me"              Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,vCO0+53.6 Say "Total+Intereses" Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,vCO0+74.6 Say "Cancelaciones"   Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE mmOn=1
           @iFFS-1.5,vCO0+17 Say "Total S/."     Font "&mLetAri",9 Style "BT"
           @iFFS-1.5,vCO0+35 Say "Intereses S/." Font "&mLetAri",9 Style "BT"
      CASE mmOn=2
           @iFFS-1.5,vCO0+16 Say "Total US$"     Font "&mLetAri",9 Style "BT"
           @iFFS-1.5,vCO0+34 Say "Intereses US$" Font "&mLetAri",9 Style "BT"
 ENDCASE
 @fFFS+1.1,vCO0+11.5 Say vTOT      Font "&mLetAri",9 Style "NT" Pict "999,999,999.99" Size 1,19.6
 @fFFS+1.1,vCO0+32.0 Say vINT      Font "&mLetAri",9 Style "NT" Pict "999,999,999.99" Size 1,19.6
 @fFFS+1.1,vCO0+52.6 Say vTOT+vINT Font "&mLetAri",9 Style "NT" Pict "999,999,999.99" Size 1,19.6
 @fFFS+1.1,vCO0+73.2 Say vACU      Font "&mLetAri",9 Style "NT" Pict "999,999,999.99" Size 1,19.6
ENDPROC
*
PROCEDURE Res_3556c
 STORE vaNo TO caNo
 STORE vmEs TO cmEs
 DO reS_3556b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_3556c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tmP_detalle
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 SEEK vtIt+iaNo+imEs
 DO WHILE  .NOT. EOF() .AND. ftM2tit=vtIt .AND. vfFs<ffFs+1
      IF ftM2ano+ftM2mes=vaNo+vmEs
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE vaNo TO iaNo, caNo
      STORE vmEs TO imEs, cmEs
      STORE ifFs TO vfFs, cfFs
 ENDIF
 SEEK vtIt+iaNo+imEs
 DO paN_3556c
 STORE caNo TO vaNo
 STORE cmEs TO vmEs
 STORE cfFs TO vfFs
 SEEK vtIt+vaNo+vmEs
 DO diS_3556c WITH "R"
ENDPROC
*
PROCEDURE Imp_3556c
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
 DO reP_3556c
 DO fpR_0000a
 STORE 00 TO meRr
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3556c
 PRIVATE ptAm
 DO coLbln
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE mvIs=0
           STORE 92 TO ptAm
           STORE 10 TO mcLn
      CASE mvIs=1
           STORE 98 TO ptAm
           STORE 24 TO mcLn
 ENDCASE
 DO caB_3556c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN       Say FTM1TIT         Font "&mLetAri",9 Style "NQ" Size 1,6
                @vLIN,mCLN+008   Say FTM1NTI         Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S53"
                @vLIN,mCLN+061   Say FTM1NUV         Font "&mLetAri",9 Style "NQ" Size 1,05 Pict "99"
                @vLIN,mCLN+066.3 Say FTM1TOT+FTM1INT Font "&mLetAri",9 Style "BQ" Size 1,17 Pict "9999,999,999.99"
                @vLIN,mCLN+090   Say FTM1NUM         Font "&mLetAri",9 Style "NQ" Size 1,05 Pict "99"
                @vLIN,mCLN+095.3 Say FTM1ACU         Font "&mLetAri",9 Style "BQ" Size 1,17 Pict "9999,999,999.99"
                @vLIN,mCLN+116.3 Say FTM1ACU/FTM1NUM Font "&mLetAri",9 Style "BQ" Size 1,17 Pict "9999,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN     Say FTM1TIT         Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+06  Say FTM1NTI         Font "&mLetAri",9 Style "NQ" Size 1,35 Pict "@S38"
                @vLIN,mCLN+60  Say FTM1NUV         Font "&mLetAri",9 Style "NQ" Size 1,05 Pict "99"
                @vLIN,mCLN+70  Say FTM1TOT+FTM1INT Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
                @vLIN,mCLN+90  Say FTM1NUM         Font "&mLetAri",9 Style "NQ" Size 1,05 Pict "99"
                @vLIN,mCLN+100 Say FTM1ACU         Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
                @vLIN,mCLN+120 Say FTM1ACU/FTM1NUM Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN     Say FTM1TIT         Font "&mLetSwi",9 Style "NQ"
                @vLIN,mCLN+06  Say FTM1NTI         Font "&mLetSwi",9 Style "NQ" Size 1,35 Pict "@S38"
                @vLIN,mCLN+60  Say FTM1NUV         Font "&mLetSwi",9 Style "NQ" Size 1,05 Pict "99"
                @vLIN,mCLN+70  Say FTM1TOT+FTM1INT Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
                @vLIN,mCLN+90  Say FTM1NUM         Font "&mLetSwi",9 Style "NQ" Size 1,05 Pict "99"
                @vLIN,mCLN+100 Say FTM1ACU         Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
                @vLIN,mCLN+120 Say FTM1ACU/FTM1NUM Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
      ENDCASE
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
           DO caB_3556c
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+72 Say "Pagos:" Font "&mLetAri",9 Style "BQ"
                CASE mpRt="1"
                     @vLIN,mCLN+72 Say "Pagos:" Font "&mLetAri",9 Style "NQ"
                CASE mpRt="2"
                     @vLIN,mCLN+72 Say "Pagos:" Font "&mLetSwi",9 Style "NQ"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO WHILE  .NOT. EOF() .AND. ftM2tit=ctIt
           IF mkEy=k_F10 .AND. mvIs=1
                DO reTorna
           ENDIF
           IF vpAg>muPg
                EXIT
           ENDIF
           IF vlIn>mpAg-3
                DO caB_3556c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN+086.5 Say FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ"
                          @vLIN,mCLN+097.0 Say FTM2ACU             Font "&mLetAri",9 Style "NQ" Size 1,19 Pict "9999,999,999.99"
                     CASE mpRt="1"
                          @vLIN,mCLN+084.5 Say FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ"
                          @vLIN,mCLN+100.0 Say FTM2ACU             Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN+084.5 Say FTM2MES+"/"+FTM2ANO Font "&mLetSwi",9 Style "NQ"
                          @vLIN,mCLN+100.0 Say FTM2ACU             Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "9999,999,999.99"
                ENDCASE
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SKIP
      ENDDO
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3556c
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
      @vLIN,mCLN Say "Titular: "+vNTI Font "&mLetAri",10 Style "NT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2 TO vlIn
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
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN       Say "Titular"  Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+062.0 Say "#M"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+079.0 Say "Ventas"   Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+091.0 Say "#M"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+108.5 Say "Pagos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+125.8 Say "Promedio" Font "&mLetAri",9 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN       Say "Titular"  Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+060.5 Say "#M"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+079.0 Say "Ventas"   Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+090.5 Say "#M"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+109.5 Say "Pagos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+125.0 Say "Promedio" Font "&mLetAri",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "Titular"  Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+060.5 Say "#M"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+079.0 Say "Ventas"   Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+090.5 Say "#M"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+109.5 Say "Pagos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+125.0 Say "Promedio" Font "&mLetAri",9 Style "BQ"
      ENDCASE
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
PROCEDURE Clp_3556c
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
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           DO diS_3556c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtIt+iaNo+imEs
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE ftM2ano TO vaNo
           STORE ftM2mes TO vmEs
           DO diS_3556c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3556c
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "En esta parte de la consulta, se muestra el detalle mensual de las ven-"
 @ 1.200, 02 SAY "tas, intereses y cancelaciones."
 @ 3.200, 02 SAY "Las teclas para movilizarse son:"
 @ 5.200, 33 SAY ":" STYLE "BT"
 @ 6.200, 33 SAY ":" STYLE "BT"
 @ 7.200, 33 SAY ":" STYLE "BT"
 @ 8.200, 33 SAY ":" STYLE "BT"
 @ 9.200, 33 SAY ":" STYLE "BT"
 @ 10.200, 33 SAY ":" STYLE "BT"
 @ 11.200, 33 SAY ":" STYLE "BT"
 @ 12.200, 33 SAY ":" STYLE "BT"
 @ 13.200, 33 SAY ":" STYLE "BT"
 @ 14.200, 33 SAY ":" STYLE "BT"
 @ 5.200, 14 SAY "ESC" STYLE "BT"
 @ 6.200, 14 SAY "F10" STYLE "BT"
 @ 7.200, 14 SAY "F1" STYLE "BT"
 @ 8.200, 14 SAY "F8" STYLE "BT"
 @ 9.200, 14 SAY "FLECHA ABAJO" STYLE "BT"
 @ 10.200, 14 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 11.200, 14 SAY "PAGE DOWN" STYLE "BT"
 @ 12.200, 14 SAY "PAGE UP" STYLE "BT"
 @ 13.200, 14 SAY "HOME" STYLE "BT"
 @ 14.200, 14 SAY "END" STYLE "BT"
 @ 5.200, 35 SAY "Regresar a Cabecera"
 @ 6.200, 35 SAY "Cerrar y regresar a Windows"
 @ 7.200, 35 SAY "Ayuda del Programa"
 @ 8.200, 35 SAY "Pasar Datos a Excel"
 @ 9.200, 35 SAY "Línea inferior"
 @ 10.200, 35 SAY "Línea superior"
 @ 11.200, 35 SAY "Página siguiente"
 @ 12.200, 35 SAY "Página anterior"
 @ 13.200, 35 SAY "Primera línea"
 @ 14.200, 35 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
