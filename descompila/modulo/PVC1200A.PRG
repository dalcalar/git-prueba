 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 STORE "0006" TO ntM7
 STORE 01 TO meRr
 DO taB_pedidos IN PUX0001A
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
 INDEX ON f1200tdo+f1200ser+f1200doc TAG f1200doc
 INDEX ON UPPER(f1200nom)+f1200tdo+f1200ser+f1200doc TAG f1200nom
 INDEX ON UPPER(f1200ntt)+f1200tdo+f1200ser+f1200doc TAG f1200ntt
 INDEX ON SUBSTR(DTOC(f1200fem), 7, 4)+SUBSTR(DTOC(f1200fem), 4, 2)+ ;
       SUBSTR(DTOC(f1200fem), 1, 2)+f1200tdo+f1200ser+f1200doc TAG f1200fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
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
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM2cod)+"*" TAG ftM2cod
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE "TM01"+ntM3+meXt TO mdBf
 DO WHILE .T.
      ntM3 = STRTRAN(STR(VAL(ntM3)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM3+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM3="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM3cod)+"*" TAG ftM3cod
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1300SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE "TM01"+ntM4+meXt TO mdBf
 DO WHILE .T.
      ntM4 = STRTRAN(STR(VAL(ntM4)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM4+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM4="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON f1300ser+f1300doc TAG f1300doc
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2600SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2600DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE "TM01"+ntM5+meXt TO mdBf
 DO WHILE .T.
      ntM5 = STRTRAN(STR(VAL(ntM5)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM5+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM5="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON f2600ser+f2600doc TAG f2600doc
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM6PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6PLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6PLO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6MOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE "TM01"+ntM6+meXt TO mdBf
 DO WHILE .T.
      ntM6 = STRTRAN(STR(VAL(ntM6)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM6+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM6="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM6ped)+ftM6sec TAG ftM6ped
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM7COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7PLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM7PLO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM7MOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE "TM01"+ntM7+meXt TO mdBf
 DO WHILE .T.
      ntM7 = STRTRAN(STR(VAL(ntM7)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM7+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM7="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM7cod)+"*"+ALLTRIM(ftM7ped)+ftM7sec TAG ftM7cod
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO ab1_1200a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "1302", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1302DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "1303", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1303DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "1304", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Con_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1304DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "1305", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Per_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1305DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
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
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2601DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "2602", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2602DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 17
 DO abR_0000a IN PUX0000A WITH "2603", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2603DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "2604", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Con_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2604DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Maestro de Productos y Servicios no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "2112", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 21
 DO abR_0000a IN PUX0000A WITH "2118", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pro_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2118COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 22
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sto_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 23
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "2991", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex_Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 25
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
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 26
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Tot_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 28
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
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Cambio no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "9112", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Fpago
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9112FPA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 31
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Departamentos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9114DPT
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 32
 DO abR_0000a IN PUX0000A WITH "9115", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Distritos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9115DIS
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Prod
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Productos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "9212", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Choferes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9212COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 35
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Unidades
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9213UNI
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 36
 DO abR_0000a IN PUX0000A WITH "9214", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Almacen
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9214NOM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 37
 DO abR_0000a IN PUX0000A WITH "9215", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Transportista
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9215NOM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 38
 DO abR_0000a IN PUX0000A WITH "9216", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Grupos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9216COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      CLOSE INDEXES
      CLOSE DATABASES
      STORE "Archivo Utilitario de Grupos de Productos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
 ENDIF
 SELECT 39
 DO abR_0000a IN PUX0000A WITH "9217", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Entradas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9217TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 40
 DO abR_0000a IN PUX0000A WITH "9218", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Salidas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9218TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 41
 DO abR_0000a IN PUX0000A WITH "9219", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Carros
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9219COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 42
 DO abR_0000a IN PUX0000A WITH "9998", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Numeros
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9998NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 43
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 44
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1200DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 45
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Prod
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 46
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Seleccion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM3COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 47
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Doc1
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 48
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Doc2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 49
 STORE "TM01"+ntM6+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_6
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 50
 STORE "TM01"+ntM7+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_7
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM7COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 50 TO muLt
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW3, vsW4, vsW9, vsXx, vxLs, vyEa, vlIn,  ;
        clIn, vpAg
 PUBLIC vpAl, cpAl, vuFi, vuCo, vuC1, vfI0, vfI1, vcO0, vcO1, vcO2, vcO3,  ;
        vcLn, icLn
 PUBLIC ucLn, icL1, ucL1, vcL0, vfIl, ifIl, ufIl, cfIl, ffIl, vfFs, ifFs,  ;
        ufFs, ffFs
 PUBLIC cfFs, vfFr, ifFr, ufFr, ffFr, cfFr, vfFt, ifFt, ufFt, ffFt, cfFt,  ;
        vtB1, vtB2
 PUBLIC vtB3, vtB4, vtB5, vtB6, vtB7, vtB8, vtB9, vfB1, vfB2, vfB3, vfB4,  ;
        vfB5, vfB6
 PUBLIC vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf, vfBg,  ;
        vfBh, vfBi
 PUBLIC vfBj, vfBk, vfBl, vfBm, vfBn, vfBo, vcB1, vcB2, vcB3, vcB4, vcB5,  ;
        vcB6, vcB7
 PUBLIC vcB8, vcB9, vcB0, vcBa, vcBb, vcBc, vcBd, vcBe, vcBf, vcBg, vcBh,  ;
        vcBi, vcBj
 PUBLIC vcBk, vcBl, vcBm, vcBn, vcBo, vtDo, itDo, utDo, xtDo, ctDo, vtD1,  ;
        ctD1, vtD2
 PUBLIC vsEr, isEr, usEr, xsEr, csEr, vsE1, vsE2, vsR1, csR1, vsR2, vsR3,  ;
        vsR4, vdOc
 PUBLIC idOc, udOc, xdOc, cdOc, vdO1, cdO1, vdO2, vnOm, inOm, unOm, xnOm,  ;
        cnOm, vfEm
 PUBLIC ifEm, ufEm, xfEm, cfEm, vfE1, vnTt, inTt, unTt, xnTt, cnTt, vrEc,  ;
        irEc, urEc
 PUBLIC crEc, xrEc, vrCc, irCc, urCc, frCc, crCc, xrCc, vcDg, icDg, ucDg,  ;
        ccDg, vpEd
 PUBLIC ipEd, upEd, cpEd, vsEc, isEc, usEc, csEc, vpDd, ipDd, upDd, vsCc,  ;
        isCc, usCc
 PUBLIC vtIt, xtIt, vcLi, xcLi, vsUc, xsUc, vdIr, xdIr, vdIs, xdIs, vdEp,  ;
        xdEp, vrUc
 PUBLIC xrUc, vdNi, xdNi, vtEl, xtEl, xlUg, vlUg, vlG2, xlUd, vlUd, vlD2,  ;
        xlUp, vlUp
 PUBLIC vlP2, vvEn, xvEn, vnVe, xnVe, xcOm, xdTc, vdTc, xdCl, vdCl, xsWg,  ;
        vsWg, xpGd
 PUBLIC vpGd, vmOn, xmOn, vsIg, xsIg, vtCa, xtCa, vfPa, xfPa, vnFp, xnFp,  ;
        caNo, cmEs
 PUBLIC vdIa, xdIa, xtFp, xpIg, vpIg, vnEt, xnEt, tnEt, xiGv, tiGv, xtOt,  ;
        vtO1, xtO1
 PUBLIC xtO2, vtOt, ttOt, xcM1, vcM1, xcM2, vcM2, xeSt, veSt, xuSu, xdAt,  ;
        vtIm, xtIm
 PUBLIC xdA1, xdA2, xtI1, xtI2, xmAq, vcOd, vcAn, tcAn, ccAn, xcAn, vcAd,  ;
        ccAd, vcAj
 PUBLIC ccAj, tcAj, xcAj, vcJd, ccJd, vcUn, vcSt, vsRr, vpEs, tpEs, vtRu,  ;
        vtRr, tpLa
 PUBLIC vpLa, vaLm, vtRa, vtR1, vpLc, vpL2, vtDs, vtDp, vpPn, xpPn, vpPa,  ;
        xpPa, vpPd
 PUBLIC xpPd, vpPp, xpPp, vcIm, vlC1, vlC2, vmR1, vmR2, vnAl, vnA1, vtNo,  ;
        vtN1, vtDi
 PUBLIC vcHo, vcH2, vvAl, tvAl, tvL1, tvL2, tdC1, tdC2, tdC3, vpRe, vmOt,  ;
        vgRu, vnGr
 PUBLIC xlAr, clAr, vlA1, vlA2, xlA3, xlA4, xlA5, xlA6, xlA7, xlA8, xlA9,  ;
        xaNc, caNc
 PUBLIC vaN1, vaN2, xaN3, xaN4, xaN5, xaN6, xaN7, xaN8, xaN9, xaLt, vaL1,  ;
        xaL1, xaL2
 PUBLIC xaL3, xaL4, xaL5, xaL6, xaL7, xaL8, xaL9, veSp, ccJ1, vrEf, xrEf,  ;
        vpDc, vdCt
 PUBLIC vmEd, vpIe, xpIe, vpR1, vcTd, xcTd, vtPo, ctPo, ctPp, vfRa, vsLd,  ;
        vsLc, vmOn
 PUBLIC vtIp, vfOt, xmD1, xmD2, vmD3, xmD3, vnTi, xiT1, viTe, xiTe, xiTt,  ;
        xdEs, vdEs
 PUBLIC xdCr, cdCr, xcUv, xnUv, xcUc, xnUc, xsOl, xuSd, xoPc, xuN1, xuN2,  ;
        xmLa, xmAn
 PUBLIC xp11, xp12, xp21, xp22, vfOr, vdSp, vdSt, vtTt, vmOt, viOm, vpL1,  ;
        tpL1, vpLo
 PUBLIC voBs, vaDi, vaDs, vpDi, vpDs, vpDp, vpPr, vtEc, vnTe, vtCl, vnTc,  ;
        vtCs, vtCv
 PUBLIC vpOr, vpD1, veNt, voPp, vbOr, tpSo, vcC1, vcC2, vcR1, vcR2, vgRa,  ;
        vfCh, xcMm
 PUBLIC xcMp, xcA1, xcA2, xcA3, xcA4, xpOr, xtDi, vpEr, vpPe, tpEr, viPe,  ;
        vdTr, vcM3
 PUBLIC vcM4, vcM5, vcM6, vtDd, vpRo, vlEc, vtPp
 PUBLIC vpAn_11, vpAn_12, vpAn_13, vpAn_99
 STORE SUBSTR(DTOC(DATE()), 7, 4) TO vyEa
 STORE CTOD("  /  /    ") TO ifEm, ufEm
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 01 TO csW0, vsW1, csW1, vsW3, vsW4, vsW9, vlEc
 STORE 00 TO tpEr
 STORE "" TO vcM3, vcM4, vcM5, vcM6
 STORE "PE" TO itDo, utDo
 STORE msEr(01) TO vsR1
 STORE msEr(02) TO vsR2
 STORE msEr(04) TO vsR4
 STORE msEr(03) TO vsR3, isEr, usEr
 STORE SPACE(02) TO vtDd
 STORE SPACE(07) TO idOc, udOc
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 DIMENSION vtB9[3]
 STORE "Ninguno" TO vtB9[1]
 STORE "Fabrica" TO vtB9[2]
 STORE "Rotura" TO vtB9[3]
 IF wtPo>"4"
      STORE 3 TO vsW0
 ELSE
      STORE 1 TO vsW0
 ENDIF
 SELECT caB_ped
 GOTO BOTTOM
 DO muE_1200b IN PVC1200B WITH "F", "v"
 SET READBORDER ON
 DO p00_1200a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_1200a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_c .AND. wtPo="1"
                DO coLsc3
                SAVE SCREEN TO vpAn_11
                DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                @ ifIl+0.8, mcO0+69 TO ifIl+5.0, mcO0+100.1 PATTERN 1 PEN 1
                @ ifIl+0.0, mcO0+68 TO ifIl+4.5, mcO0+099.0 PATTERN 1 PEN 3
                @iFIL+1.5,mCO0+74 Say "Año:" Font "&mLetRom",12 Style "BQ"
                DO WHILE .T.
                     IF mkEy=k_Clic
                          DO clP_coo
                          DO CASE
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+59.4 .AND. mcCc<=mmC1+68
                                    STORE k_Enter TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+68 .AND. mcCc<=mmC1+77
                                    STORE k_F1 TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+77 .AND. mcCc<=mmC1+85.80
                                    STORE k_Esc TO mkEy
                                    EXIT
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+85.8 .AND. mcCc<=mmC1+95
                                    STORE k_F10 TO mkEy
                               OTHERWISE
                                    STORE 99 TO mkEy
                          ENDCASE
                     ENDIF
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_F1
                               DO hl3_1200a
                          CASE mkEy=k_Esc
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vyEa))=0
                               DO ab1_1200a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 1 TO vsW9
                               STORE SPACE(07) TO idOc
                               EXIT
                          CASE mkEy=k_Enter
                               IF LEN(ALLTRIM(muNi))=0
                                    STORE mpTh+"D"+vyEa+"\FV"+mcIi+ ;
                                     "1200.DBF" TO mdBf
                               ELSE
                                    STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+ ;
                                     mcIi+"1200.DBF" TO mdBf
                               ENDIF
                               DO CASE
                                    Case .not.File("&mDBF") .and. vYEA <> Substr(Dtoc(Date()),7,4)
                                         STORE  ;
                                          "No hay documentos en este Año..."  ;
                                          TO mmSj
                                         DO poNmsj
                                    Case .not.File("&mDBF") .and. vYEA = Substr(Dtoc(Date()),7,4)
                                         DO ab1_1200a
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         STORE 1 TO vsW9
                                         STORE SPACE(07) TO idOc
                                         EXIT
                                    OTHERWISE
                                         DO ab2_1200a
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         STORE 2 TO vsW9
                                         STORE SPACE(07) TO idOc
                                         EXIT
                               ENDCASE
                     ENDCASE
                     DO coLbln
                     STORE k_Enter TO mkEy
                     @iFIL+1.5,mCO0+84 Get vYEA Font "&mLetRom",12 Style "NQ" Size 1,5.4 Pict "9999" Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=4
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                     CASE vsW0=4
                          @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
                ENDCASE
           CASE mkEy=k_F9
                DO opC_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO acC_1200w IN PVI1200W WITH "1"
                ENDIF
                DO CASE
                     CASE wtPo$"23"
                          DO prEsiona WITH "4", "R_CONS03", mmF1, mmC1
                     CASE wtPo="4"
                          DO prEsiona WITH "4", "R_CONS14", mmF1, mmC1
                     OTHERWISE
                          DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO pvC1200b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO acC_1200w IN PVI1200W WITH "1"
                ENDIF
                DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE vsW0=1
                STORE VAL(vdOc) TO vdOc
                @iFIL-4,mCO0+16 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
                @iFIL-4,mCO0+22 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @iFIL-4,mCO0+14 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
           CASE vsW0=3
                @iFIL-4,mCO0+29 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
           CASE vsW0=4
                @iFIL-4,mCO0+16 Get vNTT Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"    Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE vsW0=1
                DO coLbln
                vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
                @iFIL-4,mCO0+22 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "9999999"
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_1200a
 DO rs2_1200a
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_1200a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.8
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl2_1200a
           CASE mkEy=k_F12
                DO rs1_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_1200a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caB_ped
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1200nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1200ntt)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f1200cm1)))<>0
                          DO muE_1200a
                          DO grA_1200a
                          SELECT caB_ped
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Lin_1200a
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE wtPo="5"
           @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
           @ piNi, mcO0+008.8 TO pfIn, mcO0+008.8
           @ piNi, mcO0+019.6 TO pfIn, mcO0+019.6
           @ piNi, mcO0+024.8 TO pfIn, mcO0+024.8
           @ piNi, mcO0+038.5 TO pfIn, mcO0+038.5
           @ piNi, mcO0+094.5 TO pfIn, mcO0+094.5
           @ piNi, mcO0+118.9 TO pfIn, mcO0+118.9
           @ piNi, mcO0+156.1 TO pfIn, mcO0+156.1
      OTHERWISE
           @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
           @ piNi, mcO0+008.8 TO pfIn, mcO0+008.8
           @ piNi, mcO0+019.6 TO pfIn, mcO0+019.6
           @ piNi, mcO0+024.8 TO pfIn, mcO0+024.8
           @ piNi, mcO0+038.5 TO pfIn, mcO0+038.5
           @ piNi, mcO0+094.5 TO pfIn, mcO0+094.5
           @ piNi, mcO0+128.9 TO pfIn, mcO0+128.9
           @ piNi, mcO0+144.9 TO pfIn, mcO0+144.9
           @ piNi, mcO0+174.4 TO pfIn, mcO0+174.4
 ENDCASE
ENDPROC
*
PROCEDURE P01_1200a
 STORE vfI0+17 TO ifFs, ufFs, vfFs
 STORE ifFs+19 TO ffFs
 IF vsW3=2
      STORE ifFs-14 TO ifFs
      STORE ifFs-1 TO ifFs
 ELSE
      IF wtPo="5"
           STORE ifFs-1 TO ifFs
      ENDIF
 ENDIF
 IF wtPo="5"
      STORE ffFs+2 TO ffFs
 ENDIF
ENDPROC
*
PROCEDURE P00_1200a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 39 TO muFi
 STORE 194.2 TO muCo
 STORE 40.3 TO vuFi
 STORE 186 TO vuCo
 STORE 193.6 TO vuC1
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE ((mwFi-vuFi)/2)+0.2 TO vfI0
 STORE ((mwCo-vuCo)/2) TO vcO0
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+1.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+1.3 TO ifFr, ufFr, vfFr
 STORE ifFr+(INT(muFi)-5) TO ffFr
 STORE mfI0-0.3 TO ifFt, ufFt, vfFt
 STORE ifFt+(INT(muFi)-5) TO ffFt
 STORE mcO0 TO icLn
 STORE mcO0-2 TO vcL0
 STORE (mwCo-100)/2 TO vcO1
 STORE (mwCo-126)/2 TO vcO2
 STORE (mwCo-vuC1)/2 TO vcO3
 STORE mcO0+193.9 TO ucLn
 STORE vcL0+10 TO vcL0
 STORE vcO3+0.4 TO icL1
 STORE vcO3+vuC1-0.2 TO ucL1
 STORE ifIl-05.2 TO vfI1
 STORE vfI1+02.5 TO vfB1, vfB2, vfB3
 STORE vfI1+04.0 TO vfB4, vfB5, vfB6
 STORE vfI1+09.0 TO vfB7, vfB8, vfB9
 STORE vfI1+10.5 TO vfB0, vfBa, vfBb
 STORE vfI1+12.0 TO vfBc, vfBd, vfBe
 STORE vfI1+13.5 TO vfBf, vfBg, vfBh
 STORE vfI1+18.5 TO vfBi, vfBj, vfBk
 STORE vfI1+20.0 TO vfBl, vfBm, vfBn
 STORE vfI1+25.2 TO vfBo
 STORE vcO2+109.3 TO vcB1, vcBi
 STORE vcB1+04 TO vcB2, vcBj
 STORE vcB2+04 TO vcB3, vcBk
 STORE vcO2+83.3 TO vcB4, vcBl
 STORE vcB4+04 TO vcB5, vcBm
 STORE vcB5+04 TO vcB6, vcBn
 STORE vcO2+64.2 TO vcB7, vcB0
 STORE vcB7+04 TO vcB8, vcBa
 STORE vcB8+04 TO vcB9, vcBb
 STORE vcO2+41.2 TO vcBc, vcBf
 STORE vcBc+04 TO vcBd, vcBg
 STORE vcBd+04 TO vcBe, vcBh
 STORE vcO2+101.3 TO vcBo
 DO p01_1200a
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Pedidos de Ventas"
      CASE wtPo="2"
           DO tiT_0000a WITH "Aprobación de Pedidos de Ventas (Otros)"
      CASE wtPo="3"
           DO tiT_0000a WITH "Aprobación de Pedidos de Ventas (Gerencia)"
      CASE wtPo="4" .AND. msTp=1
           DO tiT_0000a WITH "Anulación de Pedidos de Ventas/Retornar Stocks"
      CASE wtPo="4"
           DO tiT_0000a WITH "Anulación de Pedidos de Ventas"
      CASE wtPo$"567"
           DO tiT_0000a WITH "Genera Documentos de Ventas"
      CASE wtPo="8"
           DO tiT_0000a WITH "Pedidos de Ventas Pendientes"
      CASE wtPo="9"
           DO tiT_0000a WITH "Pedidos de Ventas Pendientes x Vendedor"
 ENDCASE
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
      CASE vsW0=4
           @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO liN_1200a WITH ifIl-0.2, ffIl+1
 @ ifIl-1.3, mcO0+19.6 TO ifIl, mcO0+19.6
 @ ifIl-1.3, mcO0+24.8 TO ifIl, mcO0+24.8
 @ ifIl-1.3, mcO0+38.5 TO ifIl, mcO0+38.5
 @ ifIl-1.3, mcO0+94.5 TO ifIl, mcO0+94.5
 IF wtPo="5"
      @ ifIl-1.3, mcO0+118.9 TO ifIl, mcO0+118.9
      @ ifIl-1.3, mcO0+156.1 TO ifIl, mcO0+156.1
 ELSE
      @ ifIl-1.3, mcO0+128.9 TO ifIl, mcO0+128.9
      @ ifIl-1.3, mcO0+144.9 TO ifIl, mcO0+144.9
      @ ifIl-1.3, mcO0+174.4 TO ifIl, mcO0+174.4
 ENDIF
 DO coLblz
 @iFIL-1.2,mCO0+00.0 Say "Número"              Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+20.8 Say "Est"                 Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+25.5 Say "F.Emisión"           Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+39.1 Say "Cliente"             Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+95.4 Say "Dirección"           Font "&mLetAri",9 Style "BT"
 IF wtPo="5"
      @iFIL-1.2,mCO0+129.1 Say "Observaciones-1" Font "&mLetAri",9 Style "BT"
      @iFIL-1.2,mCO0+166.2 Say "Observaciones-2" Font "&mLetAri",9 Style "BT"
 ELSE
      @iFIL-1.2,mCO0+132.1 Say "F.de Pago"       Font "&mLetAri",9 Style "BT"
      @iFIL-1.2,mCO0+150.2 Say "Observaciones"   Font "&mLetAri",9 Style "BT"
      @iFIL-1.2,mCO0+188.1 Say "Total"           Font "&mLetAri",9 Style "BT"
 ENDIF
 Define Popup vTB1 from vFI1+03.5,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field Substr(F9214NOM,1,30)+", "+F9214DIR+" "+F9214SR1+","+F9214SR2+","+F9214SR3 Scroll Color Scheme 3 Footer "CONSULTA DE LUGARES DE PARTIDA/ALMACENES"
 Define Popup vTB2 from vFI1+05.0,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field Substr(F9215NOM,1,30)+", "+F9215DIR Scroll Color Scheme 3 Footer "CONSULTA DE TRANSPORTISTAS"
 Define Popup vTB3 from vFI1+10.0,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field F9212NOM+" "+F9212LIC Scroll Color Scheme 3 Footer "CONSULTA DE CHOFERES"
 Define Popup vTB4 from vFI1+11.5,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field F9212NOM+" "+F9212LIC Scroll Color Scheme 3 Footer "CONSULTA DE AYUDANTES"
 Define Popup vTB5 from vFI1+13.0,vCO2 to vFI1+40,vCO2+55.5  Font "&mLetCou",9 Style "NQ" Prompt Field F9219MAR+" "+F9219PLA Scroll Color Scheme 3 Footer "CONSULTA DE CARROS"
 Define Popup vTB6 from vFI1+14.5,vCO2 to vFI1+40,vCO2+124.5  Font "&mLetCou",9 Style "NQ" Prompt Field F9219MAR+" "+F9219PLA Scroll Color Scheme 3 Footer "CONSULTA DE CARROS"
 Define Popup vTB7 from vFI1+19.5,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field Substr(F9214NOM,1,30)+", "+F9214DIR+" "+F9214SR1+","+F9214SR2+","+F9214SR3 Scroll Color Scheme 3 Footer "CONSULTA DE LUGARES DE PARTIDA/ALMACENES"
 Define Popup vTB8 from vFI1+22.5,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field Substr(F9215NOM,1,30)+", "+F9215DIR Scroll Color Scheme 3 Footer "CONSULTA DE TRANSPORTISTAS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 ON SELECTION POPUP vtB6 DO TB6_0000A
 ON SELECTION POPUP vtB7 DO TB7_0000A
 ON SELECTION POPUP vtB8 DO TB8_0000A
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+16 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.4 Pict "999"     Color ,&mColBlN
           @iFIL-4,mCO0+22 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+14 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
      CASE vsW0=3
           @iFIL-4,mCO0+29 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
      CASE vsW0=4
           @iFIL-4,mCO0+16 Get vNTT Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"    Color ,&mColBlN
 ENDCASE
 READ TIMEOUT 0.01
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,70 Pict "@S70"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
 ELSE
      DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 ENDIF
 IF mkEy=k_Esc
      EXIT
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Rs1_1200a
 DO p00_1200a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_1200b IN PVC1200B WITH "v", "c"
      DO CASE
           CASE vsW1=1
                SELECT caB_ped
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO seE_1200b IN PVC1200B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f1200tdo+f1200ser+f1200doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_1200b IN PVC1200B WITH "v", "i"
           DO muE_1200b IN PVC1200B WITH "v", "c"
      ENDIF
      DO seE_1200b IN PVC1200B WITH "i"
      DO paN_1200b IN PVC1200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_1200b IN PVC1200B WITH "c", "v"
      DO seE_1200b IN PVC1200B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Rs2_1200a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, mcO0+61 TO ifIl+4.0, mcO0+139.1 PATTERN 1 PEN 1
 @ ifIl+0.0, mcO0+60 TO ifIl+3.5, mcO0+138.0 PATTERN 1 PEN 3
 @iFIL+0.5,mCO0+61 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
ENDPROC
*
PROCEDURE Mue_1200a
 STORE f1200tdo TO xtDo
 STORE f1200ser TO xsEr
 STORE f1200doc TO xdOc
 STORE f1200tit TO xtIt
 STORE f1200ntt TO xnTt
 STORE f1200cli TO xcLi
 STORE f1200suc TO xsUc
 STORE f1200nom TO xnOm
 STORE f1200dir TO xdIr
 STORE f1200dis TO xdIs
 STORE f1200dep TO xdEp
 STORE f1200ruc TO xrUc
 STORE f1200ele TO xdNi
 STORE f1200tdi TO xtDi
 STORE f1200tel TO xtEl
 STORE f1200lug TO xlUg
 STORE f1200lud TO xlUd
 STORE f1200lup TO xlUp
 STORE f1200ven TO xvEn
 STORE f1200nve TO xnVe
 STORE f1200com TO xcOm
 STORE f1200dtc TO xdTc
 STORE f1200dcl TO xdCl
 STORE f1200swg TO xsWg
 STORE f1200pgd TO xpGd
 STORE f1200fem TO xfEm
 STORE f1200mon TO xmOn
 STORE f1200fpa TO xfPa
 STORE f1200nfp TO xnFp
 STORE f1200dia TO xdIa
 STORE f1200tfp TO xtFp
 STORE f1200pig TO xpIg
 STORE f1200net TO xnEt
 STORE f1200igv TO xiGv
 STORE f1200tot TO xtOt
 STORE f1200cm1 TO xcM1
 STORE f1200cm2 TO xcM2
 STORE f1200est TO xeSt
 STORE f1200usu TO xuSu
 STORE f1200dat TO xdAt
 STORE f1200tim TO xtIm
 STORE f1200da1 TO xdA1
 STORE f1200ti1 TO xtI1
 STORE f1200da2 TO xdA2
 STORE f1200ti2 TO xtI2
 STORE f1200maq TO xmAq
ENDPROC
*
PROCEDURE Gra_1200a
 SELECT teMporal
 DO gr1_1200a
ENDPROC
*
PROCEDURE Gr1_1200a
 APPEND BLANK
 REPLACE f1200tdo WITH xtDo
 REPLACE f1200ser WITH xsEr
 REPLACE f1200doc WITH xdOc
 REPLACE f1200tit WITH xtIt
 REPLACE f1200ntt WITH xnTt
 REPLACE f1200cli WITH xcLi
 REPLACE f1200suc WITH xsUc
 REPLACE f1200nom WITH xnOm
 REPLACE f1200dir WITH xdIr
 REPLACE f1200dis WITH xdIs
 REPLACE f1200dep WITH xdEp
 REPLACE f1200ruc WITH xrUc
 REPLACE f1200ele WITH xdNi
 REPLACE f1200tel WITH xtEl
 REPLACE f1200lug WITH xlUg
 REPLACE f1200lud WITH xlUd
 REPLACE f1200lup WITH xlUp
 REPLACE f1200ven WITH xvEn
 REPLACE f1200nve WITH xnVe
 REPLACE f1200com WITH xcOm
 REPLACE f1200dtc WITH xdTc
 REPLACE f1200dcl WITH xdCl
 REPLACE f1200swg WITH xsWg
 REPLACE f1200pgd WITH xpGd
 REPLACE f1200fem WITH xfEm
 REPLACE f1200mon WITH xmOn
 REPLACE f1200fpa WITH xfPa
 REPLACE f1200nfp WITH xnFp
 REPLACE f1200dia WITH xdIa
 REPLACE f1200tfp WITH xtFp
 REPLACE f1200pig WITH xpIg
 REPLACE f1200net WITH xnEt
 REPLACE f1200igv WITH xiGv
 REPLACE f1200tot WITH xtOt
 REPLACE f1200cm1 WITH xcM1
 REPLACE f1200cm2 WITH xcM2
 REPLACE f1200est WITH xeSt
 REPLACE f1200usu WITH xuSu
 REPLACE f1200dat WITH xdAt
 REPLACE f1200tim WITH xtIm
 REPLACE f1200da1 WITH xdA1
 REPLACE f1200ti1 WITH xtI1
 REPLACE f1200da2 WITH xdA2
 REPLACE f1200ti2 WITH xtI2
 REPLACE f1200maq WITH xmAq
ENDPROC
*
PROCEDURE Ab1_1200a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1200", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1200DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Pedidos de Ventas se encuentra vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE wtPo="2"
           SET FILTER TO f1200est="1"
      CASE wtPo="3"
           SET FILTER TO f1200est="2"
      CASE wtPo$"567"
           SET FILTER TO f1200est$"1234"
      CASE wtPo="8"
           SET FILTER TO f1200est$"123"
      CASE wtPo="9"
           SET FILTER TO f1200est$"123" .AND. f1200ven=mvEn
 ENDCASE
 GOTO TOP
 IF BOF() .OR. EOF()
      DO CASE
           CASE wtPo$"23"
                STORE "No hay Pedidos de Ventas para aprobar..." TO mmSj
           CASE wtPo$"567"
                STORE "No hay Pedidos de Ventas x Generar..." TO mmSj
           CASE wtPo="8"
                STORE "No hay Pedidos de Ventas pendientes..." TO mmSj
           CASE wtPo="9"
                STORE "No hay Pedidos de Ventas pendientes de este vendedor..."  ;
                      TO mmSj
      ENDCASE
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1201", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1201DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "1202", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1202DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "1203", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1203DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "1204", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Con_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1204DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ab2_1200a
 SELECT 1
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1200"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1200"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Cab_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1200DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Pedidos de Ventas no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1201"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1201"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Det_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1201DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1202"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1202"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Ite_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1202DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1203"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1203"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Ser_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1203DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1204"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1204"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Con_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1204DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_1200a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.6
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.4
           STORE k_F9 TO mkEy
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
      CASE mfIl>=mmF1+3.857 .AND. mfIl<=mmF1+7.071 .AND. mcCc>=mcO0+muCo- ;
           10 .AND. mcCc<=mcO0+muCo .AND. msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
           .AND. DATE()<=mfHa
           SAVE SCREEN TO vpAn_11
           DO jaL_1200a
           WAIT CLEAR
           RESTORE SCREEN FROM vpAn_11
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Jal_1200a
 PRIVATE pnMr
 SELECT caB_ped
 GOTO TOP
 SET NEAR ON
 SEEK vtDo+vsEr+vdOc
 SET NEAR OFF
 SET ESCAPE ON
 STORE 0 TO pnMr
 STORE k_Enter TO mkEy
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF()
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+49.5 Say Str(pNMR,5,0)+" - "+F1200TDO+":"+F1200SER+"-"+F1200DOC+"  "+Dtoc(F1200FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           CASE mrEs="4"
                @iFIL+1.8,mCO0+69.5 Say Str(pNMR,5,0)+" - "+F1200TDO+":"+F1200SER+"-"+F1200DOC+"  "+Dtoc(F1200FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           OTHERWISE
                @iFIL+1.8,mCO0+89.5 Say Str(pNMR,5,0)+" - "+F1200TDO+":"+F1200SER+"-"+F1200DOC+"  "+Dtoc(F1200FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
      ENDCASE
      STORE pnMr+1 TO pnMr
      STORE k_Enter TO mkEy
      STORE f1200nom TO vnOm
      STORE f1200ruc TO vrUc
      STORE f1200dir TO vdIr
      STORE f1200dis TO vdIs
      STORE f1200dep TO vdEp
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      IF LEN(ALLTRIM(f1200ruc))=0
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           DO leN_0000a IN FAC0000A WITH "D"
           REPLACE f1200nom WITH vnOm
           REPLACE f1200dir WITH vdIr
           REPLACE f1200dis WITH vdIs
           REPLACE f1200dep WITH vdEp
           UNLOCK
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
      DO veR_ruc IN FAC0000A WITH "2", vrUc
      IF mkEy=1733
           SELECT caB_ped
           REPLACE f1200dep WITH "NO REGISTRADO"
           UNLOCK
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "Grabando..."
      SELECT caB_ped
      REPLACE f1200nom WITH vnOm
      REPLACE f1200dir WITH vdIr
      REPLACE f1200dis WITH vdIs
      REPLACE f1200dep WITH vdEp
      UNLOCK
      SELECT caB_ped
      SKIP
 ENDDO
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 RELEASE pnMr
ENDPROC
*
PROCEDURE Hl1_1200a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo$"189"
           @ pfIl+0, 2 SAY  ;
             "Esta consulta muestra todos los Pedidos de Ventas en general; incluyen- "
           @ pfIl+1, 2 SAY  ;
             "do los que están anulados. Se puede imprimir o enviar por Fax el Pedido."
           @ pfIl+2, 2 SAY "Esta es la parte de la Cabecera de la Consulta."
           STORE pfIl+4 TO pfIl
      CASE wtPo$"23"
           @ pfIl+0, 2 SAY  ;
             "La Aprobación, trabaja como la Consulta y muestra todos los Pedidos de"
           @ pfIl+1, 2 SAY  ;
             "Ventas en general;  incluyendo los que están  anulados.  Un Documento"
           @ pfIl+2, 2 SAY  ;
             "aprobado ya no se puede modificar; pero puede anularse o puede gene-"
           @ pfIl+3, 2 SAY "rar sus Guías y Facturas respectivas."
           STORE pfIl+5 TO pfIl
      CASE wtPo="4"
           @ pfIl+0, 2 SAY  ;
             "La anulación trabaja como la Consulta y muestra todos los Pedidos de Ven-"
           @ pfIl+1, 2 SAY  ;
             "tas en general; incluyendo los que están anulados. Un Documento Anulado"
           @ pfIl+2, 2 SAY  ;
             "no se puede activar nuevamente. Esta es la Cabecera de la Consulta."
           STORE pfIl+4 TO pfIl
      CASE wtPo$"567"
           @ pfIl+0, 2 SAY  ;
             "La Generación trabaja como la consulta y muestra los Pedidos de Ventas"
           @ pfIl+1, 2 SAY  ;
             "en general, incluyendo los que están anulados. Un Documento para poder"
           @ pfIl+2, 2 SAY  ;
             "ser convertido en Factura y Guía de Remisión debe estar aprobado."
           STORE pfIl+4 TO pfIl
 ENDCASE
 @ pfIl+0, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 19 SAY ":" STYLE "BT"
 @ pfIl+3, 19 SAY ":" STYLE "BT"
 @ pfIl+4, 19 SAY ":" STYLE "BT"
 @ pfIl+5, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+7, 19 SAY ":" STYLE "BT"
 @ pfIl+2, 02 SAY "ESC" STYLE "BT"
 @ pfIl+3, 02 SAY "F10" STYLE "BT"
 @ pfIl+4, 02 SAY "F1" STYLE "BT"
 @ pfIl+5, 02 SAY "F6" STYLE "BT"
 @ pfIl+6, 02 SAY "F9" STYLE "BT"
 @ pfIl+7, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+8, 02 SAY "CTRL ->," STYLE "BT"
 @ pfIl+9, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 21 SAY "Regresar al Menú Principal"
 @ pfIl+3, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 21 SAY "Ayuda del Programa"
 @ pfIl+5, 21 SAY "Cambio de Orden de Consulta"
 @ pfIl+6, 21 SAY "Buscar palabra o frase dentro del nombre del Cliente"
 @ pfIl+7, 21 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+8, 21 SAY "trado va al final del Archivo"
 STORE pfIl+10 TO pfIl
 IF wtPo$"189"
      @ pfIl, 02 SAY "ALT C" STYLE "BT"
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 21 SAY "Cambiar a un Año almacenado"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_1200a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los Clientes, saldrá un mensaje, en caso de encontrase se regresará a"
 @ pfIl+03, 02 SAY  ;
   "la Cabecera, para que escoge el orden de consulta respectivo."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Cabecera"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl3_1200a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 03 SAY  ;
   "Esta opción selecciona el Año que se quiere visualizar. Esta opción"
 @ pfIl+01, 03 SAY "sólo funciona cuando hay años anteriores guardados."
 @ pfIl+03, 03 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+05, 13 SAY "ESC" STYLE "BT"
 @ pfIl+06, 13 SAY "F10" STYLE "BT"
 @ pfIl+07, 13 SAY "F1" STYLE "BT"
 @ pfIl+08, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 23 SAY "Regresar a Cabecera"
 @ pfIl+06, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 23 SAY "Ayuda del Programa"
 @ pfIl+08, 23 SAY "Aceptar y mostrar rango"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, vsW1, csW1, vsW3, vsW4, vsW9, vsXx, vxLs, vyEa, vlIn,  ;
         clIn, vpAg
 RELEASE vpAl, cpAl, vuFi, vuCo, vuC1, vfI0, vfI1, vcO0, vcO1, vcO2, vcO3,  ;
         vcLn, icLn
 RELEASE ucLn, icL1, ucL1, vcL0, vfIl, ifIl, ufIl, cfIl, ffIl, vfFs, ifFs,  ;
         ufFs, ffFs
 RELEASE cfFs, vfFr, ifFr, ufFr, ffFr, cfFr, vfFt, ifFt, ufFt, ffFt, cfFt,  ;
         vtB1, vtB2
 RELEASE vtB3, vtB4, vtB5, vtB6, vtB7, vtB8, vtB9, vfB1, vfB2, vfB3, vfB4,  ;
         vfB5, vfB6
 RELEASE vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf, vfBg,  ;
         vfBh, vfBi
 RELEASE vfBj, vfBk, vfBl, vfBm, vfBn, vfBo, vcB1, vcB2, vcB3, vcB4, vcB5,  ;
         vcB6, vcB7
 RELEASE vcB8, vcB9, vcB0, vcBa, vcBb, vcBc, vcBd, vcBe, vcBf, vcBg, vcBh,  ;
         vcBi, vcBj
 RELEASE vcBk, vcBl, vcBm, vcBn, vcBo, vtDo, itDo, utDo, xtDo, ctDo, vtD1,  ;
         ctD1, vtD2
 RELEASE vsEr, isEr, usEr, xsEr, csEr, vsE1, vsE2, vsR1, csR1, vsR2, vsR3,  ;
         vsR4, vdOc
 RELEASE idOc, udOc, xdOc, cdOc, vdO1, cdO1, vdO2, vnOm, inOm, unOm, xnOm,  ;
         cnOm, vfEm
 RELEASE ifEm, ufEm, xfEm, cfEm, vfE1, vnTt, inTt, unTt, xnTt, cnTt, vrEc,  ;
         irEc, urEc
 RELEASE crEc, xrEc, vrCc, irCc, urCc, frCc, crCc, xrCc, vcDg, icDg, ucDg,  ;
         ccDg, vpEd
 RELEASE ipEd, upEd, cpEd, vsEc, isEc, usEc, csEc, vpDd, ipDd, upDd, vsCc,  ;
         isCc, usCc
 RELEASE vtIt, xtIt, vcLi, xcLi, vsUc, xsUc, vdIr, xdIr, vdIs, xdIs, vdEp,  ;
         xdEp, vrUc
 RELEASE xrUc, vdNi, xdNi, vtEl, xtEl, xlUg, vlUg, vlG2, xlUd, vlUd, vlD2,  ;
         xlUp, vlUp
 RELEASE vlP2, vvEn, xvEn, vnVe, xnVe, xcOm, xdTc, vdTc, xdCl, vdCl, xsWg,  ;
         vsWg, xpGd
 RELEASE vpGd, vmOn, xmOn, vsIg, xsIg, vtCa, xtCa, vfPa, xfPa, vnFp, xnFp,  ;
         caNo, cmEs
 RELEASE vdIa, xdIa, xtFp, xpIg, vpIg, vnEt, xnEt, tnEt, xiGv, tiGv, xtOt,  ;
         vtO1, xtO1
 RELEASE xtO2, vtOt, ttOt, xcM1, vcM1, xcM2, vcM2, xeSt, veSt, xuSu, xdAt,  ;
         vtIm, xtIm
 RELEASE xdA1, xdA2, xtI1, xtI2, xmAq, vcOd, vcAn, tcAn, ccAn, xcAn, vcAd,  ;
         ccAd, vcAj
 RELEASE ccAj, tcAj, xcAj, vcJd, ccJd, vcUn, vcSt, vsRr, vpEs, tpEs, vtRu,  ;
         vtRr, tpLa
 RELEASE vpLa, vaLm, vtRa, vtR1, vpLc, vpL2, vtDs, vtDp, vpPn, xpPn, vpPa,  ;
         xpPa, vpPd
 RELEASE xpPd, vpPp, xpPp, vcIm, vlC1, vlC2, vmR1, vmR2, vnAl, vnA1, vtNo,  ;
         vtN1, vtDi
 RELEASE vcHo, vcH2, vvAl, tvAl, tvL1, tvL2, tdC1, tdC2, tdC3, vpRe, vmOt,  ;
         vgRu, vnGr
 RELEASE xlAr, clAr, vlA1, vlA2, xlA3, xlA4, xlA5, xlA6, xlA7, xlA8, xlA9,  ;
         xaNc, caNc
 RELEASE vaN1, vaN2, xaN3, xaN4, xaN5, xaN6, xaN7, xaN8, xaN9, xaLt, vaL1,  ;
         xaL1, xaL2
 RELEASE xaL3, xaL4, xaL5, xaL6, xaL7, xaL8, xaL9, veSp, ccJ1, vrEf, xrEf,  ;
         vpDc, vdCt
 RELEASE vmEd, vpIe, xpIe, vpR1, vcTd, xcTd, vtPo, ctPo, ctPp, vfRa, vsLd,  ;
         vsLc, vmOn
 RELEASE vtIp, vfOt, xmD1, xmD2, vmD3, xmD3, vnTi, xiT1, viTe, xiTe, xiTt,  ;
         xdEs, vdEs
 RELEASE xdCr, cdCr, xcUv, xnUv, xcUc, xnUc, xsOl, xuSd, xoPc, xuN1, xuN2,  ;
         xmLa, xmAn
 RELEASE xp11, xp12, xp21, xp22, vfOr, vdSp, vdSt, vtTt, vmOt, viOm, vpL1,  ;
         tpL1, vpLo
 RELEASE voBs, vaDi, vaDs, vpDi, vpDs, vpDp, vpPr, vtEc, vnTe, vtCl, vnTc,  ;
         vtCs, vtCv
 RELEASE vpOr, vpD1, veNt, voPp, vbOr, tpSo, vcC1, vcC2, vcR1, vcR2, vgRa,  ;
         vfCh, xcMm
 RELEASE xcMp, xcA1, xcA2, xcA3, xcA4, xpOr, xtDi, vpEr, vpPe, tpEr, viPe,  ;
         vdTr, vcM3
 RELEASE vcM4, vcM5, vcM6, vtDd, vpRo, vlEc, vtPp
 RELEASE vpAn_11, vpAn_12, vpAn_13, vpAn_99
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
 DO deL_file2 WITH "3", "S"
 DO deL_file2 WITH "4", "S"
 DO deL_file2 WITH "5", "S"
 DO deL_file2 WITH "6", "S"
 DO deL_file2 WITH "7", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7
ENDPROC
*
