 SET CENTURY ON
 PUBLIC vtAb
 STORE 14 TO muFi
 STORE 100 TO muCo
 DO p00_0004a
 ON SELECTION BAR 1 OF vtAb DO TOD_0004A
 ON SELECTION BAR 2 OF vtAb DO TRA_0004A
 ON SELECTION BAR 3 OF vtAb DO CPT_0004A
 ON SELECTION BAR 4 OF vtAb DO FIJ_0004A
 ON SELECTION BAR 5 OF vtAb DO HO1_0004A
 ON SELECTION BAR 6 OF vtAb DO HO2_0004A
 ON SELECTION BAR 7 OF vtAb DO ASI_0004A
 ON SELECTION BAR 8 OF vtAb DO BPC_0004A
 ON SELECTION BAR 9 OF vtAb DO BPD_0004A
 ON SELECTION BAR 10 OF vtAb DO CLV_0004A
 ON SELECTION BAR 11 OF vtAb DO HOR_0004A
 ON SELECTION BAR 12 OF vtAb DO FOR_0004A
 STORE 99 TO mkEy
 SHOW POPUP SAVE vtAb
 ACTIVATE POPUP vtAb
 RELEASE POPUPS vtAb
 STORE 99 TO mkEy
 RETURN
ENDPROC
*
PROCEDURE Tod_0004a
 DO td1_0004a
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Td1_0004a
 DO trA_0004a IN PUX0004A
 DO cpT_0004a IN PUX0004A
 DO fiJ_0004a IN PUX0004A
 DO ho1_0004a IN PUX0004A
 DO ho2_0004a IN PUX0004A
 DO asI_0004a IN PUX0004A
 DO bpC_0004a IN PUX0004A
 DO bpD_0004a IN PUX0004A
 DO clV_0004a IN PUX0004A
 DO hoR_0004a IN PUX0004A
 DO foR_0004a IN PUX0004A
ENDPROC
*
PROCEDURE Tra_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4200", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Trabajadores..."
      DO taB_trabajadores
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Trabajadores..."
 DO abB_0000a IN PUX0000A
 INDEX ON f4200ruc+f4200cod TAG f4200ruc
 INDEX ON f4200ele+f4200cod TAG f4200ele
 INDEX ON f4200crg+f4200cod TAG f4200crg
 INDEX ON f4200are+f4200cod TAG f4200are
 INDEX ON f4200sal+f4200cod TAG f4200sal
 INDEX ON f4200pen+f4200cod TAG f4200pen
 INDEX ON f4200ips+f4200cod TAG f4200ips
 INDEX ON f4200afp+f4200cod TAG f4200afp
 INDEX ON UPPER(ALLTRIM(f4200nar))+f4200cod TAG f4200nar
 INDEX ON UPPER(ALLTRIM(f4200nca))+f4200cod TAG f4200nca
 INDEX ON UPPER(ALLTRIM(f4200cla))+"*"+f4200cod TAG f4200cla
 INDEX ON UPPER(ALLTRIM(f4200app)+ALLTRIM(f4200apm)+ALLTRIM(f4200nom))+ ;
       f4200cod TAG f4200nom
 INDEX ON f4200cod TAG f4200cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Cpt_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4210", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo Conceptos..."
      PUBLIC afIl, x
      DIMENSION afIl[10, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4210COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4210DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4210DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 25
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4210TIP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4210AFP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4210POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F4210USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4210DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4210TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4210MAQ"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Conceptos..."
 DO abB_0000a IN PUX0000A
 INDEX ON UPPER(f4210des)+f4210cod TAG f4210des
 INDEX ON f4210cod TAG f4210cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Fij_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4211", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo Conceptos Fijos..."
      PUBLIC afIl, x
      DIMENSION afIl[9, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4211TRA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4211CPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4211MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4211FOR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4211TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F4211USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4211DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4211TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4211MAQ"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Conceptos..."
 DO abB_0000a IN PUX0000A
 INDEX ON f4211cpt+f4211tra TAG f4211cpt
 INDEX ON f4211tra+f4211cpt TAG f4211tra
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Ho1_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4220", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Horarios de Areas..."
      PUBLIC afIl, x
      DIMENSION afIl[59, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4220COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220EXT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TAR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220OPT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220HE1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220HE2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F4220HE3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220HE4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220HE5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220HE6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220HE7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220HE8"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220IN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220SA1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RS1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RI1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RF1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220IN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220SA2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RS2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RI2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RF2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220IN3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220SA3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TO3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RS3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RI3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RF3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220IN4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220SA4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TO4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RS4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RI4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RF4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220IN5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220SA5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TO5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RS5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RI5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RF5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220IN6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220SA6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TO6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RS6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RI6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RF6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220IN7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220SA7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TO7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RS7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RI7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220RF7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4220MAQ"
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
 WAIT WINDOW NOWAIT "Reorganizando Archivo de Horarios de Areas..."
 DO abB_0000a IN PUX0000A
 INDEX ON f4220cod TAG f4220cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Ho2_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4221", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Horarios de Trabajador..."
      PUBLIC afIl, x
      DIMENSION afIl[59, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4221COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221EXT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TAR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221OPT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221HE1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221HE2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F4221HE3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221HE4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221HE5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221HE6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221HE7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221HE8"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221IN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221SA1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RS1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RI1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RF1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221IN2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221SA2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RS2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RI2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RF2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221IN3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221SA3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TO3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RS3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RI3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RF3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221IN4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221SA4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TO4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RS4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RI4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RF4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221IN5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221SA5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TO5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RS5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RI5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RF5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221IN6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221SA6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TO6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RS6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RI6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RF6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221IN7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221SA7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TO7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RS7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RI7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221RF7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221TIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4221MAQ"
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
 WAIT WINDOW NOWAIT "Reorganizando Archivo de Horarios de Trabajadores..."
 DO abB_0000a IN PUX0000A
 INDEX ON f4221cod TAG f4221cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Asi_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4230", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Asistencias por Trabajador..."
      PUBLIC afIl, x
      DIMENSION afIl[24, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4230COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230ENT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230SAL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230RIN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230RFI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230IN1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230SA1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230TO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230RS1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230RI1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 5
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230RF1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230EXT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230TAR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230OPT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230HE1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230HE2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F4230HE3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230HE4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230HE5"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230HE6"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230HE7"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4230HE8"
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
 WAIT WINDOW NOWAIT "Reorganizando Archivo de Asistencia de Trabajadores..."
 DO abB_0000a IN PUX0000A
 INDEX ON SUBSTR(DTOC(f4230fem), 7, 4)+SUBSTR(DTOC(f4230fem), 4, 2)+ ;
       SUBSTR(DTOC(f4230fem), 1, 2)+f4230cod TAG f4230fem
 INDEX ON f4230cod+SUBSTR(DTOC(f4230fem), 7, 4)+SUBSTR(DTOC(f4230fem), 4,  ;
       2)+SUBSTR(DTOC(f4230fem), 1, 2) TAG f4230cod
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE BPC_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4240", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cabecera de Boletas de Pago..."
      DO taB_boleta
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Archivo de Cabecera de Boletas de Pago..."
 DO abB_0000a IN PUX0000A
 INDEX ON f4240est+f4240ser+f4240bol TAG f4240est
 INDEX ON UPPER(f4240nom)+f4240ser+f4240bol TAG f4240nom
 INDEX ON f4240ser+UPPER(f4240nom)+f4240bol TAG f4240no1
 INDEX ON SUBSTR(DTOC(f4240fem), 7, 4)+SUBSTR(DTOC(f4240fem), 4, 2)+ ;
       SUBSTR(DTOC(f4240fem), 1, 2)+f4240ser+f4240bol TAG f4240fem
 INDEX ON f4240ser+SUBSTR(DTOC(f4240fem), 7, 4)+SUBSTR(DTOC(f4240fem), 4,  ;
       2)+SUBSTR(DTOC(f4240fem), 1, 2)+f4240bol TAG f4240fe1
 INDEX ON f4240ser+f4240bol TAG f4240bol
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE BPD_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4241", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Detalle de Boletas de Pago..."
      PUBLIC afIl, x
      DIMENSION afIl[13, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4241SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241BOL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241CPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241DCR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 25
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241TIP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241AFP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F4241MND"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241FOR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4241TOT"
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
 WAIT WINDOW NOWAIT "Reorganizando Archivo de Detalle de Boletas de Pago..."
 DO abB_0000a IN PUX0000A
 INDEX ON f4241ser+f4241bol+f4241cpt TAG f4241cpt
 INDEX ON f4241ser+f4241bol+STR(f4241ite, 2, 0) TAG f4241bol
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Clv_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4999", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Claves..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4999CLA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4999TRA"
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
 WAIT WINDOW NOWAIT "Reorganizando Archivo de Claves..."
 DO abB_0000a IN PUX0000A
 INDEX ON UPPER(ALLTRIM(f4999cla))+"*" TAG f4999cla
 DO CASE
      CASE mnPs=6
           SEEK "000001"
      CASE mnPs=8
           SEEK "00000001"
 ENDCASE
 IF EOF()
      APPEND BLANK
      DO CASE
           CASE mnPs=6
                REPLACE f4999cla WITH "000001"
           CASE mnPs=8
                REPLACE f4999cla WITH "00000001"
      ENDCASE
      REPLACE f4999tra WITH "1"
 ENDIF
 DO CASE
      CASE mnPs=6
           SEEK "000002"
      CASE mnPs=8
           SEEK "00000002"
 ENDCASE
 IF EOF()
      APPEND BLANK
      DO CASE
           CASE mnPs=6
                REPLACE f4999cla WITH "000002"
           CASE mnPs=8
                REPLACE f4999cla WITH "00000002"
      ENDCASE
      REPLACE f4999tra WITH "2"
 ENDIF
 DO CASE
      CASE mnPs=6
           SEEK "000003"
      CASE mnPs=8
           SEEK "00000003"
 ENDCASE
 IF EOF()
      APPEND BLANK
      DO CASE
           CASE mnPs=6
                REPLACE f4999cla WITH "000003"
           CASE mnPs=8
                REPLACE f4999cla WITH "00000003"
      ENDCASE
      REPLACE f4999tra WITH "3"
 ENDIF
 DO CASE
      CASE mnPs=6
           SEEK "000004"
      CASE mnPs=8
           SEEK "00000004"
 ENDCASE
 IF EOF()
      APPEND BLANK
      DO CASE
           CASE mnPs=6
                REPLACE f4999cla WITH "000004"
           CASE mnPs=8
                REPLACE f4999cla WITH "00000004"
      ENDCASE
      REPLACE f4999tra WITH "4"
 ENDIF
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Hor_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4998", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Fecha y Hora de Marcación..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4998TPO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4998DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4998TIM"
      afIl[x, 2] = "C"
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
 WAIT WINDOW NOWAIT "Reorganizando Archivo de Fecha y Hora de Marcación..."
 DO abB_0000a IN PUX0000A
 GOTO TOP
 IF BOF()
      APPEND BLANK
      REPLACE f4998tpo WITH " "
      REPLACE f4998dat WITH DATE()
      REPLACE f4998tim WITH TIME()
 ENDIF
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE For_0004a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "4299", "K"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Formato Pre-Impreso de Boletas de Pago..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F4299SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4299ITE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4299CP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4299CP2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F4299CP3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Conceptos..."
 DO abB_0000a IN PUX0000A
 INDEX ON f4299ser+STR(f4299ite, 2, 0) TAG f4299ser
 DO ciE_0000a IN PUX0000A
ENDPROC
*
PROCEDURE Tab_Boleta
 PUBLIC afIl, x
 DIMENSION afIl[28, 4]
 STORE 1 TO x
 afIl[x, 1] = "F4240SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240BOL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240DFE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240HFE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240DNI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240CAR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240ARE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240FIN"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240FCE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240FNA"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240LNA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240SSO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240SPP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240NAC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240ING"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F4240DCT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F4240APO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "F4240EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4240MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE Tab_Trabajadores
 PUBLIC afIl, x
 DIMENSION afIl[52, 4]
 STORE 1 TO x
 afIl[x, 1] = "F4200COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200APP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200APM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200DIR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200DIS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NDI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200DPT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NDP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200TEL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200ELE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200MIL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200CAR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200CIV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200SEX"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200SSO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200AFP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NAF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200SPP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200FNA"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200LNA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200GRU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NAC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200CRG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NCA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200ARE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NAR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200BAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NBA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200CTA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NCT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200SAL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NSA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200PEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NPE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200IPS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200RE4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200CCO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200NCC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200FOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200CLA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200FIN"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200FCE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200VCI"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200VCF"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200USU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200DAT"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200TIM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F4200MAQ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
ENDPROC
*
PROCEDURE P00_0004a
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-4 TO mcO0
 Define Popup vTAB from mFI0-2,mCO0+55 to mFI0+mUFI,mCO0+mUCO Scroll Font "&mLetAri",mTAM-1 Color Scheme 3
 DEFINE BAR 1 OF vtAb PROMPT " TODOS                         "
 DEFINE BAR 2 OF vtAb PROMPT " TRABAJADORES                  "
 DEFINE BAR 3 OF vtAb PROMPT " CONCEPTOS                     "
 DEFINE BAR 4 OF vtAb PROMPT " CONCEPTOS FIJOS               "
 DEFINE BAR 5 OF vtAb PROMPT " HORARIOS x AREA               "
 DEFINE BAR 6 OF vtAb PROMPT " HORARIOS x TRABAJADOR         "
 DEFINE BAR 7 OF vtAb PROMPT " ASISTENCIA                    "
 DEFINE BAR 8 OF vtAb PROMPT " BOLETAS DE PAGO-CABECERA      "
 DEFINE BAR 9 OF vtAb PROMPT " BOLETAS DE PAGO-DETALLE       "
 DEFINE BAR 10 OF vtAb PROMPT " CLAVES                        "
 DEFINE BAR 11 OF vtAb PROMPT " HORARIO DE MARCACION          "
 DEFINE BAR 12 OF vtAb PROMPT " FORMATO DE BOLETA PRE-IMPRESA "
 DO tiT_0000a WITH "Creación/Reorganización de Archivos de Trabajadores"
 DO coLneb
 @mFI0+0.5,mCO0 Say "Escoger  de  la  Tabla  adjunta  la" Font "&mLetRom",14 Style "BTI"
 @mFI0+2.0,mCO0 Say "opción de  Archivos e índices  del"  Font "&mLetRom",14 Style "BTI"
 @mFI0+3.5,mCO0 Say "del Sistema que se quieren crear."   Font "&mLetRom",14 Style "BTI"
 @mFI0+5.0,mCO0 Say "En caso de que ya  existan los ar-"  Font "&mLetRom",14 Style "BTI"
 @mFI0+6.5,mCO0 Say "chivos,  el  programa  borrará  los" Font "&mLetRom",14 Style "BTI"
 @mFI0+8.0,mCO0 Say "índices y los volverá a crear."      Font "&mLetRom",14 Style "BTI"
ENDPROC
*
