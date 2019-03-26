 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SL1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SL2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
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
 INDEX ON ALLTRIM(ftM1ruc)+"*"+UPPER(ftM1nom)+ALLTRIM(ftM1cli)+"*" TAG ftM1ruc
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SLD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
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
 INDEX ON ALLTRIM(ftM2ruc)+"*"+UPPER(ftM2nom)+ftM2tdo+ftM2ser+ftM2doc TAG  ;
       ftM2ruc
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
 Use &mDBF Shared Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500FE2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM1RUC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2RUC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vtIp, veSt, vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs,  ;
        ufFs, ffFs
 PUBLIC cfFs, vcLi, icLi, ucLi, ccLi, vnOm, inOm, unOm, cnOm, vrUc, irUc,  ;
        urUc, crUc
 PUBLIC drUc, hrUc, tsL1, tsL2, vtDo, vsEr, vdOc, vtOt, vfEm, vmOn, vtOt, vsLd
 PUBLIC icLn, ucLn
 PUBLIC vpAn_11, vpAn_12
 STORE "1" TO vtIp
 STORE " " TO veSt
 STORE SPACE(04) TO icLi
 STORE SPACE(11) TO irUc
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 00 TO meRr
 DO p00_3559a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 STORE SPACE(04) TO icLi
 STORE SPACE(11) TO irUc
 STORE 00 TO tsL1, tsL2
 SELECT teMporal
 SET FILTER TO
 ZAP
 REINDEX
 SELECT teMporal_2
 SET FILTER TO
 ZAP
 REINDEX
 SELECT peNd_vtas
 STORE 99 TO mkEy
 STORE 01 TO meRr
 SET ORDER TO F3500FE2
 STORE 00 TO meRr
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 GOTO TOP
 SEEK veSt
 SET ESCAPE ON
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF() .AND. f3500est=veSt
      IF mkEy=k_Esc
           DO deL_files
           RETURN
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+f3500tdo+":"+f3500ser+ ;
           "-"+f3500doc+"..."+CHR(13)+CHR(13)+"Presionar ESC para Salir..."
      STORE f3500tdo TO vtDo
      STORE f3500ser TO vsEr
      STORE f3500doc TO vdOc
      STORE f3500ruc TO vrUc
      STORE f3500cli TO vcLi
      STORE f3500nom TO vnOm
      STORE f3500fem TO vfEm
      STORE f3500mon TO vmOn
      STORE f3500tot TO vtOt
      STORE f3500tot-f3500acu TO vsLd
      SELECT clIentes
      SEEK vcLi
      IF  .NOT. EOF()
           STORE f1101ruc TO vrUc
           IF LEN(ALLTRIM(vrUc))=0
                STORE f1101ele TO vrUc
           ENDIF
      ENDIF
      DO CASE
           CASE LEN(ALLTRIM(vcLi))=0 .AND. LEN(ALLTRIM(vrUc))=0
                STORE "****" TO vrUc, vcLi
           CASE LEN(ALLTRIM(vrUc))=0
                STORE vcLi TO vrUc
      ENDCASE
      SELECT teMporal
      SEEK ALLTRIM(vrUc)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM1ruc WITH vrUc
           REPLACE ftM1cli WITH vcLi
           IF vcLi="****"
                REPLACE ftM1nom WITH "Clientes Varios"
           ELSE
                REPLACE ftM1nom WITH vnOm
           ENDIF
           REPLACE ftM1sl1 WITH 0
           REPLACE ftM1sl2 WITH 0
      ENDIF
      DO CASE
           CASE (vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3") .AND. vmOn=1
                REPLACE ftM1sl1 WITH ftM1sl1-vsLd
                STORE tsL1-vsLd TO tsL1
           CASE vmOn=1
                REPLACE ftM1sl1 WITH ftM1sl1+vsLd
                STORE tsL1+vsLd TO tsL1
           CASE (vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3") .AND. vmOn=2
                REPLACE ftM1sl2 WITH ftM1sl2-vsLd
                STORE tsL2-vsLd TO tsL2
           CASE vmOn=2
                REPLACE ftM1sl2 WITH ftM1sl2+vsLd
                STORE tsL2+vsLd TO tsL2
      ENDCASE
      SELECT teMporal_2
      APPEND BLANK
      REPLACE ftM2ruc WITH vrUc
      REPLACE ftM2cli WITH vcLi
      REPLACE ftM2nom WITH vnOm
      REPLACE ftM2tdo WITH vtDo
      REPLACE ftM2ser WITH vsEr
      REPLACE ftM2doc WITH vdOc
      REPLACE ftM2fem WITH vfEm
      REPLACE ftM2mon WITH vmOn
      REPLACE ftM2tot WITH vtOt
      REPLACE ftM2sld WITH vsLd
      SELECT peNd_vtas
      SKIP
 ENDDO
 SELECT teMporal_2
 SUM ftM2sld TO tsL1 FOR ftM2mon=1
 SUM ftM2sld TO tsL2 FOR ftM2mon=2
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 STORE 99 TO mkEy
 SELECT teMporal
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      DO poNmsj
      = INKEY(0.05)
 ELSE
      DO coLsc6
      @fFIL+1.6,mCO0+082.4 Say tSL1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
      @fFIL+1.6,mCO0+105.8 Say tSL2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
      DO pcC3559b
 ENDIF
 STORE 99 TO mkEy
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Lin_3559a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+016.4 TO pfIn, mcO0+016.4
 @ piNi, mcO0+024.4 TO pfIn, mcO0+024.4
 @ piNi, mcO0+084.1 TO pfIn, mcO0+084.1
 @ piNi, mcO0+105.1 TO pfIn, mcO0+105.1
ENDPROC
*
PROCEDURE P00_3559a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 42 TO muFi
 STORE 126 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+0.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+1.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+01.3 TO ifFs, ufFs, vfFs
 STORE ifFs+(INT(muFi)-5) TO ffFs
 STORE mcO0 TO icLn
 STORE mcO0+125.7 TO ucLn
 DO tiT_0000a WITH "Cuentas x Cobrar x RUC"
 DO coLsc1
 SAVE SCREEN TO vpAn_12
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,224,226,209)
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.2, mcO0 TO ffIl+1.2, mcO0+muCo
 DO liN_3559a WITH ifIl-1.3, ffIl+1.1
 DO coLblz
 @ ffIl+1.2, mcO0+078.5 TO ffIl+2.8, mcO0+100.7 PATTERN 1 COLOR SCHEME 6
 @ ffIl+1.2, mcO0+100.5 TO ffIl+2.8, mcO0+124.1 PATTERN 1 COLOR SCHEME 6
 @iFIL-1.3,mCO0       Say "RUC"       Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+017.2 Say "Codig"     Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+025.0 Say "Cliente"   Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+094.1 Say "Saldo S/." Font "&mLetAri",9 Style "BT"
 @iFIL-1.3,mCO0+113.8 Say "Saldo US$" Font "&mLetAri",9 Style "BT"
 DO coLsc6
 @fFIL+1.6,mCO0+079.8 Say "S/."       Font "&mLetAri",9 Style "BQ"
 @fFIL+1.6,mCO0+101.4 Say "US$"       Font "&mLetAri",9 Style "BQ"
 @fFIL+1.6,mCO0+082.4 Say tSL1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
 @fFIL+1.6,mCO0+105.8 Say tSL2        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,16.9
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS21", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 RELEASE vtIp, veSt, vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs,  ;
         ufFs, ffFs
 RELEASE cfFs, vcLi, icLi, ucLi, ccLi, vnOm, inOm, unOm, cnOm, vrUc, irUc,  ;
         urUc, crUc
 RELEASE drUc, hrUc, tsL1, tsL2, vtDo, vsEr, vdOc, vtOt, vnTt, vfEm, vmOn,  ;
         vtOt, vsLd
 RELEASE icLn, ucLn
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
