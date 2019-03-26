 = INKEY(0.01)
 STORE 0 TO tpL1
 DO mv1_1202b
 DO p00_1202b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE ifFr TO vfFr
 STORE SPACE(07) TO vpEd
 DO toT_1202b
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE 0 TO urCc, frCc
           DO liM_1202b
      OTHERWISE
           DO paN_1202b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           GOTO TOP
           DO muE_1202b
 ENDCASE
 STORE 01 TO irCc, vrCc
 STORE ifFr TO vfFr
 DO diS_1202b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1202b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1202b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<3
                = INKEY(0.01)
                SELECT seRies
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE "No hay Series para este Código..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SET NEAR ON
                     SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)
                     SET NEAR OFF
                     IF ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*"
                          SEEK ALLTRIM(vcOd)+"*"
                     ENDIF
                     SAVE SCREEN TO vpAn_13
                     DO paC2112w WITH "PVC1202B"
                     RESTORE SCREEN FROM vpAn_13
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SELECT seRies
                     SET FILTER TO
                     IF mkEy=k_Enter
                          STORE f2112ped TO vpEd
                          STORE f2112sec TO vsEc
                          DO diS_1202b WITH "R"
                     ELSE
                          IF mkEy<>99
                               RETURN
                          ENDIF
                     ENDIF
                ENDIF
                SELECT teMporal_6
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_1202b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1202b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_del .AND. viOm=1
                STORE SPACE(05) TO vpEd
                STORE "0000" TO vsEc
                STORE "    " TO vmOt
                STORE 00 TO vpLa, vpLo
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viOm=1
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frCc=vrCc) .OR. (mkEy=k_Pgdn .AND.  ;
                frCc=urCc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND. vrCc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irCc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. (viOm=2 .AND. viTe=3))
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vpEd))=0 .AND. viOm=1
                          STORE "Pedido no puede estar vacío..." TO mmSj
                     CASE viTe=2 .AND. LEN(ALLTRIM(vsEc))=0 .AND. viOm=1
                          STORE "Secuencia no puede estar vacía..." TO mmSj
                     CASE viTe=2 .AND. vsEc="0000" .AND. viOm=1
                          STORE "Secuencia no puede ser 0000..." TO mmSj
                     CASE viTe=2 .AND. viOm=1
                          SELECT teMporal_6
                          SET ORDER TO FTM6PED
                          SEEK ALLTRIM(vpEd)+vsEc
                          SET ORDER TO
                          IF  .NOT. EOF()
                               STORE "Pedido y Secuencia ya digitados..."  ;
                                     TO mmSj
                          ELSE
                               SELECT seRies
                               SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                               DO CASE
                                    CASE EOF()
                                         STORE  ;
                                          "Serie no se encuentra Registrada..."  ;
                                          TO mmSj
                                    CASE f2112est="V"
                                         STORE  ;
                                          "Serie se encuentra Vendida..."  ;
                                          TO mmSj
                                    CASE f2112est="M"
                                         STORE  ;
                                          "Serie se encuentra malograda..."  ;
                                          TO mmSj
                                    CASE f2112est="D"
                                         STORE  ;
                                          "Serie se encuentra Devuelta..."  ;
                                          TO mmSj
                                    CASE f2112est="O"
                                         STORE  ;
                                          "Serie no se encuentra disponible..."  ;
                                          TO mmSj
                                    CASE f2112est="0"
                                         STORE  ;
                                          "Serie no se encuentra disponible..."  ;
                                          TO mmSj
                                    OTHERWISE
                                         STORE f2112pla TO vpLa
                                         STORE f2112plo TO vpLo
                               ENDCASE
                          ENDIF
                          SELECT teMporal_6
                     CASE viTe=3 .AND. vpLa=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE viTe=3 .AND. vpLa<0
                          STORE "Cantidad no puede ser menor a 0..." TO mmSj
                     CASE viTe=3 .AND. vpLa<vpLo .AND. vpLo>0 .AND.  ;
                          LEN(ALLTRIM(vmOt))=0
                          STORE "Rotura" TO vmOt
                          DO prEsiona WITH "1", "TPOCJ3", vfFr+0.15, icL1+62.05
                     CASE viTe=3 .AND. vpLa>=vpLo .AND. vpLo>0 .AND.  ;
                          LEN(ALLTRIM(vmOt))<>0
                          DO prEsiona WITH "1", "TPOCJ0", vfFr+0.15, icL1+62.05
                          STORE SPACE(15) TO vmOt
                          STORE vpLo TO vpLa
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<3
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
                DO diS_1202b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_del
                = INKEY(0.01)
                DO coLsc1
                DO suBe WITH vfFr, icL1, ffFr, ucL1, 1
                DO liN_1202b WITH ifFr, ffFr+1.1
                IF frCc=urCc
                     STORE frCc-1 TO frCc
                     STORE urCc-1 TO urCc
                     STORE ufFr-1 TO ufFr
                ELSE
                     STORE frCc-1 TO frCc
                     STORE vfFr TO cfFr
                     STORE vrCc TO crCc
                     STORE ffFr TO vfFr
                     STORE urCc+1 TO vrCc
                     GOTO vrCc
                     STORE vrCc-1 TO vrCc
                     DO muE_1202b
                     DO diS_1202b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfFr TO vfFr
                     STORE crCc TO vrCc
                     GOTO vrCc
                ENDIF
                DELETE
                PACK
                DO toT_1202b
                IF vrCc<=frCc
                     GOTO vrCc
                     DO muE_1202b
                ELSE
                     DO liM_1202b
                     IF vfFr=ufFr
                          STORE ufFr-1 TO ufFr
                     ENDIF
                ENDIF
                DO diS_1202b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM6pla<>vpLa)
                DO ve1_1202b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vpEd))<>0 .AND.  ;
                LEN(ALLTRIM(vsEc))<>0 .AND. vsEc<>"0000"
                DO grA_1202b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                DO mv2_1202b
                STORE k_Tab TO mkEy
                EXIT
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. vrCc=vcAj-vcJd
                STORE "Cantidad de Series no puede ser mayor a la Cantidad Pedidas..."  ;
                      TO mmSj
                DO poNmsj
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)
                DO diS_1202b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfFr=ffFr
                     DO suBe WITH ifFr, icL1, ffFr, ucL1, 1
                     DO liN_1202b WITH ifFr, ffFr+1.1
                     STORE irCc+1 TO irCc
                     IF urCc<frCc
                          STORE urCc+1 TO urCc
                     ENDIF
                ELSE
                     STORE vfFr+1 TO vfFr
                ENDIF
                STORE vrCc+1 TO vrCc
                IF vrCc<=frCc
                     GOTO vrCc
                     DO muE_1202b
                ELSE
                     DO liM_1202b
                     IF vfFr=ufFr
                          STORE ufFr-1 TO ufFr
                     ENDIF
                ENDIF
           CASE mkEy=k_Up .AND. vrCc>1
                IF viOm=01
                     DO blA_1202b
                ELSE
                     DO diS_1202b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfFr=ifFr
                     DO coLsc1
                     DO baJa WITH ifFr, icL1, ffFr, ucL1, 1
                     DO liN_1202b WITH ifFr, ffFr+1.1
                     STORE irCc-1 TO irCc
                     IF ufFr<ffFr
                          STORE ufFr+1 TO ufFr
                     ELSE
                          STORE urCc-1 TO urCc
                     ENDIF
                ELSE
                     STORE vfFr-1 TO vfFr
                ENDIF
                STORE vrCc-1 TO vrCc
                GOTO vrCc
                DO muE_1202b
           CASE mkEy=k_Ctrl_home .AND. vrCc>1
                IF vrCc>frCc
                     DO blA_1202b
                ELSE
                     DO diS_1202b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irCc=vrCc
                     GOTO TOP
                     DO paN_1202b
                     STORE 01 TO vrCc
                ENDIF
                STORE irCc TO vrCc
                STORE ifFr TO vfFr
                GOTO vrCc
                DO muE_1202b
           CASE mkEy=k_Ctrl_end .AND. frCc<>vrCc
                DO diS_1202b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urCc=vrCc
                     GOTO BOTTOM
                     STORE RECNO() TO vrCc
                     SKIP -(ffFr-ifFr)
                     DO paN_1202b
                ENDIF
                STORE urCc TO vrCc
                STORE ufFr TO vfFr
                GOTO vrCc
                DO muE_1202b
           CASE mkEy=k_Pgup .AND. irCc>1
                DO diS_1202b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO irCc
                SKIP -(ffFr-ifFr+1)
                DO paN_1202b
                STORE irCc TO vrCc
                STORE ifFr TO vfFr
                GOTO vrCc
                DO muE_1202b
           CASE mkEy=k_Pgdn .AND. frCc<>urCc
                DO diS_1202b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urCc
                SKIP
                DO paN_1202b
                STORE irCc TO vrCc
                STORE ifFr TO vfFr
                GOTO vrCc
                DO muE_1202b
      ENDCASE
      DO diS_1202b WITH "R"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1 .AND. viOm=1
                @vFFR,iCL1+10.8 Get vPED Font "&mLetAri",9 Style "NQ" Size 1,10.1 Pict "!!!!!!!"   Color ,&mColBlN
           CASE viTe=2 .AND. viOm=1
                @vFFR,iCL1+22.6 Get vSEC Font "&mLetAri",9 Style "NQ" Size 1,5.7  Pict "9999"      Color ,&mColBlN
           CASE viTe=3
                @vFFR,iCL1+30.0 Get vPLA Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "9999.9999" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_1202b
 STORE ifFr TO vfFr
 STORE RECNO() TO irCc, urCc
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      STORE RECNO() TO urCc, vrCc
      STORE vfFr TO ufFr
      DO muE_1202b
      DO diS_1202b WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF vfFr-1<ffFr
      DO coLsc1
      @ vfFr, icL1 CLEAR TO ffFr+1, ucL1
      DO liN_1202b WITH vfFr, ffFr+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1202b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prEsiona WITH "1", "DESCAN", vfFr, ucL1-4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vFFR,iCL1-00.3 Say vRCC Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999,999"
 @vFFR,iCL1+10.6 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.1
 @vFFR,iCL1+10.8 Say vPED Font "&mLetAri",9 Style "NQ" Size 1,10.1 Pict "!!!!!!!"
 @vFFR,iCL1+21.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.3
 @vFFR,iCL1+22.4 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.1
 @vFFR,iCL1+22.6 Say vSEC Font "&mLetAri",9 Style "NQ" Size 1,05.7 Pict "9999"
 @vFFR,iCL1+28.3 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.3
 @vFFR,iCL1+29.8 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.1
 @vFFR,iCL1+30.0 Say vPLA Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "9,999.9999"
 @vFFR,iCL1+44.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,00.7
 @vFFR,iCL1+45.8 Say vPLO Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "9,999.9999"
 DO CASE
      CASE vpLo<=vpLa
           DO prEsiona WITH "1", "TPOCJ0", vfFr+0.15, icL1+62.05
      CASE vmOt="Fabrica"
           DO prEsiona WITH "1", "TPOCJ2", vfFr+0.15, icL1+62.05
      CASE vmOt="Rotura"
           DO prEsiona WITH "1", "TPOCJ3", vfFr+0.15, icL1+62.05
      OTHERWISE
           DO prEsiona WITH "1", "TPOCJ1", vfFr+0.15, icL1+62.05
 ENDCASE
ENDPROC
*
PROCEDURE Lin_1202b
 PARAMETER piNi, pfIn
 DO coLsc1
 @ piNi, icL1+10.0 TO pfIn, icL1+10.0
 @ piNi, icL1+21.7 TO pfIn, icL1+21.7
 @ piNi, icL1+29.1 TO pfIn, icL1+29.1
 @ piNi, icL1+45.1 TO pfIn, icL1+45.1
 @ piNi, icL1+60.4 TO pfIn, icL1+60.4
 @ piNi, ucL1-5 TO pfIn, ucL1-5
ENDPROC
*
PROCEDURE Bla_1202b
 DO coLsc1
 @ vfFr, icL1-0.4 CLEAR TO vfFr+1.1, ucL1
 DO liN_1202b WITH vfFr, vfFr+1.1
ENDPROC
*
PROCEDURE Lim_1202b
 STORE "0000" TO vsEc
 STORE 01 TO viOm, viTe
 STORE 00 TO vpLa, vpLo
 STORE SPACE(15) TO vmOt
ENDPROC
*
PROCEDURE Mue_1202b
 STORE 02 TO viOm
 STORE 03 TO viTe
 STORE ftM6ped TO vpEd
 STORE ftM6sec TO vsEc
 STORE ftM6pla TO vpLa
 STORE ftM6plo TO vpLo
 STORE ftM6mot TO vmOt
ENDPROC
*
PROCEDURE Gra_1202b
 = INKEY(0.01)
 SELECT teMporal_6
 IF viOm=1
      APPEND BLANK
      STORE vfFr TO ufFr
      STORE RECNO() TO vrCc, urCc, frCc
 ELSE
      GOTO vrCc
 ENDIF
 DO CASE
      CASE vpLa<vpLo .AND. vpLo>0 .AND. LEN(ALLTRIM(vmOt))=0
           STORE "Rotura" TO vmOt
      CASE vpLa>=vpLo .AND. vpLo>0 .AND. LEN(ALLTRIM(vmOt))<>0
           STORE vpLo TO vpLa
           STORE SPACE(15) TO vmOt
 ENDCASE
 REPLACE ftM6ped WITH vpEd
 REPLACE ftM6sec WITH vsEc
 REPLACE ftM6pla WITH vpLa
 REPLACE ftM6plo WITH vpLo
 REPLACE ftM6mot WITH vmOt
 DO toT_1202b
 GOTO vrCc
 STORE 2 TO viOm
ENDPROC
*
PROCEDURE Ve1_1202b
 STORE SPACE(80) TO mmSj
 DO CASE
      CASE viOm=1 .AND. LEN(ALLTRIM(vpEd))=0
           STORE "Pedido no puede estar vacío..." TO mmSj
      CASE viOm=1 .AND. LEN(ALLTRIM(vsEc))=0
           STORE "Secuencia no puede estar vacía..." TO mmSj
      CASE viOm=1 .AND. vsEc="0000"
           STORE "Secuencia no puede ser 0000..." TO mmSj
      CASE vpLa=0
           STORE "Cantidad no puede ser 0..." TO mmSj
      CASE vpLa<0
           STORE "Cantidad no puede ser menor a 0..." TO mmSj
      CASE vpLa<vpLo .AND. vpLo>0 .AND. LEN(ALLTRIM(vmOt))=0
           STORE "Rotura" TO vmOt
           DO prEsiona WITH "1", "TPOCJ3", vfFr+0.15, icL1+62.05
      CASE vpLa>=vpLo .AND. vpLo>0 .AND. LEN(ALLTRIM(vmOt))<>0
           STORE vpLo TO vpLa
           STORE SPACE(15) TO vmOt
           DO prEsiona WITH "1", "TPOCJ0", vfFr+0.15, icL1+62.05
      CASE viOm=1
           SELECT teMporal_6
           SET ORDER TO FTM6PED
           SEEK ALLTRIM(vpEd)+vsEc
           SET ORDER TO
           IF  .NOT. EOF()
                STORE "Pedido y Secuencia ya digitados..." TO mmSj
           ELSE
                SELECT seRies
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                DO CASE
                     CASE EOF()
                          STORE "Serie no se encuentra Registrada..." TO mmSj
                     CASE f2112est="V"
                          STORE "Serie se encuentra Vendida..." TO mmSj
                     CASE f2112est="M"
                          STORE "Serie se encuentra malograda..." TO mmSj
                     CASE f2112est="D"
                          STORE "Serie se encuentra Devuelta..." TO mmSj
                     CASE f2112est="O"
                          STORE "Serie no se encuentra disponible..." TO mmSj
                     CASE f2112est="0"
                          STORE "Serie no se encuentra disponible..." TO mmSj
                     OTHERWISE
                          STORE f2112pla TO vpLa
                          STORE f2112plo TO vpLo
                          STORE "      " TO vmOt
                          DO prEsiona WITH "1", "TPOCJ0", vfFr+0.15, icL1+62.05
                ENDCASE
           ENDIF
           SELECT teMporal_6
 ENDCASE
ENDPROC
*
PROCEDURE P00_1202b
 STORE vcO2 TO icL1
 STORE icL1+105.9 TO ucL1
 DO prEsiona WITH "4", "R_CONS13", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.8, icL1-0.5, ffFr+2.4, ucL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifFr-1.7, icL1-1 TO ifFr-0.2, ucL1+0.5 PATTERN 1
 @ ffFr+1.1, icL1-1 TO ffFr+2.5, ucL1+0.5 PATTERN 1
 @ ffFr+1.1, icL1+25.1 TO ffFr+2.5, icL1+25.1
 @ ffFr+1.1, icL1+45.1 TO ffFr+2.5, icL1+45.1
 DO liN_1202b WITH ifFr-1.7, ffFr+1.1
 @iFFR-1.4,iCL1+02.7 Say "Ítem"                 Font "&mLetAri",9 Style "NT"
 @iFFR-1.4,iCL1+12.0 Say "Pedido"               Font "&mLetAri",9 Style "NT"
 @iFFR-1.4,iCL1+23.8 Say "Sec"                  Font "&mLetAri",9 Style "NT"
 @iFFR-1.4,iCL1+32.0 Say "Cantidad"             Font "&mLetAri",9 Style "NT"
 @iFFR-1.4,iCL1+47.7 Say "Cant.Orig"            Font "&mLetAri",9 Style "NT"
 @iFFR-1.4,iCL1+70.7 Say "Motivo de Diferencia" Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Tot_1202b
 DO coLsc3
 SUM ftM6pla TO tpL1 ALL
 @fFFR+1.2,iCL1+25.7 Say tPL1 Font "&mLetAri",9 Style "NQ" Pict "99,999.9999" Size 1,18.9
ENDPROC
*
PROCEDURE Rs1_1202b
 STORE vrCc TO crCc
 STORE vfFr TO cfFr
 DO rs1_1200c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_1202b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_6
 IF frCc>0 .AND. irCc<=frCc
      GOTO irCc
      DO paN_1202b
 ENDIF
 STORE crCc TO vrCc
 STORE cfFr TO vfFr
 IF frCc>0 .AND. vrCc<=frCc
      GOTO vrCc
 ELSE
      STORE 1 TO viOm
      DO liM_1202b
 ENDIF
 DO diS_1202b WITH "R"
ENDPROC
*
PROCEDURE Mv1_1202b
 SELECT teMporal_6
 ZAP
 SELECT teMporal_7
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM7cod)+"*"=ALLTRIM(vcOd)+"*"
      STORE ftM7ped TO vpEd
      STORE ftM7sec TO vsEc
      STORE ftM7pla TO vpLa
      STORE ftM7plo TO vpLo
      STORE ftM7mot TO vmOt
      SELECT teMporal_6
      APPEND BLANK
      REPLACE ftM6ped WITH vpEd
      REPLACE ftM6sec WITH vsEc
      REPLACE ftM6pla WITH vpLa
      REPLACE ftM6plo WITH vpLo
      REPLACE ftM6mot WITH vmOt
      STORE RECNO() TO frCc
      SELECT teMporal_7
      SKIP
 ENDDO
 SELECT teMporal_6
ENDPROC
*
PROCEDURE Mv2_1202b
 SELECT teMporal_7
 SET ORDER TO 0
 DELETE FOR ALLTRIM(ftM7cod)+"*"=ALLTRIM(vcOd)+"*"
 PACK
 REINDEX
 SET ORDER TO FTM7COD
 SELECT teMporal_6
 GOTO TOP
 STORE 0 TO vcAn, vcAj
 DO WHILE  .NOT. EOF()
      STORE ftM6ped TO vpEd
      STORE ftM6sec TO vsEc
      STORE ftM6pla TO vpLa
      STORE ftM6plo TO vpLo
      STORE ftM6mot TO vmOt
      SELECT teMporal_7
      APPEND BLANK
      REPLACE ftM7cod WITH vcOd
      REPLACE ftM7ped WITH vpEd
      REPLACE ftM7sec WITH vsEc
      REPLACE ftM7pla WITH vpLa
      REPLACE ftM7plo WITH vpLo
      REPLACE ftM7mot WITH vmOt
      STORE vcAn+vpLa TO vcAn
      STORE vcAj+1 TO vcAj
      SELECT teMporal_6
      SKIP
 ENDDO
 SELECT teMporal_7
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
ENDPROC
*
PROCEDURE Clp_1202b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+44.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Tab TO mkEy
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
      CASE mfIl>=vfFr .AND. mfIl<=vfFr+1 .AND. mcCc>=icL1+61.7 .AND. mcCc<= ;
           icL1+75.3 .AND. LEN(ALLTRIM(vmOt))<>0
           DO prEsiona WITH "1", "TPOCJ1", vfFr+0.15, icL1+62.05
           STORE SPACE(15) TO vmOt
           STORE vpLo TO vpLa
           STORE 99 TO mkEy
      CASE mfIl>=vfFr .AND. mfIl<=vfFr+1 .AND. vpLo>vpLa .AND. mcCc>=icL1+ ;
           75.3 .AND. mcCc<=icL1+87.9 .AND. vmOt<>"Fabrica        "
           DO prEsiona WITH "1", "TPOCJ2", vfFr+0.15, icL1+62.05
           STORE "Fabrica        " TO vmOt
           STORE 99 TO mkEy
      CASE mfIl>=vfFr .AND. mfIl<=vfFr+1 .AND. vpLo>vpLa .AND. mcCc>=icL1+ ;
           87.9 .AND. mcCc<=icL1+99.9 .AND. vmOt<>"Rotura         "
           DO prEsiona WITH "1", "TPOCJ3", vfFr+0.15, icL1+62.05
           STORE "Rotura         " TO vmOt
           STORE 99 TO mkEy
      CASE mfIl>=vfFr .AND. mfIl<=vfFr+1 .AND. mcCc>=ucL1-4.8 .AND. mcCc<= ;
           ucL1+0.2
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfFr .AND. mfIl<=vfFr+1 .AND. viOm=1 .AND. mcCc>=icL1+ ;
           0.5 .AND. mcCc<=icL1+21.7 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFr .AND. mfIl<=vfFr+1 .AND. viOm=1 .AND. mcCc>=icL1+ ;
           21.7 .AND. mcCc<=icL1+29.1 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vpEd))=0
                     STORE "Pedido no puede estar vacío..." TO mmSj
                OTHERWISE
                     STORE 02 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFr .AND. mfIl<=vfFr+1 .AND. mcCc>=icL1+29.1 .AND. mcCc<= ;
           ucL1-4.8 .AND. viTe<>3
           DO CASE
                CASE LEN(ALLTRIM(vpEd))=0 .AND. viOm=1
                     STORE "Pedido no puede estar vacío..." TO mmSj
                CASE LEN(ALLTRIM(vsEc))=0 .AND. viOm=1
                     STORE "Secuencia no puede estar vacía..." TO mmSj
                CASE vsEc="0000" .AND. viOm=1
                     STORE "Secuencia no puede ser 0000..." TO mmSj
                OTHERWISE
                     STORE 03 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFr .AND. mfIl<=vfFr+1 .AND. mcCc>=icL1-0.8 .AND. mcCc<= ;
           ucL1+0.2
           STORE 99 TO mkEy
      CASE mfIl>=ifFr .AND. mfIl<=ufFr+1 .AND. mcCc>=icL1-0.8 .AND. mcCc<= ;
           ucL1+0.2
           IF LEN(ALLTRIM(vpEd))<>0 .AND. LEN(ALLTRIM(vsEc))<>0 .AND.  ;
              vsEc<>"000" .AND. vpLa>0
                DO grA_1202b
           ENDIF
           IF viOm=1
                DO blA_1202b
           ELSE
                DO diS_1202b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           GOTO irCc
           SKIP INT(mfIl-ifFr)
           STORE RECNO() TO vrCc
           DO muE_1202b
           DO diS_1202b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=ucL1-4.8 .AND. mcCc<=ucL1+0.2
                     STORE 01 TO viTe
                     STORE k_Alt_del TO mkEy
                CASE mcCc>=icL1 .AND. mcCc<=icL1+21.7
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE mcCc>=icL1+21.7 .AND. mcCc<=icL1+29.1
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE mcCc>=icL1+29.1 .AND. mcCc<=ucL1-4.8
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1202b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En este detalle se deben ingresar los números de series del producto."
 @ pfIl+2, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+4, 20 SAY ":" STYLE "BT"
 @ pfIl+5, 20 SAY ":" STYLE "BT"
 @ pfIl+6, 20 SAY ":" STYLE "BT"
 @ pfIl+4, 02 SAY "ESC" STYLE "BT"
 @ pfIl+5, 02 SAY "F10" STYLE "BT"
 @ pfIl+6, 02 SAY "F1" STYLE "BT"
 @ pfIl+4, 22 SAY "Regresar al Detalle sin Aprobar"
 @ pfIl+5, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+6, 22 SAY "Ayuda del Programa"
 STORE pfIl+7 TO pfIl
 IF viTe<3
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F2" STYLE "BT"
      @ pfIl, 22 SAY "Consultar Series"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 20 SAY ":" STYLE "BT"
 @ pfIl+02, 20 SAY ":" STYLE "BT"
 @ pfIl+03, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+02, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+03, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+04, 02 SAY "CTRL <-" STYLE "BT"
 @ pfIl+05, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+06, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+07, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+08, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+09, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+10, 02 SAY "TAB" STYLE "BT"
 @ pfIl+00, 22 SAY "Ir al siguiente campo, llegando al último campo pasa a"
 @ pfIl+01, 22 SAY "la siguiente línea"
 @ pfIl+02, 22 SAY "Ir a la línea siguiente"
 @ pfIl+03, 22 SAY "Ir a la línea anterior"
 @ pfIl+04, 22 SAY "Ir al campo anterior"
 @ pfIl+05, 22 SAY "Primera línea del Detalle"
 @ pfIl+06, 22 SAY "Última línea del Detalle"
 @ pfIl+07, 22 SAY "Página siguiente"
 @ pfIl+08, 22 SAY "Página anterior"
 @ pfIl+09, 22 SAY "Borrar línea"
 @ pfIl+10, 22 SAY "Aprobar series"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
