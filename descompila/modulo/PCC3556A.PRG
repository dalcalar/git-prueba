 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DIMENSION afIl[7, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1INT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUM"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
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
 INDEX ON ftM1tit TAG ftM1tit
 INDEX ON UPPER(ftM1nti)+ftM1tit TAG ftM1nti
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2INT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
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
 INDEX ON ftM2tit+ftM2ano+ftM2mes TAG ftM2tit
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
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
 SELECT 2
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
 SET ORDER TO F3510FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
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
 SELECT 4
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
 SET ORDER TO F3530FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
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
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cambio
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
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
 SELECT 10
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Detalle
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2TIT
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vsW0, vlIn, vpAg, vfB1, vcB1, vcO0, vuCo, vfIl, ifIl, ufIl, ffIl, cfIl
 PUBLIC vfFs, ifFs, ufFs, ffFs, cfFs, vtCl, ctCl, vnTc, vtIt, itIt, utIt,  ;
        ctIt, dtIt
 PUBLIC htIt, vnTi, inTi, unTi, cnTi, vaNo, iaNo, uaNo, caNo, vmEs, imEs,  ;
        umEs, cmEs
 PUBLIC vsEr, vnUm, cnUm, cnUv, vmOn, vtCa, vtDo, vsR1, vdOc, vtOt, viNt,  ;
        vaCu, ttOt
 PUBLIC tiNt, taCu, icLn, ucLn, icL1, ucL1
 PUBLIC vpAn_11, vpAn_12
 STORE mmOn TO vmOn
 STORE SPACE(02) TO ctCl
 STORE SPACE(04) TO itIt
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 01 TO vsW0
 STORE 00 TO ttOt, tiNt, taCu
 STORE DATE() TO dfEm, hfEm
 STORE CTOD("  /  /    ") TO cdFe, chFe
 SELECT tiPos
 GOTO TOP
 STORE 99 TO mkEy
 STORE 01 TO meRr
 SET ORDER TO F9110NTI
 STORE 00 TO meRr
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 STORE f9110tip TO vtCl
 STORE f9110nti TO vnTc
 SET READBORDER ON
 DO p00_3556a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3556a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3556a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3556a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3556a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                DO CASE
                     CASE dfEm=CTOD("  /  /    ")
                          STORE "Fecha inicial no puede estar vacía..." TO mmSj
                     CASE hfEm=CTOD("  /  /    ")
                          STORE "Fecha final no puede estar vacia..." TO mmSj
                     CASE dfEm>hfEm
                          STORE "Fecha inicial es mayor que fecha final..."  ;
                                TO mmSj
                     CASE ctCl<>vtCl .OR. cdFe<>dfEm .OR. chFe<>hfEm
                          SET ESCAPE ON
                          ON ESCAPE STORE K_ESC TO MKEY
                          STORE SPACE(04) TO itIt
                          STORE 00 TO ttOt, tiNt, taCu
                          STORE 99 TO mkEy
                          SELECT tmP_detalle
                          ZAP
                          REINDEX
                          SELECT teMporal
                          ZAP
                          REINDEX
                          SET ORDER TO FTM1TIT
                          SELECT caB_ing_caja
                          GOTO TOP
                          SET NEAR ON
                          SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm),  ;
                               4, 2)+SUBSTR(DTOC(dfEm), 1, 2)
                          SET NEAR OFF
                          DO WHILE  .NOT. EOF() .AND. f3510ano+f3510mes+ ;
                             f3510dia<=SUBSTR(DTOC(hfEm), 7, 4)+ ;
                             SUBSTR(DTOC(hfEm), 4, 2)+SUBSTR(DTOC(hfEm), 1, 2)
                               IF mkEy=k_Esc
                                    SELECT teMporal
                                    ZAP
                                    REINDEX
                                    EXIT
                               ENDIF
                               WAIT WINDOW NOCLEAR NOWAIT  ;
                                    "L E Y E N D O CAJA "+f3510ano+"-"+ ;
                                    f3510mes+"-V1"+"-"+f3510num+"..."+ ;
                                    CHR(13)+CHR(13)+ ;
                                    "Presionar ESC para Salir..."
                               IF f3510tpo=1 .OR. f3510tpo=4
                                    SKIP
                                    LOOP
                               ENDIF
                               STORE f3510ano TO vaNo
                               STORE f3510mes TO vmEs
                               STORE f3510ser TO vsEr
                               STORE f3510num TO vnUm
                               STORE f3510mon TO vmOn
                               STORE f3510tca TO vtCa
                               SELECT deT_ing_caja
                               SEEK vaNo+vmEs+vsEr+vnUm
                               DO WHILE  .NOT. EOF() .AND. f3511ano+ ;
                                  f3511mes+f3511ser+f3511num=vaNo+vmEs+ ;
                                  vsEr+vnUm
                                    IF mkEy=k_Esc
                                         SELECT teMporal
                                         ZAP
                                         REINDEX
                                         EXIT
                                    ENDIF
                                    STORE f3511tdo TO vtDo
                                    STORE f3511sr1 TO vsR1
                                    STORE f3511doc TO vdOc
                                    STORE f3511pag TO vaCu
                                    SELECT peNd_vtas
                                    SEEK vtDo+vsR1+vdOc
                                    IF  .NOT. EOF() .AND. f3500tcl=vtCl
                                         STORE f3500tit TO vtIt
                                         STORE f3500nti TO vnTi
                                         STORE f3500tot TO vtOt
                                         STORE f3500int TO viNt
                                         SELECT teMporal
                                         SEEK vtIt
                                         IF EOF()
                                              APPEND BLANK
                                              REPLACE ftM1tit WITH vtIt
                                              REPLACE ftM1nti WITH vnTi
                                              REPLACE ftM1tot WITH 0
                                              REPLACE ftM1int WITH 0
                                              REPLACE ftM1acu WITH 0
                                              REPLACE ftM1num WITH 0
                                         ELSE
                                              IF LEN(ALLTRIM(ftM1nti))=0
                                                   IF LEN(ALLTRIM(vnTi))=0
                                                        SELECT clIentes
                                                        SEEK vtIt
                                                        STORE f1101nom TO vnTi
                                                        SELECT teMporal
                                                        REPLACE ftM1nti  ;
                                                         WITH vnTi
                                                   ELSE
                                                        REPLACE ftM1nti  ;
                                                         WITH vnTi
                                                   ENDIF
                                              ENDIF
                                         ENDIF
                                         DO CASE
                                              CASE vmOn=mmOn .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM1acu WITH  ;
                                                    ftM1acu-vaCu
                                              CASE vmOn=mmOn
                                                   REPLACE ftM1acu WITH  ;
                                                    ftM1acu+vaCu
                                              CASE vmOn=1 .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM1acu WITH  ;
                                                    ftM1acu-(vaCu/vtCa)
                                              CASE vmOn=1
                                                   REPLACE ftM1acu WITH  ;
                                                    ftM1acu+(vaCu/vtCa)
                                              CASE vmOn=2 .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM1acu WITH  ;
                                                    ftM1acu-(vaCu*vtCa)
                                              CASE vmOn=2
                                                   REPLACE ftM1acu WITH  ;
                                                    ftM1acu+(vaCu*vtCa)
                                         ENDCASE
                                         SELECT tmP_detalle
                                         SEEK vtIt+vaNo+vmEs
                                         IF EOF()
                                              APPEND BLANK
                                              REPLACE ftM2tit WITH vtIt
                                              REPLACE ftM2ano WITH vaNo
                                              REPLACE ftM2mes WITH vmEs
                                              REPLACE ftM2tot WITH 0
                                              REPLACE ftM2int WITH 0
                                              REPLACE ftM2acu WITH 0
                                         ENDIF
                                         DO CASE
                                              CASE vmOn=mmOn .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM2acu WITH  ;
                                                    ftM2acu-vaCu
                                              CASE vmOn=mmOn
                                                   REPLACE ftM2acu WITH  ;
                                                    ftM2acu+vaCu
                                              CASE vmOn=1 .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM2acu WITH  ;
                                                    ftM2acu-(vaCu/vtCa)
                                              CASE vmOn=1
                                                   REPLACE ftM2acu WITH  ;
                                                    ftM2acu+(vaCu/vtCa)
                                              CASE vmOn=2 .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM2acu WITH  ;
                                                    ftM2acu-(vaCu*vtCa)
                                              CASE vmOn=2
                                                   REPLACE ftM2acu WITH  ;
                                                    ftM2acu+(vaCu*vtCa)
                                         ENDCASE
                                    ENDIF
                                    SELECT deT_ing_caja
                                    SKIP
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               SELECT caB_ing_caja
                               SKIP
                          ENDDO
                          IF mkEy<>k_Esc
                               SELECT caB_ing_bancos
                               GOTO TOP
                               SET NEAR ON
                               SEEK SUBSTR(DTOC(dfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(dfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(dfEm), 1, 2)
                               SET NEAR OFF
                               DO WHILE  .NOT. EOF() .AND. f3530ano+ ;
                                  f3530mes+f3530dia<=SUBSTR(DTOC(hfEm), 7,  ;
                                  4)+SUBSTR(DTOC(hfEm), 4, 2)+ ;
                                  SUBSTR(DTOC(hfEm), 1, 2)
                                    IF mkEy=k_Esc
                                         SELECT teMporal
                                         ZAP
                                         REINDEX
                                         EXIT
                                    ENDIF
                                    WAIT WINDOW NOCLEAR NOWAIT  ;
                                     "L E Y E N D O BANCOS"+f3530ano+"-"+ ;
                                     f3530mes+"-V3"+"-"+f3530num+"..."+ ;
                                     CHR(13)+CHR(13)+ ;
                                     "Presionar ESC para Salir..."
                                    IF f3530tpo=1
                                         SKIP
                                         LOOP
                                    ENDIF
                                    STORE f3530ano TO vaNo
                                    STORE f3530mes TO vmEs
                                    STORE f3530ser TO vsEr
                                    STORE f3530num TO vnUm
                                    STORE f3530mon TO vmOn
                                    STORE f3530tca TO vtCa
                                    SELECT deT_ing_bancos
                                    SEEK vaNo+vmEs+vsEr+vnUm
                                    DO WHILE  .NOT. EOF() .AND. f3531ano+ ;
                                       f3531mes+f3531ser+f3531num=vaNo+ ;
                                       vmEs+vsEr+vnUm
                                         IF mkEy=k_Esc
                                              SELECT teMporal
                                              ZAP
                                              REINDEX
                                              EXIT
                                         ENDIF
                                         STORE f3531tdo TO vtDo
                                         STORE f3531sr1 TO vsR1
                                         STORE f3531doc TO vdOc
                                         STORE f3531pag TO vaCu
                                         SELECT peNd_vtas
                                         SEEK vtDo+vsR1+vdOc
                                         IF  .NOT. EOF() .AND. f3500tcl=vtCl
                                              STORE f3500tit TO vtIt
                                              STORE f3500nti TO vnTi
                                              STORE f3500tot TO vtOt
                                              STORE f3500int TO viNt
                                              SELECT teMporal
                                              SEEK vtIt
                                              IF EOF()
                                                   APPEND BLANK
                                                   REPLACE ftM1tit WITH vtIt
                                                   REPLACE ftM1nti WITH vnTi
                                                   REPLACE ftM1tot WITH 0
                                                   REPLACE ftM1int WITH 0
                                                   REPLACE ftM1acu WITH 0
                                                   REPLACE ftM1num WITH 0
                                              ELSE
                                                   IF LEN(ALLTRIM(ftM1nti))=0
                                                        IF LEN(ALLTRIM(vnTi))=0
                                                             SELECT clIentes
                                                             SEEK vtIt
                                                             STORE  ;
                                                              f1101nom TO vnTi
                                                             SELECT teMporal
                                                             REPLACE  ;
                                                              ftM1nti WITH vnTi
                                                        ELSE
                                                             REPLACE  ;
                                                              ftM1nti WITH vnTi
                                                        ENDIF
                                                   ENDIF
                                              ENDIF
                                              DO CASE
                                                   CASE vmOn=mmOn .AND.  ;
                                                    (vtDo="NC" .OR. vtDo= ;
                                                    "N1" .OR. vtDo="N3")
                                                        REPLACE ftM1acu  ;
                                                         WITH ftM1acu-vaCu
                                                   CASE vmOn=mmOn
                                                        REPLACE ftM1acu  ;
                                                         WITH ftM1acu+vaCu
                                                   CASE vmOn=1 .AND.  ;
                                                    (vtDo="NC" .OR. vtDo= ;
                                                    "N1" .OR. vtDo="N3")
                                                        REPLACE ftM1acu  ;
                                                         WITH ftM1acu- ;
                                                         (vaCu/vtCa)
                                                   CASE vmOn=1
                                                        REPLACE ftM1acu  ;
                                                         WITH ftM1acu+ ;
                                                         (vaCu/vtCa)
                                                   CASE vmOn=2 .AND.  ;
                                                    (vtDo="NC" .OR. vtDo= ;
                                                    "N1" .OR. vtDo="N3")
                                                        REPLACE ftM1acu  ;
                                                         WITH ftM1acu- ;
                                                         (vaCu*vtCa)
                                                   CASE vmOn=2
                                                        REPLACE ftM1acu  ;
                                                         WITH ftM1acu+ ;
                                                         (vaCu*vtCa)
                                              ENDCASE
                                              SELECT tmP_detalle
                                              SEEK vtIt+vaNo+vmEs
                                              IF EOF()
                                                   APPEND BLANK
                                                   REPLACE ftM2tit WITH vtIt
                                                   REPLACE ftM2ano WITH vaNo
                                                   REPLACE ftM2mes WITH vmEs
                                                   REPLACE ftM2tot WITH 0
                                                   REPLACE ftM2int WITH 0
                                                   REPLACE ftM2acu WITH 0
                                              ENDIF
                                              DO CASE
                                                   CASE vmOn=mmOn .AND.  ;
                                                    (vtDo="NC" .OR. vtDo= ;
                                                    "N1" .OR. vtDo="N3")
                                                        REPLACE ftM2acu  ;
                                                         WITH ftM2acu-vaCu
                                                   CASE vmOn=mmOn
                                                        REPLACE ftM2acu  ;
                                                         WITH ftM2acu+vaCu
                                                   CASE vmOn=1 .AND.  ;
                                                    (vtDo="NC" .OR. vtDo= ;
                                                    "N1" .OR. vtDo="N3")
                                                        REPLACE ftM2acu  ;
                                                         WITH ftM2acu- ;
                                                         (vaCu/vtCa)
                                                   CASE vmOn=1
                                                        REPLACE ftM2acu  ;
                                                         WITH ftM2acu+ ;
                                                         (vaCu/vtCa)
                                                   CASE vmOn=2 .AND.  ;
                                                    (vtDo="NC" .OR. vtDo= ;
                                                    "N1" .OR. vtDo="N3")
                                                        REPLACE ftM2acu  ;
                                                         WITH ftM2acu- ;
                                                         (vaCu*vtCa)
                                                   CASE vmOn=2
                                                        REPLACE ftM2acu  ;
                                                         WITH ftM2acu+ ;
                                                         (vaCu*vtCa)
                                              ENDCASE
                                         ENDIF
                                         SELECT deT_ing_bancos
                                         SKIP
                                    ENDDO
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    SELECT caB_ing_bancos
                                    SKIP
                               ENDDO
                          ENDIF
                          IF mkEy<>k_Esc
                               SELECT peNd_vtas
                               STORE 99 TO mkEy
                               STORE 01 TO meRr
                               SET ORDER TO F3500TC6
                               STORE 00 TO meRr
                               IF mkEy=k_Esc
                                    SELECT teMporal
                                    ZAP
                                    REINDEX
                                    RETURN
                               ENDIF
                               GOTO TOP
                               SET NEAR ON
                               SEEK vtCl+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                                    SUBSTR(DTOC(dfEm), 4, 2)+ ;
                                    SUBSTR(DTOC(dfEm), 1, 2)
                               SET NEAR OFF
                               DO WHILE  .NOT. EOF() .AND. f3500tcl=vtCl  ;
                                  .AND. f3500fem<=hfEm
                                    IF mkEy=k_Esc
                                         SELECT teMporal
                                         ZAP
                                         REINDEX
                                         EXIT
                                    ENDIF
                                    WAIT WINDOW NOCLEAR NOWAIT  ;
                                     "L E Y E N D O  VENTAS "+ ;
                                     DTOC(f3500fem)+"..."+CHR(13)+CHR(13)+ ;
                                     "Presionar ESC para Salir..."
                                    STORE f3500tdo TO vtDo
                                    STORE f3500tit TO vtIt
                                    STORE f3500nti TO vnTi
                                    STORE f3500tot TO vtOt
                                    STORE f3500int TO viNt
                                    STORE SUBSTR(DTOC(f3500fem), 7, 4) TO vaNo
                                    STORE SUBSTR(DTOC(f3500fem), 4, 2) TO vmEs
                                    SELECT teMporal
                                    SEEK vtIt
                                    IF EOF()
                                         APPEND BLANK
                                         REPLACE ftM1tit WITH vtIt
                                         REPLACE ftM1nti WITH vnTi
                                         REPLACE ftM1tot WITH 0
                                         REPLACE ftM1int WITH 0
                                         REPLACE ftM1acu WITH 0
                                         REPLACE ftM1num WITH 0
                                    ELSE
                                         IF LEN(ALLTRIM(ftM1nti))=0
                                              IF LEN(ALLTRIM(vnTi))=0
                                                   SELECT clIentes
                                                   SEEK vtIt
                                                   STORE f1101nom TO vnTi
                                                   SELECT teMporal
                                                   REPLACE ftM1nti WITH vnTi
                                              ELSE
                                                   REPLACE ftM1nti WITH vnTi
                                              ENDIF
                                         ENDIF
                                    ENDIF
                                    IF vtDo<>"LE"
                                         DO CASE
                                              CASE vmOn=mmOn .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM1tot WITH  ;
                                                    ftM1tot-vtOt+viNt
                                              CASE vmOn=mmOn
                                                   REPLACE ftM1tot WITH  ;
                                                    ftM1tot+vtOt+viNt
                                              CASE vmOn=1 .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM1tot WITH  ;
                                                    ftM1tot-((vtOt+viNt)/vtCa)
                                              CASE vmOn=1
                                                   REPLACE ftM1tot WITH  ;
                                                    ftM1tot+((vtOt+viNt)/vtCa)
                                              CASE vmOn=2 .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM1tot WITH  ;
                                                    ftM1tot-((vtOt+viNt)*vtCa)
                                              CASE vmOn=2
                                                   REPLACE ftM1tot WITH  ;
                                                    ftM1tot+((vtOt+viNt)*vtCa)
                                         ENDCASE
                                    ENDIF
                                    SELECT tmP_detalle
                                    SEEK vtIt+vaNo+vmEs
                                    IF EOF()
                                         APPEND BLANK
                                         REPLACE ftM2tit WITH vtIt
                                         REPLACE ftM2ano WITH vaNo
                                         REPLACE ftM2mes WITH vmEs
                                         REPLACE ftM2tot WITH 0
                                         REPLACE ftM2int WITH 0
                                         REPLACE ftM2acu WITH 0
                                    ENDIF
                                    IF vtDo<>"LE"
                                         DO CASE
                                              CASE vmOn=mmOn .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM2tot WITH  ;
                                                    ftM2tot-vtOt+viNt
                                              CASE vmOn=mmOn
                                                   REPLACE ftM2tot WITH  ;
                                                    ftM2tot+vtOt+viNt
                                              CASE vmOn=1 .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM2tot WITH  ;
                                                    ftM2tot-((vtOt+viNt)/vtCa)
                                              CASE vmOn=1
                                                   REPLACE ftM2tot WITH  ;
                                                    ftM2tot+((vtOt+viNt)/vtCa)
                                              CASE vmOn=2 .AND. (vtDo= ;
                                               "NC" .OR. vtDo="N1" .OR.  ;
                                               vtDo="N3")
                                                   REPLACE ftM2tot WITH  ;
                                                    ftM2tot-((vtOt+viNt)*vtCa)
                                              CASE vmOn=2
                                                   REPLACE ftM2tot WITH  ;
                                                    ftM2tot+((vtOt+viNt)*vtCa)
                                         ENDCASE
                                    ENDIF
                                    SELECT peNd_vtas
                                    SKIP
                               ENDDO
                               SELECT peNd_vtas
                               STORE 99 TO mkEy
                               STORE 01 TO meRr
                               SET ORDER TO F3500DOC
                               STORE 00 TO meRr
                               IF mkEy=k_Esc
                                    SELECT teMporal
                                    ZAP
                                    REINDEX
                                    RETURN
                               ENDIF
                          ENDIF
                          IF mkEy<>k_Esc
                               SELECT teMporal
                               GOTO TOP
                               DO WHILE  .NOT. EOF()
                                    IF mkEy=k_Esc
                                         SELECT teMporal
                                         ZAP
                                         REINDEX
                                         EXIT
                                    ENDIF
                                    STORE ftM1tit TO vtIt
                                    STORE 00 TO cnUm, cnUv
                                    SELECT tmP_detalle
                                    SEEK vtIt
                                    DO WHILE  .NOT. EOF() .AND. ftM2tit=vtIt
                                         IF mkEy=k_Esc
                                              SELECT teMporal
                                              ZAP
                                              REINDEX
                                              EXIT
                                         ENDIF
                                         IF ftM2tot<>0
                                              STORE cnUv+1 TO cnUv
                                         ENDIF
                                         IF ftM2acu<>0
                                              STORE cnUm+1 TO cnUm
                                         ENDIF
                                         SKIP
                                    ENDDO
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    SELECT teMporal
                                    REPLACE ftM1nuv WITH cnUv
                                    REPLACE ftM1num WITH cnUm
                                    SKIP
                               ENDDO
                          ENDIF
                          SET ESCAPE OFF
                          ON ESCAPE
                          WAIT CLEAR
                          STORE 99 TO mkEy
                          IF mkEy<>k_Esc
                               STORE vtCl TO ctCl
                               STORE dfEm TO cdFe
                               STORE hfEm TO chFe
                               SELECT teMporal
                               SUM ftM1tot TO ttOt ALL
                               SUM ftM1int TO tiNt ALL
                               SUM ftM1acu TO taCu ALL
                          ENDIF
                ENDCASE
                IF mkEy<>k_Esc
                     STORE 99 TO mkEy
                     SELECT teMporal
                     SET ORDER TO FTM1NTI
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay datos registrados..." TO mmSj
                     ELSE
                          @fFIL+1.4,mCO0+060.7 Say tTOT      Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6 Color Scheme 3
                          @fFIL+1.4,mCO0+081.3 Say tINT      Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6 Color Scheme 3
                          @fFIL+1.4,mCO0+101.9 Say tTOT+tINT Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6 Color Scheme 3
                          @fFIL+1.4,mCO0+126.6 Say tACU      Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6 Color Scheme 3
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
                          DO pcC3556b
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
                ENDIF
                STORE 99 TO mkEy
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      @iFIL-4,mCO0+07.5 Get dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      @iFIL-4,mCO0+26.5 Get hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Lin_3556a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+006.4 TO pfIn, mcO0+006.4
 @ piNi, mcO0+056.1 TO pfIn, mcO0+056.1
 @ piNi, mcO0+060.1 TO pfIn, mcO0+060.1
 @ piNi, mcO0+080.7 TO pfIn, mcO0+080.7
 @ piNi, mcO0+101.3 TO pfIn, mcO0+101.3
 @ piNi, mcO0+122.0 TO pfIn, mcO0+122.0
 @ piNi, mcO0+126.0 TO pfIn, mcO0+126.0
 @ piNi, mcO0+146.5 TO pfIn, mcO0+146.5
ENDPROC
*
PROCEDURE P00_3556a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE 093.4 TO vuCo
 STORE 167.2 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl, ifFs, ufFs, vfFs
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE ifFs+(INT(muFi)-5) TO ffFs
 STORE ifIl-4.05 TO vfB1
 STORE mcO0+72.3 TO vcB1
 STORE mcO0 TO icLn
 STORE vcO0+0.5 TO icL1
 STORE vcO0+92.8 TO ucL1
 STORE mcO0+166.8 TO ucLn
 Define Popup vTB1 from mFI0-1.3,mCO0+24 to fFIL+6.9,mCO0+77 Font "&mLetCou",9 Style "NQ" Prompt Field F9110NTI Scroll Color Scheme 3 Footer "CONSULTA DE TIPOS DE CLIENTES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Cuadro de Ventas y Cancelaciones"
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "OPCIO1", mfI0-3.3, icLn-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @iFIL-4,mCO0+0.8 Say "Del" Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+22  Say "al"  Font "&mLetRom",13 Style "BT"
 DO liN_3556a WITH ifIl-0.2, ffIl+1.2
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.2, mcO0 TO ffIl+1.2, mcO0+muCo
 @ ifIl-1.5, mcO0+56.1 TO ifIl-0.2, mcO0+56.1
 @ ifIl-1.5, mcO0+60.1 TO ifIl-0.2, mcO0+60.1
 @ ifIl-1.5, mcO0+80.7 TO ifIl-0.2, mcO0+80.7
 DO coLbln
 @iFIL-1.3,mCO0      Say "Cliente Titular" Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+56.7 Say "#M"              Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+65.7 Say "Ventas"          Font "&mLetAri",9 Style "NT"
 DO coLplp
 @ ifIl-1.4, mcO0+101.3 TO ifIl-0.2, mcO0+101.3
 @ ifIl-1.4, mcO0+122.0 TO ifIl-0.2, mcO0+122.0
 @ ifIl-1.4, mcO0+126.0 TO ifIl-0.2, mcO0+126.0
 @ ifIl-1.4, mcO0+146.5 TO ifIl-0.2, mcO0+146.5
 @ ffIl+1.2, mcO0+060.1 TO ffIl+2.8, mcO0+146.7 PATTERN 1 COLOR SCHEME 3
 @ ffIl+1.2, mcO0+080.7 TO ffIl+2.8, mcO0+080.7
 @ ffIl+1.2, mcO0+101.3 TO ffIl+2.8, mcO0+101.3
 @ ffIl+1.2, mcO0+122.0 TO ffIl+2.8, mcO0+122.0
 @ ffIl+1.2, mcO0+126.0 TO ffIl+2.8, mcO0+126.0
 @ ffIl+1.2, mcO0+146.5 TO ffIl+2.8, mcO0+146.5
 DO coLbln
 @iFIL-1.3,mCO0+084.7 Say "Intereses"     Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+105.7 Say "Vtas+Inter"    Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+122.1 Say "#M"            Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+128.1 Say "Cancelaciones" Font "&mLetAri",9 Style "NT"
 @iFIL-1.3,mCO0+151.1 Say "Promedio"      Font "&mLetAri",9 Style "NT"
 DO CASE
      CASE mmOn=1
           @fFIL+1.4,mCO0+50 Say "S/." Font "&mLetAri",9 Style "NT"
      CASE mmOn=2
           @fFIL+1.4,mCO0+49 Say "US$" Font "&mLetAri",9 Style "NT"
 ENDCASE
 @fFIL+1.4,mCO0+060.7 Say tTOT      Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6 Color Scheme 3
 @fFIL+1.4,mCO0+081.3 Say tINT      Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6 Color Scheme 3
 @fFIL+1.4,mCO0+101.9 Say tTOT+tINT Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6 Color Scheme 3
 @fFIL+1.4,mCO0+126.6 Say tACU      Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6 Color Scheme 3
 DO coLsc1
 @iFIL-4,mCO0+07.5 Get  dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 @iFIL-4,mCO0+26.5 Get  hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 @iFIL-4,mCO0+48.0 Edit vNTC Font "&mLetRom",11 Style "NQ" Size 1,20,20
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
ENDPROC
*
PROCEDURE Res_3556a
 DO p00_3556a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(itIt))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      STORE vtIt TO ctIt
      STORE vnTi TO cnTi
      SELECT teMporal
      SEEK UPPER(inTi)+itIt
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1tit=vtIt
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE vtIt TO itIt, ctIt
           STORE vnTi TO inTi, cnTi
           STORE ifIl TO vfIl, cfIl
      ENDIF
      SEEK UPPER(inTi)+itIt
      DO paN_3556b IN PCC3556B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ctIt TO vtIt
      STORE cnTi TO vnTi
      STORE cfIl TO vfIl
      SEEK UPPER(vnTi)+vtIt
 ENDIF
ENDPROC
*
PROCEDURE Tip_3556a
 = INKEY(0.01)
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnTc)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9110tip<>vtCl
      DO coLsc1
      STORE f9110tip TO vtCl
      STORE f9110nti TO vnTc
      @iFIL-4,mCO0+48 Say vNTC Font "&mLetRom",11 Style "NQ" Size 1,20 Pict "@S20"
 ENDIF
 STORE 99 TO mkEy
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_3556a
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
      CASE mfIl>=vfB1-0.05 .AND. mfIl<=vfB1+1.521 .AND. mcCc>=vcB1-0.30  ;
           .AND. mcCc<=vcB1+3.900
           DO tiP_3556a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT teMporal
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3556a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "Esta consulta muestra los Clientes Titulares pendientes x Cobrar; se ve"
 @ 1.200, 02 SAY "esta consulta ordenada x Tipo de Cliente."
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
 RELEASE vsW0, vlIn, vpAg, vfB1, vcB1, vcO0, vuCo, vfIl, ifIl, ufIl, ffIl, cfIl
 RELEASE vfFs, ifFs, ufFs, ffFs, cfFs, vtCl, ctCl, vnTc, vtIt, itIt, utIt,  ;
         ctIt, dtIt
 RELEASE htIt, vnTi, inTi, unTi, cnTi, vaNo, iaNo, uaNo, caNo, vmEs, imEs,  ;
         umEs, cmEs
 RELEASE vsEr, vnUm, cnUm, cnUv, vmOn, vtCa, vtDo, vsR1, vdOc, vtOt, viNt,  ;
         vaCu, ttOt
 RELEASE tiNt, taCu, icLn, ucLn, icL1, ucL1
 RELEASE vpAn_11, vpAn_12
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
