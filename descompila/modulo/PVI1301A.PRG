 = INKEY(0.01)
 DO mv1_2701a IN PAI2701A
 DO p00_2701a IN PAI2701A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF SUBSTR(vpEd, 1, 1)="P"
      STORE SUBSTR(vpEd, 1, 5) TO vpD1
 ELSE
      STORE SUBSTR(vpEd, 3, 5) TO vpD1
 ENDIF
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE ifFs TO vfFs
 DO toT_2701a IN PAI2701A
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE 00 TO urCc, frCc, vpLa
           STORE 01 TO viMm
           STORE 03 TO viTe
           STORE "0000" TO vsEc
           STORE SPACE(15) TO vmOt
      OTHERWISE
           DO paN_1301a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           GOTO TOP
           DO muE_2701a IN PAI2701A
 ENDCASE
 STORE 01 TO irCc, vrCc
 STORE ifFs TO vfFs
 DO diS_2701a IN PAI2701A WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1301a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1301a
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2701a IN PAI2701A
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1301a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_del .AND. viMm=01
                STORE SPACE(05) TO vpD1
                STORE "0000" TO vsEc
                STORE 00 TO vpLa
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viMm=01
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frCc=vrCc) .OR. (mkEy=k_Pgdn .AND.  ;
                frCc=urCc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND.  ;
                vrCc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irCc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. viMm=2)
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE viTe=1 .AND. LEN(ALLTRIM(vpEd))=0
                          STORE "Pedido no puede estar vacío..." TO mmSj
                     CASE viTe=2 .AND. LEN(ALLTRIM(vsEc))=0
                          STORE "Secuencia no puede estar vacía..." TO mmSj
                     CASE viTe=2 .AND. vsEc="0000"
                          STORE "Secuencia no puede ser 0000..." TO mmSj
                     CASE viTe=2
                          SELECT teMporal_5
                          SET ORDER TO FTM5PED
                          SEEK vpEd+vsEc
                          IF  .NOT. EOF()
                               STORE "Pedido y Secuencia ya digitados..."  ;
                                     TO mmSj
                               SET ORDER TO
                          ELSE
                               SET ORDER TO
                               SELECT seRies
                               SEEK ALLTRIM(vcOd)+"*"+vpEd+vsEc
                               DO CASE
                                    CASE EOF()
                                         STORE "Serie no registrada..." TO mmSj
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
                                    CASE f2112est$"O0"
                                         STORE  ;
                                          "Serie no se encuentra disponible..."  ;
                                          TO mmSj
                                    OTHERWISE
                                         STORE f2112pla TO vpLa
                               ENDCASE
                          ENDIF
                          SELECT teMporal_5
                     CASE viTe=3 .AND. vpLa=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE viTe=3 .AND. vpLa<0
                          STORE "Cantidad no puede ser menor a 0..." TO mmSj
                     CASE viTe=3 .AND. vpLa<vpLo .AND. vpLo>0 .AND. coBs<2
                          STORE "El motivo de la diferencia de planchas debe figurar..."  ;
                                TO mmSj
                     CASE viTe=4 .AND. vpLa>=vpLo .AND. vpLo>0 .AND. coBs>1
                          STORE 1 TO coBs
                          STORE SPACE(15) TO voBs
                     CASE viTe=4 .AND. vpLa<vpLo .AND. vpLo>0 .AND. coBs<2
                          STORE "El motivo de la diferencia de planchas debe figurar..."  ;
                                TO mmSj
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<4
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
                DO diS_2701a IN PAI2701A WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Alt_del
                = INKEY(0.01)
                DO coLsc1
                DO suBe WITH vfFs, icL1, ffFs, ucL1, 1
                DO liN_2701a IN PAI2701A WITH ifFs, ffFs+1.1
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
                     DO muE_2701a IN PAI2701A
                     DO diS_2701a IN PAI2701A WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfFs TO vfFs
                     STORE crCc TO vrCc
                     GOTO vrCc
                ENDIF
                DELETE
                PACK
                DO toT_2701a IN PAI2701A
                IF vrCc<=frCc
                     GOTO vrCc
                     DO muE_2701a IN PAI2701A
                ELSE
                     DO liM_1301a
                     IF vfFs=ufFs
                          STORE ufFs-1 TO ufFs
                     ENDIF
                ENDIF
                DO diS_2701a IN PAI2701A WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viMm=1 .OR. ftM5pla<>vpLa)
                DO ve1_1301a
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
                DO grA_2701a IN PAI2701A
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab .AND. vcAn>0
                DO mv2_2701a IN PAI2701A
                STORE k_Tab TO mkEy
                EXIT
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. (viMm=1 .OR. LEN(ALLTRIM(mmSj))<>0)
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)
                DO diS_2701a IN PAI2701A WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfFs=ffFs
                     DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                     DO liN_2701a IN PAI2701A WITH ifFs, ffFs+1.1
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
                     DO muE_2701a IN PAI2701A
                ELSE
                     DO liM_1301a
                     IF vfFs=ufFs
                          STORE ufFs-1 TO ufFs
                     ENDIF
                ENDIF
           CASE mkEy=k_Up .AND. vrCc>1
                IF viMm=01
                     DO blA_2701a IN PAI2701A
                ELSE
                     DO diS_2701a IN PAI2701A WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfFs=ifFs
                     DO coLsc1
                     DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                     DO liN_2701a IN PAI2701A WITH ifFs, ffFs+1.1
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
                DO muE_2701a IN PAI2701A
           CASE mkEy=k_Ctrl_home .AND. vrCc>1
                IF vrCc>frCc
                     DO blA_2701a IN PAI2701A
                ELSE
                     DO diS_2701a IN PAI2701A WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irCc=vrCc
                     GOTO TOP
                     DO paN_1301a
                     STORE 01 TO vrCc
                ENDIF
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2701a IN PAI2701A
           CASE mkEy=k_Ctrl_end .AND. frCc<>vrCc
                DO diS_2701a IN PAI2701A WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urCc=vrCc
                     GOTO BOTTOM
                     STORE RECNO() TO vrCc
                     SKIP -(ffFs-ifFs)
                     DO paN_1301a
                ENDIF
                STORE urCc TO vrCc
                STORE ufFs TO vfFs
                GOTO vrCc
                DO muE_2701a IN PAI2701A
           CASE mkEy=k_Pgup .AND. irCc>1
                DO diS_2701a IN PAI2701A WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO irCc
                SKIP -(ffFs-ifFs+1)
                DO paN_1301a
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2701a IN PAI2701A
           CASE mkEy=k_Pgdn .AND. frCc<>urCc
                DO diS_2701a IN PAI2701A WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urCc
                SKIP
                DO paN_1301a
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2701a IN PAI2701A
      ENDCASE
      DO diS_2701a IN PAI2701A WITH "R"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1 .AND. viMm=1
                @vFFS,iCL1+08.2 Get vPD1 Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "!9999"  Color ,&mColBlN
           CASE viTe=2 .AND. viMm=1
                @vFFS,iCL1+17.6 Get vSEC Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "9999"   Color ,&mColBlN
           CASE viTe=3
                @vFFS,iCL1+25.0 Get vPLA Font "&mLetAri",9 Style "NQ" Size 1,9.7 Pict "999999" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_1301a
 STORE ifFs TO vfFs
 STORE RECNO() TO irCc, urCc
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      STORE RECNO() TO urCc, vrCc
      STORE vfFs TO ufFs
      DO muE_2701a IN PAI2701A
      DO diS_2701a IN PAI2701A WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF vfFs-1<ffFs
      DO coLsc1
      @ vfFs, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_2701a IN PAI2701A WITH vfFs, ffFs+1.1
 ENDIF
ENDPROC
*
PROCEDURE Lim_1301a
 STORE STRTRAN(STR(VAL(vsEc)+1, 4, 0), " ", "0") TO vsEc
 STORE 1 TO viMm, viTe
 STORE 0 TO vpLa
ENDPROC
*
PROCEDURE Ve1_1301a
 STORE SPACE(80) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vpEd))=0 .AND. viMm=1
           STORE "Pedido no puede estar vacío..." TO mmSj
      CASE LEN(ALLTRIM(vsEc))=0 .AND. viMm=1
           STORE "Secuencia no puede estar vacía..." TO mmSj
      CASE vsEc="0000" .AND. viMm=1
           STORE "Secuencia no puede ser 0000..." TO mmSj
      CASE vpLa=0
           STORE "Cantidad no puede ser 0..." TO mmSj
      CASE vpLa<0
           STORE "Cantidad no puede ser menor a 0..." TO mmSj
      CASE vpLa>=vpLo .AND. vpLo>0 .AND. coBs>1
           STORE 1 TO coBs
           STORE SPACE(15) TO voBs
      CASE vpLa<vpLo .AND. vpLo>0 .AND. coBs<2
           STORE "El motivo de la diferencia de planchas debe figurar..."  ;
                 TO mmSj
      CASE viMm=1
           SELECT teMporal_5
           SET ORDER TO FTM5PED
           SEEK vpEd+vsEc
           IF  .NOT. EOF()
                STORE "Pedido y Secuencia ya digitados..." TO mmSj
                SET ORDER TO
           ELSE
                SET ORDER TO
                SELECT seRies
                SEEK ALLTRIM(vcOd)+"*"+vpEd+vsEc
                DO CASE
                     CASE EOF()
                          STORE "Serie no registrada..." TO mmSj
                     CASE f2112est="V"
                          STORE "Serie se encuentra Vendida..." TO mmSj
                     CASE f2112est="M"
                          STORE "Serie se encuentra malograda..." TO mmSj
                     CASE f2112est="D"
                          STORE "Serie se encuentra Devuelta..." TO mmSj
                     CASE f2112est$"O0"
                          STORE "Serie no se encuentra disponible..." TO mmSj
                     OTHERWISE
                          STORE f2112pla TO vpLo
                          IF vpLa=0
                               STORE vpLo TO vpLa
                          ENDIF
                ENDCASE
           ENDIF
           SELECT teMporal_5
 ENDCASE
ENDPROC
*
PROCEDURE Res_1301a
 STORE vrCc TO crCc
 STORE vfFs TO cfFs
 DO reS_2800b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2701a IN PAI2701A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_5
 IF frCc>0 .AND. irCc<=frCc
      GOTO irCc
      DO paN_1301a
 ENDIF
 STORE crCc TO vrCc
 STORE cfFs TO vfFs
 IF frCc>0 .AND. vrCc<=frCc
      GOTO vrCc
 ELSE
      STORE SPACE(05) TO vpEd
      STORE 00 TO vpLa
      STORE 01 TO viMm, viTe
      STORE "0000" TO vsEc
 ENDIF
 DO diS_2701a IN PAI2701A WITH "R"
ENDPROC
*
PROCEDURE Clp_1301a
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
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. mcCc>=ucL1-4.8 .AND. mcCc<= ;
           ucL1+0.2
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. viMm=1 .AND. mcCc>=icL1+ ;
           0.5 .AND. mcCc<=icL1+16.7 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. viMm=1 .AND. mcCc>=icL1+ ;
           16.7 .AND. mcCc<=icL1+24.3 .AND. viTe<>2
           DO CASE
                CASE LEN(ALLTRIM(vpD1))=0
                     STORE "Pedido no puede estar vacío..." TO mmSj
                OTHERWISE
                     STORE 02 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. mcCc>=icL1+24.3 .AND. mcCc<= ;
           ucL1-4.8 .AND. viTe<>3
           DO CASE
                CASE LEN(ALLTRIM(vpD1))=0 .AND. viMm=1
                     STORE "Pedido no puede estar vacío..." TO mmSj
                CASE LEN(ALLTRIM(vsEc))=0 .AND. viMm=1
                     STORE "Secuencia no puede estar vacía..." TO mmSj
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
              vsEc<>"0000" .AND. vpLa>0
                DO grA_2701a IN PAI2701A
           ENDIF
           IF viMm=01
                DO blA_2701a IN PAI2701A
           ELSE
                DO diS_2701a IN PAI2701A WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           GOTO irCc
           SKIP INT(mfIl-ifFs)
           STORE RECNO() TO vrCc
           DO muE_2701a IN PAI2701A
           DO diS_2701a IN PAI2701A WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=ucL1-4.8 .AND. mcCc<=ucL1+0.2
                     STORE 01 TO viTe
                     STORE k_Alt_del TO mkEy
                CASE mcCc>=icL1 .AND. mcCc<=icL1+16.7
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE mcCc>=icL1+16.7 .AND. mcCc<=icL1+24.3
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE mcCc>=icL1+24.3 .AND. mcCc<=ucL1-4.8
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
