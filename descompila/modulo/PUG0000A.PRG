 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vtIp, vlEt, vtPo, vnEm, vtEm, vcOd, vdEs, vdCr, vsTo, vsTa,  ;
        vuTi, veSp
 PUBLIC vmIn, vmAx, veSt, vuSu, vdAt, vtIm, vlA1, vlA2, vaN1, vaN2, vvCp,  ;
        vvV1, vvV2
 PUBLIC vuNv, vuNc, vnUv, vnUc, vtPr, vsEr, vtPp, vdC1, vdC2, vsW0, vcSt,  ;
        vvVt, vgRu
 PUBLIC vvId, vrEf, vbAs, vuNi, vaLu, vnUm, vnU1, vtAm, vbLa
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0000a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0000a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0000a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0000a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0000a
                EXIT
      ENDCASE
      DO coLbln
      SET CURSOR ON
      @mFI0+10,mCO0+14 Edit vPAT Font "&mLetRom",12 Style "BQ" Size 1,73.5,80
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Det_0000a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Productos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Tipos_Prod
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Unidades
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "9216", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Grupos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9216COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpAt)+"ALM\FA012111.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Productos_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 STORE ALLTRIM(vpAt)+"UTI\FU019211.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Tipos_Prod_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tiPos_prod_control
 GOTO TOP
 DO coLsc7
 STORE 00 TO vtEm
 STORE "37" TO vtPr
 DO WHILE  .NOT. EOF()
      STORE f9211tip TO vtIp, vlEt
      STORE f9211tpo TO vtPo
      STORE f9211nem TO vnEm
      STORE UPPER(SUBSTR(f9211des, 1, 1))+LOWER(SUBSTR(f9211des, 2, 30))  ;
            TO vdEs
      @mFI0+12,mCO0+5 Say "["+vTIP+"] - ["+vDES+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      DO CASE
           CASE vtIp="A"
                STORE "01" TO vtIp
           CASE vtIp="B"
                STORE "02" TO vtIp
           CASE vtIp="C"
                STORE "03" TO vtIp
           CASE vtIp="D"
                STORE "04" TO vtIp
           CASE vtIp="E"
                STORE "05" TO vtIp
           CASE vtIp="F"
                STORE "06" TO vtIp
           CASE vtIp="G"
                STORE "07" TO vtIp
           CASE vtIp="H"
                STORE "08" TO vtIp
           CASE vtIp="I"
                STORE "09" TO vtIp
           CASE vtIp="J"
                STORE "10" TO vtIp
           CASE vtIp="K"
                STORE "11" TO vtIp
           CASE vtIp="L"
                STORE "12" TO vtIp
           CASE vtIp="M"
                STORE "13" TO vtIp
           CASE vtIp="N"
                STORE "14" TO vtIp
           CASE vtIp="O"
                STORE "15" TO vtIp
           CASE vtIp="P"
                STORE "16" TO vtIp
           CASE vtIp="Q"
                STORE "17" TO vtIp
           CASE vtIp="R"
                STORE "18" TO vtIp
           CASE vtIp="S"
                STORE "19" TO vtIp
           CASE vtIp="T"
                STORE "20" TO vtIp
           CASE vtIp="U"
                STORE "21" TO vtIp
           CASE vtIp="V"
                STORE "22" TO vtIp
           CASE vtIp="W"
                STORE "23" TO vtIp
           CASE vtIp="X"
                STORE "24" TO vtIp
           CASE vtIp="Y"
                STORE "25" TO vtIp
           CASE vtIp="Z"
                STORE "26" TO vtIp
           CASE vtIp="0"
                STORE "27" TO vtIp
           CASE vtIp="1"
                STORE "28" TO vtIp
           CASE vtIp="2"
                STORE "29" TO vtIp
           CASE vtIp="3"
                STORE "30" TO vtIp
           CASE vtIp="4"
                STORE "31" TO vtIp
           CASE vtIp="5"
                STORE "32" TO vtIp
           CASE vtIp="6"
                STORE "33" TO vtIp
           CASE vtIp="7"
                STORE "34" TO vtIp
           CASE vtIp="8"
                STORE "35" TO vtIp
           CASE vtIp="9"
                STORE "36" TO vtIp
      ENDCASE
      SELECT tiPos_prod
      SEEK vtIp
      IF EOF()
           DO CASE
                CASE vtPo="A" .AND. AT("ALUMINIO", UPPER(vdEs))<>0 .AND.  ;
                     vlEt="A"
                     APPEND BLANK
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Aluminio x Varilla"
                     REPLACE f9211tpo WITH 1
                     REPLACE f9211tpp WITH vlEt
                     IF vnEm="N"
                          REPLACE f9211let WITH SPACE(01)
                     ELSE
                          REPLACE f9211let WITH vlEt
                     ENDIF
                     STORE vtPr TO vtIp
                     DO WHILE .T.
                          SEEK vtIp
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vtIp
                     ENDDO
                     APPEND BLANK
                     STORE vtIp TO vtPr
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Aluminio x metros"
                     REPLACE f9211tpo WITH 6
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Aluminios"
                     ELSE
                          SET FILTER TO AT("ALUMINIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Aluminios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="B" .AND. AT("BISEL", UPPER(vdEs))<>0 .AND. vlEt="B"
                     APPEND BLANK
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Bisel c/s forma"
                     REPLACE f9211tpo WITH 7
                     REPLACE f9211tpp WITH vlEt
                     IF vnEm="N"
                          REPLACE f9211let WITH SPACE(01)
                     ELSE
                          REPLACE f9211let WITH vlEt
                     ENDIF
                     STORE vtPr TO vtIp
                     DO WHILE .T.
                          SEEK vtIp
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vtIp
                     ENDDO
                     APPEND BLANK
                     STORE vtIp TO vtPr
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Bisel Circular"
                     REPLACE f9211tpo WITH 8
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     STORE vtPr TO vtIp
                     DO WHILE .T.
                          SEEK vtIp
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vtIp
                     ENDDO
                     APPEND BLANK
                     STORE vtIp TO vtPr
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Bisel x Lado"
                     REPLACE f9211tpo WITH 9
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Servicios"
                     ELSE
                          SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Servicios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="B" .AND. (AT("CANTOPULIDO", UPPER(vdEs))<>0  ;
                     .OR. AT("CANTO PULIDO", UPPER(vdEs))<>0)
                     APPEND BLANK
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Canto Pulido c/s forma"
                     REPLACE f9211tpo WITH 7
                     REPLACE f9211tpp WITH vlEt
                     IF vnEm="N"
                          REPLACE f9211let WITH SPACE(01)
                     ELSE
                          REPLACE f9211let WITH vlEt
                     ENDIF
                     STORE vtPr TO vtIp
                     DO WHILE .T.
                          SEEK vtIp
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vtIp
                     ENDDO
                     APPEND BLANK
                     STORE vtIp TO vtPr
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Canto Pulido Circular"
                     REPLACE f9211tpo WITH 8
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     STORE vtPr TO vtIp
                     DO WHILE .T.
                          SEEK vtIp
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vtIp
                     ENDDO
                     APPEND BLANK
                     STORE vtIp TO vtPr
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Canto Pulido x Lado"
                     REPLACE f9211tpo WITH 9
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Servicios"
                     ELSE
                          SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Servicios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="B" .AND. AT("FILETE", UPPER(vdEs))<>0
                     APPEND BLANK
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Filete c/s forma"
                     REPLACE f9211tpo WITH 7
                     REPLACE f9211tpp WITH vlEt
                     IF vnEm="N"
                          REPLACE f9211let WITH SPACE(01)
                     ELSE
                          REPLACE f9211let WITH vlEt
                     ENDIF
                     STORE vtPr TO vtIp
                     DO WHILE .T.
                          SEEK vtIp
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vtIp
                     ENDDO
                     APPEND BLANK
                     STORE vtIp TO vtPr
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Filete Circular"
                     REPLACE f9211tpo WITH 8
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     STORE vtPr TO vtIp
                     DO WHILE .T.
                          SEEK vtIp
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vtIp
                     ENDDO
                     APPEND BLANK
                     STORE vtIp TO vtPr
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Filete x Lado"
                     REPLACE f9211tpo WITH 9
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Servicios"
                     ELSE
                          SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Servicios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE (vtPo="V" .OR. vtPo="T") .AND. AT("TEMPLADO",  ;
                     UPPER(vdEs))<>0 .AND. vtEm=0
                     APPEND BLANK
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Vidrio Templado"
                     REPLACE f9211tpo WITH 4
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     STORE 01 TO vtEm
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Vidrios"
                     ELSE
                          SET FILTER TO AT("VIDRIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Vidrios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="V" .AND. AT("VIDRIO", UPPER(vdEs))<>0 .AND. vlEt="V"
                     APPEND BLANK
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Vidrios x Plancha"
                     REPLACE f9211tpo WITH 1
                     REPLACE f9211tpp WITH vlEt
                     IF vnEm="N"
                          REPLACE f9211let WITH SPACE(01)
                     ELSE
                          REPLACE f9211let WITH vlEt
                     ENDIF
                     STORE vtPr TO vtIp
                     DO WHILE .T.
                          SEEK vtIp
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vtIp
                     ENDDO
                     APPEND BLANK
                     STORE vtIp TO vtPr
                     REPLACE f9211tip WITH vtIp
                     REPLACE f9211nti WITH "Vidrio cortado"
                     REPLACE f9211tpo WITH 5
                     REPLACE f9211let WITH SPACE(01)
                     REPLACE f9211tpp WITH vlEt
                     IF vtEm=0
                          STORE vtPr TO vtIp
                          DO WHILE .T.
                               SEEK vtIp
                               IF EOF()
                                    EXIT
                               ENDIF
                               DO coD_0000a WITH 2, vtIp
                          ENDDO
                          APPEND BLANK
                          STORE vtIp TO vtPr
                          REPLACE f9211tip WITH vtIp
                          REPLACE f9211nti WITH "Vidrio templado"
                          REPLACE f9211tpo WITH 4
                          REPLACE f9211let WITH SPACE(01)
                          REPLACE f9211tpp WITH vlEt
                          STORE 01 TO vtEm
                     ENDIF
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Vidrios"
                     ELSE
                          SET FILTER TO AT("VIDRIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Vidrios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="S" .AND. AT("SERVIC", UPPER(vdEs))<>0
                     SET FILTER TO AT("SERVIC", UPPER(f9211nti))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          SET FILTER TO
                          APPEND BLANK
                          REPLACE f9211tip WITH vtIp
                          REPLACE f9211nti WITH "Servicios"
                          REPLACE f9211tpo WITH 1
                          REPLACE f9211tpp WITH vlEt
                          IF vnEm="N"
                               REPLACE f9211let WITH SPACE(01)
                          ELSE
                               REPLACE f9211let WITH vlEt
                          ENDIF
                     ELSE
                          SET FILTER TO
                     ENDIF
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Servicios"
                     ELSE
                          SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Servicios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="A"
                     SET FILTER TO AT(UPPER(vdEs), UPPER(f9211nti))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          SET FILTER TO
                          APPEND BLANK
                          REPLACE f9211tip WITH vtIp
                          REPLACE f9211nti WITH vdEs
                          REPLACE f9211tpo WITH 1
                          REPLACE f9211tpp WITH vlEt
                          IF vnEm="N"
                               REPLACE f9211let WITH SPACE(01)
                          ELSE
                               REPLACE f9211let WITH vlEt
                          ENDIF
                     ELSE
                          SET FILTER TO
                     ENDIF
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Otros"
                     ELSE
                          SET FILTER TO AT("OTROS", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Otros"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="B"
                     SET FILTER TO AT(UPPER(vdEs), UPPER(f9211nti))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          SET FILTER TO
                          APPEND BLANK
                          REPLACE f9211tip WITH vtIp
                          REPLACE f9211nti WITH vdEs
                          REPLACE f9211tpo WITH 7
                          REPLACE f9211tpp WITH vlEt
                          IF vnEm="N"
                               REPLACE f9211let WITH SPACE(01)
                          ELSE
                               REPLACE f9211let WITH vlEt
                          ENDIF
                     ELSE
                          SET FILTER TO
                     ENDIF
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Servicios"
                     ELSE
                          SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Servicios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="V"
                     SET FILTER TO AT(UPPER(vdEs), UPPER(f9211nti))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          SET FILTER TO
                          APPEND BLANK
                          REPLACE f9211tip WITH vtIp
                          REPLACE f9211nti WITH vdEs
                          REPLACE f9211tpo WITH 1
                          REPLACE f9211tpp WITH vlEt
                          IF vnEm="N"
                               REPLACE f9211let WITH SPACE(01)
                          ELSE
                               REPLACE f9211let WITH vlEt
                          ENDIF
                     ELSE
                          SET FILTER TO
                     ENDIF
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Otros"
                     ELSE
                          SET FILTER TO AT("OTROS", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Otros"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="S"
                     SET FILTER TO AT(UPPER(vdEs), UPPER(f9211nti))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          SET FILTER TO
                          APPEND BLANK
                          REPLACE f9211tip WITH vtIp
                          REPLACE f9211nti WITH vdEs
                          REPLACE f9211tpo WITH 1
                          REPLACE f9211tpp WITH vlEt
                          IF vnEm="N"
                               REPLACE f9211let WITH SPACE(01)
                          ELSE
                               REPLACE f9211let WITH vlEt
                          ENDIF
                     ELSE
                          SET FILTER TO
                     ENDIF
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Servicios"
                     ELSE
                          SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Servicios"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo="G"
                     SET FILTER TO AT(UPPER(vdEs), UPPER(f9211nti))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          SET FILTER TO
                          APPEND BLANK
                          REPLACE f9211tip WITH vtIp
                          REPLACE f9211nti WITH vdEs
                          REPLACE f9211tpo WITH 1
                          REPLACE f9211tpp WITH vlEt
                          IF vnEm="N"
                               REPLACE f9211let WITH SPACE(01)
                          ELSE
                               REPLACE f9211let WITH vlEt
                          ENDIF
                     ELSE
                          SET FILTER TO
                     ENDIF
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Gastos"
                     ELSE
                          SET FILTER TO AT("GASTOS", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Gastos"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                CASE vtPo=" "
                     SET FILTER TO AT(UPPER(vdEs), UPPER(f9211nti))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          SET FILTER TO
                          APPEND BLANK
                          REPLACE f9211tip WITH vtIp
                          REPLACE f9211nti WITH vdEs
                          REPLACE f9211tpo WITH 1
                          REPLACE f9211tpp WITH vlEt
                          IF vnEm="N"
                               REPLACE f9211let WITH SPACE(01)
                          ELSE
                               REPLACE f9211let WITH vlEt
                          ENDIF
                     ELSE
                          SET FILTER TO
                     ENDIF
                     SELECT grUpos
                     GOTO TOP
                     IF BOF()
                          STORE "01" TO vgRu
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Otros"
                     ELSE
                          SET FILTER TO AT("OTROS", UPPER(f9216des))<>0
                          GOTO TOP
                          IF BOF() .OR. EOF()
                               SET FILTER TO
                               STORE "01" TO vgRu
                               DO WHILE .T.
                                    SEEK vgRu
                                    IF EOF()
                                         EXIT
                                    ENDIF
                                    DO coD_0000a WITH 2, vgRu
                               ENDDO
                               APPEND BLANK
                               REPLACE f9216cod WITH vgRu
                               REPLACE f9216des WITH "Otros"
                          ELSE
                               SET FILTER TO
                          ENDIF
                     ENDIF
                     SET FILTER TO AT("ACCESORIO", UPPER(f9216des))<>0
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          SET FILTER TO
                          STORE "02" TO vgRu
                          DO WHILE .T.
                               SEEK vgRu
                               IF EOF()
                                    EXIT
                               ENDIF
                               DO coD_0000a WITH 2, vgRu
                          ENDDO
                          APPEND BLANK
                          REPLACE f9216cod WITH vgRu
                          REPLACE f9216des WITH "Accesorios"
                     ELSE
                          SET FILTER TO
                     ENDIF
           ENDCASE
      ENDIF
      SELECT tiPos_prod_control
      SKIP
 ENDDO
 STORE 99 TO mkEy
 SELECT tiPos_prod
 DO orD_0000a WITH "9211", "U", "F9211TPP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prOductos_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f2111cod TO vcOd, vbAs
      STORE ALLTRIM(f2111des) TO vdEs, vdCr
      IF LEN(ALLTRIM(vdEs))>1
           IF SUBSTR(vdEs, 1, 1)="."
                STORE SUBSTR(vdEs, 2, 80) TO vdEs
           ENDIF
      ENDIF
      STORE SUBSTR(vdEs, 1, 1)+LOWER(SUBSTR(vdEs, 2, 80)) TO vdEs
      STORE ALLTRIM(vdEs) TO vdEs
      @mFI0+14,mCO0+5 Say "["+vCOD+"] - ["+vDES+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      DO WHILE .T.
           STORE 0 TO vsW0
           DO CASE
                CASE AT("  ", vdEs)<>0
                     STORE 1 TO vsW0
                     STORE "  " TO vdC2
                     STORE " " TO vdC1
                CASE AT(" u ", vdEs)<>0
                     STORE 1 TO vsW0
                     STORE " u " TO vdC2
                     STORE " U " TO vdC1
                CASE AT(" ai. ", vdEs)<>0
                     STORE 1 TO vsW0
                     STORE " ai. " TO vdC2
                     STORE " A.I. " TO vdC1
                CASE AT(" ai.", vdEs)<>0
                     STORE 1 TO vsW0
                     STORE " ai." TO vdC2
                     STORE " A.I. " TO vdC1
                CASE AT(" ai ", vdEs)<>0
                     STORE 1 TO vsW0
                     STORE " ai " TO vdC2
                     STORE " A.I. " TO vdC1
                CASE AT(" a.i.", vdEs)<>0 .AND. AT(" A.I. ", vdEs)=0
                     STORE 1 TO vsW0
                     STORE " a.i." TO vdC2
                     STORE " A.I. " TO vdC1
           ENDCASE
           IF vsW0=0
                EXIT
           ENDIF
           STORE LEN(vdC2) TO vtAm
           STORE AT(vdC2, vdEs) TO vnUm
           STORE LEN(vdEs)-(vnUm+vtAm)+1 TO vnU1
           IF vnUm=1
                STORE vdC1+SUBSTR(vdEs, vnUm+vtAm, vnU1) TO vdEs
           ELSE
                STORE SUBSTR(vdEs, 1, vnUm-1)+vdC1+SUBSTR(vdEs, vnUm+vtAm,  ;
                      vnU1) TO vdEs
           ENDIF
           @mFI0+16,mCO0+5 Say "["+vDES+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      ENDDO
      STORE f2111sto TO vsTo, vsTa
      STORE f2111uti TO vuTi
      STORE f2111esp TO veSp
      STORE f2111smi TO vmIn
      STORE f2111sma TO vmAx
      STORE f2111est TO veSt
      STORE f2111usu TO vuSu
      STORE f2111dat TO vdAt
      STORE f2111tim TO vtIm
      IF f2111uni=1
           STORE f2111lar TO vlA1
           STORE f2111anc TO vaN1
           STORE 0 TO vlA2
           STORE 0 TO vaN2
      ELSE
           STORE 0 TO vlA1
           STORE 0 TO vaN1
           STORE f2111lar TO vlA2
           STORE f2111anc TO vaN2
      ENDIF
      STORE f2111ser TO vsEr
      STORE f2111co2 TO vvCp
      STORE f2111so1 TO vvV1
      STORE f2111us1 TO vvV2
      STORE f2111vid TO vvId
      STORE f2111ref TO vrEf
      STORE f2111alu TO vaLu
      STORE LOWER(ALLTRIM(f2111unv)) TO vuNv
      STORE LOWER(ALLTRIM(f2111unc)) TO vuNc
      STORE UPPER(SUBSTR(vuNv, 1, 1))+SUBSTR(vuNv, 2, 30) TO vuNv
      STORE UPPER(SUBSTR(vuNc, 1, 1))+SUBSTR(vuNc, 2, 30) TO vuNc
      IF LEN(ALLTRIM(vuNv))=0
           STORE "Unidad" TO vuNv
      ENDIF
      DO unI_0000a WITH vuNv
      DO unI_0000a WITH vuNc
      SELECT unIdades
      STORE 99 TO mkEy
      DO orD_0000a WITH "9213", "U", "F9213DES", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK UPPER(vuNv)
      IF EOF()
           DO orD_0000a WITH "9213", "U", "F9213UNI", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE "01" TO vcUv
           DO WHILE .T.
                SEEK vcUv
                IF EOF()
                     EXIT
                ENDIF
                DO coD_0000a WITH 2, vcUv
           ENDDO
           APPEND BLANK
           REPLACE f9213uni WITH vcUv
           REPLACE f9213des WITH vuNv
      ELSE
           STORE f9213uni TO vcUv
      ENDIF
      STORE vuNv TO vnUv
      IF LEN(ALLTRIM(vuNc))=0
           STORE vcUv TO vcUc
           STORE vnUv TO vnUc
      ELSE
           DO orD_0000a WITH "9213", "U", "F9213DES", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK UPPER(vuNc)
           IF EOF()
                DO orD_0000a WITH "9213", "U", "F9213UNI", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE "01" TO vcUc
                DO WHILE .T.
                     SEEK vcUc
                     IF EOF()
                          EXIT
                     ENDIF
                     DO coD_0000a WITH 2, vcUc
                ENDDO
                APPEND BLANK
                REPLACE f9213uni WITH vcUc
                REPLACE f9213des WITH vuNc
           ELSE
                STORE f9213uni TO vcUc
           ENDIF
           STORE vuNc TO vnUc
      ENDIF
      STORE "00" TO vtIp
      STORE 1 TO vtPp, vvVt, vcSt
      SELECT tiPos_prod_control
      SEEK SUBSTR(vcOd, 1, 1)
      DO CASE
           CASE f9211tpo="A"
                SELECT grUpos
                SET FILTER TO AT("ALUMINIO", UPPER(f9216des))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
                SELECT tiPos_prod
                SEEK SUBSTR(vcOd, 1, 1)
                DO WHILE  .NOT. EOF() .AND. f9211tpp=SUBSTR(vcOd, 1, 1)
                     IF f9211tpo=6
                          STORE f9211tip TO vtIp
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
                STORE "Metro" TO vuNv
                SELECT unIdades
                DO orD_0000a WITH "9213", "U", "F9213DES", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SEEK UPPER(vuNv)
                IF EOF()
                     DO orD_0000a WITH "9213", "U", "F9213UNI", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE "01" TO vuNi
                     DO WHILE .T.
                          SEEK vuNi
                          IF EOF()
                               EXIT
                          ENDIF
                          DO coD_0000a WITH 2, vuNi
                     ENDDO
                     APPEND BLANK
                     REPLACE f9213uni WITH vuNi
                     REPLACE f9213des WITH vuNv
                ELSE
                     STORE f9213uni TO vuNi
                ENDIF
                STORE ALLTRIM(vcOd)+"C" TO vbAs
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"C*"
                IF EOF()
                     APPEND BLANK
                     REPLACE f2111cod WITH ALLTRIM(vcOd)+"C"
                     REPLACE f2111tpo WITH vtPp
                     REPLACE f2111tip WITH vtIp
                     REPLACE f2111des WITH ALLTRIM(vdEs)+" x metros"
                     REPLACE f2111dcr WITH ALLTRIM(vdCr)+" x metros"
                     REPLACE f2111din WITH SPACE(70)
                     REPLACE f2111vta WITH vvVt
                     REPLACE f2111md1 WITH 2
                     REPLACE f2111md2 WITH 2
                     REPLACE f2111md3 WITH 1
                     REPLACE f2111vv1 WITH (vvV1/vlA1)*(1+(vaLu/100))
                     REPLACE f2111vv2 WITH (vvV2/vlA1)*(1+(vaLu/100))
                     REPLACE f2111vv3 WITH 0
                     REPLACE f2111vv4 WITH 0
                     REPLACE f2111vv5 WITH 0
                     REPLACE f2111vv6 WITH 0
                     REPLACE f2111vv7 WITH 0
                     REPLACE f2111vv8 WITH 0
                     REPLACE f2111vv9 WITH 0
                     REPLACE f2111vv0 WITH 0
                     REPLACE f2111vva WITH 0
                     REPLACE f2111vvb WITH 0
                     REPLACE f2111vvc WITH 0
                     REPLACE f2111vvd WITH 0
                     REPLACE f2111vve WITH 0
                     REPLACE f2111vvf WITH 0
                     REPLACE f2111vvg WITH 0
                     REPLACE f2111vvh WITH 0
                     REPLACE f2111vvi WITH 0
                     REPLACE f2111vvj WITH 0
                     REPLACE f2111fli WITH CTOD("  /  /    ")
                     REPLACE f2111mv1 WITH 0
                     REPLACE f2111mv2 WITH 0
                     REPLACE f2111mv3 WITH 0
                     REPLACE f2111mv4 WITH 0
                     REPLACE f2111mv5 WITH 0
                     REPLACE f2111mv6 WITH 0
                     REPLACE f2111mv7 WITH 0
                     REPLACE f2111mv8 WITH 0
                     REPLACE f2111mv9 WITH 0
                     REPLACE f2111mv0 WITH 0
                     REPLACE f2111mva WITH 0
                     REPLACE f2111mvb WITH 0
                     REPLACE f2111mvc WITH 0
                     REPLACE f2111mvd WITH 0
                     REPLACE f2111mve WITH 0
                     REPLACE f2111mvf WITH 0
                     REPLACE f2111mvg WITH 0
                     REPLACE f2111mvh WITH 0
                     REPLACE f2111mvi WITH 0
                     REPLACE f2111mvj WITH 0
                     REPLACE f2111gru WITH vgRu
                     REPLACE f2111cuv WITH vuNi
                     REPLACE f2111nuv WITH vuNv
                     REPLACE f2111nui WITH SPACE(30)
                     REPLACE f2111cuc WITH vuNi
                     REPLACE f2111nuc WITH vuNv
                     REPLACE f2111cux WITH vuNi
                     REPLACE f2111nux WITH vuNv
                     REPLACE f2111tam WITH SPACE(30)
                     REPLACE f2111cst WITH 2
                     REPLACE f2111ser WITH 2
                     REPLACE f2111min WITH vmIn
                     REPLACE f2111max WITH vmAx
                     REPLACE f2111tie WITH 0
                     REPLACE f2111imp WITH 2
                     REPLACE f2111pro WITH SPACE(30)
                     REPLACE f2111mar WITH SPACE(30)
                     REPLACE f2111la1 WITH vlA1
                     REPLACE f2111an1 WITH 0
                     REPLACE f2111la2 WITH 0
                     REPLACE f2111an2 WITH 0
                     REPLACE f2111la3 WITH 0
                     REPLACE f2111an3 WITH 0
                     REPLACE f2111esp WITH veSp
                     REPLACE f2111adv WITH 0
                     REPLACE f2111vcp WITH (vvCp/vlA1)*(1+(vaLu/100))
                     REPLACE f2111vcs WITH 0
                     REPLACE f2111prm WITH 0
                     REPLACE f2111mov WITH SPACE(01)
                     REPLACE f2111uti WITH vaLu
                     REPLACE f2111ut2 WITH 0
                     REPLACE f2111ut3 WITH 0
                     REPLACE f2111ut4 WITH 0
                     REPLACE f2111ut5 WITH 0
                     REPLACE f2111ut6 WITH 0
                     REPLACE f2111ut7 WITH 0
                     REPLACE f2111ut8 WITH 0
                     REPLACE f2111ut9 WITH 0
                     REPLACE f2111ut0 WITH 0
                     REPLACE f2111dct WITH 0
                     REPLACE f2111dc2 WITH 0
                     REPLACE f2111dc3 WITH 0
                     REPLACE f2111dc4 WITH 0
                     REPLACE f2111dc5 WITH 0
                     REPLACE f2111dc6 WITH 0
                     REPLACE f2111dc7 WITH 0
                     REPLACE f2111dc8 WITH 0
                     REPLACE f2111dc9 WITH 0
                     REPLACE f2111dc0 WITH 0
                     REPLACE f2111sto WITH vsTa
                     REPLACE f2111sts WITH 0
                     REPLACE f2111stm WITH 0
                     REPLACE f2111caj WITH 0
                     REPLACE f2111cas WITH 0
                     REPLACE f2111pxc WITH 0
                     REPLACE f2111cx1 WITH 0
                     REPLACE f2111cx2 WITH 0
                     REPLACE f2111bas WITH vbAs
                     REPLACE f2111com WITH SPACE(30)
                     REPLACE f2111fot WITH SPACE(40)
                     REPLACE f2111pes WITH 0
                     REPLACE f2111cmx WITH 0
                     REPLACE f2111ult WITH CTOD("  /  /    ")
                     REPLACE f2111est WITH veSt
                     REPLACE f2111usu WITH vuSu
                     REPLACE f2111dat WITH vdAt
                     REPLACE f2111tim WITH vtIm
                     REPLACE f2111maq WITH SPACE(30)
                ELSE
                     REPLACE f2111uti WITH vaLu
                     REPLACE f2111vcp WITH (vvCp/vlA1)*(1+(vaLu/100))
                     REPLACE f2111vv1 WITH (vvV1/vlA1)*(1+(vaLu/100))
                     REPLACE f2111vv2 WITH (vvV2/vlA1)*(1+(vaLu/100))
                ENDIF
                SELECT tiPos_prod
                SEEK SUBSTR(vcOd, 1, 1)
                DO WHILE  .NOT. EOF() .AND. f9211tpp=SUBSTR(vcOd, 1, 1)
                     IF f9211tpo=1
                          STORE f9211tip TO vtIp
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
           CASE f9211tpo="B" .AND. SUBSTR(vcOd, 4, 1)$"FSP"
                SELECT grUpos
                SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
                SELECT tiPos_prod
                SEEK SUBSTR(vcOd, 1, 1)
                DO WHILE  .NOT. EOF() .AND. f9211tpp=SUBSTR(vcOd, 1, 1)
                     IF f9211tpo=7
                          STORE f9211tip TO vtIp
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
           CASE f9211tpo="B" .AND. SUBSTR(vcOd, 4, 1)="C"
                SELECT grUpos
                SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
                SELECT tiPos_prod
                SEEK SUBSTR(vcOd, 1, 1)
                DO WHILE  .NOT. EOF() .AND. f9211tpp=SUBSTR(vcOd, 1, 1)
                     IF f9211tpo=8
                          STORE f9211tip TO vtIp
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
           CASE f9211tpo="B" .AND. SUBSTR(vcOd, 4, 1)$"LO"
                SELECT grUpos
                SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
                SELECT tiPos_prod
                SEEK SUBSTR(vcOd, 1, 1)
                DO WHILE  .NOT. EOF() .AND. f9211tpp=SUBSTR(vcOd, 1, 1)
                     IF f9211tpo=9
                          STORE f9211tip TO vtIp
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
           CASE f9211tpo="V" .AND. vsEr="S"
                SELECT tiPos_prod
                SEEK SUBSTR(vcOd, 1, 1)
                DO WHILE  .NOT. EOF() .AND. f9211tpp=SUBSTR(vcOd, 1, 1)
                     IF f9211tpo=5
                          STORE f9211tip TO vtIp
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
                SELECT grUpos
                DO CASE
                     CASE SUBSTR(vcOd, 1, 1)="V"
                          SET FILTER TO AT("VIDRIO", UPPER(f9216des))<>0
                     OTHERWISE
                          SET FILTER TO AT("OTRO", UPPER(f9216des))<>0
                ENDCASE
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
                STORE 2 TO vcSt
           CASE f9211tpo="V"
                SELECT tiPos_prod
                SEEK SUBSTR(vcOd, 1, 1)
                DO WHILE  .NOT. EOF() .AND. f9211tpp=SUBSTR(vcOd, 1, 1)
                     IF f9211tpo=1
                          STORE f9211tip TO vtIp
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
                SELECT grUpos
                DO CASE
                     CASE SUBSTR(vcOd, 1, 1)="V"
                          SET FILTER TO AT("VIDRIO", UPPER(f9216des))<>0
                     OTHERWISE
                          SET FILTER TO AT("OTRO", UPPER(f9216des))<>0
                ENDCASE
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
           CASE f9211tpo="G"
                SELECT grUpos
                SET FILTER TO AT("GASTO", UPPER(f9216des))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
                STORE 2 TO vtPp, vvVt, vcSt
           CASE f9211tpo="S"
                SELECT grUpos
                SET FILTER TO AT("SERVICIO", UPPER(f9216des))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
                STORE 1 TO vvVt
                STORE 2 TO vtPp, vcSt
           CASE f9211tpo=" "
                SELECT grUpos
                DO CASE
                     CASE SUBSTR(vcOd, 1, 1)="R"
                          SET FILTER TO AT("ACCESORIO", UPPER(f9216des))<>0
                     OTHERWISE
                          SET FILTER TO AT("OTRO", UPPER(f9216des))<>0
                ENDCASE
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE SPACE(02) TO vgRu
                     ELSE
                          STORE f9216cod TO vgRu
                     ENDIF
                ELSE
                     SET FILTER TO
                     STORE f9216cod TO vgRu
                ENDIF
      ENDCASE
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE f2111cod WITH vcOd
           REPLACE f2111tpo WITH vtPp
           REPLACE f2111tip WITH vtIp
           REPLACE f2111des WITH vdEs
           REPLACE f2111dcr WITH vdCr
           REPLACE f2111din WITH SPACE(70)
           REPLACE f2111vta WITH vvVt
           REPLACE f2111md1 WITH 2
           REPLACE f2111md2 WITH 2
           REPLACE f2111md3 WITH 1
           REPLACE f2111vv1 WITH vvV1
           REPLACE f2111vv2 WITH vvV2
           REPLACE f2111vv3 WITH 0
           REPLACE f2111vv4 WITH 0
           REPLACE f2111vv5 WITH 0
           REPLACE f2111vv6 WITH 0
           REPLACE f2111vv7 WITH 0
           REPLACE f2111vv8 WITH 0
           REPLACE f2111vv9 WITH 0
           REPLACE f2111vv0 WITH 0
           REPLACE f2111vva WITH 0
           REPLACE f2111vvb WITH 0
           REPLACE f2111vvc WITH 0
           REPLACE f2111vvd WITH 0
           REPLACE f2111vve WITH 0
           REPLACE f2111vvf WITH 0
           REPLACE f2111vvg WITH 0
           REPLACE f2111vvh WITH 0
           REPLACE f2111vvi WITH 0
           REPLACE f2111vvj WITH 0
           REPLACE f2111fli WITH CTOD("  /  /    ")
           REPLACE f2111mv1 WITH 0
           REPLACE f2111mv2 WITH 0
           REPLACE f2111mv3 WITH 0
           REPLACE f2111mv4 WITH 0
           REPLACE f2111mv5 WITH 0
           REPLACE f2111mv6 WITH 0
           REPLACE f2111mv7 WITH 0
           REPLACE f2111mv8 WITH 0
           REPLACE f2111mv9 WITH 0
           REPLACE f2111mv0 WITH 0
           REPLACE f2111mva WITH 0
           REPLACE f2111mvb WITH 0
           REPLACE f2111mvc WITH 0
           REPLACE f2111mvd WITH 0
           REPLACE f2111mve WITH 0
           REPLACE f2111mvf WITH 0
           REPLACE f2111mvg WITH 0
           REPLACE f2111mvh WITH 0
           REPLACE f2111mvi WITH 0
           REPLACE f2111mvj WITH 0
           REPLACE f2111gru WITH vgRu
           REPLACE f2111cuv WITH vcUv
           REPLACE f2111nuv WITH vnUv
           REPLACE f2111nui WITH SPACE(30)
           REPLACE f2111cuc WITH vcUv
           REPLACE f2111nuc WITH vnUv
           REPLACE f2111cux WITH vcUv
           REPLACE f2111nux WITH vnUv
           REPLACE f2111tam WITH SPACE(30)
           REPLACE f2111cst WITH vcSt
           REPLACE f2111ser WITH 2
           REPLACE f2111min WITH vmIn
           REPLACE f2111max WITH vmAx
           REPLACE f2111tie WITH 0
           REPLACE f2111imp WITH 2
           REPLACE f2111pro WITH SPACE(30)
           REPLACE f2111mar WITH SPACE(30)
           REPLACE f2111la1 WITH vlA1
           REPLACE f2111an1 WITH vaN1
           REPLACE f2111la2 WITH vlA2
           REPLACE f2111an2 WITH vaN2
           REPLACE f2111la3 WITH 0
           REPLACE f2111an3 WITH 0
           REPLACE f2111esp WITH veSp
           REPLACE f2111adv WITH 0
           REPLACE f2111vcp WITH vvCp
           REPLACE f2111vcs WITH 0
           REPLACE f2111prm WITH 0
           REPLACE f2111mov WITH SPACE(01)
           REPLACE f2111uti WITH vuTi
           REPLACE f2111ut2 WITH 0
           REPLACE f2111ut3 WITH 0
           REPLACE f2111ut4 WITH 0
           REPLACE f2111ut5 WITH 0
           REPLACE f2111ut6 WITH 0
           REPLACE f2111ut7 WITH 0
           REPLACE f2111ut8 WITH 0
           REPLACE f2111ut9 WITH 0
           REPLACE f2111ut0 WITH 0
           REPLACE f2111dct WITH 0
           REPLACE f2111dc2 WITH 0
           REPLACE f2111dc3 WITH 0
           REPLACE f2111dc4 WITH 0
           REPLACE f2111dc5 WITH 0
           REPLACE f2111dc6 WITH 0
           REPLACE f2111dc7 WITH 0
           REPLACE f2111dc8 WITH 0
           REPLACE f2111dc9 WITH 0
           REPLACE f2111dc0 WITH 0
           REPLACE f2111sto WITH vsTo
           REPLACE f2111sts WITH 0
           REPLACE f2111stm WITH 0
           REPLACE f2111caj WITH 0
           REPLACE f2111cas WITH 0
           REPLACE f2111pxc WITH 0
           REPLACE f2111cx1 WITH 0
           REPLACE f2111cx2 WITH 0
           REPLACE f2111bas WITH vbAs
           REPLACE f2111com WITH SPACE(30)
           REPLACE f2111fot WITH SPACE(40)
           REPLACE f2111pes WITH 0
           REPLACE f2111cmx WITH 0
           REPLACE f2111ult WITH CTOD("  /  /    ")
           REPLACE f2111est WITH veSt
           REPLACE f2111usu WITH vuSu
           REPLACE f2111dat WITH vdAt
           REPLACE f2111tim WITH vtIm
           REPLACE f2111maq WITH SPACE(30)
      ELSE
           REPLACE f2111uti WITH vuTi
           REPLACE f2111vcp WITH vvCp
           REPLACE f2111vv1 WITH vvV1
           REPLACE f2111vv2 WITH vvV2
      ENDIF
      SELECT prOductos_control
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Cod_0000a
 PARAMETER ptAm, pcOd
 STORE STRTRAN(STR(VAL(pcOd)+1, ptAm, 0), " ", "0") TO pcOd
ENDPROC
*
PROCEDURE Uni_0000a
 PARAMETER puNi
 DO CASE
      CASE AT("UNIDAD", UPPER(puNi))<>0 .OR. puNi="Unidades" .OR. puNi= ;
           "Unit." .OR. puNi="Unit" .OR. puNi="Unid." .OR. puNi="Unid"  ;
           .OR. puNi="Und." .OR. puNi="Und" .OR. puNi="Uni" .OR. puNi= ;
           "Uinidad" .OR. puNi=".unid."
           STORE "Unidad" TO puNi
      CASE UPPER(puNi)="1 KG." .OR. puNi="Kilogramo" .OR. puNi="Kilo"  ;
           .OR. puNi="Kgms." .OR. puNi="Kgms" .OR. puNi="Kgm." .OR. puNi= ;
           "Kgm" .OR. puNi="Kgs." .OR. puNi="Kgs" .OR. puNi="Kg." .OR.  ;
           puNi="Kg"
           STORE "Kg." TO puNi
      CASE puNi="Juego" .OR. puNi="Jgo." .OR. puNi="Jgo"
           STORE "Juego" TO puNi
      CASE puNi="Med.planch" .OR. puNi="Med.planc." .OR. puNi="Med.plan."  ;
           .OR. puNi="Med.planc" .OR. puNi="Med.pl." .OR. puNi="Med.pl"  ;
           .OR. puNi="Media plan" .OR. puNi="Media pla." .OR. puNi= ;
           "Media pla" .OR. puNi="Media pl." .OR. puNi="Media pl" .OR.  ;
           puNi="Media  plan" .OR. puNi="Media  pla." .OR. puNi= ;
           "Media  pla" .OR. puNi="Media  pl." .OR. puNi="Media  pl" .OR.  ;
           puNi="Med. planc" .OR. puNi="Med. plan" .OR. puNi="Med. pl."  ;
           .OR. puNi="Med. pl" .OR. puNi="1/2plancha" .OR. puNi= ;
           "1/2 planch" .OR. puNi="Mediapl" .OR. puNi="Media"
           STORE "1/2 Plancha" TO puNi
      CASE puNi="Metro line" .OR. puNi="Metro lin." .OR. puNi="Metro lin"  ;
           .OR. puNi="Metro l." .OR. puNi="Metro l" .OR. puNi="Metro  l."  ;
           .OR. puNi="Metros" .OR. puNi="Mts." .OR. puNi="Mts" .OR. puNi= ;
           "Metro" .OR. puNi="M.l." .OR. puNi="Ml." .OR. puNi="Ml" .OR.  ;
           puNi="Por lado" .OR. puNi="Porl lado" .OR. puNi="Po lado"
           STORE "Metro" TO puNi
      CASE puNi="Plancha" .OR. puNi=".plancha" .OR. puNi="Planta" .OR.  ;
           puNi="Lancha" .OR. puNi="Pancha"
           STORE "Plancha" TO puNi
      CASE puNi="5 kg"
           STORE "5 Kg." TO puNi
      CASE puNi="Millar" .OR. puNi="Millares"
           STORE "Millar" TO puNi
      CASE puNi="Pie2." .OR. puNi="Pie2" .OR. puNi="Pie 2" .OR. puNi= ;
           "Pie/2" .OR. puNi="P2." .OR. puNi="P2" .OR. puNi="P²"
           STORE "Pie2" TO puNi
      CASE puNi="Paquetes" .OR. puNi="Paquete" .OR. puNi="Pqte." .OR.  ;
           puNi="Pqte" .OR. puNi="Pqt." .OR. puNi="Pqt"
           STORE "Paquete" TO puNi
      CASE puNi="Pieza" .OR. puNi="Pza." .OR. puNi="Pza"
           STORE "Pieza" TO puNi
      CASE AT("VARILLA", UPPER(puNi))<>0
           STORE "Varilla" TO puNi
      CASE LEN(ALLTRIM(puNi))=1
           STORE "Unidad" TO puNi
 ENDCASE
ENDPROC
*
PROCEDURE P00_0000a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 18 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Pasar los Productos de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa el Archivo Maestro y los utilitarios de Productos" Font "&mLetRom",13 Style "BQ"
 @mFI0+04,mCO0+10 Say "de CONTROL a SAM. Grabando nuevos y actualizando anteriores.       " Font "&mLetRom",13 Style "BQ"
 @mFI0+10,mCO0+05 Say "Path:"                                                               Font "&mLetRom",13 Style "BQ"
 DO coLblr
 @mFI0+07,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..."            Font "&mLetRom",14 Style "BTI"
 DO coLbln
 @mFI0+10,mCO0+14 Edit vPAT Font "&mLetRom",12 Style "BQ" Size 1,73.5,80
 DO coLsc7
 @mFI0+12,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+14,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+16,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_0000a
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_0000a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de Maestros y Utilitarios de"
 @ pfIl+01, 02 SAY "Productos de CONTROL a SAM."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 25 SAY ":" STYLE "BT"
 @ pfIl+06, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+05, 15 SAY "ESC" STYLE "BT"
 @ pfIl+06, 15 SAY "F10" STYLE "BT"
 @ pfIl+07, 15 SAY "F1" STYLE "BT"
 @ pfIl+08, 15 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 27 SAY "Regresar al Menú Principal"
 @ pfIl+06, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 27 SAY "Ayuda del Programa"
 @ pfIl+08, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vpAt, vtIp, vlEt, vtPo, vnEm, vtEm, vcOd, vdEs, vdCr, vsTo, vsTa,  ;
         vuTi, veSp
 RELEASE vmIn, vmAx, veSt, vuSu, vdAt, vtIm, vlA1, vlA2, vaN1, vaN2, vvCp,  ;
         vvV1, vvV2
 RELEASE vuNv, vuNc, vnUv, vnUc, vtPr, vsEr, vtPp, vdC1, vdC2, vsW0, vcSt,  ;
         vvVt, vgRu
 RELEASE vvId, vrEf, vbAs, vuNi, vaLu, vnUm, vnU1, vtAm, vbLa
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
