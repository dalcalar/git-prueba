 = INKEY(0.01)
 DO mv1_2701a
 DO p00_2701a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vpEd TO vpD1
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE ifFs TO vfFs
 DO toT_2701a
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE 00 TO urCc, frCc, vpLa, vpLo
           STORE 01 TO viMm
           STORE "0000" TO vsEc
           STORE SPACE(15) TO vmOt
      OTHERWISE
           DO paN_2701a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           GOTO TOP
           DO muE_2701a
 ENDCASE
 STORE 01 TO irCc, vrCc
 STORE ifFs TO vfFs
 DO diS_2701a WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2701a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2701a
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2701a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2701a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_del .AND. viMm=01
                STORE SPACE(05) TO vpD1
                STORE "0000" TO vsEc
                STORE "    " TO vmOt
                STORE 00 TO vpLa, vpLo
           CASE mkEy=k_Alt_c .AND. (vtPp<>2 .AND. vtPp<>4)
                SAVE SCREEN TO vpAn_12
                DO coL_fondo
                STORE 1 TO vnUm
                DO cuAdro WITH ifFs+3, icL1+21.8, ifFs+6, icL1+74.8
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                @iFFS+4,iCL1+23 Say "�tems iguales Adicionales:" Font "&mLetRom",13 Style "BQ"
                @iFFS+4,iCL1+65 Get vNUM                         Font "&mLetRom",13 Style "BQ" Pict "9999" Size 1,6
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET READBORDER OFF
                RESTORE SCREEN FROM vpAn_12
                DO CASE
                     CASE mkEy=k_F10
                          DO reTorna
                     CASE mkEy=k_Esc
                          STORE 99 TO mkEy
                     CASE vpLa=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE vpLa<0
                          STORE "Cantidad no puede ser menor a 0..." TO mmSj
                     CASE vnUm=0
                          STORE "�tem no puede ser 0..." TO mmSj
                     OTHERWISE
                          IF viMm=1
                               SELECT teMporal_5
                               SET ORDER TO FTM5PED
                               SEEK ALLTRIM(vpD1)+vsEc
                               SET ORDER TO
                               IF  .NOT. EOF()
                                    STORE  ;
                                     "Pedido y Secuencia ya digitados..."  ;
                                     TO mmSj
                               ELSE
                                    SELECT seRies
                                    SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
                                    DO CASE
                                         CASE EOF()
                                              STORE vpLa TO vpLo
                                              STORE "  " TO vmOt
                                              DO grA_2701a IN PAI2701A
                                         OTHERWISE
                                              STORE  ;
                                               "Serie se encuentra Registrada..."  ;
                                               TO mmSj
                                    ENDCASE
                               ENDIF
                          ENDIF
                          IF LEN(ALLTRIM(mmSj))=0
                               STORE 1 TO cnUm
                               STORE vrCc TO crCc
                               DO WHILE .T.
                                    STORE STRTRAN(STR(VAL(vsEc)+1, 4, 0),  ;
                                     " ", "0") TO vsEc
                                    SELECT teMporal_5
                                    SET ORDER TO FTM5PED
                                    SEEK ALLTRIM(vpD1)+vsEc
                                    SET ORDER TO
                                    IF EOF()
                                         SELECT seRies
                                         SEEK ALLTRIM(vcOd)+"*"+ ;
                                          ALLTRIM(vpD1)+vsEc
                                         IF EOF()
                                              STORE 1 TO viMm
                                              STORE frCc+1 TO vrCc
                                              DO grA_2701a IN PAI2701A
                                              STORE cnUm+1 TO cnUm
                                              IF cnUm>vnUm .OR. vsEc="9999"
                                                   EXIT
                                              ENDIF
                                         ENDIF
                                    ENDIF
                               ENDDO
                               GOTO irCc
                               DO paN_2701a
                               GOTO urCc
                               STORE urCc TO vrCc
                               STORE ufFs TO vfFs
                               STORE k_Ctrl_end TO mkEy
                               LOOP
                          ENDIF
                ENDCASE
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viMm=1
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frCc=vrCc) .OR. (mkEy=k_Pgdn .AND.  ;
                frCc=urCc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND.  ;
                vrCc=01
                STORE "Est�s en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irCc=1
                STORE "Est�s en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. viMm=2)
                STORE "No se puede retroceder m�s..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viMm=1 .OR.  ;
                vtPp=1 .OR. vtPp=3 .OR. vtPp=4)
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vpD1))=0
                          STORE "Pedido no puede estar vac�o..." TO mmSj
                     CASE viTe=2 .AND. LEN(ALLTRIM(vsEc))=0
                          STORE "Secuencia no puede estar vac�a..." TO mmSj
                     CASE viTe=2 .AND. vsEc="0000"
                          STORE "Secuencia no puede ser 0000..." TO mmSj
                     CASE viTe=2
                          SELECT teMporal_5
                          SET ORDER TO FTM5PED
                          SEEK ALLTRIM(vpD1)+vsEc
                          SET ORDER TO
                          IF  .NOT. EOF()
                               STORE "Pedido y Secuencia ya digitados..."  ;
                                     TO mmSj
                          ELSE
                               SELECT seRies
                               SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
                               DO CASE
                                    CASE EOF() .AND. (vtPp=2 .OR. vtPp=4)
                                         STORE  ;
                                          "Serie no se encuentra Registrada..."  ;
                                          TO mmSj
                                    CASE EOF()
                                         STORE vpLa TO vpLo
                                         STORE SPACE(15) TO vmOt
                                         DO prEsiona WITH "1", "TPOCJ1",  ;
                                          vfFs+0.15, icL1+62.05
                                    CASE  .NOT. EOF() .AND. (vtPp=2 .AND.  ;
                                     f2112est<>"V" .AND. f2112est<>"O")
                                         STORE  ;
                                          "Serie no se encuentra Vendida..."  ;
                                          TO mmSj
                                    CASE  .NOT. EOF() .AND. (vtPp=4 .AND.  ;
                                     f2112est<>"S")
                                         STORE  ;
                                          "Serie no esta Disponible..." TO mmSj
                                    CASE  .NOT. EOF() .AND. (vtPp<>2  ;
                                     .AND. vtPp<>4)
                                         STORE  ;
                                          "Serie se encuentra Registrada..."  ;
                                          TO mmSj
                                    OTHERWISE
                                         STORE f2112plo TO vpLa, vpLo
                                         STORE SPACE(15) TO vmOt
                                         DO prEsiona WITH "1", "TPOCJ1",  ;
                                          vfFs+0.15, icL1+62.05
                               ENDCASE
                          ENDIF
                          SELECT teMporal_5
                     CASE viTe=3 .AND. vpLa=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE viTe=3 .AND. vpLa<0
                          STORE "Cantidad no puede ser menor a 0..." TO mmSj
                     CASE viTe=3 .AND. vpLa>vpLo .AND. (vtPp=2 .OR. vtPp=4)
                          STORE "Cantidad no puede ser mayor a Original..."  ;
                                TO mmSj
                          STORE vpLa TO vpLo
                          STORE SPACE(15) TO vmOt
                          DO prEsiona WITH "1", "TPOCJ1", vfFs+0.15, icL1+62.05
                     CASE viTe=3 .AND. vtPp<>2 .AND. vtPp<>4
                          STORE vpLa TO vpLo
                          STORE SPACE(15) TO vmOt
                          DO prEsiona WITH "1", "TPOCJ1", vfFs+0.15, icL1+62.05
                     CASE viTe=3 .AND. vtPp=2 .AND. vpLo<>vpLa .AND.  ;
                          LEN(ALLTRIM(vmOt))=0
                          STORE "Rotura" TO vmOt
                          DO prEsiona WITH "1", "TPOCJ3", vfFs+0.15, icL1+62.05
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<3
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
                DO diS_2701a WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Alt_del
                = INKEY(0.01)
                DO coLsc1
                DO suBe WITH vfFs, icL1, ffFs, ucL1, 1
                DO liN_2701a WITH ifFs, ffFs+1.1
                IF frCc=urCc
                     STORE frCc-1 TO frCc
                     STORE urCc-1 TO urCc
                     STORE ufFs-1 TO ufFs
                ELSE
                     STORE frCc-1 TO frCc
                     STORE vfFs TO cfFs
                     STORE vrCc TO crCc
                     STORE ffFs TO vfFs
                     STORE urCc+1 TO vrCc
                     GOTO vrCc
                     STORE vrCc-1 TO vrCc
                     DO muE_2701a
                     DO diS_2701a WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfFs TO vfFs
                     STORE crCc TO vrCc
                     GOTO vrCc
                ENDIF
                DELETE
                PACK
                DO toT_2701a
                IF vrCc<=frCc
                     GOTO vrCc
                     DO muE_2701a
                ELSE
                     DO liM_2701a
                     IF vfFs=ufFs
                          STORE ufFs-1 TO ufFs
                     ENDIF
                ENDIF
                DO diS_2701a WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viMm=1 .OR. ftM5pla<>vpLa)
                DO ve1_2701a
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viMm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vpD1))<>0 .AND.  ;
                LEN(ALLTRIM(vsEc))<>0 .AND. vsEc<>"0000"
                DO grA_2701a
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab .AND. vpIe>0
                DO mv2_2701a
                STORE k_Tab TO mkEy
                EXIT
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. (viMm=1 .OR. LEN(ALLTRIM(mmSj))<>0)
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)
                DO diS_2701a WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfFs=ffFs
                     DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                     DO liN_2701a WITH ifFs, ffFs+1.1
                     STORE irCc+1 TO irCc
                     IF urCc<frCc
                          STORE urCc+1 TO urCc
                     ENDIF
                ELSE
                     STORE vfFs+1 TO vfFs
                ENDIF
                STORE vrCc+1 TO vrCc
                IF vrCc<=frCc
                     GOTO vrCc
                     DO muE_2701a
                ELSE
                     DO liM_2701a
                     IF vfFs=ufFs
                          STORE ufFs-1 TO ufFs
                     ENDIF
                ENDIF
           CASE mkEy=k_Up .AND. vrCc>1
                IF viMm=01
                     DO blA_2701a
                ELSE
                     DO diS_2701a WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfFs=ifFs
                     DO coLsc1
                     DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                     DO liN_2701a WITH ifFs, ffFs+1.1
                     STORE irCc-1 TO irCc
                     IF ufFs<ffFs
                          STORE ufFs+1 TO ufFs
                     ELSE
                          STORE urCc-1 TO urCc
                     ENDIF
                ELSE
                     STORE vfFs-1 TO vfFs
                ENDIF
                STORE vrCc-1 TO vrCc
                GOTO vrCc
                DO muE_2701a
           CASE mkEy=k_Ctrl_home .AND. vrCc>1
                IF vrCc>frCc
                     DO blA_2701a
                ELSE
                     DO diS_2701a WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irCc=vrCc
                     GOTO TOP
                     DO paN_2701a
                     STORE 01 TO vrCc
                ENDIF
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2701a
           CASE mkEy=k_Ctrl_end .AND. frCc<>vrCc
                DO diS_2701a WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urCc=vrCc
                     GOTO BOTTOM
                     STORE RECNO() TO vrCc
                     SKIP -(ffFs-ifFs)
                     DO paN_2701a
                ENDIF
                STORE urCc TO vrCc
                STORE ufFs TO vfFs
                GOTO vrCc
                DO muE_2701a
           CASE mkEy=k_Pgup .AND. irCc>1
                DO diS_2701a WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO irCc
                SKIP -(ffFs-ifFs+1)
                DO paN_2701a
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2701a
           CASE mkEy=k_Pgdn .AND. frCc<>urCc
                DO diS_2701a WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urCc
                SKIP
                DO paN_2701a
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2701a
      ENDCASE
      DO diS_2701a WITH "R"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1 .AND. viMm=1
                @vFFS,iCL1+10.8 Get vPD1 Font "&mLetAri",9 Style "NQ" Size 1,9.8  Pict "!!!!!!!"   Color ,&mColBlN
           CASE viTe=2 .AND. viMm=1
                @vFFS,iCL1+22.6 Get vSEC Font "&mLetAri",9 Style "NQ" Size 1,5.4  Pict "9999"      Color ,&mColBlN
           CASE viTe=3
                @vFFS,iCL1+30.0 Get vPLA Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "9999.9999" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_2701a
 STORE ifFs TO vfFs
 STORE RECNO() TO irCc, urCc
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      STORE RECNO() TO urCc, vrCc
      STORE vfFs TO ufFs
      DO muE_2701a
      DO diS_2701a WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF vfFs-1<ffFs
      DO coLsc1
      @ vfFs, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_2701a WITH vfFs, ffFs+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2701a
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prEsiona WITH "1", "DESCAN", vfFs, ucL1-4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vFFS,iCL1-00.4 Say vRCC Font "&mLetAri",9 Style "NQ" Size 1,9.8 Pict "999,999"
 @vFFS,iCL1+10.7 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+10.8 Say vPD1 Font "&mLetAri",9 Style "NQ" Size 1,9.8 Pict "!!!!!!!"
 @vFFS,iCL1+20.7 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3
 @vFFS,iCL1+22.5 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+22.6 Say vSEC Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "9999"
 @vFFS,iCL1+28.1 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3
 @vFFS,iCL1+29.9 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+30.0 Say vPLA Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "9,999.9999"
 @vFFS,iCL1+44.0 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,0.3
 @vFFS,iCL1+45.8 Say vPLO Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "9,999.9999"
 DO CASE
      CASE vtPp<>2 .OR. vpLo=vpLa
           DO prEsiona WITH "1", "TPOCJ0", vfFs+0.15, icL1+62.05
      CASE vmOt="Fabrica"
           DO prEsiona WITH "1", "TPOCJ2", vfFs+0.15, icL1+62.05
      CASE vmOt="Rotura"
           DO prEsiona WITH "1", "TPOCJ3", vfFs+0.15, icL1+62.05
      OTHERWISE
           DO prEsiona WITH "1", "TPOCJ1", vfFs+0.15, icL1+62.05
 ENDCASE
ENDPROC
*
PROCEDURE Lin_2701a
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
PROCEDURE Bla_2701a
 DO coLsc1
 @ vfFs, icL1-0.4 CLEAR TO vfFs+1.1, ucL1
 DO liN_2701a WITH vfFs, vfFs+1.1
ENDPROC
*
PROCEDURE Lim_2701a
 IF vtPp=2 .OR. vtPp=4
      STORE 0 TO vpLo, vpLa
      STORE 2 TO viTe
 ELSE
      STORE STRTRAN(STR(VAL(vsEc)+1, 4, 0), " ", "0") TO vsEc
      IF vpLa<>vpLo
           STORE vpLo TO vpLa
      ENDIF
      STORE 3 TO viTe
 ENDIF
 STORE 1 TO viMm
ENDPROC
*
PROCEDURE Mue_2701a
 STORE 02 TO viMm
 STORE 03 TO viTe
 STORE ftM5ped TO vpD1
 STORE ftM5sec TO vsEc
 STORE ftM5pla TO vpLa
 STORE ftM5plo TO vpLo
 STORE ftM5mot TO vmOt
ENDPROC
*
PROCEDURE Gra_2701a
 = INKEY(0.01)
 SELECT teMporal_5
 IF viMm=1
      APPEND BLANK
      STORE vfFs TO ufFs
      STORE RECNO() TO vrCc, urCc, frCc
 ELSE
      GOTO vrCc
 ENDIF
 DO CASE
      CASE vpLa<vpLo .AND. vpLo>0 .AND. LEN(ALLTRIM(vmOt))=0
           STORE "Rotura" TO vmOt
      CASE vpLa=vpLo .AND. vpLo>0 .AND. LEN(ALLTRIM(vmOt))<>0
           STORE vpLo TO vpLa
           STORE SPACE(15) TO vmOt
 ENDCASE
 REPLACE ftM5ped WITH vpD1
 REPLACE ftM5sec WITH vsEc
 REPLACE ftM5pla WITH vpLa
 REPLACE ftM5plo WITH vpLo
 REPLACE ftM5mot WITH vmOt
 DO toT_2701a
 GOTO vrCc
 STORE 2 TO viMm
ENDPROC
*
PROCEDURE Ve1_2701a
 STORE SPACE(80) TO mmSj
 DO CASE
      CASE viMm=1 .AND. LEN(ALLTRIM(vpD1))=0
           STORE "Pedido no puede estar vac�o..." TO mmSj
      CASE viMm=1 .AND. LEN(ALLTRIM(vsEc))=0
           STORE "Secuencia no puede estar vac�a..." TO mmSj
      CASE viMm=1 .AND. vsEc="0000"
           STORE "Secuencia no puede ser 0000..." TO mmSj
      CASE vpLa=0
           STORE "Cantidad no puede ser 0..." TO mmSj
      CASE vpLa<0
           STORE "Cantidad no puede ser menor a 0..." TO mmSj
      CASE vpLa>vpLo .AND. (vtPp=2 .OR. vtPp=4)
           STORE "Cantidad no puede ser mayor a Original..." TO mmSj
           STORE vpLo TO vpLa
           STORE SPACE(15) TO vmOt
           DO prEsiona WITH "1", "TPOCJ1", vfFs+0.15, icL1+62.05
      CASE vtPp<>2 .AND. vtPp<>4
           STORE vpLa TO vpLo
           STORE SPACE(15) TO vmOt
           DO prEsiona WITH "1", "TPOCJ1", vfFs+0.15, icL1+62.05
      CASE vtPp=2 .AND. vpLo<>vpLa .AND. LEN(ALLTRIM(vmOt))=0
           STORE "Rotura" TO vmOt
           DO prEsiona WITH "1", "TPOCJ3", vfFs+0.15, icL1+62.05
      CASE viMm=1
           SELECT teMporal_5
           SET ORDER TO FTM5PED
           SEEK ALLTRIM(vpD1)+vsEc
           SET ORDER TO
           IF  .NOT. EOF()
                STORE "Pedido y Secuencia ya digitados..." TO mmSj
           ELSE
                SELECT seRies
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
                DO CASE
                     CASE EOF() .AND. (vtPp=2 .OR. vtPp=4)
                          STORE "Serie no se encuentra Registrada..." TO mmSj
                     CASE EOF()
                          STORE vpLa TO vpLo
                          STORE "  " TO vmOt
                          DO prEsiona WITH "1", "TPOCJ1", vfFs+0.15, icL1+62.05
                     CASE  .NOT. EOF() .AND. (vtPp=2 .AND. f2112est<>"V"  ;
                           .AND. f2112est<>"O")
                          STORE "Serie no se encuentra Vendida..." TO mmSj
                     CASE  .NOT. EOF() .AND. (vtPp=4 .AND. f2112est<>"S")
                          STORE "Serie no esta Disponible..." TO mmSj
                     CASE  .NOT. EOF() .AND. (vtPp<>2 .AND. vtPp<>4)
                          STORE "Serie se encuentra Registrada..." TO mmSj
                     OTHERWISE
                          STORE f2112plo TO vpLa, vpLo
                          STORE "      " TO vmOt
                          DO prEsiona WITH "1", "TPOCJ1", vfFs+0.15, icL1+62.05
                ENDCASE
           ENDIF
           SELECT teMporal_5
 ENDCASE
ENDPROC
*
PROCEDURE P00_2701a
 STORE vcO0-010.5 TO icL1
 STORE icL1+105.8 TO ucL1
 DO prEsiona WITH "4", "R_CONS13", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFs-1.8, icL1-0.5, ffFs+2.4, ucL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifFs-1.7, icL1-1 TO ifFs-0.2, ucL1+0.5 PATTERN 1
 @ ffFs+1.1, icL1-1 TO ffFs+2.5, ucL1+0.5 PATTERN 1
 @ ffFs+1.1, icL1+21.7 TO ffFs+2.5, icL1+21.7
 @ ffFs+1.1, icL1+45.1 TO ffFs+2.5, icL1+45.1
 DO liN_2701a IN PAI2701A WITH ifFs-1.7, ffFs+1.1
 @iFFS-1.4,iCL1+02.7 Say "�tem"                 Font "&mLetAri",9 Style "NT"
 @iFFS-1.4,iCL1+12.0 Say "Pedido"               Font "&mLetAri",9 Style "NT"
 @iFFS-1.4,iCL1+23.8 Say "Sec"                  Font "&mLetAri",9 Style "NT"
 @iFFS-1.4,iCL1+32.0 Say "Cantidad"             Font "&mLetAri",9 Style "NT"
 @iFFS-1.4,iCL1+47.7 Say "Cant.Orig"            Font "&mLetAri",9 Style "NT"
 @iFFS-1.4,iCL1+70.7 Say "Motivo de Diferencia" Font "&mLetAri",9 Style "NT"
ENDPROC
*
PROCEDURE Tot_2701a
 DO coLsc3
 SUM ftM5pla TO vpIe ALL
 @fFFS+1.3,iCL1+23 Say vPIE Font "&mLetAri",9 Style "BQ" Size 1,18 Pict "999,999,999.999"
ENDPROC
*
PROCEDURE Res_2701a
 STORE vrCc TO crCc
 STORE vfFs TO cfFs
 DO reS_2700b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2701a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_5
 IF frCc>0 .AND. irCc<=frCc
      GOTO irCc
      DO paN_2701a
 ENDIF
 STORE crCc TO vrCc
 STORE cfFs TO vfFs
 IF frCc>0 .AND. vrCc<=frCc
      GOTO vrCc
 ELSE
      STORE SPACE(07) TO vpEd
      STORE 00 TO vpLa, vpLo
      STORE 01 TO viMm, viTe
      STORE "0000" TO vsEc
 ENDIF
 DO diS_2701a WITH "R"
ENDPROC
*
PROCEDURE Mv1_2701a
 SELECT teMporal_5
 ZAP
 SELECT teMporal_6
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM6cod)+"*"=ALLTRIM(vcOd)+"*"
      STORE ftM6ped TO vpD1
      STORE ftM6sec TO vsEc
      STORE ftM6pla TO vpLa
      STORE ftM6plo TO vpLo
      STORE ftM6mot TO vmOt
      SELECT teMporal_5
      APPEND BLANK
      REPLACE ftM5ped WITH vpD1
      REPLACE ftM5sec WITH vsEc
      REPLACE ftM5pla WITH vpLa
      REPLACE ftM5plo WITH vpLo
      REPLACE ftM5mot WITH vmOt
      STORE RECNO() TO frCc
      SELECT teMporal_6
      SKIP
 ENDDO
 SELECT teMporal_5
ENDPROC
*
PROCEDURE Mv2_2701a
 SELECT teMporal_6
 SET ORDER TO 0
 DELETE FOR ALLTRIM(ftM6cod)+"*"=ALLTRIM(vcOd)+"*"
 PACK
 REINDEX
 SET ORDER TO FTM6COD
 SELECT teMporal_5
 GOTO TOP
 STORE 0 TO vcAn, vcAj
 DO WHILE  .NOT. EOF()
      STORE ftM5ped TO vpD1
      STORE ftM5sec TO vsEc
      STORE ftM5pla TO vpLa
      STORE ftM5plo TO vpLo
      STORE ftM5mot TO vmOt
      SELECT teMporal_6
      APPEND BLANK
      REPLACE ftM6cod WITH vcOd
      REPLACE ftM6ped WITH vpD1
      REPLACE ftM6sec WITH vsEc
      REPLACE ftM6pla WITH vpLa
      REPLACE ftM6plo WITH vpLo
      REPLACE ftM6mot WITH vmOt
      STORE vcAn+vpLa TO vcAn
      STORE vcAj+1 TO vcAj
      SELECT teMporal_5
      SKIP
 ENDDO
 SELECT teMporal_6
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
ENDPROC
*
PROCEDURE Clp_2701a
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
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. vtPp=2 .AND. mcCc>=icL1+ ;
           61.7 .AND. mcCc<=icL1+75.3 .AND. LEN(ALLTRIM(vmOt))<>0
           DO prEsiona WITH "1", "TPOCJ1", vfFs+0.15, icL1+62.05
           STORE SPACE(15) TO vmOt
           STORE vpLo TO vpLa
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. vtPp=2 .AND. vpLo<>vpLa  ;
           .AND. mcCc>=icL1+75.3 .AND. mcCc<=icL1+87.9 .AND. vmOt<> ;
           "Fabrica        "
           DO prEsiona WITH "1", "TPOCJ2", vfFs+0.15, icL1+62.05
           STORE "Fabrica        " TO vmOt
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. vtPp=2 .AND. vpLo<>vpLa  ;
           .AND. mcCc>=icL1+87.9 .AND. mcCc<=icL1+99.9 .AND. vmOt<> ;
           "Rotura         "
           DO prEsiona WITH "1", "TPOCJ3", vfFs+0.15, icL1+62.05
           STORE "Rotura         " TO vmOt
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. mcCc>=ucL1-4.8 .AND. mcCc<= ;
           ucL1+0.2
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. viMm=1 .AND. mcCc>=icL1+ ;
           0.5 .AND. mcCc<=icL1+21.7 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. viMm=1 .AND. mcCc>=icL1+ ;
           21.7 .AND. mcCc<=icL1+29.1 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vpD1))=0
                     STORE "Pedido no puede estar vac�o..." TO mmSj
                OTHERWISE
                     STORE 02 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. mcCc>=icL1+29.1 .AND. mcCc<= ;
           ucL1-4.8 .AND. viTe<>3
           DO CASE
                CASE LEN(ALLTRIM(vpD1))=0 .AND. viMm=1
                     STORE "Pedido no puede estar vac�o..." TO mmSj
                CASE LEN(ALLTRIM(vsEc))=0 .AND. viMm=1
                     STORE "Secuencia no puede estar vac�a..." TO mmSj
                CASE vsEc="0000" .AND. viMm=1
                     STORE "Secuencia no puede ser 0000..." TO mmSj
                OTHERWISE
                     STORE 03 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. mcCc>=icL1-0.8 .AND. mcCc<= ;
           ucL1+0.2
           STORE 99 TO mkEy
      CASE mfIl>=ifFs .AND. mfIl<=ufFs+1 .AND. mcCc>=icL1-0.8 .AND. mcCc<= ;
           ucL1+0.2
           IF LEN(ALLTRIM(vpD1))<>0 .AND. LEN(ALLTRIM(vsEc))<>0 .AND.  ;
              vsEc<>"000" .AND. vpLa>0
                DO grA_2701a
           ENDIF
           IF viMm=01
                DO blA_2701a
           ELSE
                DO diS_2701a WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           GOTO irCc
           SKIP INT(mfIl-ifFs)
           STORE RECNO() TO vrCc
           DO muE_2701a
           DO diS_2701a WITH "R"
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
PROCEDURE Hl1_2701a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En este detalle se deben ingresar los n�meros de serie de los cajones."
 @ pfIl+02, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+12, 20 SAY ":" STYLE "BT"
 @ pfIl+13, 20 SAY ":" STYLE "BT"
 @ pfIl+14, 20 SAY ":" STYLE "BT"
 @ pfIl+15, 20 SAY ":" STYLE "BT"
 @ pfIl+16, 20 SAY ":" STYLE "BT"
 @ pfIl+17, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 02 SAY "ESC" STYLE "BT"
 @ pfIl+05, 02 SAY "F10" STYLE "BT"
 @ pfIl+06, 02 SAY "F1" STYLE "BT"
 @ pfIl+07, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+09, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 02 SAY "CTRL <-" STYLE "BT"
 @ pfIl+12, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+13, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+14, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+15, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+16, 02 SAY "TAB" STYLE "BT"
 @ pfIl+17, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+04, 22 SAY "Regresar al Detalle sin Aprobar"
 @ pfIl+05, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+06, 22 SAY "Ayuda del Programa"
 @ pfIl+07, 22 SAY "Ir al siguiente campo, llegando al �ltimo campo pasa a"
 @ pfIl+08, 22 SAY "la siguiente l�nea"
 @ pfIl+09, 22 SAY "Ir a la l�nea siguiente"
 @ pfIl+10, 22 SAY "Ir a la l�nea anterior"
 @ pfIl+11, 22 SAY "Ir al campo anterior"
 @ pfIl+12, 22 SAY "Primera l�nea del Detalle"
 @ pfIl+13, 22 SAY "�ltima l�nea del Detalle"
 @ pfIl+14, 22 SAY "P�gina siguiente"
 @ pfIl+15, 22 SAY "P�gina anterior"
 @ pfIl+16, 22 SAY "Aprobar series"
 @ pfIl+17, 22 SAY "Borrar l�nea"
 IF vtPp<>2 .AND. vtPp<>4
      @ pfIl+18, 20 SAY ":" STYLE "BT"
      @ pfIl+18, 02 SAY "ALT C" STYLE "BT"
      @ pfIl+18, 22 SAY "Adicionar Series iguales a la actual"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
