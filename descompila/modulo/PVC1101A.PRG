 PARAMETER plIs
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DIMENSION afIl[42, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1101COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101PPE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 4
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1101DCT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1101DTC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1101NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101APP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101APM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101ALI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101ELE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101MED"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101LIS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101LI2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101LI3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101GIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NAC"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101LIC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101REG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101INI"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CON"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DPT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NDP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CT1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TL1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
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
 INDEX ON f1101cod TAG f1101cod
 INDEX ON UPPER(f1101nom)+f1101cod TAG f1101nom
 INDEX ON ALLTRIM(f1101ruc)+"*"+f1101cod TAG f1101ruc
 INDEX ON ALLTRIM(f1101ele)+"*"+f1101cod TAG f1101ele
 INDEX ON f1101ven+UPPER(f1101nom)+f1101cod TAG f1101ven
 INDEX ON f1101tip+UPPER(f1101nom)+f1101cod TAG f1101tip
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[49, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1101COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NTI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101PPE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 4
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1101DCT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1101DTC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F1101NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101APP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101APM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101ALI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101ELE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101MED"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101LIS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101LI2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101LI3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101GIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NAC"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101LIC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101REG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101INI"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CON"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DPT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NDP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CT1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101TL1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101NES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DE1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DE2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101DE3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101ANI"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1101CM3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
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
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON f1101cod TAG f1101cod
 INDEX ON UPPER(f1101nom)+f1101cod TAG f1101nom
 INDEX ON ALLTRIM(f1101ruc)+"*"+f1101cod TAG f1101ruc
 INDEX ON ALLTRIM(f1101ele)+"*"+f1101cod TAG f1101ele
 INDEX ON f1101ven+UPPER(f1101nom)+f1101cod TAG f1101ven
 INDEX ON f1101tip+UPPER(f1101nom)+f1101cod TAG f1101tip
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
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
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Clientes no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sucursales
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 10 TO muLt
 SELECT clIentes
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vtB1, vtB2, vtB3, vtB4,  ;
        vpAl, cpAl
 PUBLIC vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, ifFs, ufFs, vfFs, ffFs,  ;
        vcOd, icOd
 PUBLIC ucOd, xcOd, ccOd, ccO1, vsUc, isUc, usUc, xsUc, vnOm, inOm, unOm,  ;
        xnOm, cnOm
 PUBLIC vrUc, irUc, urUc, xrUc, crUc, veLe, ieLe, ueLe, xeLe, ceLe, vvEn,  ;
        xvEn, cvEn
 PUBLIC cvE1, cvE2, vnVe, xnVe, cnVe, vaPp, xaPp, vaPm, xaPm, vnO1, xnO1,  ;
        vtIp, ctIp
 PUBLIC xtIp, vnTi, xnTi, xdTc, xdCt, xaLi, xmEd, xtPo, xtPp, xpPe, xlIs,  ;
        xlI2, xlI3
 PUBLIC xgIr, xlIc, xrEg, xiNi, xcRe, xmOn, xtOt, xcOn, vcOn, xeSt, xuSu,  ;
        xdAt, xtIm
 PUBLIC xmAq, vdIr, xdPt, vdPt, cdPt, xdIs, vdIs, cdIs, xnDi, xnDp, vdEp,  ;
        veNt, xdP1
 PUBLIC xdIe, xnD1, xnP1, vcA1, vcA2, vcA3, vcT1, vcT2, vcT3, xtL1, xaN1,  ;
        xfA1, xmAi
 PUBLIC xtL2, xaN2, xfA2, xmA2, xcA3, xtL3, xaN3, xfA3, xmA3, xaLq, xaNo,  ;
        icLn, ucLn
 PUBLIC voPc, vnU1, vnU2, vnU3, vnU4, xnEs, vfNa, xfNa, xsIg, viT1
 PUBLIC vpAn_11, vpAn_99
 STORE SPACE(02) TO vvEn, cvEn, vdPt, cdPt, vdIs, cdIs, vtIp, ctIp
 STORE SPACE(04) TO vcOd, icOd, ucOd, xcOd
 STORE SPACE(11) TO vrUc, irUc, urUc
 STORE SPACE(15) TO veLe, ieLe, ueLe
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 STORE 01 TO vsW0, csW0, vsW1, vsW3, vsW4
 STORE 00 TO csW1, vnU1, vnU2, vnU3, vnU4
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 SELECT clIentes
 GOTO BOTTOM
 STORE RECNO() TO vnU1
 SET ORDER TO F1101EST
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SEEK "9"
 STORE 0 TO vnU2
 DO WHILE  .NOT. EOF() .AND. f1101est="9"
      STORE vnU2+1 TO vnU2
      SKIP
 ENDDO
 STORE vnU1-vnU2 TO vnU1
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SET READBORDER ON
 DO p00_1101a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1101a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1101a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. vsW0=5
                DO ciU_1101a
           CASE mkEy=k_F2 .AND. vsW0=6
                DO diS_1101a
           CASE mkEy=k_F2 .AND. vsW0=7
                DO veN_1101a
           CASE mkEy=k_F2 .AND. vsW0=8
                DO tiP_1101a
      ENDCASE
      IF mkEy=k_Esc
           EXIT
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_1101a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=8
                          STORE 1 TO vsW0
                     CASE vsW0=6 .AND. mvNd=1
                          STORE 8 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                DO p01_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9 .AND. vsW0>4
                STORE "Esta Opción no es permitida en este Orden de Consulta..."  ;
                      TO mmSj
           CASE mkEy=k_F9
                DO opC_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right  ;
                .OR. mkEy=k_Tab) .AND. LEN(ALLTRIM(vdPt))=0 .AND. vsW0=5
                STORE "Departamento no puede estar vacío..." TO mmSj
           CASE (mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right  ;
                .OR. mkEy=k_Tab) .AND. LEN(ALLTRIM(vdPt))=0 .AND. vsW0=6
                STORE "Departamento no puede estar vacío..." TO mmSj
           CASE (mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right  ;
                .OR. mkEy=k_Tab) .AND. LEN(ALLTRIM(vdIs))=0 .AND. vsW0=6
                STORE "Distrito no puede estar vacío..." TO mmSj
           CASE (mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right  ;
                .OR. mkEy=k_Tab) .AND. LEN(ALLTRIM(vvEn))=0 .AND. vsW0=7
                STORE "Vendedor no puede estar vacío..." TO mmSj
           CASE (mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right  ;
                .OR. mkEy=k_Tab) .AND. LEN(ALLTRIM(vtIp))=0 .AND. vsW0=8
                STORE "Tipo de Cliente no puede estar vacío..." TO mmSj
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE vsW0<5
                          STORE SPACE(02) TO cvE2, cdPt, cdIs
                          DO toT_1101a
                     CASE vsW0=5 .AND. (csW0<>5 .OR. vdPt<>cdPt)
                          SELECT dePartamentos
                          SEEK vdPt
                          STORE f9114nom TO vnDp
                          STORE SPACE(04) TO vcOd, icOd, ucOd
                          STORE SPACE(11) TO vrUc, irUc, urUc
                          STORE SPACE(15) TO veLe, ieLe, ueLe
                          STORE SPACE(70) TO vnOm, inOm, unOm
                          SELECT teMporal_2
                          ZAP
                          REINDEX
                          SELECT clIentes
                          DO orD_0000a WITH "1101", "V", "F1101COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT suCursales
                          DO orD_0000a WITH "1102", "V", "F1102DPT", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          GOTO TOP
                          SEEK vdPt
                          STORE 0 TO vnU3, vnU4
                          DO WHILE  .NOT. EOF() .AND. f1102dpt=vdPt
                               STORE f1102cod TO xcOd
                               SELECT clIentes
                               SEEK xcOd
                               IF  .NOT. EOF()
                                    DO muE_1101a
                                    SELECT suCursales
                                    DO mu2_1101a
                                    IF xeSt="9"
                                         vnU4 = vnU4+1
                                    ELSE
                                         vnU3 = vnU3+1
                                    ENDIF
                                    SELECT teMporal_2
                                    DO grA_1101a
                               ENDIF
                               SELECT suCursales
                               SKIP
                          ENDDO
                          DO toT_1101a
                          SELECT suCursales
                          DO orD_0000a WITH "1102", "V", "F1102COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     CASE vsW0=6 .AND. (csW0<>6 .OR. vdPt+vdIs<>cdPt+cdIs)
                          SELECT diStritos
                          SEEK vdPt+vdIs
                          STORE f9115nom TO vnDi
                          STORE SPACE(04) TO vcOd, icOd, ucOd
                          STORE SPACE(11) TO vrUc, irUc, urUc
                          STORE SPACE(15) TO veLe, ieLe, ueLe
                          STORE SPACE(70) TO vnOm, inOm, unOm
                          SELECT teMporal_2
                          ZAP
                          REINDEX
                          SELECT clIentes
                          DO orD_0000a WITH "1101", "V", "F1101COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT suCursales
                          DO orD_0000a WITH "1102", "V", "F1102DPT", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          GOTO TOP
                          SEEK vdPt+vdIs
                          STORE 0 TO vnU3, vnU4
                          DO WHILE  .NOT. EOF() .AND. f1102dpt+f1102dis= ;
                             vdPt+vdIs
                               STORE f1102cod TO xcOd
                               SELECT clIentes
                               SEEK xcOd
                               IF  .NOT. EOF()
                                    DO muE_1101a
                                    SELECT suCursales
                                    DO mu2_1101a
                                    IF xeSt="9"
                                         vnU4 = vnU4+1
                                    ELSE
                                         vnU3 = vnU3+1
                                    ENDIF
                                    SELECT teMporal_2
                                    DO grA_1101a
                               ENDIF
                               SELECT suCursales
                               SKIP
                          ENDDO
                          DO toT_1101a
                          SELECT suCursales
                          DO orD_0000a WITH "1102", "V", "F1102COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     CASE vsW0=7 .AND. (csW0<>7 .OR. vvEn<>cvE2)
                          STORE SPACE(04) TO vcOd, icOd, ucOd
                          STORE SPACE(11) TO vrUc, irUc, urUc
                          STORE SPACE(15) TO veLe, ieLe, ueLe
                          STORE SPACE(70) TO vnOm, inOm, unOm
                          SELECT teMporal_2
                          ZAP
                          REINDEX
                          SELECT clIentes
                          DO orD_0000a WITH "1101", "V", "F1101VEN", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          GOTO TOP
                          SEEK vvEn
                          STORE 0 TO vnU3, vnU4
                          DO WHILE  .NOT. EOF() .AND. f1101ven=vvEn
                               DO muE_1101a
                               DO mu1_1101a
                               IF xeSt="9"
                                    vnU4 = vnU4+1
                               ELSE
                                    vnU3 = vnU3+1
                               ENDIF
                               SELECT teMporal_2
                               DO grA_1101a
                               SELECT clIentes
                               SKIP
                          ENDDO
                          DO toT_1101a
                     CASE vsW0=8 .AND. (csW0<>8 .OR. vtIp<>ctIp)
                          STORE SPACE(04) TO vcOd, icOd, ucOd
                          STORE SPACE(11) TO vrUc, irUc, urUc
                          STORE SPACE(15) TO veLe, ieLe, ueLe
                          STORE SPACE(70) TO vnOm, inOm, unOm
                          SELECT teMporal_2
                          ZAP
                          REINDEX
                          SELECT clIentes
                          DO orD_0000a WITH "1101", "V", "F1101TIP", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          GOTO TOP
                          SEEK vtIp
                          STORE 0 TO vnU3, vnU4
                          DO WHILE  .NOT. EOF() .AND. f1101tip=vtIp
                               DO muE_1101a
                               DO mu1_1101a
                               IF xeSt="9"
                                    vnU4 = vnU4+1
                               ELSE
                                    vnU3 = vnU3+1
                               ENDIF
                               SELECT teMporal_2
                               DO grA_1101a
                               SELECT clIentes
                               SKIP
                          ENDDO
                          DO toT_1101a
                ENDCASE
                IF vsW0>4
                     SELECT teMporal_2
                     GOTO TOP
                     IF BOF()
                          DO CASE
                               CASE vsW0=5
                                    STORE  ;
                                     "No hay Clientes que sean de esa Ciudad..."  ;
                                     TO mmSj
                               CASE vsW0=6
                                    STORE  ;
                                     "No hay Clientes que sean de ese Departamento..."  ;
                                     TO mmSj
                               CASE vsW0=7
                                    STORE  ;
                                     "No hay Clientes que sean de ese Vendedor..."  ;
                                     TO mmSj
                               CASE vsW0=8
                                    STORE  ;
                                     "No hay Clientes que sean de ese Tipo..."  ;
                                     TO mmSj
                          ENDCASE
                     ELSE
                          DO CASE
                               CASE vsW0=5
                                    STORE vdPt TO cdPt
                                    SELECT dePartamentos
                                    SEEK vdPt
                                    STORE f9114nom TO vnDp
                                    @iFIL-4,mCO0+19 Say vNDP Font "&mLetRom",10 Style "BQ" Size 1,28 Pict "@S31" Color Scheme 3
                               CASE vsW0=6
                                    STORE vdPt TO cdPt
                                    STORE vdIs TO cdIs
                                    SELECT diStritos
                                    SEEK vdPt+vdIs
                                    STORE f9115nom TO vnDi
                                    @iFIL-4,mCO0+25 Say vNDI Font "&mLetRom",10 Style "BQ" Size 1,23 Pict "@S26" Color Scheme 3
                               CASE vsW0=7
                                    STORE vvEn TO cvE2
                                    SELECT veNdedores
                                    SEEK vvEn
                                    STORE f9113nom TO vnVe
                                    @iFIL-4,mCO0+21 Say vNVE Font "&mLetRom",10 Style "BQ" Size 1,27 Pict "@S30" Color Scheme 3
                               CASE vsW0=8
                                    STORE vtIp TO ctIp
                                    SELECT tiPos_cli
                                    SEEK vtIp
                                    STORE f9110nti TO vnTi
                                    @iFIL-4,mCO0+28 Say vNTI Font "&mLetRom",10 Style "BQ" Size 1,20 Pict "@S22" Color Scheme 3
                          ENDCASE
                     ENDIF
                ENDIF
                IF LEN(ALLTRIM(mmSj))=0
                     IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                          DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO acC_1200w IN PVI1200W WITH "1"
                     ENDIF
                     DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
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
                     DO pvC1101b
                     SET READBORDER ON
                     IF mkEy=k_Esc
                          EXIT
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
                     DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO coL_boton
                     @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
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
                @iFIL-4,mCO0+13 Get  vCOD Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,07.5 Pict "!!!!"
           CASE vsW0=2
                @iFIL-4,mCO0+14 Get  vNOM Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,31.0 Pict "@S31"
           CASE vsW0=3
                @iFIL-4,mCO0+13 Get  vRUC Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,12.5 Pict "99999999999"
           CASE vsW0=4
                @iFIL-4,mCO0+18 Edit vELE Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,09.1,15
           CASE vsW0=5
                @iFIL-4,mCO0+14 Get  vDPT Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
           CASE vsW0=6
                @iFIL-4,mCO0+14 Get  vDPT Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
                @iFIL-4,mCO0+20 Get  vDIS Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
           CASE vsW0=7
                @iFIL-4,mCO0+16 Get  vVEN Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
           CASE vsW0=8
                @iFIL-4,mCO0+23 Get  vTIP Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_1101a
 DO rs2_1101a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1101a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_1101a
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
           CASE mkEy=k_F12
                DO rs1_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_1101a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F1
                DO hl2_1101a
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                PRIVATE psW1, pdE1, pdE2, pdE3, pdE4, pdE5, pnU1, pnU2,  ;
                        pnU3, pnU4, pnUm
                STORE UPPER(ALLTRIM(vpAl)) TO pdE1
                STORE "" TO pdE2, pdE3, pdE4, pdE5
                STORE AT(",", vpAl, 1) TO pnU1
                STORE AT(",", vpAl, 2) TO pnU2
                STORE AT(",", vpAl, 3) TO pnU3
                STORE AT(",", vpAl, 4) TO pnU4
                IF pnU1<>0
                     STORE SUBSTR(vpAl, 1, pnU1-1) TO pdE1
                ENDIF
                IF pnU2=0
                     IF pnU1>0
                          STORE SUBSTR(vpAl, pnU1+1) TO pdE2
                     ENDIF
                ELSE
                     STORE SUBSTR(vpAl, pnU1+1, pnU2-pnU1-1) TO pdE2
                ENDIF
                IF pnU3=0
                     IF pnU2>0
                          STORE SUBSTR(vpAl, pnU2+1) TO pdE3
                     ENDIF
                ELSE
                     STORE SUBSTR(vpAl, pnU2+1, pnU3-pnU2-1) TO pdE3
                ENDIF
                IF pnU4=0
                     IF pnU3>0
                          STORE SUBSTR(vpAl, pnU3+1) TO pdE4
                     ENDIF
                ELSE
                     STORE SUBSTR(vpAl, pnU3+1, pnU4-pnU3-1) TO pdE4
                     STORE SUBSTR(vpAl, pnU4+1) TO pdE5
                ENDIF
                STORE UPPER(ALLTRIM(pdE1)) TO pdE1
                STORE UPPER(ALLTRIM(pdE2)) TO pdE2
                STORE UPPER(ALLTRIM(pdE3)) TO pdE3
                STORE UPPER(ALLTRIM(pdE4)) TO pdE4
                STORE UPPER(ALLTRIM(pdE5)) TO pdE5
                DO CASE
                     CASE LEN(ALLTRIM(pdE1))<>0 .AND. LEN(ALLTRIM(pdE2))<> ;
                          0 .AND. LEN(ALLTRIM(pdE3))<>0 .AND.  ;
                          LEN(ALLTRIM(pdE4))<>0 .AND. LEN(ALLTRIM(pdE5))<>0
                          STORE 5 TO pnUm
                     CASE LEN(ALLTRIM(pdE1))<>0 .AND. LEN(ALLTRIM(pdE2))<> ;
                          0 .AND. LEN(ALLTRIM(pdE3))<>0 .AND.  ;
                          LEN(ALLTRIM(pdE4))<>0
                          STORE 4 TO pnUm
                     CASE LEN(ALLTRIM(pdE1))<>0 .AND. LEN(ALLTRIM(pdE2))<> ;
                          0 .AND. LEN(ALLTRIM(pdE3))<>0
                          STORE 3 TO pnUm
                     CASE LEN(ALLTRIM(pdE1))<>0 .AND. LEN(ALLTRIM(pdE2))<>0
                          STORE 2 TO pnUm
                     CASE LEN(ALLTRIM(pdE1))<>0
                          STORE 1 TO pnUm
                ENDCASE
                SELECT teMporal
                ZAP
                REINDEX
                SELECT clIentes
                GOTO TOP
                STORE 0 TO psW1
                DO WHILE  .NOT. EOF()
                     DO CASE
                          CASE pnUm=1 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          CASE pnUm=2 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE2)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          CASE pnUm=3 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE2)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE3)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          CASE pnUm=4 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE2)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE3)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE4)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          CASE pnUm=5 .AND. AT(UPPER(ALLTRIM(pdE1)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE2)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE3)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE4)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0 .AND.  ;
                               AT(UPPER(ALLTRIM(pdE5)),  ;
                               UPPER(ALLTRIM(f1101nom)))<>0
                               STORE 1 TO psW1
                          OTHERWISE
                               STORE 0 TO psW1
                     ENDCASE
                     IF psW1=1
                          DO muE_1101a
                          DO mu1_1101a
                          SELECT teMporal
                          DO grA_1101a
                     ENDIF
                     SELECT clIentes
                     SKIP
                ENDDO
                RELEASE psW1, pdE1, pdE2, pdE3, pdE4, pdE5, pnU1, pnU2,  ;
                        pnU3, pnU4, pnUm
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     STORE 1 TO vsW1
                     DO poNmsj
                ELSE
                     STORE 0 TO csW1
                     STORE 2 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO paL_1101a IN PVC1101A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Mue_1101a
 STORE f1101cod TO xcOd
 STORE f1101tpo TO xtPo
 STORE f1101tpp TO xtPp
 STORE f1101ppe TO xpPe
 STORE f1101nac TO xfNa
 STORE f1101tip TO xtIp
 STORE f1101dct TO xdCt
 STORE f1101nom TO xnOm
 STORE f1101app TO xaPp
 STORE f1101apm TO xaPm
 STORE f1101no1 TO xnO1
 STORE f1101ali TO xaLi
 STORE f1101ruc TO xrUc
 STORE f1101ele TO xeLe
 STORE f1101med TO xmEd
 STORE f1101ven TO xvEn
 STORE f1101lis TO xlIs
 STORE f1101li2 TO xlI2
 STORE f1101li3 TO xlI3
 STORE f1101gir TO xgIr
 STORE f1101lic TO xlIc
 STORE f1101reg TO xrEg
 STORE f1101ini TO xiNi
 STORE f1101cre TO xcRe
 STORE f1101mon TO xmOn
 STORE f1101tot TO xtOt
 STORE f1101con TO xcOn
 STORE f1101est TO xeSt
 STORE f1101usu TO xuSu
 STORE f1101dat TO xdAt
 STORE f1101tim TO xtIm
 DO CASE
      CASE xmOn=1
           STORE "S/." TO xsIg
      OTHERWISE
           STORE "US$" TO xsIg
 ENDCASE
 DO CASE
      CASE xeSt="9"
           STORE "Anu" TO xnEs
      OTHERWISE
           STORE "   " TO xnEs
 ENDCASE
 SELECT veNdedores
 SEEK xvEn
 IF  .NOT. EOF()
      STORE f9113nom TO xnVe
 ELSE
      STORE " " TO xnVe
 ENDIF
 SELECT tiPos_cli
 SEEK xtIp
 IF  .NOT. EOF()
      STORE f9110nti TO xnTi
      STORE f9110dct TO xdTc
 ELSE
      STORE " " TO xnTi
      STORE 0 TO xdTc
 ENDIF
 STORE " " TO vdIr, xdIs, xnDi, xdPt, xnDp
 SELECT clIentes
ENDPROC
*
PROCEDURE Mu1_1101a
 SELECT suCursales
 SEEK xcOd
 IF  .NOT. EOF()
      DO mu2_1101a
 ELSE
      STORE " " TO vdIr, xdIs, xnDi, xdPt, xnDp, vcT1, xtL1, xmAi
 ENDIF
ENDPROC
*
PROCEDURE Mu2_1101a
 STORE f1102dir TO vdIr
 STORE f1102dis TO xdIs
 STORE f1102ndi TO xnDi
 STORE f1102dpt TO xdPt
 STORE f1102ndp TO xnDp
 STORE f1102ct1 TO vcT1
 STORE f1102tl1 TO xtL1
 STORE f1102mai TO xmAi
ENDPROC
*
PROCEDURE Gra_1101a
 APPEND BLANK
 REPLACE f1101cod WITH xcOd
 REPLACE f1101tip WITH xtIp
 REPLACE f1101nti WITH xnTi
 REPLACE f1101tpo WITH xtPo
 REPLACE f1101tpp WITH xtPp
 REPLACE f1101ppe WITH xpPe
 REPLACE f1101dtc WITH xdTc
 REPLACE f1101dct WITH xdCt
 REPLACE f1101nom WITH xnOm
 REPLACE f1101app WITH xaPp
 REPLACE f1101apm WITH xaPm
 REPLACE f1101no1 WITH xnO1
 REPLACE f1101ali WITH xaLi
 REPLACE f1101ruc WITH xrUc
 REPLACE f1101ele WITH xeLe
 REPLACE f1101dir WITH vdIr
 REPLACE f1101dis WITH xdIs
 REPLACE f1101dpt WITH xdPt
 REPLACE f1101ndi WITH xnDi
 REPLACE f1101ndp WITH xnDp
 REPLACE f1101ct1 WITH vcT1
 REPLACE f1101tl1 WITH xtL1
 REPLACE f1101med WITH xmEd
 REPLACE f1101ven WITH xvEn
 REPLACE f1101nve WITH xnVe
 REPLACE f1101lis WITH xlIs
 REPLACE f1101li2 WITH xlI2
 REPLACE f1101li3 WITH xlI3
 REPLACE f1101gir WITH xgIr
 REPLACE f1101lic WITH xlIc
 REPLACE f1101reg WITH xrEg
 REPLACE f1101ini WITH xiNi
 REPLACE f1101cre WITH xcRe
 REPLACE f1101mon WITH xmOn
 REPLACE f1101tot WITH xtOt
 REPLACE f1101con WITH xcOn
 REPLACE f1101est WITH xeSt
 REPLACE f1101nes WITH xnEs
 REPLACE f1101usu WITH xuSu
 REPLACE f1101dat WITH xdAt
 REPLACE f1101tim WITH xtIm
ENDPROC
*
PROCEDURE Lin_1101a
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE mrEs="3"
           @ piNi, mcO0+010.3 TO pfIn, mcO0+010.3
           @ piNi, mcO0+015.7 TO pfIn, mcO0+015.7
           @ piNi, mcO0+087.3 TO pfIn, mcO0+087.3
           @ piNi, mcO0+103.9 TO pfIn, mcO0+103.9
           @ piNi, mcO0+120.6 TO pfIn, mcO0+120.6
           @ piNi, mcO0+139.2 TO pfIn, mcO0+139.2
      OTHERWISE
           @ piNi, mcO0+010.3 TO pfIn, mcO0+010.3
           @ piNi, mcO0+015.7 TO pfIn, mcO0+015.7
           @ piNi, mcO0+087.3 TO pfIn, mcO0+087.3
           @ piNi, mcO0+103.9 TO pfIn, mcO0+103.9
           @ piNi, mcO0+120.6 TO pfIn, mcO0+120.6
           @ piNi, mcO0+149.1 TO pfIn, mcO0+149.1
 ENDCASE
ENDPROC
*
PROCEDURE P00_1101a
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
 STORE mfI0+10 TO ifFs, ufFs, vfFs
 STORE ifFs+INT(ffIl-ifFs) TO ffFs
 Define Popup vTB1 from mFI0-1.4,mCO0+13.5 to fFIL+1,mCO0+114 Font "&mLetAri",10 Style "NQ" Prompt Field F9114NOM Scroll Color Scheme 3 Footer "CIUDADES/DEPARTAMENTOS"
 Define Popup vTB2 from mFI0-1.4,mCO0+15.5 to fFIL+1,mCO0+114 Font "&mLetCou",10 Style "NQ" Prompt Field F9115NOM Scroll Color Scheme 3 Footer "DISTRITOS"
 Define Popup vTB3 from mFI0-1.4,mCO0+15.5 to fFIL+1,mCO0+114 Font "&mLetCou",10 Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 3 Footer "VENDEDORES"
 Define Popup vTB4 from mFI0-1.4,mCO0+15.5 to fFIL+1,mCO0+114 Font "&mLetCou",10 Style "NQ" Prompt Field F9110NTI Scroll Color Scheme 3 Footer "TIPOS DE CLIENTES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 DO tiT_0000a WITH "Consulta de Clientes"
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLplp
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO p01_1101a
 DO liN_1101a WITH ifIl-1.3, ffIl+1
 DO coLblz
 @iFIL-1.3,mCO0+000.2 Say "Código"              Font "&mLetAri",10 Style "BT"
 @iFIL-1.3,mCO0+011.1 Say "Est"                 Font "&mLetAri",10 Style "BT"
 @iFIL-1.3,mCO0+016.1 Say "Apellidos y Nombres" Font "&mLetAri",10 Style "BT"
 @iFIL-1.3,mCO0+093.0 Say "RUC"                 Font "&mLetAri",10 Style "BT"
 DO CASE
      CASE mrEs="3"
           IF mvNd=2
                @iFIL-1.3,mCO0+125.5 Say "Vendedor"        Font "&mLetAri",10 Style "BT"
           ELSE
                @iFIL-1.3,mCO0+122.5 Say "Tipo-Cliente"    Font "&mLetAri",10 Style "BT"
           ENDIF
      OTHERWISE
           IF mvNd=2
                @iFIL-1.3,mCO0+125.5 Say "Vendedor"        Font "&mLetAri",10 Style "BT"
           ELSE
                @iFIL-1.3,mCO0+121.9 Say "Tipo de Cliente" Font "&mLetAri",10 Style "BT"
           ENDIF
 ENDCASE
 DO tiT_1101a
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+01 Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,70 Pict "@S70"
 DO toT_1101a
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_1101a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
 ELSE
      DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Bot_1101a
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifIl-3, icLn+104.4
 @iFIL-2.8,iCLN+106.5 Say Str(vSW4,1,0)+"/2" Font "&mLetRom",9 Style "BT"
ENDPROC
*
PROCEDURE Tit_1101a
 DO coLscz
 DO CASE
      CASE mrEs="3" .AND. vsW4=1
           @iFIL-1.3,mCO0+104.4 Say "          DNI"      Font "&mLetAri",9 Style "BQ" Size 1,13.3
           @iFIL-1.3,mCO0+139.7 Say "Dirección/Sucursal" Font "&mLetAri",9 Style "BQ" Size 1,50.2
      CASE mrEs="3" .AND. vsW4=2
           @iFIL-1.3,mCO0+104.4 Say "  Cond.Sunat"       Font "&mLetAri",9 Style "BQ" Size 1,13.3
           @iFIL-1.3,mCO0+139.7 Say "Usuario/Fecha/Hora" Font "&mLetAri",9 Style "BQ" Size 1,50.2
      CASE vsW4=1
           @iFIL-1.3,mCO0+104.3 Say "          DNI"      Font "&mLetAri",9 Style "BQ" Size 1,13.3
           @iFIL-1.3,mCO0+149.7 Say "Dirección/Sucursal" Font "&mLetAri",9 Style "BQ" Size 1,92.1
      CASE vsW4=2
           @iFIL-1.3,mCO0+104.3 Say "   Cond.Sunat"      Font "&mLetAri",9 Style "BQ" Size 1,13.3
           @iFIL-1.3,mCO0+149.7 Say "Usuario/Fecha/Hora" Font "&mLetAri",9 Style "BQ" Size 1,92.1
 ENDCASE
ENDPROC
*
PROCEDURE P01_1101a
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Código:"          Font "&mLetRom",12 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Nombre:"          Font "&mLetRom",12 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "R.U.C.:"          Font "&mLetRom",12 Style "BT"
      CASE vsW0=4
           @iFIL-4,mCO0+0.8 Say "L.E./D.N.I.:"     Font "&mLetRom",12 Style "BT"
      CASE vsW0=5
           @iFIL-4,mCO0+0.8 Say "Ciudad:"          Font "&mLetRom",12 Style "BT"
      CASE vsW0=6
           @iFIL-4,mCO0+0.8 Say "Distrito:"        Font "&mLetRom",12 Style "BT"
      CASE vsW0=7
           @iFIL-4,mCO0+0.8 Say "Vendedor:"        Font "&mLetRom",12 Style "BT"
      CASE vsW0=8
           @iFIL-4,mCO0+0.8 Say "Tipo de Cliente:" Font "&mLetRom",12 Style "BT"
 ENDCASE
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+13 Get  vCOD Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,07.5 Pict "!!!!"
      CASE vsW0=2
           @iFIL-4,mCO0+14 Get  vNOM Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,31.0 Pict "@S31"
      CASE vsW0=3
           @iFIL-4,mCO0+13 Get  vRUC Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,12.5 Pict "99999999999"
      CASE vsW0=4
           @iFIL-4,mCO0+18 Edit vELE Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,09.1,15
      CASE vsW0=5
           @iFIL-4,mCO0+14 Get  vDPT Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
      CASE vsW0=6
           @iFIL-4,mCO0+14 Get  vDPT Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
           @iFIL-4,mCO0+20 Get  vDIS Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
      CASE vsW0=7
           @iFIL-4,mCO0+16 Get  vVEN Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
      CASE vsW0=8
           @iFIL-4,mCO0+23 Get  vTIP Font "&mLetRom",10 Style "BQ" Color ,&mColBlN Size 1,02.2 Pict "99"
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Tot_1101a
 DO CASE
      CASE vsW0>4
           DO coLscr
           @ mfI0+muFi-0.1, mcO0 TO mfI0+muFi+1.3, mcO0+105 PATTERN 1
           @mFI0+mUFI+0.0,mCO0+01.0 Say "Total Clientes:" Font "&mLetRom",10 Style "BQ"
           @mFI0+mUFI+0.0,mCO0+17.0 Say vNU3+vNU4         Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
           @mFI0+mUFI+0.0,mCO0+37.0 Say "Total Activos:"  Font "&mLetRom",10 Style "BQ"
           @mFI0+mUFI+0.0,mCO0+52.0 Say vNU3              Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
           @mFI0+mUFI+0.0,mCO0+72.0 Say "Total Anulados:" Font "&mLetRom",10 Style "BQ"
           @mFI0+mUFI+0.0,mCO0+89.5 Say vNU4              Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
      OTHERWISE
           DO coLsc3
           @ mfI0+muFi-0.1, mcO0 TO mfI0+muFi+1.3, mcO0+105 PATTERN 1
           @mFI0+mUFI+0.0,mCO0+01.0 Say "Total Clientes:" Font "&mLetRom",10 Style "BQ"
           @mFI0+mUFI+0.0,mCO0+17.0 Say vNU1+vNU2         Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
           @mFI0+mUFI+0.0,mCO0+37.0 Say "Total Activos:"  Font "&mLetRom",10 Style "BQ"
           @mFI0+mUFI+0.0,mCO0+52.0 Say vNU1              Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
           @mFI0+mUFI+0.0,mCO0+72.0 Say "Total Anulados:" Font "&mLetRom",10 Style "BQ"
           @mFI0+mUFI+0.0,mCO0+89.5 Say vNU2              Font "&mLetRom",10 Style "BQ" Pict "999,999" Size 1,12
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_1101a
 DO p00_1101a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO CASE
           CASE vsW0>04 .AND. vsW1=1
                SELECT teMporal_2
           CASE vsW0>04 .AND. vsW1=2
                SELECT teMporal
           CASE vsW1=1
                SELECT clIentes
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      DO muE_1101b IN PVC1101B WITH "v", "c"
      DO seE_1101b IN PVC1101B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f1101cod)=ALLTRIM(vcOd)
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_1101b IN PVC1101B WITH "v", "i"
           DO muE_1101b IN PVC1101B WITH "v", "c"
      ENDIF
      DO seE_1101b IN PVC1101B WITH "i"
      DO paN_1101b IN PVC1101B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_1101b IN PVC1101B WITH "c", "v"
      DO seE_1101b IN PVC1101B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Pal_1101a
 DO CASE
      CASE mrEs="3"
           @iFIL+1.8,mCO0+51.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      OTHERWISE
           @iFIL+1.8,mCO0+91.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
 ENDCASE
ENDPROC
*
PROCEDURE Rs2_1101a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="3"
           @ ifIl+0.8, mcO0+51 TO ifIl+4.0, mcO0+129.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+50 TO ifIl+3.5, mcO0+128.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+51 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
      OTHERWISE
           @ ifIl+0.8, mcO0+91 TO ifIl+4.0, mcO0+169.1 PATTERN 1 PEN 1
           @ ifIl+0.0, mcO0+90 TO ifIl+3.5, mcO0+168.0 PATTERN 1 PEN 3
           @iFIL+0.5,mCO0+91 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE Ven_1101a
 = INKEY(0.01)
 SELECT veNdedores
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Vendedores registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9113", "U", "F9113NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLbln
      STORE f9113cod TO vvEn
      STORE f9113nom TO vnVe
      @iFIL-4,mCO0+16 Say vVEN Font "&mLetRom",10 Style "BQ" Size 1,2.2 Pict "99"
      @iFIL-4,mCO0+21 Say vNVE Font "&mLetRom",10 Style "BQ" Size 1,27  Pict "@S30" Color Scheme 3
 ENDIF
 DO orD_0000a WITH "9113", "U", "F9113COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tip_1101a
 = INKEY(0.01)
 SELECT tiPos_cli
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Clientes registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9110", "U", "F9110NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB4 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLbln
      STORE f9110tip TO vtIp
      STORE f9110nti TO vnTi
      @iFIL-4,mCO0+23 Say vTIP Font "&mLetRom",10 Style "BQ" Size 1,2.2 Pict "99"
      @iFIL-4,mCO0+28 Say vNTI Font "&mLetRom",10 Style "BQ" Size 1,20  Pict "@S22" Color Scheme 3
 ENDIF
 DO orD_0000a WITH "9110", "U", "F9110TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ciu_1101a
 = INKEY(0.01)
 SELECT dePartamentos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Ciudades registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9114", "U", "F9114NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLbln
      STORE f9114dpt TO vdPt
      STORE f9114nom TO vnDp
      @iFIL-4,mCO0+14 Say vDPT Font "&mLetRom",10 Style "BQ" Size 1,2.2 Pict "99"
      @iFIL-4,mCO0+19 Say vNDP Font "&mLetRom",10 Style "BQ" Size 1,28  Pict "@S31" Color Scheme 3
 ENDIF
 DO orD_0000a WITH "9114", "U", "F9114DPT", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dis_1101a
 = INKEY(0.01)
 SELECT diStritos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Distritos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9115", "U", "F9115NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coLbln
      STORE f9115dpt TO vdPt
      STORE f9115dis TO vdIs
      STORE f9115nom TO vnDi
      @iFIL-4,mCO0+14 Say vDPT Font "&mLetRom",10 Style "BQ" Size 1,2.2 Pict "99"
      @iFIL-4,mCO0+20 Say vDIS Font "&mLetRom",10 Style "BQ" Size 1,2.2 Pict "99"
      @iFIL-4,mCO0+25 Say vNDI Font "&mLetRom",10 Style "BQ" Size 1,23  Pict "@S26" Color Scheme 3
 ENDIF
 DO orD_0000a WITH "9115", "U", "F9115DIS", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_1101a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
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
           10 .AND. mcCc<=mcO0+muCo
           SAVE SCREEN TO vpAn_11
           DO jaL_1101a
           WAIT CLEAR
           STORE 99 TO mkEy
           RESTORE SCREEN FROM vpAn_11
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Jal_1101a
 PRIVATE pdI1, pdP1, pnMr, plIn, psW0
 SELECT clIentes
 GOTO TOP
 SET NEAR ON
 SEEK vcOd
 SET NEAR OFF
 SET ESCAPE ON
 DO coLbln
 STORE 0 TO pnMr, psW0
 STORE ifIl TO plIn
 STORE k_Enter TO mkEy
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF()
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      STORE pnMr+1 TO pnMr
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+45.5 Say Str(pNMR,9,0)+" - "+F1101COD+": "+F1101NOM Font "&mLetAri",8 Style "NQ" Size 1,110 Pict "@S110"
           OTHERWISE
                @iFIL+1.8,mCO0+85.5 Say Str(pNMR,9,0)+" - "+F1101COD+": "+F1101NOM Font "&mLetAri",8 Style "NQ" Size 1,110 Pict "@S110"
      ENDCASE
      STORE k_Enter TO mkEy
      REPLACE f1101nom WITH ALLTRIM(f1101nom)
      IF LEN(ALLTRIM(f1101ruc))<>0
           REPLACE f1101tpo WITH 2
      ENDIF
      IF LEN(ALLTRIM(f1101nom))=0 .AND. LEN(ALLTRIM(f1101no1))<>0
           REPLACE f1101nom WITH ALLTRIM(f1101app)+" "+ALLTRIM(f1101apm)+ ;
                   " "+ALLTRIM(f1101no1)
      ENDIF
      STORE f1101cod TO xcOd
      STORE f1101nom TO vnOm
      STORE f1101ruc TO vrUc
      STORE f1101con TO vcOn
      STORE " " TO vdIr, vdIs, vdEp
      WAIT WINDOW NOCLEAR NOWAIT "Comprobando Direccion..."
      SELECT suCursales
      SEEK xcOd
      IF EOF()
           APPEND BLANK
           REPLACE f1102cod WITH xcOd
           REPLACE f1102suc WITH "01"
      ENDIF
      DO WHILE  .NOT. EOF() .AND. f1102cod=xcOd
           IF mkEy=k_Esc
                EXIT
           ENDIF
           STORE f1102dir TO vdIr
           STORE f1102ent TO veNt
           STORE f1102ct1 TO vcT1
           STORE f1102ct2 TO vcT2
           STORE f1102ct3 TO vcT3
           STORE f1102ca1 TO vcA1
           STORE f1102ca2 TO vcA2
           STORE f1102ca3 TO vcA3
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "6"
           DO leN_0000a IN FAC0000A WITH "7"
           DO leN_0000a IN FAC0000A WITH "8"
           DO leN_0000a IN FAC0000A WITH "9"
           DO leN_0000a IN FAC0000A WITH "0"
           DO leN_0000a IN FAC0000A WITH "A"
           DO leN_0000a IN FAC0000A WITH "B"
           REPLACE f1102dir WITH vdIr
           REPLACE f1102ent WITH veNt
           REPLACE f1102ct1 WITH vcT1
           REPLACE f1102ct2 WITH vcT2
           REPLACE f1102ct3 WITH vcT3
           REPLACE f1102ca1 WITH vcA1
           REPLACE f1102ca2 WITH vcA2
           REPLACE f1102ca3 WITH vcA3
           REPLACE f1102usu WITH "Sistema Online"
           REPLACE f1102dat WITH DATE()
           REPLACE f1102tim WITH TIME()
           REPLACE f1102maq WITH mmAq
           UNLOCK
           SKIP
      ENDDO
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
           SELECT clIentes
           DO CASE
                CASE LEN(ALLTRIM(vrUc))<11
                     WAIT WINDOW NOCLEAR NOWAIT "No tiene RUC..."
                     DO leN_0000a IN FAC0000A WITH "4"
                     REPLACE f1101nom WITH vnOm
                     REPLACE f1101usu WITH "Sistema Online"
                     REPLACE f1101dat WITH DATE()
                     REPLACE f1101tim WITH TIME()
                     REPLACE f1101maq WITH mmAq
                     UNLOCK
                OTHERWISE
                     WAIT WINDOW NOCLEAR NOWAIT  ;
                          "Comprobando validez del RUC..."
                     STORE SPACE(02) TO vdIs, vdEp
                     DO vaL_ruc IN FAC0000A WITH vrUc
                     IF mkEy<>99
                          STORE " " TO pdP1, pdI1
                          WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
                          DO veR_ruc IN FAC0000A WITH "2", vrUc
                          IF mkEy=1800 .OR. mkEy=1733 .OR. mkEy<=-204
                               @ plIn, 1 SAY xcOd+" "+vnOm FONT  ;
                                 "Courier New", 14 STYLE "BQ" SIZE 1, 40
                               STORE 1 TO psW0
                               STORE plIn+2 TO plIn
                               IF plIn>ffIl
                                    STORE ifIl TO plIn
                               ENDIF
                               WAIT WINDOW NOCLEAR NOWAIT  ;
                                    "SIN ACCESO A SUNAT..."
                               = INKEY(0.01)
                               SELECT clIentes
                               SKIP
                               LOOP
                          ENDIF
                          SELECT clIentes
                          DO leN_0000a IN FAC0000A WITH "4"
                          REPLACE f1101nom WITH vnOm
                          REPLACE f1101con WITH vcOn
                          REPLACE f1101usu WITH "SUNAT Online"
                          REPLACE f1101dat WITH DATE()
                          REPLACE f1101tim WITH TIME()
                          REPLACE f1101maq WITH mmAq
                          UNLOCK
                          DO leN_0000a IN FAC0000A WITH "5"
                          DO leN_0000a IN FAC0000A WITH "C"
                          DO leN_0000a IN FAC0000A WITH "D"
                          SELECT suCursales
                          SEEK xcOd+"01"
                          IF EOF()
                               DO nuEvo_rg
                               REPLACE f1102cod WITH xcOd
                               REPLACE f1102suc WITH "01"
                               REPLACE f1102alq WITH 2
                          ENDIF
                          REPLACE f1102dir WITH vdIr
                          REPLACE f1102dpt WITH pdP1
                          REPLACE f1102dis WITH pdI1
                          REPLACE f1102ndi WITH vdIs
                          REPLACE f1102ndp WITH vdEp
                          REPLACE f1102usu WITH "SUNAT Online"
                          REPLACE f1102dat WITH DATE()
                          REPLACE f1102tim WITH TIME()
                          REPLACE f1102maq WITH mmAq
                          UNLOCK
                     ELSE
                          @ plIn, 1 SAY xcOd+" "+vnOm FONT "Courier New",  ;
                            14 STYLE "BQ" SIZE 1, 40
                          STORE 1 TO psW0
                          STORE plIn+2 TO plIn
                          IF plIn>ffIl
                               STORE ifIl TO plIn
                          ENDIF
                     ENDIF
           ENDCASE
      ENDIF
      SELECT clIentes
      SKIP
 ENDDO
 STORE xcOd TO vcOd
 IF psW0<>0
      DO prE_docum WITH "Copie y pulse S/N para continuar"
 ENDIF
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 RELEASE pdI1, pdP1, pnMr, plIn, psW0
ENDPROC
*
PROCEDURE Hl1_1101a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "Esta consulta muestra todos los Clientes registrados, incluyendo los que"
 @ pfIl+1, 02 SAY "están anulados."
 DO CASE
      CASE plIs="1"
           @ pfIl+3, 02 SAY  ;
             "Al ingresar al Detalle del Cliente se pueden ver sus datos, incluyendo que"
           @ pfIl+4, 02 SAY  ;
             "Listas de Precios por defecto tiene y sus % de Descuento."
      CASE plIs="2"
           @ pfIl+3, 02 SAY  ;
             "Al ingresar al Detalle del Cliente se pueden ver sus datos, sin incluir que"
           @ pfIl+4, 02 SAY  ;
             "Listas de Precios por defecto tiene, ni que % de Descuento."
 ENDCASE
 STORE pfIl+6 TO pfIl
 @ pfIl+0, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 18 SAY ":" STYLE "BT"
 @ pfIl+3, 18 SAY ":" STYLE "BT"
 @ pfIl+4, 18 SAY ":" STYLE "BT"
 @ pfIl+2, 02 SAY "ESC" STYLE "BT"
 @ pfIl+3, 02 SAY "F10" STYLE "BT"
 @ pfIl+4, 02 SAY "F1" STYLE "BT"
 @ pfIl+2, 20 SAY "Regresar al Menú Principal"
 @ pfIl+3, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 20 SAY "Ayuda del Programa"
 STORE pfIl+5 TO pfIl
 IF vsW0=5 .OR. vsW0=6 .OR. vsW0=7 .OR. vsW0=8
      @ pfIl, 18 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F2" STYLE "BT"
      DO CASE
           CASE vsW0=5
                @ pfIl, 20 SAY "Consultar Departamentos/Ciudades"
           CASE vsW0=6
                @ pfIl, 20 SAY "Consultar Distritos"
           CASE vsW0=7
                @ pfIl, 20 SAY "Consultar Vendedores"
           CASE vsW0=8
                @ pfIl, 20 SAY "Consultar Tipos de Clientes"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 18 SAY ":" STYLE "BT"
 @ pfIl+1, 18 SAY ":" STYLE "BT"
 @ pfIl+2, 18 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "F6" STYLE "BT"
 @ pfIl+1, 02 SAY "F9" STYLE "BT"
 @ pfIl+2, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+3, 02 SAY "CTRL ->," STYLE "BT"
 @ pfIl+4, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 20 SAY "Cambio de Orden de Consulta"
 @ pfIl+1, 20 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+2, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+3, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Hl2_1101a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda,  se da en cualquier parte de Apellidos o Nombres de los"
 @ pfIl+01, 02 SAY  ;
   "Clientes. Si la palabra o frase, no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los nombres de los Clientes, saldrá un mensaje. En caso de encontrarse"
 @ pfIl+03, 02 SAY  ;
   "regresará a la Cabecera, para que escoja el orden de consulta respecti-"
 @ pfIl+04, 02 SAY "vo. Se puede buscar hasta 5 palabras divididas x comas."
 @ pfIl+06, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 13 SAY "ESC" STYLE "BT"
 @ pfIl+09, 13 SAY "F10" STYLE "BT"
 @ pfIl+10, 13 SAY "F1" STYLE "BT"
 @ pfIl+11, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+08, 23 SAY "Regresar a Cabecera"
 @ pfIl+09, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+10, 23 SAY "Ayuda del Programa"
 @ pfIl+11, 23 SAY "Buscar palabra y regresar a Cabecera"
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
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vtB1, vtB2, vtB3, vtB4,  ;
         vpAl, cpAl
 RELEASE vlIn, vpAg, vfIl, ifIl, ufIl, ffIl, cfIl, ifFs, ufFs, vfFs, ffFs,  ;
         vcOd, icOd
 RELEASE ucOd, xcOd, ccOd, ccO1, vsUc, isUc, usUc, xsUc, vnOm, inOm, unOm,  ;
         xnOm, cnOm
 RELEASE vrUc, irUc, urUc, xrUc, crUc, veLe, ieLe, ueLe, xeLe, ceLe, vvEn,  ;
         xvEn, cvEn
 RELEASE cvE1, cvE2, vnVe, xnVe, cnVe, vaPp, xaPp, vaPm, xaPm, vnO1, xnO1,  ;
         vtIp, ctIp
 RELEASE xtIp, vnTi, xnTi, xdTc, xdCt, xaLi, xmEd, xtPo, xtPp, xpPe, xlIs,  ;
         xlI2, xlI3
 RELEASE xgIr, xlIc, xrEg, xiNi, xcRe, xmOn, xtOt, xcOn, vcOn, xeSt, xuSu,  ;
         xdAt, xtIm
 RELEASE xmAq, vdIr, xdPt, vdPt, cdPt, xdIs, vdIs, cdIs, xnDi, xnDp, vdEp,  ;
         veNt, xdP1
 RELEASE xdIe, xnD1, xnP1, vcA1, vcA2, vcA3, vcT1, vcT2, vcT3, xtL1, xaN1,  ;
         xfA1, xmAi
 RELEASE xtL2, xaN2, xfA2, xmA2, xcA3, xtL3, xaN3, xfA3, xmA3, xaLq, xaNo,  ;
         icLn, ucLn
 RELEASE voPc, vnU1, vnU2, vnU3, vnU4, xnEs, vfNa, xfNa, xsIg, viT1
 RELEASE vpAn_11, vpAn_99
 RELEASE exTended
 RELEASE exTended
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
