 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DIMENSION afIl[24, 4]
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
 afIl[x, 1] = "FTM1TT0"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
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
 afIl[x, 1] = "FTM1TO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CCO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NCC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1RCB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CHE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SLD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
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
 INDEX ON ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1tt0+UPPER(ALLTRIM(ftM1che))+ ;
       "*"+ftM1ser+ftM1num TAG ftM1num
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[10, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2ING"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SAL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SLD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2IN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SL1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE "TM01"+ntM2+meXt TO mdBf
 DO WHILE .T.
      ntM2 = STRTRAN(STR(VAL(ntM2)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM2+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM2="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM2ttt+STR(ftM2tpo, 1, 0)+ftM2tip TAG ftM2tip
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3530", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3530BAN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3531NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3540", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3540BAN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3541", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3541NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3210", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras_Prv
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3210LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9312", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9312BAN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "9313", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cuentas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9313CTA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
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
 SELECT 10
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vtB1, vtB2, vtB3, vfB1, vfB2, vfB3, vcB1, vcB2, vcB3, vlIn, vpAg,  ;
        vfIl, ifIl
 PUBLIC ufIl, ffIl, cfIl, vaNo, iaNo, uaNo, caNo, daNo, haNo, vmEs, imEs,  ;
        umEs, cmEs
 PUBLIC dmEs, hmEs, vdIa, idIa, udIa, cdIa, ddIa, hdIa, vtTt, itTt, utTt,  ;
        ctTt, vsEr
 PUBLIC isEr, usEr, csEr, vnUm, inUm, unUm, cnUm, vcHe, icHe, ucHe, ccHe,  ;
        vtT0, itT0
 PUBLIC utT0, ctT0, vtPo, ctPo, vtPp, vtIp, ctIp, vtOt, vnTi, vtCa, vmOn,  ;
        vgLo, veSt
 PUBLIC vuSu, vdAt, vtIm, vbAn, cbAn, vnBa, vcTa, ccTa, vnCt, vmNn, vcCo,  ;
        vnCc, vsIg
 PUBLIC vsR1, vdOc, vnLe, dfEm, hfEm, voPc, icLn, ucLn, vcLn, vsW0, vsLd
 PUBLIC vpAn_11
 STORE SPACE(01) TO vtTt, itTt, utTt, vnLe, vtT0, itT0, utT0
 STORE SPACE(03) TO vsEr, isEr, usEr
 STORE SPACE(07) TO vnUm, inUm, unUm
 STORE SPACE(04) TO vaNo, iaNo, uaNo
 STORE SPACE(20) TO vcHe, icHe, ucHe
 STORE SPACE(02) TO vmEs, imEs, umEs, vdIa, idIa, udIa, cbAn, ccTa
 STORE "**" TO ctIp
 STORE 00 TO vtOt
 STORE 01 TO vsW0
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE DATE() TO hfEm
 STORE CTOD("01/"+SUBSTR(DTOC(hfEm), 4, 7)) TO dfEm
 SELECT cuEntas
 GOTO TOP
 STORE f9313ban TO vbAn
 STORE f9313cta TO vcTa
 STORE f9313des TO vnCt
 STORE f9313mon TO vmNn
 SELECT baNcos
 SEEK vbAn
 STORE f9312nba TO vnBa
 SET READBORDER ON
 DO p00_3558a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SELECT teMporal
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3558a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3558a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3558a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3558a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F2
                DO baN_3558a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                DO ctA_3558a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                IF vbAn<>cbAn .OR. vcTa<>ccTa
                     SELECT teMporal
                     ZAP
                     REINDEX
                     SELECT teMporal_2
                     ZAP
                     REINDEX
                     APPEND BLANK
                     REPLACE ftM2ttt WITH "1"
                     REPLACE ftM2tpo WITH 1
                     REPLACE ftM2tip WITH "**"
                     REPLACE ftM2nti WITH "*Todos*"
                     REPLACE ftM2ing WITH 0
                     REPLACE ftM2sal WITH 0
                     REPLACE ftM2sld WITH 0
                     REPLACE ftM2in1 WITH 0
                     REPLACE ftM2sa1 WITH 0
                     REPLACE ftM2sl1 WITH 0
                     SELECT caB_ing_bancos
                     GOTO TOP
                     SET NEAR ON
                     SEEK vbAn+vcTa
                     SET NEAR OFF
                     SET ESCAPE ON
                     ON ESCAPE STORE K_ESC TO MKEY
                     DO WHILE  .NOT. EOF() .AND. f3530ban+f3530cta=vbAn+vcTa
                          IF mkEy=k_Esc
                               SELECT teMporal
                               ZAP
                               REINDEX
                               SELECT teMporal_2
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          IF f3530est="9"
                               SKIP
                               LOOP
                          ENDIF
                          WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+ ;
                               f3530ano+"-"+f3530mes+"-"+f3530num+"..."+ ;
                               CHR(13)+CHR(13)+"Presionar ESC para Salir..."
                          STORE f3530ano TO vaNo
                          STORE f3530mes TO vmEs
                          STORE f3530dia TO vdIa
                          STORE f3530ser TO vsEr
                          STORE f3530num TO vnUm
                          STORE f3530tpo TO vtPo
                          STORE f3530tpp TO vtPp
                          STORE f3530tip TO vtIp
                          STORE f3530nti TO vnTi
                          STORE f3530tca TO vtCa
                          STORE f3530mon TO vmOn
                          STORE f3530tot TO vtOt
                          STORE f3530glo TO vgLo
                          STORE f3530che TO vcHe
                          STORE f3530est TO veSt
                          STORE f3530usu TO vuSu
                          STORE f3530dat TO vdAt
                          STORE f3530tim TO vtIm
                          STORE "0" TO vtT0
                          STORE "" TO vnLe, vcCo, vnCc
                          SELECT teMporal_2
                          SEEK "1"+STR(vtPo, 1, 0)+vtIp
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2ttt WITH "1"
                               REPLACE ftM2tpo WITH vtPo
                               REPLACE ftM2tip WITH vtIp
                               REPLACE ftM2nti WITH vnTi
                               REPLACE ftM2ing WITH 0
                               REPLACE ftM2sal WITH 0
                               REPLACE ftM2sld WITH 0
                               REPLACE ftM2in1 WITH 0
                               REPLACE ftM2sa1 WITH 0
                               REPLACE ftM2sl1 WITH 0
                          ENDIF
                          DO CASE
                               CASE (vtPo=1 .AND. vtPp=2) .OR. vtPo=2  ;
                                    .OR. vtPo=3
                                    SELECT teMporal
                                    SEEK vaNo+vmEs+vdIa+"1"+vtT0+ ;
                                     UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm
                                    IF EOF()
                                         APPEND BLANK
                                         REPLACE ftM1ano WITH vaNo
                                         REPLACE ftM1mes WITH vmEs
                                         REPLACE ftM1dia WITH vdIa
                                         REPLACE ftM1ttt WITH "1"
                                         REPLACE ftM1tt0 WITH vtT0
                                         REPLACE ftM1che WITH vcHe
                                         REPLACE ftM1ser WITH vsEr
                                         REPLACE ftM1num WITH vnUm
                                         REPLACE ftM1tot WITH 0
                                         REPLACE ftM1to1 WITH 0
                                         DO grA_3558a
                                    ENDIF
                                    IF vtPo=1 .AND. vtPp=2
                                         REPLACE ftM1to1 WITH ftM1to1+vtOt
                                    ELSE
                                         REPLACE ftM1tot WITH ftM1tot+vtOt
                                    ENDIF
                                    IF ftM1mon=vmNn
                                         SELECT teMporal_2
                                         IF vtPo=1 .AND. vtPp=2
                                              REPLACE ftM2in1 WITH ftM2in1+vtOt
                                         ELSE
                                              REPLACE ftM2ing WITH ftM2ing+vtOt
                                         ENDIF
                                    ENDIF
                               CASE vtPo=1 .OR. vtPo=4
                                    SELECT deT_ing_bancos
                                    GOTO TOP
                                    SEEK vaNo+vmEs+vsEr+vnUm
                                    DO WHILE  .NOT. EOF() .AND. f3531ano+ ;
                                       f3531mes+f3531ser+f3531num=vaNo+ ;
                                       vmEs+vsEr+vnUm
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         STORE f3531sr1 TO vsR1
                                         STORE f3531doc TO vdOc
                                         STORE f3531pag TO vtOt
                                         IF f3531tdo="LE"
                                              SELECT leTras_cli
                                              SEEK vsR1+vdOc
                                              IF EOF()
                                                   STORE "N" TO vtT0
                                                   STORE "Antigua-" TO vnLe
                                              ELSE
                                                   DO CASE
                                                        CASE f3110tip=1
                                                             STORE "N" TO vtT0
                                                             STORE  ;
                                                              "Cartera-"  ;
                                                              TO vnLe
                                                        CASE f3110tip=2
                                                             STORE "C" TO vtT0
                                                             STORE  ;
                                                              "Cobranza-"  ;
                                                              TO vnLe
                                                        CASE f3110tip=3
                                                             STORE "D" TO vtT0
                                                             STORE  ;
                                                              "Descuento-"  ;
                                                              TO vnLe
                                                   ENDCASE
                                              ENDIF
                                         ELSE
                                              STORE "0" TO vtT0
                                              STORE "" TO vnLe
                                         ENDIF
                                         SELECT teMporal
                                         SEEK vaNo+vmEs+vdIa+"1"+vtT0+ ;
                                          UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm
                                         IF EOF()
                                              APPEND BLANK
                                              REPLACE ftM1ano WITH vaNo
                                              REPLACE ftM1mes WITH vmEs
                                              REPLACE ftM1dia WITH vdIa
                                              REPLACE ftM1ttt WITH "1"
                                              REPLACE ftM1tt0 WITH vtT0
                                              REPLACE ftM1che WITH vcHe
                                              REPLACE ftM1ser WITH vsEr
                                              REPLACE ftM1num WITH vnUm
                                              REPLACE ftM1tot WITH 0
                                              REPLACE ftM1to1 WITH 0
                                              DO grA_3558a
                                         ENDIF
                                         IF vtPo=1 .OR. vtT0="D"
                                              REPLACE ftM1to1 WITH ftM1to1+vtOt
                                         ELSE
                                              REPLACE ftM1tot WITH ftM1tot+vtOt
                                         ENDIF
                                         IF ftM1mon=vmNn
                                              SELECT teMporal_2
                                              IF vtPo=1 .OR. vtT0="D"
                                                   REPLACE ftM2in1 WITH  ;
                                                    ftM2in1+vtOt
                                              ELSE
                                                   REPLACE ftM2ing WITH  ;
                                                    ftM2ing+vtOt
                                              ENDIF
                                         ENDIF
                                         SELECT deT_ing_bancos
                                         SKIP
                                    ENDDO
                                    IF mkEy=k_Esc
                                         SELECT teMporal
                                         ZAP
                                         REINDEX
                                         EXIT
                                    ENDIF
                          ENDCASE
                          SELECT caB_ing_bancos
                          SKIP
                     ENDDO
                     IF mkEy=k_Esc
                          SET ESCAPE OFF
                          ON ESCAPE
                          WAIT CLEAR
                          STORE 99 TO mkEy
                          LOOP
                     ENDIF
                     SELECT caB_sal_bancos
                     GOTO TOP
                     SET NEAR ON
                     SEEK vbAn+vcTa
                     SET NEAR OFF
                     DO WHILE  .NOT. EOF() .AND. f3540ban+f3540cta=vbAn+vcTa
                          IF mkEy=k_Esc
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          IF f3540est="9"
                               SKIP
                               LOOP
                          ENDIF
                          WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+ ;
                               f3540ano+"-"+f3540mes+"-"+f3540num+"..."+ ;
                               CHR(13)+CHR(13)+"Presionar ESC para Salir..."
                          STORE f3540ano TO vaNo
                          STORE f3540mes TO vmEs
                          STORE f3540dia TO vdIa
                          STORE f3540ser TO vsEr
                          STORE f3540num TO vnUm
                          STORE f3540tpo TO vtPo
                          STORE f3540tpp TO vtPp
                          STORE f3540tip TO vtIp
                          STORE f3540nti TO vnTi
                          STORE f3540tca TO vtCa
                          STORE f3540mon TO vmOn
                          STORE f3540tot TO vtOt
                          STORE f3540glo TO vgLo
                          STORE f3540che TO vcHe
                          STORE f3540cco TO vcCo
                          STORE f3540ncc TO vnCc
                          STORE f3540est TO veSt
                          STORE f3540usu TO vuSu
                          STORE f3540dat TO vdAt
                          STORE f3540tim TO vtIm
                          STORE "0" TO vtT0
                          STORE "" TO vnLe
                          SELECT teMporal_2
                          SEEK "2"+STR(vtPo, 1, 0)+vtIp
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2ttt WITH "2"
                               REPLACE ftM2tpo WITH vtPo
                               REPLACE ftM2tip WITH vtIp
                               REPLACE ftM2nti WITH vnTi
                               REPLACE ftM2ing WITH 0
                               REPLACE ftM2sal WITH 0
                               REPLACE ftM2sld WITH 0
                               REPLACE ftM2in1 WITH 0
                               REPLACE ftM2sa1 WITH 0
                               REPLACE ftM2sl1 WITH 0
                          ENDIF
                          DO CASE
                               CASE (vtPo=1 .AND. vtPp=2) .OR. vtPo=2  ;
                                    .OR. vtPo=3 .OR. vtPo=5
                                    SELECT teMporal
                                    SEEK vaNo+vmEs+vdIa+"2"+vtT0+ ;
                                     UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm
                                    IF EOF()
                                         APPEND BLANK
                                         REPLACE ftM1ano WITH vaNo
                                         REPLACE ftM1mes WITH vmEs
                                         REPLACE ftM1dia WITH vdIa
                                         REPLACE ftM1ttt WITH "2"
                                         REPLACE ftM1tt0 WITH vtT0
                                         REPLACE ftM1che WITH vcHe
                                         REPLACE ftM1ser WITH vsEr
                                         REPLACE ftM1num WITH vnUm
                                         REPLACE ftM1tot WITH 0
                                         REPLACE ftM1to1 WITH 0
                                         DO grA_3558a
                                    ENDIF
                                    IF vtPo=1 .AND. vtPp=2
                                         REPLACE ftM1to1 WITH ftM1to1+vtOt
                                    ELSE
                                         REPLACE ftM1tot WITH ftM1tot+vtOt
                                    ENDIF
                                    IF ftM1mon=vmNn
                                         SELECT teMporal_2
                                         IF vtPo=1 .AND. vtPp=2
                                              REPLACE ftM2sa1 WITH ftM2sa1+vtOt
                                         ELSE
                                              REPLACE ftM2sal WITH ftM2sal+vtOt
                                         ENDIF
                                    ENDIF
                               CASE vtPo=1 .OR. vtPo=4
                                    SELECT deT_sal_bancos
                                    GOTO TOP
                                    SEEK vaNo+vmEs+vsEr+vnUm
                                    DO WHILE  .NOT. EOF() .AND. f3541ano+ ;
                                       f3541mes+f3541ser+f3541num=vaNo+ ;
                                       vmEs+vsEr+vnUm
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         STORE f3541sr1 TO vsR1
                                         STORE f3541doc TO vdOc
                                         STORE f3541pag TO vtOt
                                         IF f3541tdo="LP"
                                              SELECT leTras_prv
                                              SEEK vsR1+vdOc
                                              IF EOF()
                                                   STORE "N" TO vtT0
                                                   STORE "Antigua-" TO vnLe
                                              ELSE
                                                   DO CASE
                                                        CASE f3210tip=1
                                                             STORE "N" TO vtT0
                                                             STORE  ;
                                                              "Cartera-"  ;
                                                              TO vnLe
                                                        CASE f3210tip=2
                                                             STORE "C" TO vtT0
                                                             STORE  ;
                                                              "Cobranza-"  ;
                                                              TO vnLe
                                                        CASE f3210tip=3
                                                             STORE "D" TO vtT0
                                                             STORE  ;
                                                              "Descuento-"  ;
                                                              TO vnLe
                                                   ENDCASE
                                              ENDIF
                                         ELSE
                                              STORE "0" TO vtT0
                                              STORE "" TO vnLe
                                         ENDIF
                                         SELECT teMporal
                                         SEEK vaNo+vmEs+vdIa+"2"+vtT0+ ;
                                          UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm
                                         IF EOF()
                                              APPEND BLANK
                                              REPLACE ftM1ano WITH vaNo
                                              REPLACE ftM1mes WITH vmEs
                                              REPLACE ftM1dia WITH vdIa
                                              REPLACE ftM1ttt WITH "2"
                                              REPLACE ftM1tt0 WITH vtT0
                                              REPLACE ftM1che WITH vcHe
                                              REPLACE ftM1ser WITH vsEr
                                              REPLACE ftM1num WITH vnUm
                                              REPLACE ftM1tot WITH 0
                                              REPLACE ftM1to1 WITH 0
                                              DO grA_3558a
                                         ENDIF
                                         IF vtPo=1 .OR. vtT0="D"
                                              REPLACE ftM1to1 WITH ftM1to1+vtOt
                                         ELSE
                                              REPLACE ftM1tot WITH ftM1tot+vtOt
                                         ENDIF
                                         IF ftM1mon=vmNn
                                              SELECT teMporal_2
                                              IF vtPo=1 .OR. vtT0="D"
                                                   REPLACE ftM2sa1 WITH  ;
                                                    ftM2sa1+vtOt
                                              ELSE
                                                   REPLACE ftM2sal WITH  ;
                                                    ftM2sal+vtOt
                                              ENDIF
                                         ENDIF
                                         SELECT deT_sal_bancos
                                         SKIP
                                    ENDDO
                                    IF mkEy=k_Esc
                                         SELECT teMporal
                                         ZAP
                                         REINDEX
                                         EXIT
                                    ENDIF
                          ENDCASE
                          SELECT caB_sal_bancos
                          SKIP
                     ENDDO
                     SET ESCAPE OFF
                     ON ESCAPE
                     WAIT CLEAR
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          LOOP
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados entre esas fechas..."  ;
                           TO mmSj
                ELSE
                     STORE vbAn TO cbAn
                     STORE vcTa TO ccTa
                     STORE 0 TO vsLd
                     DO WHILE  .NOT. EOF()
                          DO CASE
                               CASE ftM1ttt="1" .AND. (ftM1tt0="D" .OR.  ;
                                    ftM1tpo=1)
                               CASE ftM1ttt="2" .AND. (ftM1tt0="D" .OR.  ;
                                    ftM1tpo=1)
                               CASE ftM1ttt="1" .AND. ftM1mon=vmNn
                                    STORE vsLd+ftM1tot TO vsLd
                               CASE ftM1ttt="2" .AND. ftM1mon=vmNn
                                    STORE vsLd-ftM1tot TO vsLd
                          ENDCASE
                          REPLACE ftM1sld WITH vsLd
                          SKIP
                     ENDDO
                     SELECT teMporal_2
                     SUM ftM2ing TO vsLd FOR ftM2ttt="1" .AND. ftM2tip<>"**"
                     SEEK "11**"
                     REPLACE ftM2ing WITH vsLd
                     SUM ftM2sal TO vsLd FOR ftM2ttt="2" .AND. ftM2tip<>"**"
                     SEEK "11**"
                     REPLACE ftM2sal WITH vsLd
                     SUM ftM2in1 TO vsLd FOR ftM2ttt="1" .AND. ftM2tip<>"**"
                     SEEK "11**"
                     REPLACE ftM2in1 WITH vsLd
                     SUM ftM2sa1 TO vsLd FOR ftM2ttt="2" .AND. ftM2tip<>"**"
                     SEEK "11**"
                     REPLACE ftM2sa1 WITH vsLd
                     REPLACE ftM2sld WITH ftM2ing-ftM2sal
                     REPLACE ftM2sl1 WITH ftM2in1-ftM2sa1
                     DO toT_3558a
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
                     SET READBORDER OFF
                     DO pcC3558b
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
      @iFIL-4,mCO0+102 Get dFEM Font "&mLetAri",12 Style "NQ" Size 1,11.5 Color ,&mColBlN
      @iFIL-4,mCO0+138 Get hFEM Font "&mLetAri",12 Style "NQ" Size 1,11.5 Color ,&mColBlN
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Gra_3558a
 REPLACE ftM1tpo WITH vtPo
 REPLACE ftM1tip WITH vtIp
 REPLACE ftM1nti WITH vnLe+vnTi
 REPLACE ftM1tca WITH vtCa
 REPLACE ftM1mon WITH vmOn
 REPLACE ftM1glo WITH vgLo
 REPLACE ftM1cco WITH vcCo
 REPLACE ftM1ncc WITH vnCc
 REPLACE ftM1est WITH veSt
 REPLACE ftM1usu WITH vuSu
 REPLACE ftM1dat WITH vdAt
 REPLACE ftM1tim WITH vtIm
ENDPROC
*
PROCEDURE Ban_3558a
 = INKEY(0.01)
 SELECT baNcos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Bancos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE 01 TO meRr
 SET ORDER TO F9312NBA
 STORE 00 TO meRr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9312ban<>vbAn
      DO coLbln
      STORE f9312ban TO vbAn
      STORE f9312nba TO vnBa
      STORE SPACE(02) TO vcTa
      STORE SPACE(30) TO vnCt
      @iFIL-3.9,mCO0+12 Say vNBA Font "&mLetRom",10 Style "NQ" Size 1,23 Pict "@S25"
      @iFIL-3.9,mCO0+48 Say vNCT Font "&mLetRom",10 Style "NQ" Size 1,23 Pict "@S25"
 ENDIF
 STORE 99 TO mkEy
 STORE 01 TO meRr
 SET ORDER TO F9312BAN
 STORE 00 TO meRr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cta_3558a
 = INKEY(0.01)
 SELECT cuEntas
 SET FILTER TO f9313ban=vbAn
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Cuentas de Bancos registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9313ban+f9313cta<>vbAn+vcTa
      DO coLbln
      STORE f9313cta TO vcTa
      STORE f9313des TO vnCt
      STORE f9313mon TO vmNn
      IF vmNn=0
           STORE 1 TO vmNn
      ENDIF
      @iFIL-3.9,mCO0+48 Say vNCT Font "&mLetRom",10 Style "NQ" Size 1,23 Pict "@S25"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Li1_3558a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+018.5 TO pfIn, mcO0+018.5
ENDPROC
*
PROCEDURE Lin_3558a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+013.2 TO pfIn, mcO0+013.2
 @ piNi, mcO0+029.7 TO pfIn, mcO0+029.7
 @ piNi, mcO0+062.6 TO pfIn, mcO0+062.6
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+105.3 TO pfIn, mcO0+105.3
           @ piNi, mcO0+149.0 TO pfIn, mcO0+149.0
           @ piNi, mcO0+155.0 TO pfIn, mcO0+155.0
           @ piNi, mcO0+170.0 TO pfIn, mcO0+170.0
           @ piNi, mcO0+185.0 TO pfIn, mcO0+185.0
      CASE mrEs="4"
           @ piNi, mcO0+145.4 TO pfIn, mcO0+145.4
           @ piNi, mcO0+189.0 TO pfIn, mcO0+189.0
           @ piNi, mcO0+195.0 TO pfIn, mcO0+195.0
           @ piNi, mcO0+214.0 TO pfIn, mcO0+214.0
           @ piNi, mcO0+233.0 TO pfIn, mcO0+233.0
      OTHERWISE
           @ piNi, mcO0+155.4 TO pfIn, mcO0+155.4
           @ piNi, mcO0+197.0 TO pfIn, mcO0+197.0
           @ piNi, mcO0+203.0 TO pfIn, mcO0+203.0
           @ piNi, mcO0+225.0 TO pfIn, mcO0+225.0
           @ piNi, mcO0+247.0 TO pfIn, mcO0+247.0
 ENDCASE
ENDPROC
*
PROCEDURE P00_3558a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 DO maRcos
 STORE mfI0+2 TO mfI0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mcO0+0.4 TO icLn
 STORE mcO0+muCo-0.2 TO ucLn
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE ifIl-3.9 TO vfB1, vfB2
 STORE ifIl-1.4 TO vfB3
 STORE mcO0+35.4 TO vcB1
 STORE mcO0+71.4 TO vcB2
 STORE mcO0+057.4 TO vcB3
 STORE mcO0+094.6 TO vcLn
 Define Popup vTB1 from iFIL-2.6,mCO0+11.7 to fFIL+4,mCO0+65  Font "&mLetCou",11 Style "NQ" Scroll Color Scheme 3 Prompt Field Substr(F9312NBA,1,30)+": "+F9312BAN Footer "BANCOS"
 Define Popup vTB2 from iFIL-2.6,mCO0+47.7 to fFIL+4,mCO0+101 Font "&mLetCou",11 Style "NQ" Scroll Color Scheme 3 Prompt Field Substr(F9313DES,1,30)+": "+F9313CTA Footer "CUENTAS"
 Define Popup vTB3 from iFIL-0.6,mCO0+47.7 to fFIL+4,mCO0+101 Font "&mLetCou",11 Style "NQ" Scroll Color Scheme 3 Prompt Field FTM2NTI Footer "TIPOS DE MOVIMIENTOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 DO tiT_0000a WITH "Consulta de Bancos"
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO prEsiona WITH "1", "OPCIO1", mfI0-3.3, icLn-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "OPCIO1", mfI0-3.3, icLn+85
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @iFIL-4,mCO0+001 Say "Banco:" Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+041 Say "Cta:"   Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+090 Say "Desde:" Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+126 Say "Hasta:" Font "&mLetRom",13 Style "BT"
 DO liN_3558a WITH ifIl-1.3, ffIl+1
 DO li1_3558a WITH ifIl-0.2, ffIl+1
 DO coLblz
 @iFIL-1.2,mCO0+03.6 Say "Fecha"                Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+16.7 Say "Voucher"              Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+31.0 Say "Tipo de Movimiento"   Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE mrEs="3"
           @iFIL-1.2,mCO0+080.2 Say "Glosa"       Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+121.0 Say "#Movimiento" Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+150.8 Say "Mn"          Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+157.7 Say "Ingresos"    Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+173.0 Say "Egresos"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+190.0 Say "Saldo"       Font "&mLetAri",9 Style "BT"
      CASE mrEs="4"
           @iFIL-1.2,mCO0+100.2 Say "Glosa"       Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+161.0 Say "#Movimiento" Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+190.0 Say "Mn"          Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+199.7 Say "Ingresos"    Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+219.0 Say "Egresos"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+239.0 Say "Saldo"       Font "&mLetAri",9 Style "BT"
      OTHERWISE
           @iFIL-1.2,mCO0+100.2 Say "Glosa"       Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+169.0 Say "#Movimiento" Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+198.2 Say "Mn"          Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+210.7 Say "Ingresos"    Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+231.0 Say "Egresos"     Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+255.0 Say "Saldo"       Font "&mLetAri",9 Style "BT"
 ENDCASE
 DO coLbln
 @iFIL-3.9,mCO0+12 Edit vNBA Font "&mLetRom",10 Style "NQ" Size 1,23,30
 @iFIL-3.9,mCO0+48 Edit vNCT Font "&mLetRom",10 Style "NQ" Size 1,23,30
 READ TIMEOUT 0.01
 DO coLsc6
 DO CASE
      CASE vmNn=1
           @fFIL+1.3,mCO0+vCLN+0.6 Say "S/." Font "&mLetAri",9 Style "BT"
      CASE vmNn=2
           @fFIL+1.3,mCO0+vCLN+0.6 Say "US$" Font "&mLetAri",9 Style "BT"
 ENDCASE
 DO coLsc6
 @ ffIl+1.1, vcLn+00.0 TO ffIl+4.5, vcLn+105.6 PATTERN 1
 @ ffIl+1.1, vcLn+36.4 TO ffIl+4.5, vcLn+036.4
 @ ffIl+1.1, vcLn+70.8 TO ffIl+4.5, vcLn+070.8
 @fFIL+1.4,vCLN+00.5 Say "Ingresos: " Font "&mLetRom",12 Style "BQ"
 @fFIL+1.4,vCLN+37.0 Say "Salidas:  " Font "&mLetRom",12 Style "BQ"
 @fFIL+1.4,vCLN+71.4 Say "Saldos:   " Font "&mLetRom",12 Style "BQ"
 DO coLscv
 @fFIL+2.9,vCLN+00.5 Say "Ingresos: " Font "&mLetRom",12 Style "BQ"
 @fFIL+2.9,vCLN+37.0 Say "Salidas:  " Font "&mLetRom",12 Style "BQ"
 @fFIL+2.9,vCLN+71.4 Say "xRendir:  " Font "&mLetRom",12 Style "BQ"
 DO toT_3558a
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tot_3558a
 SELECT teMporal_2
 IF ctIp="**"
      SEEK "11**"
 ELSE
      SEEK ctTt+STR(ctPo, 1, 0)+ctIp
 ENDIF
 DO coLsc6
 @fFIL+1.4,vCLN+13.4 Say FTM2ING         Font "&mLetRom",12 Style "BQ" Pict "999,999,999.99" Size 1,16.1
 @fFIL+1.4,vCLN+47.8 Say FTM2SAL         Font "&mLetRom",12 Style "BQ" Pict "999,999,999.99" Size 1,16.1
 IF ftM2ing-ftM2sal<0
      DO coLscr
 ENDIF
 @fFIL+1.4,vCLN+82.4 Say FTM2ING-FTM2SAL Font "&mLetRom",12 Style "BQ" Pict "999,999,999.99" Size 1,16.1
 DO coLscv
 @fFIL+2.9,vCLN+13.4 Say FTM2IN1         Font "&mLetRom",12 Style "BQ" Pict "999,999,999.99" Size 1,16.1
 @fFIL+2.9,vCLN+47.8 Say FTM2SA1         Font "&mLetRom",12 Style "BQ" Pict "999,999,999.99" Size 1,16.1
 @fFIL+2.9,vCLN+82.4 Say FTM2IN1-FTM2SA1 Font "&mLetRom",12 Style "BQ" Pict "999,999,999.99" Size 1,16.1
ENDPROC
*
PROCEDURE Res_3558a
 DO p00_3558a WITH "1"
 IF mkEy=k_Esc
      EXIT
 ENDIF
 IF LEN(ALLTRIM(inUm))<>0
      SELECT teMporal
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3558b IN PCC3558B WITH "v", "c"
      DO seE_3558b IN PCC3558B WITH "i"
      DO WHILE  .NOT. EOF() .AND. ftM1ano+ftM1mes+ftM1dia<= ;
         SUBSTR(DTOC(hfEm), 7, 4)+SUBSTR(DTOC(hfEm), 4, 2)+ ;
         SUBSTR(DTOC(hfEm), 1, 2) .AND. vfIl<ffIl+1
           IF ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1tt0+ ;
              UPPER(ALLTRIM(ftM1che))+"*"+ftM1ser+ftM1num=vaNo+vmEs+vdIa+ ;
              vtTt+vtT0+UPPER(ALLTRIM(vcHe))+"*"+vsEr+vnUm
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3558b IN PCC3558B WITH "v", "c"
           DO muE_3558b IN PCC3558B WITH "v", "i"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3558b IN PCC3558B WITH "i"
      DO paN_3558b IN PCC3558B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_3558b IN PCC3558B WITH "c", "v"
      DO seE_3558b IN PCC3558B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Clp_3558a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1-0.014 .AND. mfIl<=vfB1+1.2 .AND. mcCc>=vcB1-0.700  ;
           .AND. mcCc<=vcB1+3.7
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2-0.014 .AND. mfIl<=vfB2+1.2 .AND. mcCc>=vcB2-0.700  ;
           .AND. mcCc<=vcB2+3.7
           STORE k_F3 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3558a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "Esta consulta muestra todos los Vouchers que conforman las Cuentas;"
 @ 1.200, 02 SAY  ;
   "estos incluyen las cancelaciones de Ventas y de Compras y Gastos."
 @ 3.200, 02 SAY "Las teclas para movilizarse son:"
 @ 5.200, 18 SAY ":" STYLE "BT"
 @ 6.200, 18 SAY ":" STYLE "BT"
 @ 7.200, 18 SAY ":" STYLE "BT"
 @ 8.200, 18 SAY ":" STYLE "BT"
 @ 5.200, 02 SAY "ESC" STYLE "BT"
 @ 6.200, 02 SAY "F10" STYLE "BT"
 @ 7.200, 02 SAY "F1" STYLE "BT"
 @ 8.200, 02 SAY "ENTER, TAB," STYLE "BT"
 @ 9.200, 02 SAY "CTRL ->," STYLE "BT"
 @ 10.200, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ 5.200, 20 SAY "Regresar al Menú Principal"
 @ 6.200, 20 SAY "Cerrar y regresar a Windows"
 @ 7.200, 20 SAY "Ayuda del Programa"
 @ 8.200, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ 9.200, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vtB1, vtB2, vtB3, vfB1, vfB2, vfB3, vcB1, vcB2, vcB3, vlIn, vpAg,  ;
         vfIl, ifIl
 RELEASE ufIl, ffIl, cfIl, vaNo, iaNo, uaNo, caNo, daNo, haNo, vmEs, imEs,  ;
         umEs, cmEs
 RELEASE dmEs, hmEs, vdIa, idIa, udIa, cdIa, ddIa, hdIa, vtTt, itTt, utTt,  ;
         ctTt, vsEr
 RELEASE isEr, usEr, csEr, vnUm, inUm, unUm, cnUm, vcHe, icHe, ucHe, ccHe,  ;
         vtT0, itT0
 RELEASE utT0, ctT0, vtPo, ctPo, vtPp, vtIp, ctIp, vtOt, vnTi, vtCa, vmOn,  ;
         vgLo, veSt
 RELEASE vuSu, vdAt, vtIm, vbAn, cbAn, vnBa, vcTa, ccTa, vnCt, vmNn, vcCo,  ;
         vnCc, vsIg
 RELEASE vsR1, vdOc, vnLe, dfEm, hfEm, voPc, icLn, ucLn, vcLn, vsW0, vsLd
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
 DO deL_file2 WITH "2", "S"
 RELEASE ntM1, ntM2
ENDPROC
*
