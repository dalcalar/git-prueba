 = INKEY(0.01)
 SELECT teMporal
 DO paN_3552b
 STORE ifIl TO vfIl
 DO muE_3552b WITH "i", "v"
 DO seE_3552b WITH "v"
 DO diS_3552b WITH "R"
 DO toT_3552a IN PCC3552A
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3552b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3552b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3552b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3552b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3552b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3552b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
           CASE mkEy=k_Ctrl_p
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1tdo+ftM1ser+ftM1doc+ftM1gru+ftM1sr1+ftM1num= ;
                          itDo+isEr+idOc+igRu+isR1+inUm .AND. vtDo+vsEr+ ;
                          vdOc+vgRu+vsR1+vnUm=itDo+isEr+idOc+igRu+isR1+inUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc+vgRu+vsR1+vnUm=itDo+ ;
                                    isEr+idOc+igRu+isR1+inUm
                                    DO paN_3552b
                               OTHERWISE
                                    DO seE_3552b WITH "v"
                                    DO diS_3552b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3552b WITH "i", "v"
                          DO seE_3552b WITH "v"
                          DO diS_3552b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1tdo+ftM1ser+ftM1doc+ftM1gru+ftM1sr1+ftM1num= ;
                          utDo+usEr+udOc+ugRu+usR1+unUm .AND. vtDo+vsEr+ ;
                          vdOc+vgRu+vsR1+vnUm=utDo+usEr+udOc+ugRu+usR1+unUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc+vgRu+vsR1+vnUm=utDo+ ;
                                    usEr+udOc+ugRu+usR1+unUm
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3552b
                               OTHERWISE
                                    DO seE_3552b WITH "v"
                                    DO diS_3552b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3552b WITH "u", "v"
                          DO seE_3552b WITH "v"
                          DO diS_3552b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3552b WITH "v"
                          DO diS_3552b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc+vgRu+vsR1+vnUm=utDo+usEr+udOc+ ;
                             ugRu+usR1+unUm
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3552a IN PCC3552A WITH ifIl, ffIl+1
                               DO li1_3552a IN PCC3552A WITH ifIl, ffIl+1
                               DO muE_3552b WITH "F", "v"
                               DO muE_3552b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3552b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3552b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3552b WITH "v"
                          DO diS_3552b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3552b WITH "v"
                          DO diS_3552b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc+vgRu+vsR1+vnUm=itDo+isEr+idOc+ ;
                             igRu+isR1+inUm
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3552a IN PCC3552A WITH ifIl, ffIl+1
                               DO li1_3552a IN PCC3552A WITH ifIl, ffIl+1
                               DO muE_3552b WITH "F", "v"
                               DO muE_3552b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3552b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3552b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3552b WITH "v"
                          DO diS_3552b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3552b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3552b
                          STORE ifIl TO vfIl
                          DO muE_3552b WITH "i", "v"
                          DO seE_3552b WITH "v"
                          DO diS_3552b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3552b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3552b
                          STORE ifIl TO vfIl
                          DO muE_3552b WITH "i", "v"
                          DO seE_3552b WITH "v"
                          DO diS_3552b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3552b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3552b
 STORE ifIl TO vfIl, ufIl
 DO muE_3552b WITH "F", "i"
 DO muE_3552b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3552b WITH "N"
      DO muE_3552b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_3552a IN PCC3552A WITH ufIl+1, ffIl+1
      DO li1_3552a IN PCC3552A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3552b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. ftM1tdo="NC"
           SET COLOR TO RGB(155,0,0,192,192,192)
      CASE ptIp="R" .AND. ftM1tdo="NC"
           DO coLblr
      CASE ptIp="N" .AND. ftM1tdo="LE" .AND. ftM1acu=0
           SET COLOR TO RGB(98,98,0,192,192,192)
      CASE ptIp="R" .AND. ftM1tdo="LE" .AND. ftM1acu=0
           SET COLOR TO RGB(98,98,0,255,255,255)
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE ftM1mon=1
           STORE " "+msIg TO vsIg
      OTHERWISE
           STORE "US$" TO vsIg
 ENDCASE
 @vFIL,mCO0+00.0 Say FTM1TDO Font "&mLetAri",9 Style "NQ" Size 1,03.4
 @vFIL,mCO0+04.0 Say FTM1SER Font "&mLetAri",9 Style "NQ" Size 1,04.3
 @vFIL,mCO0+08.9 Say FTM1DOC Font "&mLetAri",9 Style "NQ" Size 1,10.1
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE ftM1gru="1"
           @vFIL,mCO0+019.8 Say "C" Font "&mLetAri",9 Style "NQ" Size 1,02.0
      CASE ftM1gru="2"
           DO CASE
                CASE ptIp="N"
                     SET COLOR TO RGB(0,0,128,192,192,192)
                CASE ptIp="R"
                     DO coLblz
           ENDCASE
           @vFIL,mCO0+019.8 Say "B"     Font "&mLetAri",9 Style "BQ" Size 1,01.7
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+022.4 Say FTM1SR1         Font "&mLetAri",9 Style "NQ" Size 1,04.3
 @vFIL,mCO0+027.4 Say FTM1NUM         Font "&mLetAri",9 Style "NQ" Size 1,10.1
 DO CASE
      CASE mrEs="3"
           @vFIL,mCO0+038.2 Say FTM1FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+051.4 Say FTM1FCA Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+064.6 Say FTM1DAT Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+077.8 Say FTM1RCB Font "&mLetAri",9 Style "NQ" Size 1,10.1
           @vFIL,mCO0+088.6 Say FTM1NOM Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S33"
           @vFIL,mCO0+117.7 Say FTM1GLO Font "&mLetAri",9 Style "NQ" Size 1,28.4 Pict "@S33"
           @vFIL,mCO0+146.8 Say vSIG    Font "&mLetAri",9 Style "NQ" Size 1,04.9
           @vFIL,mCO0+152.4 Say FTM1TOT Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,mCO0+168.4 Say FTM1ACU Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,mCO0+184.3 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
      CASE mrEs="4"
           @vFIL,mCO0+038.2 Say FTM1FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+051.4 Say FTM1FCA Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+064.6 Say FTM1DAT Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+077.8 Say FTM1RCB Font "&mLetAri",9 Style "NQ" Size 1,10.1
           @vFIL,mCO0+088.6 Say FTM1NOM Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S33"
           @vFIL,mCO0+117.7 Say FTM1GLO Font "&mLetAri",9 Style "NQ" Size 1,28.4 Pict "@S33"
           @vFIL,mCO0+146.8 Say vSIG    Font "&mLetAri",9 Style "NQ" Size 1,04.9
           @vFIL,mCO0+152.4 Say FTM1TOT Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,mCO0+168.4 Say FTM1ACU Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,mCO0+184.3 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,mCO0+200.4 Say FTM1SRL Font "&mLetAri",9 Style "NQ" Size 1,04.3
           @vFIL,mCO0+205.4 Say FTM1LET Font "&mLetAri",9 Style "NQ" Size 1,10.1
           @vFIL,mCO0+216.2 Say FTM1NBA Font "&mLetAri",9 Style "NQ" Size 1,10.4 Pict "@S13"
           @vFIL,mCO0+227.2 Say FTM1NCT Font "&mLetAri",9 Style "NQ" Size 1,10.4 Pict "@S13"
           @vFIL,mCO0+238.2 Say FTM1CHE Font "&mLetAri",9 Style "NQ" Size 1,13.5 Pict "@S16"
      OTHERWISE
           @vFIL,mCO0+038.1 Say FTM1FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+051.4 Say FTM1FCA Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+064.7 Say FTM1DAT Font "&mLetAri",9 Style "NQ" Size 1,12.6
           @vFIL,mCO0+077.9 Say FTM1RCB Font "&mLetAri",9 Style "NQ" Size 1,10.1
           @vFIL,mCO0+088.8 Say FTM1NOM Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S33"
           @vFIL,mCO0+117.9 Say FTM1GLO Font "&mLetAri",9 Style "NQ" Size 1,39.7 Pict "@S42"
           @vFIL,mCO0+158.3 Say vSIG    Font "&mLetAri",9 Style "NQ" Size 1,04.9
           @vFIL,mCO0+163.8 Say FTM1TOT Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,mCO0+179.8 Say FTM1ACU Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,mCO0+195.8 Say FTM1SLD Font "&mLetAri",9 Style "NQ" Size 1,15.4 Pict "9999,999.99"
           @vFIL,mCO0+211.8 Say FTM1SRL Font "&mLetAri",9 Style "NQ" Size 1,04.3
           @vFIL,mCO0+216.8 Say FTM1LET Font "&mLetAri",9 Style "NQ" Size 1,10.1
           @vFIL,mCO0+227.6 Say FTM1NBA Font "&mLetAri",9 Style "NQ" Size 1,10.4 Pict "@S13"
           @vFIL,mCO0+238.6 Say FTM1NCT Font "&mLetAri",9 Style "NQ" Size 1,10.4 Pict "@S13"
           @vFIL,mCO0+249.6 Say FTM1CHE Font "&mLetAri",9 Style "NQ" Size 1,19.0 Pict "@S22"
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3552b
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
           DO diS_3552b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3552b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3552b WITH "F", "v"
           DO diS_3552b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3552b
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vgRu TO cgRu
           STORE vsR1 TO csR1
           STORE vnUm TO cnUm
           STORE vfEm TO cfEm
           STORE vfPa TO cfPa
           STORE vdAt TO cdAt
           STORE vnOm TO cnOm
           STORE vgLo TO cgLo
           STORE vrCb TO crCb
           STORE vsRl TO csRl
           STORE vlEt TO clEt
      CASE ptP1="v" .AND. ptP2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vgRu TO igRu
           STORE vsR1 TO isR1
           STORE vnUm TO inUm
           STORE vfEm TO ifEm
           STORE vfPa TO ifPa
           STORE vdAt TO idAt
           STORE vnOm TO inOm
           STORE vgLo TO igLo
           STORE vrCb TO irCb
           STORE vsRl TO isRl
           STORE vlEt TO ilEt
      CASE ptP1="i" .AND. ptP2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE igRu TO vgRu
           STORE isR1 TO vsR1
           STORE inUm TO vnUm
           STORE ifEm TO vfEm
           STORE ifPa TO vfPa
           STORE idAt TO vdAt
           STORE inOm TO vnOm
           STORE igLo TO vgLo
           STORE irCb TO vrCb
           STORE isRl TO vsRl
           STORE ilEt TO vlEt
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cgRu TO vgRu
           STORE csR1 TO vsR1
           STORE cnUm TO vnUm
           STORE cfEm TO vfEm
           STORE cfPa TO vfPa
           STORE cdAt TO vdAt
           STORE cnOm TO vnOm
           STORE cgLo TO vgLo
           STORE crCb TO vrCb
           STORE csRl TO vsRl
           STORE clEt TO vlEt
      CASE ptP1="u" .AND. ptP2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE ugRu TO vgRu
           STORE usR1 TO vsR1
           STORE unUm TO vnUm
           STORE ufEm TO vfEm
           STORE ufPa TO vfPa
           STORE udAt TO vdAt
           STORE unOm TO vnOm
           STORE ugLo TO vgLo
           STORE urCb TO vrCb
           STORE usRl TO vsRl
           STORE ulEt TO vlEt
      CASE ptP1="F" .AND. ptP2="v"
           STORE ftM1tdo TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1doc TO vdOc
           STORE ftM1gru TO vgRu
           STORE ftM1sr1 TO vsR1
           STORE ftM1num TO vnUm
           STORE ftM1fem TO vfEm
           STORE ftM1fpa TO vfPa
           STORE ftM1dat TO vdAt
           STORE ftM1nom TO vnOm
           STORE ftM1glo TO vgLo
           STORE ftM1rcb TO vrCb
           STORE ftM1srl TO vsRl
           STORE ftM1let TO vlEt
      CASE ptP1="F" .AND. ptP2="u"
           STORE ftM1tdo TO utDo
           STORE ftM1ser TO usEr
           STORE ftM1doc TO udOc
           STORE ftM1gru TO ugRu
           STORE ftM1sr1 TO usR1
           STORE ftM1num TO unUm
           STORE ftM1fem TO ufEm
           STORE ftM1fpa TO ufPa
           STORE ftM1dat TO udAt
           STORE ftM1nom TO unOm
           STORE ftM1glo TO ugLo
           STORE ftM1rcb TO urCb
           STORE ftM1srl TO usRl
           STORE ftM1let TO ulEt
      CASE ptP1="F" .AND. ptP2="i"
           STORE ftM1tdo TO itDo
           STORE ftM1ser TO isEr
           STORE ftM1doc TO idOc
           STORE ftM1gru TO igRu
           STORE ftM1sr1 TO isR1
           STORE ftM1num TO inUm
           STORE ftM1fem TO ifEm
           STORE ftM1fpa TO ifPa
           STORE ftM1dat TO idAt
           STORE ftM1nom TO inOm
           STORE ftM1glo TO igLo
           STORE ftM1rcb TO irCb
           STORE ftM1srl TO isRl
           STORE ftM1let TO ilEt
 ENDCASE
ENDPROC
*
PROCEDURE See_3552b
 PARAMETER psEe
 DO CASE
      CASE psEe="v" .AND. vsW0=1
           SEEK vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
      CASE psEe="v" .AND. vsW0=2
           SEEK vgRu+vtDo+vsEr+vdOc+vsR1+vnUm
      CASE psEe="v" .AND. vsW0=3
           SEEK vgRu+vsR1+vnUm+vtDo+vsEr+vdOc
      CASE psEe="v" .AND. vsW0=4
           SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
      CASE psEe="v" .AND. vsW0=5
           SEEK SUBSTR(DTOC(vfPa), 7, 4)+SUBSTR(DTOC(vfPa), 4, 2)+ ;
                SUBSTR(DTOC(vfPa), 1, 2)+vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
      CASE psEe="v" .AND. vsW0=6
           SEEK SUBSTR(DTOC(vdAt), 7, 4)+SUBSTR(DTOC(vdAt), 4, 2)+ ;
                SUBSTR(DTOC(vdAt), 1, 2)+vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
      CASE psEe="v" .AND. vsW0=7
           SEEK vrCb+vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
      CASE psEe="v" .AND. vsW0=8
           SEEK UPPER(vnOm)+vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
      CASE psEe="v" .AND. vsW0=9
           SEEK UPPER(vgLo)+vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
      CASE psEe="v" .AND. vsW0=10
           SEEK vsRl+vlEt+vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
      CASE psEe="i" .AND. vsW0=1
           SEEK itDo+isEr+idOc+igRu+isR1+inUm
      CASE psEe="i" .AND. vsW0=2
           SEEK igRu+itDo+isEr+idOc+isR1+inUm
      CASE psEe="i" .AND. vsW0=3
           SEEK igRu+isR1+inUm+itDo+isEr+idOc
      CASE psEe="i" .AND. vsW0=4
           SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc+igRu+isR1+inUm
      CASE psEe="i" .AND. vsW0=5
           SEEK SUBSTR(DTOC(ifPa), 7, 4)+SUBSTR(DTOC(ifPa), 4, 2)+ ;
                SUBSTR(DTOC(ifPa), 1, 2)+itDo+isEr+idOc+igRu+isR1+inUm
      CASE psEe="i" .AND. vsW0=6
           SEEK SUBSTR(DTOC(idAt), 7, 4)+SUBSTR(DTOC(idAt), 4, 2)+ ;
                SUBSTR(DTOC(idAt), 1, 2)+itDo+isEr+idOc+igRu+isR1+inUm
      CASE psEe="i" .AND. vsW0=7
           SEEK irCb+itDo+isEr+idOc+igRu+isR1+inUm
      CASE psEe="i" .AND. vsW0=8
           SEEK UPPER(inOm)+itDo+isEr+idOc+igRu+isR1+inUm
      CASE psEe="i" .AND. vsW0=9
           SEEK UPPER(igLo)+itDo+isEr+idOc+igRu+isR1+inUm
      CASE psEe="i" .AND. vsW0=10
           SEEK isRl+ilEt+itDo+isEr+idOc+igRu+isR1+inUm
      CASE psEe="u" .AND. vsW0=1
           SEEK utDo+usEr+udOc+ugRu+usR1+unUm
      CASE psEe="u" .AND. vsW0=2
           SEEK ugRu+utDo+usEr+udOc+usR1+unUm
      CASE psEe="u" .AND. vsW0=3
           SEEK ugRu+usR1+unUm+utDo+usEr+udOc
      CASE psEe="u" .AND. vsW0=4
           SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4, 2)+ ;
                SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc+ugRu+usR1+unUm
      CASE psEe="u" .AND. vsW0=5
           SEEK SUBSTR(DTOC(ufPa), 7, 4)+SUBSTR(DTOC(ufPa), 4, 2)+ ;
                SUBSTR(DTOC(ufPa), 1, 2)+utDo+usEr+udOc+ugRu+usR1+unUm
      CASE psEe="u" .AND. vsW0=6
           SEEK SUBSTR(DTOC(udAt), 7, 4)+SUBSTR(DTOC(udAt), 4, 2)+ ;
                SUBSTR(DTOC(udAt), 1, 2)+utDo+usEr+udOc+ugRu+usR1+unUm
      CASE psEe="u" .AND. vsW0=7
           SEEK urCb+utDo+usEr+udOc+ugRu+usR1+unUm
      CASE psEe="u" .AND. vsW0=8
           SEEK UPPER(unOm)+utDo+usEr+udOc+ugRu+usR1+unUm
      CASE psEe="u" .AND. vsW0=9
           SEEK UPPER(ugLo)+utDo+usEr+udOc+ugRu+usR1+unUm
      CASE psEe="u" .AND. vsW0=10
           SEEK usRl+ulEt+utDo+usEr+udOc+ugRu+usR1+unUm
 ENDCASE
ENDPROC
*
PROCEDURE Res_3552b
 SET READBORDER ON
 DO reS_3552a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3552b WITH "R"
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
PROCEDURE Hl1_3552b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Movimientos de Ventas"
 @ pfIl+01, 02 SAY "del rango de fechas seleccionado y sus pagos respectivos."
 @ pfIl+03, 02 SAY "Los movimientos en Bancos se ven en Azul"
 @ pfIl+04, 02 SAY "Los movimientos en Cajas se ven en Negro"
 @ pfIl+05, 02 SAY "Las NC se ven en Rojo"
 @ pfIl+06, 02 SAY "Las Letras se ven en Mostaza"
 @ pfIl+08, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+10, 30 SAY ":" STYLE "BT"
 @ pfIl+11, 30 SAY ":" STYLE "BT"
 @ pfIl+12, 30 SAY ":" STYLE "BT"
 @ pfIl+13, 30 SAY ":" STYLE "BT"
 @ pfIl+14, 30 SAY ":" STYLE "BT"
 @ pfIl+15, 30 SAY ":" STYLE "BT"
 @ pfIl+16, 30 SAY ":" STYLE "BT"
 @ pfIl+17, 30 SAY ":" STYLE "BT"
 @ pfIl+18, 30 SAY ":" STYLE "BT"
 @ pfIl+19, 30 SAY ":" STYLE "BT"
 @ pfIl+20, 30 SAY ":" STYLE "BT"
 @ pfIl+10, 11 SAY "ESC" STYLE "BT"
 @ pfIl+11, 11 SAY "F10" STYLE "BT"
 @ pfIl+12, 11 SAY "F1" STYLE "BT"
 @ pfIl+13, 11 SAY "F8" STYLE "BT"
 @ pfIl+14, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+15, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+16, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+17, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+18, 11 SAY "HOME" STYLE "BT"
 @ pfIl+19, 11 SAY "END" STYLE "BT"
 @ pfIl+20, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+10, 32 SAY "Regresar a Cabecera"
 @ pfIl+11, 32 SAY "Cerrar y regresar a Windows"
 @ pfIl+12, 32 SAY "Ayuda del Programa"
 @ pfIl+13, 32 SAY "Pasar Datos a Excel"
 @ pfIl+14, 32 SAY "Línea inferior"
 @ pfIl+15, 32 SAY "Línea superior"
 @ pfIl+16, 32 SAY "Página siguiente"
 @ pfIl+17, 32 SAY "Página anterior"
 @ pfIl+18, 32 SAY "Primera línea"
 @ pfIl+19, 32 SAY "Última línea"
 @ pfIl+20, 32 SAY "Imprimir reporte"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
