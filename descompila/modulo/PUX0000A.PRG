 SET CENTURY ON
 PUBLIC vtAb
 STORE 24 TO muFi
 STORE 145 TO muCo
 DO p00_0000a
 ON SELECTION BAR 1 OF vtAb DO TOD_0000A
 ON SELECTION BAR 2 OF vtAb DO TOT_0000A
 ON SELECTION BAR 3 OF vtAb DO TCL_0000A
 ON SELECTION BAR 4 OF vtAb DO FPA_0000A
 ON SELECTION BAR 5 OF vtAb DO VEN_0000A
 ON SELECTION BAR 6 OF vtAb DO TEC_0000A
 ON SELECTION BAR 7 OF vtAb DO EST_0000A
 ON SELECTION BAR 8 OF vtAb DO DPT_0000A
 ON SELECTION BAR 9 OF vtAb DO DIS_0000A
 ON SELECTION BAR 10 OF vtAb DO TPV_0000A
 ON SELECTION BAR 11 OF vtAb DO TPR_0000A
 ON SELECTION BAR 12 OF vtAb DO UNI_0000A
 ON SELECTION BAR 13 OF vtAb DO ALM_0000A
 ON SELECTION BAR 14 OF vtAb DO TRA_0000A
 ON SELECTION BAR 15 OF vtAb DO CHO_0000A
 ON SELECTION BAR 16 OF vtAb DO CAR_0000A
 ON SELECTION BAR 17 OF vtAb DO GRU_0000A
 ON SELECTION BAR 18 OF vtAb DO TEN_0000A
 ON SELECTION BAR 19 OF vtAb DO TSA_0000A
 ON SELECTION BAR 20 OF vtAb DO NEM_0000A
 ON SELECTION BAR 21 OF vtAb DO COL_0000A
 ON SELECTION BAR 22 OF vtAb DO MON_0000A
 ON SELECTION BAR 23 OF vtAb DO INC_0000A
 ON SELECTION BAR 24 OF vtAb DO SAC_0000A
 ON SELECTION BAR 25 OF vtAb DO INB_0000A
 ON SELECTION BAR 26 OF vtAb DO SAB_0000A
 ON SELECTION BAR 27 OF vtAb DO BAN_0000A
 ON SELECTION BAR 28 OF vtAb DO CTA_0000A
 ON SELECTION BAR 29 OF vtAb DO TDO_0000A
 ON SELECTION BAR 30 OF vtAb DO CCO_0000A
 ON SELECTION BAR 31 OF vtAb DO TCA_0000A
 ON SELECTION BAR 32 OF vtAb DO CRG_0000A
 ON SELECTION BAR 33 OF vtAb DO ARE_0000A
 ON SELECTION BAR 34 OF vtAb DO SAL_0000A
 ON SELECTION BAR 35 OF vtAb DO PEN_0000A
 ON SELECTION BAR 36 OF vtAb DO IPS_0000A
 ON SELECTION BAR 37 OF vtAb DO AFP_0000A
 ON SELECTION BAR 38 OF vtAb DO NMR_0000A
 ON SELECTION BAR 39 OF vtAb DO NUM_0000A
 ON SELECTION BAR 40 OF vtAb DO NVO_0000A
 ON SELECTION BAR 41 OF vtAb DO DAT_0000A
 ON SELECTION BAR 42 OF vtAb DO DOC_0000A
 ON SELECTION BAR 43 OF vtAb DO IMP_0000A
 ON SELECTION BAR 44 OF vtAb DO TIE_0000A
 ON SELECTION BAR 45 OF vtAb DO RUC_0000A
 ON SELECTION BAR 46 OF vtAb DO DNI_0000A
 ACTIVATE POPUP vtAb
 RELEASE POPUPS vtAb
 STORE 99 TO mkEy
 RETURN
ENDPROC
*
PROCEDURE Tot_0000a
 DO td1_0000a IN PUX0000A
 DO td1_0001a IN PUX0001A
 DO td1_0002a IN PUX0002A
 DO td1_0003a IN PUX0003A
 DO td1_0004a IN PUX0004A
 DO td1_0005a IN PUX0005A
 DO td1_0006a IN PUX0006A
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Tod_0000a
 DO td1_0000a
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Td1_0000a
 DO tcL_0000a
 DO fpA_0000a
 DO veN_0000a
 DO teC_0000a
 DO esT_0000a
 DO dpT_0000a
 DO diS_0000a
 DO tpV_0000a
 DO tpR_0000a
 DO unI_0000a
 DO alM_0000a
 DO trA_0000a
 DO chO_0000a
 DO caR_0000a
 DO grU_0000a
 DO teN_0000a
 DO tsA_0000a
 DO neM_0000a
 DO coL_0000a
 DO moN_0000a
 DO inC_0000a
 DO saC_0000a
 DO inB_0000a
 DO saB_0000a
 DO baN_0000a
 DO ctA_0000a
 DO tdO_0000a
 DO ccO_0000a
 DO tcA_0000a
 DO crG_0000a
 DO arE_0000a
 DO saL_0000a
 DO peN_0000a
 DO ipS_0000a
 DO afP_0000a
 DO nmR_0000a
 DO nuM_0000a
 DO nvO_0000a
 DO daT_0000a
 DO doC_0000a
 DO imP_0000a
 DO tiE_0000a
ENDPROC
*
PROCEDURE Nem_0000a
 DO nm1_0000a
 DO nm2_0000a
 DO nm3_0000a
 DO nm4_0000a
 DO nm5_0000a
 DO nm6_0000a
 DO nm7_0000a
ENDPROC
*
PROCEDURE TCl_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9110", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Tipos de Clientes..."
      PUBLIC afIl, x
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9110TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9110NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9110DCT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F9110MAX"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Tipos de Clientes..."
 DO abB_0000a
 INDEX ON UPPER(f9110nti)+f9110tip TAG f9110nti
 INDEX ON f9110tip TAG f9110tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE Tca_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9111", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Tipos de Cambio..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9111FEM"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9111TC1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 5
      STORE x+1 TO x
      afIl[x, 1] = "F9111TC2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 5
      STORE x+1 TO x
      afIl[x, 1] = "F9111TC3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 5
      STORE x+1 TO x
      afIl[x, 1] = "F9111TC4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 5
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Tipos de Cambio..."
 DO abB_0000a
 INDEX ON f9111fem TAG f9111fem
 DO ciE_0000a
ENDPROC
*
PROCEDURE FPa_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9112", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Formas de Pago..."
      PUBLIC afIl, x
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9112FPA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9112NFP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9112DIA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9112TIP"
      afIl[x, 2] = "L"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Formas de Pago..."
 DO abB_0000a
 INDEX ON UPPER(f9112nfp)+f9112fpa TAG f9112nfp
 INDEX ON f9112fpa TAG f9112fpa
 DO ciE_0000a
ENDPROC
*
PROCEDURE Ven_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9113", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Vendedores..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9113COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9113NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9113COM"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9113CM2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9113POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 3
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Vendedores..."
 DO abB_0000a
 INDEX ON UPPER(f9113nom)+f9113cod TAG f9113nom
 INDEX ON f9113cod TAG f9113cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Dpt_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9114", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Departamentos..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9114DPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9114NOM"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Departamentos..."
 DO abB_0000a
 INDEX ON UPPER(f9114nom)+f9114dpt TAG f9114nom
 INDEX ON f9114dpt TAG f9114dpt
 DO ciE_0000a
ENDPROC
*
PROCEDURE Dis_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9115", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Distritos..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9115DPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9115DIS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9115NOM"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Distritos..."
 DO abB_0000a
 INDEX ON f9115dpt+UPPER(f9115nom)+f9115dis TAG f9115nom
 INDEX ON UPPER(f9115nom)+f9115dpt+f9115dis TAG f9115no1
 INDEX ON f9115dpt+f9115dis TAG f9115dis
 DO ciE_0000a
ENDPROC
*
PROCEDURE Tec_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9116", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Técnicos de Instalación..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9116COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9116NOM"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Técnicos de Instalación..."
 DO abB_0000a
 INDEX ON UPPER(f9116nom)+f9116cod TAG f9116nom
 INDEX ON f9116cod TAG f9116cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Est_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9117", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Estados..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9117COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9117DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9117COL"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Estados de Servicio..."
 DO abB_0000a
 INDEX ON UPPER(f9117des)+f9117cod TAG f9117des
 INDEX ON f9117cod TAG f9117cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE TPv_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9210", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Tipos de Proveedores..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9210TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9210NTI"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Tipos de Proveedores..."
 DO abB_0000a
 INDEX ON UPPER(f9210nti)+f9210tip TAG f9210nti
 INDEX ON f9210tip TAG f9210tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE TPr_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9211", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Tipos de Artículos/Servicios/Activos Fijos..."
      PUBLIC afIl, x
      DIMENSION afIl[21, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9211TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211TPP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211ENT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211PER"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211DET"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211MIN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211VSB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211VD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211VD2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211VH1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211VH2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211CSB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211CD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211CD2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211CH1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211CH2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9211PO1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F9211PO2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Tipos de Artículos/Servicios/Activos Fijos..."
 DO abB_0000a
 INDEX ON UPPER(f9211nti)+f9211tip TAG f9211nti
 INDEX ON f9211let+f9211tip TAG f9211let
 INDEX ON f9211tpp+f9211tip TAG f9211tpp
 INDEX ON f9211tip TAG f9211tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE Cho_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9212", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Choferes..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9212COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9212NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9212LIC"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Choferes..."
 DO abB_0000a
 INDEX ON UPPER(f9212nom)+f9212cod TAG f9212nom
 INDEX ON f9212cod TAG f9212cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Uni_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9213", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Unidades de Medida..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9213UNI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9213DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 60
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Unidades de Medida..."
 DO abB_0000a
 INDEX ON UPPER(f9213des)+f9213uni TAG f9213des
 INDEX ON f9213uni TAG f9213uni
 DO ciE_0000a
ENDPROC
*
PROCEDURE Alm_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9214", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Almacenes..."
      PUBLIC afIl, x
      DIMENSION afIl[11, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9214COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214DIR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214DIS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214DPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 11
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214TEL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214SR1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214SR2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214SR3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9214UBI"
      afIl[x, 2] = "N"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Almacenes..."
 DO abB_0000a
 INDEX ON UPPER(f9214nom)+f9214cod TAG f9214nom
 INDEX ON f9214cod TAG f9214cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Tra_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9215", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Transportistas..."
      PUBLIC afIl, x
      DIMENSION afIl[8, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9215COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9215NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9215DIR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9215DIS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9215DPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9215RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 11
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9215TEL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9215CIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Transportistas..."
 DO abB_0000a
 INDEX ON UPPER(f9215nom)+f9215cod TAG f9215nom
 INDEX ON f9215cod TAG f9215cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Gru_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9216", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Grupos de Productos..."
      PUBLIC afIl, x
      DIMENSION afIl[14, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9216COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216DIN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216FOT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 40
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216VSB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216VD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216VD2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216VH1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216VH2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216CSB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216CD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216CD2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216CH1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9216CH2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Grupos de Productos..."
 DO abB_0000a
 INDEX ON UPPER(f9216des)+f9216cod TAG f9216des
 INDEX ON f9216cod TAG f9216cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Ten_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9217", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Entradas a Almacén..."
      PUBLIC afIl, x
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9217TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9217NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9217TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9217COS"
      afIl[x, 2] = "N"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Entradas a Almacén..."
 DO abB_0000a
 INDEX ON UPPER(f9217nti)+f9217tip TAG f9217nti
 INDEX ON f9217tip TAG f9217tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE Tsa_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9218", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Salidas de Almacén..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9218TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9218NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9218TPO"
      afIl[x, 2] = "N"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Salidas de Almacén..."
 DO abB_0000a
 INDEX ON UPPER(f9218nti)+f9218tip TAG f9218nti
 INDEX ON f9218tip TAG f9218tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE Car_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9219", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Carros de la Empresa..."
      PUBLIC afIl, x
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9219COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9219MAR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9219PLA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9219CIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Carros de la Empresa..."
 DO abB_0000a
 INDEX ON UPPER(f9219mar)+f9219cod TAG f9219mar
 INDEX ON f9219cod TAG f9219cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nm1_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9221", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Primer Caracter..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9221LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9221OP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9221DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9221TIT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9221NEM"
      afIl[x, 2] = "N"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de 1er. caracter de Codificación Nemotecnica..."
 DO abB_0000a
 INDEX ON f9221let+UPPER(f9221des)+ALLTRIM(f9221op1)+"*" TAG f9221des
 INDEX ON f9221let+ALLTRIM(f9221op1)+"*" TAG f9221op1
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nm2_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9222", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Segundo Caracter..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9222LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9222OP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9222OP2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9222DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9222TIT"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de 2do. caracter de Codificación Nemotecnica..."
 DO abB_0000a
 INDEX ON f9222let+ALLTRIM(f9222op1)+"*"+UPPER(f9222des)+ ;
       ALLTRIM(f9222op2)+"*" TAG f9222des
 INDEX ON f9222let+ALLTRIM(f9222op1)+"*"+ALLTRIM(f9222op2)+"*" TAG f9222op2
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nm3_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9223", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Tercer Caracter..."
      PUBLIC afIl, x
      DIMENSION afIl[6, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9223LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9223OP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9223OP2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9223OP3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9223DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9223TIT"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de 3er. caracter de Codificación Nemotecnica..."
 DO abB_0000a
 INDEX ON f9223let+ALLTRIM(f9223op1)+"*"+ALLTRIM(f9223op2)+"*"+ ;
       UPPER(f9223des)+ALLTRIM(f9223op3)+"*" TAG f9223des
 INDEX ON f9223let+ALLTRIM(f9223op1)+"*"+ALLTRIM(f9223op2)+"*"+ ;
       ALLTRIM(f9223op3)+"*" TAG f9223op3
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nm4_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9224", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cuarto Caracter..."
      PUBLIC afIl, x
      DIMENSION afIl[7, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9224LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9224OP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9224OP2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9224OP3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9224OP4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9224DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9224TIT"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de 4to. caracter de Codificación Nemotecnica..."
 DO abB_0000a
 INDEX ON f9224let+ALLTRIM(f9224op1)+"*"+ALLTRIM(f9224op2)+"*"+ ;
       ALLTRIM(f9224op3)+"*"+UPPER(f9224des)+ALLTRIM(f9224op4)+"*" TAG f9224des
 INDEX ON f9224let+ALLTRIM(f9224op1)+"*"+ALLTRIM(f9224op2)+"*"+ ;
       ALLTRIM(f9224op3)+"*"+ALLTRIM(f9224op4)+"*" TAG f9224op4
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nm5_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9225", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Quinto Caracter..."
      PUBLIC afIl, x
      DIMENSION afIl[8, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9225LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9225OP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9225OP2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9225OP3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9225OP4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9225OP5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9225DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9225TIT"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de 5to. caracter de Codificación Nemotecnica..."
 DO abB_0000a
 INDEX ON f9225let+ALLTRIM(f9225op1)+"*"+ALLTRIM(f9225op2)+"*"+ ;
       ALLTRIM(f9225op3)+"*"+ALLTRIM(f9225op4)+"*"+UPPER(f9225des)+ ;
       ALLTRIM(f9225op5)+"*" TAG f9225des
 INDEX ON f9225let+ALLTRIM(f9225op1)+"*"+ALLTRIM(f9225op2)+"*"+ ;
       ALLTRIM(f9225op3)+"*"+ALLTRIM(f9225op4)+"*"+ALLTRIM(f9225op5)+"*"  ;
       TAG f9225op5
 DO ciE_0000a
ENDPROC
*
PROCEDURE Mon_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9226", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Monedas y Tipos de Cambio..."
      PUBLIC afIl, x
      DIMENSION afIl[7, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9226COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9226SIG"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9226TPO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9226TCA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 10
      afIl[x, 4] = 5
      STORE x+1 TO x
      afIl[x, 1] = "F9226USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9226DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9226TIM"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Monedas y Tipos de Cambio..."
 DO abB_0000a
 INDEX ON UPPER(f9226sig)+f9226cod TAG f9226sig
 INDEX ON f9226cod TAG f9226cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Col_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9227", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Colores..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9227COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9227DES"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Colores..."
 DO abB_0000a
 INDEX ON UPPER(f9227des)+f9227cod TAG f9227des
 INDEX ON f9227cod TAG f9227cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nm6_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9228", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Sexto Caracter..."
      PUBLIC afIl, x
      DIMENSION afIl[9, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9228LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9228OP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9228OP2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9228OP3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9228OP4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9228OP5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9228OP6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9228DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9228TIT"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de 6to. caracter de Codificación Nemotecnica..."
 DO abB_0000a
 INDEX ON f9228let+ALLTRIM(f9228op1)+"*"+ALLTRIM(f9228op2)+"*"+ ;
       ALLTRIM(f9228op3)+"*"+ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"+ ;
       UPPER(f9228des)+ALLTRIM(f9228op6)+"*" TAG f9228des
 INDEX ON f9228let+ALLTRIM(f9228op1)+"*"+ALLTRIM(f9228op2)+"*"+ ;
       ALLTRIM(f9228op3)+"*"+ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"+ ;
       ALLTRIM(f9228op6)+"*" TAG f9228op6
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nm7_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9229", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Septimo Caracter..."
      PUBLIC afIl, x
      DIMENSION afIl[10, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9229LET"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229OP1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229OP2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229OP3"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229OP4"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229OP5"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229OP6"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229OP7"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9229TIT"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de 7mo. caracter de Codificación Nemotecnica..."
 DO abB_0000a
 INDEX ON f9229let+ALLTRIM(f9229op1)+"*"+ALLTRIM(f9229op2)+"*"+ ;
       ALLTRIM(f9229op3)+"*"+ALLTRIM(f9229op4)+"*"+ALLTRIM(f9229op5)+"*"+ ;
       ALLTRIM(f9229op6)+"*"+UPPER(f9229des)+ALLTRIM(f9229op7)+"*" TAG f9229des
 INDEX ON f9229let+ALLTRIM(f9229op1)+"*"+ALLTRIM(f9229op2)+"*"+ ;
       ALLTRIM(f9229op3)+"*"+ALLTRIM(f9229op4)+"*"+ALLTRIM(f9229op5)+"*"+ ;
       ALLTRIM(f9229op6)+"*"+ALLTRIM(f9229op7)+"*" TAG f9229op7
 DO ciE_0000a
ENDPROC
*
PROCEDURE Tdo_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9311", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Tipos de Documentos Contables..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9311TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9311TD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9311TPO"
      afIl[x, 2] = "N"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Tipos de Documentos Contables..."
 DO abB_0000a
 INDEX ON f9311tdo TAG f9311tdo
 DO ciE_0000a
ENDPROC
*
PROCEDURE Ban_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9312", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Utilitarios de Bancos..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9312BAN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9312NBA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9312INT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Utilitarios de Bancos..."
 DO abB_0000a
 INDEX ON UPPER(f9312nba)+f9312ban TAG f9312nba
 INDEX ON f9312ban TAG f9312ban
 DO ciE_0000a
ENDPROC
*
PROCEDURE Cta_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9313", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Cuentas de Bancos..."
      PUBLIC afIl, x
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9313BAN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9313CTA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9313DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9313MON"
      afIl[x, 2] = "N"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cuentas de Banco..."
 DO abB_0000a
 INDEX ON f9313ban+f9313cta TAG f9313cta
 DO ciE_0000a
ENDPROC
*
PROCEDURE InC_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9314", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Utilitarios de Ingresos a Caja..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9314TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9314NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9314OPC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9314CTD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9314CTH"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
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
      "Reorganizando Índices de Utilitarios de Ingresos a Caja..."
 DO abB_0000a
 INDEX ON UPPER(f9314nti)+f9314tip TAG f9314nti
 INDEX ON f9314tip TAG f9314tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE SaC_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9315", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Utilitarios de Salidas de Caja..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9315TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9315NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9315OPC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9315CTD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9315CTH"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Utilitarios de Salidas a Caja..."
 DO abB_0000a
 INDEX ON UPPER(f9315nti)+f9315tip TAG f9315nti
 INDEX ON f9315tip TAG f9315tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE InB_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9316", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Utilitarios de Ingresos a Bancos..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9316TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9316NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9316OPC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9316CTD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9316CTH"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
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
      "Reorganizando Índices de Utilitarios de Ingresos a Bancos..."
 DO abB_0000a
 INDEX ON UPPER(f9316nti)+f9316tip TAG f9316nti
 INDEX ON f9316tip TAG f9316tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE SaB_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9317", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Utilitarios de Salidas de Bancos..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9317TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9317NTI"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9317OPC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9317CTD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9317CTH"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
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
      "Reorganizando Índices de Utilitarios de Salidas de Bancos..."
 DO abB_0000a
 INDEX ON UPPER(f9317nti)+f9317tip TAG f9317nti
 INDEX ON f9317tip TAG f9317tip
 DO ciE_0000a
ENDPROC
*
PROCEDURE Cco_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9318", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT  ;
           "Creando Archivo de Utilitarios de Centros de Costos..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9318CCO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9318NCC"
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
 WAIT WINDOW NOWAIT  ;
      "Reorganizando Índices de Utilitarios de Centros de Costos..."
 DO abB_0000a
 INDEX ON UPPER(f9318ncc)+f9318cco TAG f9318ncc
 INDEX ON f9318cco TAG f9318cco
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nvo_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9397", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Numeración de Vouchers..."
      PUBLIC afIl, x
      DIMENSION afIl[5, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9397ANO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9397MES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9397TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9397SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9397NUM"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Numeración de Vouchers..."
 DO abB_0000a
 INDEX ON f9397ano+f9397mes+f9397tdo+f9397ser TAG f9397tdo
 DO ciE_0000a
ENDPROC
*
PROCEDURE Nmr_0000a
 STORE 99 TO mkEy
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"FU019998"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"FU019998"+meXt TO mdBf
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Números..."
 DO abB_0000a
 INDEX ON f9998num TAG f9998num
 DO ciE_0000a
ENDPROC
*
PROCEDURE Num_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9999", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Numeración de Documentos..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9999TDO"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9999SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Numeración de Documentos..."
 DO abB_0000a
 INDEX ON f9999tdo+f9999ser TAG f9999tdo
 DO ciE_0000a
ENDPROC
*
PROCEDURE Crg_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9510", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo Cargos..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9510COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9510DES"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Cargos..."
 DO abB_0000a
 INDEX ON UPPER(f9510des)+f9510cod TAG f9510des
 INDEX ON f9510cod TAG f9510cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Are_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9511", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo Areas..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9511COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9511DES"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Areas..."
 DO abB_0000a
 INDEX ON UPPER(f9511des)+f9511cod TAG f9511des
 INDEX ON f9511cod TAG f9511cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Sal_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9512", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Utilitarios de Salud (IPSS)..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9512SAL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9512NSA"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Utilitarios de Salud (IPSS)..."
 DO abB_0000a
 INDEX ON UPPER(f9512nsa)+f9512sal TAG f9512nsa
 INDEX ON f9512sal TAG f9512sal
 DO ciE_0000a
ENDPROC
*
PROCEDURE Pen_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9513", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Utilitarios de Pensión (IPSS)..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9513PEN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9513NPE"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Utilitarios de Pensión (IPSS)..."
 DO abB_0000a
 INDEX ON UPPER(f9513npe)+f9513pen TAG f9513npe
 INDEX ON f9513pen TAG f9513pen
 DO ciE_0000a
ENDPROC
*
PROCEDURE Ips_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9514", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Utilitarios de IPSS Vida..."
      PUBLIC afIl, x
      DIMENSION afIl[2, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9514IPS"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9514DES"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Utilitarios de IPSS Vida..."
 DO abB_0000a
 INDEX ON UPPER(f9514des)+f9514ips TAG f9514des
 INDEX ON f9514ips TAG f9514ips
 DO ciE_0000a
ENDPROC
*
PROCEDURE Afp_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9515", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Utilitarios de AFP..."
      PUBLIC afIl, x
      DIMENSION afIl[6, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9515AFP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9515NAF"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9515OBL"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9515SEG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9515COM"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9515OTR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 7
      afIl[x, 4] = 3
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
 ENDIF
 WAIT WINDOW NOWAIT "Reorganizando Índices de Utilitarios de AFP..."
 DO abB_0000a
 INDEX ON UPPER(f9515naf)+f9515afp TAG f9515naf
 INDEX ON f9515afp TAG f9515afp
 DO ciE_0000a
ENDPROC
*
PROCEDURE Dat_0000a
 STORE 99 TO mkEy
 DO ab1_0000a IN PUX0000A WITH "9000", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Datos Fijos..."
      PUBLIC afIl, x
      DIMENSION afIl[23, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9000MIN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000MAX"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000TC1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 5
      STORE x+1 TO x
      afIl[x, 1] = "F9000TC2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 8
      afIl[x, 4] = 5
      STORE x+1 TO x
      afIl[x, 1] = "F9000IGV"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9000PPE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9000PDT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9000MDT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F9000CM1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 80
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000UIT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F9000DAO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F9000MMM"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F9000EMP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000VSB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000VD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000VD2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000VH1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000VH2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000CSB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000CD1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000CD2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000CH1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9000CH2"
      afIl[x, 2] = "C"
      afIl[x, 3] = 12
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
 STORE 99 TO mkEy
 DO ab1_0000a IN PUX0000A WITH "9001", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Establecimientos..."
      PUBLIC afIl, x
      DIMENSION afIl[02, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9001SER"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9001EST"
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
ENDPROC
*
PROCEDURE Doc_0000a
 STORE 99 TO mkEy
 DO boR_0000a IN PUX0000A WITH "9220", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Conceptos de Importación..."
      PUBLIC afIl, x
      DIMENSION afIl[9, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9220COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9220DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9220FIJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9220POR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "F9220TOT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 12
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "F9220CPT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9220USU"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9220DAT"
      afIl[x, 2] = "D"
      afIl[x, 3] = 8
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9220TIM"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Conceptos de Importación..."
 DO abB_0000a
 INDEX ON UPPER(f9220des)+f9220cod TAG f9220des
 INDEX ON f9220cod TAG f9220cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Imp_0000a
 STORE 99 TO mkEy
 STORE "PRINTERS"+meXt TO mdBf
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Impresoras..."
      PUBLIC afIl, x
      DIMENSION afIl[6, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9990COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9990DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9990PRT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9990INI"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F9990SUB"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
      afIl[x, 4] = 2
      STORE x+1 TO x
      afIl[x, 1] = "F9990CLN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 5
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
 STORE "FA012111.DLL" TO mdBf
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Disco Virtual-1..."
      PUBLIC afIl, x
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "F2111COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = mtMa
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2111DES"
      afIl[x, 2] = "C"
      afIl[x, 3] = 100
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2111EST"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F2111CJN"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Disco Virtual-1..."
 STORE "FA012111.DLL" TO mdBf
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(f2111des))+UPPER(ALLTRIM(f2111cod))+"*" TAG f2111des
 INDEX ON UPPER(ALLTRIM(f2111cod))+"*" TAG f2111cod
 DO ciE_0000a
 WAIT WINDOW NOWAIT "Reorganizando Índices de Impresoras..."
 STORE "PRINTERS"+meXt TO mdBf
 DO abB_0000a
 INDEX ON f9990cod TAG f9990cod
 INDEX ON UPPER(f9990des)+f9990cod TAG f9990des
 STORE 00 TO meRr
 SET ORDER TO F9990COD
 SEEK "FA"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "FA"
      REPLACE f9990des WITH "Facturas"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "BO"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "BO"
      REPLACE f9990des WITH "Boletas"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "PE"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "PE"
      REPLACE f9990des WITH "Pedido"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "RE"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "RE"
      REPLACE f9990des WITH "Remision"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "DE"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "DE"
      REPLACE f9990des WITH "Despacho"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D1"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D1"
      REPLACE f9990des WITH "Despacho1"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D2"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D2"
      REPLACE f9990des WITH "Despacho2"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D3"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D3"
      REPLACE f9990des WITH "Despacho3"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D4"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D4"
      REPLACE f9990des WITH "Despacho4"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D5"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D5"
      REPLACE f9990des WITH "Despacho5"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D6"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D6"
      REPLACE f9990des WITH "Despacho6"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D7"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D7"
      REPLACE f9990des WITH "Despacho7"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D8"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D8"
      REPLACE f9990des WITH "Despacho8"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "D9"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "D9"
      REPLACE f9990des WITH "Despacho9"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "VE"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "VE"
      REPLACE f9990des WITH "Sam_MatV"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "HO"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "HO"
      REPLACE f9990des WITH "Sam_MatH"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "LE"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "LE"
      REPLACE f9990des WITH "Letras"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "ET"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "ET"
      REPLACE f9990des WITH "Etiqueta"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "NP"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "NP"
      REPLACE f9990des WITH "Pedido"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "CT"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "CT"
      REPLACE f9990des WITH "Sam_MatV"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "ND"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "ND"
      REPLACE f9990des WITH "Boletas"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "NC"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "NC"
      REPLACE f9990des WITH "Boletas"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "GI"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "GI"
      REPLACE f9990des WITH "Sam_MatV"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "GS"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "GS"
      REPLACE f9990des WITH "Sam_MatV"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "PC"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "PC"
      REPLACE f9990des WITH "Sam_MatV"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SEEK "BP"
 IF EOF()
      APPEND BLANK
      REPLACE f9990cod WITH "BP"
      REPLACE f9990des WITH "Bol_Pago"
      REPLACE f9990prt WITH "2"
      REPLACE f9990ini WITH 0
      REPLACE f9990sub WITH 0
      REPLACE f9990cln WITH 0
 ENDIF
 SET ORDER TO F9990DES
 DO ciE_0000a
ENDPROC
*
PROCEDURE Tie_0000a
 STORE 99 TO mkEy
 DO boR_0000a WITH "9991", "U"
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Tiendas..."
      PUBLIC afIl, x
      DIMENSION afIl[4, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9991COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9991NOM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9991PTH"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9991ALM"
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
 WAIT WINDOW NOWAIT "Reorganizando Índices de Tiendas..."
 DO abB_0000a
 INDEX ON UPPER(f9991nom)+f9991cod TAG f9991nom
 INDEX ON f9991cod TAG f9991cod
 DO ciE_0000a
ENDPROC
*
PROCEDURE Sis_0000a
 STORE 99 TO mkEy
 STORE "SYSTEMX.DLL" TO mdBf
 If .not.File("&mDBF")
      WAIT WINDOW NOWAIT "Creando Archivo de Sistema..."
      PUBLIC afIl, x
      DIMENSION afIl[3, 4]
      STORE 1 TO x
      afIl[x, 1] = "F9990COD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 7
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9990PNT"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "F9990RED"
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
 WAIT WINDOW TIMEOUT 0.01 "Fin de este proceso..."
ENDPROC
*
PROCEDURE Ruc_0000a
 WAIT WINDOW NOWAIT "Plataforma 1..."
 DO ru1_0000a
 WAIT WINDOW NOWAIT "Plataforma 2-1-1..."
 DO ruC2_1_1a
 WAIT WINDOW NOWAIT "Plataforma 2-1-2..."
 DO ruC2_1_2a
 WAIT WINDOW NOWAIT "Plataforma 2-2..."
 DO ruC2_2a
 WAIT WINDOW NOWAIT "Plataforma 3..."
 DO ru3_0000a
 WAIT WINDOW TIMEOUT 0.01 "Fin de este proceso..."
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Dni_0000a
 WAIT WINDOW NOWAIT "Plataforma 0..."
 DO dn0_0000a
 WAIT WINDOW NOWAIT "Plataforma 1..."
 DO dn1_0000a
 WAIT WINDOW NOWAIT "Plataforma 2..."
 DO dn2_0000a
 WAIT WINDOW NOWAIT "Plataforma 3..."
 DO dn3_0000a
 WAIT WINDOW NOWAIT "Plataforma 4..."
 DO dn4_0000a
 WAIT WINDOW NOWAIT "Plataforma 5..."
 DO dn5_0000a
 WAIT WINDOW NOWAIT "Plataforma 6..."
 DO dn6_0000a
 WAIT WINDOW NOWAIT "Plataforma 7..."
 DO dn7_0000a
 WAIT WINDOW NOWAIT "Plataforma 8..."
 DO dn8_0000a
 WAIT WINDOW NOWAIT "Plataforma 9..."
 DO dn9_0000a
 WAIT WINDOW NOWAIT "Plataforma G..."
 DO guB_0000a
 WAIT WINDOW TIMEOUT 0.01 "Fin de este proceso..."
 DEACTIVATE POPUP vtAb
 RETURN
ENDPROC
*
PROCEDURE Ru1_0000a
 PRIVATE pcDx, pcD1
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\R1UC.DLL" TO mdBf
      STORE mpTh+"RRR1\R1UC.SSL" TO pcDx
      STORE mpTh+"RRR1\R1UCD.SSL" TO pcD1
 ELSE
      STORE muNi+":"+mpTh+"RRR1\R1UC.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\R1UC.SSL" TO pcDx
      STORE muNi+":"+mpTh+"RRR1\R1UCD.SSL" TO pcD1
 ENDIF
 DO abB_0000a
 Inde On AllTrim(Substr(RUC,3,8))+"*"+AllTrim(Substr(RUC,1,1)) to &pCD1
 Inde On AllTrim(RUC)+"*"                                      to &pCDX
 DO ciE_0000a
 RELEASE pcDx, pcD1
ENDPROC
*
PROCEDURE Ruc2_1_1a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\R2UC1_1.DLL" TO mdBf
      STORE mpTh+"RRR1\R2UC1_1.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\R2UC1_1.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\R2UC1_1.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(raZ)+ALLTRIM(ruC)+"*" TAG raZ
 Inde On AllTrim(RUC)+"*"            to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Ruc2_1_2a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\R2UC1_2.DLL" TO mdBf
      STORE mpTh+"RRR1\R2UC1_2.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\R2UC1_2.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\R2UC1_2.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(raZ)+ALLTRIM(ruC)+"*" TAG raZ
 Inde On AllTrim(RUC)+"*"            to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Ruc2_2a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\R2UC2.DLL" TO mdBf
      STORE mpTh+"RRR1\R2UC2.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\R2UC2.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\R2UC2.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(raZ)+ALLTRIM(ruC)+"*" TAG raZ
 Inde On AllTrim(RUC)+"*"            to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Ru3_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\R3UC.DLL" TO mdBf
      STORE mpTh+"RRR1\R3UC.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\R3UC.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\R3UC.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 Inde On AllTrim(RUC)+"*" to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn0_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D0NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D0NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D0NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D0NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn1_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D1NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D1NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D1NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D1NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn2_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D2NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D2NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D2NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D2NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn3_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D3NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D3NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D3NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D3NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn4_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D4NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D4NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D4NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D4NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn5_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D5NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D5NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D5NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D5NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn6_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D6NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D6NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D6NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D6NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn7_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D7NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D7NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D7NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D7NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn8_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D8NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D8NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D8NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D8NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Dn9_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\D9NI.DLL" TO mdBf
      STORE mpTh+"RRR1\D9NI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\D9NI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\D9NI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 INDEX ON UPPER(ALLTRIM(apP))+UPPER(ALLTRIM(apM))+UPPER(ALLTRIM(noM))+ ;
       ALLTRIM(dnI)+"*" TAG noM
 Inde On AllTrim(DNI)+"*"                                                             to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE Gub_0000a
 PRIVATE pcDx
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"RRR1\GUBI.DLL" TO mdBf
      STORE mpTh+"RRR1\GUBI.SSL" TO pcDx
 ELSE
      STORE muNi+":"+mpTh+"RRR1\GUBI.DLL" TO mdBf
      STORE muNi+":"+mpTh+"RRR1\GUBI.SSL" TO pcDx
 ENDIF
 DO abB_0000a
 Inde On UBIGEO to &pCDX
 DO ciE_0000a
 RELEASE pcDx
ENDPROC
*
PROCEDURE P00_0000a
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 Define Popup vTAB from mFI0-2,mCO0+60 to mFI0+mUFI,mCO0+mUCO Scroll Font "&mLetAri",mTAM-1 Color Scheme 3
 DEFINE BAR 1 OF vtAb PROMPT " TODOS LOS UTILITARIOS                        "
 DEFINE BAR 2 OF vtAb PROMPT " TODO EL SISTEMA                              "
 DEFINE BAR 3 OF vtAb PROMPT " TIPOS DE CLIENTES                            "
 DEFINE BAR 4 OF vtAb PROMPT " FORMAS DE PAGO                               "
 DEFINE BAR 5 OF vtAb PROMPT " VENDEDORES                                   "
 DEFINE BAR 6 OF vtAb PROMPT " TÉCNICOS DE INSTALACIÓN                      "
 DEFINE BAR 7 OF vtAb PROMPT " ESTADOS DE SERVICIOS                         "
 DEFINE BAR 8 OF vtAb PROMPT " DEPARTAMENTOS/CIUDADES                       "
 DEFINE BAR 9 OF vtAb PROMPT " DISTRITOS                                    "
 DEFINE BAR 10 OF vtAb PROMPT " TIPOS DE PROVEEDORES                         "
 DEFINE BAR 11 OF vtAb PROMPT " TIPOS DE PRODUCTOS/SERVICIOS/ACTIVOS FIJOS   "
 DEFINE BAR 12 OF vtAb PROMPT " UNIDADES                                     "
 DEFINE BAR 13 OF vtAb PROMPT " ALMACENES GENERALES                          "
 DEFINE BAR 14 OF vtAb PROMPT " TRANSPORTISTAS                               "
 DEFINE BAR 15 OF vtAb PROMPT " CHOFERES                                     "
 DEFINE BAR 16 OF vtAb PROMPT " CARROS DE LA EMPRESA                         "
 DEFINE BAR 17 OF vtAb PROMPT " GRUPOS DE PRODUCTOS                          "
 DEFINE BAR 18 OF vtAb PROMPT " TIPOS DE ENTRADAS A ALMACÉN                  "
 DEFINE BAR 19 OF vtAb PROMPT " TIPOS DE SALIDAS DE ALMACÉN                  "
 DEFINE BAR 20 OF vtAb PROMPT " CODIFICACIÓN NEMOTÉCTICA                     "
 DEFINE BAR 21 OF vtAb PROMPT " COLORES                                      "
 DEFINE BAR 22 OF vtAb PROMPT " MONEDAS PARA LISTA DE PRECIOS DE PROVEEDORES "
 DEFINE BAR 23 OF vtAb PROMPT " TIPOS DE INGRESOS A CAJA                     "
 DEFINE BAR 24 OF vtAb PROMPT " TIPOS DE SALIDAS DE CAJA                     "
 DEFINE BAR 25 OF vtAb PROMPT " TIPOS DE INGRESOS A BANCOS                   "
 DEFINE BAR 26 OF vtAb PROMPT " TIPOS DE SALIDAS DE BANCOS                   "
 DEFINE BAR 27 OF vtAb PROMPT " BANCOS                                       "
 DEFINE BAR 28 OF vtAb PROMPT " CUENTAS DE BANCO                             "
 DEFINE BAR 29 OF vtAb PROMPT " TIPOS DE DOCUMENTOS CONTABLES                "
 DEFINE BAR 30 OF vtAb PROMPT " CENTROS DE COSTOS                            "
 DEFINE BAR 31 OF vtAb PROMPT " TIPOS DE CAMBIO                              "
 DEFINE BAR 32 OF vtAb PROMPT " CARGOS                                       "
 DEFINE BAR 33 OF vtAb PROMPT " AREAS                                        "
 DEFINE BAR 34 OF vtAb PROMPT " LEYES AFECTAS: SALUD (IPSS)                  "
 DEFINE BAR 35 OF vtAb PROMPT " LEYES AFECTAS: PENSIÓN (IPSS)                "
 DEFINE BAR 36 OF vtAb PROMPT " LEYES AFECTAS: IPSS VIDA                     "
 DEFINE BAR 37 OF vtAb PROMPT " AFP                                          "
 DEFINE BAR 38 OF vtAb PROMPT " NÚMEROS                                      "
 DEFINE BAR 39 OF vtAb PROMPT " NUMERACIÓN DE DOCUMENTOS                     "
 DEFINE BAR 40 OF vtAb PROMPT " NUMERACIÓN DE VOUCHERS                       "
 DEFINE BAR 41 OF vtAb PROMPT " DATOS FIJOS                                  "
 DEFINE BAR 42 OF vtAb PROMPT " CONCEPTOS DE IMPORTACIÓN                     "
 DEFINE BAR 43 OF vtAb PROMPT " IMPRESORAS x DEFECTO y DISCO VIRTUAL         "
 DEFINE BAR 44 OF vtAb PROMPT " TIENDAS PROPIAS O LUGARES DE FACT/REPARTO    "
 DEFINE BAR 45 OF vtAb PROMPT " SUNAT PLATAFORMA                             "
 DEFINE BAR 46 OF vtAb PROMPT " RENIEC PLATAFORMA                            "
 DO tiT_0000a WITH "Creación/Reorganización de Archivos Utilitarios"
 DO coLneb
 @mFI0+08.5,mCO0 Say "Escoger  de  la  Tabla  adjunta  la" Font "&mLetRom",14 Style "BTI"
 @mFI0+10.0,mCO0 Say "opción de  Archivos e índices  del"  Font "&mLetRom",14 Style "BTI"
 @mFI0+11.5,mCO0 Say "del Sistema que se quieren crear."   Font "&mLetRom",14 Style "BTI"
 @mFI0+13.0,mCO0 Say "En caso de que ya  existan los ar-"  Font "&mLetRom",14 Style "BTI"
 @mFI0+14.5,mCO0 Say "chivos,  el  programa  borrará  los" Font "&mLetRom",14 Style "BTI"
 @mFI0+16.0,mCO0 Say "índices y los volverá a crear."      Font "&mLetRom",14 Style "BTI"
ENDPROC
*
PROCEDURE Bor_0000a
 PARAMETER pdBf, plEt
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"F"+plEt+mcIi+pdBf+mcDx TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"F"+plEt+mcIi+pdBf+mcDx TO mdBf
 ENDIF
 Delete File &mDBF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"F"+plEt+mcIi+pdBf+meXt TO mdBf
      STORE mpTh+"F"+pdBf+meXt TO mdB1
 ELSE
      STORE muNi+":"+mpTh+"F"+plEt+mcIi+pdBf+meXt TO mdBf
      STORE muNi+":"+mpTh+"F"+pdBf+meXt TO mdB1
 ENDIF
ENDPROC
*
PROCEDURE Abr_0000a
 PARAMETER pdBf, plEt
 DO ab1_0000a WITH pdBf, plEt
 DO veR_0000a
ENDPROC
*
PROCEDURE Ab1_0000a
 PARAMETER pdBf, plEt
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"F"+plEt+mcIi+pdBf+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"F"+plEt+mcIi+pdBf+meXt TO mdBf
 ENDIF
ENDPROC
*
PROCEDURE Ver_0000a
 If .not.File("&mDBF")
      STORE "Archivo o Ruta no Valida: "+mdBf TO mmSj
      DO poNmsj
      = INKEY(0.5)
      STORE k_Esc TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Abb_0000a
 STORE 04 TO meRr
 Use &mDBF Exclusive
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 03 TO meRr
 DELETE TAG alL
 PACK
 SET UNIQUE OFF
 SET UNIQUE ON
ENDPROC
*
PROCEDURE Cie_0000a
 SET UNIQUE OFF
 REINDEX
 SET UNIQUE ON
 STORE 00 TO meRr
 CLOSE INDEXES
 CLOSE DATABASES
 WAIT WINDOW TIMEOUT 0.01 "Fin de este proceso..."
ENDPROC
*
