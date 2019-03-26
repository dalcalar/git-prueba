 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[22, 4]
 STORE 1 TO x
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
 afIl[x, 1] = "FTM1FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FCA"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
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
 afIl[x, 1] = "FTM1ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SLD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1GRU"
 afIl[x, 2] = "C"
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
 afIl[x, 1] = "FTM1GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NCT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CHE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SRL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1RCB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
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
 INDEX ON ftM1tdo+ftM1ser+ftM1doc+ftM1gru+ftM1sr1+ftM1num TAG ftM1doc
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Letras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3110FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
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
 SELECT 3
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
 SELECT 4
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
 SELECT 5
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
 SELECT 6
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
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3610", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Notas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3610FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
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
 STORE 00 TO meRr
 PUBLIC vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vpAg,  ;
        vlIn, vtDo
 PUBLIC itDo, utDo, ctDo, vsEr, isEr, usEr, csEr, vdOc, idOc, udOc, cdOc,  ;
        vgRu, igRu
 PUBLIC ugRu, cgRu, vsR1, isR1, usR1, csR1, vnUm, inUm, unUm, cnUm, vsW0,  ;
        ifEc, ufEc
 PUBLIC ciFe, chFe, vaNo, vmEs, vmOn, vnOm, vfEm, vgLo, vsRl, vlEt, vrCb,  ;
        vrC1, vfCa
 PUBLIC vdAt, vnBa, vnCt, vcHe, vaCu, vtOt, vsLd
 PUBLIC vpAn_11
 STORE DATE() TO ifEc, ufEc
 STORE CTOD("  /  /    ") TO ciFe, chFe
 STORE SPACE(01) TO vgRu, igRu, ugRu
 STORE SPACE(02) TO vtDo, itDo, utDo
 STORE SPACE(03) TO vsEr, isEr, usEr
 STORE SPACE(03) TO vsR1, isR1, usR1
 STORE SPACE(07) TO vdOc, idOc, udOc
 STORE SPACE(07) TO vnUm, inUm, unUm
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 01 TO vsW0
 SET READBORDER ON
 DO p00_3552a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO coLbln
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3552a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3552a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3552a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3552a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Tab
                STORE k_Tab TO mkEy
                SELECT teMporal
                SET ORDER TO FTM1DOC
                IF ifEc<>ciFe .OR. ufEc<>chFe
                     SELECT teMporal
                     ZAP
                     REINDEX
                     SAVE SCREEN TO vpAn_11
                     SET ESCAPE ON
                     ON ESCAPE STORE K_ESC TO MKEY
                     SELECT caB_ing_caja
                     SET NEAR ON
                     SEEK SUBSTR(DTOC(ifEc), 7, 4)+SUBSTR(DTOC(ifEc), 4,  ;
                          2)+SUBSTR(DTOC(ifEc), 1, 2)
                     SET NEAR OFF
                     STORE "1" TO vgRu
                     DO WHILE  .NOT. EOF() .AND. f3510ano+f3510mes+ ;
                        f3510dia<=SUBSTR(DTOC(ufEc), 7, 4)+ ;
                        SUBSTR(DTOC(ufEc), 4, 2)+SUBSTR(DTOC(ufEc), 1, 2)
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          IF f3510est="9" .OR. f3510tpo=2 .OR. f3510tpo=5
                               SKIP
                               LOOP
                          ENDIF
                          DO meNsaje WITH "L E Y E N D O  CAJA "+f3510ano+ ;
                             "-"+f3510mes+"-"+f3510num+ ;
                             "...Presionar ESC para Salir..."
                          STORE CTOD(f3510dia+"/"+f3510mes+"/"+f3510ano)  ;
                                TO vfCa
                          STORE f3510ano TO vaNo
                          STORE f3510mes TO vmEs
                          STORE f3510ser TO vsR1
                          STORE f3510num TO vnUm
                          STORE f3510glo TO vgLo
                          STORE f3510srl TO vsRl
                          STORE f3510let TO vlEt
                          STORE f3510rcb TO vrCb
                          STORE f3510dat TO vdAt
                          DO CASE
                               CASE f3510tpo=1
                                    STORE "Por rendir" TO vcHe
                               CASE f3510tpo=4
                                    STORE "Canje/Renovacion LE" TO vcHe
                               CASE f3510tpo=6
                                    STORE "Aplicacion NC" TO vcHe
                               OTHERWISE
                                    STORE "Caja" TO vcHe
                          ENDCASE
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
                               STORE f3511pag TO vaCu
                               STORE f3511rcb TO vrC1
                               SELECT peNd_vtas
                               SEEK vtDo+vsR1+vdOc
                               IF EOF()
                                    STORE 0 TO vtOt, vsLd
                                    STORE 1 TO vmOn
                                    STORE SPACE(70) TO vnOm
                                    STORE CTOD("  /  /    ") TO vfEm
                               ELSE
                                    STORE f3500nom TO vnOm
                                    STORE f3500fem TO vfEm
                                    STORE f3500mon TO vmOn
                                    STORE f3500tot TO vtOt
                                    STORE f3500tot-f3500acu TO vsLd
                               ENDIF
                               IF vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3"
                                    STORE vtOt*-1 TO vtOt
                                    STORE vaCu*-1 TO vaCu
                                    STORE vsLd*-1 TO vsLd
                               ENDIF
                               DO grA_3552a
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
                     IF mkEy=k_Esc .OR. mkEy=99
                          RESTORE SCREEN FROM vpAn_11
                          SET ESCAPE OFF
                          ON ESCAPE
                          EXIT
                     ENDIF
                     STORE "2" TO vgRu
                     STORE " " TO vsRl, vlEt
                     SELECT caB_ing_bancos
                     SET NEAR ON
                     SEEK SUBSTR(DTOC(ifEc), 7, 4)+SUBSTR(DTOC(ifEc), 4,  ;
                          2)+SUBSTR(DTOC(ifEc), 1, 2)
                     SET NEAR OFF
                     DO WHILE  .NOT. EOF() .AND. f3530ano+f3530mes+ ;
                        f3530dia<=SUBSTR(DTOC(ufEc), 7, 4)+ ;
                        SUBSTR(DTOC(ufEc), 4, 2)+SUBSTR(DTOC(ufEc), 1, 2)
                          IF mkEy=k_Esc
                               STORE 99 TO mkEy
                               SELECT teMporal
                               ZAP
                               REINDEX
                               EXIT
                          ENDIF
                          IF f3530est="9" .OR. f3530tpo=2 .OR. f3530tpo=3
                               SKIP
                               LOOP
                          ENDIF
                          DO meNsaje WITH "L E Y E N D O  BANCOS "+ ;
                             f3530ano+"-"+f3530mes+"-"+f3530num+ ;
                             "...Presionar ESC para Salir..."
                          STORE CTOD(f3530dia+"/"+f3530mes+"/"+f3530ano)  ;
                                TO vfCa
                          STORE f3530ano TO vaNo
                          STORE f3530mes TO vmEs
                          STORE f3530ser TO vsR1
                          STORE f3530num TO vnUm
                          STORE f3530glo TO vgLo
                          STORE f3530rcb TO vrCb
                          STORE f3530dat TO vdAt
                          STORE f3530nba TO vnBa
                          STORE f3530nct TO vnCt
                          STORE f3530che TO vcHe
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
                               STORE f3531pag TO vaCu
                               STORE f3531rcb TO vrC1
                               SELECT peNd_vtas
                               SEEK vtDo+vsR1+vdOc
                               IF EOF()
                                    STORE 0 TO vtOt, vsLd
                                    STORE 1 TO vmOn
                                    STORE SPACE(70) TO vnOm
                                    STORE CTOD("  /  /    ") TO vfEm
                               ELSE
                                    STORE f3500nom TO vnOm
                                    STORE f3500fem TO vfEm
                                    STORE f3500mon TO vmOn
                                    STORE f3500tot TO vtOt
                                    STORE f3500tot-f3500acu TO vsLd
                               ENDIF
                               IF vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3"
                                    STORE vtOt*-1 TO vtOt
                                    STORE vaCu*-1 TO vaCu
                                    STORE vsLd*-1 TO vsLd
                               ENDIF
                               DO grA_3552a
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
                     RESTORE SCREEN FROM vpAn_11
                     IF mkEy=k_Esc .OR. mkEy=99
                          SET ESCAPE OFF
                          ON ESCAPE
                          EXIT
                     ENDIF
                ENDIF
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados entre esta fecha..."  ;
                           TO mmSj
                ELSE
                     GOTO TOP
                     STORE ifEc TO ciFe
                     STORE ufEc TO chFe
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
                     COMPILE PCC3552B
                     DO pcC3552b
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
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL-4,mCO0+08 Get iFEC Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      @iFIL-4,mCO0+28 Get uFEC Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Gra_3552a
 SELECT teMporal
 SEEK vtDo+vsEr+vdOc+vgRu+vsR1+vnUm
 IF EOF()
      APPEND BLANK
      REPLACE ftM1tdo WITH vtDo
      REPLACE ftM1ser WITH vsEr
      REPLACE ftM1doc WITH vdOc
      REPLACE ftM1gru WITH vgRu
      REPLACE ftM1sr1 WITH vsR1
      REPLACE ftM1num WITH vnUm
      REPLACE ftM1fem WITH vfEm
      REPLACE ftM1fca WITH vfCa
      REPLACE ftM1dat WITH vdAt
      REPLACE ftM1nom WITH vnOm
      REPLACE ftM1mon WITH vmOn
      REPLACE ftM1tot WITH vtOt
      REPLACE ftM1acu WITH vaCu
      REPLACE ftM1sld WITH vsLd
      REPLACE ftM1glo WITH vgLo
      REPLACE ftM1che WITH vcHe
      REPLACE ftM1srl WITH vsRl
      REPLACE ftM1let WITH vlEt
      IF LEN(ALLTRIM(vrC1))=0
           REPLACE ftM1rcb WITH vrCb
      ELSE
           REPLACE ftM1rcb WITH vrC1
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE P00_3552a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 DO maRcos
 STORE mfI0+1 TO mfI0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+01.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-3) TO ffIl
 STORE ifIl+1 TO ifFs, ufFs, vfFs
 STORE ffIl TO ffFs
 STORE ffIl+3.1 TO mmF2
 DO tiT_0000a WITH "Cancelaciones x Rango de Fechas de Emision"
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, ffIl+3, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @iFIL-4,mCO0+01 Say "Del" Font "&mLetRom",13 Style "BT"
 @iFIL-4,mCO0+23 Say "al"  Font "&mLetRom",13 Style "BT"
 DO liN_3552a WITH ifIl-1.6, ffIl+1.1
 DO li1_3552a WITH ifIl-0.2, ffIl+1.1
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO coLblz
 @iFIL-1.2,mCO0+003.2 Say "Documento" Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+020.0 Say "T"        Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+024.9 Say "Voucher"  Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+039.8 Say "Emision"  Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+054.4 Say "Pago"     Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+066.2 Say "Digitado" Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+078.8 Say "Recibo"   Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE mrEs="3"
           @iFIL-1.2,mCO0+089.0 Say "Cliente"         Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+118.2 Say "Glosa"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+146.9 Say "Mon"             Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+156.4 Say "Total"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+173.8 Say "A/C"             Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+188.3 Say "Saldo"           Font "&mLetAri",9 Style "BT"
      CASE mrEs="4"
           @iFIL-1.2,mCO0+089.0 Say "Cliente"         Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+118.2 Say "Glosa"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+146.9 Say "Mon"             Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+156.4 Say "Total"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+173.8 Say "A/C"             Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+188.3 Say "Saldo"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+204.5 Say "Letra"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+217.5 Say "Banco"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+228.2 Say "Cuenta"          Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+241.2 Say "OP/Ch"           Font "&mLetAri",9 Style "BT"
      OTHERWISE
           @iFIL-1.2,mCO0+089.0 Say "Cliente"         Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+118.2 Say "Glosa"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+158.4 Say "Mon"             Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+168.0 Say "Total"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+185.8 Say "A/C"             Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+199.5 Say "Saldo"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+216.5 Say "Letra"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+229.1 Say "Banco"           Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+239.5 Say "Cuenta"          Font "&mLetAri",9 Style "BT"
           @iFIL-1.2,mCO0+255.2 Say "OP/Ch"           Font "&mLetAri",9 Style "BT"
 ENDCASE
 @iFIL-4,mCO0+08 Get iFEC Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 @iFIL-4,mCO0+28 Get uFEC Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Lin_3552a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+019.4 TO pfIn, mcO0+019.4
 @ piNi, mcO0+022.0 TO pfIn, mcO0+022.0
 @ piNi, mcO0+037.8 TO pfIn, mcO0+037.8
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+051.0 TO pfIn, mcO0+051.0
           @ piNi, mcO0+064.2 TO pfIn, mcO0+064.2
           @ piNi, mcO0+077.4 TO pfIn, mcO0+077.4
           @ piNi, mcO0+088.2 TO pfIn, mcO0+088.2
           @ piNi, mcO0+117.4 TO pfIn, mcO0+117.4
           @ piNi, mcO0+146.3 TO pfIn, mcO0+146.3
           @ piNi, mcO0+152.0 TO pfIn, mcO0+152.0
           @ piNi, mcO0+168.0 TO pfIn, mcO0+168.0
           @ piNi, mcO0+183.9 TO pfIn, mcO0+183.9
      CASE mrEs="4"
           @ piNi, mcO0+051.0 TO pfIn, mcO0+051.0
           @ piNi, mcO0+064.2 TO pfIn, mcO0+064.2
           @ piNi, mcO0+077.4 TO pfIn, mcO0+077.4
           @ piNi, mcO0+088.2 TO pfIn, mcO0+088.2
           @ piNi, mcO0+117.4 TO pfIn, mcO0+117.4
           @ piNi, mcO0+146.3 TO pfIn, mcO0+146.3
           @ piNi, mcO0+152.0 TO pfIn, mcO0+152.0
           @ piNi, mcO0+168.0 TO pfIn, mcO0+168.0
           @ piNi, mcO0+183.9 TO pfIn, mcO0+183.9
           @ piNi, mcO0+200.0 TO pfIn, mcO0+200.0
           @ piNi, mcO0+215.7 TO pfIn, mcO0+215.7
           @ piNi, mcO0+226.8 TO pfIn, mcO0+226.8
           @ piNi, mcO0+237.8 TO pfIn, mcO0+237.8
      OTHERWISE
           @ piNi, mcO0+050.9 TO pfIn, mcO0+050.9
           @ piNi, mcO0+064.2 TO pfIn, mcO0+064.2
           @ piNi, mcO0+077.4 TO pfIn, mcO0+077.4
           @ piNi, mcO0+088.2 TO pfIn, mcO0+088.2
           @ piNi, mcO0+117.4 TO pfIn, mcO0+117.4
           @ piNi, mcO0+157.8 TO pfIn, mcO0+157.8
           @ piNi, mcO0+163.4 TO pfIn, mcO0+163.4
           @ piNi, mcO0+179.4 TO pfIn, mcO0+179.4
           @ piNi, mcO0+195.4 TO pfIn, mcO0+195.4
           @ piNi, mcO0+211.4 TO pfIn, mcO0+211.4
           @ piNi, mcO0+227.2 TO pfIn, mcO0+227.2
           @ piNi, mcO0+238.2 TO pfIn, mcO0+238.2
           @ piNi, mcO0+249.2 TO pfIn, mcO0+249.2
 ENDCASE
ENDPROC
*
PROCEDURE Li1_3552a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+003.6 TO pfIn, mcO0+003.6
 @ piNi, mcO0+008.5 TO pfIn, mcO0+008.5
 @ piNi, mcO0+027.0 TO pfIn, mcO0+027.0
 DO CASE
      CASE mrEs="3"
      CASE mrEs="4"
           @ piNi, mcO0+205.0 TO pfIn, mcO0+205.0
      OTHERWISE
           @ piNi, mcO0+216.4 TO pfIn, mcO0+216.4
 ENDCASE
ENDPROC
*
PROCEDURE Res_3552a
 DO p00_3552a WITH "1"
 IF mkEy=k_Esc
      EXIT
 ENDIF
 IF LEN(ALLTRIM(inUm))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3552b IN PCC3552B WITH "v", "c"
      SELECT teMporal
      DO seE_3552b IN PCC3552B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1tdo+ftM1ser+ftM1doc+STR(ftM1gru, 1, 0)+STR(ftM1caj, 2,  ;
              0)+ftM1sr1+ftM1num=vtDo+vsEr+vdOc+STR(vgRu, 1, 0)+STR(vcAj,  ;
              2, 0)+vsR1+vnUm
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3552b IN PCC3552B WITH "v", "i"
           DO muE_3552b IN PCC3552B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3552b IN PCC3552B WITH "i"
      DO paN_3552b IN PCC3552B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_3552b IN PCC3552B WITH "c", "v"
      DO seE_3552b IN PCC3552B WITH "v"
      DO toT_3552a
 ENDIF
ENDPROC
*
PROCEDURE Tot_3552a
ENDPROC
*
PROCEDURE Clp_3552a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3552a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta consulta muestra todos los Movimientos de Ventas del rango de Fechas"
 @ pfIl+01, 02 SAY "seleccionado y su forma de cancelación o pago a cuenta."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 18 SAY ":" STYLE "BT"
 @ pfIl+06, 18 SAY ":" STYLE "BT"
 @ pfIl+07, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+09, 02 SAY "FLECHA ABAJO" STYLE "BT"
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
 RELEASE vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vpAg,  ;
         vlIn, vtDo
 RELEASE itDo, utDo, ctDo, vsEr, isEr, usEr, csEr, vdOc, idOc, udOc, cdOc,  ;
         vgRu, igRu
 RELEASE ugRu, cgRu, vsR1, isR1, usR1, csR1, vnUm, inUm, unUm, cnUm, vsW0,  ;
         ifEc, ufEc
 RELEASE ciFe, chFe, vaNo, vmEs, vmOn, vnOm, vfEm, vgLo, vsRl, vlEt, vrCb,  ;
         vrC1, vfCa
 RELEASE vdAt, vnBa, vnCt, vcHe, vaCu, vtOt, vsLd
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
