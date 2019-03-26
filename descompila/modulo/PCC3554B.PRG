 = INKEY(0.01)
 SELECT teMporal
 DO paN_3554b
 STORE icLi TO vcLi
 STORE itDo TO vtDo
 STORE isEr TO vsEr
 STORE idOc TO vdOc
 STORE itPo TO vtPo
 STORE isR1 TO vsR1
 STORE inUm TO vnUm
 STORE ifIl TO vfIl
 SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
 DO diS_3554b WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                DO viR_000
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3554b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3554b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3554b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3554b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3554b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3554b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_11
                vxLs = PUTFILE("Archivo Excel:", "XLS\COBRANZAS.XLS", "XLS")
                RESTORE SCREEN FROM vpAn_11
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM1TDO,FTM1SER,FTM1DOC,FTM1TPO,FTM1TIP,FTM1SR1,FTM1NUM,FTM1FEM,FTM1FEC,FTM1CLI,FTM1NTT,FTM1NOM, FTM1TCA,FTM1MON,FTM1TOT,FTM1MND,FTM1PAG,FTM1SLD,FTM1NTI,FTM1GLO,FTM1CHE,FTM1NBA,FTM1NCT Type XLS
                               DO xlS_0000a
                     ENDCASE
                ENDIF
                SELECT teMporal
                SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3554b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
           CASE mkEy=k_Tab
                SAVE SCREEN TO vpAn_11
                DO pcC3554c
                RESTORE SCREEN FROM vpAn_11
                SELECT teMporal
                SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1cli+ftM1tdo+ftM1ser+ftM1doc+STR(ftM1tpo, 1,  ;
                          0)+ftM1sr1+ftM1num=icLi+itDo+isEr+idOc+STR(itPo,  ;
                          1, 0)+isR1+inUm .AND. vcLi+vtDo+vsEr+vdOc+ ;
                          STR(vtPo, 1, 0)+vsR1+vnUm=icLi+itDo+isEr+idOc+ ;
                          STR(itPo, 1, 0)+isR1+inUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+ ;
                                    vsR1+vnUm=icLi+itDo+isEr+idOc+ ;
                                    STR(itPo, 1, 0)+isR1+inUm
                                    DO paN_3554b
                               OTHERWISE
                                    SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1,  ;
                                     0)+vsR1+vnUm
                                    DO diS_3554b WITH "N"
                          ENDCASE
                          STORE icLi TO vcLi
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE itPo TO vtPo
                          STORE isR1 TO vsR1
                          STORE inUm TO vnUm
                          STORE ifIl TO vfIl
                          SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
                          DO diS_3554b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1cli+ftM1tdo+ftM1ser+ftM1doc+STR(ftM1tpo, 1,  ;
                          0)+ftM1sr1+ftM1num=ucLi+utDo+usEr+udOc+STR(utPo,  ;
                          1, 0)+usR1+unUm .AND. vcLi+vtDo+vsEr+vdOc+ ;
                          STR(vtPo, 1, 0)+vsR1+vnUm=ucLi+utDo+usEr+udOc+ ;
                          STR(utPo, 1, 0)+usR1+unUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+ ;
                                    vsR1+vnUm=ucLi+utDo+usEr+udOc+ ;
                                    STR(utPo, 1, 0)+usR1+unUm
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3554b
                               OTHERWISE
                                    SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1,  ;
                                     0)+vsR1+vnUm
                                    DO diS_3554b WITH "N"
                          ENDCASE
                          STORE ucLi TO vcLi
                          STORE utDo TO vtDo
                          STORE usEr TO vsEr
                          STORE udOc TO vdOc
                          STORE utPo TO vtPo
                          STORE usR1 TO vsR1
                          STORE unUm TO vnUm
                          STORE ufIl TO vfIl
                          SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
                          DO diS_3554b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
                          DO diS_3554b WITH "N"
                          SKIP
                          IF vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+ ;
                             vnUm=ucLi+utDo+usEr+udOc+STR(utPo, 1, 0)+usR1+unUm
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3551a IN PCC3551A WITH ifIl, ffIl+1
                               STORE ftM1cli TO ucLi, vcLi
                               STORE ftM1tdo TO utDo, vtDo
                               STORE ftM1ser TO usEr, vsEr
                               STORE ftM1doc TO udOc, vdOc
                               STORE ftM1tpo TO utPo, vtPo
                               STORE ftM1sr1 TO usR1, vsR1
                               STORE ftM1num TO unUm, vnUm
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE ftM1cli TO icLi
                               STORE ftM1tdo TO itDo
                               STORE ftM1ser TO isEr
                               STORE ftM1doc TO idOc
                               STORE ftM1tpo TO itPo
                               STORE ftM1sr1 TO isR1
                               STORE ftM1num TO inUm
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE ftM1cli TO vcLi
                               STORE ftM1tdo TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1tpo TO vtPo
                               STORE ftM1sr1 TO vsR1
                               STORE ftM1num TO vnUm
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
                          DO diS_3554b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
                          DO diS_3554b WITH "N"
                          SKIP -1
                          IF vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+ ;
                             vnUm=icLi+itDo+isEr+idOc+STR(itPo, 1, 0)+isR1+inUm
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3551a IN PCC3551A WITH ifIl, ffIl+1
                               STORE ftM1cli TO icLi, vcLi
                               STORE ftM1tdo TO itDo, vtDo
                               STORE ftM1ser TO isEr, vsEr
                               STORE ftM1doc TO idOc, vdOc
                               STORE ftM1tpo TO itPo, vtPo
                               STORE ftM1sr1 TO isR1, vsR1
                               STORE ftM1num TO inUm, vnUm
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    STORE ftM1cli TO ucLi
                                    STORE ftM1tdo TO utDo
                                    STORE ftM1ser TO usEr
                                    STORE ftM1doc TO udOc
                                    STORE ftM1tpo TO utPo
                                    STORE ftM1sr1 TO usR1
                                    STORE ftM1num TO unUm
                               ENDIF
                          ELSE
                               STORE ftM1cli TO vcLi
                               STORE ftM1tdo TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1tpo TO vtPo
                               STORE ftM1sr1 TO vsR1
                               STORE ftM1num TO vnUm
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
                          DO diS_3554b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK ucLi+utDo+usEr+udOc+STR(utPo, 1, 0)+usR1+unUm
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3554b
                          STORE icLi TO vcLi
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE itPo TO vtPo
                          STORE isR1 TO vsR1
                          STORE inUm TO vnUm
                          STORE ifIl TO vfIl
                          SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
                          DO diS_3554b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK icLi+itDo+isEr+idOc+STR(itPo, 1, 0)+isR1+inUm
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3554b
                          STORE icLi TO vcLi
                          STORE itDo TO vtDo
                          STORE isEr TO vsEr
                          STORE idOc TO vdOc
                          STORE itPo TO vtPo
                          STORE isR1 TO vsR1
                          STORE inUm TO vnUm
                          STORE ifIl TO vfIl
                          SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
                          DO diS_3554b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vcLi+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3554b
 STORE ifIl TO vfIl, ufIl
 STORE ftM1cli TO icLi, ucLi
 STORE ftM1tdo TO itDo, utDo
 STORE ftM1ser TO isEr, usEr
 STORE ftM1doc TO idOc, udOc
 STORE ftM1tpo TO itPo, utPo
 STORE ftM1sr1 TO isR1, usR1
 STORE ftM1num TO inUm, unUm
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3554b WITH "N"
      STORE ftM1cli TO ucLi
      STORE ftM1tdo TO utDo
      STORE ftM1ser TO usEr
      STORE ftM1doc TO udOc
      STORE ftM1tpo TO utPo
      STORE ftM1sr1 TO usR1
      STORE ftM1num TO unUm
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3551a IN PCC3551A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3554b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. ftM1tdo="NC"
           SET COLOR TO RGB(155,0,0,192,192,192)
      CASE ptIp="R" .AND. ftM1tdo="NC"
           DO coLblr
      CASE ptIp="N" .AND. ftM1tip=2
           SET COLOR TO RGB(0,0,128,192,192,192)
      CASE ptIp="R" .AND. ftM1tip=2
           DO coLblz
      CASE ptIp="N" .AND. ftM1tip=1
           SET COLOR TO RGB(128,0,128,192,192,192)
      CASE ptIp="R" .AND. ftM1tip=1
           SET COLOR TO RGB(128,0,128,255,255,255)
      CASE ptIp="N" .AND. ftM1tdo="LE" .AND. ftM1pag=0
           SET COLOR TO RGB(98,98,0,192,192,192)
      CASE ptIp="R" .AND. ftM1tdo="LE" .AND. ftM1pag=0
           SET COLOR TO RGB(98,98,0,255,255,255)
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE ftM1mon=1
           STORE "S/." TO vsG1
      OTHERWISE
           STORE "U$" TO vsG1
 ENDCASE
 DO CASE
      CASE ftM1mnd=1
           STORE "S/." TO vsG2
      OTHERWISE
           STORE "U$" TO vsG2
 ENDCASE
 @vFIL,mCO0+000.2 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,18.7
 @vFIL,mCO0+020.2 Say FTM1FEC                         Font "&mLetAri",9 Style "NQ" Size 1,12.8
 @vFIL,mCO0+034.4 Say FTM1CLI+":"+FTM1NOM             Font "&mLetAri",9 Style "NQ" Size 1,34.3 Pict "@S37"
 @vFIL,mCO0+070.3 Say FTM1GLO                         Font "&mLetAri",9 Style "NQ" Size 1,22   Pict "@S24"
 @vFIL,mCO0+093.8 Say FTM1CHE                         Font "&mLetAri",9 Style "NQ" Size 1,17   Pict "@S20"
 @vFIL,mCO0+112.3 Say vSG1                            Font "&mLetAri",9 Style "NQ" Size 1,4.8
 @vFIL,mCO0+118.5 Say FTM1TOT                         Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
 @vFIL,mCO0+133.9 Say vSG2                            Font "&mLetAri",9 Style "NQ" Size 1,4.8
 @vFIL,mCO0+140.1 Say FTM1PAG                         Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
ENDPROC
*
PROCEDURE Imp_3554b
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
 DO reP_3554b
 SELECT teMporal
 SET ORDER TO FTM1DOC
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3554b
 PRIVATE ptAm
 DO coLbln
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE mvIs=0
           STORE 98 TO ptAm
           STORE 04 TO mcLn
      CASE mvIs=1
           STORE 98 TO ptAm
           STORE 04 TO mcLn
 ENDCASE
 STORE "*" TO ccLi
 SELECT teMporal
 SET ORDER TO FTM1FEC
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_3554b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF ccLi<>ftM1cli
           STORE ftM1cli TO ccLi
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN+00.2 Say "Cliente: "+FTM1NTT Font "&mLetRom",12 Style "BQ" Size 1,11
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg=0 .OR. vlIn>mpAg-3
                DO caB_3554b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE ftM1mon=1
                     STORE "S/." TO vsG1
                OTHERWISE
                     STORE "U$" TO vsG1
           ENDCASE
           DO CASE
                CASE ftM1mnd=1
                     STORE "S/." TO vsG2
                OTHERWISE
                     STORE "U$" TO vsG2
           ENDCASE
           @vLIN,mCLN+00.2 Say FTM1TDO+":"+FTM1SER+"-"+FTM1DOC Font "&mLetSwi",8 Style "NQ" Size 1,17.2
           @vLIN,mCLN+18.0 Say FTM1FEM                         Font "&mLetSwi",8 Style "NQ" Size 1,11
           @vLIN,mCLN+30.3 Say FTM1NOM                         Font "&mLetSwi",8 Style "NQ" Size 1,21 Pict "@S23"
           @vLIN,mCLN+54.3 Say FTM1GLO                         Font "&mLetSwi",8 Style "NQ" Size 1,25 Pict "@S28"
           @vLIN,mCLN+98.8 Say vSG2                            Font "&mLetSwi",8 Style "NQ" Size 1,3.4
           DO CASE
                CASE AT("CHEQUE", UPPER(ftM1nti))<>0 .AND. ftM1tpo=2
                     @vLIN,mCLN+82.3 Say "CH: "+FTM1CHE Font "&mLetSwi",8 Style "NQ" Size 1,13 Pict "@S15"
                CASE AT("DEP", UPPER(ftM1nti))<>0 .AND. ftM1tpo=2
                     @vLIN,mCLN+82.3 Say "DP: "+FTM1CHE Font "&mLetSwi",8 Style "NQ" Size 1,13 Pict "@S15"
                CASE ftM1tip=1
                     @vLIN,mCLN+82.3 Say "a Fecha"      Font "&mLetSwi",8 Style "NQ" Size 1,13 Pict "@S15"
                CASE ftM1tip=2
                     @vLIN,mCLN+82.3 Say "CANJE"        Font "&mLetSwi",8 Style "NQ" Size 1,13 Pict "@S15"
                OTHERWISE
                     @vLIN,mCLN+82.3 Say FTM1CHE        Font "&mLetSwi",8 Style "NQ" Size 1,13 Pict "@S15"
           ENDCASE
           DO CASE
                CASE ftM1tdo<>"NC" .AND. ftM1tip<>1 .AND. ftM1tip<>2
                     @vLIN,mCLN+102.8 Say FTM1PAG Font "&mLetSwi",8 Style "NQ" Size 1,11.9 Pict "999,999.99"
                     @vLIN,mCLN+115.8 Say FTM1NBA Font "&mLetSwi",8 Style "NQ" Size 1,17 Pict "@S20"
                     @vLIN,mCLN+132.8 Say FTM1NCT Font "&mLetSwi",8 Style "NQ" Size 1,20 Pict "@S22"
                CASE ftM1tip=1
                     @vLIN,mCLN+115.8 Say FTM1PAG Font "&mLetSwi",8 Style "NQ" Size 1,11.9 Pict "999,999.99"
                CASE ftM1tip=2
                     @vLIN,mCLN+115.8 Say FTM1CAN Font "&mLetSwi",8 Style "NQ" Size 1,11.9 Pict "999,999.99"
                     @vLIN,mCLN+135.8 Say FTM1TOT Font "&mLetSwi",8 Style "NQ" Size 1,11.9 Pict "(999,999.99)"
                CASE ftM1tdo="NC"
                     @vLIN,mCLN+115.8 Say FTM1TOT Font "&mLetSwi",8 Style "NQ" Size 1,11.9 Pict "999,999.99"
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 STORE vlIn+0.5 TO vlIn
 IF vlIn>mpAg-3
      DO caB_3554b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Resumen" Font "&mLetRom",11 Style "BQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 SELECT tmP_tipos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vlIn>mpAg-3
           DO caB_3554b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN    Say FTM2NTI Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+53 Say FTM2TT2 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.99"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3554b
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
      @vLIN,mCLN Say "Cobranzas del "+Dtoc(dFEM)+" al "+Dtoc(hFEM)+"x Cliente Titular" Font "&mLetAri",13 Style "NQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN+000.2 Say "Documento"    Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+018.0 Say "Cancelac"     Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+030.3 Say "Cliente"      Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+054.3 Say "Glosa"        Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+082.3 Say "Cheq/Depós"   Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+098.3 Say "Monto Pagado" Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+115.8 Say "Banco"        Font "&mLetAri",9 Style "NQ"
      @vLIN,mCLN+132.8 Say "Cuenta"       Font "&mLetAri",9 Style "NQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Res_3554b
 SET READBORDER ON
 DO reS_3554a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3554b WITH "R"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
ENDPROC
*
PROCEDURE Clp_3554b
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3554b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           SEEK icLi+itDo+isEr+idOc+STR(itPo, 1, 0)+isR1+inUm
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           STORE ftM1cli TO vcLi
           STORE ftM1tdo TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1doc TO vdOc
           STORE ftM1tpo TO vtPo
           STORE ftM1sr1 TO vsR1
           STORE ftM1num TO vnUm
           DO diS_3554b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3554b
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Movimientos de Pagos"
 @ 1.200, 01 SAY "ordenados por documento."
 @ 3.200, 01 SAY "Las teclas para movilizarse son:"
 @ 5.200, 28 SAY ":" STYLE "BT"
 @ 6.200, 28 SAY ":" STYLE "BT"
 @ 7.200, 28 SAY ":" STYLE "BT"
 @ 8.200, 28 SAY ":" STYLE "BT"
 @ 9.200, 28 SAY ":" STYLE "BT"
 @ 10.200, 28 SAY ":" STYLE "BT"
 @ 11.200, 28 SAY ":" STYLE "BT"
 @ 12.200, 28 SAY ":" STYLE "BT"
 @ 13.200, 28 SAY ":" STYLE "BT"
 @ 14.200, 28 SAY ":" STYLE "BT"
 @ 15.200, 28 SAY ":" STYLE "BT"
 @ 16.200, 28 SAY ":" STYLE "BT"
 @ 5.200, 09 SAY "ESC" STYLE "BT"
 @ 6.200, 09 SAY "F10" STYLE "BT"
 @ 7.200, 09 SAY "F1" STYLE "BT"
 @ 8.200, 09 SAY "F8" STYLE "BT"
 @ 9.200, 09 SAY "FLECHA ABAJO" STYLE "BT"
 @ 10.200, 09 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 11.200, 09 SAY "PAGE DOWN" STYLE "BT"
 @ 12.200, 09 SAY "PAGE UP" STYLE "BT"
 @ 13.200, 09 SAY "HOME" STYLE "BT"
 @ 14.200, 09 SAY "END" STYLE "BT"
 @ 15.200, 09 SAY "CTRL P" STYLE "BT"
 @ 16.200, 09 SAY "TAB" STYLE "BT"
 @ 5.200, 30 SAY "Regresar a Cabecera"
 @ 6.200, 30 SAY "Cerrar y regresar a Windows"
 @ 7.200, 30 SAY "Ayuda del Programa"
 @ 8.200, 30 SAY "Pasar Datos a Excel"
 @ 9.200, 30 SAY "Línea inferior"
 @ 10.200, 30 SAY "Línea superior"
 @ 11.200, 30 SAY "Página siguiente"
 @ 12.200, 30 SAY "Página anterior"
 @ 13.200, 30 SAY "Primera línea"
 @ 14.200, 30 SAY "Última línea"
 @ 15.200, 30 SAY "Imprimir Movimientos de Cancelaciones"
 @ 16.200, 30 SAY "Ver Resumen"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
