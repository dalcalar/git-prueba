 = INKEY(0.01)
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_4200b IN PKC4200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(04) TO icOd
 ENDIF
 IF LEN(ALLTRIM(icOd))=0 .OR. (vsW0=1 .AND. (UPPER(ALLTRIM(icOd))> ;
    UPPER(ALLTRIM(vcOd)) .OR. UPPER(ALLTRIM(ucOd))<UPPER(ALLTRIM(vcOd))))  ;
    .OR. (vsW0=2 .AND. (UPPER(ALLTRIM(iaPp))>UPPER(ALLTRIM(vaPp)) .OR.  ;
    UPPER(ALLTRIM(uaPp))<UPPER(ALLTRIM(vaPp)))) .OR. (vsW0=3 .AND.  ;
    (UPPER(ALLTRIM(irUc))>UPPER(ALLTRIM(vrUc)) .OR. UPPER(ALLTRIM(urUc))< ;
    UPPER(ALLTRIM(vrUc)))) .OR. (vsW0=4 .AND. (UPPER(ALLTRIM(ieLe))> ;
    UPPER(ALLTRIM(veLe)) .OR. UPPER(ALLTRIM(ueLe))<UPPER(ALLTRIM(veLe))))  ;
    .OR. (vsW0=5 .AND. (UPPER(ALLTRIM(inCa))>UPPER(ALLTRIM(vnCa)) .OR.  ;
    UPPER(ALLTRIM(unCa))<UPPER(ALLTRIM(vnCa)))) .OR. (vsW0=6 .AND.  ;
    (UPPER(ALLTRIM(inAr))>UPPER(ALLTRIM(vnAr)) .OR. UPPER(ALLTRIM(unAr))< ;
    UPPER(ALLTRIM(vnAr))))
      GOTO TOP
      DO veR_lock
      SET NEAR ON
      DO CASE
           CASE vsW0=01
                SEEK ALLTRIM(UPPER(vcOd))
           CASE vsW0=02
                SEEK ALLTRIM(UPPER(vaPp))
           CASE vsW0=03
                SEEK ALLTRIM(UPPER(vrUc))
           CASE vsW0=04
                SEEK ALLTRIM(UPPER(veLe))
           CASE vsW0=05
                SEEK ALLTRIM(UPPER(vnCa))
           CASE vsW0=06
                SEEK ALLTRIM(UPPER(vnAr))
      ENDCASE
      SET NEAR OFF
      DO veR_lock
      IF EOF()
           GOTO BOTTOM
           DO veR_lock
      ENDIF
      DO paN_4221b
      STORE ifIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "i", "v"
 ELSE
      DO seE_4200b IN PKC4200B WITH "v"
      IF EOF()
           GOTO TOP
           DO veR_lock
           SET NEAR ON
           DO CASE
                CASE vsW0=01
                     SEEK vcOd
                CASE vsW0=02
                     SEEK UPPER(ALLTRIM(vaPp))
                CASE vsW0=03
                     SEEK vrUc
                CASE vsW0=04
                     SEEK veLe
                CASE vsW0=05
                     SEEK UPPER(ALLTRIM(vnCa))
                CASE vsW0=06
                     SEEK UPPER(ALLTRIM(vnAr))
           ENDCASE
           SET NEAR OFF
           DO veR_lock
           IF EOF()
                GOTO BOTTOM
                DO veR_lock
           ENDIF
           DO muE_4200b IN PKC4200B WITH "F", "v"
      ENDIF
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_4200b IN PKC4200B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f4200cod=vcOd
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
           DO veR_lock
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_4200b IN PKC4200B WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_4200b IN PKC4200B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_4200b IN PKC4200B WITH "i"
      SET NEAR OFF
      DO paN_4221b
      STORE ifIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "i", "v"
      DO seE_4200b IN PKC4200B WITH "v"
 ENDIF
 DO diS_4221b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4221b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4221b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_4221b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_4221b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_4221b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4221b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=6
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                SET READBORDER ON
                DO p01_4200a IN PKC4200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO caM_4221b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F8
                vxLs = SYS(5)+CURDIR()+mvIn+"Horarios_x_Trabajador.XLS"
                SELECT tmP_excel
                ZAP
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                GOTO TOP
                DO veR_lock
                DO WHILE  .NOT. EOF()
                     WAIT WINDOW NOWAIT "Leyendo: "+f4200cod
                     STORE f4200cod TO xcOd
                     STORE f4200nca TO xnCa
                     STORE f4200are TO xaRe
                     STORE f4200nar TO xnAr
                     STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ ;
                           f4200nom TO xnOm
                     IF f4200est="9"
                          STORE "Anu" TO xeSt
                     ELSE
                          STORE "   " TO xeSt
                     ENDIF
                     SELECT hoRarios
                     SEEK xcOd
                     DO veR_lock
                     IF EOF()
                          SELECT hoR_area
                          SEEK xaRe
                          DO veR_lock
                          IF EOF()
                               STORE 0 TO xtO1, xtO2, xtO3, xtO4, xtO5,  ;
                                     xtO6, xtO7
                               STORE 0 TO xrF1, xrF2, xrF3, xrF4, xrF5,  ;
                                     xrF6, xrF7
                               STORE SPACE(5) TO xiN1, xiN2, xiN3, xiN4,  ;
                                     xiN5, xiN6, xiN7
                               STORE SPACE(5) TO xsA1, xsA2, xsA3, xsA4,  ;
                                     xsA5, xsA6, xsA7
                               STORE SPACE(5) TO xrS1, xrS2, xrS3, xrS4,  ;
                                     xrS5, xrS6, xrS7
                               STORE SPACE(5) TO xrI1, xrI2, xrI3, xrI4,  ;
                                     xrI5, xrI6, xrI7
                          ELSE
                               STORE f4220in1 TO xiN1
                               STORE f4220sa1 TO xsA1
                               STORE f4220to1 TO xtO1
                               STORE f4220rs1 TO xrS1
                               STORE f4220ri1 TO xrI1
                               STORE f4220rf1 TO xrF1
                               STORE f4220in2 TO xiN2
                               STORE f4220sa2 TO xsA2
                               STORE f4220to2 TO xtO2
                               STORE f4220rs2 TO xrS2
                               STORE f4220ri2 TO xrI2
                               STORE f4220rf2 TO xrF2
                               STORE f4220in3 TO xiN3
                               STORE f4220sa3 TO xsA3
                               STORE f4220to3 TO xtO3
                               STORE f4220rs3 TO xrS3
                               STORE f4220ri3 TO xrI3
                               STORE f4220rf3 TO xrF3
                               STORE f4220in4 TO xiN4
                               STORE f4220sa4 TO xsA4
                               STORE f4220to4 TO xtO4
                               STORE f4220rs4 TO xrS4
                               STORE f4220ri4 TO xrI4
                               STORE f4220rf4 TO xrF4
                               STORE f4220in5 TO xiN5
                               STORE f4220sa5 TO xsA5
                               STORE f4220to5 TO xtO5
                               STORE f4220rs5 TO xrS5
                               STORE f4220ri5 TO xrI5
                               STORE f4220rf5 TO xrF5
                               STORE f4220in6 TO xiN6
                               STORE f4220sa6 TO xsA6
                               STORE f4220to6 TO xtO6
                               STORE f4220rs6 TO xrS6
                               STORE f4220ri6 TO xrI6
                               STORE f4220rf6 TO xrF6
                               STORE f4220in7 TO xiN7
                               STORE f4220sa7 TO xsA7
                               STORE f4220to7 TO xtO7
                               STORE f4220rs7 TO xrS7
                               STORE f4220ri7 TO xrI7
                               STORE f4220rf7 TO xrF7
                          ENDIF
                     ELSE
                          STORE f4221in1 TO xiN1
                          STORE f4221sa1 TO xsA1
                          STORE f4221to1 TO xtO1
                          STORE f4221rs1 TO xrS1
                          STORE f4221ri1 TO xrI1
                          STORE f4221rf1 TO xrF1
                          STORE f4221in2 TO xiN2
                          STORE f4221sa2 TO xsA2
                          STORE f4221to2 TO xtO2
                          STORE f4221rs2 TO xrS2
                          STORE f4221ri2 TO xrI2
                          STORE f4221rf2 TO xrF2
                          STORE f4221in3 TO xiN3
                          STORE f4221sa3 TO xsA3
                          STORE f4221to3 TO xtO3
                          STORE f4221rs3 TO xrS3
                          STORE f4221ri3 TO xrI3
                          STORE f4221rf3 TO xrF3
                          STORE f4221in4 TO xiN4
                          STORE f4221sa4 TO xsA4
                          STORE f4221to4 TO xtO4
                          STORE f4221rs4 TO xrS4
                          STORE f4221ri4 TO xrI4
                          STORE f4221rf4 TO xrF4
                          STORE f4221in5 TO xiN5
                          STORE f4221sa5 TO xsA5
                          STORE f4221to5 TO xtO5
                          STORE f4221rs5 TO xrS5
                          STORE f4221ri5 TO xrI5
                          STORE f4221rf5 TO xrF5
                          STORE f4221in6 TO xiN6
                          STORE f4221sa6 TO xsA6
                          STORE f4221to6 TO xtO6
                          STORE f4221rs6 TO xrS6
                          STORE f4221ri6 TO xrI6
                          STORE f4221rf6 TO xrF6
                          STORE f4221in7 TO xiN7
                          STORE f4221sa7 TO xsA7
                          STORE f4221to7 TO xtO7
                          STORE f4221rs7 TO xrS7
                          STORE f4221ri7 TO xrI7
                          STORE f4221rf7 TO xrF7
                     ENDIF
                     SELECT tmP_excel
                     APPEND BLANK
                     REPLACE coDigo WITH xcOd
                     REPLACE esTado WITH xeSt
                     REPLACE noMbre WITH xnOm
                     REPLACE caRgo WITH xnCa
                     REPLACE arEa WITH xnAr
                     REPLACE inGres1 WITH xiN1
                     REPLACE saLida1 WITH xsA1
                     REPLACE toLera1 WITH xtO1
                     REPLACE inIref1 WITH xrS1
                     REPLACE fiNref1 WITH xrI1
                     REPLACE tiEref1 WITH xrF1
                     REPLACE inGres2 WITH xiN2
                     REPLACE saLida2 WITH xsA2
                     REPLACE toLera2 WITH xtO2
                     REPLACE inIref2 WITH xrS2
                     REPLACE fiNref2 WITH xrI2
                     REPLACE tiEref2 WITH xrF2
                     REPLACE inGres3 WITH xiN3
                     REPLACE saLida3 WITH xsA3
                     REPLACE toLera3 WITH xtO3
                     REPLACE inIref3 WITH xrS3
                     REPLACE fiNref3 WITH xrI3
                     REPLACE tiEref3 WITH xrF3
                     REPLACE inGres4 WITH xiN4
                     REPLACE saLida4 WITH xsA4
                     REPLACE toLera4 WITH xtO4
                     REPLACE inIref4 WITH xrS4
                     REPLACE fiNref4 WITH xrI4
                     REPLACE tiEref4 WITH xrF4
                     REPLACE inGres5 WITH xiN5
                     REPLACE saLida5 WITH xsA5
                     REPLACE toLera5 WITH xtO5
                     REPLACE inIref5 WITH xrS5
                     REPLACE fiNref5 WITH xrI5
                     REPLACE tiEref5 WITH xrF5
                     REPLACE inGres6 WITH xiN6
                     REPLACE saLida6 WITH xsA6
                     REPLACE toLera6 WITH xtO6
                     REPLACE inIref6 WITH xrS6
                     REPLACE fiNref6 WITH xrI6
                     REPLACE tiEref6 WITH xrF6
                     REPLACE inGres7 WITH xiN7
                     REPLACE saLida7 WITH xsA7
                     REPLACE toLera7 WITH xtO7
                     REPLACE inIref7 WITH xrS7
                     REPLACE fiNref7 WITH xrI7
                     REPLACE tiEref7 WITH xrF7
                     DO CASE
                          CASE vsW1=01
                               SELECT trAbajadores
                          CASE vsW1=02
                               SELECT teMporal
                     ENDCASE
                     SKIP
                     DO veR_lock
                ENDDO
                WAIT CLEAR
                SELECT tmP_excel
                Export to &vXLS Type XLS
                DO xlS_0000a WITH "Horarios x Trabajador", "Horarios", 47
                pxLs.raNge(pxLs.ceLls(2,01), pxLs.ceLls(2,47)).inSert
                pxLs.raNge(pxLs.ceLls(4,01), pxLs.ceLls(4,47)).inSert
                pxLs.ceLls(3, 06).vaLue = "Lunes"
                pxLs.ceLls(3, 12).vaLue = "Martes"
                pxLs.ceLls(3, 18).vaLue = "Miercoles"
                pxLs.ceLls(3, 24).vaLue = "Jueves"
                pxLs.ceLls(3, 30).vaLue = "Viernes"
                pxLs.ceLls(3, 36).vaLue = "Sabado"
                pxLs.ceLls(3, 42).vaLue = "Domingo"
                pxLs.ceLls(5, 01).vaLue = "Codigo"
                pxLs.ceLls(5, 02).vaLue = "Estado"
                pxLs.ceLls(5, 03).vaLue = "Apellidos y Nombres"
                pxLs.ceLls(5, 04).vaLue = "Cargo"
                pxLs.ceLls(5, 05).vaLue = "Area"
                pxLs.ceLls(4, 06).vaLue = "Ingresos/Salidas"
                pxLs.ceLls(4, 09).vaLue = "Refrigerio"
                pxLs.ceLls(5, 06).vaLue = "Entrada"
                pxLs.ceLls(5, 07).vaLue = "Salida"
                pxLs.ceLls(5, 08).vaLue = "Tolerancia"
                pxLs.ceLls(5, 09).vaLue = "Inicio"
                pxLs.ceLls(5, 10).vaLue = "Fin"
                pxLs.ceLls(5, 11).vaLue = "Tiempo"
                pxLs.ceLls(4, 12).vaLue = "Ingresos/Salidas"
                pxLs.ceLls(4, 15).vaLue = "Refrigerio"
                pxLs.ceLls(5, 12).vaLue = "Entrada"
                pxLs.ceLls(5, 13).vaLue = "Salida"
                pxLs.ceLls(5, 14).vaLue = "Tolerancia"
                pxLs.ceLls(5, 15).vaLue = "Inicio"
                pxLs.ceLls(5, 16).vaLue = "Fin"
                pxLs.ceLls(5, 17).vaLue = "Tiempo"
                pxLs.ceLls(4, 18).vaLue = "Ingresos/Salidas"
                pxLs.ceLls(4, 21).vaLue = "Refrigerio"
                pxLs.ceLls(5, 18).vaLue = "Entrada"
                pxLs.ceLls(5, 19).vaLue = "Salida"
                pxLs.ceLls(5, 20).vaLue = "Tolerancia"
                pxLs.ceLls(5, 21).vaLue = "Inicio"
                pxLs.ceLls(5, 22).vaLue = "Fin"
                pxLs.ceLls(5, 23).vaLue = "Tiempo"
                pxLs.ceLls(4, 24).vaLue = "Ingresos/Salidas"
                pxLs.ceLls(4, 27).vaLue = "Refrigerio"
                pxLs.ceLls(5, 24).vaLue = "Entrada"
                pxLs.ceLls(5, 25).vaLue = "Salida"
                pxLs.ceLls(5, 26).vaLue = "Tolerancia"
                pxLs.ceLls(5, 27).vaLue = "Inicio"
                pxLs.ceLls(5, 28).vaLue = "Fin"
                pxLs.ceLls(5, 29).vaLue = "Tiempo"
                pxLs.ceLls(4, 30).vaLue = "Ingresos/Salidas"
                pxLs.ceLls(4, 33).vaLue = "Refrigerio"
                pxLs.ceLls(5, 30).vaLue = "Entrada"
                pxLs.ceLls(5, 31).vaLue = "Salida"
                pxLs.ceLls(5, 32).vaLue = "Tolerancia"
                pxLs.ceLls(5, 33).vaLue = "Inicio"
                pxLs.ceLls(5, 34).vaLue = "Fin"
                pxLs.ceLls(5, 35).vaLue = "Tiempo"
                pxLs.ceLls(4, 36).vaLue = "Ingresos/Salidas"
                pxLs.ceLls(4, 39).vaLue = "Refrigerio"
                pxLs.ceLls(5, 36).vaLue = "Entrada"
                pxLs.ceLls(5, 37).vaLue = "Salida"
                pxLs.ceLls(5, 38).vaLue = "Tolerancia"
                pxLs.ceLls(5, 39).vaLue = "Inicio"
                pxLs.ceLls(5, 40).vaLue = "Fin"
                pxLs.ceLls(5, 41).vaLue = "Tiempo"
                pxLs.ceLls(4, 42).vaLue = "Ingresos/Salidas"
                pxLs.ceLls(4, 45).vaLue = "Refrigerio"
                pxLs.ceLls(5, 42).vaLue = "Entrada"
                pxLs.ceLls(5, 43).vaLue = "Salida"
                pxLs.ceLls(5, 44).vaLue = "Tolerancia"
                pxLs.ceLls(5, 45).vaLue = "Inicio"
                pxLs.ceLls(5, 46).vaLue = "Fin"
                pxLs.ceLls(5, 47).vaLue = "Tiempo"
                pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(5,01)).meRge
                pxLs.raNge(pxLs.ceLls(3,02), pxLs.ceLls(5,02)).meRge
                pxLs.raNge(pxLs.ceLls(3,03), pxLs.ceLls(5,03)).meRge
                pxLs.raNge(pxLs.ceLls(3,04), pxLs.ceLls(5,04)).meRge
                pxLs.raNge(pxLs.ceLls(3,05), pxLs.ceLls(5,05)).meRge
                pxLs.raNge(pxLs.ceLls(4,06), pxLs.ceLls(4,08)).meRge
                pxLs.raNge(pxLs.ceLls(4,09), pxLs.ceLls(4,11)).meRge
                pxLs.raNge(pxLs.ceLls(4,12), pxLs.ceLls(4,14)).meRge
                pxLs.raNge(pxLs.ceLls(4,15), pxLs.ceLls(4,17)).meRge
                pxLs.raNge(pxLs.ceLls(4,18), pxLs.ceLls(4,20)).meRge
                pxLs.raNge(pxLs.ceLls(4,21), pxLs.ceLls(4,23)).meRge
                pxLs.raNge(pxLs.ceLls(4,24), pxLs.ceLls(4,26)).meRge
                pxLs.raNge(pxLs.ceLls(4,27), pxLs.ceLls(4,29)).meRge
                pxLs.raNge(pxLs.ceLls(4,30), pxLs.ceLls(4,32)).meRge
                pxLs.raNge(pxLs.ceLls(4,33), pxLs.ceLls(4,35)).meRge
                pxLs.raNge(pxLs.ceLls(4,36), pxLs.ceLls(4,38)).meRge
                pxLs.raNge(pxLs.ceLls(4,39), pxLs.ceLls(4,41)).meRge
                pxLs.raNge(pxLs.ceLls(4,42), pxLs.ceLls(4,44)).meRge
                pxLs.raNge(pxLs.ceLls(4,45), pxLs.ceLls(4,47)).meRge
                pxLs.raNge(pxLs.ceLls(3,06), pxLs.ceLls(3,11)).meRge
                pxLs.raNge(pxLs.ceLls(3,12), pxLs.ceLls(3,17)).meRge
                pxLs.raNge(pxLs.ceLls(3,18), pxLs.ceLls(3,23)).meRge
                pxLs.raNge(pxLs.ceLls(3,24), pxLs.ceLls(3,29)).meRge
                pxLs.raNge(pxLs.ceLls(3,30), pxLs.ceLls(3,35)).meRge
                pxLs.raNge(pxLs.ceLls(3,36), pxLs.ceLls(3,41)).meRge
                pxLs.raNge(pxLs.ceLls(3,42), pxLs.ceLls(3,47)).meRge
                pxLs.raNge(pxLs.coLumns(1),  ;
                          pxLs.coLumns(02)).hoRizontalalignment = 3
                pxLs.raNge(pxLs.coLumns(6),  ;
                          pxLs.coLumns(47)).hoRizontalalignment = 3
                WITH pxLs.raNge(pxLs.ceLls(3,1),pxLs.ceLls(5,47))
                     .foNt.boLd = .T.
                     .foNt.siZe = 11
                     .foNt.naMe = "Times New Roman"
                     .boRders.liNestyle = 7
                     .boRders(1).weIght = 2
                     .boRders(2).weIght = 2
                     .boRders(3).weIght = 2
                     .boRders(4).weIght = 2
                     .foNt.coLorindex = 1
                     .inTerior.coLorindex = 15
                     .hoRizontalalignment = 3
                     .veRticalalignment = 2
                ENDWITH
                DO xl1_0000a
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO seE_4200b IN PKC4200B WITH "v"
                STORE 99 TO mkEy
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_4221b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO seE_4200b IN PKC4200B WITH "v"
                DO diS_4221b WITH "R"
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_4221b
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO CASE
                     CASE vsW1=01
                          SELECT trAbajadores
                     CASE vsW1=02
                          SELECT teMporal
                ENDCASE
                DO seE_4200b IN PKC4200B WITH "v"
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO veR_lock
                DO CASE
                     CASE f4200cod=icOd .AND. vcOd=icOd
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=icOd
                                    DO paN_4221b
                               OTHERWISE
                                    DO seE_4200b IN PKC4200B WITH "v"
                                    DO diS_4221b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_4200b IN PKC4200B WITH "i", "v"
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4221b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE f4200cod=ucOd .AND. vcOd=ucOd
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcOd=ucOd
                                    SKIP -INT(ffIl-ifIl)
                                    DO veR_lock
                                    DO paN_4221b
                               OTHERWISE
                                    DO seE_4200b IN PKC4200B WITH "v"
                                    DO diS_4221b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_4200b IN PKC4200B WITH "u", "v"
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4221b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4221b WITH "N"
                          SKIP
                          DO veR_lock
                          IF vcOd=ucOd
                               DO coL_beige
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO muE_4200b IN PKC4200B WITH "F", "v"
                               DO muE_4200b IN PKC4200B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO veR_lock
                               DO muE_4200b IN PKC4200B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                               DO veR_lock
                          ELSE
                               DO muE_4200b IN PKC4200B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4221b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4221b WITH "N"
                          SKIP -1
                          DO veR_lock
                          IF vcOd=icOd
                               DO coL_beige
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO muE_4200b IN PKC4200B WITH "F", "v"
                               DO muE_4200b IN PKC4200B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO veR_lock
                                    DO muE_4200b IN PKC4200B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_4200b IN PKC4200B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4221b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_4200b IN PKC4200B WITH "u"
                SKIP
                DO veR_lock
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_4221b
                          STORE ifIl TO vfIl
                          DO muE_4200b IN PKC4200B WITH "i", "v"
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4221b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_4200b IN PKC4200B WITH "i"
                SKIP -1
                DO veR_lock
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          DO veR_lock
                          IF BOF()
                               GOTO TOP
                               DO veR_lock
                          ENDIF
                          DO paN_4221b
                          STORE ifIl TO vfIl
                          DO muE_4200b IN PKC4200B WITH "i", "v"
                          DO seE_4200b IN PKC4200B WITH "v"
                          DO diS_4221b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_4200b IN PKC4200B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_4221b
 STORE ifIl TO vfIl, ufIl
 DO muE_4200b IN PKC4200B WITH "F", "i"
 DO muE_4200b IN PKC4200B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_4221b WITH "N"
      DO muE_4200b IN PKC4200B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
      DO veR_lock
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_beige
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_4221a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Pa1_4221b
 STORE ifIl TO vfIl, ufIl
 DO muE_4200b IN PKC4200B WITH "F", "i"
 DO muE_4200b IN PKC4200B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE f4200cod=xcOd
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_4221b WITH "N"
      ENDCASE
      DO muE_4200b IN PKC4200B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
      DO veR_lock
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_beige
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_4221a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_4221b
 PARAMETER ptIp
 PRIVATE pnOm, peSt, pcOd, paRe
 STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+f4200nom TO pnOm
 IF f4200est="9"
      STORE "Anu" TO peSt
 ELSE
      STORE "   " TO peSt
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN+00.1 Say F4200COD Font "&mLetAri",9 Style "NQ" Size 1,10.0
 @vFIL,iCLN+10.6 Say pEST     Font "&mLetAri",9 Style "NQ" Size 1,04.7
 DO CASE
      CASE mrEs="1"
           @vFIL,iCLN+016.1 Say pNOM     Font "&mLetAri",9 Style "NQ" Size 1,45.1 Pict "@S48"
      CASE mrEs="2"
           @vFIL,iCLN+016.1 Say pNOM     Font "&mLetAri",9 Style "NQ" Size 1,50.1 Pict "@S53"
           @vFIL,iCLN+066.8 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,24.3 Pict "@S27"
      CASE mrEs="3"
           @vFIL,iCLN+016.1 Say pNOM     Font "&mLetAri",9 Style "NQ" Size 1,60.1 Pict "@S63"
           @vFIL,iCLN+076.8 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,29.3 Pict "@S32"
           @vFIL,iCLN+106.9 Say F4200NAR Font "&mLetAri",9 Style "NQ" Size 1,29.9 Pict "@S32"
      CASE mrEs>="4"
           @vFIL,iCLN+016.1 Say pNOM     Font "&mLetAri",9 Style "NQ" Size 1,60.1 Pict "@S63"
           @vFIL,iCLN+076.8 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,29.3 Pict "@S32"
           @vFIL,iCLN+106.9 Say F4200NAR Font "&mLetAri",9 Style "NQ" Size 1,33.7 Pict "@S36"
 ENDCASE
 DO coLsc7
 @vFI0-5.8,vCO0+01 Say AllTrim(F4200APP)+" "+AllTrim(F4200APM)+" "+AllTrim(F4200NOM) Font "&mLetAri",9 Style "BQU" Size 1,47 Pict "@S47"
 @vFI0-4.5,vCO0+10 Say AllTrim(F4200NCA)                                             Font "&mLetAri",9 Style "BQU" Size 1,16 Pict "@S18"
 @vFI0-4.5,vCO0+38 Say AllTrim(F4200NAR)                                             Font "&mLetAri",9 Style "BQU" Size 1,16 Pict "@S18"
 STORE f4200cod TO pcOd
 STORE f4200are TO paRe
 DO coLbln
 SELECT hoRarios
 SEEK pcOd
 DO veR_lock
 IF EOF()
      SELECT hoR_area
      SEEK paRe
      DO veR_lock
      IF EOF()
           @vFI0+00.5,vCO0+16.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+02.5,vCO0+16.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+04.5,vCO0+16.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+06.5,vCO0+16.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+08.5,vCO0+16.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+10.5,vCO0+16.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+12.5,vCO0+16.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+00.5,vCO0+25.0 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+02.5,vCO0+25.0 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+04.5,vCO0+25.0 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+06.5,vCO0+25.0 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+08.5,vCO0+25.0 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+10.5,vCO0+25.0 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+12.5,vCO0+25.0 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+00.5,vCO0+33.8 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+02.5,vCO0+33.8 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+04.5,vCO0+33.8 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+06.5,vCO0+33.8 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+08.5,vCO0+33.8 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+10.5,vCO0+33.8 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+12.5,vCO0+33.8 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+00.5,vCO0+39.3 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+02.5,vCO0+39.3 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+04.5,vCO0+39.3 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+06.5,vCO0+39.3 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+08.5,vCO0+39.3 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+10.5,vCO0+39.3 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+12.5,vCO0+39.3 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+00.5,vCO0+48.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+02.5,vCO0+48.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+04.5,vCO0+48.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+06.5,vCO0+48.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+08.5,vCO0+48.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+10.5,vCO0+48.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+12.5,vCO0+48.1 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,5.3
           @vFI0+00.5,vCO0+56.9 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+02.5,vCO0+56.9 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+04.5,vCO0+56.9 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+06.5,vCO0+56.9 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+08.5,vCO0+56.9 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+10.5,vCO0+56.9 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
           @vFI0+12.5,vCO0+56.9 Say " "      Font "&mLetAri",10 Style "NQ" Size 1,2.7
      ELSE
           @vFI0+00.5,vCO0+16.1 Say F4220IN1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+02.5,vCO0+16.1 Say F4220IN2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+04.5,vCO0+16.1 Say F4220IN3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+06.5,vCO0+16.1 Say F4220IN4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+08.5,vCO0+16.1 Say F4220IN5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+10.5,vCO0+16.1 Say F4220IN6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+12.5,vCO0+16.1 Say F4220IN7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+00.5,vCO0+25.0 Say F4220SA1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+02.5,vCO0+25.0 Say F4220SA2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+04.5,vCO0+25.0 Say F4220SA3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+06.5,vCO0+25.0 Say F4220SA4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+08.5,vCO0+25.0 Say F4220SA5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+10.5,vCO0+25.0 Say F4220SA6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+12.5,vCO0+25.0 Say F4220SA7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+00.5,vCO0+33.8 Say F4220TO1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+02.5,vCO0+33.8 Say F4220TO2 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+04.5,vCO0+33.8 Say F4220TO3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+06.5,vCO0+33.8 Say F4220TO4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+08.5,vCO0+33.8 Say F4220TO5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+10.5,vCO0+33.8 Say F4220TO6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+12.5,vCO0+33.8 Say F4220TO7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+00.5,vCO0+39.3 Say F4220RS1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+02.5,vCO0+39.3 Say F4220RS2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+04.5,vCO0+39.3 Say F4220RS3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+06.5,vCO0+39.3 Say F4220RS4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+08.5,vCO0+39.3 Say F4220RS5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+10.5,vCO0+39.3 Say F4220RS6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+12.5,vCO0+39.3 Say F4220RS7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+00.5,vCO0+48.1 Say F4220RI1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+02.5,vCO0+48.1 Say F4220RI2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+04.5,vCO0+48.1 Say F4220RI3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+06.5,vCO0+48.1 Say F4220RI4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+08.5,vCO0+48.1 Say F4220RI5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+10.5,vCO0+48.1 Say F4220RI6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+12.5,vCO0+48.1 Say F4220RI7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
           @vFI0+00.5,vCO0+56.9 Say F4220RF1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+02.5,vCO0+56.9 Say F4220RF2 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+04.5,vCO0+56.9 Say F4220RF3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+06.5,vCO0+56.9 Say F4220RF4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+08.5,vCO0+56.9 Say F4220RF5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+10.5,vCO0+56.9 Say F4220RF6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
           @vFI0+12.5,vCO0+56.9 Say F4220RF7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      ENDIF
 ELSE
      @vFI0+00.5,vCO0+16.1 Say F4221IN1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+02.5,vCO0+16.1 Say F4221IN2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+04.5,vCO0+16.1 Say F4221IN3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+06.5,vCO0+16.1 Say F4221IN4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+08.5,vCO0+16.1 Say F4221IN5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+10.5,vCO0+16.1 Say F4221IN6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+12.5,vCO0+16.1 Say F4221IN7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+00.5,vCO0+25.0 Say F4221SA1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+02.5,vCO0+25.0 Say F4221SA2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+04.5,vCO0+25.0 Say F4221SA3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+06.5,vCO0+25.0 Say F4221SA4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+08.5,vCO0+25.0 Say F4221SA5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+10.5,vCO0+25.0 Say F4221SA6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+12.5,vCO0+25.0 Say F4221SA7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+00.5,vCO0+33.8 Say F4221TO1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+02.5,vCO0+33.8 Say F4221TO2 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+04.5,vCO0+33.8 Say F4221TO3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+06.5,vCO0+33.8 Say F4221TO4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+08.5,vCO0+33.8 Say F4221TO5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+10.5,vCO0+33.8 Say F4221TO6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+12.5,vCO0+33.8 Say F4221TO7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+00.5,vCO0+39.3 Say F4221RS1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+02.5,vCO0+39.3 Say F4221RS2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+04.5,vCO0+39.3 Say F4221RS3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+06.5,vCO0+39.3 Say F4221RS4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+08.5,vCO0+39.3 Say F4221RS5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+10.5,vCO0+39.3 Say F4221RS6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+12.5,vCO0+39.3 Say F4221RS7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+00.5,vCO0+48.1 Say F4221RI1 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+02.5,vCO0+48.1 Say F4221RI2 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+04.5,vCO0+48.1 Say F4221RI3 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+06.5,vCO0+48.1 Say F4221RI4 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+08.5,vCO0+48.1 Say F4221RI5 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+10.5,vCO0+48.1 Say F4221RI6 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+12.5,vCO0+48.1 Say F4221RI7 Font "&mLetAri",10 Style "NQ" Size 1,5.3 Pict "99:99"
      @vFI0+00.5,vCO0+56.9 Say F4221RF1 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+02.5,vCO0+56.9 Say F4221RF2 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+04.5,vCO0+56.9 Say F4221RF3 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+06.5,vCO0+56.9 Say F4221RF4 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+08.5,vCO0+56.9 Say F4221RF5 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+10.5,vCO0+56.9 Say F4221RF6 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
      @vFI0+12.5,vCO0+56.9 Say F4221RF7 Font "&mLetAri",10 Style "NQ" Size 1,2.7 Pict "99"
 ENDIF
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 RELEASE pnOm, peSt, pcOd, paRe
ENDPROC
*
PROCEDURE Opc_4221b
 DO rs2_4200a IN PKC4200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4221b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_4200a IN PKC4200A
           IF mkEy=k_Esc
                RETURN
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
                     77 .AND. mcCc<=mmC1+85.80
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
                DO rs1_4221b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_4200a IN PKC4200A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_4200b IN PKC4200B
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
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f4200app)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f4200apm)))<>0
                          DO muE_4200a IN PKC4200A
                          DO grA_4200a IN PKC4200A
                          SELECT trAbajadores
                     ENDIF
                     SKIP
                     DO veR_lock
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO CASE
           CASE mrEs="1"
                @iFIL+1.8,mCO0+21.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="2"
                @iFIL+1.8,mCO0+41.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs="3"
                @iFIL+1.8,mCO0+51.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
           CASE mrEs$"45"
                @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW1=01
                SELECT trAbajadores
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO orD_4200b IN PKC4200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO veR_lock
      DO paN_4221b
      STORE SPACE(04) TO vcOd
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_4200b IN PKC4200B WITH "i", "v"
 ENDIF
 DO coL_beige
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Font "&mLetRom",9 Style "BQ" Size 1,47 Pict "@S47"
ENDPROC
*
PROCEDURE Cam_4221b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_4200b IN PKC4200B WITH "v", "x"
 DO orD_4200b IN PKC4200B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 DO seE_4200b IN PKC4200B WITH "i"
 DO pa1_4221b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      DO muE_4200b IN PKC4200B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_4200b IN PKC4200B WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_4200b IN PKC4200B WITH "v"
 DO diS_4221b WITH "R"
ENDPROC
*
PROCEDURE Imp_4221b
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_4221b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_4221b
 PRIVATE ptAm, pcOd, paRe, pcLn
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 96 TO ptAm
           STORE 10 TO mcLn
      CASE mvIs=0 .AND. mpRt="2"
           STORE 90 TO ptAm
           STORE 10 TO mcLn
      CASE mvIs=1
           DO CASE
                CASE mrEs="1"
                     STORE 78 TO ptAm
                CASE mrEs="2"
                     STORE 96 TO ptAm
                CASE mrEs="3"
                     STORE 124 TO ptAm
                CASE mrEs="4"
                     STORE 154 TO ptAm
                CASE mrEs>="5"
                     STORE 166 TO ptAm
           ENDCASE
           DO npG_0000a
           DO CASE
                CASE mrEs="2"
                     STORE mcLn-2 TO mcLn
                CASE mrEs="3"
                     STORE mcLn-10 TO mcLn
                CASE mrEs="4"
                     STORE mcLn-20 TO mcLn
                CASE mrEs>="5"
                     STORE mcLn-23 TO mcLn
           ENDCASE
 ENDCASE
 STORE mcLn+60 TO pcLn
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE vsW1=01
           SELECT trAbajadores
      CASE vsW1=02
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_4221b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE f4200cod TO pcOd
      STORE f4200are TO paRe
      SELECT hoRarios
      SEEK pcOd
      DO veR_lock
      IF EOF()
           SELECT hoRarios
           SEEK paRe
           DO veR_lock
           IF EOF()
                STORE 0 TO xtO1, xtO2, xtO3, xtO4, xtO5, xtO6, xtO7
                STORE 0 TO xrF1, xrF2, xrF3, xrF4, xrF5, xrF6, xrF7
                STORE SPACE(5) TO xiN1, xiN2, xiN3, xiN4, xiN5, xiN6, xiN7
                STORE SPACE(5) TO xsA1, xsA2, xsA3, xsA4, xsA5, xsA6, xsA7
                STORE SPACE(5) TO xrS1, xrS2, xrS3, xrS4, xrS5, xrS6, xrS7
                STORE SPACE(5) TO xrI1, xrI2, xrI3, xrI4, xrI5, xrI6, xrI7
           ELSE
                STORE f4220in1 TO xiN1
                STORE f4220sa1 TO xsA1
                STORE f4220to1 TO xtO1
                STORE f4220rs1 TO xrS1
                STORE f4220ri1 TO xrI1
                STORE f4220rf1 TO xrF1
                STORE f4220in2 TO xiN2
                STORE f4220sa2 TO xsA2
                STORE f4220to2 TO xtO2
                STORE f4220rs2 TO xrS2
                STORE f4220ri2 TO xrI2
                STORE f4220rf2 TO xrF2
                STORE f4220in3 TO xiN3
                STORE f4220sa3 TO xsA3
                STORE f4220to3 TO xtO3
                STORE f4220rs3 TO xrS3
                STORE f4220ri3 TO xrI3
                STORE f4220rf3 TO xrF3
                STORE f4220in4 TO xiN4
                STORE f4220sa4 TO xsA4
                STORE f4220to4 TO xtO4
                STORE f4220rs4 TO xrS4
                STORE f4220ri4 TO xrI4
                STORE f4220rf4 TO xrF4
                STORE f4220in5 TO xiN5
                STORE f4220sa5 TO xsA5
                STORE f4220to5 TO xtO5
                STORE f4220rs5 TO xrS5
                STORE f4220ri5 TO xrI5
                STORE f4220rf5 TO xrF5
                STORE f4220in6 TO xiN6
                STORE f4220sa6 TO xsA6
                STORE f4220to6 TO xtO6
                STORE f4220rs6 TO xrS6
                STORE f4220ri6 TO xrI6
                STORE f4220rf6 TO xrF6
                STORE f4220in7 TO xiN7
                STORE f4220sa7 TO xsA7
                STORE f4220to7 TO xtO7
                STORE f4220rs7 TO xrS7
                STORE f4220ri7 TO xrI7
                STORE f4220rf7 TO xrF7
           ENDIF
      ELSE
           STORE f4221in1 TO xiN1
           STORE f4221sa1 TO xsA1
           STORE f4221to1 TO xtO1
           STORE f4221rs1 TO xrS1
           STORE f4221ri1 TO xrI1
           STORE f4221rf1 TO xrF1
           STORE f4221in2 TO xiN2
           STORE f4221sa2 TO xsA2
           STORE f4221to2 TO xtO2
           STORE f4221rs2 TO xrS2
           STORE f4221ri2 TO xrI2
           STORE f4221rf2 TO xrF2
           STORE f4221in3 TO xiN3
           STORE f4221sa3 TO xsA3
           STORE f4221to3 TO xtO3
           STORE f4221rs3 TO xrS3
           STORE f4221ri3 TO xrI3
           STORE f4221rf3 TO xrF3
           STORE f4221in4 TO xiN4
           STORE f4221sa4 TO xsA4
           STORE f4221to4 TO xtO4
           STORE f4221rs4 TO xrS4
           STORE f4221ri4 TO xrI4
           STORE f4221rf4 TO xrF4
           STORE f4221in5 TO xiN5
           STORE f4221sa5 TO xsA5
           STORE f4221to5 TO xtO5
           STORE f4221rs5 TO xrS5
           STORE f4221ri5 TO xrI5
           STORE f4221rf5 TO xrF5
           STORE f4221in6 TO xiN6
           STORE f4221sa6 TO xsA6
           STORE f4221to6 TO xtO6
           STORE f4221rs6 TO xrS6
           STORE f4221ri6 TO xrI6
           STORE f4221rf6 TO xrF6
           STORE f4221in7 TO xiN7
           STORE f4221sa7 TO xsA7
           STORE f4221to7 TO xtO7
           STORE f4221rs7 TO xrS7
           STORE f4221ri7 TO xrI7
           STORE f4221rf7 TO xrF7
      ENDIF
      DO CASE
           CASE vsW1=01
                SELECT trAbajadores
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1 .AND. f4200est="9"
                     @vLIN,mCLN-1.8 Say "@" Font "&mLetAri",8 Style "BQ"
                CASE mpRt="1" .AND. f4200est="9"
                     @vLIN,mCLN-1.8 Say "@" Font "&mLetAri",8 Style "BQ"
                CASE mpRt="2" .AND. f4200est="9"
                     @vLIN,mCLN-1.9 Say "@" Font "&mLetSwi",8 Style "BQ"
           ENDCASE
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN      Say F4200COD Font "&mLetAri",9 Style "NQ" Size 1,06 Pict "@S04"
                     @vLIN,mCLN+06.8 Say F4200APP Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
                     @vLIN,mCLN+32.6 Say F4200APM Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
                     @vLIN,mCLN+58.4 Say F4200NOM Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S30"
                     DO CASE
                          CASE mrEs="1"
                               @vLIN,mCLN+089.2 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,35 Pict "@S37"
                          OTHERWISE
                               @vLIN,mCLN+089.2 Say F4200NCA Font "&mLetAri",9 Style "NQ" Size 1,38 Pict "@S41"
                               @vLIN,mCLN+128.0 Say F4200NAR Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
                     ENDCASE
                CASE mpRt="1"
                     @vLIN,mCLN     Say F4200COD Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+7   Say F4200APP Font "&mLetAri",9 Style "NT" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+27  Say F4200APM Font "&mLetAri",9 Style "NT" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+47  Say F4200NOM Font "&mLetAri",9 Style "NT" Size 1,25 Pict "@S28"
                CASE mpRt="2"
                     @vLIN,mCLN     Say F4200COD Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+7   Say F4200APP Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+27  Say F4200APM Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+47  Say F4200NOM Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO caB_4221b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+06.8 Say "Dia"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+19.9 Say "Entra"  Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+27.7 Say "Salida" Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+35.7 Say "Tol"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+41.7 Say "Inicio" Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+51.0 Say "Fin"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+57.5 Say "Tie"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+06.8 Say "Dia"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+19.9 Say "Entra"  Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+27.7 Say "Salida" Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+35.7 Say "Tol"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+41.7 Say "Inicio" Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+51.0 Say "Fin"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+57.5 Say "Tie"    Font "&mLetRom",10 Style "BQ"
                CASE mpRt="1"
                     @vLIN,mCLN+06.8 Say "Dia"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+19.9 Say "Entr"   Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+27.7 Say "Salid"  Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+35.7 Say "To"     Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+41.7 Say "Inic"   Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+51.0 Say "Fin"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+57.5 Say "Ti"     Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+06.8 Say "Dia"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+19.9 Say "Entr"   Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+27.7 Say "Salid"  Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+35.7 Say "To"     Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+41.7 Say "Inic"   Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+51.0 Say "Fin"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+57.5 Say "Ti"     Font "&mLetRom",10 Style "BQ"
                CASE mpRt="2"
                     @vLIN,mCLN+06.8 Say "Dia"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+19.9 Say "Entr"   Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+27.7 Say "Salid"  Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+35.7 Say "To"     Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+41.7 Say "Inic"   Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+51.0 Say "Fin"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+57.5 Say "Ti"     Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+06.8 Say "Dia"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+19.9 Say "Entr"   Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+27.7 Say "Salid"  Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+35.7 Say "To"     Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+41.7 Say "Inic"   Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+51.0 Say "Fin"    Font "&mLetRom",10 Style "BQ"
                     @vLIN,pCLN+57.5 Say "Ti"     Font "&mLetRom",10 Style "BQ"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO caB_4221b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+06.8 Say "Lunes"     Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO1        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF1        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Martes"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO2        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF2        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                CASE mpRt="1"
                     @vLIN,mCLN+06.8 Say "Lunes"     Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO1        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF1        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Martes"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO2        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF2        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                CASE mpRt="2"
                     @vLIN,mCLN+06.8 Say "Lunes"     Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO1        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI1        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF1        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Martes"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO2        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI2        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF2        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO caB_4221b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+06.8 Say "Miercoles" Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO3        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF3        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Jueves"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO4        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF4        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                CASE mpRt="1"
                     @vLIN,mCLN+06.8 Say "Miercoles" Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO3        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF3        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Jueves"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO4        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF4        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                CASE mpRt="2"
                     @vLIN,mCLN+06.8 Say "Miercoles" Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO3        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI3        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF3        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Jueves"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO4        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI4        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF4        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO caB_4221b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+06.8 Say "Viernes"   Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Sabado"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                CASE mpRt="1"
                     @vLIN,mCLN+06.8 Say "Viernes"   Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Sabado"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                CASE mpRt="2"
                     @vLIN,mCLN+06.8 Say "Viernes"   Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+06.8 Say "Sabado"    Font "&mLetRom",11 Style "NQ"
                     @vLIN,pCLN+19.8 Say xIN5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+27.8 Say xSA5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+35.8 Say xTO5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,pCLN+41.8 Say xRS5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+49.8 Say xRI5        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,pCLN+57.8 Say xRF5        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      IF vlIn>mpAg-3
           DO caB_4221b WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+06.8 Say "Domingo"   Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO7        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF7        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                CASE mpRt="1"
                     @vLIN,mCLN+06.8 Say "Domingo"   Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO7        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF7        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                CASE mpRt="2"
                     @vLIN,mCLN+06.8 Say "Domingo"   Font "&mLetRom",11 Style "NQ"
                     @vLIN,mCLN+19.8 Say xIN7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+27.8 Say xSA7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+35.8 Say xTO7        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
                     @vLIN,mCLN+41.8 Say xRS7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+49.8 Say xRI7        Font "&mLetRom",11 Style "NQ" Size 1,5.3 Pict "99:99"
                     @vLIN,mCLN+57.8 Say xRF7        Font "&mLetRom",11 Style "NQ" Size 1,2.7 Pict "99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+2.1 TO vlIn
      SKIP
      DO veR_lock
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE ptAm, pcOd, paRe, pcLn
ENDPROC
*
PROCEDURE Cab_4221b
 PARAMETER ptAm
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cb1_0000a WITH "Horarios x Trabajador", "PKC4221B"
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1
                @vLIN,mCLN Say "Orden de Códigos" Font "&mLetAri",10 Style "NQ"
           CASE vsW0=2
                @vLIN,mCLN Say "Orden Alfabético" Font "&mLetAri",10 Style "NQ"
           CASE vsW0=3
                @vLIN,mCLN Say "Orden: x RUC"     Font "&mLetAri",10 Style "NQ"
           CASE vsW0=4
                @vLIN,mCLN Say "Orden: x DNI"     Font "&mLetAri",10 Style "NQ"
           CASE vsW0=5
                @vLIN,mCLN Say "Orden: x Cargo"   Font "&mLetAri",10 Style "NQ"
           CASE vsW0=6
                @vLIN,mCLN Say "Orden: x Area"    Font "&mLetAri",10 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN      Say "Cód."       Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+06.8 Say "Ap.Paterno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+32.6 Say "Ap.Materno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+58.4 Say "Nombres"    Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+89.2 Say "Cargo"      Font "&mLetAri",9 Style "NT"
                IF mrEs>"1"
                     @vLIN,mCLN+128 Say "Area"     Font "&mLetAri",9 Style "NT"
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN     Say "Código"     Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+7   Say "Ap.Paterno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+27  Say "Ap.Materno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+47  Say "Nombres"    Font "&mLetAri",9 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Código"     Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+7   Say "Ap.Paterno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+27  Say "Ap.Materno" Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+47  Say "Nombres"    Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+0.3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
 DO CASE
      CASE mcOl=1
           DO coLbln
      CASE mcOl>1
           DO coLblz
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_4221b
 SET READBORDER ON
 DO rs1_4221a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_4221b WITH "R"
 DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
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
PROCEDURE Clp_4221b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_4221b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_4200b IN PKC4200B WITH "i"
           SKIP INT(mfIl-ifIl)
           DO veR_lock
           STORE 99 TO mkEy
           DO muE_4200b IN PKC4200B WITH "F", "v"
           DO diS_4221b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4221b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Trabajadores en el"
 @ pfIl+01, 02 SAY "Orden que se ha elegido, con sus horarios."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 26 SAY ":" STYLE "BT"
 @ pfIl+06, 26 SAY ":" STYLE "BT"
 @ pfIl+07, 26 SAY ":" STYLE "BT"
 @ pfIl+08, 26 SAY ":" STYLE "BT"
 @ pfIl+09, 26 SAY ":" STYLE "BT"
 @ pfIl+10, 26 SAY ":" STYLE "BT"
 @ pfIl+11, 26 SAY ":" STYLE "BT"
 @ pfIl+12, 26 SAY ":" STYLE "BT"
 @ pfIl+13, 26 SAY ":" STYLE "BT"
 @ pfIl+14, 26 SAY ":" STYLE "BT"
 @ pfIl+15, 26 SAY ":" STYLE "BT"
 @ pfIl+16, 26 SAY ":" STYLE "BT"
 @ pfIl+17, 26 SAY ":" STYLE "BT"
 @ pfIl+05, 08 SAY "ESC" STYLE "BT"
 @ pfIl+06, 08 SAY "F10" STYLE "BT"
 @ pfIl+07, 08 SAY "F1" STYLE "BT"
 @ pfIl+08, 08 SAY "F6" STYLE "BT"
 @ pfIl+09, 08 SAY "F8" STYLE "BT"
 @ pfIl+10, 08 SAY "F9" STYLE "BT"
 @ pfIl+11, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+12, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+13, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+14, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+15, 08 SAY "HOME" STYLE "BT"
 @ pfIl+16, 08 SAY "END" STYLE "BT"
 @ pfIl+17, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Cambio de Orden de Consulta"
 @ pfIl+09, 28 SAY "Pasar datos a Excel"
 @ pfIl+10, 28 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+11, 28 SAY "Línea inferior"
 @ pfIl+12, 28 SAY "Línea superior"
 @ pfIl+13, 28 SAY "Página siguiente"
 @ pfIl+14, 28 SAY "Página anterior"
 @ pfIl+15, 28 SAY "Primera línea"
 @ pfIl+16, 28 SAY "Última línea"
 @ pfIl+17, 28 SAY "Imprime LISTADO"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
