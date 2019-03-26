 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vbLa, vtDo, vsEr, vdOc, vfEm, vnTp, vcM1, veSt, vuSu, vdAt,  ;
        vtIm, vcOd
 PUBLIC ccOd, vcAn, viTe, vdEs, vdCr, vcUv, vnUv, vcUc, vnUc, vmEd, vcAn,  ;
        vpIe, vcOr
 PUBLIC vlA1, vlA2, vaN1, vaN2, veSp, vtPo, vuNv, vrCc, voPc, vuN1, vuN2,  ;
        vmLa, vmAn
 PUBLIC vp11, vp12, vp21, vp22, vcTd
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0002a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0002a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0002a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0002a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0002a
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
PROCEDURE Det_0002a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2800", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2800DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2801", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Detalle
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2801DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2802", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Detalle_2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2802DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
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
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Tipos_Productos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Unidades
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9213DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9218", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Tipos_Salidas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9218NTI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 STORE ALLTRIM(vpAt)+"ALM\FA012270.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Cabecera_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2270DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 STORE ALLTRIM(vpAt)+"ALM\FA012271.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Detalle_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2271DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 10
 STORE ALLTRIM(vpAt)+"ALM\FA012272.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Detalle_2_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2272DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caBecera_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f2270tdo TO vtDo
      STORE f2270ser TO vsEr
      STORE f2270doc TO vdOc
      STORE f2270fem TO vfEm
      STORE f2270cm1 TO vcM1
      STORE f2270est TO veSt
      STORE f2270usu TO vuSu
      STORE f2270dat TO vdAt
      STORE f2270tim TO vtIm
      STORE ALLTRIM(f2270ntp) TO vnTp
      @mFI0+12,mCO0+5 Say "["+vTDO+":"+vSER+"-"+vDOC+"]  "+Dtoc(vFEM) Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      SELECT tiPos_salidas
      DO orD_0000a WITH "9218", "U", "F9218NTI", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK SUBSTR(UPPER(vnTp), 1, 30)
      IF EOF()
           DO orD_0000a WITH "9218", "U", "F9218TIP", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE "01" TO vtIp
           DO WHILE .T.
                SEEK vtIp
                IF EOF()
                     EXIT
                ENDIF
                DO coD_0000a IN PUG0000A WITH 2, vtIp
           ENDDO
           APPEND BLANK
           REPLACE f9218tip WITH vtIp
           REPLACE f9218nti WITH SUBSTR(UPPER(vnTp), 1, 1)+ ;
                   SUBSTR(LOWER(vnTp), 2, 30)
           REPLACE f9218tpo WITH 1
           STORE f9218nti TO vnTi
           STORE f9218tpo TO vtPp
      ELSE
           STORE f9218tip TO vtIp
           STORE f9218nti TO vnTi
           STORE f9218tpo TO vtPp
      ENDIF
      SELECT caBecera
      SEEK vtDo+vsEr+"0"+vdOc
      IF EOF()
           APPEND BLANK
           REPLACE f2800tdo WITH vtDo
           REPLACE f2800ser WITH vsEr
           REPLACE f2800doc WITH "0"+vdOc
           REPLACE f2800fem WITH vfEm
           REPLACE f2800tip WITH vtIp
           REPLACE f2800nti WITH vnTi
           REPLACE f2800tpp WITH vtPp
           REPLACE f2800cm1 WITH vcM1
           REPLACE f2800ped WITH SPACE(07)
           REPLACE f2800td1 WITH SPACE(02)
           REPLACE f2800sr1 WITH SPACE(03)
           REPLACE f2800do1 WITH SPACE(07)
           REPLACE f2800tec WITH SPACE(02)
           REPLACE f2800nte WITH SPACE(50)
           REPLACE f2800mon WITH 1
           REPLACE f2800cos WITH 0
           REPLACE f2800est WITH veSt
           REPLACE f2800usu WITH vuSu
           REPLACE f2800dat WITH vdAt
           REPLACE f2800tim WITH vtIm
           REPLACE f2800maq WITH SPACE(30)
           IF veSt<>"9"
                STORE 1 TO viTe
                SELECT deTalle_control
                SEEK vtDo+vsEr+vdOc
                DO WHILE  .NOT. EOF() .AND. f2271tdo+f2271ser+f2271doc= ;
                   vtDo+vsEr+vdOc
                     STORE f2271cod TO vcOd, ccOd
                     STORE f2271des TO vdEs, vdCr
                     STORE f2271uni TO vuNv
                     STORE f2271can TO vcAn
                     IF f2271tpo="A" .AND. f2271cor="S"
                          STORE ALLTRIM(vcOd)+"C" TO vcOd
                     ENDIF
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF  .NOT. EOF()
                          STORE f2111des TO vdEs
                          STORE f2111dcr TO vdCr
                          STORE f2111cuv TO vcUv
                          STORE f2111nuv TO vnUv
                          STORE f2111cuc TO vcUc
                          STORE f2111nuc TO vnUc
                          STORE f2111la1 TO vlA1
                          STORE f2111la2 TO vlA2
                          STORE f2111an1 TO vaN1
                          STORE f2111an2 TO vaN2
                          STORE f2111esp TO veSp
                          STORE f2111tip TO vtPo
                          SELECT tiPos_productos
                          SEEK vtPo
                          IF EOF()
                               STORE 1 TO vtPo
                          ELSE
                               STORE f9211tpo TO vtPo
                          ENDIF
                     ELSE
                          STORE 0 TO vlA1, vlA2, vaN1, vaN2, veSp
                          DO unI_0000a IN PUG0000a WITH vuNv
                          SELECT unIdades
                          SEEK UPPER(vuNv)
                          IF EOF()
                               STORE SPACE(02) TO vcUv, vcUc
                          ELSE
                               STORE f9213uni TO vcUv, vcUc
                          ENDIF
                          STORE vuNv TO vnUv, vnUc
                          STORE 1 TO vtPo
                     ENDIF
                     DO CASE
                          CASE vlA2=0 .AND. vaN2=0
                               STORE 1 TO vmEd
                          CASE vlA1=0 .AND. vaN1=0
                               STORE 2 TO vmEd
                     ENDCASE
                     DO CASE
                          CASE vtPo=1 .OR. vtPo=10
                               STORE 0 TO vpIe
                          CASE vtPo=2 .AND. vmEd=1
                               STORE ROUND(vlA1*vaN1*10.77*vcAn, 4) TO vpIe
                          CASE vtPo=2 .AND. vmEd=2
                               STORE ROUND((vlA2*vaN2/144)*vcAn, 4) TO vpIe
                          CASE vtPo=3
                               STORE ROUND((vlA2*vaN2*veSp/12)*vcAn, 4) TO vpIe
                          CASE vtPo=4
                               STORE ROUND((vlA1*vaN1)*vcAn, 4) TO vpIe
                          CASE vtPo>=5 .AND. vtPo<=6
                               STORE vcAn TO vpIe
                     ENDCASE
                     SELECT deTalle
                     APPEND BLANK
                     REPLACE f2801tdo WITH vtDo
                     REPLACE f2801ser WITH vsEr
                     REPLACE f2801doc WITH "0"+vdOc
                     REPLACE f2801ite WITH viTe
                     REPLACE f2801cod WITH vcOd
                     REPLACE f2801des WITH vdEs
                     REPLACE f2801dcr WITH vdCr
                     REPLACE f2801cuv WITH vcUv
                     REPLACE f2801nuv WITH vnUv
                     REPLACE f2801cuc WITH vcUc
                     REPLACE f2801nuc WITH vnUc
                     REPLACE f2801med WITH vmEd
                     REPLACE f2801can WITH vcAn
                     REPLACE f2801caj WITH 0
                     REPLACE f2801pie WITH vpIe
                     REPLACE f2801la1 WITH vlA1
                     REPLACE f2801la2 WITH vlA2
                     REPLACE f2801an1 WITH vaN1
                     REPLACE f2801an2 WITH vaN2
                     REPLACE f2801esp WITH veSp
                     REPLACE f2801cos WITH 0
                     REPLACE f2801tpo WITH vtPo
                     REPLACE f2801est WITH SPACE(01)
                     REPLACE f2801tgi WITH SPACE(02)
                     REPLACE f2801sgi WITH SPACE(03)
                     REPLACE f2801ngi WITH SPACE(07)
                     REPLACE f2801cdg WITH SPACE(15)
                     SELECT deTalle_2_control
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(ccOd)+"*"
                     DO WHILE  .NOT. EOF() .AND. f2272tdo+f2272ser+ ;
                        f2272doc+ALLTRIM(f2272cod)+"*"=vtDo+vsEr+vdOc+ ;
                        ALLTRIM(ccOd)+"*"
                          STORE f2272rcc TO vrCc
                          STORE f2272opc TO voPc
                          STORE f2272un1 TO vuN1
                          STORE f2272un2 TO vuN2
                          STORE f2272mla TO vmLa
                          STORE f2272man TO vmAn
                          STORE f2272p11 TO vp11
                          STORE f2272p12 TO vp12
                          STORE f2272p21 TO vp21
                          STORE f2272p22 TO vp22
                          STORE f2272ctd TO vcTd
                          STORE f2272pie TO vpIe
                          IF vpIe=0 .AND. vtPo=6
                               STORE ROUND(vmLa*vcTd, 4) TO vpIe
                          ENDIF
                          SELECT deTalle_2
                          APPEND BLANK
                          REPLACE f2802tdo WITH vtDo
                          REPLACE f2802ser WITH vsEr
                          REPLACE f2802doc WITH "0"+vdOc
                          REPLACE f2802cod WITH vcOd
                          REPLACE f2802rcc WITH vrCc
                          REPLACE f2802opc WITH voPc
                          REPLACE f2802un1 WITH vuN1
                          REPLACE f2802un2 WITH vuN2
                          REPLACE f2802mla WITH vmLa
                          REPLACE f2802man WITH vmAn
                          REPLACE f2802p11 WITH vp11
                          REPLACE f2802p12 WITH vp12
                          REPLACE f2802p21 WITH vp21
                          REPLACE f2802p22 WITH vp22
                          REPLACE f2802ctd WITH vcTd
                          REPLACE f2802ca1 WITH 0
                          REPLACE f2802ca2 WITH 0
                          REPLACE f2802por WITH 0
                          REPLACE f2802pie WITH vpIe
                          SELECT deTalle_2_control
                          SKIP
                     ENDDO
                     STORE viTe+1 TO viTe
                     SELECT deTalle_control
                     SKIP
                ENDDO
           ENDIF
      ENDIF
      SELECT caBecera_control
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE P00_0002a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 14 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Pasa Salidas-Almacén de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa los Archivos de Salidas de Almacén de CONTROL" Font "&mLetRom",13 Style "BQ"
 @mFI0+04,mCO0+10 Say "a SAM. Grabando nuevos y actualizando anteriores."               Font "&mLetRom",13 Style "BQ"
 @mFI0+10,mCO0+05 Say "Path:"                                                           Font "&mLetRom",13 Style "BQ"
 DO coLblr
 @mFI0+07,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..."        Font "&mLetRom",14 Style "BTI"
 DO coLbln
 @mFI0+10,mCO0+14 Edit vPAT Font "&mLetRom",12 Style "BQ" Size 1,73.5,80
 DO coLsc7
 @mFI0+12,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_0002a
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
PROCEDURE Hl1_0002a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de las Guías de Salida de"
 @ pfIl+01, 02 SAY "CONTROL a SAM."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
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
 RELEASE vpAt, vbLa, vtDo, vsEr, vdOc, vfEm, vnTp, vcM1, veSt, vuSu, vdAt,  ;
         vtIm, vcOd
 RELEASE ccOd, vcAn, viTe, vdEs, vdCr, vcUv, vnUv, vcUc, vnUc, vmEd, vcAn,  ;
         vpIe, vcOr
 RELEASE vlA1, vlA2, vaN1, vaN2, veSp, vtPo, vuNv, vrCc, voPc, vuN1, vuN2,  ;
         vmLa, vmAn
 RELEASE vp11, vp12, vp21, vp22, vcTd
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
