 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vbLa, vtDo, vsEr, vdOc, vfEm, vcLi, vnOm, vdIr, vdIs, vdEp,  ;
        vrUc, vtD1
 PUBLIC vsR1, vfAc, vfFa, vpPa, vlUg, vlUd, vtNo, vtDi, vtRu, vcM1, veSt,  ;
        vuSu, vdAt
 PUBLIC vtIm, vmOt, vcOd, ccOd, vcAn, viTe, vdEs, vdCr, vcUv, vnUv, vcUc,  ;
        vnUc, vmEd
 PUBLIC vcAn, vpIe, vlA1, vlA2, vaN1, vaN2, veSp, vtPo, vuNv, vrCc, voPc,  ;
        vuN1, vuN2
 PUBLIC vmLa, vmAn, vp11, vp12, vp21, vp22, vcTd
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0007a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0007a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0007a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0007a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0007a
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
PROCEDURE Det_0007a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Detalle
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2601DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2602", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Detalle_2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2602DOC
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
 STORE ALLTRIM(vpAt)+"ALM\FA012260.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Cabecera_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2260DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 STORE ALLTRIM(vpAt)+"ALM\FA012261.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Detalle_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2261DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 STORE ALLTRIM(vpAt)+"ALM\FA012262.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Detalle_2_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2262DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caBecera_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE "GR" TO vtDo
      STORE f2260ser TO vsEr
      STORE f2260doc TO vdOc
      STORE f2260fem TO vfEm
      STORE f2260cli TO vcLi
      STORE f2260nom TO vnOm
      STORE f2260dir TO vdIr
      STORE f2260dis TO vdIs
      STORE "Lima" TO vdEp
      STORE f2260ele TO vrUc
      STORE f2260td1 TO vtD1
      STORE f2260sr1 TO vsR1
      STORE f2260fac TO vfAc
      STORE f2260ffa TO vfFa
      STORE f2260lug TO vpPa
      STORE f2260di1 TO vlUg
      STORE f2260ds1 TO vlUd
      STORE f2260tra TO vtNo
      STORE f2260trd TO vtDi
      STORE f2260trr TO vtRu
      STORE f2260cm1 TO vcM1
      STORE f2260est TO veSt
      STORE f2260usu TO vuSu
      STORE f2260dat TO vdAt
      STORE f2260tim TO vtIm
      STORE VAL(f2260mot) TO vmOt
      DO CASE
           CASE vmOt=1
                STORE 1 TO vmOt
           CASE vmOt=2
                STORE 11 TO vmOt
           CASE vmOt=3
                STORE 2 TO vmOt
           CASE vmOt=4
                STORE 13 TO vmOt
      ENDCASE
      @mFI0+12,mCO0+5 Say "["+vTDO+":"+vSER+"-"+vDOC+"]  "+Dtoc(vFEM) Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      SELECT caBecera
      SEEK vtDo+vsEr+"0"+vdOc
      IF EOF()
           APPEND BLANK
           REPLACE f2600tdo WITH vtDo
           REPLACE f2600ser WITH vsEr
           REPLACE f2600doc WITH "0"+vdOc
           REPLACE f2600tit WITH vcLi
           REPLACE f2600cli WITH vcLi
           REPLACE f2600suc WITH "01"
           REPLACE f2600nom WITH vnOm
           REPLACE f2600dir WITH vdIr
           REPLACE f2600dis WITH vdIs
           REPLACE f2600dep WITH vdEp
           REPLACE f2600ruc WITH vrUc
           REPLACE f2600ele WITH SPACE(08)
           REPLACE f2600tel WITH SPACE(20)
           REPLACE f2600lug WITH vlUg
           REPLACE f2600lud WITH vlUd
           REPLACE f2600lup WITH "Lima"
           REPLACE f2600lg2 WITH SPACE(70)
           REPLACE f2600ld2 WITH SPACE(25)
           REPLACE f2600lp2 WITH SPACE(25)
           REPLACE f2600fem WITH vfEm
           REPLACE f2600alm WITH SPACE(04)
           REPLACE f2600tra WITH SPACE(04)
           REPLACE f2600tno WITH vtNo
           REPLACE f2600tdi WITH vtDi
           REPLACE f2600tds WITH "Lima"
           REPLACE f2600tdp WITH "Lima"
           REPLACE f2600tru WITH vtRu
           REPLACE f2600cim WITH SPACE(25)
           REPLACE f2600td1 WITH vtD1
           REPLACE f2600sr1 WITH vsR1
           REPLACE f2600do1 WITH "0"+vfAc
           REPLACE f2600ffa WITH vfFa
           REPLACE f2600srp WITH SPACE(03)
           REPLACE f2600ped WITH SPACE(07)
           REPLACE f2600mot WITH vmOt
           REPLACE f2600cst WITH 2
           REPLACE f2600cr1 WITH SPACE(02)
           REPLACE f2600mr1 WITH SPACE(20)
           REPLACE f2600pla WITH SPACE(10)
           REPLACE f2600cr2 WITH SPACE(02)
           REPLACE f2600mr2 WITH SPACE(20)
           REPLACE f2600pl2 WITH SPACE(10)
           REPLACE f2600cc1 WITH SPACE(02)
           REPLACE f2600cho WITH SPACE(70)
           REPLACE f2600lc1 WITH SPACE(30)
           REPLACE f2600cc2 WITH SPACE(02)
           REPLACE f2600ch2 WITH SPACE(70)
           REPLACE f2600lc2 WITH SPACE(30)
           REPLACE f2600pes WITH 0
           REPLACE f2600cm1 WITH vcM1
           REPLACE f2600cm2 WITH SPACE(90)
           REPLACE f2600cps WITH SPACE(03)
           REPLACE f2600cpn WITH SPACE(07)
           REPLACE f2600est WITH veSt
           REPLACE f2600usu WITH vuSu
           REPLACE f2600dat WITH vdAt
           REPLACE f2600tim WITH vtIm
           REPLACE f2600maq WITH SPACE(30)
           IF veSt<>"9"
                STORE 1 TO viTe
                SELECT deTalle_control
                SEEK vsEr+vdOc
                DO WHILE  .NOT. EOF() .AND. f2261ser+f2261doc=vsEr+vdOc
                     STORE f2261cod TO vcOd, ccOd
                     STORE f2261des TO vdEs, vdCr
                     STORE f2261uni TO vuNv
                     STORE f2261can TO vcAn
                     IF f2261tpo="A" .AND. f2261cor="S"
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
                     REPLACE f2601tdo WITH vtDo
                     REPLACE f2601ser WITH vsEr
                     REPLACE f2601doc WITH "0"+vdOc
                     REPLACE f2601ite WITH viTe
                     REPLACE f2601cod WITH vcOd
                     REPLACE f2601des WITH vdEs
                     REPLACE f2601dcr WITH vdCr
                     REPLACE f2601cuc WITH vcUc
                     REPLACE f2601nuc WITH vnUc
                     REPLACE f2601cuv WITH vcUv
                     REPLACE f2601nuv WITH vnUv
                     REPLACE f2601med WITH vmEd
                     REPLACE f2601can WITH vcAn
                     REPLACE f2601caj WITH 0
                     REPLACE f2601ref WITH SPACE(60)
                     REPLACE f2601pie WITH vpIe
                     REPLACE f2601lar WITH 0
                     REPLACE f2601la1 WITH vlA1
                     REPLACE f2601la2 WITH vlA2
                     REPLACE f2601la3 WITH 0
                     REPLACE f2601la4 WITH 0
                     REPLACE f2601la5 WITH 0
                     REPLACE f2601la6 WITH 0
                     REPLACE f2601la7 WITH 0
                     REPLACE f2601la8 WITH 0
                     REPLACE f2601la9 WITH 0
                     REPLACE f2601anc WITH 0
                     REPLACE f2601an1 WITH vaN1
                     REPLACE f2601an2 WITH vaN2
                     REPLACE f2601an3 WITH 0
                     REPLACE f2601an4 WITH 0
                     REPLACE f2601an5 WITH 0
                     REPLACE f2601an6 WITH 0
                     REPLACE f2601an7 WITH 0
                     REPLACE f2601an8 WITH 0
                     REPLACE f2601an9 WITH 0
                     REPLACE f2601alt WITH 0
                     REPLACE f2601al1 WITH 0
                     REPLACE f2601al2 WITH 0
                     REPLACE f2601al3 WITH 0
                     REPLACE f2601al4 WITH 0
                     REPLACE f2601al5 WITH 0
                     REPLACE f2601al6 WITH 0
                     REPLACE f2601al7 WITH 0
                     REPLACE f2601al8 WITH 0
                     REPLACE f2601al9 WITH 0
                     REPLACE f2601esp WITH veSp
                     REPLACE f2601pes WITH 0
                     REPLACE f2601tpo WITH vtPo
                     SELECT deTalle_2_control
                     SEEK vsEr+vdOc+ALLTRIM(ccOd)+"*"
                     DO WHILE  .NOT. EOF() .AND. f2262ser+f2262doc+ ;
                        ALLTRIM(f2262cod)+"*"=vsEr+vdOc+ALLTRIM(ccOd)+"*"
                          STORE f2262rcc TO vrCc
                          STORE f2262opc TO voPc
                          STORE f2262un1 TO vuN1
                          STORE f2262un2 TO vuN2
                          STORE f2262mla TO vmLa
                          STORE f2262man TO vmAn
                          STORE f2262p11 TO vp11
                          STORE f2262p12 TO vp12
                          STORE f2262p21 TO vp21
                          STORE f2262p22 TO vp22
                          STORE f2262ctd TO vcTd
                          STORE f2262pie TO vpIe
                          IF vpIe=0 .AND. vtPo=6
                               STORE ROUND(vmLa*vcTd, 4) TO vpIe
                          ENDIF
                          SELECT deTalle_2
                          APPEND BLANK
                          REPLACE f2602tdo WITH vtDo
                          REPLACE f2602ser WITH vsEr
                          REPLACE f2602doc WITH "0"+vdOc
                          REPLACE f2602cod WITH vcOd
                          REPLACE f2602rcc WITH vrCc
                          REPLACE f2602opc WITH voPc
                          REPLACE f2602un1 WITH vuN1
                          REPLACE f2602un2 WITH vuN2
                          REPLACE f2602mla WITH vmLa
                          REPLACE f2602man WITH vmAn
                          REPLACE f2602p11 WITH vp11
                          REPLACE f2602p12 WITH vp12
                          REPLACE f2602p21 WITH vp21
                          REPLACE f2602p22 WITH vp22
                          REPLACE f2602ctd WITH vcTd
                          REPLACE f2602ca1 WITH 0
                          REPLACE f2602ca2 WITH 0
                          REPLACE f2602por WITH 0
                          REPLACE f2602pie WITH vpIe
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
PROCEDURE P00_0007a
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
 DO tiT_0000a WITH "Pasa Guías de Remisión de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa los Archivos de Guías de Remisión de CONTROL" Font "&mLetRom",13 Style "BQ"
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
PROCEDURE Clp_0007a
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
PROCEDURE Hl1_0007a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de las Guías de Remisión"
 @ pfIl+01, 02 SAY "de CONTROL a SAM."
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
 RELEASE vpAt, vbLa, vtDo, vsEr, vdOc, vfEm, vcLi, vnOm, vdIr, vdIs, vdEp,  ;
         vrUc, vtD1
 RELEASE vsR1, vfAc, vfFa, vpPa, vlUg, vlUd, vtNo, vtDi, vtRu, vcM1, veSt,  ;
         vuSu, vdAt
 RELEASE vtIm, vmOt, vcOd, ccOd, vcAn, viTe, vdEs, vdCr, vcUv, vnUv, vcUc,  ;
         vnUc, vmEd
 RELEASE vcAn, vpIe, vlA1, vlA2, vaN1, vaN2, veSp, vtPo, vuNv, vrCc, voPc,  ;
         vuN1, vuN2
 RELEASE vmLa, vmAn, vp11, vp12, vp21, vp22, vcTd
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
