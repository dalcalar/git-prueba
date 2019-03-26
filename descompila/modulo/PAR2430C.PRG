 = INKEY(0.01)
 STORE 1 TO vsW1
 SET ORDER TO FTM1FEM
 DO p00_2430c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_2430c
 STORE 999 TO mkEy
 STORE ifEm TO vfEm
 STORE itDo TO vtDo
 STORE isEr TO vsEr
 STORE idOc TO vdOc
 STORE ipRv TO vpRv
 STORE inOm TO vnOm
 STORE ipEd TO vpEd
 STORE isOr TO vsOr
 STORE ioRd TO voRd
 STORE imOn TO vmOn
 STORE ifIl TO vfIl
 DO CASE
      CASE vsW1=1
           SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
      CASE vsW1=2
           SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
      CASE vsW1=3
           SEEK UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
      CASE vsW1=4
           SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+ ;
                vpRv+STR(vmOn, 1, 0)
      CASE vsW1=5
           SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
 ENDCASE
 DO diS_2430c WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2430c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2430c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2430c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2430c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                IF mkEy=k_Right
                     DO CASE
                          CASE vsW1=5
                               STORE 1 TO vsW1
                          OTHERWISE
                               STORE vsW1+1 TO vsW1
                     ENDCASE
                ELSE
                     DO CASE
                          CASE vsW1=1
                               STORE 5 TO vsW1
                          OTHERWISE
                               STORE vsW1-1 TO vsW1
                     ENDCASE
                ENDIF
                DO caM_2430c
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_12
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Reporte_de_Compras_del_"+vFEC+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM1TDO,FTM1SER,FTM1DOC,FTM1FEM,FTM1PED,FTM1SOR,FTM1ORD,FTM1PRV,FTM1NOM,FTM1TIG,FTM1TPO,FTM1MON,FTM1TOT Type XLS
                     ENDCASE
                ENDIF
                SELECT teMporal
                DO CASE
                     CASE vsW1=1
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                               ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                     CASE vsW1=2
                          SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn,  ;
                               1, 0)
                     CASE vsW1=3
                          SEEK UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn,  ;
                               1, 0)
                     CASE vsW1=4
                          SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                               STR(vmOn, 1, 0)
                     CASE vsW1=5
                          SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                               STR(vmOn, 1, 0)
                ENDCASE
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2430c
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                DO CASE
                     CASE vsW1=1
                          SET ORDER TO FTM1FEM
                     CASE vsW1=2
                          SET ORDER TO FTM1TDO
                     CASE vsW1=3
                          SET ORDER TO FTM1PRV
                     CASE vsW1=4
                          SET ORDER TO FTM1ORD
                     CASE vsW1=5
                          SET ORDER TO FTM1PED
                ENDCASE
                GOTO TOP
                DO CASE
                     CASE vsW1=1
                          SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                               4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                               ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                     CASE vsW1=2
                          SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn,  ;
                               1, 0)
                     CASE vsW1=3
                          SEEK UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn,  ;
                               1, 0)
                     CASE vsW1=4
                          SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                               STR(vmOn, 1, 0)
                     CASE vsW1=5
                          SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                               STR(vmOn, 1, 0)
                ENDCASE
           CASE mkEy=k_Home
                GOTO TOP
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
                                    DO paN_2430c
                               OTHERWISE
                                    DO CASE
                                         CASE vsW1=1
                                              SEEK SUBSTR(DTOC(vfEm), 7,  ;
                                               4)+SUBSTR(DTOC(vfEm), 4,  ;
                                               2)+SUBSTR(DTOC(vfEm), 1,  ;
                                               2)+vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+vpRv+STR(vmOn, 1, 0)
                                         CASE vsW1=2
                                              SEEK vtDo+SUBSTR(DTOC(vfEm),  ;
                                               7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                                               2)+SUBSTR(DTOC(vfEm), 1,  ;
                                               2)+vsEr+ALLTRIM(vdOc)+"*"+ ;
                                               vpRv+STR(vmOn, 1, 0)
                                         CASE vsW1=3
                                              SEEK UPPER(vnOm)+vpRv+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+STR(vmOn, 1, 0)
                                         CASE vsW1=4
                                              SEEK vsOr+voRd+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+vpRv+STR(vmOn, 1, 0)
                                         CASE vsW1=5
                                              SEEK vpEd+SUBSTR(DTOC(vfEm),  ;
                                               7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                                               2)+SUBSTR(DTOC(vfEm), 1,  ;
                                               2)+vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+vpRv+STR(vmOn, 1, 0)
                                    ENDCASE
                                    DO diS_2430c WITH "N"
                          ENDCASE
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE ipEd TO vpEd
                          STORE isOr TO vsOr
                          STORE ioRd TO voRd
                          STORE imOn TO vmOn
                          STORE ifIl TO vfIl
                          DO CASE
                               CASE vsW1=1
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=2
                                    SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=3
                                    SEEK UPPER(vnOm)+vpRv+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                               CASE vsW1=4
                                    SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=5
                                    SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2430c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
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
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2430c
                               OTHERWISE
                                    DO CASE
                                         CASE vsW1=1
                                              SEEK SUBSTR(DTOC(vfEm), 7,  ;
                                               4)+SUBSTR(DTOC(vfEm), 4,  ;
                                               2)+SUBSTR(DTOC(vfEm), 1,  ;
                                               2)+vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+vpRv+STR(vmOn, 1, 0)
                                         CASE vsW1=2
                                              SEEK vtDo+SUBSTR(DTOC(vfEm),  ;
                                               7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                                               2)+SUBSTR(DTOC(vfEm), 1,  ;
                                               2)+vsEr+ALLTRIM(vdOc)+"*"+ ;
                                               vpRv+STR(vmOn, 1, 0)
                                         CASE vsW1=3
                                              SEEK UPPER(vnOm)+vpRv+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+STR(vmOn, 1, 0)
                                         CASE vsW1=4
                                              SEEK vsOr+voRd+ ;
                                               SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                               SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                               SUBSTR(DTOC(vfEm), 1, 2)+ ;
                                               vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+vpRv+STR(vmOn, 1, 0)
                                         CASE vsW1=5
                                              SEEK vpEd+SUBSTR(DTOC(vfEm),  ;
                                               7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                                               2)+SUBSTR(DTOC(vfEm), 1,  ;
                                               2)+vtDo+vsEr+ALLTRIM(vdOc)+ ;
                                               "*"+vpRv+STR(vmOn, 1, 0)
                                    ENDCASE
                                    DO diS_2430c WITH "N"
                          ENDCASE
                          STORE ufEm TO vfEm
                          STORE utDo TO vtDo
                          STORE usEr TO vsEr
                          STORE udOc TO vdOc
                          STORE upRv TO vpRv
                          STORE unOm TO vnOm
                          STORE upEd TO vpEd
                          STORE usOr TO vsOr
                          STORE uoRd TO voRd
                          STORE umOn TO vmOn
                          STORE ufIl TO vfIl
                          DO CASE
                               CASE vsW1=1
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=2
                                    SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=3
                                    SEEK UPPER(vnOm)+vpRv+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                               CASE vsW1=4
                                    SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=5
                                    SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2430c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW1=1
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=2
                                    SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=3
                                    SEEK UPPER(vnOm)+vpRv+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                               CASE vsW1=4
                                    SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=5
                                    SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2430c WITH "N"
                          SKIP
                          IF vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1,  ;
                             0)=utDo+usEr+ALLTRIM(udOc)+"*"+upRv+STR(umOn,  ;
                             1, 0)
                               DO coL_fondo
                               DO suBe WITH ifIl, piCl, ffIl, puCl-1, 1
                               DO liN_2430c WITH ifIl, ffIl+1
                               STORE ftM1fem TO ufEm, vfEm
                               STORE ftM1tdo TO utDo, vtDo
                               STORE ftM1ser TO usEr, vsEr
                               STORE ftM1doc TO udOc, vdOc
                               STORE ftM1prv TO upRv, vpRv
                               STORE ftM1nom TO unOm, vnOm
                               STORE ftM1ped TO upEd, vpEd
                               STORE ftM1sor TO usOr, vsOr
                               STORE ftM1ord TO uoRd, voRd
                               STORE ftM1mon TO umOn, vmOn
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE ftM1fem TO ifEm
                               STORE ftM1tdo TO itDo
                               STORE ftM1ser TO isEr
                               STORE ftM1doc TO idOc
                               STORE ftM1prv TO ipRv
                               STORE ftM1nom TO inOm
                               STORE ftM1ped TO ipEd
                               STORE ftM1sor TO isOr
                               STORE ftM1ord TO ioRd
                               STORE ftM1mon TO imOn
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE ftM1fem TO vfEm
                               STORE ftM1tdo TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1prv TO vpRv
                               STORE ftM1nom TO vnOm
                               STORE ftM1ped TO vpEd
                               STORE ftM1sor TO vsOr
                               STORE ftM1ord TO voRd
                               STORE ftM1mon TO vmOn
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO CASE
                               CASE vsW1=1
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=2
                                    SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=3
                                    SEEK UPPER(vnOm)+vpRv+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                               CASE vsW1=4
                                    SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=5
                                    SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2430c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW1=1
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=2
                                    SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=3
                                    SEEK UPPER(vnOm)+vpRv+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                               CASE vsW1=4
                                    SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=5
                                    SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2430c WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1,  ;
                             0)=itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn,  ;
                             1, 0)
                               DO coL_fondo
                               DO baJa WITH ifIl, piCl, ffIl, puCl-1, 1
                               DO liN_2430c WITH ifIl, ffIl+1
                               STORE ftM1fem TO ifEm, vfEm
                               STORE ftM1tdo TO itDo, vtDo
                               STORE ftM1ser TO isEr, vsEr
                               STORE ftM1doc TO idOc, vdOc
                               STORE ftM1prv TO ipRv, vpRv
                               STORE ftM1nom TO inOm, vnOm
                               STORE ftM1ped TO ipEd, vpEd
                               STORE ftM1sor TO isOr, vsOr
                               STORE ftM1ord TO ioRd, voRd
                               STORE ftM1mon TO imOn, vmOn
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    STORE ftM1fem TO ufEm
                                    STORE ftM1tdo TO utDo
                                    STORE ftM1ser TO usEr
                                    STORE ftM1doc TO udOc
                                    STORE ftM1prv TO upRv
                                    STORE ftM1nom TO unOm
                                    STORE ftM1ped TO upEd
                                    STORE ftM1sor TO usOr
                                    STORE ftM1ord TO uoRd
                                    STORE ftM1mon TO umOn
                               ENDIF
                          ELSE
                               STORE ftM1fem TO vfEm
                               STORE ftM1tdo TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1prv TO vpRv
                               STORE ftM1nom TO vnOm
                               STORE ftM1ped TO vpEd
                               STORE ftM1sor TO vsOr
                               STORE ftM1ord TO voRd
                               STORE ftM1mon TO vmOn
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO CASE
                               CASE vsW1=1
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=2
                                    SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=3
                                    SEEK UPPER(vnOm)+vpRv+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                               CASE vsW1=4
                                    SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=5
                                    SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2430c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO CASE
                     CASE vsW1=1
                          SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm),  ;
                               4, 2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+ ;
                               ALLTRIM(udOc)+"*"+upRv+STR(umOn, 1, 0)
                     CASE vsW1=2
                          SEEK utDo+SUBSTR(DTOC(ufEm), 7, 4)+ ;
                               SUBSTR(DTOC(ufEm), 4, 2)+SUBSTR(DTOC(ufEm),  ;
                               1, 2)+usEr+ALLTRIM(udOc)+"*"+upRv+STR(umOn,  ;
                               1, 0)
                     CASE vsW1=3
                          SEEK UPPER(unOm)+upRv+SUBSTR(DTOC(ufEm), 7, 4)+ ;
                               SUBSTR(DTOC(ufEm), 4, 2)+SUBSTR(DTOC(ufEm),  ;
                               1, 2)+utDo+usEr+ALLTRIM(udOc)+"*"+STR(umOn,  ;
                               1, 0)
                     CASE vsW1=4
                          SEEK usOr+uoRd+SUBSTR(DTOC(ufEm), 7, 4)+ ;
                               SUBSTR(DTOC(ufEm), 4, 2)+SUBSTR(DTOC(ufEm),  ;
                               1, 2)+utDo+usEr+ALLTRIM(udOc)+"*"+upRv+ ;
                               STR(umOn, 1, 0)
                     CASE vsW1=5
                          SEEK upEd+SUBSTR(DTOC(ufEm), 7, 4)+ ;
                               SUBSTR(DTOC(ufEm), 4, 2)+SUBSTR(DTOC(ufEm),  ;
                               1, 2)+utDo+usEr+ALLTRIM(udOc)+"*"+upRv+ ;
                               STR(umOn, 1, 0)
                ENDCASE
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2430c
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE ipEd TO vpEd
                          STORE isOr TO vsOr
                          STORE ioRd TO voRd
                          STORE imOn TO vmOn
                          STORE ifIl TO vfIl
                          DO CASE
                               CASE vsW1=1
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=2
                                    SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=3
                                    SEEK UPPER(vnOm)+vpRv+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                               CASE vsW1=4
                                    SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=5
                                    SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2430c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO CASE
                     CASE vsW1=1
                          SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm),  ;
                               4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ ;
                               ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                     CASE vsW1=2
                          SEEK itDo+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                               SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm),  ;
                               1, 2)+isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn,  ;
                               1, 0)
                     CASE vsW1=3
                          SEEK UPPER(inOm)+ipRv+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                               SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm),  ;
                               1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+STR(imOn,  ;
                               1, 0)
                     CASE vsW1=4
                          SEEK isOr+ioRd+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                               SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm),  ;
                               1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                               STR(imOn, 1, 0)
                     CASE vsW1=5
                          SEEK ipEd+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                               SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm),  ;
                               1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                               STR(imOn, 1, 0)
                ENDCASE
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2430c
                          STORE ifEm TO vfEm
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE ipEd TO vpEd
                          STORE isOr TO vsOr
                          STORE ioRd TO voRd
                          STORE imOn TO vmOn
                          STORE ifIl TO vfIl
                          DO CASE
                               CASE vsW1=1
                                    SEEK SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=2
                                    SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=3
                                    SEEK UPPER(vnOm)+vpRv+ ;
                                     SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                               CASE vsW1=4
                                    SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7,  ;
                                     4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                               CASE vsW1=5
                                    SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                                     SUBSTR(DTOC(vfEm), 4, 2)+ ;
                                     SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                                     ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                          ENDCASE
                          DO diS_2430c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO CASE
                CASE vsW1=1
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                          ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                CASE vsW1=2
                     SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ ;
                          ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                CASE vsW1=3
                     SEEK UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                          SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1,  ;
                          2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
                CASE vsW1=4
                     SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                          SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1,  ;
                          2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
                CASE vsW1=5
                     SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ ;
                          ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)
           ENDCASE
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2430c
 STORE ifIl TO vfIl, ufIl
 STORE ftM1fem TO ifEm, ufEm
 STORE ftM1tdo TO itDo, utDo
 STORE ftM1ser TO isEr, usEr
 STORE ftM1doc TO idOc, udOc
 STORE ftM1prv TO ipRv, upRv
 STORE ftM1nom TO inOm, unOm
 STORE ftM1ped TO ipEd, upEd
 STORE ftM1sor TO isOr, usOr
 STORE ftM1ord TO ioRd, uoRd
 STORE ftM1mon TO imOn, umOn
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_2430c WITH "N"
      STORE ftM1fem TO ufEm
      STORE ftM1tdo TO utDo
      STORE ftM1ser TO usEr
      STORE ftM1doc TO udOc
      STORE ftM1prv TO upRv
      STORE ftM1nom TO unOm
      STORE ftM1ped TO upEd
      STORE ftM1sor TO usOr
      STORE ftM1ord TO uoRd
      STORE ftM1mon TO umOn
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_fondo
      @ ufIl+1, piCl CLEAR TO ffIl+1, puCl
      DO liN_2430c WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2430c
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,pICL+000.2 Say FTM1FEM                         Font "&mLetAri",9 Style "NQ" Size 1,12.4
 @vFIL,pICL+013.6 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,33.5
 @vFIL,pICL+048.1 Say FTM1NOM                         Font "&mLetAri",9 Style "NQ" Size 1,75.8 Pict "@S77"
 @vFIL,pICL+124.9 Say FTM1SOR                         Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFIL,pICL+130.1 Say FTM1ORD                         Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,pICL+140.9 Say FTM1PED                         Font "&mLetAri",9 Style "NQ" Size 1,09.8
 DO CASE
      CASE ftM1tig=1
           @vFIL,pICL+151.8 Say "IGV"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE ftM1tig=2
           @vFIL,pICL+151.8 Say "Ren"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
 ENDCASE
 DO CASE
      CASE ftM1tpo=1
           @vFIL,pICL+157.0 Say "Cpr"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE ftM1tpo=2
           @vFIL,pICL+157.0 Say "Gas"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
      CASE ftM1tpo=3
           @vFIL,pICL+157.0 Say "Ped"                   Font "&mLetAri",9 Style "NQ" Size 1,4.2
 ENDCASE
 DO CASE
      CASE ftM1mon=1
           @vFIL,pICL+162.2 Say FTM1TOT                 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
           @vFIL,pICL+182.9 Say " "                     Font "&mLetAri",9 Style "NQ" Size 1,19.7
      CASE ftM1mon=2
           @vFIL,pICL+162.2 Say " "                     Font "&mLetAri",9 Style "NQ" Size 1,19.7
           @vFIL,pICL+182.9 Say FTM1TOT                 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Lin_2430c
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piCl+013.0 TO pfIn, piCl+013.0
 @ piNi, piCl+047.5 TO pfIn, piCl+047.5
 @ piNi, piCl+124.3 TO pfIn, piCl+124.3
 @ piNi, piCl+129.6 TO pfIn, piCl+129.6
 @ piNi, piCl+140.3 TO pfIn, piCl+140.3
 @ piNi, piCl+151.2 TO pfIn, piCl+151.2
 @ piNi, piCl+156.4 TO pfIn, piCl+156.4
 @ piNi, piCl+161.6 TO pfIn, piCl+161.6
 @ piNi, piCl+182.3 TO pfIn, piCl+182.3
ENDPROC
*
PROCEDURE Cam_2430c
 DO CASE
      CASE vsW1=1
           SET ORDER TO FTM1FEM
      CASE vsW1=2
           SET ORDER TO FTM1TDO
      CASE vsW1=3
           SET ORDER TO FTM1PRV
      CASE vsW1=4
           SET ORDER TO FTM1ORD
      CASE vsW1=5
           SET ORDER TO FTM1PED
 ENDCASE
 DO boT_2430c
 GOTO TOP
 DO CASE
      CASE vsW1=1
           SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
      CASE vsW1=2
           SEEK itDo+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
      CASE vsW1=3
           SEEK UPPER(inOm)+ipRv+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+ ;
                isEr+ALLTRIM(idOc)+"*"+STR(imOn, 1, 0)
      CASE vsW1=4
           SEEK isOr+ioRd+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ ;
                ipRv+STR(imOn, 1, 0)
      CASE vsW1=5
           SEEK ipEd+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
 ENDCASE
 DO paN_2430c
 STORE ifEm TO vfEm
 STORE itDo TO vtDo
 STORE isEr TO vsEr
 STORE idOc TO vdOc
 STORE ipRv TO vpRv
 STORE inOm TO vnOm
 STORE ipEd TO vpEd
 STORE isOr TO vsOr
 STORE ioRd TO voRd
 STORE imOn TO vmOn
 STORE ifIl TO vfIl
 DO CASE
      CASE vsW1=1
           SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
      CASE vsW1=2
           SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
      CASE vsW1=3
           SEEK UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
      CASE vsW1=4
           SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+ ;
                vpRv+STR(vmOn, 1, 0)
      CASE vsW1=5
           SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
 ENDCASE
 DO diS_2430c WITH "R"
ENDPROC
*
PROCEDURE P00_2430c
 RESTORE SCREEN FROM vpAn_99
 STORE piCl+00.2 TO vcB1
 STORE piCl+13.6 TO vcB2
 STORE piCl+48.1 TO vcB3
 STORE piCl+124.9 TO vcB4
 STORE piCl+140.9 TO vcB5
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH ifIl-1.9, piCl, ffIl+3.5, puCl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifIl-1.8, piCl-0.6 TO ifIl-0.4, puCl+0.3 PATTERN 1
 @ ffIl+1.6, piCl-0.6 TO ffIl+3.4, puCl+0.3 PATTERN 1
 STORE "del "+DTOC(dfEm)+" al "+DTOC(hfEm) TO vfEc
 @fFIL+3.8,pICL Say "Reporte General de Compras "+vFEC Font "&mLetRom",18 Style "BT" Color 7+
 DO liN_2430c WITH ifIl-0.4, ffIl+1.6
 @ ifIl-1.8, piCl+013.0 TO ifIl-0.3, piCl+013.0
 @ ifIl-1.8, piCl+047.5 TO ifIl-0.3, piCl+047.5
 @ ifIl-1.8, piCl+124.3 TO ifIl-0.3, piCl+124.3
 @ ifIl-1.8, piCl+140.3 TO ifIl-0.3, piCl+140.3
 @ ifIl-1.8, piCl+151.2 TO ifIl-0.3, piCl+151.2
 @ ifIl-1.8, piCl+156.4 TO ifIl-0.3, piCl+156.4
 @ ifIl-1.8, piCl+161.6 TO ifIl-0.3, piCl+161.6
 @ ifIl-1.8, piCl+182.3 TO ifIl-0.3, piCl+182.3
 @ ffIl+1.6, piCl+161.6 TO ffIl+3.3, piCl+161.6
 @ ffIl+1.6, piCl+182.3 TO ffIl+3.3, piCl+182.3
 DO coLsc3
 @iFIL-1.7,pICL+002.5 Say "Fecha"      Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+022.8 Say "Documento"  Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+079.4 Say "Proveedor"  Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+125.9 Say "Orden-Cpra" Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+141.8 Say "Pedido"     Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+151.8 Say "Imp"        Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+157.0 Say "Tpo"        Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+167.5 Say "Total S/."  Font "&mLetAri",9 Style "NQ"
 @iFIL-1.7,pICL+186.9 Say "Total US$"  Font "&mLetAri",9 Style "NQ"
 @fFIL+1.9,pICL+140.0 Say "TOTALES:"   Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE ttO1>9999999.99
           @fFIL+1.9,pICL+162.2 Say tTO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      CASE ttO1>999999.99
           @fFIL+1.9,pICL+162.2 Say tTO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+162.2 Say tTO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 ENDCASE
 DO CASE
      CASE ttO2>9999999.99
           @fFIL+1.9,pICL+182.9 Say tTO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      CASE ttO2>999999.99
           @fFIL+1.9,pICL+182.9 Say tTO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
      OTHERWISE
           @fFIL+1.9,pICL+182.9 Say tTO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 ENDCASE
 DO boT_2430c
ENDPROC
*
PROCEDURE Imp_2430c
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
 DO reP_2430c
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2430c
 PRIVATE ptAm, psW0
 STORE 98 TO ptAm
 STORE 04 TO mcLn
 SELECT teMporal
 DO CASE
      CASE vtPo<3
           SET ORDER TO FTM1FEM
      CASE vtPo=3
           SET ORDER TO FTM1TDO
 ENDCASE
 GOTO TOP
 STORE 0 TO vlIn, vpAg, ctO1, ctO2
 STORE SPACE(2) TO ctDo, cfEm
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4
           DO caB_2430c
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
                     @vLIN,mCLN     Say FTM1FEM                         Font "&mLetAri",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+15  Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,30
                     @vLIN,mCLN+47  Say FTM1NOM                         Font "&mLetAri",9 Style "NQ" Size 1,68 Pict "@S71"
                     @vLIN,mCLN+117 Say FTM1SOR+"-"+FTM1ORD             Font "&mLetAri",9 Style "NQ" Size 1,15
                     @vLIN,mCLN+134 Say FTM1PED                         Font "&mLetAri",9 Style "NQ" Size 1,10
                     DO CASE
                          CASE ftM1mon=1
                               @vLIN,mCLN+146 Say FTM1TOT                 Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                          CASE ftM1mon=2
                               @vLIN,mCLN+166 Say FTM1TOT                 Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     ENDCASE
                CASE mpRt="2"
                     @vLIN,mCLN     Say FTM1FEM                         Font "&mLetRom",10 Style "NQ" Size 1,13
                     @vLIN,mCLN+15  Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetRom",10 Style "NQ" Size 1,30
                     @vLIN,mCLN+47  Say FTM1NOM                         Font "&mLetRom",10 Style "NQ" Size 1,68 Pict "@S71"
                     @vLIN,mCLN+117 Say FTM1SOR+"-"+FTM1ORD             Font "&mLetRom",10 Style "NQ" Size 1,15
                     @vLIN,mCLN+134 Say FTM1PED                         Font "&mLetRom",10 Style "NQ" Size 1,10
                     DO CASE
                          CASE ftM1mon=1
                               @vLIN,mCLN+146 Say FTM1TOT                 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                          CASE ftM1mon=2
                               @vLIN,mCLN+166 Say FTM1TOT                 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     ENDCASE
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
      STORE 0 TO psW0
      DO CASE
           CASE EOF()
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
                @vLIN,mCLN+146 Say tTO1            Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+166 Say tTO2            Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+124 Say "TOTAL GENERAL" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+146 Say tTO1            Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+166 Say tTO2            Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2430c
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
      @vLIN,mCLN Say "Reporte General de Compras "+vFEC Font "&mLetRom",14 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
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
                @vLIN,mCLN+134 Say "PEDIDO"       Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+152 Say "TOTAL S/."    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+171 Say "TOTAL US$"    Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "EMISIÓN"      Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+15  Say "DOCUMENTO"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+47  Say "PROVEEDOR"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+117 Say "ORDEN-CPRA"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+134 Say "PEDIDO"       Font "&mLetRom",9 Style "BQ"
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
PROCEDURE Res_2430c
 DO reS_2430b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2430c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 DO CASE
      CASE vsW1=1
           SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
      CASE vsW1=2
           SEEK itDo+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
      CASE vsW1=3
           SEEK UPPER(inOm)+ipRv+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+ ;
                isEr+ALLTRIM(idOc)+"*"+STR(imOn, 1, 0)
      CASE vsW1=4
           SEEK isOr+ioRd+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ ;
                ipRv+STR(imOn, 1, 0)
      CASE vsW1=5
           SEEK ipEd+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
 ENDCASE
 DO paN_2430c
 DO CASE
      CASE vsW1=1
           SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
      CASE vsW1=2
           SEEK itDo+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
      CASE vsW1=3
           SEEK UPPER(inOm)+ipRv+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+ ;
                isEr+ALLTRIM(idOc)+"*"+STR(imOn, 1, 0)
      CASE vsW1=4
           SEEK isOr+ioRd+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ ;
                ipRv+STR(imOn, 1, 0)
      CASE vsW1=5
           SEEK ipEd+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+ ;
                STR(imOn, 1, 0)
 ENDCASE
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+STR(vmOn, 1, 0)=ftM1tdo+ftM1ser+ ;
         ALLTRIM(ftM1doc)+"*"+ftM1prv+STR(ftM1mon, 1, 0)
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      STORE ifEm TO vfEm
      STORE itDo TO vtDo
      STORE isEr TO vsEr
      STORE idOc TO vdOc
      STORE ipRv TO vpRv
      STORE inOm TO vnOm
      STORE ipEd TO vpEd
      STORE isOr TO vsOr
      STORE ioRd TO voRd
      STORE imOn TO vmOn
      STORE ifIl TO vfIl
 ENDIF
 DO CASE
      CASE vsW1=1
           SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
      CASE vsW1=2
           SEEK vtDo+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
      CASE vsW1=3
           SEEK UPPER(vnOm)+vpRv+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+ ;
                vsEr+ALLTRIM(vdOc)+"*"+STR(vmOn, 1, 0)
      CASE vsW1=4
           SEEK vsOr+voRd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+ ;
                vpRv+STR(vmOn, 1, 0)
      CASE vsW1=5
           SEEK vpEd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+ALLTRIM(vdOc)+"*"+vpRv+ ;
                STR(vmOn, 1, 0)
 ENDCASE
 DO diS_2430c WITH "R"
ENDPROC
*
PROCEDURE Bot_2430c
 DO prEsiona WITH "3", "CONSU3", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW1=1
           DO prEsiona WITH "1", "CONSU3", vfB1, vcB1
      CASE vsW1=2
           DO prEsiona WITH "1", "CONSU3", vfB2, vcB2
      CASE vsW1=3
           DO prEsiona WITH "1", "CONSU3", vfB3, vcB3
      CASE vsW1=4
           DO prEsiona WITH "1", "CONSU3", vfB4, vcB4
      CASE vsW1=5
           DO prEsiona WITH "1", "CONSU3", vfB5, vcB5
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2430c
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
      CASE mfIl>=vfB1-0.1 .AND. mfIl<=vfB1+0.464 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+1.8 .AND. vsW1<>1
           STORE 01 TO vsW1
           DO caM_2430c
           STORE 99 TO mkEy
      CASE mfIl>=vfB2-0.1 .AND. mfIl<=vfB2+0.464 .AND. mcCc>=vcB2 .AND.  ;
           mcCc<=vcB2+1.8 .AND. vsW1<>2
           STORE 02 TO vsW1
           DO caM_2430c
           STORE 99 TO mkEy
      CASE mfIl>=vfB3-0.1 .AND. mfIl<=vfB3+0.464 .AND. mcCc>=vcB3 .AND.  ;
           mcCc<=vcB3+1.8 .AND. vsW1<>3
           STORE 03 TO vsW1
           DO caM_2430c
           STORE 99 TO mkEy
      CASE mfIl>=vfB4-0.1 .AND. mfIl<=vfB4+0.464 .AND. mcCc>=vcB4 .AND.  ;
           mcCc<=vcB4+1.8 .AND. vsW1<>4
           STORE 04 TO vsW1
           DO caM_2430c
           STORE 99 TO mkEy
      CASE mfIl>=vfB5-0.1 .AND. mfIl<=vfB5+0.464 .AND. mcCc>=vcB5 .AND.  ;
           mcCc<=vcB5+1.8 .AND. vsW1<>5
           STORE 05 TO vsW1
           DO caM_2430c
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_2430c WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO CASE
                CASE vsW1=1
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ ;
                          ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                CASE vsW1=2
                     SEEK itDo+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm),  ;
                          4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+isEr+ ;
                          ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                CASE vsW1=3
                     SEEK UPPER(inOm)+ipRv+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                          SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1,  ;
                          2)+itDo+isEr+ALLTRIM(idOc)+"*"+STR(imOn, 1, 0)
                CASE vsW1=4
                     SEEK isOr+ioRd+SUBSTR(DTOC(ifEm), 7, 4)+ ;
                          SUBSTR(DTOC(ifEm), 4, 2)+SUBSTR(DTOC(ifEm), 1,  ;
                          2)+itDo+isEr+ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
                CASE vsW1=5
                     SEEK ipEd+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm),  ;
                          4, 2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+ ;
                          ALLTRIM(idOc)+"*"+ipRv+STR(imOn, 1, 0)
           ENDCASE
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           STORE ftM1fem TO vfEm
           STORE ftM1tdo TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1doc TO vdOc
           STORE ftM1prv TO vpRv
           STORE ftM1nom TO vnOm
           STORE ftM1ped TO vpEd
           STORE ftM1sor TO vsOr
           STORE ftM1ord TO voRd
           STORE ftM1mon TO vmOn
           DO diS_2430c WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
 STORE 99 TO mkEy
 DIMENSION plIs(2, 2)
 IF APRINTERS(plIs)=0
      STORE "No hay Impresoras instaladas..." TO mmSj
      STORE k_Esc TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, vtPo
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+07.5,pCOL+05 Say "Desde Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+08.9,pCOL+05 Say "Hasta Página:"         Font "&mLetRom",11 Style "BT"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.3,pCOL+05 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 @pFIL+10.5,pCOL+14 Say "Imprime Sub-Totales:"  Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_2
           @ pfIl+3.4, pcOl+34 TO pfIl+7, pcOl+54 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+3.4,pCOL+34 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+3.4,pCOL+34 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+07.6,pCOL+24.8 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+09.0,pCOL+24.8 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.9,pCOL+05.8 Get vTPO Font "&mLetAri",9 Style "NQ" Default vTPO Function "*RHT No imprime;x Día;x Tipo de Doc." Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+18.4,pCOL+06.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                STORE UPPER(dcOd) TO dcOd
                STORE UPPER(hcOd) TO hcOd
                DO CASE
                     CASE ALLTRIM(dcOd)+"*">ALLTRIM(hcOd)+"*"
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE mmAl=01
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          STORE 0 TO mvIs
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE k_Esc TO mkEy
                STORE 0 TO mvIs
                EXIT
           CASE poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_2430c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos de com-"
 @ pfIl+01, 02 SAY  ;
   "pras y gastos: Facturas, Boletas, Notas de Crédito, Notas de Débito, Ti-"
 @ pfIl+02, 02 SAY "ckets, etc. en el rango de fechas seleccionado."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
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
