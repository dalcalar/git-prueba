 = INKEY(0.01)
 STORE 0 TO vsWz
 STORE " " TO cpA1
 DO CASE
      CASE vsW1=1
           SELECT caB_ingr
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO muE_2700a
 STORE SUBSTR(xpEd, 1, 5) TO vpEd
 STORE 1 TO vsW3, vsW4
 STORE 0 TO tcAn
 IF wtPo="3"
      STORE 3 TO vsW4
 ENDIF
 DO p02_2700a IN PAC2700A
 SELECT deT_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      STORE tcAn+f2701can TO tcAn
      SKIP
 ENDDO
 DO p00_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO paN_2700c
 STORE irEc TO vrEc
 STORE ifFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
 DO diS_2700c WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2700c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2700c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2700c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2700c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Left .OR. mkEy=k_Right) .AND. usW4>1
                STORE vsW4 TO csW4
                DO CASE
                     CASE mkEy=k_Left .AND. vsW4=1
                          STORE usW4 TO vsW4
                     CASE mkEy=k_Left
                          STORE vsW4-1 TO vsW4
                     CASE mkEy=k_Right .AND. vsW4=usW4
                          STORE 1 TO vsW4
                     CASE mkEy=k_Right
                          STORE vsW4+1 TO vsW4
                ENDCASE
                IF mrEs>"3" .AND. (vsW4=1 .OR. csW4=1)
                     DO coLbln
                     DO CASE
                          CASE mrEs="4" .AND. csW4=1
                               @ ifFs, mcO0+103.1 CLEAR TO ffFs+1.4, mcO0+103.3
                               @ ifFs, mcO0+153.3 CLEAR TO ffFs+1.4, mcO0+153.5
                               @ ifFs, mcO0+165.9 CLEAR TO ffFs+1.4, mcO0+166.1
                               @ ifFs, mcO0+189.5 CLEAR TO ffFs+1.4, mcO0+189.7
                               @ ifFs, mcO0+200.1 CLEAR TO ffFs+1.4, mcO0+200.3
                               @ ifFs, mcO0+219.7 CLEAR TO ffFs+1.4, mcO0+219.9
                          CASE mrEs="4"
                               @ ifFs, mcO0+101.1 CLEAR TO ffFs+1.4, mcO0+101.3
                               @ ifFs, mcO0+141.3 CLEAR TO ffFs+1.4, mcO0+141.5
                               @ ifFs, mcO0+154.1 CLEAR TO ffFs+1.4, mcO0+154.3
                               @ ifFs, mcO0+177.1 CLEAR TO ffFs+1.4, mcO0+177.3
                               @ ifFs, mcO0+200.1 CLEAR TO ffFs+1.4, mcO0+200.3
                               @ ifFs, mcO0+219.7 CLEAR TO ffFs+1.4, mcO0+219.9
                          CASE csW4=1
                               @ ifFs, mcO0+103.0 CLEAR TO ffFs+1.4, mcO0+103.6
                               @ ifFs, mcO0+168.8 CLEAR TO ffFs+1.4, mcO0+170.6
                               @ ifFs, mcO0+182.0 CLEAR TO ffFs+1.4, mcO0+182.8
                               @ ifFs, mcO0+205.4 CLEAR TO ffFs+1.4, mcO0+205.8
                               @ ifFs, mcO0+216.0 CLEAR TO ffFs+1.4, mcO0+216.4
                               @ ifFs, mcO0+235.6 CLEAR TO ffFs+1.4, mcO0+236.0
                          OTHERWISE
                               @ ifFs, mcO0+101.0 CLEAR TO ffFs+1.4, mcO0+101.4
                               @ ifFs, mcO0+157.2 CLEAR TO ffFs+1.4, mcO0+157.6
                               @ ifFs, mcO0+170.0 CLEAR TO ffFs+1.4, mcO0+170.7
                               @ ifFs, mcO0+193.1 CLEAR TO ffFs+1.4, mcO0+193.5
                               @ ifFs, mcO0+216.0 CLEAR TO ffFs+1.4, mcO0+216.4
                               @ ifFs, mcO0+235.6 CLEAR TO ffFs+1.4, mcO0+236.0
                     ENDCASE
                ENDIF
                DO tiT_2700c WITH "2700"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE vfFs TO cfFs
                STORE vrEc TO crEc
                SELECT deT_ingr
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                DO paN_2700c
                STORE crEc TO vrEc
                STORE cfFs TO vfFs
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                DO diS_2700c WITH "R"
                DO toT_2700c IN PAC2700C
           CASE mkEy=k_F3
                IF vsW3=1
                     STORE 2 TO vsW3
                ELSE
                     STORE 1 TO vsW3
                ENDIF
                DO rs2_2700c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6 .AND. wtPo="3"
                STORE "N" TO moPc
                DO prE_docum WITH  ;
                   "Deseas pasar los costos del mantenimiento grabados al Costo Promedio?"
                IF moPc$"Ss"
                     SELECT deT_ingr
                     GOTO TOP
                     SEEK vtDo+vsEr+vdOc
                     STORE 0 TO tmAn
                     DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+ ;
                        f2701doc=vtDo+vsEr+vdOc
                          STORE f2701ite TO xrEc
                          SELECT deT_ingr
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH vtDo+vsEr+vdOc+STR(xrEc, 4, 0)
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    UNLOCK ALL
                                    = INKEY(0.01)
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          REPLACE f2701cos WITH f2701cmt
                          UNLOCK
                          STORE tmAn+(f2701can*f2701cmt) TO tmAn
                          SKIP
                     ENDDO
                     IF vsW1=2
                          SELECT teMporal
                          REPLACE f2700cos WITH tmAn
                     ENDIF
                     SELECT caB_ingr
                     SEEK vtDo+vsEr+vdOc
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vtDo+vsEr+vdOc
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               UNLOCK ALL
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     REPLACE f2700cos WITH tmAn
                     DO CASE
                          CASE vsW1=1
                               SELECT caB_ingr
                          CASE vsW1=2
                               SELECT teMporal
                     ENDCASE
                ENDIF
                STORE vfFs TO cfFs
                STORE vrEc TO crEc
                SELECT deT_ingr
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                DO paN_2700c
                STORE crEc TO vrEc
                STORE cfFs TO vfFs
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                DO diS_2700c WITH "R"
                DO toT_2700c IN PAC2700C
           CASE mkEy=k_F5 .AND. wtPo="3"
                SELECT deT_ingr
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                STORE 0 TO tmAn
                DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc= ;
                   vtDo+vsEr+vdOc
                     STORE f2701cod TO xcOd
                     STORE f2701ite TO xrEc
                     SELECT prOductos
                     SEEK ALLTRIM(xcOd)+"*"
                     IF  .NOT. EOF()
                          STORE f2111vcs TO xvCs
                          STORE f2111tip TO xtPo
                          SELECT deT_ingr
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH vtDo+vsEr+vdOc+STR(xrEc, 4, 0)
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    UNLOCK ALL
                                    = INKEY(0.01)
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          SELECT tiP_prod
                          SEEK xtPo
                          IF EOF()
                               STORE 1 TO xtPo
                          ELSE
                               STORE f9211tpo TO xtPo
                          ENDIF
                          SELECT prOductos
                          DO CASE
                               CASE xtPo=1 .AND. f2111la1<>0 .AND.  ;
                                    f2111an1<>0 .AND. SUBSTR(f2111cod, 1,  ;
                                    1)="V"
                                    STORE ROUND(f2111la1*f2111an1*mfCt,  ;
                                     8) TO vpIe
                               CASE xtPo=1 .AND. f2111la2<>0 .AND.  ;
                                    f2111an2<>0 .AND. SUBSTR(f2111cod, 1,  ;
                                    1)="V"
                                    STORE ROUND(f2111la2*f2111an2/mfCp,  ;
                                     8) TO vpIe
                               OTHERWISE
                                    STORE 1 TO vpIe
                          ENDCASE
                          SELECT deT_ingr
                          REPLACE f2701cmt WITH xvCs*vpIe
                          UNLOCK
                     ENDIF
                     SELECT deT_ingr
                     STORE tmAn+(f2701can*f2701cmt) TO tmAn
                     SKIP
                ENDDO
                STORE vfFs TO cfFs
                STORE vrEc TO crEc
                SELECT deT_ingr
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                DO paN_2700c
                STORE crEc TO vrEc
                STORE cfFs TO vfFs
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                DO diS_2700c WITH "R"
                DO toT_2700c IN PAC2700C
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2700c WITH "2700"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                SELECT deT_ingr
                IF LEN(ALLTRIM(cpA1))<>0
                     STORE vrEc TO crEc
                     STORE vfFs TO cfFs
                     SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                     DO paN_2700c
                     STORE crEc TO vrEc
                     STORE cfFs TO vfFs
                ENDIF
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                DO diS_2700c WITH "R"
           CASE mkEy=k_Ctrl_p
                SELECT caB_ingr
                IF vsW0<>1
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                DO q1_0000a
                DO paI2700z
                DO p1_0000a
                RESTORE SCREEN FROM vpAn_12
                SET READBORDER OFF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT caB_ingr
                IF vsW0<>1
                     DO orD_2700b IN PAC2700B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                SELECT deT_ingr
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           CASE mkEy=k_Enter
                STORE f2701cod TO vcOd
                STORE f2701des TO vdEs
                STORE f2701nuv TO vnUv
                STORE f2701tpo TO vtPo
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE 2 TO vsRr
                ELSE
                     STORE f2111ser TO vsRr
                ENDIF
                DO CASE
                     CASE (vtPo>3 .AND. vtPo<10) .OR. vtPo=11
                          SELECT itE_ingr
                     OTHERWISE
                          SELECT seR_ingr
                ENDCASE
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Documento no tiene Detalle..." TO mmSj
                     CASE  .NOT. EOF()
                          SAVE SCREEN TO vpAn_12
                          DO CASE
                               CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                                    DO paC2701a WITH "2700"
                               CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                                    DO paC2701b WITH "2700"
                               CASE vtPo=11
                                    DO paC2701c WITH "2700"
                               CASE vtPo=10
                               CASE vsRr=1
                                    DO paC2702a WITH "2700"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          RESTORE SCREEN FROM vpAn_12
                ENDCASE
                SELECT deT_ingr
                SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                DO CASE
                     CASE f2701ite=irEc .AND. vrEc=irEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=irEc
                                    DO paN_2700c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                                    DO diS_2700c WITH "N"
                          ENDCASE
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2700c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+STR(9999, 4, 0)
                SET NEAR OFF
                IF EOF() .OR. f2701tdo+f2701ser+f2701doc<>vtDo+vsEr+vdOc
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2701ite=urEc .AND. vrEc=urEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrEc=urEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2700c
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                                    DO diS_2700c WITH "N"
                          ENDCASE
                          STORE urEc TO vrEc
                          STORE ufFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2700c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2701tdo+f2701ser+f2701doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2700c WITH "N"
                          SKIP
                          IF vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2700c WITH ffFs, ffFs+1
                               STORE f2701ite TO urEc, vrEc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE f2701ite TO irEc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE f2701ite TO vrEc
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2700c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2701tdo+f2701ser+f2701doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2700c WITH "N"
                          SKIP -1
                          IF vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2700c WITH ifFs, ifFs+1
                               STORE f2701ite TO irEc, vrEc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE f2701ite TO urEc
                               ENDIF
                          ELSE
                               STORE f2701ite TO vrEc
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2700c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+STR(urEc, 4, 0)
                SKIP
                DO CASE
                     CASE EOF() .OR. f2701tdo+f2701ser+f2701doc<>vtDo+vsEr+vdOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2700c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2700c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2701tdo+f2701ser+f2701doc<>vtDo+vsEr+vdOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f2701tdo+f2701ser+f2701doc<>vtDo+ ;
                             vsEr+vdOc
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc
                          ENDIF
                          DO paN_2700c
                          STORE irEc TO vrEc
                          STORE ifFs TO vfFs
                          SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                          DO diS_2700c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2700c
 STORE ifFs TO vfFs, ufFs
 STORE f2701ite TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      DO diS_2700c WITH "N"
      STORE f2701ite TO urEc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, mcO0 CLEAR TO ffFs+1.1, mcO0+muCo
      DO liN_2700c WITH ufFs, ffFs+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2700c
 PARAMETER ptIp
 PRIVATE ppIc, ppIt, ppIu, pcAn, ptOt, pcOs
 STORE f2701can TO pcAn
 STORE f2701cos TO pcOs
 STORE f2701can*f2701cos TO ptOt
 DO CASE
      CASE pcAn>=1000000000000.0001
           STORE ROUND(pcAn, 2) TO pcAn
           STORE "9999999999999.99" TO ppIc
      CASE pcAn>=99999999999.9999
           STORE ROUND(pcAn, 3) TO pcAn
           STORE "999999999999.999" TO ppIc
      CASE pcAn>=9999999999.9999
           STORE "99999999999.9999" TO ppIc
      CASE pcAn>=999999999.9999
           STORE "9999999999.9999" TO ppIc
      OTHERWISE
           STORE "999,999,999.9999" TO ppIc
 ENDCASE
 DO CASE
      CASE ptOt>=1000000000000.0001
           STORE ROUND(ptOt, 2) TO ptOt
           STORE "9999999999999.99" TO ppIt
      CASE ptOt>=99999999999.9999
           STORE ROUND(ptOt, 3) TO ptOt
           STORE "999999999999.999" TO ppIt
      CASE ptOt>=9999999999.9999
           STORE "99999999999.9999" TO ppIt
      CASE ptOt>=999999999.9999
           STORE "9999999999.9999" TO ppIt
      OTHERWISE
           STORE "999,999,999.9999" TO ppIt
 ENDCASE
 DO CASE
      CASE pcOs>=1000000000000.0001
           STORE ROUND(pcOs, 2) TO pcOs
           STORE "9999999999999.99" TO ppIu
      CASE pcOs>=99999999999.9999
           STORE ROUND(pcOs, 3) TO pcOs
           STORE "999999999999.999" TO ppIu
      CASE pcOs>=9999999999.9999
           STORE "99999999999.9999" TO ppIu
      CASE pcOs>=999999999.9999
           STORE "9999999999.9999" TO ppIu
      OTHERWISE
           STORE "999,999,999.9999" TO ppIu
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,mCO0+0.0 Say F2701ITE Font "&mLetAri",9 Style "NQ" Size 1,05.6 Pict "9999"
 @vFFS,mCO0+6.2 Say F2701COD Font "&mLetAri",9 Style "NQ" Size 1,16.2 Pict "@S19"
 DO CASE
      CASE mrEs="3" .AND. vsW4=1
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2701des))<>0
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "BQ" Size 1,66.1 Pict "@S69"
           ELSE
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "NQ" Size 1,80.0 Pict "@S80"
           ENDIF
           @vFFS,mCO0+103.6 Say F2701DCR                    Font "&mLetAri",9 Style "NQ" Size 1,49.6 Pict "@S53"
           @vFFS,mCO0+153.8 Say F2701NUC                    Font "&mLetAri",9 Style "NQ" Size 1,12.0 Pict "@S13"
           @vFFS,mCO0+166.4 Say pCAN                        Font "&mLetAri",9 Style "NQ" Size 1,23.0 Pict "&pPIC"
           @vFFS,mCO0+190.0 Say F2701CAJ                    Font "&mLetAri",9 Style "NQ" Size 1,10.0 Pict "999,999"
      CASE mrEs="3" .AND. vsW4=2
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2701des))<>0
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "BQ" Size 1,58.4 Pict "@S61"
           ELSE
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "NQ" Size 1,70.0 Pict "@S73"
           ENDIF
           @vFFS,mCO0+093.6 Say F2701DCR                    Font "&mLetAri",9 Style "NQ" Size 1,52.6 Pict "@S55"
           @vFFS,mCO0+146.8 Say F2701NUC                    Font "&mLetAri",9 Style "NQ" Size 1,12.0 Pict "@S13"
           @vFFS,mCO0+159.4 Say "GS:"+F2701SGS+"-"+F2701NGS Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+179.0 Say F2701CDG                    Font "&mLetAri",9 Style "NQ" Size 1,21.0 Pict "@S23"
      CASE mrEs="3" .AND. vsW4>2 .AND. wtPo>"2"
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2701des))<>0
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "BQ" Size 1,65.0 Pict "@S68"
           ELSE
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "NQ" Size 1,78.0 Pict "@S80"
           ENDIF
           @vFFS,mCO0+101.6 Say F2701DCR                    Font "&mLetAri",9 Style "NQ" Size 1,39.6 Pict "@S43"
           @vFFS,mCO0+141.8 Say F2701NUC                    Font "&mLetAri",9 Style "NQ" Size 1,12.2 Pict "@S13"
           @vFFS,mCO0+154.6 Say pCAN                        Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           DO CASE
                CASE vsW4=3
                     @vFFS,mCO0+177.6 Say pCOS                Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=4
                     @vFFS,mCO0+177.6 Say pTOT                Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=5
                     @vFFS,mCO0+177.6 Say F2701CMT            Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=6
                     @vFFS,mCO0+177.6 Say F2701CMT*F2701CAN   Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
           ENDCASE
      CASE mrEs="4" .AND. vsW4=1
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2701des))<>0
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "BQ" Size 1,66.8 Pict "@S70"
           ELSE
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "NQ" Size 1,80.0 Pict "@S80"
           ENDIF
           @vFFS,mCO0+103.6 Say F2701DCR                    Font "&mLetAri",9 Style "NQ" Size 1,49.6 Pict "@S53"
           @vFFS,mCO0+153.8 Say F2701NUC                    Font "&mLetAri",9 Style "NQ" Size 1,12.0 Pict "@S13"
           @vFFS,mCO0+166.4 Say pCAN                        Font "&mLetAri",9 Style "NQ" Size 1,23.0 Pict "&pPIC"
           @vFFS,mCO0+190.0 Say F2701CAJ                    Font "&mLetAri",9 Style "NQ" Size 1,10.0 Pict "999,999"
           @vFFS,mCO0+200.6 Say "GS:"+F2701SGS+"-"+F2701NGS Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+220.2 Say F2701CDG                    Font "&mLetAri",9 Style "NQ" Size 1,31.8 Pict "@S25"
      CASE mrEs="4" .AND. wtPo>"2"
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2701des))<>0
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "BQ" Size 1,65.0 Pict "@S68"
           ELSE
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "NQ" Size 1,78.0 Pict "@S80"
           ENDIF
           @vFFS,mCO0+101.6 Say F2701DCR                    Font "&mLetAri",9 Style "NQ" Size 1,39.6 Pict "@S43"
           @vFFS,mCO0+141.8 Say F2701NUC                    Font "&mLetAri",9 Style "NQ" Size 1,12.2 Pict "@S13"
           @vFFS,mCO0+154.6 Say pCAN                        Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           @vFFS,mCO0+200.6 Say "GS:"+F2701SGS+"-"+F2701NGS Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+220.2 Say F2701CDG                    Font "&mLetAri",9 Style "NQ" Size 1,31.8 Pict "@S25"
           DO CASE
                CASE vsW4=2
                     @vFFS,mCO0+177.6 Say pCOS                Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=3
                     @vFFS,mCO0+177.6 Say pTOT                Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=4
                     @vFFS,mCO0+177.6 Say F2701CMT            Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=5
                     @vFFS,mCO0+177.6 Say F2701CMT*F2701CAN   Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
           ENDCASE
      CASE vsW4=1
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2701des))<>0
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "BQ" Size 1,66.8 Pict "@S69"
           ELSE
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "NQ" Size 1,80.1 Pict "@S80"
           ENDIF
           @vFFS,mCO0+103.6 Say F2701DCR                    Font "&mLetAri",9 Style "NQ" Size 1,65.6 Pict "@S68"
           @vFFS,mCO0+169.8 Say F2701NUC                    Font "&mLetAri",9 Style "NQ" Size 1,12.0 Pict "@S13"
           @vFFS,mCO0+182.4 Say pCAN                        Font "&mLetAri",9 Style "NQ" Size 1,23.0 Pict "&pPIC"
           @vFFS,mCO0+206.0 Say F2701CAJ                    Font "&mLetAri",9 Style "NQ" Size 1,10.0 Pict "999,999"
           @vFFS,mCO0+216.6 Say "GS:"+F2701SGS+"-"+F2701NGS Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+236.2 Say F2701CDG                    Font "&mLetAri",9 Style "NQ" Size 1,32.8 Pict "@S30"
      CASE wtPo>"2"
           IF AT(ALLTRIM(UPPER(cpA1)), UPPER(f2701des))<>0
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "BQ" Size 1,65.1 Pict "@S68"
           ELSE
                @vFFS,mCO0+22.9 Say F2701DES                  Font "&mLetAri",9 Style "NQ" Size 1,78.1 Pict "@S80"
           ENDIF
           @vFFS,mCO0+101.6 Say F2701DCR                    Font "&mLetAri",9 Style "NQ" Size 1,55.6 Pict "@S58"
           @vFFS,mCO0+157.8 Say F2701NUC                    Font "&mLetAri",9 Style "NQ" Size 1,12.2 Pict "@S13"
           @vFFS,mCO0+170.6 Say pCAN                        Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           @vFFS,mCO0+216.6 Say "GS:"+F2701SGS+"-"+F2701NGS Font "&mLetAri",9 Style "NQ" Size 1,19.0
           @vFFS,mCO0+236.2 Say F2701CDG                    Font "&mLetAri",9 Style "NQ" Size 1,32.8 Pict "@S30"
           DO CASE
                CASE vsW4=2
                     @vFFS,mCO0+193.6 Say pCOS                Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=3
                     @vFFS,mCO0+193.6 Say pTOT                Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=4
                     @vFFS,mCO0+193.6 Say F2701CMT            Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIU"
                CASE vsW4=5
                     @vFFS,mCO0+193.6 Say F2701CMT*F2701CAN   Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
           ENDCASE
 ENDCASE
 RELEASE ppIc, ppIt, ppIu, pcAn, ptOt, pcOs
ENDPROC
*
PROCEDURE Lin_2700c
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, mcO0+05.8 TO pfIn, mcO0+05.8
 @ piNi, mcO0+22.5 TO pfIn, mcO0+22.5
 DO CASE
      CASE mrEs="3" .AND. vsW4=1
           @ piNi, mcO0+103.2 TO pfIn, mcO0+103.2
           @ piNi, mcO0+153.4 TO pfIn, mcO0+153.4
           @ piNi, mcO0+166.0 TO pfIn, mcO0+166.0
           @ piNi, mcO0+189.6 TO pfIn, mcO0+189.6
      CASE mrEs="3" .AND. vsW4=2
           @ piNi, mcO0+093.2 TO pfIn, mcO0+093.2
           @ piNi, mcO0+146.4 TO pfIn, mcO0+146.4
           @ piNi, mcO0+159.0 TO pfIn, mcO0+159.0
           @ piNi, mcO0+178.6 TO pfIn, mcO0+178.6
      CASE mrEs="3"
           @ piNi, mcO0+101.2 TO pfIn, mcO0+101.2
           @ piNi, mcO0+141.4 TO pfIn, mcO0+141.4
           @ piNi, mcO0+154.2 TO pfIn, mcO0+154.2
           @ piNi, mcO0+177.2 TO pfIn, mcO0+177.2
      CASE mrEs="4" .AND. vsW4=1
           @ piNi, mcO0+103.2 TO pfIn, mcO0+103.2
           @ piNi, mcO0+153.4 TO pfIn, mcO0+153.4
           @ piNi, mcO0+166.0 TO pfIn, mcO0+166.0
           @ piNi, mcO0+189.6 TO pfIn, mcO0+189.6
           @ piNi, mcO0+200.2 TO pfIn, mcO0+200.2
           @ piNi, mcO0+219.8 TO pfIn, mcO0+219.8
      CASE mrEs="4"
           @ piNi, mcO0+101.2 TO pfIn, mcO0+101.2
           @ piNi, mcO0+141.4 TO pfIn, mcO0+141.4
           @ piNi, mcO0+154.2 TO pfIn, mcO0+154.2
           @ piNi, mcO0+177.2 TO pfIn, mcO0+177.2
           @ piNi, mcO0+200.2 TO pfIn, mcO0+200.2
           @ piNi, mcO0+219.8 TO pfIn, mcO0+219.8
      CASE vsW4=1
           @ piNi, mcO0+103.2 TO pfIn, mcO0+103.2
           @ piNi, mcO0+169.4 TO pfIn, mcO0+169.4
           @ piNi, mcO0+182.0 TO pfIn, mcO0+182.0
           @ piNi, mcO0+205.6 TO pfIn, mcO0+205.6
           @ piNi, mcO0+216.2 TO pfIn, mcO0+216.2
           @ piNi, mcO0+235.8 TO pfIn, mcO0+235.8
      OTHERWISE
           @ piNi, mcO0+101.2 TO pfIn, mcO0+101.2
           @ piNi, mcO0+157.4 TO pfIn, mcO0+157.4
           @ piNi, mcO0+170.3 TO pfIn, mcO0+170.3
           @ piNi, mcO0+193.3 TO pfIn, mcO0+193.3
           @ piNi, mcO0+216.2 TO pfIn, mcO0+216.2
           @ piNi, mcO0+235.8 TO pfIn, mcO0+235.8
 ENDCASE
ENDPROC
*
PROCEDURE P00_2700c
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO GR+/GR
 @mFI0-4.5,mCO0+1.2 Say "GUÍA DE INGRESO No."+xSER+"-"+xDOC Font "&mLetRom",15 Style "BT"
 DO coL_fondo
 DO cuAdro WITH ifFs-1.3, mcO0, ffFs+2.6, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 @fFFS+2.8,mCO0+mUCO-47.7 Say " Usuario: "         Font "&mLetAri",9 Style "BQ"
 @fFFS+3.8,mCO0+mUCO-47.7 Say " Fecha: "+Space(40) Font "&mLetAri",9 Style "BQ"
 @fFFS+3.8,mCO0+mUCO-17.7 Say " Hora: "+Space(10)  Font "&mLetAri",9 Style "BQ"
 @fFFS+2.8,mCO0+mUCO-37.5 Say xUSU                 Font "&mLetAri",9 Style "NQ" Size 1,38 Pict "@S30"
 @fFFS+3.8,mCO0+mUCO-37.5 Say xDAT                 Font "&mLetAri",9 Style "NQ" Size 1,12.2
 @fFFS+3.8,mCO0+mUCO-09.7 Say xTIM                 Font "&mLetAri",9 Style "NQ" Size 1,10.1
 IF vsW3=1
      DO coL_beige
      DO cuAdro WITH mfI0-2.4, mcO0, mfI0+2.5, mcO0+muCo
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLbln
      SET READBORDER ON
      @mFI0-2.0,mCO0+001.0 Say "Fecha"                Font "&mLetAri",10 Style "NT"
      @mFI0-2.0,mCO0+036.1 Say "Tipo de Entrada"      Font "&mLetAri",10 Style "NT"
      @mFI0-2.0,mCO0+101.5 Say "Pedido"               Font "&mLetAri",10 Style "BT"
      @mFI0-0.5,mCO0+001.0 Say "Observaciones"        Font "&mLetAri",10 Style "NT"
      @mFI0+1.0,mCO0+001.0 Say "Almacen"              Font "&mLetAri",10 Style "NT"
      @mFI0+1.0,mCO0+124.0 Say "Orden de Compra"      Font "&mLetAri",10 Style "NT"
      @mFI0-2.0,mCO0+019.0 Get  xFEM                  Font "&mLetAri",10 Style "NQ" Size 1,10.8  Color ,&mColBlN
      @mFI0-2.0,mCO0+056.0 Get  xTIP                  Font "&mLetAri",10 Style "NQ" Size 1,03.4  Color ,&mColBlN
      @mFI0-2.0,mCO0+062.0 Edit xNTI                  Font "&mLetAri",10 Style "NQ" Size 1,30,30
      @mFI0-2.0,mCO0+111.1 Get  xPED                  Font "&mLetAri",10 Style "NQ" Size 1,08.4 Pict "!999999" Color ,&mColBlN
      @mFI0-0.5,mCO0+019.0 Edit xCM1                  Font "&mLetAri",10 Style "NQ" Size 1,85.5,70
      @mFI0+1.0,mCO0+019.0 Edit vNAL                  Font "&mLetAri",10 Style "NQ" Size 1,85.5,70
      @mFI0+1.0,mCO0+145.5 Get  xSOR                  Font "&mLetAri",10 Style "NQ" Size 1,4.4   Color ,&mColBlN
      @mFI0+1.0,mCO0+153.0 Get  xORD                  Font "&mLetAri",10 Style "NQ" Size 1,9.4   Color ,&mColBlN
      READ TIMEOUT 0.01
      SET READBORDER OFF
 ENDIF
 DO toT_2700c IN PAC2700C
 DO tiT_2700c WITH "2700"
 DO coL_fondo
 @fFFS+1.5,mCO0+01 Say "Palabra:"                 Font "&mLetRom",10 Style "BT"
 @fFFS+1.5,mCO0+11 Say cPA1 Size 1,70 Pict "@S70" Font "&mLetRom",9  Style "BQ"
ENDPROC
*
PROCEDURE Tot_2700c
 PRIVATE ppIc, ppIt
 DO CASE
      CASE tcAn>=1000000000000.0001
           STORE ROUND(tcAn, 2) TO tcAn
           STORE "9999999999999.99" TO ppIc
      CASE tcAn>=99999999999.9999
           STORE ROUND(tcAn, 3) TO tcAn
           STORE "999999999999.999" TO ppIc
      CASE tcAn>=9999999999.9999
           STORE "99999999999.9999" TO ppIc
      CASE tcAn>=999999999.9999
           STORE "9999999999.9999" TO ppIc
      OTHERWISE
           STORE "999,999,999.9999" TO ppIc
 ENDCASE
 DO CASE
      CASE xcOs>=1000000000000.0001
           STORE ROUND(xcOs, 2) TO xcOs
           STORE "9999999999999.99" TO ppIt
      CASE xcOs>=99999999999.9999
           STORE ROUND(xcOs, 3) TO xcOs
           STORE "999999999999.999" TO ppIt
      CASE xcOs>=9999999999.9999
           STORE "99999999999.9999" TO ppIt
      CASE xcOs>=999999999.9999
           STORE "9999999999.9999" TO ppIt
      OTHERWISE
           STORE "999,999,999.9999" TO ppIt
 ENDCASE
 DO coLsc3
 DO CASE
      CASE mrEs="3" .AND. vsW4>2 .AND. wtPo>"2"
           @ ffFs+1.4, mcO0+154.2 TO ffFs+2.9, mcO0+200.3
           @ ffFs+1.4, mcO0+177.2 TO ffFs+2.9, mcO0+177.2
           @fFFS+1.5,mCO0+154.6 Say tCAN         Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           DO CASE
                CASE vsW4=4
                     @fFFS+1.5,mCO0+177.6 Say xCOS Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=6
                     @fFFS+1.5,mCO0+177.6 Say tMAN Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                OTHERWISE
                     @fFFS+1.5,mCO0+177.6 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,22.3
           ENDCASE
      CASE mrEs="4" .AND. wtPo>"2"
           @ ffFs+1.4, mcO0+154.2 TO ffFs+2.9, mcO0+200.3
           @ ffFs+1.4, mcO0+177.2 TO ffFs+2.9, mcO0+177.2
           @fFFS+1.5,mCO0+154.6 Say tCAN         Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           DO CASE
                CASE vsW4=3
                     @fFFS+1.5,mCO0+177.6 Say xCOS Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=5
                     @fFFS+1.5,mCO0+177.6 Say tMAN Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                OTHERWISE
                     @fFFS+1.5,mCO0+177.6 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,22.3
           ENDCASE
      CASE wtPo>"2"
           @ ffFs+1.4, mcO0+170.2 TO ffFs+2.9, mcO0+216.4
           @ ffFs+1.4, mcO0+193.3 TO ffFs+2.9, mcO0+193.3
           @fFFS+1.5,mCO0+170.6 Say tCAN         Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIC"
           DO CASE
                CASE vsW4=3
                     @fFFS+1.5,mCO0+193.6 Say xCOS Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                CASE vsW4=5
                     @fFFS+1.5,mCO0+193.6 Say tMAN Font "&mLetAri",9 Style "NQ" Size 1,22.3 Pict "&pPIT"
                OTHERWISE
                     @fFFS+1.5,mCO0+193.6 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,22.3
           ENDCASE
 ENDCASE
 RELEASE ppIc, ppIt
ENDPROC
*
PROCEDURE Tit_2700c
 PARAMETER ppRg
 PRIVATE pnOm
 IF ppRg="2700"
      STORE " Guía de Salida" TO pnOm
 ELSE
      STORE "Guía de Entrada" TO pnOm
 ENDIF
 DO coL_fondo
 IF usW4>1
      DO prEsiona WITH "1", "BOTON", ifFs-3.1, mcO0+muCo-7
      IF mkEy=k_Esc
           RETURN
      ENDIF
      @iFFS-2.9,mCO0+mUCO-5 Say Str(vSW4,1,0)+"/"+Str(uSW4,1,0) Font "&mLetRom",9 Style "BT"
 ENDIF
 @ ifFs-0.2, mcO0+40 CLEAR TO ifFs+0.2, mcO0+muCo-1
 @ ffFs+1.3, mcO0+40 CLEAR TO ffFs+1.4, mcO0+muCo-1
 IF mrEs="3"
      @ ifFs-0.1, mcO0+093.1 CLEAR TO ffFs+1.4, mcO0+muCo-2
 ENDIF
 DO coLsc3
 @ ifFs-1.5, mcO0 TO ifFs-0.2, mcO0+muCo PATTERN 1
 @ ffFs+1.4, mcO0 TO ffFs+1.4, mcO0+muCo
 DO liN_2700c WITH ifFs-1.4, ffFs+1.4
 DO coLsc3
 @iFFS-1.4,mCO0+0.7 Say "Ítem"   Font "&mLetAri",9 Style "NQ"
 @iFFS-1.4,mCO0+9.5 Say "Código" Font "&mLetAri",9 Style "NQ"
 DO CASE
      CASE mrEs="3" .AND. vsW4=1
           @iFFS-1.4,mCO0+054.0 Say "Descripción"           Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+119.0 Say "Descripción Abrev."    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+155.5 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+172.1 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+191.4 Say "Cajas"                 Font "&mLetAri",9 Style "NQ"
      CASE mrEs="3" .AND. vsW4=2
           @iFFS-1.4,mCO0+049.0 Say "Descripción"           Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+110.0 Say "Descripción Abrev."    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+148.5 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+159.3 Say pNOM                    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+184.9 Say "Código"                Font "&mLetAri",9 Style "NQ"
      CASE mrEs="3" .AND. vsW4>2 .AND. wtPo>"2"
           @iFFS-1.4,mCO0+054.0 Say "Descripción"           Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+112.1 Say "Descripción Abrev."    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+143.5 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+161.1 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
           DO CASE
                CASE vsW4=3
                     @iFFS-1.4,mCO0+178.5 Say "Cost.Unit.Prom S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=4
                     @iFFS-1.4,mCO0+178.5 Say "Costo Tot.Prom S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=5
                     @iFFS-1.4,mCO0+178.5 Say "Cost.Unit.Mant S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=6
                     @iFFS-1.4,mCO0+178.5 Say "Costo Tot.Mant S/." Font "&mLetAri",9 Style "NQ" Size 1,20
           ENDCASE
      CASE mrEs="4" .AND. vsW4=1
           @iFFS-1.4,mCO0+054.0 Say "Descripción"           Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+119.0 Say "Descripción Abrev."    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+155.5 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+172.1 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+191.4 Say "Cajas"                 Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+201.0 Say pNOM                    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+225.9 Say "Código de Enlace"      Font "&mLetAri",9 Style "NQ"
      CASE mrEs="4" .AND. wtPo>"2"
           @iFFS-1.4,mCO0+054.0 Say "Descripción"           Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+112.0 Say "Descripción Abrev."    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+143.5 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+160.1 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+201.0 Say pNOM                    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+225.9 Say "Código de Enlace"      Font "&mLetAri",9 Style "NQ"
           DO CASE
                CASE vsW4=2
                     @iFFS-1.4,mCO0+179.4 Say "Cost.Unit.Prom S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=3
                     @iFFS-1.4,mCO0+179.4 Say "Costo Tot.Prom S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=4
                     @iFFS-1.4,mCO0+179.4 Say "Cost.Unit.Mant S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=5
                     @iFFS-1.4,mCO0+179.4 Say "Costo Tot.Mant S/." Font "&mLetAri",9 Style "NQ" Size 1,20
           ENDCASE
      CASE vsW4=1
           @iFFS-1.4,mCO0+054.0 Say "Descripción"           Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+125.0 Say "Descripción Abrev."    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+171.5 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+188.1 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+207.4 Say "Cajas"                 Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+217.0 Say pNOM                    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+241.9 Say "Código de Enlace"      Font "&mLetAri",9 Style "NQ"
      CASE wtPo>"2"
           @iFFS-1.4,mCO0+052.0 Say "Descripción"           Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+119.0 Say "Descripción Abrev."    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+160.0 Say "Unidad"                Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+176.9 Say "Cantidad"              Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+217.0 Say pNOM                    Font "&mLetAri",9 Style "NQ"
           @iFFS-1.4,mCO0+241.9 Say "Código de Enlace"      Font "&mLetAri",9 Style "NQ"
           DO CASE
                CASE vsW4=2
                     @iFFS-1.4,mCO0+194.4 Say "Cost.Unit.Prom S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=3
                     @iFFS-1.4,mCO0+194.4 Say "Costo Tot.Prom S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=4
                     @iFFS-1.4,mCO0+194.4 Say "Cost.Unit.Mant S/." Font "&mLetAri",9 Style "NQ" Size 1,20
                CASE vsW4=5
                     @iFFS-1.4,mCO0+194.4 Say "Costo Tot.Mant S/." Font "&mLetAri",9 Style "NQ" Size 1,20
           ENDCASE
 ENDCASE
 RELEASE pnOm
ENDPROC
*
PROCEDURE Xls_2700c
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Guia de Entrada "+vsEr+"-"+vdOc, "Detalle", 10
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 01).vaLue = "Item"
 pxLs.ceLls(3, 02).vaLue = "Código"
 pxLs.ceLls(3, 03).vaLue = "Descripción"
 pxLs.ceLls(3, 04).vaLue = "Unidad"
 pxLs.ceLls(3, 05).vaLue = "Cantidad"
 pxLs.ceLls(3, 06).vaLue = "Caj/Pqtes"
 pxLs.ceLls(3, 07).vaLue = "Cost.Unit. Prom"
 pxLs.ceLls(3, 08).vaLue = "Cost.Total Prom"
 pxLs.ceLls(3, 09).vaLue = "GS-Enlace"
 pxLs.ceLls(3, 10).vaLue = "Código-Enlace"
 pxLs.raNge(pxLs.coLumns(02), pxLs.coLumns(04)).nuMberformat = "@"
 pxLs.coLumns(01).nuMberformat = "##0"
 pxLs.coLumns(05).nuMberformat = "#,###,##0.0000"
 pxLs.coLumns(06).nuMberformat = "####0"
 pxLs.raNge(pxLs.coLumns(07), pxLs.coLumns(08)).nuMberformat = "#,###,##0.00"
 SELECT deT_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc
      WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-3, 6, 0))+ ;
           "... Leyendo Codigo: "+f2701cod
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 01).vaLue = f2701ite
      pxLs.ceLls(viT1, 02).vaLue = f2701cod
      pxLs.ceLls(viT1, 03).vaLue = f2701des
      pxLs.ceLls(viT1, 04).vaLue = f2701nuc
      pxLs.ceLls(viT1, 05).vaLue = f2701can
      pxLs.ceLls(viT1, 06).vaLue = f2701caj
      pxLs.ceLls(viT1, 07).vaLue = f2701cos
      pxLs.ceLls(viT1, 08).vaLue = f2701cos*f2701can
      pxLs.ceLls(viT1, 09).vaLue = f2701sgs+"-"+f2701ngs
      pxLs.ceLls(viT1, 10).vaLue = f2701cdg
      STORE viT1+1 TO viT1
      SELECT deT_ingr
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 SELECT caB_ingr
 STORE viT1+1 TO viT1
 pxLs.ceLls(viT1, 4).vaLue = "Total Cantidad"
 pxLs.ceLls(viT1, 5).vaLue = tcAn
 pxLs.ceLls(viT1, 7).vaLue = "Total Costo"
 pxLs.ceLls(viT1, 8).vaLue = f2700cos
 WITH pxLs.raNge(pxLs.ceLls(viT1,1),pxLs.ceLls(viT1,10))
      .boRders.liNestyle = 7
      .boRders(1).weIght = 2
      .boRders(2).weIght = 2
      .boRders(3).weIght = 2
      .boRders(4).weIght = 2
      .foNt.naMe = "Times New Roman"
      .foNt.siZe = 11
      .foNt.boLd = .T.
      .foNt.coLorindex = 1
      .inTerior.coLorindex = 15
      .veRticalalignment = 2
      .hoRizontalalignment = 4
 ENDWITH
 pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1,04)).meRge
 pxLs.raNge(pxLs.ceLls(viT1,6), pxLs.ceLls(viT1,07)).meRge
 pxLs.raNge(pxLs.ceLls(viT1,9), pxLs.ceLls(viT1,10)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(5,10)).inSert
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,02)).meRge
 pxLs.raNge(pxLs.ceLls(4,1), pxLs.ceLls(4,02)).meRge
 pxLs.raNge(pxLs.ceLls(3,6), pxLs.ceLls(3,07)).meRge
 pxLs.raNge(pxLs.ceLls(4,6), pxLs.ceLls(4,07)).meRge
 pxLs.raNge(pxLs.ceLls(5,6), pxLs.ceLls(5,07)).meRge
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(5,10)).foNt.naMe = "Times New Roman"
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(5,10)).foNt.siZe = 12
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(4,02)).foNt.boLd = .T.
 pxLs.raNge(pxLs.ceLls(3,09), pxLs.ceLls(5,09)).foNt.boLd = .T.
 pxLs.raNge(pxLs.ceLls(3,10), pxLs.ceLls(5,10)).hoRizontalalignment = 4
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(5,09)).nuMberformat = "@"
 pxLs.ceLls(3, 01).vaLue = "Tipo de Entrada:"
 pxLs.ceLls(4, 01).vaLue = "Observaciones:"
 pxLs.ceLls(3, 03).vaLue = xnTi
 pxLs.ceLls(4, 03).vaLue = xcM1
 pxLs.ceLls(3, 09).vaLue = "Emisión:"
 pxLs.ceLls(4, 09).vaLue = "Ord.Compra:"
 pxLs.ceLls(5, 09).vaLue = "Pedido:"
 pxLs.ceLls(3, 10).vaLue = DTOC(xfEm)
 pxLs.ceLls(4, 10).vaLue = xsOr+"-"+xoRd
 pxLs.ceLls(5, 10).vaLue = xpEd
 pxLs.coLumns(01).coLumnwidth = 07
 pxLs.coLumns(02).coLumnwidth = 17
 pxLs.coLumns(03).coLumnwidth = 50
 pxLs.coLumns(04).coLumnwidth = 12.5
 pxLs.coLumns(05).coLumnwidth = 18
 pxLs.coLumns(06).coLumnwidth = 10
 pxLs.coLumns(09).coLumnwidth = 12.5
 pxLs.coLumns(10).coLumnwidth = 15
 pxLs.raNge(pxLs.coLumns(7), pxLs.coLumns(8)).coLumnwidth = 15
 DO xl1_0000a WITH 2
 WAIT CLEAR
 SELECT deT_ingr
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
ENDPROC
*
PROCEDURE Clp_2700c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           DO xlS_2700c
           STORE 99 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_2700c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           STORE f2701ite TO vrEc
           DO diS_2700c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Opc_2700c
 PARAMETER ppRg
 DO rs3_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2700c
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs3_2700c
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
                DO rs1_2700c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs3_2700c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_2700c
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(cpA1))=0
                STORE SPACE(70) TO cpA1
                EXIT
           CASE mkEy=k_Enter
                DO CASE
                     CASE ppRg="2400"
                          SELECT deT_cpra
                     CASE ppRg="2600"
                          SELECT deT_remi
                     CASE ppRg="2700"
                          SELECT deT_ingr
                     CASE ppRg="2800"
                          SELECT deT_sali
                ENDCASE
                GOTO TOP
                SEEK vtDo+vsEr+vdOc
                STORE 0 TO vsWz
                DO WHILE  .NOT. EOF()
                     DO CASE
                          CASE ppRg="2400" .AND. f2401tdo+f2401ser+ ;
                               f2401doc<>vtDo+vsEr+vdOc
                               EXIT
                          CASE ppRg="2600" .AND. f2601tdo+f2601ser+ ;
                               f2601doc<>vtDo+vsEr+vdOc
                               EXIT
                          CASE ppRg="2700" .AND. f2701tdo+f2701ser+ ;
                               f2701doc<>vtDo+vsEr+vdOc
                               EXIT
                          CASE ppRg="2800" .AND. f2801tdo+f2801ser+ ;
                               f2801doc<>vtDo+vsEr+vdOc
                               EXIT
                          CASE ppRg="2400" .AND. AT(UPPER(ALLTRIM(cpA1)),  ;
                               UPPER(ALLTRIM(f2401des)))<>0
                               STORE 1 TO vsWz
                               EXIT
                          CASE ppRg="2600" .AND. AT(UPPER(ALLTRIM(cpA1)),  ;
                               UPPER(ALLTRIM(f2601des)))<>0
                               STORE 1 TO vsWz
                               EXIT
                          CASE ppRg="2700" .AND. AT(UPPER(ALLTRIM(cpA1)),  ;
                               UPPER(ALLTRIM(f2701des)))<>0
                               STORE 1 TO vsWz
                               EXIT
                          CASE ppRg="2800" .AND. AT(UPPER(ALLTRIM(cpA1)),  ;
                               UPPER(ALLTRIM(f2801des)))<>0
                               STORE 1 TO vsWz
                               EXIT
                     ENDCASE
                     SKIP
                ENDDO
                IF vsWz=0
                     STORE SPACE(70) TO cpA1
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     EXIT
                ENDIF
      ENDCASE
      DO paL_2700c IN PAC2700C
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_12
 DO coL_fondo
 @fFFS+1.5,mCO0+11 Say cPA1 Size 1,70 Pict "@S70" Font "&mLetRom",9  Style "BQ"
ENDPROC
*
PROCEDURE Rs1_2700c
 STORE vrEc TO crEc
 DO rs1_2700b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 STORE crEc TO vrEc
 DO rs2_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2700c
 STORE vrEc TO crEc
 IF vsW3=1
      RESTORE SCREEN FROM vpAn_11
 ENDIF
 DO p02_2700a IN PAC2700A
 DO p00_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+vsEr+vdOc  ;
    .AND. vfFs<ffFs+1
      IF f2701ite=vrEc
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
 SEEK vtDo+vsEr+vdOc+STR(irEc, 4, 0)
 DO paN_2700c
 STORE crEc TO vrEc
 STORE cfFs TO vfFs
 SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
 DO diS_2700c WITH "R"
ENDPROC
*
PROCEDURE Rs3_2700c
 DO coLsc3
 SAVE SCREEN TO vpAn_12
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="3"
           @ ifIl+0.8, mcO0+061 TO ifIl+4.0, mcO0+139.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+060 TO ifIl+3.5, mcO0+138.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+063 Say "Digitar palabra o frase para buscar en Descripción:" Font "&mLetAri",8 Style "NQ"
      CASE mrEs="4"
           @ ifIl+0.8, mcO0+081 TO ifIl+4.0, mcO0+159.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+080 TO ifIl+3.5, mcO0+158.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+083 Say "Digitar palabra o frase para buscar en Descripción:" Font "&mLetAri",8 Style "NQ"
      OTHERWISE
           @ ifIl+0.8, mcO0+091 TO ifIl+4.0, mcO0+169.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+090 TO ifIl+3.5, mcO0+168.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+093 Say "Digitar palabra o frase para buscar en Descripción:" Font "&mLetAri",8 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE Pal_2700c
 STORE k_Enter TO mkEy
 DO coLbln
 DO CASE
      CASE mrEs="3"
           @iFIL+1.8,mCO0+63.5 Edit cPA1 Font "&mLetAri",8 Style "NQ" Size 1,70,70
      CASE mrEs="4"
           @iFIL+1.8,mCO0+83.5 Edit cPA1 Font "&mLetAri",8 Style "NQ" Size 1,70,70
      OTHERWISE
           @iFIL+1.8,mCO0+93.5 Edit cPA1 Font "&mLetAri",8 Style "NQ" Size 1,70,70
 ENDCASE
 SET CURSOR ON
 READ
 SET CURSOR OFF
ENDPROC
*
PROCEDURE Hl1_2700c
 PRIVATE pfIl, pcLn
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 STORE 0 TO pcLn
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestra el contenido del Documento. Si"
 @ pfIl+1, 02 SAY  ;
   "los ítems fueran más de los que se pueden visualizar,  puede verlo por "
 @ pfIl+2, 02 SAY  ;
   "páginas.                                                               "
 @ pfIl+4, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+7, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+8, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+9, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+6, pcLn+11 SAY "ESC" STYLE "BT"
 @ pfIl+7, pcLn+11 SAY "F10" STYLE "BT"
 @ pfIl+8, pcLn+11 SAY "F1" STYLE "BT"
 @ pfIl+9, pcLn+11 SAY "F3" STYLE "BT"
 @ pfIl+6, pcLn+31 SAY "Regresar a Cabecera"
 @ pfIl+7, pcLn+31 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, pcLn+31 SAY "Ayuda del Programa"
 @ pfIl+9, pcLn+31 SAY "Ampliar Detalle y viceversa"
 STORE pfIl+10 TO pfIl
 IF wtPo="3"
      @ pfIl+0, pcLn+11 SAY "F5" STYLE "BT"
      @ pfIl+1, pcLn+11 SAY "F6" STYLE "BT"
      @ pfIl+0, pcLn+29 SAY ":" STYLE "BT"
      @ pfIl+1, pcLn+29 SAY ":" STYLE "BT"
      @ pfIl+0, pcLn+31 SAY "Generar Costos del Mantenimiento-Productos"
      @ pfIl+1, pcLn+31 SAY "Copiar Costos del Mantenimiento Grabados en"
      @ pfIl+2, pcLn+31 SAY "esta Guia"
      STORE pfIl+3 TO pfIl
 ENDIF
 @ pfIl+0, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+0, pcLn+11 SAY "F9" STYLE "BT"
 @ pfIl+0, pcLn+31 SAY "Busqueda de palabra o frase en descripción"
 STORE pfIl+1 TO pfIl
 IF usW4>1
      @ pfIl, pcLn+11 SAY "-->  <--" STYLE "BT"
      @ pfIl, pcLn+29 SAY ":" STYLE "BT"
      @ pfIl, pcLn+31 SAY "Ver otros datos"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+1, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+2, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+3, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+4, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+5, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+6, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+7, pcLn+29 SAY ":" STYLE "BT"
 @ pfIl+0, pcLn+11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+1, pcLn+11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+2, pcLn+11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+3, pcLn+11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+4, pcLn+11 SAY "HOME" STYLE "BT"
 @ pfIl+5, pcLn+11 SAY "END" STYLE "BT"
 @ pfIl+6, pcLn+11 SAY "ENTER" STYLE "BT"
 @ pfIl+7, pcLn+11 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, pcLn+31 SAY "Línea inferior"
 @ pfIl+1, pcLn+31 SAY "Línea superior"
 @ pfIl+2, pcLn+31 SAY "Página siguiente"
 @ pfIl+3, pcLn+31 SAY "Página anterior"
 @ pfIl+4, pcLn+31 SAY "Primera línea"
 @ pfIl+5, pcLn+31 SAY "Última línea"
 @ pfIl+6, pcLn+31 SAY "Ver Detalle del ítem"
 DO CASE
      CASE mpRf(18,2)="1"
           @ pfIl+7, pcLn+31 SAY "Imprime Guía de Entrada o Etiquetas"
      OTHERWISE
           @ pfIl+7, pcLn+31 SAY "Imprime Guía de Entrada"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl, pcLn
ENDPROC
*
PROCEDURE Hl2_2700c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte de la Descripción. Si la pala-"
 @ pfIl+01, 02 SAY  ;
   "bra o frase no se encuentra contenida en ninguno de estos, saldrá un"
 @ pfIl+02, 02 SAY "mensaje, en caso de encontrase se regresará a la Guía."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 13 SAY "ESC" STYLE "BT"
 @ pfIl+07, 13 SAY "F10" STYLE "BT"
 @ pfIl+08, 13 SAY "F1" STYLE "BT"
 @ pfIl+09, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+06, 23 SAY "Regresar a Cabecera"
 @ pfIl+07, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 23 SAY "Ayuda del Programa"
 @ pfIl+09, 23 SAY "Aceptar palabra y regresar a Guía"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
