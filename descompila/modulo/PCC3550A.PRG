 PARAMETER wnIv, wtTt, wcAj
 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[21, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1REC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1tdo+ftM1ser+ftM1num TAG ftM1num
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3511NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3520", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Sal_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3520NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM1NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vfIl, ifIl, ufIl, ffIl, cfIl, vaNo, iaNo, uaNo, caNo, daNo, haNo,  ;
        vmEs, imEs
 PUBLIC umEs, cmEs, dmEs, hmEs, vdIa, idIa, udIa, cdIa, ddIa, hdIa, vtTt,  ;
        itTt, utTt
 PUBLIC ctTt, vtDo, itDo, utDo, ctDo, vsEr, isEr, usEr, csEr, vnUm, inUm,  ;
        unUm, cnUm
 PUBLIC dfEm, hfEm, cdFe, chFe, viN1, viN2, vsA1, vsA2, vcAj, vtPo, vtIp,  ;
        vnTi, vtCa
 PUBLIC vmOn, vtOt, vgLo, vnOm, veSt, vuSu, vdAt, vtIm, icLn, ucLn, vlIn,  ;
        vpAg, vxLs
 PUBLIC vsIg
 PUBLIC vpAn_11
 STORE CTOD("  /  /    ") TO cdFe, chFe
 STORE SPACE(01) TO vtTt, itTt, utTt
 STORE SPACE(02) TO vtDo, itDo, utDo
 STORE SPACE(03) TO vsEr, isEr, usEr
 STORE SPACE(07) TO vnUm, inUm, unUm
 STORE SPACE(04) TO vaNo, iaNo, uaNo
 STORE SPACE(02) TO vmEs, imEs, umEs, vdIa, idIa, udIa
 STORE DATE() TO dfEm, hfEm
 STORE 00 TO viN1, viN2, vsA1, vsA2
 STORE wcAj TO vcAj
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 IF vcAj<1
      STORE 1 TO vcAj
 ENDIF
 SET READBORDER ON
 DO p00_3550a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SELECT teMporal
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3550a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3507a IN PCC3507A
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3550a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3550a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                IF dfEm<>cdFe .OR. hfEm<>chFe
                     STORE 00 TO viN1, viN2, vsA1, vsA2
                     STORE SUBSTR(DTOC(dfEm), 7, 4) TO daNo
                     STORE SUBSTR(DTOC(dfEm), 4, 2) TO dmEs
                     STORE SUBSTR(DTOC(dfEm), 1, 2) TO ddIa
                     STORE SUBSTR(DTOC(hfEm), 7, 4) TO haNo
                     STORE SUBSTR(DTOC(hfEm), 4, 2) TO hmEs
                     STORE SUBSTR(DTOC(hfEm), 1, 2) TO hdIa
                     SELECT teMporal
                     ZAP
                     REINDEX
                     SELECT caB_ing_caja
                     GOTO TOP
                     SET NEAR ON
                     SEEK daNo+dmEs
                     SET NEAR OFF
                     SET ESCAPE ON
                     ON ESCAPE STORE K_ESC TO MKEY
                     DO WHILE  .NOT. EOF() .AND. f3510ano+f3510mes<=haNo+hmEs
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          IF f3510est="9" .OR. (wnIv$"34" .AND. f3510caj<> ;
                             vcAj) .OR. f3510tpo=4 .OR. f3510tpo=7 .OR.  ;
                             (f3510tpo=6 .AND. f3510dnc=2) .OR. (wnIv$ ;
                             "13" .AND. f3510tpo=3)
                               SKIP
                               LOOP
                          ENDIF
                          IF f3510ano+f3510mes+f3510dia>=daNo+dmEs+ddIa  ;
                             .AND. f3510ano+f3510mes+f3510dia<=haNo+hmEs+hdIa
                               STORE f3510ano TO vaNo
                               STORE f3510mes TO vmEs
                               STORE f3510dia TO vdIa
                               STORE f3510ser TO vsEr
                               STORE f3510num TO vnUm
                               STORE f3510caj TO vcAj
                               STORE f3510tpo TO vtPo
                               STORE f3510tip TO vtIp
                               STORE f3510nti TO vnTi
                               STORE f3510tca TO vtCa
                               STORE f3510mon TO vmOn
                               STORE f3510tot TO vtOt
                               STORE f3510glo TO vgLo
                               STORE f3510est TO veSt
                               STORE f3510usu TO vuSu
                               STORE f3510dat TO vdAt
                               STORE f3510tim TO vtIm
                               WAIT WINDOW NOCLEAR NOWAIT  ;
                                    "L E Y E N D O "+vaNo+"-"+vmEs+"-"+ ;
                                    vnUm+"..."+CHR(13)+CHR(13)+ ;
                                    "Presionar ESC para Salir..."
                               SELECT deT_ing_caja
                               SEEK vaNo+vmEs+vsEr+vnUm
                               IF EOF()
                                    SELECT teMporal
                                    SEEK vaNo+vmEs+vdIa+"1"+"VI"+vsEr+vnUm
                                    IF EOF()
                                         APPEND BLANK
                                         REPLACE ftM1ttt WITH "1"
                                         REPLACE ftM1ano WITH vaNo
                                         REPLACE ftM1mes WITH vmEs
                                         REPLACE ftM1dia WITH vdIa
                                         REPLACE ftM1tdo WITH "VI"
                                         REPLACE ftM1ser WITH vsEr
                                         REPLACE ftM1num WITH vnUm
                                         REPLACE ftM1caj WITH vcAj
                                         REPLACE ftM1tpo WITH vtPo
                                         REPLACE ftM1tip WITH vtIp
                                         REPLACE ftM1nti WITH vnTi
                                         REPLACE ftM1tca WITH vtCa
                                         REPLACE ftM1mon WITH vmOn
                                         REPLACE ftM1tot WITH vtOt
                                         REPLACE ftM1glo WITH vgLo
                                         REPLACE ftM1est WITH veSt
                                         REPLACE ftM1usu WITH vuSu
                                         REPLACE ftM1dat WITH vdAt
                                         REPLACE ftM1tim WITH vtIm
                                    ELSE
                                         REPLACE ftM1tot WITH ftM1tot+vtOt
                                    ENDIF
                                    DO CASE
                                         CASE ftM1mon=1
                                              STORE viN1+vtOt TO viN1
                                         CASE ftM1mon=2
                                              STORE viN2+vtOt TO viN2
                                    ENDCASE
                               ELSE
                                    DO WHILE  .NOT. EOF() .AND. f3511ano+ ;
                                       f3511mes+f3511ser+f3511num=vaNo+ ;
                                       vmEs+vsEr+vnUm
                                         STORE f3511tdo TO vtD1
                                         STORE f3511sr1 TO vsR1
                                         STORE f3511doc TO vdO1
                                         STORE f3511pag TO vtOt
                                         SELECT peNd_vtas
                                         SEEK vtD1+vsR1+vdO1
                                         IF  .NOT. EOF()
                                              STORE f3500nom TO vnOm
                                         ELSE
                                              STORE "N/Defin" TO vnOm
                                         ENDIF
                                         SELECT teMporal
                                         SEEK vaNo+vmEs+vdIa+"1"+vtD1+vsR1+vdO1
                                         IF EOF()
                                              APPEND BLANK
                                              REPLACE ftM1ttt WITH "1"
                                              REPLACE ftM1ano WITH vaNo
                                              REPLACE ftM1mes WITH vmEs
                                              REPLACE ftM1dia WITH vdIa
                                              REPLACE ftM1tdo WITH vtD1
                                              REPLACE ftM1ser WITH vsR1
                                              REPLACE ftM1num WITH vdO1
                                              REPLACE ftM1caj WITH vcAj
                                              REPLACE ftM1tpo WITH vtPo
                                              REPLACE ftM1tip WITH vtIp
                                              REPLACE ftM1nti WITH vnTi
                                              REPLACE ftM1tca WITH vtCa
                                              REPLACE ftM1mon WITH vmOn
                                              REPLACE ftM1tot WITH vtOt
                                              REPLACE ftM1glo WITH vgLo
                                              REPLACE ftM1nom WITH vnOm
                                              REPLACE ftM1est WITH veSt
                                              REPLACE ftM1usu WITH vuSu
                                              REPLACE ftM1dat WITH vdAt
                                              REPLACE ftM1tim WITH vtIm
                                         ELSE
                                              REPLACE ftM1tot WITH ftM1tot+vtOt
                                         ENDIF
                                         DO CASE
                                              CASE ftM1mon=1
                                                   STORE viN1+vtOt TO viN1
                                              CASE ftM1mon=2
                                                   STORE viN2+vtOt TO viN2
                                         ENDCASE
                                         SELECT deT_ing_caja
                                         SKIP
                                    ENDDO
                               ENDIF
                               SELECT caB_ing_caja
                          ENDIF
                          SKIP
                     ENDDO
                     IF mkEy=k_Esc
                          WAIT CLEAR
                          SET ESCAPE OFF
                          ON ESCAPE
                          EXIT
                     ENDIF
                     IF mkEy=99
                          WAIT CLEAR
                          SET ESCAPE OFF
                          ON ESCAPE
                          LOOP
                     ENDIF
                     SELECT caB_sal_caja
                     GOTO TOP
                     SET NEAR ON
                     SEEK daNo+dmEs
                     SET NEAR OFF
                     DO WHILE  .NOT. EOF() .AND. f3520ano+f3520mes<=haNo+hmEs
                          IF mkEy=k_Esc
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          IF f3520est="9" .OR. f3520tpo=4 .OR. f3520tpo=6  ;
                             .OR. (wnIv$"34" .AND. f3520caj<>vcAj) .OR.  ;
                             (wnIv$"13" .AND. f3520tpo=3)
                               SKIP
                               LOOP
                          ENDIF
                          IF f3520ano+f3520mes+f3520dia>=daNo+dmEs+ddIa  ;
                             .AND. f3520ano+f3520mes+f3520dia<=haNo+hmEs+hdIa
                               STORE f3520ano TO vaNo
                               STORE f3520mes TO vmEs
                               STORE f3520dia TO vdIa
                               STORE f3520ser TO vsEr
                               STORE f3520num TO vnUm
                               STORE f3520caj TO vcAj
                               STORE f3520tpo TO vtPo
                               STORE f3520tip TO vtIp
                               STORE f3520nti TO vnTi
                               STORE f3520tca TO vtCa
                               STORE f3520mon TO vmOn
                               STORE f3520tot TO vtOt
                               STORE f3520glo TO vgLo
                               STORE f3520ncc TO vnOm
                               STORE f3520est TO veSt
                               STORE f3520usu TO vuSu
                               STORE f3520dat TO vdAt
                               STORE f3520tim TO vtIm
                               WAIT WINDOW NOCLEAR NOWAIT  ;
                                    "L E Y E N D O "+vaNo+"-"+vmEs+"-"+ ;
                                    vnUm+"..."+CHR(13)+CHR(13)+ ;
                                    "Presionar ESC para Salir..."
                               SELECT teMporal
                               SEEK vaNo+vmEs+vdIa+"2"+"VS"+vsEr+vnUm
                               IF EOF()
                                    APPEND BLANK
                                    REPLACE ftM1ttt WITH "2"
                                    REPLACE ftM1ano WITH vaNo
                                    REPLACE ftM1mes WITH vmEs
                                    REPLACE ftM1dia WITH vdIa
                                    REPLACE ftM1tdo WITH "VS"
                                    REPLACE ftM1ser WITH vsEr
                                    REPLACE ftM1num WITH vnUm
                                    REPLACE ftM1caj WITH vcAj
                                    REPLACE ftM1tpo WITH vtPo
                                    REPLACE ftM1tip WITH vtIp
                                    REPLACE ftM1nti WITH vnTi
                                    REPLACE ftM1tca WITH vtCa
                                    REPLACE ftM1mon WITH vmOn
                                    REPLACE ftM1tot WITH vtOt
                                    REPLACE ftM1glo WITH vgLo
                                    REPLACE ftM1nom WITH vnOm
                                    REPLACE ftM1est WITH veSt
                                    REPLACE ftM1usu WITH vuSu
                                    REPLACE ftM1dat WITH vdAt
                                    REPLACE ftM1tim WITH vtIm
                               ELSE
                                    REPLACE ftM1tot WITH ftM1tot+vtOt
                               ENDIF
                               DO CASE
                                    CASE ftM1mon=1
                                         STORE vsA1+ftM1tot TO vsA1
                                    CASE ftM1mon=2
                                         STORE vsA2+ftM1tot TO vsA2
                               ENDCASE
                               SELECT caB_sal_caja
                          ENDIF
                          SKIP
                     ENDDO
                     WAIT CLEAR
                     SET ESCAPE OFF
                     ON ESCAPE
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados entre esas fechas..."  ;
                           TO mmSj
                ELSE
                     STORE dfEm TO cdFe
                     STORE hfEm TO chFe
                     DO coLsc6
                     @fFIL+1.3,mCO0+116.0 Say vIN1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
                     @fFIL+1.3,mCO0+142.4 Say vSA1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
                     @fFIL+1.3,mCO0+170.8 Say vIN1-vSA1 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
                     @fFIL+2.3,mCO0+116.0 Say vIN2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
                     @fFIL+2.3,mCO0+142.4 Say vSA2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
                     @fFIL+2.3,mCO0+170.8 Say vIN2-vSA2 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
                     DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO pcC3550b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SET READBORDER ON
                     DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SET COLOR TO RGB(0,0,0,224,226,209)
                     @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      @iFIL-4,mCO0+09 Get dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      @iFIL-4,mCO0+30 Get hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Lin_3550a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+013.3 TO pfIn, mcO0+013.3
 @ piNi, mcO0+018.5 TO pfIn, mcO0+018.5
 @ piNi, mcO0+029.7 TO pfIn, mcO0+029.7
 @ piNi, mcO0+071.6 TO pfIn, mcO0+071.6
 @ piNi, mcO0+114.5 TO pfIn, mcO0+114.5
 @ piNi, mcO0+158.0 TO pfIn, mcO0+158.0
 @ piNi, mcO0+164.0 TO pfIn, mcO0+164.0
 @ piNi, mcO0+179.0 TO pfIn, mcO0+179.0
ENDPROC
*
PROCEDURE P00_3550a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 39 TO muFi
 STORE 194.2 TO muCo
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mcO0+0.2 TO icLn
 STORE mcO0+193.9 TO ucLn
 DO CASE
      CASE wnIv="1"
           DO tiT_0000a WITH "Consulta de Caja"
      CASE wnIv="2"
           DO tiT_0000a WITH "Consulta de Caja, Cobranzas y Pagos General"
      CASE wnIv="3"
           DO tiT_0000a WITH "Consulta de Caja Chica No."+STR(vcAj, 2, 0)
      CASE wnIv="4"
           DO tiT_0000a WITH  ;
              "Consulta de Caja Chica, Cobranzas y Pagos No."+STR(vcAj, 2, 0)
 ENDCASE
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, icLn-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @iFIL-4,mCO0+01 Say "Del:" Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+25 Say "al:"  Font "&mLetRom",13 Style "BT"
 DO liN_3550a WITH ifIl-0.2, ffIl+1.1
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 @ ifIl-1.3, mcO0+013.3 TO ifIl-0.2, mcO0+013.3
 @ ifIl-1.3, mcO0+029.7 TO ifIl-0.2, mcO0+029.7
 @ ifIl-1.3, mcO0+071.6 TO ifIl-0.2, mcO0+071.6
 @ ifIl-1.3, mcO0+114.5 TO ifIl-0.2, mcO0+114.5
 @ ifIl-1.3, mcO0+158.0 TO ifIl-0.2, mcO0+158.0
 @ ifIl-1.3, mcO0+164.0 TO ifIl-0.2, mcO0+164.0
 @ ifIl-1.3, mcO0+179.0 TO ifIl-0.2, mcO0+179.0
 @ ffIl+1.1, mcO0+110.9 TO ffIl+3.5, mcO0+137.6 PATTERN 1 COLOR SCHEME 6
 @ ffIl+1.1, mcO0+137.5 TO ffIl+3.5, mcO0+164.2 PATTERN 1 COLOR SCHEME 6
 @ ffIl+1.1, mcO0+164.1 TO ffIl+3.5, mcO0+192.4 PATTERN 1 COLOR SCHEME 6
 DO coLbln
 @iFIL-1.2,mCO0+000.0 Say "Fecha"        Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+013.7 Say "Voucher"      Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+030.1 Say "Nombre"       Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+072.2 Say "Glosa"        Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+115.0 Say "T.Movimiento" Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+159.2 Say "Mn"           Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+168.2 Say "Ingresos"     Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+184.0 Say "Egresos"      Font "&mLetAri",9 Style "NT"
 DO coLbln
 @iFIL-4,mCO0+09 Get dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 @iFIL-4,mCO0+30 Get hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 READ TIMEOUT 0.01
 DO coLsc6
 @fFIL+1.3,mCO0+105.6 Say "S/."     Font "&mLetAri",9 Style "BT"
 @fFIL+2.3,mCO0+105.6 Say "US$"     Font "&mLetAri",9 Style "BT"
 @fFIL+1.3,mCO0+111.6 Say "Ing"     Font "&mLetAri",9 Style "BT"
 @fFIL+1.3,mCO0+138.8 Say "Egr"     Font "&mLetAri",9 Style "BT"
 @fFIL+1.3,mCO0+165.5 Say "Sld"     Font "&mLetAri",8 Style "BT" Color 1
 @fFIL+1.3,mCO0+116.0 Say vIN1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+1.3,mCO0+142.4 Say vSA1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+1.3,mCO0+170.8 Say vIN1-vSA1 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+2.3,mCO0+116.0 Say vIN2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+2.3,mCO0+142.4 Say vSA2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+2.3,mCO0+170.8 Say vIN2-vSA2 Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.9
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE Res_3550a
 DO p00_3550a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(inUm))<>0
      SELECT teMporal
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3550b IN PCC3550B WITH "v", "c"
      DO seE_3550b IN PCC3550B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1tdo+ftM1ser+ftM1num= ;
              vaNo+vmEs+vdIa+vtTt+vtDo+vsEr+vnUm
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3550b IN PCC3550B WITH "v", "i"
           DO muE_3550b IN PCC3550B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3550b IN PCC3550B WITH "i"
      DO paN_3550b IN PCC3550B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_3550b IN PCC3550B WITH "c", "v"
      DO seE_3550b IN PCC3550B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Hl1_3550a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra todos los Vouchers que conforman la Caja Chica;"
 @ pfIl+01, 02 SAY  ;
   "estos no incluyen las cancelaciones de Ventas ni de Compras y Gastos."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 18 SAY ":" STYLE "BT"
 @ pfIl+06, 18 SAY ":" STYLE "BT"
 @ pfIl+07, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+09, 02 SAY "CTRL ->," STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 20 SAY "Regresar al Menú Principal"
 @ pfIl+06, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 20 SAY "Ayuda del Programa"
 @ pfIl+08, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+09, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vfIl, ifIl, ufIl, ffIl, cfIl, vaNo, iaNo, uaNo, caNo, daNo, haNo,  ;
         vmEs, imEs
 RELEASE umEs, cmEs, dmEs, hmEs, vdIa, idIa, udIa, cdIa, ddIa, hdIa, vtTt,  ;
         itTt, utTt
 RELEASE ctTt, vtDo, itDo, utDo, ctDo, vsEr, isEr, usEr, csEr, vnUm, inUm,  ;
         unUm, cnUm
 RELEASE dfEm, hfEm, cdFe, chFe, viN1, viN2, vsA1, vsA2, vcAj, vtPo, vtIp,  ;
         vnTi, vtCa
 RELEASE vmOn, vtOt, vgLo, vnOm, veSt, vuSu, vdAt, vtIm, icLn, ucLn, vlIn,  ;
         vpAg, vxLs
 RELEASE vsIg
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
PROCEDURE Del_File1
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 DO deL_file2 WITH "1", "S"
 RELEASE ntM1
ENDPROC
*
