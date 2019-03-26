 = INKEY(0.01)
 SELECT teMporal
 SET ORDER TO FTM1FE1
 STORE 1 TO vsW2
 DO boT_2431f
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 DO paN_2431f
 STORE 999 TO mkEy
 STORE ifEm TO vfEm
 STORE itDo TO vtDo
 STORE isEr TO vsEr
 STORE idOc TO vdOc
 STORE ipRv TO vpRv
 STORE inOm TO vnOm
 STORE imOn TO vmOn
 STORE ifFs TO vfFs
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
      CASE vsW2=2
           SEEK ALLTRIM(vcOd)+"*"+vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
      CASE vsW2=3
           SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7,  ;
                4)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
 ENDCASE
 DO diS_2431f WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2431f
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2431f
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                DO diS_2431f WITH "N"
                STORE 0 TO vsW2
                DO boT_2431f
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2431f
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2431f
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                IF mkEy=k_Right
                     DO CASE
                          CASE vsW2=3
                               STORE 1 TO vsW2
                          OTHERWISE
                               STORE vsW2+1 TO vsW2
                     ENDCASE
                ELSE
                     DO CASE
                          CASE vsW2=1
                               STORE 3 TO vsW2
                          OTHERWISE
                               STORE vsW2-1 TO vsW2
                     ENDCASE
                ENDIF
                DO caM_2431f
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_13
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Compras_del_"+vFEC+"_Ped."+AllTrim(vCOD)+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_13
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM1TDO,FTM1SER,FTM1DOC,FTM1FEM,FTM1PRV,FTM1NOM,FTM1MON,FTM1TOT Type XLS for AllTrim(FTM1COD)+"*" = AllTrim(vCOD)+"*"
                     ENDCASE
                ENDIF
                SELECT teMporal
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                               STR(vmOn, 1, 0)
                     CASE vsW2=2
                          SEEK ALLTRIM(vcOd)+"*"+vtDo+SUBSTR(DTOC(vfEm),  ;
                               7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                               SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                               ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                     CASE vsW2=3
                          SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+vpRv+ ;
                               SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                               ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                ENDCASE
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2431f
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                DO CASE
                     CASE vsW2=1
                          SET ORDER TO FTM1FE1
                     CASE vsW2=2
                          SET ORDER TO FTM1TD1
                     CASE vsW2=3
                          SET ORDER TO FTM1PR1
                ENDCASE
                GOTO TOP
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                               STR(vmOn, 1, 0)
                     CASE vsW2=2
                          SEEK ALLTRIM(vcOd)+"*"+vtDo+SUBSTR(DTOC(vfEm),  ;
                               7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                               SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                               ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                     CASE vsW2=3
                          SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+vpRv+ ;
                               SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                               ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                ENDCASE
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1,  ;
                          0)=ftM1tdo+ftM1ser+ALLTRIM(ftM1doc)+"*"+ftM1prv+ ;
                          STR(ftM1mon, 1, 0) .AND. vtDo+vsEr+ ;
                          ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)=itDo+ ;
                          isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                                    STR(vmOn, 1, 0)=itDo+isEr+ ;
                                    ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                                    DO paN_2431f
                               OTHERWISE
                                    DO CASE
                                         CASE vsW2=1
                                              SEEK ALLTRIM(vcOd)+"*"+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+vpRv+STR(vmOn, 1, 0)
                                         CASE vsW2=2
                                              SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vsEr+ALLTRIM(vdOc)+"*"+ ;
                                               vpRv+STR(vmOn, 1, 0)
                                         CASE vsW2=3
                                              SEEK ALLTRIM(vcOd)+"*"+ ;
                                               UPPER(vnOm)+vpRv+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+STR(vmOn, 1, 0)
                                    ENDCASE
                                    DO diS_2431f WITH "N"
                          ENDCASE
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE imOn TO vmOn
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vcOd)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=2
                                    SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=3
                                    SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+ ;
                                     vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2431f WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*ZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1,  ;
                          0)=ftM1tdo+ftM1ser+ALLTRIM(ftM1doc)+"*"+ftM1prv+ ;
                          STR(ftM1mon, 1, 0) .AND. vtDo+vsEr+ ;
                          ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)=utDo+ ;
                          usEr+ALLTRIM(udOc)+"*"+upRv+STR(umOn, 1, 0)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                                    STR(vmOn, 1, 0)=utDo+usEr+ ;
                                    ALLTRIM(udOc)+"*"+upRv+STR(umOn, 1, 0)
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2431f
                               OTHERWISE
                                    DO CASE
                                         CASE vsW2=1
                                              SEEK ALLTRIM(vcOd)+"*"+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+vpRv+STR(vmOn, 1, 0)
                                         CASE vsW2=2
                                              SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vsEr+ALLTRIM(vdOc)+"*"+ ;
                                               vpRv+STR(vmOn, 1, 0)
                                         CASE vsW2=3
                                              SEEK ALLTRIM(vcOd)+"*"+ ;
                                               UPPER(vnOm)+vpRv+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+STR(vmOn, 1, 0)
                                    ENDCASE
                                    DO diS_2431f WITH "N"
                          ENDCASE
                          STORE ufEm TO vfEm
                          STORE utDo TO vtDo
                          STORE usEr TO vsEr
                          STORE udOc TO vdOc
                          STORE upRv TO vpRv
                          STORE unOm TO vnOm
                          STORE umOn TO vmOn
                          STORE ufFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vcOd)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=2
                                    SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=3
                                    SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+ ;
                                     vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2431f WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vcOd)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=2
                                    SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=3
                                    SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+ ;
                                     vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2431f WITH "N"
                          SKIP
                          IF vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1,  ;
                             0)=utDo+usEr+ALLTRIM(udOc)+"*"+upRv+STR(umOn,  ;
                             1, 0)
                               DO coL_beige
                               DO suBe WITH ifFs, piC2, ffFs, puC2-1, 1
                               DO liN_2431f WITH ifFs, ffFs+1
                               STORE ftM1fem TO ufEm, vfEm
                               STORE ftM1tdo TO utDo, vtDo
                               STORE ftM1ser TO usEr, vsEr
                               STORE ftM1doc TO udOc, vdOc
                               STORE ftM1prv TO upRv, vpRv
                               STORE ftM1nom TO unOm, vnOm
                               STORE ftM1mon TO umOn, vmOn
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE ftM1fem TO ifEm
                               STORE ftM1tdo TO itDo
                               STORE ftM1ser TO isEr
                               STORE ftM1doc TO idOc
                               STORE ftM1prv TO ipRv
                               STORE ftM1nom TO inOm
                               STORE ftM1mon TO imOn
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE ftM1fem TO vfEm
                               STORE ftM1tdo TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1prv TO vpRv
                               STORE ftM1nom TO vnOm
                               STORE ftM1mon TO vmOn
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vcOd)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=2
                                    SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=3
                                    SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+ ;
                                     vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2431f WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vcOd)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=2
                                    SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=3
                                    SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+ ;
                                     vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2431f WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1,  ;
                             0)=itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn,  ;
                             1, 0)
                               DO coL_beige
                               DO baJa WITH ifFs, piC2, ffFs, puC2-1, 1
                               DO liN_2431f WITH ifFs, ffFs+1
                               STORE ftM1fem TO ifEm, vfEm
                               STORE ftM1tdo TO itDo, vtDo
                               STORE ftM1ser TO isEr, vsEr
                               STORE ftM1doc TO idOc, vdOc
                               STORE ftM1prv TO ipRv, vpRv
                               STORE ftM1nom TO inOm, vnOm
                               STORE ftM1mon TO imOn, vmOn
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE ftM1fem TO ufEm
                                    STORE ftM1tdo TO utDo
                                    STORE ftM1ser TO usEr
                                    STORE ftM1doc TO udOc
                                    STORE ftM1prv TO upRv
                                    STORE ftM1nom TO unOm
                                    STORE ftM1mon TO umOn
                               ENDIF
                          ELSE
                               STORE ftM1fem TO vfEm
                               STORE ftM1tdo TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1prv TO vpRv
                               STORE ftM1nom TO vnOm
                               STORE ftM1mon TO vmOn
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vcOd)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=2
                                    SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=3
                                    SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+ ;
                                     vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2431f WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(ufEm), 7, 4)+ ;
                               SUBSTR(DTOC(ufEm), 4, 2)+SUBSTR(DTOC(ufEm),  ;
                               1, 2)+utDo+usEr+ALLTRIM(udOc)+"*"+upRv+ ;
                               STR(umOn, 1, 0)
                     CASE vsW2=2
                          SEEK ALLTRIM(vcOd)+"*"+utDo+SUBSTR(DTOC(ufEm),  ;
                               7, 4)+SUBSTR(DTOC(ufEm), 4, 2)+ ;
                               SUBSTR(DTOC(ufEm), 1, 2)+usEr+ ;
                               ALLTRIM(udOc)+"*"+upRv+STR(umOn, 1, 0)
                     CASE vsW2=3
                          SEEK ALLTRIM(vcOd)+"*"+UPPER(unOm)+upRv+ ;
                               SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm),  ;
                               4, 2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+ ;
                               ALLTRIM(udOc)+"*"+STR(umOn, 1, 0)
                ENDCASE
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2431f
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE imOn TO vmOn
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vcOd)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=2
                                    SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=3
                                    SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+ ;
                                     vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2431f WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                               SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm),  ;
                               1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                               STR(imOn, 1, 0)
                     CASE vsW2=2
                          SEEK ALLTRIM(vcOd)+"*"+itDo+SUBSTR(DTOC(ifEm),  ;
                               7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                               SUBSTR(DTOC(ifEm), 1, 2)+isEr+ ;
                               ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                     CASE vsW2=3
                          SEEK ALLTRIM(vcOd)+"*"+UPPER(inOm)+ipRv+ ;
                               SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm),  ;
                               4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ ;
                               ALLTRIM(idOc)+"*"+STR(imOn, 1, 0)
                ENDCASE
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(vcOd)+"*"
                               GOTO TOP
                               SEEK ALLTRIM(vcOd)+"*"
                          ENDIF
                          DO paN_2431f
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE imOn TO vmOn
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vcOd)+"*"+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=2
                                    SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW2=3
                                    SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+ ;
                                     vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2431f WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO CASE
                CASE vsW2=1
                     SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                          SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1,  ;
                          2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                CASE vsW2=2
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                          SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1,  ;
                          2)+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                CASE vsW2=3
                     SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+vpRv+ ;
                          SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                          ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
           ENDCASE
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2431f
 STORE ifFs TO vfFs, ufFs
 STORE ftM1fem TO ifEm, ufEm
 STORE ftM1tdo TO itDo, utDo
 STORE ftM1ser TO isEr, usEr
 STORE ftM1doc TO idOc, udOc
 STORE ftM1prv TO ipRv, upRv
 STORE ftM1nom TO inOm, unOm
 STORE ftM1mon TO imOn, umOn
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM1cod)+"*"=ALLTRIM(vcOd)+"*" .AND.  ;
    vfFs<ffFs+1
      DO diS_2431f WITH "N"
      STORE ftM1fem TO ufEm
      STORE ftM1tdo TO utDo
      STORE ftM1ser TO usEr
      STORE ftM1doc TO udOc
      STORE ftM1prv TO upRv
      STORE ftM1nom TO unOm
      STORE ftM1mon TO umOn
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_beige
      @ ufFs+1, piC2 CLEAR TO ffFs+1, puC2
      DO liN_2431f WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2431f
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,pIC2+000.2 Say FTM1FEM                         Font "&mLetAri",9 Style "NQ" Size 1,12.4
 @vFFS,pIC2+013.6 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,33.4
 @vFFS,pIC2+048.1 Say FTM1NOM                         Font "&mLetAri",9 Style "NQ" Size 1,38.8 Pict "@S42"
 @vFFS,pIC2+087.9 Say FTM1SOR                         Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFS,pIC2+093.1 Say FTM1ORD                         Font "&mLetAri",9 Style "NQ" Size 1,09.8
 DO CASE
      CASE ptIp="N" .AND. ftM1tot<0
           DO coL_beiro
      CASE ptIp="R" .AND. ftM1tot<0
           DO coLblr
 ENDCASE
 DO CASE
      CASE ftM1mon=1
           @vFFS,pIC2+103.9 Say FTM1TOT                 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
           @vFFS,pIC2+124.6 Say " "                     Font "&mLetAri",9 Style "NQ" Size 1,19.7
      CASE ftM1mon=2
           @vFFS,pIC2+103.9 Say " "                     Font "&mLetAri",9 Style "NQ" Size 1,19.7
           @vFFS,pIC2+124.6 Say FTM1TOT                 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Lin_2431f
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piC2+013.0 TO pfIn, piC2+013.0
 @ piNi, piC2+047.5 TO pfIn, piC2+047.5
 @ piNi, piC2+087.3 TO pfIn, piC2+087.3
 @ piNi, piC2+092.5 TO pfIn, piC2+092.5
 @ piNi, piC2+103.3 TO pfIn, piC2+103.3
 @ piNi, piC2+124.0 TO pfIn, piC2+124.0
ENDPROC
*
PROCEDURE Bot_2431f
 DO prEsiona WITH "3", "CONSU3", vfB1+2, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB2+2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB3+2, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", vfB1+2, vcB1
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", vfB2+2, vcB2
      CASE vsW2=3
           DO prEsiona WITH "1", "CONSU3", vfB3+2, vcB3
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cam_2431f
 DO CASE
      CASE vsW2=1
           SET ORDER TO FTM1FE1
      CASE vsW2=2
           SET ORDER TO FTM1TD1
      CASE vsW2=3
           SET ORDER TO FTM1PR1
 ENDCASE
 DO boT_2431f
 GOTO TOP
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+ ;
                isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
      CASE vsW2=2
           SEEK ALLTRIM(vcOd)+"*"+itDo+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+isEr+ ;
                ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
      CASE vsW2=3
           SEEK ALLTRIM(vcOd)+"*"+UPPER(inOm)+ipRv+SUBSTR(DTOC(ifEm), 7,  ;
                4)+SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+ ;
                isEr+ALLTRIM(idOc)+"*"+STR(imOn, 1, 0)
 ENDCASE
 DO paN_2431f
 STORE ifEm TO vfEm
 STORE itDo TO vtDo
 STORE isEr TO vsEr
 STORE idOc TO vdOc
 STORE ipRv TO vpRv
 STORE inOm TO vnOm
 STORE imOn TO vmOn
 STORE ifFs TO vfFs
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
      CASE vsW2=2
           SEEK ALLTRIM(vcOd)+"*"+vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
      CASE vsW2=3
           SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7,  ;
                4)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
 ENDCASE
 DO diS_2431f WITH "R"
ENDPROC
*
PROCEDURE Imp_2431f
 STORE 0 TO mvIs
 DO ipR_0001a WITH "VE"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina IN PAR2430C
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "VE"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO reP_2431f
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2431f
 PRIVATE ptAm, psW0
 STORE 98 TO ptAm
 STORE 04 TO mcLn
 SELECT teMporal
 DO CASE
      CASE vtPo<3
           SET ORDER TO FTM1FE1
      CASE vtPo=3
           SET ORDER TO FTM1TD1
 ENDCASE
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 STORE 0 TO vlIn, vpAg, ctO1, ctO2
 STORE SPACE(2) TO ctDo, cfEm
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM1cod)+"*"=ALLTRIM(vcOd)+"*"
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4
           DO caB_2431f
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ftM1fem TO cfEm
           STORE ftM1tdo TO ctDo
      ENDIF
      STORE 0 TO psW0
      DO CASE
           CASE vtPo=2 .AND. ftM1fem<>cfEm
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mpRt="1"
                               @vLIN,mCLN+100 Say "Total Día" Font "&mLetAri",9  Style "BQ"
                          CASE mpRt="2"
                               @vLIN,mCLN+100 Say "Total Día" Font "&mLetRom",10 Style "BQ"
                     ENDCASE
                ENDIF
                STORE 1 TO psW0
           CASE vtPo=3 .AND. ftM1tdo<>ctDo
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mpRt="1"
                               @vLIN,mCLN+100 Say "Total "+cTDO Font "&mLetAri",9  Style "BQ"
                          CASE mpRt="2"
                               @vLIN,mCLN+100 Say "Total "+cTDO Font "&mLetRom",10 Style "BQ"
                     ENDCASE
                ENDIF
                STORE 1 TO psW0
      ENDCASE
      IF psW0=1
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+146 Say cTO1 Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                          @vLIN,mCLN+166 Say cTO2 Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN+146 Say cTO1 Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                          @vLIN,mCLN+166 Say cTO2 Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                ENDCASE
           ENDIF
           STORE 0 TO ctO1, ctO2
           STORE ftM1tdo TO ctDo
           STORE ftM1fem TO cfEm
           STORE vlIn+2 TO vlIn
           LOOP
      ENDIF
      DO CASE
           CASE ftM1mon=1
                STORE ctO1+ftM1tot TO ctO1
           CASE ftM1mon=2
                STORE ctO2+ftM1tot TO ctO2
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN    Say FTM1FEM                         Font "&mLetAri",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+15 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,30
                     @vLIN,mCLN+47 Say FTM1NOM                         Font "&mLetAri",9 Style "NQ" Size 1,68 Pict "@S71"
                     DO CASE
                          CASE ftM1mon=1
                               @vLIN,mCLN+146 Say FTM1TOT                Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                          CASE ftM1mon=2
                               @vLIN,mCLN+166 Say FTM1TOT                Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     ENDCASE
                CASE mpRt="2"
                     @vLIN,mCLN    Say FTM1FEM                         Font "&mLetRom",10 Style "NQ" Size 1,13
                     @vLIN,mCLN+15 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetRom",10 Style "NQ" Size 1,30
                     @vLIN,mCLN+47 Say FTM1NOM                         Font "&mLetRom",10 Style "NQ" Size 1,68 Pict "@S71"
                     DO CASE
                          CASE ftM1mon=1
                               @vLIN,mCLN+146 Say FTM1TOT                Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                          CASE ftM1mon=2
                               @vLIN,mCLN+166 Say FTM1TOT                Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     ENDCASE
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
      STORE 0 TO psW0
      DO CASE
           CASE EOF() .OR. ALLTRIM(ftM1cod)+"*"<>ALLTRIM(vcOd)+"*"
                STORE 1 TO psW0
           CASE vtPo=2 .AND. ftM1fem<>cfEm
                STORE 1 TO psW0
           CASE vtPo=3 .AND. ftM1tdo<>ctDo
                STORE 1 TO psW0
      ENDCASE
      IF psW0=1
           STORE vlIn+0.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+146.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+165.9 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                     CASE mpRt="2"
                          @vLIN,mCLN+146.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+165.9 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDDO
 STORE 0 TO psW0
 DO CASE
      CASE vtPo=2 .AND. ftM1fem<>cfEm
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+100 Say "Total Día" Font "&mLetAri",9  Style "BQ"
                     CASE mpRt="2"
                          @vLIN,mCLN+100 Say "Total Día" Font "&mLetRom",10 Style "BQ"
                ENDCASE
           ENDIF
           STORE 1 TO psW0
      CASE vtPo=3 .AND. ftM1tdo<>ctDo
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+100 Say "Total "+cTDO Font "&mLetAri",9  Style "BQ"
                     CASE mpRt="2"
                          @vLIN,mCLN+100 Say "Total "+cTDO Font "&mLetRom",10 Style "BQ"
                ENDCASE
           ENDIF
           STORE 1 TO psW0
 ENDCASE
 IF psW0=1
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+146 Say cTO1 Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+166 Say cTO2 Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+146 Say cTO1 Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+166 Say cTO2 Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
      ENDCASE
      STORE vlIn+2 TO vlIn
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+124 Say "TOTAL GENERAL" Font "&mLetAri",9  Style "BQ"
                @vLIN,mCLN+146 Say tTT1            Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+166 Say tTT2            Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+124 Say "TOTAL GENERAL" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+146 Say tTT1            Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+166 Say tTT2            Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2431f
 IF vpAg>=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
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
      STORE DTOC(dfEm)+" al "+DTOC(hfEm) TO vfEc
      @vLIN,mCLN Say "Reporte de Compras "+vFEC Font "&mLetRom",14 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Pedido: "+AllTrim(vPED) Font "&mLetRom",13 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN     Say "EMISIÓN"      Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+15  Say "DOCUMENTO"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+47  Say "PROVEEDOR"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+117 Say "ORDEN-CPRA"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+152 Say "TOTAL S/."    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+171 Say "TOTAL US$"    Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "EMISIÓN"      Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+15  Say "DOCUMENTO"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+47  Say "PROVEEDOR"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+117 Say "ORDEN-CPRA"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+152 Say "TOTAL S/."    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+171 Say "TOTAL US$"    Font "&mLetRom",9 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
ENDPROC
*
PROCEDURE Res_2431f
 STORE vsW2 TO csW2
 DO reS_2430f
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE csW2 TO vsW2
 DO boT_2431f
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 DO CASE
      CASE vsW2=1
           SET ORDER TO FTM1FE1
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+ ;
                isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
      CASE vsW2=2
           SET ORDER TO FTM1TD1
           SEEK ALLTRIM(vcOd)+"*"+itDo+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+isEr+ ;
                ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
      CASE vsW2=3
           SET ORDER TO FTM1PR1
           SEEK ALLTRIM(vcOd)+"*"+UPPER(inOm)+ipRv+SUBSTR(DTOC(ifEm), 7,  ;
                4)+SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+ ;
                isEr+ALLTRIM(idOc)+"*"+STR(imOn, 1, 0)
 ENDCASE
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM1cod)+"*"=ALLTRIM(vcOd)+"*" .AND.  ;
    vfFs<ffFs+1
      IF vfEm=ftM1fem .AND. vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1,  ;
         0)=ftM1tdo+ftM1ser+ALLTRIM(ftM1doc)+"*"+ftM1prv+STR(ftM1mon, 1, 0)
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE ifEm TO vfEm
      STORE itDo TO vtDo
      STORE isEr TO vsEr
      STORE idOc TO vdOc
      STORE ipRv TO vpRv
      STORE inOm TO vnOm
      STORE imOn TO vmOn
      STORE ifFs TO vfFs
 ENDIF
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
      CASE vsW2=2
           SEEK ALLTRIM(vcOd)+"*"+vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
      CASE vsW2=3
           SEEK ALLTRIM(vcOd)+"*"+UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7,  ;
                4)+SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
 ENDCASE
 DO diS_2431f WITH "R"
ENDPROC
*
PROCEDURE Clp_2431f
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.4
           IF mkEy=k_Esc
                RETURN
           ENDIF
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
      CASE mfIl>=vfB1+2 .AND. mfIl<=vfB1+2.464 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+1.8 .AND. vsW2<>1
           STORE 01 TO vsW2
           DO caM_2431f
           STORE 99 TO mkEy
      CASE mfIl>=vfB2+2 .AND. mfIl<=vfB2+2.464 .AND. mcCc>=vcB2 .AND.  ;
           mcCc<=vcB2+1.8 .AND. vsW2<>2
           STORE 02 TO vsW2
           DO caM_2431f
           STORE 99 TO mkEy
      CASE mfIl>=vfB3+2 .AND. mfIl<=vfB3+2.464 .AND. mcCc>=vcB3 .AND.  ;
           mcCc<=vcB3+1.8 .AND. vsW2<>3
           STORE 03 TO vsW2
           DO caM_2431f
           STORE 99 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=piC2 .AND.  ;
           mcCc<=puC2
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=piC2 .AND.  ;
           mcCc<=puC2
           DO diS_2431f WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO CASE
                CASE vsW2=1
                     SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                          SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1,  ;
                          2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                CASE vsW2=2
                     SEEK ALLTRIM(vcOd)+"*"+itDo+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                          SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1,  ;
                          2)+isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                CASE vsW2=3
                     SEEK ALLTRIM(vcOd)+"*"+UPPER(inOm)+ipRv+ ;
                          SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ ;
                          ALLTRIM(idOc)+"*"+STR(imOn, 1, 0)
           ENDCASE
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           STORE ftM1fem TO vfEm
           STORE ftM1tdo TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1doc TO vdOc
           STORE ftM1prv TO vpRv
           STORE ftM1nom TO vnOm
           STORE ftM1mon TO vmOn
           DO diS_2431f WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2431f
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+01, 01 SAY  ;
   "Boletas, Notas de Crédito y Débito, en el rango de fechas y Pedido selec-"
 @ pfIl+02, 01 SAY "cionado."
 @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+12, 29 SAY ":" STYLE "BT"
 @ pfIl+13, 29 SAY ":" STYLE "BT"
 @ pfIl+14, 29 SAY ":" STYLE "BT"
 @ pfIl+15, 29 SAY ":" STYLE "BT"
 @ pfIl+16, 29 SAY ":" STYLE "BT"
 @ pfIl+17, 29 SAY ":" STYLE "BT"
 @ pfIl+18, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "F8" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+12, 11 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+13, 11 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+14, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+15, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+16, 11 SAY "HOME" STYLE "BT"
 @ pfIl+17, 11 SAY "END" STYLE "BT"
 @ pfIl+18, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Pasar Datos a Excel"
 @ pfIl+10, 31 SAY "Línea inferior"
 @ pfIl+11, 31 SAY "Línea superior"
 @ pfIl+12, 31 SAY "Cambiar de Orden de Consulta"
 @ pfIl+13, 31 SAY "Cambiar de Orden de Consulta"
 @ pfIl+14, 31 SAY "Página siguiente"
 @ pfIl+15, 31 SAY "Página anterior"
 @ pfIl+16, 31 SAY "Primera línea"
 @ pfIl+17, 31 SAY "Última línea"
 @ pfIl+18, 31 SAY "Imprimir Reporte"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
