 = INKEY(0.01)
 STORE 0 TO vsWz
 STORE " " TO cpA1
 STORE 1 TO vsW3
 STORE 1 TO vsW4
 DO CASE
      CASE vsW1=01
           SELECT caB_remi
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 DO muE_2600a
 SELECT clIentes
 SEEK xtIt
 STORE f1101nom TO xnTt
 SELECT deT_remi
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 PRIVATE ppIe
 STORE 0 TO tcO1, tcO2, tpEs, tcAn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO CASE
           CASE f2601tpo=1 .AND. f2601la1<>0 .AND. f2601an1<>0
                STORE ROUND(f2601la1*f2601an1*mfCt, 8) TO ppIe
           CASE f2601tpo=1 .AND. f2601la2<>0 .AND. f2601an2<>0
                STORE ROUND(f2601la2*f2601an2/mfCp, 8) TO ppIe
           OTHERWISE
                STORE 1 TO ppIe
      ENDCASE
      STORE tcO1+(f2601can*f2601co1*ppIe) TO tcO1
      STORE tcO2+(f2601can*f2601co2*ppIe) TO tcO2
      STORE tpEs+f2601pes TO tpEs
      STORE tcAn+f2601can TO tcAn
      SKIP
 ENDDO
 RELEASE ppIe
 DO p00_2600c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_remi
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_2600c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_2600c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2600c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2600c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2600c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2600c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Left
                IF vsW4=1
                     STORE 5 TO vsW4
                ELSE
                     STORE vsW4-1 TO vsW4
                ENDIF
                DO rs2_2600c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right
                IF vsW4=5
                     STORE 1 TO vsW4
                ELSE
                     STORE vsW4+1 TO vsW4
                ENDIF
                DO rs2_2600c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                ENDIF
                DO rs2_2600c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. wtPo="2" .AND. vsW3=1 .AND.  ;
                LEN(ALLTRIM(xtIt))<>0
                STORE "N" TO moPc
                DO prE_docum WITH "¿Está seguro de querer borrar el Titular?"
                IF moPc$"Ss"
                     DO btI_2600c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_remi
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                STORE 99 TO mkEy
           CASE mkEy=k_F6 .AND. wtPo="2" .AND. vsW3=1
                DO tiT_2600c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_remi
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. vsW3=1
                SAVE SCREEN TO vpAn_12
                SET READBORDER ON
                DO coLbln
                STORE 40 TO ccO0
                @ vfI0-0.8, vcO0+ccO0+08 TO vfI0+9.4, vcO0+ccO0+114 PATTERN 1
                @vFI0+0.0,vCO0+cCO0+10 Say "Transportista" Font "&mLetRom",11 Style "BQ"
                @vFI0+1.5,vCO0+cCO0+10 Say "Razón Social"  Font "&mLetRom",11 Style "BQ"
                @vFI0+3.0,vCO0+cCO0+10 Say "Dirección"     Font "&mLetRom",11 Style "BQ"
                @vFI0+4.5,vCO0+cCO0+10 Say "Distrito"      Font "&mLetRom",11 Style "BQ"
                @vFI0+6.0,vCO0+cCO0+10 Say "Departamento"  Font "&mLetRom",11 Style "BQ"
                @vFI0+7.5,vCO0+cCO0+10 Say "R.U.C."        Font "&mLetRom",11 Style "BQ"
                @vFI0+0.0,vCO0+cCO0+31 Edit xTRA           Font "&mLetAri",9 Style "NQ" Size 1,06,04
                @vFI0+1.5,vCO0+cCO0+31 Edit xTNO           Font "&mLetAri",9 Style "NQ" Size 1,80,70
                @vFI0+3.0,vCO0+cCO0+31 Edit xTDI           Font "&mLetAri",9 Style "NQ" Size 1,80,70
                @vFI0+4.5,vCO0+cCO0+31 Edit xTDS           Font "&mLetAri",9 Style "NQ" Size 1,30,25
                @vFI0+6.0,vCO0+cCO0+31 Edit xTDP           Font "&mLetAri",9 Style "NQ" Size 1,30,25
                @vFI0+7.5,vCO0+cCO0+31 Edit xTRU           Font "&mLetAri",9 Style "NQ" Size 1,17,11
                READ TIMEOUT 0.01
                SET READBORDER OFF
                mkEy = INKEY(0, "HM")
                RESTORE SCREEN FROM vpAn_12
           CASE mkEy=k_F8 .AND. vsW3=1
                SAVE SCREEN TO vpAn_12
                SET READBORDER ON
                DO coLbln
                STORE 40 TO ccO0
                @ vfI0-0.8, vcO0+ccO0+08 TO vfI0+4.9, vcO0+ccO0+114 PATTERN 1
                @vFI0+0.0,vCO0+cCO0+10 Say "Chofer"   Font "&mLetRom",11 Style "BQ"
                @vFI0+1.5,vCO0+cCO0+10 Say "Nombre"   Font "&mLetRom",11 Style "BQ"
                @vFI0+3.0,vCO0+cCO0+10 Say "Licencia" Font "&mLetRom",11 Style "BQ"
                @vFI0+0.0,vCO0+cCO0+31 Edit xCC1      Font "&mLetAri",9  Style "NQ" Size 1,04,02
                @vFI0+1.5,vCO0+cCO0+31 Edit xCHO      Font "&mLetAri",9  Style "NQ" Size 1,80,70
                @vFI0+3.0,vCO0+cCO0+31 Edit xLC1      Font "&mLetAri",9  Style "NQ" Size 1,40,30
                READ TIMEOUT 0.01
                SET READBORDER OFF
                mkEy = INKEY(0, "HM")
                RESTORE SCREEN FROM vpAn_12
           CASE mkEy=k_F9 .AND. vsW3=1
                SAVE SCREEN TO vpAn_12
                SET READBORDER ON
                DO coLbln
                STORE 40 TO ccO0
                @ vfI0-0.8, vcO0+ccO0+08 TO vfI0+4.9, vcO0+ccO0+114 PATTERN 1
                @vFI0+0.0,vCO0+cCO0+10 Say "Ayudante" Font "&mLetRom",11 Style "BQ"
                @vFI0+1.5,vCO0+cCO0+10 Say "Nombre"   Font "&mLetRom",11 Style "BQ"
                @vFI0+3.0,vCO0+cCO0+10 Say "Licencia" Font "&mLetRom",11 Style "BQ"
                @vFI0+0.0,vCO0+cCO0+31 Edit xCC2      Font "&mLetAri",9  Style "NQ" Size 1,04,02
                @vFI0+1.5,vCO0+cCO0+31 Edit xCH2      Font "&mLetAri",9  Style "NQ" Size 1,80,70
                @vFI0+3.0,vCO0+cCO0+31 Edit xLC2      Font "&mLetAri",9  Style "NQ" Size 1,40,30
                READ TIMEOUT 0.01
                SET READBORDER OFF
                mkEy = INKEY(0, "HM")
                RESTORE SCREEN FROM vpAn_12
           CASE mkEy=k_Ctrl_p
                SELECT caB_remi
                IF vsW0<>1 .OR. vsW1=2
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SET READBORDER ON
                DO q1_0000a
                DO paI2600z WITH "1"
                DO p1_0000a
                SET READBORDER OFF
                = INKEY(0.01)
                UNLOCK ALL
                STORE 99 TO mkEy
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT caB_remi
                IF vsW0<>01
                     DO orD_2600b IN PAC2600B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_remi
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE mkEy=k_Alt_c
                SELECT caB_remi
                IF vsW0<>1 .OR. vsW1=2
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SET READBORDER ON
                DO q1_0000a
                DO paI2600z WITH "2"
                DO p1_0000a
                SET READBORDER OFF
                = INKEY(0.01)
                UNLOCK ALL
                STORE 99 TO mkEy
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT caB_remi
                IF vsW0<>01
                     DO orD_2600b IN PAC2600B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_remi
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE mkEy=k_Enter
                STORE f2601cod TO vcOd
                STORE f2601des TO vdEs
                STORE f2601nuv TO vnUv
                STORE f2601tpo TO vtPo
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE 2 TO vsRr
                ELSE
                     STORE f2111ser TO vsRr
                ENDIF
                DO CASE
                     CASE (vtPo>3 .AND. vtPo<10) .OR. vtPo=11
                          SELECT itE_remi
                     OTHERWISE
                          SELECT seR_remi
                ENDCASE
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Documento no tiene Detalle..." TO mmSj
                     CASE  .NOT. EOF()
                          SAVE SCREEN TO vpAn_12
                          DO CASE
                               CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                                    DO paC2701a IN PAC2701A WITH "2600"
                               CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                                    DO paC2701b IN PAC2701A WITH "2600"
                               CASE vtPo=11
                                    DO paC2701c IN PAC2701A WITH "2600"
                               CASE vtPo=10
                               CASE vsRr=1
                                    DO paC2702a IN PAC2701A WITH "2600"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          RESTORE SCREEN FROM vpAn_12
                ENDCASE
                SELECT deT_remi
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f2601ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_2600c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_2600c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2600c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(99, 2, 0)
                SET NEAR OFF
                IF EOF() .OR. f2601tdo+f2601ser+f2601doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2601ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2600c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                                    DO diS_2600c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2600c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2601tdo+f2601ser+f2601doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2600c WITH "N"
                          SKIP
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_2600c WITH ffFs, ffFs+1
                               STORE f2601ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f2601ite TO irEc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f2601ite TO vrEc
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2600c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2601tdo+f2601ser+f2601doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2600c WITH "N"
                          SKIP -1
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO liN_2600c WITH ifFs, ifFs+1
                               STORE f2601ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f2601ite TO urEc
                               ENDIF
                          ELSE
                               STORE f2601ite TO vrEc
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2600c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+STR(urEc, 2, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f2601tdo+f2601ser+f2601doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2600c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2600c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2601tdo+f2601ser+f2601doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f2601tdo+f2601ser+f2601doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_2600c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
                          DO diS_2600c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2600c
 STORE ifFs TO vfFs, ufFs
 STORE f2601ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      DO diS_2600c WITH "N"
      STORE f2601ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_2600c WITH ufFs, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2600c
 PARAMETER ptIp
 PRIVATE ppIe
 DO CASE
      CASE f2601tpo=1 .AND. f2601la1<>0 .AND. f2601an1<>0
           STORE ROUND(f2601la1*f2601an1*mfCt, 8) TO ppIe
      CASE f2601tpo=1 .AND. f2601la2<>0 .AND. f2601an2<>0
           STORE ROUND(f2601la2*f2601an2/mfCp, 8) TO ppIe
      OTHERWISE
           STORE 1 TO ppIe
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 STORE f2601cod TO vcOd
 DO prD_2600z IN FAC0000A
 SELECT deT_remi
 @vFFS,vCO0+000.4 Say F2601ITE                       Font "&mLetAri",9 Style "NQ" Size 1,2.7  Pict "99"
 @vFFS,vCO0+004.1 Say AllTrim(F2601DCR)+" "+cLAR     Font "&mLetAri",9 Style "NQ" Size 1,95   Pict "@S70"
 @vFFS,vCO0+100.2 Say F2601NUV                       Font "&mLetAri",9 Style "NQ" Size 1,08.4
 @vFFS,vCO0+109.5 Say F2601CAN                       Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 DO CASE
      CASE vsW4=1
           @vFFS,vCO0+127.3 Say F2601PES               Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      CASE vsW4=2
           @vFFS,vCO0+127.3 Say F2601CO1               Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      CASE vsW4=3
           @vFFS,vCO0+127.3 Say F2601CO2               Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      CASE vsW4=4
           @vFFS,vCO0+127.3 Say F2601CO1*F2601CAN*pPIE Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      CASE vsW4=5
           @vFFS,vCO0+127.3 Say F2601CO2*F2601CAN*pPIE Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 ENDCASE
 @vFFS,vCO0+145.1 Say F2601NUV                       Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
 DO CASE
      CASE f2601med=0
           @vFFS,vCO0+162.9 Say Space(10)              Font "&mLetAri",9 Style "NQ" Size 1,6.9
      CASE f2601med=1
           @vFFS,vCO0+162.9 Say "cms"                  Font "&mLetAri",9 Style "NQ" Size 1,6.9
      CASE f2601med=2
           @vFFS,vCO0+162.9 Say "pulg"                 Font "&mLetAri",9 Style "NQ" Size 1,6.9
 ENDCASE
 @vFFS,vCO0+170.9 Say F2601COD                       Font "&mLetAri",9 Style "NQ" Size 1,20.7 Pict "@S15"
 @vFFS,vCO0+192.7 Say F2601CAJ                       Font "&mLetAri",9 Style "NQ" Size 1,9    Pict "99,999"
 DO CASE
      CASE mrEs<="3"
           DO coL_fondo
           @fFFS+1.3,vCO0 Say F2601DES                     Font "&mLetAri",10 Style "NQ" Size 1,88.0 Pict "@S90"
      OTHERWISE
           @vFFS,vCO0+203.1 Say AllTrim(F2601DES)+" "+cLAR Font "&mLetAri",9  Style "NQ" Size 1,67.2 Pict "@S70"
 ENDCASE
 RELEASE ppIe
ENDPROC
*
PROCEDURE P01_2600c
 PUBLIC pfI1, pcO1, piN1, puN1
 PRIVATE pfI2, pcO2, piN2, puN2
 PRIVATE pfI3, pcO3, piN3, puN3
 PRIVATE pfI4, pcO4, piN4
 PUBLIC pfI5, pcO5, piN5
 PRIVATE ptMm
 PRIVATE ptC1
 PRIVATE ptC2
 PUBLIC ptMt
 PRIVATE ptMn
 PRIVATE ptMc
 PRIVATE ptMr
 PRIVATE ptMp
 PRIVATE pcPl
 STORE vfI0+01.5 TO pfI1
 STORE vfI0+14.3 TO pfI2
 STORE vfI0-00.1 TO pfI3
 STORE pfI3+01.3 TO pfI4
 STORE pfI4+01.5 TO pfI5
 STORE vcO0 TO pcO1, pcO2
 STORE vcO0+vuCo-97 TO pcO3, pcO4, pcO5
 STORE 01 TO piN1, piN2, piN3, piN4, piN5
 STORE 103.8 TO puN1, puN2
 STORE 94.7 TO puN3
 STORE 90.2 TO ptMn
 STORE 79 TO ptMm
 STORE 69 TO ptMt
 IF wtPo="2"
      STORE ptMt-4 TO ptMt
 ENDIF
 STORE 76 TO ptMc
 STORE 37 TO ptMr
 STORE 37 TO ptMp
 STORE 84.4 TO ptC1
 STORE 101.2 TO ptC2
 STORE 51 TO pcPl
 STORE pfI5+6.5 TO vfB1, vfB2
 STORE pfI5+08 TO vfB3
 STORE pfI5+09.5 TO vfB4
 STORE pfI5+11 TO vfB5
 STORE pcO5+piN5+19+ptMt+0.4 TO vcB1
 STORE vcB1+4 TO vcB2
 STORE pcO5+piN5+19+ptMt+0.4 TO vcB3
 STORE pcO5+piN5+12+ptMc+0.4 TO vcB4
 STORE pcO5+piN5+12+ptMc+0.4 TO vcB5
 DO coL_fondo
 DO cuAdro WITH vfI0, vcO0, vfI0+17.9, vcO0+vuCo-0.3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 IF mrEs>="3"
      @ pfI1, pcO1+0.1 TO pfI1+12.7, pcO1+piN1+puN1+40 PATTERN 1
      @ pfI1, pcO1+0.1 TO pfI1, pcO1+piN1+puN1+40 COLOR RGB(128,128,128,0,0,0)
      @ pfI1, pcO1+0.1 TO pfI1+12.7, pcO1+00.1 COLOR RGB(128,128,128,0,0,0)
      DO coLsc7
      @ pfI2, pcO2+0.1 TO pfI2+03.6, pcO2+piN2+puN2+40 PATTERN 1
      @ pfI2, pcO2+0.1 TO pfI2+00.0, pcO2+piN2+puN2+40 COLOR RGB(128,128, ;
        128,0,0,0)
      @ pfI2, pcO2+0.1 TO pfI2+03.6, pcO2+00.1 COLOR RGB(128,128,128,0,0,0)
 ELSE
      @ pfI1, pcO1+0.1 TO pfI1+12.7, pcO1+piN1+puN1 PATTERN 1
      @ pfI1, pcO1+0.1 TO pfI1, pcO1+piN1+puN1 COLOR RGB(128,128,128,0,0,0)
      @ pfI1, pcO1+0.1 TO pfI1+12.7, pcO1+00.1 COLOR RGB(128,128,128,0,0,0)
      @ pfI2, pcO2+0.1 TO pfI2+03.6, pcO2+piN2+puN2 PATTERN 1
      @ pfI2, pcO2+0.1 TO pfI2+00.0, pcO2+piN2+puN2 COLOR RGB(128,128,128, ;
        0,0,0)
      @ pfI2, pcO2+0.1 TO pfI2+03.6, pcO2+00.1 COLOR RGB(128,128,128,0,0,0)
 ENDIF
 DO coLsc3
 @ pfI3, pcO3+0.1 TO pfI3+18.1, pcO3+piN3+puN3 PATTERN 1
 @ pfI3, pcO3+0.1 TO pfI3, pcO3+piN3+puN3 COLOR RGB(128,128,128,0,0,0)
 @ pfI3, pcO3+0.1 TO pfI3+18.1, pcO3+0.1 COLOR RGB(128,128,128,0,0,0)
 DO coL_beige
 @pFI1+2.0,pCO1+pIN1+1 Say "Dirección"       Font "&mLetAri",9 Style "NQ"
 @pFI1+3.5,pCO1+pIN1+1 Say "Distrito"        Font "&mLetAri",9 Style "NQ"
 IF LEN(ALLTRIM(xrUc))=0
      @pFI1+3.5,pCO1+pIN1+66 Say "DNI"         Font "&mLetAri",9 Style "NQ"
 ELSE
      @pFI1+3.5,pCO1+pIN1+66 Say "RUC"         Font "&mLetAri",9 Style "NQ"
 ENDIF
 @pFI1+05.0,pCO1+pIN1+01 Say "L.Entrega"     Font "&mLetAri",9 Style "BT"
 @pFI1+06.5,pCO1+pIN1+01 Say "Distrito"      Font "&mLetAri",9 Style "NT"
 @pFI1+08.0,pCO1+pIN1+01 Say "P.Partida"     Font "&mLetAri",9 Style "BT"
 @pFI1+09.5,pCO1+pIN1+01 Say "Dirección"     Font "&mLetAri",9 Style "NT"
 @pFI1+11.0,pCO1+pIN1+01 Say "Distrito"      Font "&mLetAri",9 Style "NT"
 @pFI2+00.5,pCO2+pIN2+01 Say "Observaciones" Font "&mLetAri",9 Style "BT"
 DO coLsc3
 @pFI3+00.5,pCO3+pIN3+01 Say "Emisión"       Font "&mLetAri",9 Style "BT"
 @pFI5+00.5,pCO5+pIN5+01 Say "Pedido"        Font "&mLetAri",9 Style "NT"
 @pFI5+02.0,pCO5+pIN5+01 Say "Peso"          Font "&mLetAri",9 Style "NT"
 @pFI5+02.0,pCO5+pIN5+28 Say "Kgs"           Font "&mLetAri",9 Style "NT"
 @pFI5+03.5,pCO5+pIN5+01 Say "CIMTC"         Font "&mLetAri",9 Style "NT"
 @pFI5+06.5,pCO5+pIN5+01 Say "Titular"       Font "&mLetAri",9 Style "BT"
 @pFI5+08.0,pCO5+pIN5+01 Say "Transportista" Font "&mLetAri",9 Style "BT"
 @pFI5+09.5,pCO5+pIN5+01 Say "Chofer"        Font "&mLetAri",9 Style "NT"
 @pFI5+11.0,pCO5+pIN5+01 Say "Ayudante"      Font "&mLetAri",9 Style "NT"
 @pFI5+12.5,pCO5+pIN5+01 Say "Carro-1"       Font "&mLetAri",9 Style "NT"
 @pFI5+14.0,pCO5+pIN5+01 Say "Carro-2"       Font "&mLetAri",9 Style "NT"
 SET READBORDER ON
 DO CASE
      CASE LEN(ALLTRIM(xcLi))<>0
           DO coL_beige
      OTHERWISE
           DO coLbln
 ENDCASE
 @pFI1+0.5,pCO1+pIN1+12.5  Edit xNOM Font "&mLetAri",9 Style "NQ" Size 1,pTMN,70
 @pFI1+2.0,pCO1+pIN1+12.5  Edit xDIR Font "&mLetAri",9 Style "NQ" Size 1,pTMN,70
 @pFI1+3.5,pCO1+pIN1+12.5  Edit xDIS Font "&mLetAri",9 Style "NQ" Size 1,25.0,25
 @pFI1+3.5,pCO1+pIN1+39.0  Edit xDEP Font "&mLetAri",9 Style "NQ" Size 1,25.0,25
 IF LEN(ALLTRIM(xrUc))=0
      @pFI1+3.5,pCO1+pIN1+73 Edit xDNI Font "&mLetAri",9 Style "NQ" Size 1,15.7
 ELSE
      @pFI1+3.5,pCO1+pIN1+73 Edit xRUC Font "&mLetAri",9 Style "NQ" Size 1,15.7
 ENDIF
 DO coLbln
 @pFI1+05.0,pCO1+pIN1+12.5 Edit xLUG Font "&mLetAri",9 Style "NQ" Size 1,pTMN,70
 @pFI1+06.5,pCO1+pIN1+12.5 Edit xLUD Font "&mLetAri",9 Style "NQ" Size 1,25.0,25
 @pFI1+06.5,pCO1+pIN1+39.0 Edit xLUP Font "&mLetAri",9 Style "NQ" Size 1,25.0,25
 @pFI1+08.0,pCO1+pIN1+12.5 Edit xNAL Font "&mLetAri",9 Style "NQ" Size 1,pTMN,70
 DO CASE
      CASE mrEs="3"
           @pFI2+00.5,pCO2+pIN2+19.5 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,pTC2-20,100
           @pFI2+02.0,pCO2+pIN2+19.5 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,pTC2-20,100
      CASE mrEs>"3"
           @pFI2+00.5,pCO2+pIN2+19.5 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,pTC2+20,100
           @pFI2+02.0,pCO2+pIN2+19.5 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,pTC2+20,100
      OTHERWISE
           @pFI2+00.5,pCO2+pIN2+18.5 Edit xCM1 Font "&mLetAri",9 Style "NQ" Size 1,pTC1,85
           @pFI2+02.0,pCO2+pIN2+01.7 Edit xCM2 Font "&mLetAri",9 Style "NQ" Size 1,pTC2,90
 ENDCASE
 @pFI3+00.5,pCO3+pIN3+14.4 Get  xFEM Font "&mLetAri",9 Style "BQ" Size 1,10.2 Color ,&mColBlN
 @pFI5+00.5,pCO5+pIN5+10   Get  xSRP Font "&mLetAri",9 Style "NQ" Size 1,4    Color Scheme 3  Pict "999"
 @pFI5+00.5,pCO5+pIN5+17   Get  xPED Font "&mLetAri",9 Style "NQ" Size 1,9.5  Color Scheme 3  Pict "9999999"
 @pFI5+02.0,pCO5+pIN5+10   Get  xPES Font "&mLetAri",9 Style "NQ" Size 1,16.6 Color ,&mColBlN Pict "999,999.9999"
 @pFI5+03.5,pCO5+pIN5+10   Edit xCIM Font "&mLetAri",9 Style "NQ" Size 1,25,25
 @pFI5+08.0,pCO5+pIN5+19   Edit xTNO Font "&mLetAri",9 Style "NQ" Size 1,pTMT,70
 @pFI5+09.5,pCO5+pIN5+12   Edit xCHO Font "&mLetAri",9 Style "NQ" Size 1,pTMC,70
 @pFI5+11.0,pCO5+pIN5+12   Edit xCH2 Font "&mLetAri",9 Style "NQ" Size 1,pTMC,70
 @pFI5+12.5,pCO5+pIN5+12   Edit xMR1 Font "&mLetAri",9 Style "NQ" Size 1,pTMR,25
 @pFI5+14.0,pCO5+pIN5+12   Edit xMR2 Font "&mLetAri",9 Style "NQ" Size 1,pTMR,25
 @pFI5+12.5,pCO5+pIN5+pCPL Edit xPLA Font "&mLetAri",9 Style "NQ" Size 1,pTMP,25
 @pFI5+14.0,pCO5+pIN5+pCPL Edit xPL2 Font "&mLetAri",9 Style "NQ" Size 1,pTMP,25
 DO coL_beige
 @pFI1+09.5,pCO1+pIN1+12.5 Edit xADI Font "&mLetAri",9 Style "NQ" Size 1,pTMN,70
 @pFI1+11.0,pCO1+pIN1+12.5 Edit xADS Font "&mLetAri",9 Style "NQ" Size 1,25.0,25
 @pFI1+11.0,pCO1+pIN1+39.0 Edit xADP Font "&mLetAri",9 Style "NQ" Size 1,25.0,25
 DO coLscr
 DO CASE
      CASE xmOt=1 .AND. LEN(ALLTRIM(xtD1))<>0
           @pFI4+0.5,pCO4+pIN4+1 Say xTD1+":"+xSR1+"-"+xDO1                                    Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=2
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Traslado"                                       Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=3
           @pFI4+0.5,pCO4+pIN4+1 Say "Ingreso x Traslado"                                      Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=4
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Devolución"                                     Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=5
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Consumo"                                        Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=6
           @pFI4+0.5,pCO4+pIN4+1 Say "Ingreso x Compra "+xCPS+"-"+xCPN                         Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=7
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Venta sujeta a Confirmación"                    Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=8
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Transformación"                                 Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=9
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Emisor Itinerante"                              Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=10
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Traslado a Zona Primaria"                       Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=11
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Consignación"                                   Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=12
           @pFI4+0.5,pCO4+pIN4+1 Say "Ingreso x Recojo de Bienes Transformados "+xCPS+"-"+xCPN Font "&mLetAri",9 Style "BTU" Size 1,pTMM
      CASE xmOt=13
           @pFI4+0.5,pCO4+pIN4+1 Say "Salida x Otros"                                          Font "&mLetAri",9 Style "BTU" Size 1,pTMM
 ENDCASE
 DO CASE
      CASE xcSt=1
           @pFI5+4.9,pCO5+pIN5+1 Say "Controla Stock"    Font "&mLetRom",11 Style "BT"
      CASE xcSt=2
           @pFI5+4.9,pCO5+pIN5+1 Say "NO Controla Stock" Font "&mLetRom",11 Style "BT"
      OTHERWISE
           @pFI5+4.9,pCO5+pIN5+1 Say "Control Stock Mal" Font "&mLetRom",11 Style "BT"
 ENDCASE
 READ TIMEOUT 0.01
 DO ntT_2600c
 SET READBORDER OFF
 DO prEsiona WITH "1", "CONSU6", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU6", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU6", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_2600c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_2600a
 IF vsW3=1
      DO p01_2600c
 ENDIF
 DO coL_beige
 @ vfI0-0.1, vcO0-0.1 TO vfI0+1.3, vcO0+54 PATTERN 1
 @ vfI0-0.1, vcO0-0.1 TO vfI0-0.1, vcO0+54 COLOR RGB(128,128,128,0,0,0)
 @ vfI0-0.1, vcO0-0.1 TO vfI0+1.3, vcO0-0.1 COLOR RGB(128,128,128,0,0,0)
 DO coL_beiaz
 @vFI0,vCO0+1 Say "GUÍA DE REMISIÓN No."+xSER+"-"+xDOC Font "&mLetRom",11 Style "BQ"
 DO coL_fondo
 DO cuAdro WITH ifFs-1.3, vcO0, ffFs+2.3, vcO0+vuCo-0.3
 DO coLsc7
 @ ifFs-1.4, vcO0-0.6 TO ifFs-0.2, vcO0+vuCo-0.3 PATTERN 1
 @ ffFs+1.2, vcO0-0.6 TO ffFs+1.2, vcO0+vuCo-0.3
 DO liN_2600c WITH ifFs-1.3, ffFs+1.2
 DO coLsc3
 @fFFS+2.7,vCO0+vUCO-97.0 Say " Usuario:"         Font "&mLetAri",9 Style "BQ" Size 1,79 Pict "@S90" 
 @fFFS+2.7,vCO0+vUCO-42.2 Say "Fecha:"            Font "&mLetAri",9 Style "BQ"
 @fFFS+2.7,vCO0+vUCO-19.0 Say "Hora:"             Font "&mLetAri",9 Style "BQ"
 @fFFS+2.7,vCO0+vUCO-86.0 Say xUSU                Font "&mLetAri",9 Style "BQ" Size 1,35 Pict "@S30" 
 @fFFS+2.7,vCO0+vUCO-33.1 Say xDAT                Font "&mLetAri",9 Style "BQ"
 @fFFS+2.7,vCO0+vUCO-12.2 Say xTIM                Font "&mLetAri",9 Style "BQ"
 @iFFS-1.3,vCO0+000.5 Say "IT"                    Font "&mLetAri",9 Style "BT"
 @iFFS-1.3,vCO0+004.2 Say "Descripción Impresa"   Font "&mLetAri",9 Style "BT"
 @iFFS-1.3,vCO0+100.4 Say "Unidad"                Font "&mLetAri",9 Style "BT"
 @iFFS-1.3,vCO0+116.0 Say "Cantidad"              Font "&mLetAri",9 Style "BT"
 @iFFS-1.3,vCO0+146.1 Say "Unidad-Venta"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.3,vCO0+163.1 Say "Medid"                 Font "&mLetAri",9 Style "BT"
 @iFFS-1.3,vCO0+177.0 Say "Código"                Font "&mLetAri",9 Style "BT"
 @iFFS-1.3,vCO0+194.2 Say "Cajas"                 Font "&mLetAri",9 Style "BT"
 IF mrEs>"3"
      @iFFS-1.3,vCO0+203.1 Say "Descripción Normal" Font "&mLetAri",9 Style "BT"
 ENDIF
 DO p02_2600c
ENDPROC
*
PROCEDURE P02_2600c
 PARAMETER piNi, pfIn
 DO coLsc3
 @ ffFs+1, vcO0+109.0 TO ffFs+2.5, vcO0+109.0
 @ ffFs+1, vcO0+126.8 TO ffFs+2.5, vcO0+126.8
 @ ffFs+1, vcO0+144.5 TO ffFs+2.5, vcO0+144.5
 DO coL_fondo
 @fFFS+1.45,vCO0+109.5 Say tCAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 DO coLsc7
 DO CASE
      CASE vsW4=1
           @iFFS-1.35,vCO0+127.3 Say "         Peso"   Font "&mLetAri",9 Style "BQ" Size 1,12
           DO coL_fondo
           @fFFS+1.45,vCO0+127.3 Say tPES              Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      CASE vsW4=2
           @iFFS-1.35,vCO0+127.3 Say "    C.U.inc.S/." Font "&mLetAri",9 Style "BQ" Size 1,12
           DO coL_fondo
           @fFFS+1.45,vCO0+127.3 Say " "               Font "&mLetAri",9 Style "NQ" Size 1,16.7
      CASE vsW4=3
           @iFFS-1.35,vCO0+127.3 Say "   C.U.inc.US$"  Font "&mLetAri",9 Style "BQ" Size 1,12
           DO coL_fondo
           @fFFS+1.45,vCO0+127.3 Say " "               Font "&mLetAri",9 Style "NQ" Size 1,16.7
      CASE vsW4=4
           @iFFS-1.35,vCO0+127.3 Say "    C.T.inc.S/." Font "&mLetAri",9 Style "BQ" Size 1,12
           DO coL_fondo
           @fFFS+1.45,vCO0+127.3 Say tCO1              Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
      CASE vsW4=5
           @iFFS-1.35,vCO0+127.3 Say "   C.T.inc.US$"  Font "&mLetAri",9 Style "BQ" Size 1,12
           DO coL_fondo
           @fFFS+1.45,vCO0+127.3 Say tCO2              Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 ENDCASE
ENDPROC
*
PROCEDURE Lin_2600c
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, vcO0+003.5 TO pfIn, vcO0+003.5
 @ piNi, vcO0+099.6 TO pfIn, vcO0+099.6
 @ piNi, vcO0+109.0 TO pfIn, vcO0+109.0
 @ piNi, vcO0+126.8 TO pfIn, vcO0+126.8
 @ piNi, vcO0+144.5 TO pfIn, vcO0+144.5
 @ piNi, vcO0+162.4 TO pfIn, vcO0+162.4
 @ piNi, vcO0+170.4 TO pfIn, vcO0+170.4
 @ piNi, vcO0+192.1 TO pfIn, vcO0+192.1
 IF mrEs>"3"
      @ piNi, vcO0+202.2 TO pfIn, vcO0+202.2
 ENDIF
ENDPROC
*
PROCEDURE Ntt_2600c
 DO coL_beige
 IF LEN(ALLTRIM(xcLi))=0
      @pFI1+0.5,pCO1+pIN1+1 Say "Cl.Compl" Font "&mLetAri",9 Style "BQ"
 ELSE
      @pFI1+0.5,pCO1+pIN1+1 Say "Cliente"  Font "&mLetAri",9 Style "BQ"
 ENDIF
 DO coLsc3
 SET READBORDER ON
 @pFI5+6.5,pCO5+pIN5+10 Edit xTIT Font "&mLetAri",9 Style "NQ" Size 1,7
 @pFI5+6.5,pCO5+pIN5+19 Edit xNTT Font "&mLetAri",9 Style "NQ" Size 1,pTMT,70
 READ TIMEOUT 0.01
 SET READBORDER OFF
 IF wtPo="2"
      DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE LEN(ALLTRIM(xtIt))<>0
                DO prEsiona WITH "1", "DESCAR", vfB2, vcB2
           OTHERWISE
                DO prEsiona WITH "3", "DESCAR", vfB2, vcB2
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Tit_2600c
 = INKEY(0.01)
 SELECT clIentes
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Titulares registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(xnTt)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f1101cod<>xtIt
      STORE f1101cod TO xtIt, vtIt
      STORE f1101nom TO xnTt, vnTt
      STORE f1101ruc TO crUc
      STORE f1101ele TO cdNi
      SELECT caB_remi
      IF vsW0<>1 .OR. vsW1=2
           STORE 99 TO mkEy
           DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
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
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      IF ALLTRIM(f2600ruc)+"*"=ALLTRIM(crUc)+"*" .AND. ALLTRIM(f2600ele)+ ;
         "*"=ALLTRIM(cdNi)+"*" .AND. (LEN(ALLTRIM(f2600ruc))<>0 .OR.  ;
         LEN(ALLTRIM(f2600ele))<>0)
           REPLACE f2600cli WITH xtIt
           REPLACE f2600nom WITH xnTt
           REPLACE f2600tit WITH SPACE(04)
      ELSE
           REPLACE f2600cli WITH SPACE(04)
           REPLACE f2600suc WITH SPACE(02)
           REPLACE f2600tit WITH xtIt
      ENDIF
      UNLOCK
      STORE f2600cli TO xcLi
      STORE f2600suc TO xsUc
      STORE f2600tit TO xtIt
      IF LEN(ALLTRIM(xtIt))=0
           STORE xcLi TO xtIt
           STORE xnOm TO xnTt
      ENDIF
      SELECT clIentes
      SEEK xtIt
      STORE f1101tip TO vtCl
      SELECT tiPos
      SEEK vtCl
      STORE f9110nti TO vnTi
      DO CASE
           CASE vsW1=01
                SELECT caB_remi
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO orD_2600b IN PAC2600B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE f2600cli TO xcLi
      STORE f2600suc TO xsUc
      STORE f2600tit TO xtIt
 ENDIF
 DO ntT_2600c
 SELECT clIentes
 STORE 99 TO mkEy
 DO orD_0000a WITH "1101", "V", "F1101COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE BTi_2600c
 = INKEY(0.01)
 SELECT caB_remi
 IF vsW0<>1 .OR. vsW1=2
      STORE 99 TO mkEy
      DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
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
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f2600tit WITH SPACE(04)
 UNLOCK
 STORE SPACE(04) TO xtIt
 STORE SPACE(70) TO xnTt
 STORE f2600cli TO xcLi
 IF vsW1=02
      SELECT teMporal
 ENDIF
 DO orD_2600b IN PAC2600B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO ntT_2600c
ENDPROC
*
PROCEDURE Clp_2600c
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
           mcCc<=mmC1+95.00
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1-0.014 .AND. mfIl<=vfB1+1.2 .AND. wtPo="2" .AND.  ;
           mcCc>=vcB1-0.700 .AND. mcCc<=vcB1+3.7 .AND. vsW3=1
           STORE k_F6 TO mkEy
      CASE mfIl>=vfB2-0.014 .AND. mfIl<=vfB2+1.2 .AND. wtPo="2" .AND.  ;
           mcCc>=vcB2-0.700 .AND. mcCc<=vcB2+3.7 .AND. vsW3=1 .AND.  ;
           LEN(ALLTRIM(xtIt))<>0
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB3-0.064 .AND. mfIl<=vfB3+1.078 .AND. mcCc>=vcB3-0.200  ;
           .AND. mcCc<=vcB3+2.4 .AND. vsW3=1
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB4-0.064 .AND. mfIl<=vfB4+1.078 .AND. mcCc>=vcB4-0.200  ;
           .AND. mcCc<=vcB4+2.4 .AND. vsW3=1
           STORE k_F8 TO mkEy
      CASE mfIl>=vfB5-0.064 .AND. mfIl<=vfB5+1.078 .AND. mcCc>=vcB5-0.200  ;
           .AND. mcCc<=vcB5+2.4 .AND. vsW3=1
           STORE k_F9 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+vuCo
           DO diS_2600c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f2601ite TO vrEc
           DO diS_2600c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2600c
 STORE vrEc TO crEc
 DO rs1_2600b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 STORE crEc TO vrEc
 DO rs2_2600c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2600c
 STORE vrEc TO crEc
 IF vsW3=1
      RESTORE SCREEN FROM vpAn_11
 ENDIF
 DO p01_2600a
 DO p00_2600c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_remi
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      IF f2601ite=vrEc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE vrEc TO irEc, crEc
      STORE ifFs TO vfFs, cfFs
 ENDIF
 SEEK vtDo+vsEr+vdOc+STR(irEc, 2, 0)
 DO paN_2600c
 STORE crEc TO vrEc
 STORE cfFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
 DO diS_2600c WITH "R"
ENDPROC
*
PROCEDURE Hl1_2600c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+1, 02 SAY  ;
   "los items fueran más de los que se pueden visualizar,  puede verlo por "
 @ pfIl+2, 02 SAY  ;
   "páginas.                                                               "
 @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+8, 29 SAY ":" STYLE "BT"
 @ pfIl+9, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 11 SAY "ESC" STYLE "BT"
 @ pfIl+7, 11 SAY "F10" STYLE "BT"
 @ pfIl+8, 11 SAY "F1" STYLE "BT"
 @ pfIl+9, 11 SAY "F3" STYLE "BT"
 @ pfIl+6, 31 SAY "Regresar a Cabecera"
 @ pfIl+7, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 31 SAY "Ayuda del Programa"
 @ pfIl+9, 31 SAY "Ampliar/Reducir Detalle"
 STORE pfIl+10 TO pfIl
 IF wtPo="2"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+1, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 11 SAY "F5" STYLE "BT"
      @ pfIl+1, 11 SAY "F6" STYLE "BT"
      @ pfIl+0, 31 SAY "Borrar Titular"
      @ pfIl+1, 31 SAY "Cambiar Titular"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+00, 29 SAY ":" STYLE "BT"
 @ pfIl+01, 29 SAY ":" STYLE "BT"
 @ pfIl+02, 29 SAY ":" STYLE "BT"
 @ pfIl+03, 29 SAY ":" STYLE "BT"
 @ pfIl+04, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+12, 29 SAY ":" STYLE "BT"
 @ pfIl+13, 29 SAY ":" STYLE "BT"
 @ pfIl+00, 11 SAY "F7" STYLE "BT"
 @ pfIl+01, 11 SAY "F8" STYLE "BT"
 @ pfIl+02, 11 SAY "F9" STYLE "BT"
 @ pfIl+03, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+04, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 11 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+06, 11 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+07, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+08, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+09, 11 SAY "HOME" STYLE "BT"
 @ pfIl+10, 11 SAY "END" STYLE "BT"
 @ pfIl+11, 11 SAY "ENTER" STYLE "BT"
 @ pfIl+12, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+13, 11 SAY "ALT C" STYLE "BT"
 @ pfIl+00, 31 SAY "Ver detalles de Transportista"
 @ pfIl+01, 31 SAY "Ver detalles de Chofer"
 @ pfIl+02, 31 SAY "Ver detalles de Ayudante"
 @ pfIl+03, 31 SAY "Línea inferior"
 @ pfIl+04, 31 SAY "Línea superior"
 @ pfIl+05, 31 SAY "ver otros datos"
 @ pfIl+06, 31 SAY "ver otros datos"
 @ pfIl+07, 31 SAY "Página siguiente"
 @ pfIl+08, 31 SAY "Página anterior"
 @ pfIl+09, 31 SAY "Primera línea"
 @ pfIl+10, 31 SAY "Última línea"
 @ pfIl+11, 31 SAY "Ver Detalle del ítem"
 @ pfIl+12, 31 SAY "Imprime Documento"
 @ pfIl+13, 31 SAY "Imprime Guia en Borrador"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
