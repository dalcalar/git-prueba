 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DIMENSION afIl[23, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FEC"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
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
 afIl[x, 1] = "FTM1DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TIP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CHE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NCT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
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
 afIl[x, 1] = "FTM1MND"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PAG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SLD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
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
 INDEX ON ftM1tdo+ftM1ser+ftM1doc+STR(ftM1tpo, 1, 0)+ftM1sr1+ftM1num TAG  ;
       ftM1doc
 INDEX ON ALLTRIM(ftM1ruc)+"*"+ftM1tdo+ftM1ser+ftM1doc+STR(ftM1tpo, 1, 0)+ ;
       ftM1sr1+ftM1num TAG ftM1ruc
 INDEX ON ALLTRIM(ftM1ruc)+SUBSTR(DTOC(ftM1fem), 7, 4)+ ;
       SUBSTR(DTOC(ftM1fem), 4, 2)+SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ ;
       ftM1ser+ftM1doc+STR(ftM1tpo, 1, 0)+ftM1sr1+ftM1num TAG ftM1fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2TPO"
 afIl[x, 2] = "C"
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
 afIl[x, 3] = 45
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TT2"
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
 INDEX ON ftM2tpo+ftM2tip TAG ftM2tip
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
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3610", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Nota
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3610DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
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
 SELECT 10
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM1DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Tipos
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
 PUBLIC vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, dfEm,  ;
        hfEm, vfEm
 PUBLIC cdFe, chFe, vtDo, itDo, utDo, ctDo, vsEr, isEr, usEr, csEr, vdOc,  ;
        idOc, udOc
 PUBLIC cdOc, vtPo, itPo, utPo, ctPo, vsR1, isR1, usR1, csR1, vnUm, inUm,  ;
        unUm, cnUm
 PUBLIC vtP1, itP1, utP1, ctP1, vtIp, itIp, utIp, ctIp, vrUc, irUc, urUc,  ;
        crUc, vtOt
 PUBLIC vaNo, vmEs, vdIa, vgLo, vcHe, vnTi, vmOn, cmOn, vtCa, vfEc, cfEc,  ;
        vpAg, vsLd
 PUBLIC vnOm, vsG1, vsG2, vtPp, vnTp, vcLi, tsOl, tuSd, taP1, taP2, ttT2,  ;
        vcO0, vsOl
 PUBLIC vuSd, vuS1, icLn, ucLn, icL1, ucL1
 PUBLIC vpAn_11, vpAn_12
 STORE CTOD("  /  /    ") TO cdFe, chFe
 STORE DATE() TO dfEm, hfEm
 STORE SPACE(02) TO vtDo, itDo, utDo
 STORE SPACE(03) TO vsEr, isEr, usEr
 STORE SPACE(11) TO vrUc, irUc, urUc
 STORE SPACE(07) TO vdOc, idOc, udOc, inUm
 STORE 00 TO taP1, taP2, tsOl, tuSd, ttT2
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_3555a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3555a
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
                DO hl1_3555a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3555a
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
                     STORE 00 TO taP1, taP2, tsOl, tuSd, ttT2
                     SELECT teMporal
                     SET ORDER TO FTM1DOC
                     ZAP
                     REINDEX
                     SELECT tmP_tipos
                     ZAP
                     REINDEX
                     SELECT caB_ing_caja
                     SET NEAR ON
                     SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4,  ;
                          2)+SUBSTR(DTOC(dfEm), 1, 2)
                     SET NEAR OFF
                     SET ESCAPE ON
                     ON ESCAPE STORE K_ESC TO MKEY
                     DO WHILE  .NOT. EOF() .AND. f3510ano+f3510mes+ ;
                        f3510dia<=SUBSTR(DTOC(hfEm), 7, 4)+ ;
                        SUBSTR(DTOC(hfEm), 4, 2)+SUBSTR(DTOC(hfEm), 1, 2)
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          IF f3510est="9"
                               SKIP
                               LOOP
                          ENDIF
                          STORE 0 TO vtIp
                          STORE 1 TO vtPo
                          STORE f3510ano TO vaNo
                          STORE f3510mes TO vmEs
                          STORE f3510dia TO vdIa
                          STORE f3510ser TO vsR1
                          STORE f3510num TO vnUm
                          STORE f3510glo TO vgLo
                          STORE f3510mon TO vmOn
                          STORE f3510tca TO vtCa
                          STORE f3510tip TO vtPp
                          STORE f3510nti TO vnTp
                          DO CASE
                               CASE f3510tpo=1
                                    STORE "Por rendir" TO vcHe, vnTi, vgLo
                               CASE f3510tpo=4
                                    STORE 2 TO vtIp
                                    STORE "LE:"+f3510srl+"-"+f3510let TO  ;
                                     vcHe, vnTi
                                    STORE "Canje" TO vgLo
                               OTHERWISE
                                    STORE "Efectivo" TO vcHe, vnTi
                          ENDCASE
                          STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO vfEc
                          WAIT WINDOW NOCLEAR NOWAIT  ;
                               "L E Y E N D O  CAJA "+vaNo+"-"+vmEs+"-"+ ;
                               vnUm+"..."+CHR(13)+CHR(13)+ ;
                               "Presionar ESC para Salir..."
                          SELECT deT_ing_caja
                          SEEK vaNo+vmEs+vsR1+vnUm
                          DO WHILE  .NOT. EOF() .AND. f3511ano+f3511mes+ ;
                             f3511ser+f3511num=vaNo+vmEs+vsR1+vnUm
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE f3511tdo TO vtDo
                               STORE f3511sr1 TO vsEr
                               STORE f3511doc TO vdOc
                               STORE f3511pag TO vpAg
                               SELECT peNd_vtas
                               SEEK vtDo+vsEr+vdOc
                               IF EOF()
                                    STORE 0 TO vtOt, vsLd
                                    STORE 1 TO cmOn
                                    STORE SPACE(70) TO vnOm, vcLi
                                    STORE CTOD("  /  /    ") TO vfEm
                               ELSE
                                    STORE f3500cli TO vcLi
                                    STORE f3500nom TO vnOm
                                    STORE f3500fem TO vfEm
                                    STORE f3500mon TO cmOn
                                    STORE f3500tot TO vtOt
                                    STORE f3500tot+f3500int-f3500acu TO vsLd
                               ENDIF
                               DO CASE
                                    CASE vtDo="FA" .OR. vtDo="FE" .OR.  ;
                                     vtDo="FC" .OR. vtDo="BO" .OR. vtDo= ;
                                     "BE" .OR. vtDo="BC" .OR. vtDo="NP"
                                         SELECT caB_fact
                                         SEEK vtDo+vsEr+vdOc
                                         DO CASE
                                              CASE EOF() .OR. f1300est="9"
                                                   STORE SPACE(11) TO vrUc
                                              CASE LEN(ALLTRIM(f1300ruc))<>0
                                                   STORE f1300ruc TO vrUc
                                              OTHERWISE
                                                   STORE f1300ele TO vrUc
                                         ENDCASE
                                    CASE vtDo="NC" .OR. vtDo="N1" .OR.  ;
                                     vtDo="N3" .OR. vtDo="ND" .OR. vtDo= ;
                                     "N2" .OR. vtDo="N4"
                                         SELECT caB_nota
                                         SEEK vtDo+vsEr+vdOc
                                         DO CASE
                                              CASE EOF() .OR. f3610est="9"
                                                   STORE SPACE(11) TO vrUc
                                              CASE LEN(ALLTRIM(f3610ruc))<>0
                                                   STORE f3610ruc TO vrUc
                                              OTHERWISE
                                                   STORE f3610ele TO vrUc
                                         ENDCASE
                                    CASE vtDo="LE"
                                         SELECT leTras_cli
                                         SEEK vtDo+vsEr+vdOc
                                         DO CASE
                                              CASE EOF() .OR. f3110est="9"
                                                   STORE SPACE(11) TO vrUc
                                              CASE LEN(ALLTRIM(f3110ruc))<>0
                                                   STORE f3110ruc TO vrUc
                                              OTHERWISE
                                                   STORE f3110ele TO vrUc
                                         ENDCASE
                               ENDCASE
                               SELECT tmP_tipos
                               SEEK "1"+vtPp
                               IF EOF()
                                    APPEND BLANK
                                    REPLACE ftM2tpo WITH "1"
                                    REPLACE ftM2tip WITH vtPp
                                    REPLACE ftM2nti WITH vnTp
                                    REPLACE ftM2to1 WITH 0
                                    REPLACE ftM2to2 WITH 0
                                    REPLACE ftM2tt2 WITH 0
                               ENDIF
                               IF vmOn=1
                                    REPLACE ftM2to1 WITH ftM2to1+vpAg
                                    REPLACE ftM2tt2 WITH ftM2tt2+ ;
                                     ROUND(vpAg/vtCa, 2)
                               ELSE
                                    REPLACE ftM2to2 WITH ftM2to2+vpAg
                                    REPLACE ftM2tt2 WITH ftM2tt2+vpAg
                               ENDIF
                               DO CASE
                                    CASE vtDo="NC" .OR. vtDo="N1" .OR.  ;
                                     vtDo="N3"
                                         STORE 00 TO vpAg
                                         STORE vtOt*-1 TO vtOt
                                    CASE vtIp=2
                                         STORE 00 TO vpAg
                               ENDCASE
                               SELECT teMporal
                               APPEND BLANK
                               REPLACE ftM1tdo WITH vtDo
                               REPLACE ftM1ser WITH vsEr
                               REPLACE ftM1doc WITH vdOc
                               REPLACE ftM1tpo WITH vtPo
                               REPLACE ftM1tip WITH vtIp
                               REPLACE ftM1sr1 WITH vsR1
                               REPLACE ftM1num WITH vnUm
                               REPLACE ftM1fem WITH vfEm
                               REPLACE ftM1fec WITH vfEc
                               REPLACE ftM1cli WITH vcLi
                               REPLACE ftM1ruc WITH vrUc
                               REPLACE ftM1nom WITH vnOm
                               REPLACE ftM1tca WITH vtCa
                               REPLACE ftM1mon WITH cmOn
                               REPLACE ftM1tot WITH vtOt
                               REPLACE ftM1mnd WITH vmOn
                               REPLACE ftM1pag WITH vpAg
                               REPLACE ftM1sld WITH vsLd
                               REPLACE ftM1nti WITH vnTi
                               REPLACE ftM1glo WITH vgLo
                               REPLACE ftM1che WITH vcHe
                               SELECT deT_ing_caja
                               SKIP
                          ENDDO
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          SELECT caB_ing_caja
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
                     SELECT caB_ing_bancos
                     SET NEAR ON
                     SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4,  ;
                          2)+SUBSTR(DTOC(dfEm), 1, 2)
                     SET NEAR OFF
                     DO WHILE  .NOT. EOF() .AND. f3530ano+f3530mes+ ;
                        f3530dia<=SUBSTR(DTOC(hfEm), 7, 4)+ ;
                        SUBSTR(DTOC(hfEm), 4, 2)+SUBSTR(DTOC(hfEm), 1, 2)
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          IF f3530est="9"
                               SKIP
                               LOOP
                          ENDIF
                          STORE 2 TO vtPo
                          STORE f3530ano TO vaNo
                          STORE f3530mes TO vmEs
                          STORE f3530dia TO vdIa
                          STORE f3530ser TO vsR1
                          STORE f3530num TO vnUm
                          STORE f3530nti TO vnTi
                          STORE f3530glo TO vgLo
                          STORE f3530che TO vcHe
                          STORE f3530mon TO vmOn
                          STORE f3530tca TO vtCa
                          STORE f3530nba TO vbAn
                          STORE f3530nct TO vcTa
                          STORE f3530tip TO vtPp
                          STORE f3530nti TO vnTp
                          DO CASE
                               CASE f3530tpo=1
                                    STORE "Por rendir" TO vgLo
                                    STORE 1 TO vtIp
                               OTHERWISE
                                    STORE 0 TO vtIp
                          ENDCASE
                          STORE CTOD(vdIa+"/"+vmEs+"/"+vaNo) TO vfEc
                          WAIT WINDOW NOCLEAR NOWAIT  ;
                               "L E Y E N D O  BANCOS "+vaNo+"-"+vmEs+"-"+ ;
                               vnUm+"..."+CHR(13)+CHR(13)+ ;
                               "Presionar ESC para Salir..."
                          SELECT deT_ing_bancos
                          SEEK vaNo+vmEs+vsR1+vnUm
                          DO WHILE  .NOT. EOF() .AND. f3531ano+f3531mes+ ;
                             f3531ser+f3531num=vaNo+vmEs+vsR1+vnUm
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE f3531tdo TO vtDo
                               STORE f3531sr1 TO vsEr
                               STORE f3531doc TO vdOc
                               STORE f3531pag TO vpAg
                               SELECT peNd_vtas
                               SEEK vtDo+vsEr+vdOc
                               IF EOF()
                                    STORE 1 TO cmOn
                                    STORE 0 TO vtOt, vsLd
                                    STORE SPACE(70) TO vnOm, vcLi
                                    STORE CTOD("  /  /    ") TO vfEm
                               ELSE
                                    STORE f3500cli TO vcLi
                                    STORE f3500nom TO vnOm
                                    STORE f3500fem TO vfEm
                                    STORE f3500mon TO cmOn
                                    STORE f3500tot TO vtOt
                                    STORE f3500tot+f3500int-f3500acu TO vsLd
                               ENDIF
                               DO CASE
                                    CASE vtDo="FA" .OR. vtDo="FE" .OR.  ;
                                     vtDo="FC" .OR. vtDo="BO" .OR. vtDo= ;
                                     "BE" .OR. vtDo="BC" .OR. vtDo="NP"
                                         SELECT caB_fact
                                         SEEK vtDo+vsEr+vdOc
                                         DO CASE
                                              CASE EOF() .OR. f1300est="9"
                                                   STORE SPACE(11) TO vrUc
                                              CASE LEN(ALLTRIM(f1300ruc))<>0
                                                   STORE f1300ruc TO vrUc
                                              OTHERWISE
                                                   STORE f1300ele TO vrUc
                                         ENDCASE
                                    CASE vtDo="NC" .OR. vtDo="N1" .OR.  ;
                                     vtDo="N3" .OR. vtDo="ND" .OR. vtDo= ;
                                     "N2" .OR. vtDo="N4"
                                         SELECT caB_nota
                                         SEEK vtDo+vsEr+vdOc
                                         DO CASE
                                              CASE EOF() .OR. f3610est="9"
                                                   STORE SPACE(11) TO vrUc
                                              CASE LEN(ALLTRIM(f3610ruc))<>0
                                                   STORE f3610ruc TO vrUc
                                              OTHERWISE
                                                   STORE f3610ele TO vrUc
                                         ENDCASE
                                    CASE vtDo="LE"
                                         SELECT leTras_cli
                                         SEEK vtDo+vsEr+vdOc
                                         DO CASE
                                              CASE EOF() .OR. f3110est="9"
                                                   STORE SPACE(11) TO vrUc
                                              CASE LEN(ALLTRIM(f3110ruc))<>0
                                                   STORE f3110ruc TO vrUc
                                              OTHERWISE
                                                   STORE f3110ele TO vrUc
                                         ENDCASE
                               ENDCASE
                               SELECT tmP_tipos
                               SEEK "2"+vtPp
                               IF EOF()
                                    APPEND BLANK
                                    REPLACE ftM2tpo WITH "2"
                                    REPLACE ftM2tip WITH vtPp
                                    REPLACE ftM2nti WITH vnTp
                                    REPLACE ftM2to1 WITH 0
                                    REPLACE ftM2to2 WITH 0
                                    REPLACE ftM2tt2 WITH 0
                               ENDIF
                               IF vmOn=1
                                    REPLACE ftM2to1 WITH ftM2to1+vpAg
                                    REPLACE ftM2tt2 WITH ftM2tt2+ ;
                                     ROUND(vpAg/vtCa, 2)
                               ELSE
                                    REPLACE ftM2to2 WITH ftM2to2+vpAg
                                    REPLACE ftM2tt2 WITH ftM2tt2+vpAg
                               ENDIF
                               DO CASE
                                    CASE vtIp=1
                                         STORE 00 TO vpAg, vsLd
                                    CASE vtDo="NC" .OR. vtDo="N1" .OR.  ;
                                     vtDo="N3"
                                         STORE 00 TO vpAg
                                         STORE vtOt*-1 TO vtOt
                               ENDCASE
                               SELECT teMporal
                               APPEND BLANK
                               REPLACE ftM1tdo WITH vtDo
                               REPLACE ftM1ser WITH vsEr
                               REPLACE ftM1doc WITH vdOc
                               REPLACE ftM1tpo WITH vtPo
                               REPLACE ftM1tip WITH vtIp
                               REPLACE ftM1sr1 WITH vsR1
                               REPLACE ftM1num WITH vnUm
                               REPLACE ftM1fem WITH vfEm
                               REPLACE ftM1fec WITH vfEc
                               REPLACE ftM1cli WITH vcLi
                               REPLACE ftM1ruc WITH vrUc
                               REPLACE ftM1nom WITH vnOm
                               REPLACE ftM1tca WITH vtCa
                               REPLACE ftM1mon WITH cmOn
                               REPLACE ftM1tot WITH vtOt
                               REPLACE ftM1mnd WITH vmOn
                               REPLACE ftM1pag WITH vpAg
                               REPLACE ftM1sld WITH vsLd
                               REPLACE ftM1nti WITH vnTi
                               REPLACE ftM1glo WITH vgLo
                               REPLACE ftM1che WITH vcHe
                               REPLACE ftM1nba WITH vbAn
                               REPLACE ftM1nct WITH vcTa
                               SELECT deT_ing_bancos
                               SKIP
                          ENDDO
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          SELECT caB_ing_bancos
                          SKIP
                     ENDDO
                     WAIT CLEAR
                     SET ESCAPE OFF
                     ON ESCAPE
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy=99
                          LOOP
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados entre esas fechas..."  ;
                           TO mmSj
                ELSE
                     STORE k_Tab TO mkEy
                     STORE 00 TO taP1, taP2, vsLd
                     STORE dfEm TO cdFe
                     STORE hfEm TO chFe
                     STORE SPACE(02) TO vtDo
                     STORE SPACE(03) TO vsEr
                     STORE SPACE(07) TO vdOc
                     DO WHILE  .NOT. EOF()
                          IF vtDo+vsEr+vdOc<>ftM1tdo+ftM1ser+ftM1doc
                               STORE ftM1tdo TO vtDo
                               STORE ftM1ser TO vsEr
                               STORE ftM1doc TO vdOc
                               STORE ftM1mon TO vmOn
                               STORE ftM1tot TO vsLd
                          ENDIF
                          IF ftM1tip<>1 .AND. ftM1tip<>2
                               DO CASE
                                    CASE vmOn=ftM1mnd
                                         STORE vsLd-ftM1pag TO vsLd
                                    CASE vmOn=1
                                         STORE vsLd-(ftM1pag*ftM1tca) TO vsLd
                                    CASE vmOn=2
                                         STORE vsLd-(ftM1pag/ftM1tca) TO vsLd
                               ENDCASE
                          ENDIF
                          REPLACE ftM1sld WITH vsLd
                          DO CASE
                               CASE ftM1mon=1 .AND. (ftM1tdo="NC" .OR.  ;
                                    ftM1tdo="N1" .OR. ftM1tdo="N3")
                                    STORE taP1+ftM1pag TO taP1
                               CASE ftM1mon=2 .AND. (ftM1tdo="NC" .OR.  ;
                                    ftM1tdo="N1" .OR. ftM1tdo="N3")
                                    STORE taP2+ftM1pag TO taP2
                          ENDCASE
                          SKIP
                     ENDDO
                     DO coLsc6
                     SELECT tmP_tipos
                     SUM ftM2to1 TO tsOl ALL
                     SUM ftM2to2 TO tuSd ALL
                     SUM ftM2tt2 TO ttT2 ALL
                     @fFIL+2.5,mCO0+005.0 Say tAP1 Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "99999,999.99"
                     @fFIL+2.5,mCO0+029.0 Say tAP2 Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "99999,999.99"
                     @fFIL+2.5,mCO0+055.0 Say tSOL Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "99999,999.99"
                     @fFIL+2.5,mCO0+079.1 Say tUSD Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "99999,999.99"
                     @fFIL+2.5,mCO0+105.5 Say tTT2 Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "99999,999.99"
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
                     SELECT teMporal
                     GOTO TOP
                     SET READBORDER OFF
                     SELECT teMporal
                     SET ORDER TO FTM1RUC
                     DO pcC3555b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SELECT teMporal
                     SET ORDER TO FTM1DOC
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
PROCEDURE P00_3555a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 39 TO muFi
 STORE 154.2 TO muCo
 STORE (mwCo-muCo)/2 TO vcO0
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+01.3 TO ifFs, ufFs, vfFs
 STORE ifFs+(INT(muFi)-5) TO ffFs
 STORE mcO0+0.2 TO icLn
 STORE vcO0+9.2 TO icL1
 STORE vcO0+110.8 TO ucL1
 STORE mcO0+154 TO ucLn
 DO tiT_0000a WITH "Cancelaciones x Clientes Complementos (rango de fechas)"
 DO coLsc1
 SAVE SCREEN TO vpAn_11
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
 @iFIL-4,mCO0+01 Say "Del" Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+24 Say "al"  Font "&mLetRom",13 Style "BT"
 DO liN_3551a IN PCC3551A WITH ifIl-0.2, ffIl+1.1
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 @ ifIl-1.3, mcO0+019.4 TO ifIl-0.2, mcO0+019.4
 @ ifIl-1.3, mcO0+033.7 TO ifIl-0.2, mcO0+033.7
 @ ifIl-1.3, mcO0+069.4 TO ifIl-0.2, mcO0+069.4
 @ ifIl-1.3, mcO0+092.9 TO ifIl-0.2, mcO0+092.9
 @ ifIl-1.3, mcO0+111.4 TO ifIl-0.2, mcO0+111.4
 @ ifIl-1.3, mcO0+133.1 TO ifIl-0.2, mcO0+133.1
 @ ffIl+1.1, mcO0+000 TO ffIl+3.8, mcO0+124 PATTERN 1 COLOR SCHEME 6
 @ ffIl+1.1, mcO0+048 TO ffIl+3.8, mcO0+048 COLOR SCHEME 6
 @ ffIl+1.1, mcO0+098 TO ffIl+3.8, mcO0+098 COLOR SCHEME 6
 DO coLbln
 @iFIL-1.2,mCO0+000.0 Say "Documento"        Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+022.2 Say "Cancelac."        Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+046.4 Say "Cliente"          Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+077.3 Say "Glosa"            Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+093.8 Say "Cheque/Dep"       Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+113.0 Say "Total Docum."     Font "&mLetAri",9 Style "NT"
 @iFIL-1.2,mCO0+137.5 Say "Total Pago"       Font "&mLetAri",9 Style "NT"
 DO coLsc6
 @fFIL+1.3,mCO0+012.5 Say "Aplicación de NC" Font "&mLetAri",9 Style "BT"
 @fFIL+1.3,mCO0+071.0 Say "Pagos"            Font "&mLetAri",9 Style "BT"
 @fFIL+1.3,mCO0+107.5 Say "Dolarizado"       Font "&mLetAri",9 Style "BT"
 @fFIL+2.5,mCO0+001.0 Say "S/."              Font "&mLetAri",9 Style "BT"
 @fFIL+2.5,mCO0+024.0 Say "US$"              Font "&mLetAri",9 Style "BT"
 @fFIL+2.5,mCO0+051.0 Say "S/."              Font "&mLetAri",9 Style "BT"
 @fFIL+2.5,mCO0+074.5 Say "US$"              Font "&mLetAri",9 Style "BT"
 @fFIL+2.5,mCO0+100.0 Say "US$"              Font "&mLetAri",9 Style "BT"
 @fFIL+2.5,mCO0+005.0 Say tAP1               Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9,999,999.99"
 @fFIL+2.5,mCO0+029.0 Say tAP2               Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9,999,999.99"
 @fFIL+2.5,mCO0+055.0 Say tSOL               Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9,999,999.99"
 @fFIL+2.5,mCO0+079.1 Say tUSD               Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9,999,999.99"
 @fFIL+2.5,mCO0+105.5 Say tTT2               Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9,999,999.99"
 DO coLbln
 @iFIL-4,mCO0+09 Get dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 @iFIL-4,mCO0+30 Get hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
ENDPROC
*
PROCEDURE Res_3555a
 DO p00_3555a WITH "1"
 IF mkEy=k_Esc
      EXIT
 ENDIF
 IF LEN(ALLTRIM(inUm))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      STORE vrUc TO crUc
      STORE vtDo TO ctDo
      STORE vsEr TO csEr
      STORE vdOc TO cdOc
      STORE vtPo TO ctPo
      STORE vsR1 TO csR1
      STORE vnUm TO cnUm
      SELECT teMporal
      SEEK ALLTRIM(irUc)+"*"+itDo+isEr+idOc+STR(itPo, 1, 0)+isR1+inUm
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(ftM1ruc)+"*"+ftM1tdo+ftM1ser+ftM1doc+STR(ftM1tpo, 1,  ;
              0)+ftM1sr1+ftM1num=ALLTRIM(vrUc)+"*"+vtDo+vsEr+vdOc+ ;
              STR(vtPo, 1, 0)+vsR1+vnUm
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE vrUc TO irUc, crUc
           STORE vtDo TO itDo, ctDo
           STORE vsEr TO isEr, csEr
           STORE vdOc TO idOc, cdOc
           STORE vtPo TO itPo, ctPo
           STORE vsR1 TO isR1, csR1
           STORE vnUm TO inUm, cnUm
           STORE ifIl TO vfIl, cfIl
      ENDIF
      SEEK ALLTRIM(irUc)+"*"+itDo+isEr+idOc+STR(itPo, 1, 0)+isR1+inUm
      DO paN_3555b IN PCC3555B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE crUc TO vrUc
      STORE ctDo TO vtDo
      STORE csEr TO vsEr
      STORE cdOc TO vdOc
      STORE ctPo TO vtPo
      STORE csR1 TO vsR1
      STORE cnUm TO vnUm
      STORE cfIl TO vfIl
      SEEK ALLTRIM(vrUc)+"*"+vtDo+vsEr+vdOc+STR(vtPo, 1, 0)+vsR1+vnUm
 ENDIF
ENDPROC
*
PROCEDURE Hl1_3555a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "Esta consulta muestra todos los movimientos de Cancelaciones o Pagos "
 @ 1.200, 02 SAY "a Cuenta x fecha de Emisión del Voucher."
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
 RELEASE vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, dfEm,  ;
         hfEm, vfEm
 RELEASE cdFe, chFe, vtDo, itDo, utDo, ctDo, vsEr, isEr, usEr, csEr, vdOc,  ;
         idOc, udOc
 RELEASE cdOc, vtPo, itPo, utPo, ctPo, vsR1, isR1, usR1, csR1, vnUm, inUm,  ;
         unUm, cnUm
 RELEASE vtP1, itP1, utP1, ctP1, vtIp, itIp, utIp, ctIp, vrUc, irUc, urUc,  ;
         crUc, vtOt
 RELEASE vaNo, vmEs, vdIa, vgLo, vcHe, vnTi, vmOn, cmOn, vtCa, vfEc, cfEc,  ;
         vpAg, vsLd
 RELEASE vnOm, vsG1, vsG2, vtPp, vnTp, vcLi, tsOl, tuSd, taP1, taP2, ttT2,  ;
         vcO0, vsOl
 RELEASE vuSd, vuS1, icLn, ucLn, icL1, ucL1
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
