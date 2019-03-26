 = INKEY(0.01)
 DO p00_2702b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seR_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO paN_2702b
 STORE ipEd TO vpEd
 STORE isEc TO vsEc
 STORE ifFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
 DO diS_2702b WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2702b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2702b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2702a IN PAC2702A
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2702b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE f2703ped+f2703sec=ipEd+isEc .AND. vpEd+vsEc=ipEd+isEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vpEd+vsEc=ipEd+isEc
                                    DO paN_2702b
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     vpEd+vsEc
                                    DO diS_2702b WITH "N"
                          ENDCASE
                          STORE ipEd TO vpEd
                          STORE isEc TO vsEc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
                          DO diS_2702b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+"ZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                   ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2703ped+f2703sec=upEd+usEc .AND. vpEd+vsEc=upEd+usEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vpEd+vsEc=upEd+usEc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2702b
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     vpEd+vsEc
                                    DO diS_2702b WITH "N"
                          ENDCASE
                          STORE upEd TO vpEd
                          STORE usEc TO vsEc
                          STORE ufFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
                          DO diS_2702b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                          ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
                          DO diS_2702b WITH "N"
                          SKIP
                          IF vpEd+vsEc=upEd+usEc
                               DO coLsc1
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2702a IN PAC2702A WITH ffFr, ffFr+1
                               STORE f2703ped TO upEd, vpEd
                               STORE f2703sec TO usEc, vsEc
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               STORE f2703ped TO ipEd
                               STORE f2703sec TO isEc
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE f2703ped TO vpEd
                               STORE f2703sec TO vsEc
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
                          DO diS_2702b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                          ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
                          DO diS_2702b WITH "N"
                          SKIP -1
                          IF vpEd+vsEc=ipEd+isEc
                               DO coLsc1
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2702a IN PAC2702A WITH ifFr, ifFr+1
                               STORE f2703ped TO ipEd, vpEd
                               STORE f2703sec TO isEc, vsEc
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    STORE f2703ped TO upEd
                                    STORE f2703sec TO usEc
                               ENDIF
                          ELSE
                               STORE f2703ped TO vpEd
                               STORE f2703sec TO vsEc
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
                          DO diS_2702b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+upEd+usEc
                SKIP
                DO CASE
                     CASE EOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                          ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2702b
                          STORE ipEd TO vpEd
                          STORE isEc TO vsEc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
                          DO diS_2702b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ipEd+isEc
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                          ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f2703tdo+f2703ser+f2703doc+ ;
                             ALLTRIM(f2703cod)+"*"<>vtDo+vsEr+vdOc+ ;
                             ALLTRIM(vcOd)+"*"
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                          ENDIF
                          DO paN_2702b
                          STORE ipEd TO vpEd
                          STORE isEc TO vsEc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
                          DO diS_2702b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2702b
 STORE ifFr TO vfFr, ufFr
 STORE f2703ped TO ipEd, upEd
 STORE f2703sec TO isEc, usEc
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc+ALLTRIM(f2703cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*" .AND. vfFr<ffFr+1
      DO diS_2702b WITH "N"
      STORE f2703ped TO upEd
      STORE f2703sec TO usEc
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2702a IN PAC2702A WITH vfFr, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2702b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+00.3 Say F2703PED Font "&mLetAri",9 Style "NQ" Size 1,7.5  Pict "!9999"
 @vFFR,pICL+09.4 Say F2703SEC Font "&mLetAri",9 Style "NQ" Size 1,5.7  Pict "9999"
 @vFFR,pICL+16.6 Say F2703PLA Font "&mLetAri",9 Style "NQ" Size 1,11.7 Pict "9,999.9999"
ENDPROC
*
PROCEDURE P00_2702b
 STORE vcO1+23 TO piCl
 STORE piCl+28.2 TO puCl
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.8, piCl, ffFr+1, puCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifFr-1.7, piCl-00.5 TO ifFr-0.2, puCl+0.4 PATTERN 1
 @iFFR-1.4,pICL+00.3 Say "Pedido" Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,pICL+09.4 Say "Sec"    Font "&mLetAri",9 Style "BT"
 @iFFR-1.4,pICL+21.2 Say "Peso"   Font "&mLetAri",9 Style "BT"
 DO liN_2702a IN PAC2702A WITH ifFr-1.7, ffFr+1.3
ENDPROC
*
PROCEDURE Rs1_2702b
 STORE vpEd TO cpEd
 STORE vsEc TO csEc
 DO rs1_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2702b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 SELECT seR_ingr
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ipEd+isEc
 DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc+ALLTRIM(f2703cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*" .AND. vfFr<ffFr+1
      IF f2703ped=vpEd .AND. f2703sec=vsEc
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      STORE vpEd TO ipEd, cpEd
      STORE vsEc TO isEc, csEc
      STORE ifFr TO vfFr, cfFr
 ENDIF
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ipEd+isEc
 DO paN_2702b
 STORE cpEd TO vpEd
 STORE csEc TO vsEc
 STORE cfFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+vpEd+vsEc
 DO diS_2702b WITH "R"
ENDPROC
*
PROCEDURE Clp_2702b
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE 99 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_2702b WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ipEd+isEc
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           STORE f2703ped TO vpEd
           STORE f2703sec TO vsEc
           DO diS_2702b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
