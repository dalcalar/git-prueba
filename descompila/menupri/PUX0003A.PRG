 SET CENTURY ON
 PUBLIC vtAb
 STORE 20 TO muFi
 STORE 100 TO muCo
 DO p00_0003a
 ON SELECTION BAR 1 OF vtAb DO TOD_0003A
 ON SELECTION BAR 2 OF vtAb DO CIC_0003A
 ON SELECTION BAR 3 OF vtAb DO CID_0003A
 ON SELECTION BAR 4 OF vtAb DO CSC_0003A
 ON SELECTION BAR 5 OF vtAb DO CSD_0003A
 ON SELECTION BAR 6 OF vtAb DO BIC_0003A
 ON SELECTION BAR 7 OF vtAb DO BID_0003A
 ON SELECTION BAR 8 OF vtAb DO BSC_0003A
 ON SELECTION BAR 9 OF vtAb DO BSD_0003A
 ON SELECTION BAR 10 OF vtAb DO NOC_0003A
 ON SELECTION BAR 11 OF vtAb DO NOD_0003A
 ON SELECTION BAR 12 OF vtAb DO LET_0003A
 ON SELECTION BAR 13 OF vtAb DO LED_0003A
 ON SELECTION BAR 14 OF vtAb DO LEP_0003A
 ON SELECTION BAR 15 OF vtAb DO CR1_0003A
 ON SELECTION BAR 16 OF vtAb DO CR2_0003A
 ON SELECTION BAR 17 OF vtAb DO CR3_0003A
 ON SELECTION BAR 18 OF vtAb DO CR4_0003A
 ON SELECTION BAR 19 OF vtAb DO CR5_0003A
 ON SELECTION BAR 20 OF vtAb DO CR6_0003A
 ON SELECTION BAR 21 OF vtAb DO SP1_0003A
 ON SELECTION BAR 22 OF vtAb DO SP2_0003A
 ON SELECTION BAR 23 OF vtAb DO SP3_0003A
 ON SELECTION BAR 24 OF vtAb DO SP4_0003A
 ON SELECTION BAR 25 OF vtAb DO SP5_0003A
 STORE 99 TO mkEy
 ACTIVATE POPUP vtAb
 RELEASE POPUPS vtAb
 STORE 99 TO mkEy
 RETURN
ENDPROC
*
PROCEDURE Tod_0003a
 DO td1_0003a
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Td1_0003a
 DO ciC_0003a IN PUX0003A
 DO ciD_0003a IN PUX0003A
 DO csC_0003a IN PUX0003A
 DO csD_0003a IN PUX0003A
 DO biC_0003a IN PUX0003A
 DO biD_0003a IN PUX0003A
 DO bsC_0003a IN PUX0003A
 DO bsD_0003a IN PUX0003A
 DO noC_0003a IN PUX0003A
 DO noD_0003a IN PUX0003A
 DO leT_0003a IN PUX0003A
 DO leD_0003a IN PUX0003A
 DO leP_0003a IN PUX0003A
 DO cr1_0003a IN PUX0003A
 DO cr2_0003a IN PUX0003A
 DO cr3_0003a IN PUX0003A
 DO cr4_0003a IN PUX0003A
 DO cr5_0003a IN PUX0003A
 DO cr6_0003a IN PUX0003A
 DO sp1_0003a IN PUX0003A
 DO sp2_0003a IN PUX0003A
 DO sp3_0003a IN PUX0003A
 DO sp4_0003a IN PUX0003A
 DO sp5_0003a IN PUX0003A
ENDPROC
*
PROCEDURE CIC_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3510", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Ingresos a Caja..."
      DO taB_caj_ingresos
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Ingresos a Caja..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3510ano))=0 .OR. LEN(ALLTRIM(f3510mes))=0 .OR.  ;
        LEN(ALLTRIM(f3510ser))=0 .OR. LEN(ALLTRIM(f3510num))=0
 PACK
 INDEX ON SUBSTR(DTOC(f3510dat), 7, 4)+SUBSTR(DTOC(f3510dat), 4, 2)+ ;
       SUBSTR(DTOC(f3510dat), 1, 2)+f3510ano+f3510mes+f3510ser+f3510num  ;
       TAG f3510dat
 INDEX ON f3510ano+f3510mes+f3510dia+f3510ser+f3510num TAG f3510fem
 INDEX ON f3510rcb+f3510ano+f3510mes+f3510ser+f3510num TAG f3510rcb
 INDEX ON f3510srl+f3510let+f3510ano+f3510mes+f3510ser+f3510num TAG f3510let
 INDEX ON UPPER(f3510glo)+f3510ano+f3510mes+f3510ser+f3510num TAG f3510glo
 INDEX ON f3510est+f3510ano+f3510mes+f3510ser+f3510num TAG f3510est
 INDEX ON UPPER(f3510nti)+f3510ano+f3510mes+f3510ser+f3510num TAG f3510nti
 INDEX ON f3510ano+f3510mes+f3510ser+f3510num TAG f3510num
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE CID_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3511", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Ingresos a Caja..."
      PUBLIC afIl, x
      DIMENSION afIl[14, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3511ANO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511MES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511NUM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511PAG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F3511RCB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511MPA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3511MPS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3511SPE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3511NPE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Ingresos a Caja..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3511ano))=0 .OR. LEN(ALLTRIM(f3511mes))=0 .OR.  ;
        LEN(ALLTRIM(f3511ser))=0 .OR. LEN(ALLTRIM(f3511num))=0
 PACK
 INDEX ON f3511rcb+f3511ano+f3511mes+f3511ser+f3511num+f3511tdo+f3511sr1+ ;
       f3511doc TAG f3511rcb
 INDEX ON f3511tdo+f3511sr1+f3511doc+f3511ano+f3511mes+f3511ser+f3511num  ;
       TAG f3511doc
 INDEX ON f3511tdo+f3511sr1+doC+f3511ano+f3511mes+f3511ser+f3511num TAG doC
 INDEX ON f3511ano+f3511mes+f3511ser+f3511num+f3511tdo+f3511sr1+f3511doc  ;
       TAG f3511num
 INDEX ON f3511ano+f3511mes+f3511tdo+f3511sr1+f3511doc+f3511ser+f3511num  ;
       TAG f3511fem
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE CSC_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3520", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Salidas de Caja..."
      DO taB_caj_salidas
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Salidas de Caja..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3520ano))=0 .OR. LEN(ALLTRIM(f3520mes))=0 .OR.  ;
        LEN(ALLTRIM(f3520ser))=0 .OR. LEN(ALLTRIM(f3520num))=0
 PACK
 INDEX ON f3520ano+f3520mes+f3520dia+f3520ser+f3520num TAG f3520fem
 INDEX ON f3520rcb+f3520ano+f3520mes+f3520ser+f3520num TAG f3520rcb
 INDEX ON f3520srl+f3520let+f3520ano+f3520mes+f3520ser+f3520num TAG f3520let
 INDEX ON UPPER(f3520glo)+f3520ano+f3520mes+f3520ser+f3520num TAG f3520glo
 INDEX ON f3520est+f3520ano+f3520mes+f3520ser+f3520num TAG f3520est
 INDEX ON UPPER(f3520nti)+f3520ano+f3520mes+f3520ser+f3520num TAG f3520nti
 INDEX ON f3520ano+f3520mes+f3520ser+f3520num TAG f3520num
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE CSD_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3521", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Salidas de Caja..."
      PUBLIC afIl, x
      DIMENSION afIl[9, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3521ANO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3521MES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3521SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3521NUM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3521TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3521SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3521DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3521RCB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3521PAG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Salidas de Caja..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3521ano))=0 .OR. LEN(ALLTRIM(f3521mes))=0 .OR.  ;
        LEN(ALLTRIM(f3521ser))=0 .OR. LEN(ALLTRIM(f3521num))=0
 PACK
 INDEX ON f3521tdo+f3521sr1+f3521doc+f3521ano+f3521mes+f3521ser+f3521num  ;
       TAG f3521doc
 INDEX ON f3521ano+f3521mes+f3521ser+f3521num+f3521tdo+f3521sr1+f3521doc  ;
       TAG f3521num
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE BIC_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3530", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Ingresos a Bancos..."
      DO taB_ban_ingresos
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Ingresos a Bancos..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3530ano))=0 .OR. LEN(ALLTRIM(f3530mes))=0 .OR.  ;
        LEN(ALLTRIM(f3530ser))=0 .OR. LEN(ALLTRIM(f3530num))=0
 PACK
 INDEX ON SUBSTR(DTOC(f3530dat), 7, 4)+SUBSTR(DTOC(f3530dat), 4, 2)+ ;
       SUBSTR(DTOC(f3530dat), 1, 2)+f3530ano+f3530mes+f3530ser+f3530num  ;
       TAG f3530dat
 INDEX ON f3530ban+f3530cta+f3530ano+f3530mes+f3530dia+f3530tip+ ;
       STR(VAL(ALLTRIM(f3530che)), 20, 0)+f3530ser+f3530num TAG f3530ban
 INDEX ON f3530ano+f3530mes+f3530dia+f3530ser+f3530num TAG f3530fem
 INDEX ON f3530rcb+f3530ano+f3530mes+f3530ser+f3530num TAG f3530rcb
 INDEX ON UPPER(f3530glo)+f3530ano+f3530mes+f3530ser+f3530num TAG f3530glo
 INDEX ON f3530est+f3530ano+f3530mes+f3530ser+f3530num TAG f3530est
 INDEX ON UPPER(f3530nti)+f3530ano+f3530mes+f3530ser+f3530num TAG f3530nti
 INDEX ON STR(f3530tpo, 1, 0)+f3530ano+f3530mes+f3530ser+f3530num TAG f3530tpo
 INDEX ON f3530ano+f3530mes+f3530ser+f3530num TAG f3530num
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE BID_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3531", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Ingresos a Bancos..."
      PUBLIC afIl, x
      DIMENSION afIl[14, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3531ANO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531MES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531NUM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531PAG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F3531RCB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531MPA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3531MPS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3531SPE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3531NPE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Ingresos a Bancos..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3531ano))=0 .OR. LEN(ALLTRIM(f3531mes))=0 .OR.  ;
        LEN(ALLTRIM(f3531ser))=0 .OR. LEN(ALLTRIM(f3531num))=0
 PACK
 INDEX ON f3531tdo+f3531sr1+f3531doc+f3531ano+f3531mes+f3531ser+f3531num  ;
       TAG f3531doc
 INDEX ON f3531tdo+f3531sr1+doC+f3531ano+f3531mes+f3531ser+f3531num TAG doC
 INDEX ON f3531ano+f3531mes+f3531ser+f3531num+f3531tdo+f3531sr1+f3531doc  ;
       TAG f3531num
 INDEX ON f3531ano+f3531mes+f3531tdo+f3531sr1+f3531doc+f3531ser+f3531num  ;
       TAG f3531fem
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE BSC_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3540", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Salidas de Bancos..."
      DO taB_ban_salidas
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cabecera de Salidas de Bancos..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3540ano))=0 .OR. LEN(ALLTRIM(f3540mes))=0 .OR.  ;
        LEN(ALLTRIM(f3540ser))=0 .OR. LEN(ALLTRIM(f3540num))=0
 PACK
 INDEX ON f3540ano+f3540mes+f3540dia+f3540ser+f3540num TAG f3540fem
 INDEX ON f3540rcb+f3540ano+f3540mes+f3540ser+f3540num TAG f3540rcb
 INDEX ON UPPER(f3540glo)+f3540ano+f3540mes+f3540ser+f3540num TAG f3540glo
 INDEX ON f3540est+f3540ano+f3540mes+f3540ser+f3540num TAG f3540est
 INDEX ON UPPER(f3540nti)+f3540ano+f3540mes+f3540ser+f3540num TAG f3540nti
 INDEX ON STR(f3540tpo, 1, 0)+f3540ano+f3540mes+f3540ser+f3540num TAG f3540tpo
 INDEX ON f3540ban+f3540cta+f3540ano+f3540mes+f3540ser+f3540num TAG f3540ban
 INDEX ON f3540ano+f3540mes+f3540ser+f3540num TAG f3540num
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE BSD_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3541", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Salidas de Bancos..."
      PUBLIC afIl, x
      DIMENSION afIl[9, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3541ANO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3541MES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3541SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3541NUM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3541TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3541SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3541DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3541PAG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 15
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F3541RCB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Salidas de Bancos..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3541ano))=0 .OR. LEN(ALLTRIM(f3541mes))=0 .OR.  ;
        LEN(ALLTRIM(f3541ser))=0 .OR. LEN(ALLTRIM(f3541num))=0
 PACK
 INDEX ON f3541tdo+f3541sr1+f3541doc+f3541ano+f3541mes+f3541ser+f3541num  ;
       TAG f3541doc
 INDEX ON f3541ano+f3541mes+f3541ser+f3541num+f3541tdo+f3541sr1+f3541doc  ;
       TAG f3541num
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE NoC_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3610", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Cabecera de Notas de Débito/Crédito..."
      DO taB_notas
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Cabecera de Notas de Débito y Crédito..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3610tdo))=0 .OR. LEN(ALLTRIM(f3610ser))=0 .OR.  ;
        LEN(ALLTRIM(f3610doc))=0
 PACK
 INDEX ON SUBSTR(DTOC(f3610fem), 7, 4)+SUBSTR(DTOC(f3610fem), 4, 2)+ ;
       SUBSTR(DTOC(f3610fem), 1, 2)+f3610tdo+f3610ser+f3610doc TAG f3610fem
 INDEX ON SUBSTR(DTOC(f3610dat), 7, 4)+SUBSTR(DTOC(f3610dat), 4, 2)+ ;
       SUBSTR(DTOC(f3610dat), 1, 2)+f3610tdo+f3610ser+f3610doc TAG f3610dat
 INDEX ON f3610ven+f3610tdo+f3610ser+f3610doc TAG f3610ven
 INDEX ON UPPER(f3610nom)+f3610tdo+f3610ser+f3610doc TAG f3610nom
 INDEX ON f3610tit+f3610tdo+f3610ser+f3610doc TAG f3610tit
 INDEX ON ALLTRIM(f3610ruc)+"*"+f3610tdo+f3610ser+f3610doc TAG f3610ruc
 INDEX ON ALLTRIM(f3610ele)+"*"+f3610tdo+f3610ser+f3610doc TAG f3610ele
 INDEX ON f3610tdo+f3610ser+f3610doc TAG f3610doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE NoD_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3611", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Detalle de Notas de Débito/Crédito..."
      PUBLIC afIl, x
      DIMENSION afIl[15, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3611TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 15
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 120
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611CUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611NUV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611CAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F3611PRE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3611TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3611TD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611DO1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3611FE1"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Detalle de Notas de Débito y Crédito..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3611tdo))=0 .OR. LEN(ALLTRIM(f3611ser))=0 .OR.  ;
        LEN(ALLTRIM(f3611doc))=0
 PACK
 INDEX ON f3611tdo+f3611ser+f3611doc+STR(f3611ite, 2, 0) TAG f3611doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Let_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3110", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Letras por Cobrar..."
      DO taB_letras_cli
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Letras por Cobrar..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3110ser))=0 .OR. LEN(ALLTRIM(f3110let))=0
 PACK
 INDEX ON UPPER(f3110nom)+f3110ser+f3110let TAG f3110nom
 INDEX ON ALLTRIM(UPPER(f3110le1))+"*"+f3110ser+f3110let TAG f3110le1
 INDEX ON ALLTRIM(UPPER(f3110ref))+"*"+f3110ser+f3110let TAG f3110ref
 INDEX ON ALLTRIM(UPPER(f3110com))+"*"+f3110ser+f3110let TAG f3110com
 INDEX ON SUBSTR(DTOC(f3110fem), 7, 4)+SUBSTR(DTOC(f3110fem), 4, 2)+ ;
       SUBSTR(DTOC(f3110fem), 1, 2)+f3110ser+f3110let TAG f3110fem
 INDEX ON SUBSTR(DTOC(f3110fve), 7, 4)+SUBSTR(DTOC(f3110fve), 4, 2)+ ;
       SUBSTR(DTOC(f3110fve), 1, 2)+f3110ser+f3110let TAG f3110fve
 INDEX ON SUBSTR(DTOC(f3110dat), 7, 4)+SUBSTR(DTOC(f3110dat), 4, 2)+ ;
       SUBSTR(DTOC(f3110dat), 1, 2)+f3110ser+f3110let TAG f3110dat
 INDEX ON f3110ven+f3110ser+f3110let TAG f3110vle
 INDEX ON f3110ven+UPPER(f3110nom)+f3110ser+f3110let TAG f3110vno
 INDEX ON f3110ven+ALLTRIM(UPPER(f3110le1))+"*"+f3110ser+f3110let TAG f3110vl2
 INDEX ON f3110ven+ALLTRIM(UPPER(f3110ref))+"*"+f3110ser+f3110let TAG f3110vre
 INDEX ON f3110ven+ALLTRIM(UPPER(f3110com))+"*"+f3110ser+f3110let TAG f3110vco
 INDEX ON f3110ven+SUBSTR(DTOC(f3110fem), 7, 4)+SUBSTR(DTOC(f3110fem), 4,  ;
       2)+SUBSTR(DTOC(f3110fem), 1, 2)+f3110ser+f3110let TAG f3110vfe
 INDEX ON f3110ven+SUBSTR(DTOC(f3110fve), 7, 4)+SUBSTR(DTOC(f3110fve), 4,  ;
       2)+SUBSTR(DTOC(f3110fve), 1, 2)+f3110ser+f3110let TAG f3110vfv
 INDEX ON f3110ser+f3110let TAG f3110let
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE LeD_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3111", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Letras por Cobrar..."
      PUBLIC afIl, x
      DIMENSION afIl[20, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3111SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3111LSE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LNU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111MND"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111TO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3111LS1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LS2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LS3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LN3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LS4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3111LN4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Detalle de Letras por Cobrar..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3111ser))=0 .OR. LEN(ALLTRIM(f3111let))=0
 PACK
 INDEX ON f3111ser+f3111let+f3111tdo+f3111ser+f3111doc TAG f3111let
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE LeP_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3210", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Letras por Cobrar..."
      DO taB_letras_prv
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Letras por Cobrar..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3210ser))=0 .OR. LEN(ALLTRIM(f3210let))=0
 PACK
 INDEX ON UPPER(f3210nom)+f3210ser+f3210let TAG f3210nom
 INDEX ON SUBSTR(DTOC(f3210fem), 7, 4)+SUBSTR(DTOC(f3210fem), 4, 2)+ ;
       SUBSTR(DTOC(f3210fem), 1, 2)+f3210ser+f3210let TAG f3210fem
 INDEX ON SUBSTR(DTOC(f3210fem), 7, 4)+SUBSTR(DTOC(f3210fem), 4, 2)+ ;
       SUBSTR(DTOC(f3210fem), 1, 2)+f3210ser+f3210let TAG f3210fem
 INDEX ON SUBSTR(DTOC(f3210fve), 7, 4)+SUBSTR(DTOC(f3210fve), 4, 2)+ ;
       SUBSTR(DTOC(f3210fve), 1, 2)+f3210ser+f3210let TAG f3210fve
 INDEX ON ALLTRIM(UPPER(f3210le1))+"*"+f3210ser+f3210let TAG f3210le1
 INDEX ON ALLTRIM(UPPER(f3210ref))+"*"+f3210ser+f3210let TAG f3210ref
 INDEX ON ALLTRIM(UPPER(f3210com))+"*"+f3210ser+f3210let TAG f3210com
 INDEX ON f3210ser+f3210let TAG f3210let
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cr1_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3500", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cargos de Ventas..."
      DO taB_cargos_cli
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cargos de Ventas..."
 DO abB_0000a IN PUX0000A
 INDEX ON f3500est+f3500tdo+f3500ser+f3500doc TAG f3500pen
 INDEX ON f3500est+SUBSTR(DTOC(f3500fem), 7, 4)+SUBSTR(DTOC(f3500fem), 4,  ;
       2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500fe2
 INDEX ON f3500est+SUBSTR(DTOC(f3500fve), 7, 4)+SUBSTR(DTOC(f3500fve), 4,  ;
       2)+SUBSTR(DTOC(f3500fve), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500fv2
 INDEX ON f3500est+UPPER(f3500nom)+f3500cli+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500no2
 INDEX ON f3500est+UPPER(f3500nti)+f3500tit+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nt2
 INDEX ON f3500est+UPPER(f3500nve)+f3500ven+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nv2
 INDEX ON f3500est+STR(f3500mon, 1, 0)+STRTRAN(STR(f3500tot+f3500int- ;
       f3500acu, 12, 2), " ", "0")+f3500tdo+f3500ser+f3500doc TAG f3500pto
 INDEX ON SUBSTR(DTOC(f3500fem), 7, 4)+SUBSTR(DTOC(f3500fem), 4, 2)+ ;
       SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500fem
 INDEX ON SUBSTR(DTOC(f3500fve), 7, 4)+SUBSTR(DTOC(f3500fve), 4, 2)+ ;
       SUBSTR(DTOC(f3500fve), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500fve
 INDEX ON UPPER(f3500nom)+f3500cli+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nom
 INDEX ON UPPER(f3500nti)+f3500tit+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nti
 INDEX ON UPPER(f3500nve)+f3500ven+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500nve
 INDEX ON STR(f3500mon, 1, 0)+STRTRAN(STR(f3500tot+f3500int-f3500acu, 12,  ;
       2), " ", "0")+f3500tdo+f3500ser+f3500doc TAG f3500tot
 INDEX ON f3500est+f3500tcl+f3500tit+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500tcl
 INDEX ON f3500tdo+f3500ser+doC TAG doC
 INDEX ON f3500ven+SUBSTR(DTOC(f3500fem), 7, 4)+SUBSTR(DTOC(f3500fem), 4,  ;
       2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500ven
 INDEX ON f3500ven+SUBSTR(DTOC(f3500fca), 7, 4)+SUBSTR(DTOC(f3500fca), 4,  ;
       2)+SUBSTR(DTOC(f3500fca), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500vfc
 INDEX ON f3500est+f3500tcl+f3500tit+f3500ven+SUBSTR(DTOC(f3500fem), 7,  ;
       4)+SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+ ;
       f3500tdo+f3500ser+f3500doc TAG f3500tc1
 INDEX ON f3500est+f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500tc2
 INDEX ON f3500est+f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+f3500tit+ ;
       f3500ven+SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+ ;
       f3500tdo+f3500ser+f3500doc TAG f3500tc3
 INDEX ON f3500est+f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tit+ ;
       f3500tdo+f3500ser+f3500doc TAG f3500tc4
 INDEX ON f3500est+f3500tit+SUBSTR(DTOC(f3500fem), 7, 4)+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500ti1
 INDEX ON f3500est+f3500tit+SUBSTR(DTOC(f3500fve), 7, 4)+ ;
       SUBSTR(DTOC(f3500fve), 4, 2)+SUBSTR(DTOC(f3500fve), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500ti2
 INDEX ON f3500est+f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+f3500ven+ ;
       SUBSTR(DTOC(f3500fem), 4, 2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+ ;
       f3500ser+f3500doc TAG f3500tc5
 INDEX ON f3500tcl+SUBSTR(DTOC(f3500fem), 7, 4)+SUBSTR(DTOC(f3500fem), 4,  ;
       2)+SUBSTR(DTOC(f3500fem), 1, 2)+f3500tdo+f3500ser+f3500doc TAG f3500tc6
 INDEX ON f3500tdo+f3500ser+f3500doc TAG f3500doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cr2_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3501", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cuentas x Cobrar Iniciales..."
      PUBLIC afIl, x
      DIMENSION afIl[23, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3501TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501VEN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501NVE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501TIT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501CLI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501SUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 11
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501TCL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501NTC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501FPA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501NFP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501FVE"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501PIG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3501MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3501TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3501ACU"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3501INT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3501COM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cuentas x Cobrar iniciales..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3501tdo))=0 .OR. LEN(ALLTRIM(f3501ser))=0 .OR.  ;
        LEN(ALLTRIM(f3501doc))=0
 PACK
 INDEX ON f3501tdo+f3501ser+f3501doc TAG f3501doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cr3_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3502", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cuentas x Cobrar Totales..."
      PUBLIC afIl, x
      DIMENSION afIl[8, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3502TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3502SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3502TO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3502IN1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3502AC1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3502TO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3502IN2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3502AC2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cuentas x Cobrar Totales..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3502tdo))=0 .OR. LEN(ALLTRIM(f3502ser))=0
 PACK
 INDEX ON f3502tdo+f3502ser TAG f3502tdo
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cr4_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3600", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cargos de Compras..."
      DO taB_cargos_prv
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cargos de Compras..."
 DO abB_0000a IN PUX0000A
 INDEX ON f3600est+SUBSTR(DTOC(f3600fem), 7, 4)+SUBSTR(DTOC(f3600fem), 4,  ;
       2)+SUBSTR(DTOC(f3600fem), 1, 2)+f3600tdo+f3600ser+f3600doc TAG f3600fe2
 INDEX ON f3600est+f3600tdo+f3600ser+f3600doc TAG f3600pen
 INDEX ON SUBSTR(DTOC(f3600fem), 7, 4)+SUBSTR(DTOC(f3600fem), 4, 2)+ ;
       SUBSTR(DTOC(f3600fem), 1, 2)+f3600tdo+f3600ser+f3600doc TAG f3600fem
 INDEX ON SUBSTR(DTOC(f3600fve), 7, 4)+SUBSTR(DTOC(f3600fve), 4, 2)+ ;
       SUBSTR(DTOC(f3600fve), 1, 2)+f3600tdo+f3600ser+f3600doc TAG f3600fve
 INDEX ON UPPER(f3600nom)+f3600prv+SUBSTR(DTOC(f3600fem), 7, 4)+ ;
       SUBSTR(DTOC(f3600fem), 4, 2)+SUBSTR(DTOC(f3600fem), 1, 2)+f3600tdo+ ;
       f3600ser+f3600doc TAG f3600nom
 INDEX ON f3600ped+f3600tdo+f3600ser+f3600doc TAG f3600ped
 INDEX ON f3600td1+f3600sr1+f3600do1+f3600tdo+f3600ser+f3600doc TAG f3600fac
 INDEX ON STR(f3600mon, 1, 0)+STRTRAN(STR(f3600tot-f3600acu, 12, 2), " ",  ;
       "0")+f3600tdo+f3600ser+f3600doc TAG f3600tot
 INDEX ON f3600est+f3600tpr+f3600prv+SUBSTR(DTOC(f3600fem), 7, 4)+ ;
       SUBSTR(DTOC(f3600fem), 4, 2)+SUBSTR(DTOC(f3600fem), 1, 2)+f3600tdo+ ;
       f3600ser+f3600doc TAG f3600tpr
 INDEX ON f3600est+ALLTRIM(f3600pla)+"*"+f3600tdo+f3600ser+f3600doc TAG  ;
       f3600pla
 INDEX ON f3600est+SUBSTR(DTOC(f3600fve), 7, 4)+SUBSTR(DTOC(f3600fve), 4,  ;
       2)+SUBSTR(DTOC(f3600fve), 1, 2)+f3600tdo+f3600ser+f3600doc TAG f3600fv2
 INDEX ON f3600est+UPPER(f3600nom)+f3600prv+SUBSTR(DTOC(f3600fem), 7, 4)+ ;
       SUBSTR(DTOC(f3600fem), 4, 2)+SUBSTR(DTOC(f3600fem), 1, 2)+f3600tdo+ ;
       f3600ser+f3600doc TAG f3600no2
 INDEX ON f3600est+f3600ped+f3600tdo+f3600ser+f3600doc TAG f3600pd2
 INDEX ON f3600est+f3600td1+f3600sr1+f3600do1+f3600tdo+f3600ser+f3600doc  ;
       TAG f3600fa2
 INDEX ON f3600est+STR(f3600mon, 1, 0)+STRTRAN(STR(f3600tot-f3600acu, 12,  ;
       2), " ", "0")+f3600tdo+f3600ser+f3600doc TAG f3600pto
 INDEX ON f3600tdo+f3600ser+f3600doc TAG f3600doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cr5_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3601", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cuentas x Pagar Iniciales..."
      PUBLIC afIl, x
      DIMENSION afIl[20, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3601TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601TD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601DO1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601PRV"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601SUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 11
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601TPR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601NTP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601FPA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601NFP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601FVE"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601PIG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3601MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3601TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3601ACU"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cuentas x Pagar iniciales..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3601tdo))=0 .OR. LEN(ALLTRIM(f3601ser))=0 .OR.  ;
        LEN(ALLTRIM(f3601doc))=0
 PACK
 INDEX ON f3601tdo+f3601ser+f3601doc TAG f3601doc
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cr6_0003a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "3602", "C"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cuentas x Pagar Totales..."
      PUBLIC afIl, x
      DIMENSION afIl[8, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3602TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3602SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3602TO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3602IN1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3602AC1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3602TO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3602IN2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3602AC2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cuentas x Pagar Totales..."
 DO abB_0000a IN PUX0000A
 DELETE FOR LEN(ALLTRIM(f3602tdo))=0 .OR. LEN(ALLTRIM(f3602ser))=0
 PACK
 INDEX ON f3602tdo+f3602ser TAG f3602tdo
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Sp1_0003a
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1 TO mdBf
 ELSE
      STORE muN1+":"+mpT1 TO mdBf
 ENDIF
 If .not.Directory("&mDBF")
      MD &mDBF
 ENDIF
 STORE 99 TO mkEy
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"CTASXCOB"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"CTASXCOB"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Pase SPT de Cuentas x Cobrar..."
      PUBLIC afIl, x
      DIMENSION afIl[11, 4]
      STORE 1 TO x
      afIl[x, 1] = "F3500TIT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3500TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3500SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3500DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3500NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3500FEM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3500MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F3500TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3500ACU"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F3500SLD"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "PAGO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
ENDPROC
*
PROCEDURE Sp2_0003a
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1 TO mdBf
 ELSE
      STORE muN1+":"+mpT1 TO mdBf
 ENDIF
 If .not.Directory("&mDBF")
      MD &mDBF
 ENDIF
 STORE 99 TO mkEy
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"CLIENTES"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"CLIENTES"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Pase SPT de Clientes..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F1101CLI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F1101NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
ENDPROC
*
PROCEDURE Sp3_0003a
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1 TO mdBf
 ELSE
      STORE muN1+":"+mpT1 TO mdBf
 ENDIF
 If .not.Directory("&mDBF")
      MD &mDBF
 ENDIF
 STORE 99 TO mkEy
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"NUMREC"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"NUMREC"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Pase SPT de Numeracion..."
      PUBLIC afIl, x
      DIMENSION afIl[1, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9999NUM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
ENDPROC
*
PROCEDURE Sp4_0003a
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1 TO mdBf
 ELSE
      STORE muN1+":"+mpT1 TO mdBf
 ENDIF
 If .not.Directory("&mDBF")
      MD &mDBF
 ENDIF
 STORE 99 TO mkEy
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"RECCAB"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"RECCAB"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Pase SPT de Cabecera de Recibos..."
      PUBLIC afIl, x
      DIMENSION afIl[12, 4]
      STORE 1 TO x
      afIl[x, 1] = "RECIBO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TIT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "FECHA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "MONEDA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TIPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "BANCO_COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "BANCO_NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "BOLETA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "FECHA_PRES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TCA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "TOTAL"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "COPIAS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"RECDET"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"RECDET"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Pase SPT de Detalle de Recibos..."
      PUBLIC afIl, x
      DIMENSION afIl[6, 4]
      STORE 1 TO x
      afIl[x, 1] = "RECIBO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "PAG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"TMPDET"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"TMPDET"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo Temporal de Pase SPT de Detalle de Recibos..."
      PUBLIC afIl, x
      DIMENSION afIl[9, 4]
      STORE 1 TO x
      afIl[x, 1] = "TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "ACU"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "PAG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RECIBO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"TMPCOP"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"TMPCOP"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo Temporal de Pase SPT de Copia de Recibos..."
      PUBLIC afIl, x
      DIMENSION afIl[9, 4]
      STORE 1 TO x
      afIl[x, 1] = "TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DOC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "ACU"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "PAG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RECIBO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
ENDPROC
*
PROCEDURE Sp5_0003a
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1 TO mdBf
 ELSE
      STORE muN1+":"+mpT1 TO mdBf
 ENDIF
 If .not.Directory("&mDBF")
      MD &mDBF
 ENDIF
 STORE 99 TO mkEy
 IF LEN(ALLTRIM(muN1))=0
      STORE mpT1+"BANCOS"+meXt TO mdBf
 ELSE
      STORE muN1+":"+mpT1+"BANCOS"+meXt TO mdBf
 ENDIF
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Pase SPT de Bancos..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "CODIGO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "NOMBRE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
ENDPROC
*
PROCEDURE Tab_Caj_Ingresos
 PUBLIC afIl, x
 DIMENSION afIl[24, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3510ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "F3510MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F3510GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510RCB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510SRL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510LET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510DNC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510FEC"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3510MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Caj_Salidas
 PUBLIC afIl, x
 DIMENSION afIl[27, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3520ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "F3520MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F3520GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520SRL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520LET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520DNC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520CCO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520NCC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520RCB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520FEC"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3520MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Ban_Ingresos
 PUBLIC afIl, x
 DIMENSION afIl[25, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3530ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "F3530MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F3530GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530RCB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530BAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530CTA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530NCT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530CHE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530FEC"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3530MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Ban_Salidas
 PUBLIC afIl, x
 DIMENSION afIl[28, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3540ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "F3540MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "F3540GLO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540BAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540CTA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540NCT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540CHE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540CCO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540NCC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540RCB"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540FEC"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3540MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Notas
 PUBLIC afIl, x
 DIMENSION afIl[42, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3610TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610CUO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610DEP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610TDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610ELE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610TEL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610COM"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3610FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610PIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3610NET"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3610IGV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3610TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3610REL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610TD1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610DO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610FE1"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610SRI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610NUI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610SRS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610NUS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610FRE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3610MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Letras_Cli
 PUBLIC afIl, x
 DIMENSION afIl[43, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3110SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110LET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110TDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110ELE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110TEL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110AVA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110ASU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110ARU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110TD2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110AEL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110ADI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110ADS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110ATL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110PCO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3110FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110DIA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110BAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110TIP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110REN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110NRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110PIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3110MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3110LE1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110REF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110COM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3110MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Letras_Prv
 PUBLIC afIl, x
 DIMENSION afIl[35, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3210SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210LET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210TEL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210AVA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210ASU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210ARU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210ADI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210ADS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210ATL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210DIA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210BAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210TIP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210REN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210NRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210PIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3210MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3210LE1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210REF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 40
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210COM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3210MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Cargos_Cli
 PUBLIC afIl, x
 DIMENSION afIl[31, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3500TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500TEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500NTE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500TCL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500NTC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500FPA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500NFP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500PRE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500FCA"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500PIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3500TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3500ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3500INT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3500LE1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500CAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500COM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3500EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Cargos_Prv
 PUBLIC afIl, x
 DIMENSION afIl[27, 4]
 STORE 1 TO x
 afIl[x, 1] = "F3600TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600TD1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600DO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600SUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600TPR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600NTP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600FPA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600NFP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600PRE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600FCA"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600PLA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F3600PIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3600TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3600ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F3600EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE P00_0003a
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-4 TO mcO0
 Define Popup vTAB from mFI0-5,mCO0+55 to mFI0+mUFI+2,mCO0+mUCO Scroll Font "&mLetAri",mTAM-1 Color Scheme 3
 DEFINE BAR 1 OF vtAb PROMPT " TODOS                            "
 DEFINE BAR 2 OF vtAb PROMPT " INGRESOS A CAJA-CABECERA         "
 DEFINE BAR 3 OF vtAb PROMPT " INGRESOS A CAJA-DETALLE          "
 DEFINE BAR 4 OF vtAb PROMPT " SALIDAS DE CAJA-CABECERA         "
 DEFINE BAR 5 OF vtAb PROMPT " SALIDAS DE CAJA-DETALLE          "
 DEFINE BAR 6 OF vtAb PROMPT " INGRESOS A BANCOS-CABECERA       "
 DEFINE BAR 7 OF vtAb PROMPT " INGRESOS A BANCOS-DETALLE        "
 DEFINE BAR 8 OF vtAb PROMPT " SALIDAS DE BANCOS-CABECERA       "
 DEFINE BAR 9 OF vtAb PROMPT " SALIDAS DE BANCOS-DETALLE        "
 DEFINE BAR 10 OF vtAb PROMPT " NOTAS DE DÉBITO/CRÉDITO-CABECERA "
 DEFINE BAR 11 OF vtAb PROMPT " NOTAS DE DÉBITO/CRÉDITO-DETALLE  "
 DEFINE BAR 12 OF vtAb PROMPT " LETRAS DE CLIENTES-CABECERA      "
 DEFINE BAR 13 OF vtAb PROMPT " LETRAS DE CLIENTES-DETALLE       "
 DEFINE BAR 14 OF vtAb PROMPT " LETRAS DE PROVEEDORES            "
 DEFINE BAR 15 OF vtAb PROMPT " CARGOS DE VENTAS                 "
 DEFINE BAR 16 OF vtAb PROMPT " CTAS X COBRAR INICIALES          "
 DEFINE BAR 17 OF vtAb PROMPT " CARGOS DE COMPRAS                "
 DEFINE BAR 18 OF vtAb PROMPT " CTAS X COBRAR TOTALES            "
 DEFINE BAR 19 OF vtAb PROMPT " CTAS X PAGAR INICIALES           "
 DEFINE BAR 20 OF vtAb PROMPT " CTAS X PAGAR TOTALES             "
 DEFINE BAR 21 OF vtAb PROMPT " SPT: CUENTAS x COBRAR            "
 DEFINE BAR 22 OF vtAb PROMPT " SPT: CLIENTES                    "
 DEFINE BAR 23 OF vtAb PROMPT " SPT: NUMERACIÓN                  "
 DEFINE BAR 24 OF vtAb PROMPT " SPT: RECIBOS                     "
 DEFINE BAR 25 OF vtAb PROMPT " SPT: BANCOS                      "
 DO tiT_0000a WITH "Creación/Reorganización de Archivos de Cuentas"
 DO coLneb
 @mFI0+0.5,mCO0 Say "Escoger  de  la  Tabla  adjunta  la" Font "&mLetRom",14 Style "BTI"
 @mFI0+2.0,mCO0 Say "opción de  Archivos e índices  del"  Font "&mLetRom",14 Style "BTI"
 @mFI0+3.5,mCO0 Say "del Sistema que se quieren crear."   Font "&mLetRom",14 Style "BTI"
 @mFI0+5.0,mCO0 Say "En caso de que ya  existan los ar-"  Font "&mLetRom",14 Style "BTI"
 @mFI0+6.5,mCO0 Say "chivos,  el  programa  borrará  los" Font "&mLetRom",14 Style "BTI"
 @mFI0+8.0,mCO0 Say "índices y los volverá a crear."      Font "&mLetRom",14 Style "BTI"
ENDPROC
*
