 PARAMETER wnIv
 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
      STORE "Archivo Utilitario de Tipos de Productos/Servicios/Activos Fijos vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Unidad
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9213UNI
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Unidades de Medida vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
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
      STORE "Archivo Utilitario de Grupos de Productos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9221", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Primero
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9221DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9222", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Segundo
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9222DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9223", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tercero
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9223DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9224", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cuarto
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9224DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9225", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Quinto
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9225DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9227", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Colores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9227COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9228", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sexto
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9228DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9229", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Septimo
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9229DES
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO prO_virtual WITH 2
 STORE 00 TO meRr
 PUBLIC viTe, ciTe, viT1, ciT1, ciTx, vfFr, ifFr, ufFr, ffFr, cfFr, vfFt,  ;
        ifFt, ufFt
 PUBLIC ffFt, cfFt, vfFu, ifFu, ufFu, ffFu, cfFu, vfFv, ifFv, ufFv, ffFv,  ;
        cfFv, vfFw
 PUBLIC ifFw, ufFw, ffFw, cfFw, vfFx, ifFx, ufFx, ffFx, cfFx, vfFy, ifFy,  ;
        ufFy, ffFy
 PUBLIC cfFy, vfFz, ifFz, ufFz, ffFz, cfFz, vcOd, ccOd, vtPo, itPo, utPo,  ;
        xtPo, ctPo
 PUBLIC vnTp, inTp, unTp, cnTp, voP1, ioP1, uoP1, voP2, ioP2, uoP2, voP3,  ;
        ioP3, uoP3
 PUBLIC voP4, ioP4, uoP4, voP5, ioP5, uoP5, voP6, ioP6, uoP6, voP7, ioP7,  ;
        uoP7, vtI1
 PUBLIC vtI2, vtI3, vtI4, vtI5, vtI6, vtIp, vnTi, vtPp, ctPp, vtP1, viMp,  ;
        vdEs, cdEs
 PUBLIC vdCr, vcUv, vcUc, vcUx, vnUv, vnUc, vnUx, vmD1, vmD2, vmD3, vvV1,  ;
        vvV2, vvV3
 PUBLIC vvV4, vvV5, vvV6, vvV7, vvV8, vvV9, vvV0, vvVa, vvVb, vvVc, vvVd,  ;
        vvVe, vvVf
 PUBLIC vvVg, vvVh, vvVi, vvVj, cvV1, cvV2, vmV1, vmV2, vmV3, vmV4, vmV5,  ;
        vmV6, vmV7
 PUBLIC vmV8, vmV9, vmV0, vmVa, vmVb, vmVc, vmVd, vmVe, vmVf, vmVg, vmVh,  ;
        vmVi, vmVj
 PUBLIC cmV1, cmV2, vvTa, vcSt, vsRr, vmIn, vmAx, vvCp, vcPs, vpRo, vmAr,  ;
        vlA1, vlA2
 PUBLIC vlA3, vaN1, vaN2, vaN3, veSp, vgRu, vnGr, veSt, vfBi, vcBi, vfB1,  ;
        vcB1, vfB2
 PUBLIC vcB2, vfB3, vcB3, vfB4, vcB4, vfB5, vcB5, vfB6, vcB6, vfB7, vcB7,  ;
        vfB8, vcB8
 PUBLIC vfB9, vcB9, vfB0, vcB0, vfBa, vcBa, vfBb, vcBb, vfBc, vcBc, vfBd,  ;
        vcBd, vtB1
 PUBLIC vtB2, vtB3, vtB4, vtB5, vuTi, cuTi, vuT2, vuT3, vuT4, vuT5, vuT6,  ;
        vuT7, vuT8
 PUBLIC vuT9, vuT0, vdTt, vdT2, vdT3, vdT4, vdT5, vdT6, vdT7, vdT8, vdT9,  ;
        vdT0, vlIs
 PUBLIC vcDg, icDg, ucDg, ccDg, vdCc, idCc, udCc, cdCc, vdC1, idC1, udC1,  ;
        cdC1, vdC2
 PUBLIC idC2, udC2, cdC2, vdC3, idC3, udC3, cdC3, vdC4, idC4, udC4, cdC4,  ;
        vdC5, idC5
 PUBLIC udC5, cdC5, vdC6, idC6, udC6, cdC6, vdC7, idC7, udC7, cdC7, ckEy,  ;
        vsW1, vsWg
 PUBLIC vsWw, csWw, vsWr, vlEt, tcAn, vsTo, vsLc, vtAm, vnEm, vpXc, vcX1,  ;
        vcX2, vbAs
 PUBLIC vdBa, vaDv, vpRm, tpRm, cfI0, vfOt, cfOt, vdIn, vcUb, vtIe, vmI1,  ;
        pfIl, pcOl
 PUBLIC pfR1, pfR2, pfR3, pfR4, vfEc, tcUn, tvAl, tnEt, tgAs, tdCt, vuLt,  ;
        vcMx, vsLd
 PUBLIC vpEs, vpE1, vcL0, vcL1, vcL2, vcL3, vdIr, vfE1, vfE2, vcO1, vcO2,  ;
        vpDt, vdEt
 PUBLIC vmNd
 PUBLIC vpAn_11, vpAn_let, vpAn_le1, vpAn_le2, vpAn_le3, vpAn_le4, vpAn_le5
 PUBLIC vpAn_le6
 STORE SPACE(16) TO vcUb
 STORE SPACE(50) TO vnTi
 STORE SPACE(20) TO vcOd, vbAs
 STORE SPACE(40) TO vfOt, vtAm
 STORE SPACE(70) TO vdBa, vdIn
 STORE SPACE(120) TO vdEs, vdCr, cdEs
 STORE SPACE(02) TO vtIp, vcUv, vcUc, vcUx, vgRu
 STORE SPACE(30) TO vnUv, vnUc, vnUx, vpRo, vmAr, vnGr
 STORE "1" TO veSt
 STORE 02 TO vmD1, vmD2, vsRr, vdEt
 STORE 01 TO vsWg, viTe, vtPo, viMp, vmD3, vcSt, vvTa, vlIs, vsW1, vtIe,  ;
       vmI1, vpE1, vmNd
 STORE 00 TO vlA1, vlA2, vlA3, vaN1, vaN2, vaN3, veSp, vuTi, vuT2, vuT3
 STORE 00 TO vuT4, vuT5, vuT6, vuT7, vuT8, vuT9, vuT0, vvV1, vvV2, vvV3
 STORE 00 TO vvV4, vvV5, vvV6, vvV7, vvV8, vvV9, vvV0, vvVa, vvVb, vvVc
 STORE 00 TO vvVd, vvVe, vvVf, vvVg, vvVh, vvVi, vvVj, vmV1, vmV2, vmV3
 STORE 00 TO vmV4, vmV5, vmV6, vmV7, vmV8, vmV9, vmV0, vmVa, vmVb, vmVc
 STORE 00 TO vmVd, vmVe, vmVf, vmVg, vmVh, vmVi, vmVj, viT1, vpXc, vaDv
 STORE 00 TO vmIn, vmAx, vvCp, vvCs, vcX1, vcX2, vpRm, vpEs, vpDt
 STORE 99 TO mkEy
 SELECT tiP_prod
 STORE f9211tip TO vtIp
 STORE f9211nti TO vnTi
 STORE f9211tpo TO vtPp
 STORE f9211det TO vdEt
 IF vdEt=1
      STORE mpDt TO vpDt
 ENDIF
 SET READBORDER ON
 DO p00_2111a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO p2_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2111a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2111a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Alt_s .AND. viTe=1
                PRIVATE ptAm, pnUm, plEt
                DO WHILE .T.
                     STORE LEN(ALLTRIM(vcOd)) TO ptAm
                     IF ptAm=0
                          SELECT prOductos
                          GOTO TOP
                          STORE f2111cod TO vcOd
                          STORE LEN(ALLTRIM(vcOd)) TO ptAm
                     ENDIF
                     DO CASE
                          CASE ptAm=0
                               STORE STRTRAN(SUBSTR(vcOd, 1, mtMc), " ",  ;
                                     "0") TO vcOd
                               STORE LEN(ALLTRIM(vcOd)) TO ptAm
                               STORE STRTRAN(STR(VAL(vcOd)+1, ptAm, 0),  ;
                                     " ", "0") TO vcOd
                          OTHERWISE
                               STORE ALLTRIM(vcOd) TO vcOd
                               STORE LEN(vcOd) TO ptAm, pnUm
                               DO WHILE .T.
                                    DO CASE
                                         CASE ASC(SUBSTR(vcOd, pnUm, 1))>= ;
                                          58 .AND. ASC(SUBSTR(vcOd, pnUm,  ;
                                          1))<=64
                                         CASE SUBSTR(vcOd, pnUm, 1)<"0"  ;
                                          .OR. SUBSTR(vcOd, pnUm, 1)>"Z"
                                         CASE (SUBSTR(vcOd, pnUm, 1)>="A"  ;
                                          .AND. SUBSTR(vcOd, pnUm, 1)<= ;
                                          "Y") .OR. (SUBSTR(vcOd, pnUm,  ;
                                          1)>="0" .AND. SUBSTR(vcOd, pnUm,  ;
                                          1)<="9")
                                         OTHERWISE
                                              STORE pnUm-1 TO pnUm
                                              IF pnUm=0
                                                   EXIT
                                              ENDIF
                                              LOOP
                                    ENDCASE
                                    DO CASE
                                         CASE ASC(SUBSTR(vcOd, pnUm, 1))>= ;
                                          58 .AND. ASC(SUBSTR(vcOd, pnUm,  ;
                                          1))<=64
                                              STORE "A" TO plEt
                                         CASE SUBSTR(vcOd, pnUm, 1)<"0"  ;
                                          .OR. SUBSTR(vcOd, pnUm, 1)>"Z"
                                              STORE "0" TO plEt
                                         CASE SUBSTR(vcOd, pnUm, 1)="9"
                                              STORE "A" TO plEt
                                         OTHERWISE
                                              STORE CHR(ASC(SUBSTR(vcOd,  ;
                                               pnUm, 1))+1) TO plEt
                                    ENDCASE
                                    DO CASE
                                         CASE pnUm=ptAm
                                              STORE SUBSTR(vcOd, 1, pnUm- ;
                                               1)+plEt TO vcOd
                                         CASE pnUm=1
                                              STORE plEt+ ;
                                               SUBSTR(REPLICATE("0",  ;
                                               mtMc), 1, ptAm-pnUm) TO vcOd
                                         OTHERWISE
                                              STORE SUBSTR(vcOd, 1, pnUm- ;
                                               1)+plEt+ ;
                                               SUBSTR(REPLICATE("0",  ;
                                               mtMc), 1, ptAm-pnUm) TO vcOd
                                    ENDCASE
                                    EXIT
                               ENDDO
                     ENDCASE
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     DO prO_2111a
                     IF EOF()
                          EXIT
                     ENDIF
                ENDDO
                RELEASE ptAm, pnUm, plEt
           CASE mkEy=k_Alt_c .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe<>1 .AND. wnIv<>"1" .AND. wnIv<>"3"
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
                STORE 99 TO mkEy
           CASE mkEy=k_F4 .AND. ((wnIv="1" .AND. viTe=14) .OR. (wnIv="2"  ;
                .AND. viTe=11) .OR. (wnIv="3" .AND. viTe=10) .OR. (wnIv= ;
                "4" .AND. viTe=06))
                DO baS_2111a WITH "3"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT prOductos
                STORE 99 TO mkEy
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4) .AND. viTe=1
                = INKEY(0.01)
                SELECT prOductos
                DO CASE
                     CASE mkEy=k_F2
                          STORE 2 TO vsWw
                          STORE 1 TO vsWr
                          DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                     CASE mkEy=k_F3
                          STORE 2 TO vsWw
                          STORE 2 TO vsWr
                          DO prEsiona WITH "2", "BUSCA0", vfB1, vcB1
                     CASE mkEy=k_F4
                          STORE 1 TO vsWw
                          STORE 1 TO vsWr
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_11
                DO paC2111w WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCA0", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE vcDg TO vcOd
                     DO prO_2111a
                ENDIF
           CASE mkEy=k_Alt_c
                = INKEY(0.01)
                SELECT tiP_prod
                SET FILTER TO LEN(ALLTRIM(f9211let))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Codificación Nemotécnica registrada..."  ;
                           TO mmSj
                ELSE
                     STORE "" TO voP1, voP2, voP3, voP4, voP5, voP6, voP7
                     STORE "" TO vdC1, vdC2, vdC3, vdC4, vdC5, vdC6, vdC7
                     DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SAVE SCREEN TO vpAn_let
                     DO puC9211w WITH "5"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_let
                     SELECT tiP_prod
                     SET FILTER TO
                     STORE mkEy TO ckEy
                     DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE ckEy TO mkEy
                     IF mkEy=k_Enter
                          STORE ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ ;
                                ALLTRIM(voP3)+ALLTRIM(voP4)+ALLTRIM(voP5)+ ;
                                ALLTRIM(voP6)+ALLTRIM(voP7) TO vcOd
                          IF vnEm=1
                               STORE ALLTRIM(vdC1)+" "+ALLTRIM(vdC2)+" "+ ;
                                     ALLTRIM(vdC3)+" "+ALLTRIM(vdC4)+" "+ ;
                                     ALLTRIM(vdC5)+" "+ALLTRIM(vdC6)+" "+ ;
                                     ALLTRIM(vdC7) TO cdEs, vdEs, vdCr
                          ELSE
                               STORE ALLTRIM(vdC2)+" "+ALLTRIM(vdC3)+" "+ ;
                                     ALLTRIM(vdC4)+" "+ALLTRIM(vdC5)+" "+ ;
                                     ALLTRIM(vdC6)+" "+ALLTRIM(vdC7) TO  ;
                                     cdEs, vdEs, vdCr
                          ENDIF
                     ENDIF
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2111a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2111a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. wnIv="1" .AND. miMp=1 .AND. viTe=19
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. wnIv="1" .AND. viTe=17
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. wnIv$"23" .AND. viTe=15
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. wnIv="4" .AND. viTe=10
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe<5 .OR. viTe=6)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. wnIv="1" .AND. (viTe=8 .OR. viTe= ;
                11 .OR. viTe=14)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. wnIv="2" .AND. (viTe=5 .OR. viTe= ;
                09 .OR. viTe=11)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. wnIv="3" .AND. (viTe=8 .OR. viTe= ;
                09 .OR. viTe=10)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. wnIv="4" .AND. viTe=5
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wnIv$"24"
                STORE "No puede eliminar productos..." TO mmSj
           CASE mkEy=k_Alt_del .AND. wnIv$"24"
                STORE "No puede Anular, ni Activar productos..." TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                SELECT prOductos
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK UPPER(ALLTRIM(vcOd))+"*"
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Código?"
                          IF moPc$"Ss"
                               DO q2_0000a
                               DO q1_0000a
                               DO deL_2111c IN PAM2111C WITH "1"
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO p1_0000a
                               DO p2_0000a
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del
                SELECT prOductos
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos que Anular..." TO mmSj
                ELSE
                     SEEK UPPER(ALLTRIM(vcOd))+"*"
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO CASE
                               CASE f2111est="1"
                                    DO prE_docum WITH  ;
                                       "¿Desea anular este Código?"
                               CASE f2111est="9"
                                    DO prE_docum WITH  ;
                                       "¿Desea activar este Código?"
                          ENDCASE
                          IF moPc$"Ss"
                               DO q1_0000a
                               DO q2_0000a
                               DO deL_2111c IN PAM2111C WITH "2"
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO p1_0000a
                               DO p2_0000a
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe>1 .AND. wnIv$"13"
                SAVE SCREEN TO vpAn_11
                DO foT_2111a
                RESTORE SCREEN FROM vpAn_11
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. viTe>1 .AND. wnIv$"24"
                STORE "Esta Función no es válida en este Nivel..." TO mmSj
           CASE mkEy=k_F3 .AND. viTe>1 .AND. vvTa=2
                STORE "Esta Función no es válida en productos que no son de Venta..."  ;
                      TO mmSj
           CASE mkEy=k_F3 .AND. viTe>1
                IF vsW1=1
                     STORE 2 TO vsW1
                ELSE
                     STORE 1 TO vsW1
                ENDIF
                DO li1_2111a
                READ TIMEOUT 0.01
           CASE mkEy=k_F4 .AND. miMp=1 .AND. viMp=1 .AND. viTe<>1
                SAVE SCREEN TO vpAn_11
                DO paM2111b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 0 TO viT1
                RESTORE SCREEN FROM vpAn_11
                LOOP
           CASE mkEy=k_F5
                SELECT prOductos
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE UPPER(ALLTRIM(f2111cod))+"*"=UPPER(ALLTRIM(vcOd))+"*"
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          STORE 1 TO viT1
                          DO muE_2111a
                          DO diS_2111a
                ENDCASE
           CASE mkEy=k_F6
                SELECT prOductos
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE UPPER(ALLTRIM(f2111cod))+"*"=UPPER(ALLTRIM(vcOd))+"*"
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          STORE 1 TO viT1
                          DO muE_2111a
                          DO diS_2111a
                ENDCASE
           CASE mkEy=k_F7
                SELECT prOductos
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vcOd))
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF UPPER(ALLTRIM(f2111cod))+"*"=UPPER(ALLTRIM(vcOd))+"*"
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE UPPER(ALLTRIM(f2111cod))+"*"=UPPER(ALLTRIM(vcOd))+"*"
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          STORE 1 TO viT1
                          DO muE_2111a
                          DO diS_2111a
                ENDCASE
           CASE mkEy=k_F8
                SELECT prOductos
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vcOd))
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND.  ;
                    UPPER(ALLTRIM(f2111cod))+"*">=UPPER(ALLTRIM(vcOd))+"*"
                     SKIP -1
                     IF BOF() .OR. EOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE UPPER(ALLTRIM(f2111cod))+"*"=UPPER(ALLTRIM(vcOd))+"*"
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          STORE 1 TO viT1
                          DO muE_2111a
                          DO diS_2111a
                ENDCASE
           CASE mkEy=k_F9 .AND. viTe=13 .AND. wnIv="1"
                DO CASE
                     CASE vpE1=3
                          STORE 1 TO vpE1
                     OTHERWISE
                          STORE vpE1+1 TO vpE1
                ENDCASE
                DO meD_2111a
                STORE 0 TO viT1
           CASE mkEy=k_F9 .AND. ((viTe=15 .AND. wnIv="1") .OR. (viTe=12  ;
                .AND. wnIv="2") .OR. (viTe=11 .AND. wnIv="3") .OR. (viTe= ;
                7 .AND. wnIv="4"))
                IF vmI1=1
                     STORE 2 TO vmI1
                ELSE
                     STORE 1 TO vmI1
                ENDIF
                DO miN_2111a
                STORE 0 TO viT1
           CASE mkEy=k_F9 .AND. wnIv$"13" .AND. viTe>=4 .AND. viTe<=7
                DO CASE
                     CASE vlIs=mlSt
                          STORE 1 TO vlIs
                     OTHERWISE
                          STORE vlIs+1 TO vlIs
                ENDCASE
                DO prE_2111a
                DO liS_2111a
                STORE 0 TO viT1
           CASE mkEy=k_Alt_z .AND. viTe>1
                SAVE SCREEN TO vpAn_11
                DO coLbln
                STORE mfI0+05.3 TO pfIl
                STORE mcO0+69.9 TO pcOl
                STORE "        Codigo CUBSO:" TO pfR2
                STORE " " TO pfR1, pfR3, pfR4
                DO bmP_dial WITH "5", pfIl, pcOl, pfR1, pfR2, pfR3, pfR4
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @pFIL+3.5,pCOL+09 Get vCUB Font "&mLetAri",9 Style "NQ" Size 1,24 Pict "9999999999999999" Color ,&mColBlN
                SET CURSOR ON
                READ
                SET CURSOR OFF
                RESTORE SCREEN FROM vpAn_11
           CASE (mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right  ;
                .OR. mkEy=k_Tab) .AND. viTe>1 .AND. LEN(ALLTRIM(vnTi))=0
                STORE "No se ha escogido Tipo de Productos..." TO mmSj
                STORE 2 TO viTe
           CASE (mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right  ;
                .OR. mkEy=k_Tab) .AND. viTe>1 .AND. LEN(ALLTRIM(vgRu))=0
                STORE "No se ha escogido Grupo de Productos..." TO mmSj
                STORE 2 TO viTe
           CASE mkEy=k_Enter
                DO veR_2111a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE (viTe=19 .AND. wnIv="1") .OR. (viTe=15  ;
                               .AND. wnIv$"23") .OR. (viTe=10 .AND. wnIv="4")
                               DO q1_0000a
                               DO q2_0000a
                               DO grA_2111c IN PAM2111C
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO p1_0000a
                               DO p2_0000a
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_2111a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE (viTe=19 .AND. wnIv="1") .OR. (viTe=15  ;
                               .AND. wnIv$"23") .OR. (viTe=10 .AND. wnIv="4")
                               DO q1_0000a
                               DO q2_0000a
                               DO grA_2111c IN PAM2111C
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO p1_0000a
                               DO p2_0000a
                               STORE 99 TO mkEy
                          CASE wnIv="1"
                               DO CASE
                                    CASE viTe=4 .OR. viTe=5 .OR. viTe=12
                                         STORE viTe+2 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe>=6 .AND. viTe<=11
                                         STORE viTe+3 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=14
                                         STORE 19 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<=ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                         IF mkEy<>99
                                              DO q1_0000a
                                              DO q2_0000a
                                              DO grA_2111c IN PAM2111C
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              DO p1_0000a
                                              DO p2_0000a
                                              STORE 99 TO mkEy
                                         ENDIF
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE wnIv="2"
                               DO CASE
                                    CASE viTe=5
                                         STORE viTe+2 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=6 .OR. viTe=7 .OR. viTe=8
                                         STORE viTe+3 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=11
                                         STORE 15 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<=ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                         IF mkEy<>99
                                              DO q1_0000a
                                              DO q2_0000a
                                              DO grA_2111c IN PAM2111C
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              DO p1_0000a
                                              DO p2_0000a
                                              STORE 99 TO mkEy
                                         ENDIF
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE wnIv="3"
                               DO CASE
                                    CASE viTe=4 .OR. viTe=5 .OR. viTe=6
                                         STORE viTe+2 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=10
                                         STORE 15 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<=ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                         IF mkEy<>99
                                              DO q1_0000a
                                              DO q2_0000a
                                              DO grA_2111c IN PAM2111C
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              DO p1_0000a
                                              DO p2_0000a
                                              STORE 99 TO mkEy
                                         ENDIF
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE wnIv="4"
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE wnIv="1"
                          DO CASE
                               CASE viTe=15
                                    STORE 3 TO viTe
                               CASE viTe>=5 .AND. viTe<=8
                                    STORE viTe-2 TO viTe
                               CASE viTe>=9 .AND. viTe<=14
                                    STORE viTe-3 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                     CASE wnIv="2"
                          DO CASE
                               CASE viTe=7 .OR. viTe=11
                                    STORE viTe-2 TO viTe
                               CASE viTe=8 .OR. viTe=9 .OR. viTe=10
                                    STORE viTe-3 TO viTe
                               CASE viTe=12
                                    STORE 3 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                     CASE wnIv="3"
                          DO CASE
                               CASE viTe>=5 .AND. viTe<=8
                                    STORE viTe-2 TO viTe
                               CASE viTe=11
                                    STORE 3 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                     CASE wnIv="4"
                          DO CASE
                               CASE viTe=7
                                    STORE 3 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                ENDCASE
           CASE mkEy=k_Ctrl_right
                DO veR_2111a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE wnIv="1"
                               DO CASE
                                    CASE viTe=5
                                         STORE 17 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=7
                                         STORE 18 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=10 .OR. viTe=13 .OR. viTe=14
                                         STORE 19 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE wnIv="2"
                               DO CASE
                                    CASE viTe=4 .OR. viTe=5
                                         STORE viTe+10 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=8 .OR. viTe=10 .OR. viTe=11
                                         STORE 15 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE wnIv="3"
                               DO CASE
                                    CASE viTe=5
                                         STORE 13 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=7
                                         STORE 14 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=8 .OR. viTe=9 .OR. viTe=10
                                         STORE 15 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE wnIv="4"
                               DO CASE
                                    CASE viTe=4 .OR. viTe=5
                                         STORE viTe+5 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=6
                                         STORE 10 TO ciTx
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTx .AND. mkEy<>99
                                              DO veR_2111a
                                              IF mkEy=k_Esc
                                                   EXIT
                                              ENDIF
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE wnIv="1"
                          DO CASE
                               CASE viTe=17
                                    STORE 05 TO viTe
                               CASE viTe=18
                                    STORE 07 TO viTe
                               CASE viTe=19
                                    STORE 10 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                     CASE wnIv="2"
                          DO CASE
                               CASE viTe=14
                                    STORE 04 TO viTe
                               CASE viTe=15
                                    STORE 05 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                     CASE wnIv="3"
                          DO CASE
                               CASE viTe=13
                                    STORE 05 TO viTe
                               CASE viTe=14
                                    STORE 07 TO viTe
                               CASE viTe=15
                                    STORE 08 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                     CASE wnIv="4"
                          DO CASE
                               CASE viTe=09
                                    STORE 04 TO viTe
                               CASE viTe=10
                                    STORE 05 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO CASE
                     CASE wnIv="1"
                          STORE 19 TO ciTx
                     CASE wnIv$"23"
                          STORE 15 TO ciTx
                     CASE wnIv="4"
                          STORE 10 TO ciTx
                ENDCASE
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2111a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                DO CASE
                     CASE wnIv="1"
                          STORE 19 TO ciTx
                     CASE wnIv$"23"
                          STORE 15 TO ciTx
                     CASE wnIv="4"
                          STORE 10 TO ciTx
                ENDCASE
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2111a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99 .AND. mkEy<>k_Esc
                     DO q1_0000a
                     DO grA_2111c IN PAM2111C
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO p1_0000a
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SELECT prOductos
           SEEK UPPER(ALLTRIM(vcOd))+"*"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe=1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA01", mmF1, mmC1
                CASE viTe<>1 .AND. viTe<>viT1
                     DO prEsiona WITH "4", "BOT_MA02", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF wnIv$"24"
                          DO prEsiona WITH "3", "BORRAR", mmF1+0.1, mmC1+2
                     ENDIF
           ENDCASE
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF viT1<>0
                DO boT_2111a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           ENDIF
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(130) Font "&mLetRom",9 Style "BQ" Size 1,130
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+14 Say "ES DE "+AllTrim(Str(mTMC,2))+" CARACTERES ALFANUMÉRICOS, NO PUEDE SER CEROS, NI ESTAR VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+18 Say "CAMPO DE 120 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."                              Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+06 Say "CAMPO DE 120 CARACTERES ALFANUMÉRICOS; SI SE DEJA VACÍO, SE ASUME LA 1ra.DESCRIPCIÓN..."         Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. (viTe=8 .OR. viTe=9)) .OR. (wnIv="2"  ;
                     .AND. (viTe=6 .OR. viTe=7))
                     @mMF2,mMC2+07 Say "ES DE 2 ENTEROS Y 3 DECIMALES, ES UN DATO PARA HACER CÁLCULOS, SI ES CERO NO SE USA..."          Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. (viTe=11 .OR. viTe=12)) .OR. (wnIv= ;
                     "2" .AND. (viTe=9 .OR. viTe=10))
                     @mMF2,mMC2+07 Say "ES DE 3 ENTEROS Y 3 DECIMALES, ES UN DATO PARA HACER CÁLCULOS, SI ES CERO NO SE USA..."          Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. (viTe=15 .OR. viTe=16)) .OR. (wnIv= ;
                     "2" .AND. (viTe=12 .OR. viTe=13)) .OR. (wnIv="3"  ;
                     .AND. (viTe=11 .OR. viTe=12)) .OR. (wnIv="4" .AND.  ;
                     (viTe=7 .OR. viTe=8))
                     @mMF2,mMC2+07 Say "ES DE 6 ENTEROS Y 2 DECIMALES, ES UN DATO PARA HACER CÁLCULOS, NO ES EL STOCK REAL..."           Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. viTe=13 .AND. vpE1=2) .OR. (wnIv$ ;
                     "24" .AND. viTe=5) .OR. (wnIv="3" .AND. viTe=9)
                     @mMF2,mMC2+23 Say "ES DE 6 ENTEROS Y 3 DECIMALES, EXPRESADO EN KILOS..."                                            Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. viTe=19) .OR. (wnIv="3" .AND. viTe=15)
                     @mMF2,mMC2+13 Say "ES DE 6 ENTEROS Y 3 DECIMALES, ESTE PRECIO ES SIN IMPUESTOS, ES REFERENCIAL..."                  Font "&mLetRom",9 Style "BQ"
                CASE wnIv$"13" .AND. (viTe=4 .OR. viTe=5 .OR. viTe=6 .OR.  ;
                     viTe=7)
                     @mMF2,mMC2+21 Say "ES DE 6 ENTEROS Y 4 DECIMALES, ESTE PRECIO ES CON IMPUESTOS..."                                  Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. viTe=10) .OR. (wnIv="2" .AND. viTe=8)
                     @mMF2,mMC2+09 Say "ES DE 3 DÍGITOS, ES UN DATO PARA HACER CÁLCULOS, SI ES CERO NO SE USA..."                        Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. viTe=14) .OR. (wnIv="2" .AND. viTe= ;
                     11) .OR. (wnIv="3" .AND. viTe=10) .OR. (wnIv="4"  ;
                     .AND. viTe=6)
                     @mMF2,mMC2+15 Say "ESCOGER PRODUCTO BASE, NO PUEDE SER NUEVO TIENE QUE ESTAR REGISTRADO..."                         Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. viTe=13 .AND. vpE1=1) .OR. (wnIv$ ;
                     "24" .AND. viTe=4) .OR. (wnIv="3" .AND. viTe=8)
                     @mMF2,mMC2+10 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR EN BLANCO SI NO SE USA..."                     Font "&mLetRom",9 Style "BQ"
                CASE (wnIv="1" .AND. (viTe=17 .OR. viTe=18)) .OR. (wnIv= ;
                     "2" .AND. (viTe=14 .OR. viTe=15)) .OR. (wnIv="3"  ;
                     .AND. (viTe=13 .OR. viTe=14)) .OR. (wnIv="4" .AND.  ;
                     (viTe=9 .OR. viTe=10))
                     @mMF2,mMC2+10 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR EN BLANCO SI NO SE USA..."                     Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                DO gpR_2111a
           CASE viTe=2
                @mFI0+3.0,mCO0+28 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,89,120
           CASE viTe=3
                @mFI0+4.4,mCO0+28 Edit vDCR Font "&mLetAri",9 Style "NQ" Size 1,89,120
           CASE wnIv$"13" .AND. vvTa=1 .AND. viTe>=4 .AND. viTe<=7
                DO mlI_2111a
                DO CASE
                     CASE viTe=4
                          @mFI0+15.3,mCO0+22.5 Get cVV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999999.9999" Color ,&mColBlN
                     CASE viTe=5 .AND. vsW1=1
                          @mFI0+15.3,mCO0+45.5 Get cMV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999999.9999" Color ,&mColBlN
                     CASE viTe=5 .AND. vsW1=2
                          SAVE SCREEN TO vpAn_11
                          STORE mfI0+15.3 TO pfIl
                          STORE mcO0+39.9 TO pcOl
                          STORE "Porcentaje de Utilidad" TO pfR1
                          STORE "Este en el Mant. es referencial" TO pfR2
                          STORE "funciona para el cálculo en el " TO pfR3
                          STORE "Mant. de Listas de Precios.    " TO pfR4
                          DO bmP_dial WITH "1", pfIl, pcOl, pfR1, pfR2,  ;
                             pfR3, pfR4
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          @pFIL,pCOL-1 Get cUTI Font "&mLetAri",9 Style "NQ" Size 1,12.3 Pict "999.9999" Color ,&mColBlN
                          SET CURSOR ON
                          READ
                          SET CURSOR OFF
                          DO coLbln
                          RESTORE SCREEN FROM vpAn_11
                     CASE viTe=6
                          @mFI0+16.8,mCO0+22.5 Get cVV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999999.9999" Color ,&mColBlN
                     CASE viTe=7
                          @mFI0+16.8,mCO0+45.5 Get cMV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999999.9999" Color ,&mColBlN
                ENDCASE
                IF viTe<>5 .OR. vsW1<>2
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                ENDIF
                DO ml1_2111a
                DO liS_2111a
           CASE wnIv$"13" .AND. vvTa=2 .AND. viTe>=4 .AND. viTe<=7
                DO mlI_2111a
                DO coLsc3
                DO CASE
                     CASE viTe=4
                          @mFI0+15.3,mCO0+22.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+15.3,mCO0+22.5 Say cVV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                          @mFI0+15.3,mCO0+39.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     CASE viTe=5 .AND. vsW1=1
                          @mFI0+15.3,mCO0+45.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+15.3,mCO0+45.5 Say cMV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                          @mFI0+15.3,mCO0+62.3 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     CASE viTe=5 .AND. vsW1=2
                          @mFI0+15.3,mCO0+49.8 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+15.3,mCO0+49.9 Say cUTI Font "&mLetAri",9 Style "NQ" Size 1,12.3 Pict "999.9999"
                          @mFI0+15.3,mCO0+62.3 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     CASE viTe=6
                          @mFI0+16.8,mCO0+22.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+16.8,mCO0+22.5 Say cVV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                          @mFI0+16.8,mCO0+39.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     CASE viTe=7
                          @mFI0+16.8,mCO0+45.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+16.8,mCO0+45.5 Say cMV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                          @mFI0+16.8,mCO0+62.3 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                ENDCASE
                mkEy = INKEY(0, "HM")
                DO coL_beige
                DO CASE
                     CASE viTe=4
                          @mFI0+15.3,mCO0+22.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+15.3,mCO0+22.5 Say cVV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                          @mFI0+15.3,mCO0+39.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     CASE viTe=5 .AND. vsW1=1
                          @mFI0+15.3,mCO0+45.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+15.3,mCO0+45.5 Say cMV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                          @mFI0+15.3,mCO0+62.3 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     CASE viTe=5 .AND. vsW1=2
                          @mFI0+15.3,mCO0+49.8 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+15.3,mCO0+49.9 Say cUTI Font "&mLetAri",9 Style "NQ" Size 1,12.3 Pict "999.9999"
                          @mFI0+15.3,mCO0+62.3 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     CASE viTe=6
                          @mFI0+16.8,mCO0+22.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+16.8,mCO0+22.5 Say cVV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                          @mFI0+16.8,mCO0+39.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                     CASE viTe=7
                          @mFI0+16.8,mCO0+45.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                          @mFI0+16.8,mCO0+45.5 Say cMV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                          @mFI0+16.8,mCO0+62.3 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                ENDCASE
           CASE LEN(ALLTRIM(vbAs))=0 .AND. ((wnIv="1" .AND. viTe=14) .OR.  ;
                (wnIv="2" .AND. viTe=11) .OR. (wnIv="3" .AND. viTe=10)  ;
                .OR. (wnIv="4" .AND. viTe=06))
                @mFI0+23.8,mCO0+18.5 Edit vDBA Font "&mLetAri",9 Style "NQ" Size 1,73.1,70
           CASE ((wnIv="1" .AND. viTe=14) .OR. (wnIv="2" .AND. viTe=11)  ;
                .OR. (wnIv="3" .AND. viTe=10) .OR. (wnIv="4" .AND. viTe=06))
                DO coLsc3
                @mFI0+23.8,mCO0+18.5 Say AllTrim(vBAS)+"-"+vDBA Font "&mLetAri",9 Style "NQ" Size 1,73.1 Pict "@S75"
                mkEy = INKEY(0, "HM")
                DO nbA_2111a
           CASE vcSt=1 .AND. vmI1=1 .AND. ((wnIv="1" .AND. viTe=15) .OR.  ;
                (wnIv="2" .AND. viTe=12) .OR. (wnIv="3" .AND. viTe=11)  ;
                .OR. (wnIv="4" .AND. viTe=07))
                @mFI0+10.8,vCL2+86.5 Get vMIN Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999999.99" Color ,&mColBlN
           CASE vcSt=1 .AND. ((wnIv="1" .AND. viTe=15) .OR. (wnIv="2"  ;
                .AND. viTe=12) .OR. (wnIv="3" .AND. viTe=11) .OR. (wnIv= ;
                "4" .AND. viTe=07))
                SAVE SCREEN TO vpAn_11
                STORE mfI0+10.8 TO pfIl
                STORE vcL2+65.5 TO pcOl
                STORE "Tiempo de Rotación" TO pfR1
                STORE "Es el tiempo que este producto" TO pfR2
                STORE "necesita para acabar el stock" TO pfR3
                STORE "mínimo." TO pfR4
                DO bmP_dial WITH "1", pfIl, pcOl, pfR1, pfR2, pfR3, pfR4
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @mFI0+10.8,vCL2+86.5 Get vTIE Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999999" Color ,&mColBlN
           CASE vmI1=1 .AND. ((wnIv="1" .AND. viTe=15) .OR. (wnIv="2"  ;
                .AND. viTe=12) .OR. (wnIv="3" .AND. viTe=11) .OR. (wnIv= ;
                "4" .AND. viTe=07))
                DO coLsc3
                @mFI0+10.8,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                @mFI0+10.8,vCL2+086.5 Say vMIN Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                @mFI0+10.8,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                mkEy = INKEY(0, "HM")
                DO coL_beige
                @mFI0+10.8,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                @mFI0+10.8,vCL2+086.5 Say vMIN Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                @mFI0+10.8,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
           CASE (wnIv="1" .AND. viTe=15) .OR. (wnIv="2" .AND. viTe=12)  ;
                .OR. (wnIv="3" .AND. viTe=11) .OR. (wnIv="4" .AND. viTe=07)
                DO coLsc3
                @mFI0+10.8,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                @mFI0+10.8,vCL2+086.5 Say vTIE Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999"
                @mFI0+10.8,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                mkEy = INKEY(0, "HM")
                DO coL_beige
                @mFI0+10.8,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                @mFI0+10.8,vCL2+086.5 Say vTIE Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999"
                @mFI0+10.8,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
           CASE vcSt=1 .AND. ((wnIv="1" .AND. viTe=16) .OR. (wnIv="2"  ;
                .AND. viTe=13) .OR. (wnIv="3" .AND. viTe=12) .OR. (wnIv= ;
                "4" .AND. viTe=08))
                @mFI0+12.3,vCL2+86.5 Get vMAX Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999999.99" Color ,&mColBlN
           CASE (wnIv="1" .AND. viTe=16) .OR. (wnIv="2" .AND. viTe=13)  ;
                .OR. (wnIv="3" .AND. viTe=12) .OR. (wnIv="4" .AND. viTe=08)
                DO coLsc3
                @mFI0+12.3,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                @mFI0+12.3,vCL2+086.5 Say vMAX Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                @mFI0+12.3,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                mkEy = INKEY(0, "HM")
                DO coL_beige
                @mFI0+12.3,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                @mFI0+12.3,vCL2+086.5 Say vMAX Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
                @mFI0+12.3,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
           CASE miMp=1 .AND. viMp=1 .AND. ((wnIv="1" .AND. viTe=17) .OR.  ;
                (wnIv="2" .AND. viTe=14) .OR. (wnIv="3" .AND. viTe=13)  ;
                .OR. (wnIv="4" .AND. viTe=09))
                @mFI0+16,vCL2+86.5 Edit vPRO Font "&mLetAri",9 Style "NQ" Size 1,20,30
           CASE miMp=1 .AND. ((wnIv="1" .AND. viTe=17) .OR. (wnIv="2"  ;
                .AND. viTe=14) .OR. (wnIv="3" .AND. viTe=13) .OR. (wnIv= ;
                "4" .AND. viTe=09))
                DO coLsc3
                @mFI0+16,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                @mFI0+16,vCL2+086.5 Say vPRO Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22"
                @mFI0+16,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                mkEy = INKEY(0, "HM")
                DO im1_2111a
           CASE miMp=1 .AND. viMp=1 .AND. ((wnIv="1" .AND. viTe=18) .OR.  ;
                (wnIv="2" .AND. viTe=15) .OR. (wnIv="3" .AND. viTe=14)  ;
                .OR. (wnIv="4" .AND. viTe=10))
                @mFI0+17.5,vCL2+86.5 Edit vMAR Font "&mLetAri",9 Style "NQ" Size 1,20,30
           CASE miMp=1 .AND. ((wnIv="1" .AND. viTe=18) .OR. (wnIv="2"  ;
                .AND. viTe=15) .OR. (wnIv="3" .AND. viTe=14) .OR. (wnIv= ;
                "4" .AND. viTe=10))
                DO coLsc3
                @mFI0+17.5,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
                @mFI0+17.5,vCL2+086.5 Say vMAR Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22"
                @mFI0+17.5,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
                mkEy = INKEY(0, "HM")
                DO im1_2111a
           CASE (wnIv="1" .AND. viTe=8) .OR. (wnIv="2" .AND. viTe=6)
                @mFI0+20.0,mCO0+08.5 Get vLA1 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
           CASE (wnIv="1" .AND. viTe=9) .OR. (wnIv="2" .AND. viTe=7)
                @mFI0+20.0,mCO0+30.0 Get vAN1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"  Color ,&mColBlN
           CASE (wnIv="1" .AND. viTe=10) .OR. (wnIv="2" .AND. viTe=8)
                @mFI0+20.0,mCO0+63.2 Get vESP Font "&mLetAri",9 Style "NQ" Size 1,8.9 Pict "999.99"  Color ,&mColBlN
           CASE (wnIv="1" .AND. viTe=11) .OR. (wnIv="2" .AND. viTe=9)
                @mFI0+21.5,mCO0+08.5 Get vLA2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
           CASE (wnIv="1" .AND. viTe=12) .OR. (wnIv="2" .AND. viTe=10)
                @mFI0+21.5,mCO0+30.0 Get vAN2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
           CASE (wnIv="1" .AND. viTe=19) .OR. (wnIv="3" .AND. viTe=15)
                @mFI0+20.8,vCL2+102.8 Get vVCP Font "&mLetAri",9 Style "NQ" Size 1,15.3 Pict "999999.999" Color ,&mColBlN
           CASE (wnIv="2" .AND. viTe=4) .OR. (wnIv="4" .AND. viTe=4)
                @mFI0+15.3,mCO0+22.5 Edit vTAM Font "&mLetAri",9 Style "NQ" Size 1,30,40
           CASE (wnIv="2" .AND. viTe=5) .OR. (wnIv="4" .AND. viTe=5)
                @mFI0+16.8,mCO0+22.5 Get  vPES Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999999.999"   Color ,&mColBlN
           CASE wnIv="3" .AND. viTe=8
                @mFI0+18.3,mCO0+22.5 Edit vTAM Font "&mLetAri",9 Style "NQ" Size 1,30,40
           CASE wnIv="3" .AND. viTe=9
                @mFI0+19.8,mCO0+22.5 Get  vPES Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "9999999.999"  Color ,&mColBlN
           CASE wnIv="1" .AND. viTe=13 .AND. vpE1=1
                @mFI0+21.5,mCO0+63.2 Edit vTAM Font "&mLetAri",9 Style "NQ" Size 1,14,40
           CASE wnIv="1" .AND. viTe=13 .AND. vpE1>1
                SAVE SCREEN TO vpAn_11
                STORE mcO0+56.5 TO pcOl
                STORE mfI0+20.8 TO pfIl
                DO CASE
                     CASE vpE1=2
                          STORE "Peso del Producto" TO pfR1
                          STORE "El peso es un campo de 6 dígi-" TO pfR2
                          STORE "tos, esta expresado en Kilos." TO pfR3
                          STORE " " TO pfR4
                     CASE vpE1=3
                          STORE "% Detracción" TO pfR1
                          STORE "Se pone en caso de que el Tipo" TO pfR2
                          STORE "de Producto este afecto a De-" TO pfR3
                          STORE "tracción." TO pfR4
                ENDCASE
                DO bmP_dial WITH "1", pfIl, pcOl, pfR1, pfR2, pfR3, pfR4
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO CASE
                     CASE vpE1=2
                          @mFI0+21.5,mCO0+63.2 Get vPES Font "&mLetAri",9 Style "NQ" Size 1,13.6 Pict "999999.999" Color ,&mColBlN
                     CASE vpE1=3
                          @mFI0+21.5,mCO0+63.2 Get vPDT Font "&mLetAri",9 Style "NQ" Size 1,13.6 Pict "999.99"     Color ,&mColBlN
                ENDCASE
      ENDCASE
      DO CASE
           CASE wnIv$"13" .AND. (viTe>=4 .AND. viTe<=7)
           CASE LEN(ALLTRIM(vbAs))<>0 .AND. ((wnIv="1" .AND. viTe=14)  ;
                .OR. (wnIv="2" .AND. viTe=11) .OR. (wnIv="3" .AND. viTe= ;
                10) .OR. (wnIv="4" .AND. viTe=06))
           CASE vcSt=2 .AND. ((wnIv="1" .AND. viTe>=15 .AND. viTe<=16)  ;
                .OR. (wnIv="2" .AND. viTe>=12 .AND. viTe<=13) .OR. (wnIv= ;
                "3" .AND. viTe>=11 .AND. viTe<=12) .OR. (wnIv="4" .AND.  ;
                viTe>=07 .AND. viTe<=08))
           CASE viMp=2 .AND. ((wnIv="1" .AND. viTe>=17 .AND. viTe<=18)  ;
                .OR. (wnIv="2" .AND. viTe>=14 .AND. viTe<=15) .OR. (wnIv= ;
                "3" .AND. viTe>=13 .AND. viTe<=14) .OR. (wnIv="4" .AND.  ;
                viTe>=09 .AND. viTe<=10))
           OTHERWISE
                SET CURSOR ON
                READ
                SET CURSOR OFF
                DO coLbln
                DO CASE
                     CASE vcSt=1 .AND. vmI1<>1 .AND. ((wnIv="1" .AND.  ;
                          viTe=15) .OR. (wnIv="2" .AND. viTe=12) .OR.  ;
                          (wnIv="3" .AND. viTe=11) .OR. (wnIv="4" .AND.  ;
                          viTe=07))
                          RESTORE SCREEN FROM vpAn_11
                          @mFI0+10.8,vCL2+86.5 Say vTIE Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999"
                     CASE wnIv="1" .AND. viTe=13 .AND. vpE1>1
                          RESTORE SCREEN FROM vpAn_11
                          DO CASE
                               CASE vpE1=2
                                    @mFI0+21.5,mCO0+63.2 Say vPES Font "&mLetAri",9 Style "NQ" Size 1,13.6 Pict "999,999.999"
                               CASE vpE1=3
                                    @mFI0+21.5,mCO0+63.2 Say vPDT Font "&mLetAri",9 Style "NQ" Size 1,13.6 Pict "999.99"
                          ENDCASE
                ENDCASE
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_2111a
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. ALLTRIM(vcOd)=REPLICATE("0", LEN(ALLTRIM(vcOd)))
           STORE "Código no puede ser ceros..." TO mmSj
      CASE viTe=1 .AND. AT(" ", ALLTRIM(vcOd))<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. SUBSTR(vcOd, 1, 1)=" "
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1
           SELECT prOductos
           SEEK UPPER(ALLTRIM(vcOd))+"*"
           IF EOF()
                DO coL_fondo
                @mFI0+8,vCL2+105 Say "NUEVO" Font "&LetRom",11 Style "BQ" Size 1,8
                IF LEN(ALLTRIM(cdEs))=0
                     STORE SPACE(120) TO vdEs, vdCr, vdIn
                ENDIF
                STORE SPACE(18) TO vcUb
                STORE SPACE(40) TO vfOt, vtAm
                STORE SPACE(02) TO vbAs, cdEs, vdBa, vdIm, vcUv, vcUc, vcUx
                STORE SPACE(02) TO vgRu, vnUv, vnUc, vnUx, vpRo, vmAr, vnGr
                STORE 2 TO vmD1, vmD2, vsRr, viMp
                STORE 1 TO vtPo, vmD3, vcSt, vvTa, vlIs, vtIe, vmI1, vpE1, vmNd
                STORE 0 TO vvV1, vvV2, vvV3, vvV4, vvV5, vvV6, vvV7, vvV8,  ;
                      vvV9, vvV0, vvVa, vvVb, vvVc, vvVd, vvVe, vvVf, vvVg
                STORE 0 TO vvVh, vvVi, vvVj, vmV1, vmV2, vmV3, vmV4, vmV5,  ;
                      vmV6, vmV7, vmV8, vmV9, vmV0, vmVa, vmVb, vmVc, vmVd
                STORE 0 TO vmVe, vmVf, vmVg, vmVh, vmVi, vmVj, vlA1, vlA2,  ;
                      vlA3, vaN1, vaN2, vaN3, veSp, vmIn, vmAx, vpXc, vcX1
                STORE 0 TO vcX2, vaDv, vvCp, vvCs, vdTt, vdT2, vdT3, vdT4,  ;
                      vdT5, vdT6, vdT7, vdT8, vdT9, vdT0, vcMx, vpEs, vpDt
                STORE "1" TO veSt
           ELSE
                DO muE_2111a
           ENDIF
           DO diS_2111a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vdCr))=0
           STORE vdEs TO vdCr
      CASE viTe=3 .AND. LEN(ALLTRIM(vdCr))=0
           STORE "Descripción de Impresión no puede estar vacía..." TO mmSj
      CASE wnIv$"13" .AND. viTe=4 .AND. vvTa=1
           DO mlI_2111a
           IF cvV1<0
                STORE "Precio de Lista "+ALLTRIM(STR(vlIs, 2, 0))+ ;
                      " en S/. no puede ser menor a 0..." TO mmSj
           ENDIF
      CASE wnIv$"13" .AND. viTe=5 .AND. vvTa=1 .AND. vsW1=1
           DO mlI_2111a
           IF cmV1<0
                STORE "Precio mínimo de Lista de Precios "+ ;
                      ALLTRIM(STR(vlIs, 2, 0))+ ;
                      " en S/. no puede ser menor a 0..." TO mmSj
           ENDIF
      CASE wnIv$"13" .AND. viTe=6 .AND. vvTa=1
           DO mlI_2111a
           IF cvV2<0
                STORE "Precio de Lista "+ALLTRIM(STR(vlIs, 2, 0))+ ;
                      " en US$ no puede ser menor a 0..." TO mmSj
           ENDIF
      CASE wnIv$"13" .AND. viTe=7 .AND. vvTa=1
           DO mlI_2111a
           IF cmV2<0
                STORE "Precio mínimo de Lista de Precios "+ ;
                      ALLTRIM(STR(vlIs, 2, 0))+ ;
                      " en US$ no puede ser menor a 0..." TO mmSj
           ENDIF
      CASE ((wnIv="1" .AND. viTe=8) .OR. (wnIv="2" .AND. viTe=6)) .AND. vlA1<0
           STORE "Largo en metros no puede ser menor a 0..." TO mmSj
      CASE ((wnIv="1" .AND. viTe=9) .OR. (wnIv="2" .AND. viTe=7)) .AND. vaN1<0
           STORE "Ancho en metros no puede ser menor a 0..." TO mmSj
      CASE ((wnIv="1" .AND. viTe=10) .OR. (wnIv="2" .AND. viTe=08)) .AND.  ;
           veSp<0
           STORE "Espesor en milimetros no puede ser menor a 0..." TO mmSj
      CASE ((wnIv="1" .AND. viTe=11) .OR. (wnIv="2" .AND. viTe=09)) .AND.  ;
           vlA2<0
           STORE "Largo en pulgadas no puede ser menor a 0..." TO mmSj
      CASE ((wnIv="1" .AND. viTe=12) .OR. (wnIv="2" .AND. viTe=10)) .AND.  ;
           vaN2<0
           STORE "Ancho en pulgadas no puede ser menor a 0..." TO mmSj
      CASE vcSt=1 .AND. vmI1=1 .AND. vmIn<0 .AND. ((wnIv="1" .AND. viTe= ;
           15) .OR. (wnIv="2" .AND. viTe=12) .OR. (wnIv="3" .AND. viTe= ;
           11) .OR. (wnIv="4" .AND. viTe=07))
           STORE "Stock Mínimo no puede ser menor a 0..." TO mmSj
      CASE vcSt=1 .AND. vmAx<0 .AND. ((wnIv="1" .AND. viTe=16) .OR. (wnIv= ;
           "2" .AND. viTe=13) .OR. (wnIv="3" .AND. viTe=12) .OR. (wnIv= ;
           "4" .AND. viTe=08))
           STORE "Stock Máximo no puede ser menor a 0..." TO mmSj
      CASE vcSt=1 .AND. vmIn>vmAx .AND. ((wnIv="1" .AND. viTe=16) .OR.  ;
           (wnIv="2" .AND. viTe=13) .OR. (wnIv="3" .AND. viTe=12) .OR.  ;
           (wnIv="4" .AND. viTe=08))
           STORE "Stock Máximo no puede ser menor a Stock Mínimo..." TO mmSj
      CASE vvCp<0 .AND. ((wnIv="1" .AND. viTe=19) .OR. (wnIv="3" .AND.  ;
           viTe=15))
           STORE "Precio de Compra en US$ no puede ser menor a 0..." TO mmSj
      CASE wnIv="1" .AND. viTe=13 .AND. vpE1=3 .AND. vpDt<>0 .AND. vdEt=2
           STORE "Tipo de Producto no puede tener porcentaje de Detracción..."  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Pro_2111a
 DO coLbln
 STORE mfI0-1.1 TO cfI0
 DO CASE
      CASE mtMc=1
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,02.1 Pict "!"
      CASE mtMc=2
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,04.1 Pict "!!"
      CASE mtMc=3
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,06.4 Pict "!!!"
      CASE mtMc=4
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,08.4 Pict "!!!!"
      CASE mtMc=5
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,10.6 Pict "!!!!!"
      CASE mtMc=6
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,12.8 Pict "!!!!!!"
      CASE mtMc=7
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,14.9 Pict "!!!!!!!"
      CASE mtMc=8
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,17.0 Pict "!!!!!!!!"
      CASE mtMc=9
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,19.2 Pict "!!!!!!!!!"
      CASE mtMc=10
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,21.3 Pict "!!!!!!!!!!"
      CASE mtMc=11
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,23.4 Pict "!!!!!!!!!!!"
      CASE mtMc=12
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,25.5 Pict "!!!!!!!!!!!!"
      CASE mtMc=13
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,27.9 Pict "!!!!!!!!!!!!!"
      CASE mtMc=14
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,30.0 Pict "!!!!!!!!!!!!!!"
      CASE mtMc=15
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!"
      CASE mtMc=16
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!"
      CASE mtMc=17
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!!"
      CASE mtMc=18
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!!!"
      CASE mtMc=19
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!!!!"
      CASE mtMc=20
           @cFI0,mCO0+14 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!!!!!"
 ENDCASE
ENDPROC
*
PROCEDURE GPr_2111a
 STORE mfI0-1.1 TO cfI0
 DO CASE
      CASE mtMc=1
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,02.1 Pict "!"                    Color ,&mColBlN
      CASE mtMc=2
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,04.1 Pict "!!"                   Color ,&mColBlN
      CASE mtMc=3
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,06.4 Pict "!!!"                  Color ,&mColBlN
      CASE mtMc=4
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,08.4 Pict "!!!!"                 Color ,&mColBlN
      CASE mtMc=5
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,10.6 Pict "!!!!!"                Color ,&mColBlN
      CASE mtMc=6
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,12.8 Pict "!!!!!!"               Color ,&mColBlN
      CASE mtMc=7
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,14.9 Pict "!!!!!!!"              Color ,&mColBlN
      CASE mtMc=8
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,17.0 Pict "!!!!!!!!"             Color ,&mColBlN
      CASE mtMc=9
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,19.2 Pict "!!!!!!!!!"            Color ,&mColBlN
      CASE mtMc=10
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,21.3 Pict "!!!!!!!!!!"           Color ,&mColBlN
      CASE mtMc=11
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,23.4 Pict "!!!!!!!!!!!"          Color ,&mColBlN
      CASE mtMc=12
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,25.5 Pict "!!!!!!!!!!!!"         Color ,&mColBlN
      CASE mtMc=13
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,27.9 Pict "!!!!!!!!!!!!!"        Color ,&mColBlN
      CASE mtMc=14
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,30.0 Pict "!!!!!!!!!!!!!!"       Color ,&mColBlN
      CASE mtMc=15
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!"      Color ,&mColBlN
      CASE mtMc=16
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!"     Color ,&mColBlN
      CASE mtMc=17
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!!"    Color ,&mColBlN
      CASE mtMc=18
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!!!"   Color ,&mColBlN
      CASE mtMc=19
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!!!!"  Color ,&mColBlN
      CASE mtMc=20
           @cFI0,mCO0+14 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,32.2 Pict "!!!!!!!!!!!!!!!!!!!!" Color ,&mColBlN
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2111a
 IF f2111est="9"
      DO coL_fonro
      @mFI0+8,vCL2+105 Say "ANULAD" Font "&LetRom",11 Style "BQ" Size 1,8
 ELSE
      DO coL_fondo
      @mFI0+8,vCL2+105 Say "EXISTE" Font "&LetRom",11 Style "BQ" Size 1,8
 ENDIF
 DO mu1_2111a
 DO meD_2111a
ENDPROC
*
PROCEDURE Mu1_2111a
 STORE f2111cod TO vcOd
 STORE f2111des TO vdEs
 STORE f2111dcr TO vdCr
 STORE f2111tam TO vtAm
 STORE f2111tpo TO vtPo
 STORE f2111tip TO vtIp
 STORE f2111vta TO vvTa
 STORE f2111md1 TO vmD1
 STORE f2111md2 TO vmD2
 STORE f2111md3 TO vmD3
 STORE f2111vv1 TO vvV1
 STORE f2111vv2 TO vvV2
 STORE f2111vv3 TO vvV3
 STORE f2111vv4 TO vvV4
 STORE f2111vv5 TO vvV5
 STORE f2111vv6 TO vvV6
 STORE f2111vv7 TO vvV7
 STORE f2111vv8 TO vvV8
 STORE f2111vv9 TO vvV9
 STORE f2111vv0 TO vvV0
 STORE f2111vva TO vvVa
 STORE f2111vvb TO vvVb
 STORE f2111vvc TO vvVc
 STORE f2111vvd TO vvVd
 STORE f2111vve TO vvVe
 STORE f2111vvf TO vvVf
 STORE f2111vvg TO vvVg
 STORE f2111vvh TO vvVh
 STORE f2111vvi TO vvVi
 STORE f2111vvj TO vvVj
 STORE f2111mv1 TO vmV1
 STORE f2111mv2 TO vmV2
 STORE f2111mv3 TO vmV3
 STORE f2111mv4 TO vmV4
 STORE f2111mv5 TO vmV5
 STORE f2111mv6 TO vmV6
 STORE f2111mv7 TO vmV7
 STORE f2111mv8 TO vmV8
 STORE f2111mv9 TO vmV9
 STORE f2111mv0 TO vmV0
 STORE f2111mva TO vmVa
 STORE f2111mvb TO vmVb
 STORE f2111mvc TO vmVc
 STORE f2111mvd TO vmVd
 STORE f2111mve TO vmVe
 STORE f2111mvf TO vmVf
 STORE f2111mvg TO vmVg
 STORE f2111mvh TO vmVh
 STORE f2111mvi TO vmVi
 STORE f2111mvj TO vmVj
 STORE f2111gru TO vgRu
 STORE f2111cuv TO vcUv
 STORE f2111nuv TO vnUv
 STORE f2111cuc TO vcUc
 STORE f2111nuc TO vnUc
 STORE f2111cux TO vcUx
 STORE f2111nux TO vnUx
 STORE f2111cst TO vcSt
 STORE f2111ser TO vsRr
 STORE f2111min TO vmIn
 STORE f2111max TO vmAx
 STORE f2111imp TO viMp
 STORE f2111pro TO vpRo
 STORE f2111mar TO vmAr
 STORE f2111mon TO vmNd
 STORE f2111vcp TO vvCp
 STORE f2111vcs TO vvCs
 STORE f2111prm TO vpRm
 STORE f2111uti TO vuTi
 STORE f2111ut2 TO vuT2
 STORE f2111ut3 TO vuT3
 STORE f2111ut4 TO vuT4
 STORE f2111ut5 TO vuT5
 STORE f2111ut6 TO vuT6
 STORE f2111ut7 TO vuT7
 STORE f2111ut8 TO vuT8
 STORE f2111ut9 TO vuT9
 STORE f2111ut0 TO vuT0
 STORE f2111dct TO vdTt
 STORE f2111dc2 TO vdT2
 STORE f2111dc3 TO vdT3
 STORE f2111dc4 TO vdT4
 STORE f2111dc5 TO vdT5
 STORE f2111dc6 TO vdT6
 STORE f2111dc7 TO vdT7
 STORE f2111dc8 TO vdT8
 STORE f2111dc9 TO vdT9
 STORE f2111dc0 TO vdT0
 STORE f2111la1 TO vlA1
 STORE f2111an1 TO vaN1
 STORE f2111la2 TO vlA2
 STORE f2111an2 TO vaN2
 STORE f2111la3 TO vlA3
 STORE f2111an3 TO vaN3
 STORE f2111esp TO veSp
 STORE f2111est TO veSt
 STORE f2111pxc TO vpXc
 STORE f2111cx1 TO vcX1
 STORE f2111cx2 TO vcX2
 STORE f2111bas TO vbAs
 STORE f2111adv TO vaDv
 STORE f2111din TO vdIn
 STORE f2111cub TO vcUb
 STORE f2111tie TO vtIe
 STORE f2111fot TO vfOt
 STORE f2111cmx TO vcMx
 STORE f2111pes TO vpEs
 STORE f2111pdt TO vpDt
 IF vmNd<=0 .OR. vmNd>2
      STORE 1 TO vmNd
 ENDIF
 SELECT tiP_prod
 SEEK vtIp
 IF EOF()
      STORE SPACE(30) TO vnTi
      STORE 1 TO vtPp
      STORE 2 TO vdEt
 ELSE
      STORE f9211nti TO vnTi
      STORE f9211tpo TO vtPp
      STORE f9211det TO vdEt
 ENDIF
 IF vdEt=1
      STORE mpDt TO vpDt
 ENDIF
 SELECT grUpos
 SEEK vgRu
 IF EOF()
      STORE SPACE(30) TO vnGr
 ELSE
      STORE f9216des TO vnGr
 ENDIF
 SELECT prOductos
 IF LEN(ALLTRIM(vbAs))<>0
      SEEK UPPER(ALLTRIM(vbAs))+"*"
      STORE f2111des TO vdBa
      SEEK UPPER(ALLTRIM(vcOd))+"*"
 ELSE
      STORE SPACE(70) TO vdBa
 ENDIF
ENDPROC
*
PROCEDURE P00_2111a
 PARAMETER ptPo
 PRIVATE pnUm, pfIn, pcLl
 STORE INT(mwFi-24) TO muFi
 STORE INT(mwCo-68) TO muCo
 DO maRcos
 IF mrEs="3"
      STORE mcO0-32 TO mcO0
 ELSE
      STORE mcO0-16 TO mcO0
 ENDIF
 STORE 0.5 TO pnUm
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 0 TO viT1
 STORE 30 TO pfIn
 STORE mcO0+09 TO vcL0
 STORE mcO0+30 TO mmC2
 IF mtMc<=15
      STORE mcO0+17.6+(3*(mtMc-1)) TO vcBi
 ELSE
      STORE mcO0+17.6+0042 TO vcBi
 ENDIF
 DO CASE
      CASE mrEs="3"
           STORE mcO0+16.8 TO vcL2
           STORE vcL2+120 TO vcL3
      OTHERWISE
           STORE mcO0+20.0 TO vcL2
           STORE vcL2+130 TO vcL3
 ENDCASE
 STORE mfI0-1.1 TO vfBi, vfB1
 STORE mfI0-0.9 TO vfB2
 STORE vcBi+4 TO vcB1
 STORE mcO0+muCo-30 TO vcL1
 STORE mfI0+2.7 TO ifFr, ufFr, vfFr
 STORE ifFr+pfIn TO ffFr
 STORE ifFr+pnUm TO ifFt, ufFt, vfFt
 STORE ifFt+pfIn-2 TO ffFt
 STORE ifFt+pnUm TO ifFu, ufFu, vfFu
 STORE ifFu+pfIn-2 TO ffFu
 STORE ifFu+pnUm TO ifFv, ufFv, vfFv
 STORE ifFv+pfIn-2 TO ffFv
 STORE ifFv+pnUm TO ifFw, ufFw, vfFw
 STORE ifFw+pfIn-2 TO ffFw
 STORE ifFw+pnUm TO ifFx, ufFx, vfFx
 STORE ifFx+pfIn-2 TO ffFx
 STORE ifFx+pnUm TO ifFy, ufFy, vfFy
 STORE ifFy+pfIn-2 TO ffFy
 STORE ifFy+pnUm TO ifFz, ufFz, vfFz
 STORE ifFz+pfIn-2 TO ffFz
 STORE mfI0+9.4 TO vfB3
 STORE mfI0+19.25 TO vfB4, vfB5
 STORE mfI0+22.25 TO vfB6
 STORE mfI0+23.7 TO vfB7, vfB8, vfB9
 STORE mfI0+15.9 TO vfB0
 STORE mfI0+15.9 TO vfBa
 STORE mfI0+14.1 TO vfBb
 STORE mfI0+22.7 TO vfBc
 STORE mfI0+10.9 TO vfBd
 STORE vcL1+55.8 TO vcB2
 STORE mcO0+55 TO vcB3
 STORE vcL2+111 TO vcB4, vcB6
 STORE vcB4+4 TO vcB5
 STORE mcO0+92 TO vcB7
 STORE vcB7+4 TO vcB8
 STORE vcB8+4 TO vcB9
 STORE mcO0+49 TO vcB0
 STORE mcO0+19 TO vcBa
 STORE mcO0+52 TO vcBb
 STORE vcL2+46 TO vcBc
 STORE vcL2+103 TO vcBd
 STORE mfI0+muFi+3.3 TO mmF2
 Define Popup vTB1 from mFI0+0.5,vCL1-9.4    to mFI0+mUFI+7.1,mCO0+mUCO+25 Font "&mLetRom",13 Style "BQ" Prompt Field F9211NTI Scroll Color Scheme 10 Footer "TIPOS"
 Define Popup vTB2 from mFI0+10.6,mCO0+29.2  to mFI0+mUFI+7.1,mCO0+58.4 Font "&mLetAri",13 Style "BQ" Prompt Field F9213DES Scroll Color Scheme 10 Footer "UNIDADES DE VENTA"
 Define Popup vTB3 from mFI0+3.1,vCB5-60.2  to mFI0+mUFI+7.1,vCB5-4 Font "&mLetRom",13 Style "BQ" Prompt Field F9213DES Scroll Color Scheme 10 Footer "UNIDADES DE INVENTARIO"
 Define Popup vTB4 from mFI0+3.1,vCB5-60.2  to mFI0+mUFI+7.1,vCB5-4 Font "&mLetRom",13 Style "BQ" Prompt Field F9216DES Scroll Color Scheme 10 Footer "GRUPOS DE PRODUCTOS"
 Define Popup vTB5 from mFI0+3.1,mCO0+75.2   to mFI0+mUFI+7.1,mCO0+110.9 Font "&mLetAri",11 Style "NQ" Prompt Field F9213DES Scroll Color Scheme 10 Footer "UNIDADES DE COMPRA"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 DO tiT_0000a WITH "Mantenimiento de Productos/Servicios/Activos Fijos"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0+7.6, mcO0, mfI0+muFi+0.2, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mmC2, mmF2+1, mmC2+130
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE mcO0+80 TO pcLl
 @ mfI0-2.0, mcO0-0.6 TO mfI0+1.1, mcO0+69 PATTERN 1 COLOR SCHEME 7
 @ mfI0+2.6, mcO0-0.6 TO mfI0+5.9, mcO0+120 PATTERN 1 COLOR SCHEME 3
 @ mfI0-2.0, mcO0-0.6 TO mfI0-2.0, mcO0+69 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-2.0, mcO0-0.6 TO mfI0+1.1, mcO0-0.6 COLOR RGB(255,255,255,0,0,0)
 DO coL_beige
 @ mfI0+2.6, mcO0-0.6 TO mfI0+2.6, mcO0+120 COLOR RGB(255,255,255,0,0,0)
 @ mfI0+2.6, mcO0-0.6 TO mfI0+5.9, mcO0-0.6 COLOR RGB(255,255,255,0,0,0)
 IF wnIv$"12"
      @ mfI0+19.5, mcO0+0.2 TO mfI0+23.0, pcLl PATTERN 1 COLOR SCHEME 4
      @ mfI0+19.5, mcO0+0.2 TO mfI0+19.5, pcLl COLOR RGB(255,255,255,0,0,0)
      @ mfI0+19.5, mcO0+0.2 TO mfI0+23.0, mcO0+0.2 COLOR RGB(255,255,255,0,0,0)
 ENDIF
 DO coL_fondo
 @ mfI0+6.2, vcL3 TO mfI0+25.4, vcL3+64.1 PATTERN 1 COLOR SCHEME 3
 @ mfI0+8.2, vcL3 TO mfI0+08.2, vcL3+64.1
 DO coLbln
 @mFI0+6.7,vCL3+1.1 Say "Nombre del Gráfico" Font "&mLetAri",11 Style "BT"
 DO coL_beige
 @ mfI0-3, vcL1-9 TO mfI0+1.1, vcL1+63 PATTERN 1
 @ mfI0-3, vcL1-9 TO mfI0-3.0, vcL1+63 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-3, vcL1-9 TO mfI0+1.1, vcL1-9 COLOR RGB(255,255,255,0,0,0)
 DO prEsiona WITH "1", "CONSUL", mfI0+6.7, vcL3+30.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wnIv$"124"
      @ mfI0+7.6, mcO0+0.2 TO mfI0+18.9, pcLl PATTERN 1
 ELSE
      @ mfI0+7.6, mcO0+0.2 TO mfI0+21.9, pcLl PATTERN 1
 ENDIF
 @ mfI0+7.6, mcO0+00.2 TO mfI0+09.1, pcLl PATTERN 1
 @ mfI0+7.6, vcL2+65.2 TO mfI0+13.8, vcL2+102.2 PATTERN 1
 @ mfI0+7.6, vcL2+65.2 TO mfI0+09.1, vcL2+102.2 PATTERN 1
 @ mfI0+7.6, mcO0+00.2 TO mfI0+07.6, pcLl COLOR RGB(128,128,128,0,0,0)
 @ mfI0+7.6, vcL2+65.2 TO mfI0+07.6, vcL2+102.2 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+7.6, vcL2+65.2 TO mfI0+13.8, vcL2+065.2 COLOR RGB(128,128,128,0,0,0)
 IF miMp=1
      @ mfI0+14.2, vcL2+65.2 TO mfI0+18.9, vcL2+118.9 PATTERN 1
      @ mfI0+14.2, vcL2+65.2 TO mfI0+14.2, vcL2+118.9 COLOR RGB(128,128, ;
        128,0,0,0)
      @ mfI0+14.2, vcL2+65.2 TO mfI0+18.9, vcL2+065.2 COLOR RGB(128,128, ;
        128,0,0,0)
 ELSE
      @ mfI0+15.7, vcL2+65.2 TO mfI0+18.9, vcL2+118.9 PATTERN 1
      @ mfI0+15.7, vcL2+65.2 TO mfI0+15.7, vcL2+118.9 COLOR RGB(128,128, ;
        128,0,0,0)
      @ mfI0+15.7, vcL2+65.2 TO mfI0+18.9, vcL2+065.2 COLOR RGB(128,128, ;
        128,0,0,0)
 ENDIF
 IF wnIv$"124"
      @ mfI0+7.6, mcO0+0.2 TO mfI0+18.9, mcO0+0.2 COLOR RGB(128,128,128,0,0,0)
 ELSE
      @ mfI0+7.6, mcO0+0.2 TO mfI0+21.9, mcO0+0.2 COLOR RGB(128,128,128,0,0,0)
 ENDIF
 DO coL_beige
 @vFB2+0.15,vCL1-7 Say "TIPO" Font "&mLetAri",9 Style "BQ"
 DO coLsc7
 @mFI0-1.10,mCO0+01 Say "Código:"                 Font "&mLetRom",13 Style "BT"
 DO coLsc3
 @mFI0+3.00,mCO0+01 Say "Descripción"             Font "&mLetAri",9  Style "BQ"
 @mFI0+4.40,mCO0+01 Say "Descripción Impresa"     Font "&mLetAri",9  Style "BQ"
 DO coL_beige
 @mFI0+07.8,mCO0+01 Say "Producto de Venta"       Font "&mLetAri",9 Style "BT" Color 1
 @mFI0+09.4,mCO0+01 Say "Unidad de Venta"         Font "&mLetAri",9 Style "BQ"
 @mFI0+10.8,mCO0+01 Say "Descripción modificable" Font "&mLetAri",9 Style "BQ"
 @mFI0+12.3,mCO0+01 Say "Precio modificable"      Font "&mLetAri",9 Style "BQ"
 @mFI0+13.8,mCO0+01 Say "Visible"                 Font "&mLetAri",9 Style "BQ"
 @mFI0+07.8,vCL2+66 Say "Controla Stocks"         Font "&mLetAri",9 Style "BT" Color 1
 @mFI0+09.3,vCL2+66 Say "Control de Series"       Font "&mLetAri",9 Style "BQ"
 IF miMp=1
      @mFI0+14.5,vCL2+66 Say "Importado"            Font "&mLetAri",9 Style "BQ"
      @mFI0+16.0,vCL2+66 Say "Procedencia"          Font "&mLetAri",9 Style "BQ"
      @mFI0+17.5,vCL2+66 Say "Marca"                Font "&mLetAri",9 Style "BQ"
 ENDIF
 @mFI0+12.3,vCL2+66 Say "Stock Máximo"            Font "&mLetAri",9 Style "BQ"
 @mFI0+10.8,vCL2+66 Say Space(20)                 Font "&mLetAri",9 Style "NQ" Size 1,15.7
 DO CASE
      CASE vmI1=1
           @mFI0+10.8,vCL2+66 Say "Stock Mínimo "   Font "&mLetAri",9 Style "BQ"
      CASE vmI1=2
           @mFI0+10.8,vCL2+66 Say "Tiempo St.Mín"   Font "&mLetAri",9 Style "BT" Color 2
 ENDCASE
 DO meD_2111a
 IF wnIv$"12"
      DO coLsc4
      @mFI0+20.0,mCO0+01.0 Say "Largo"              Font "&mLetAri",9 Style "BQ"
      @mFI0+20.0,mCO0+21.5 Say "Ancho"              Font "&mLetAri",9 Style "BQ"
      @mFI0+20.0,mCO0+47.0 Say "Espesor"            Font "&mLetAri",9 Style "BQ"
      @mFI0+21.5,mCO0+01.0 Say "Largo"              Font "&mLetAri",9 Style "BQ"
      @mFI0+21.5,mCO0+21.5 Say "Ancho"              Font "&mLetAri",9 Style "BQ"
 ENDIF
 DO coL_beige
 DO CASE
      CASE wnIv$"24"
           @mFI0+15.3,mCO0+01 Say "Tam/Tall/Col" Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Peso en Kg"   Font "&mLetAri",9 Style "BQ"
      CASE wnIv="3"
           @mFI0+18.3,mCO0+01 Say "Tam/Tall/Col" Font "&mLetAri",9 Style "BQ"
           @mFI0+19.8,mCO0+01 Say "Peso en Kg"   Font "&mLetAri",9 Style "BQ"
 ENDCASE
 DO coL_fondo
 @mFI0+19.3,vCL2+66 Say "Unidad de Inventario" Font "&mLetAri",9 Style "BQ"
 @mFI0+23.8,mCO0+01 Say "Producto Base"        Font "&mLetAri",9 Style "BQ"
 DO coL_fonro
 @mFI0+22.3,vCL2+66 Say "GRUPO"                Font "&mLetAri",11 Style "BQ"
 DO prE_2111a
 DO coL_beige
 IF wnIv$"13"
      @mFI0+16.8,mCO0+41 Say "Min"                           Font "&mLetAri",9 Style "BQ" Size 1,3.5
      DO coL_fondo
      @mFI0+20.8,vCL2+66 Say "Costo aprox. incluido IGV US$" Font "&mLetAri",9 Style "BT"
 ENDIF
 DO coLbln
 DO gpR_2111a
 DO tpO_2111a
 DO csT_2111a
 DO srR_2111a
 DO foT_2111a
 DO vtA_2111a
 DO imP_2111a
 DO md1_2111a
 DO md2_2111a
 DO md3_2111a
 DO ntI_2111a WITH "2"
 DO coLbln
 @mFI0+3.0,mCO0+28 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,89,120
 @mFI0+4.4,mCO0+28 Edit vDCR Font "&mLetAri",9 Style "NQ" Size 1,89,120
 IF wnIv$"12"
      @mFI0+20.0,mCO0+08.5 Get vLA1 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999"    Color ,&mColBlN
      @mFI0+20.0,mCO0+30.0 Get vAN1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"  Color ,&mColBlN
      @mFI0+20.0,mCO0+63.2 Get vESP Font "&mLetAri",9 Style "NQ" Size 1,8.9 Pict "999.99"  Color ,&mColBlN
      @mFI0+21.5,mCO0+30.0 Get vAN2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
      @mFI0+21.5,mCO0+08.5 Get vLA2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mColBlN
      DO CASE
           CASE wnIv="1" .AND. vpE1=1
                @mFI0+21.5,mCO0+63.2 Edit vTAM Font "&mLetAri",9 Style "NQ" Size 1,14,40
           CASE wnIv="1" .AND. vpE1=2
                @mFI0+21.5,mCO0+63.2 Get  vPES Font "&mLetAri",9 Style "NQ" Size 1,13.6 Pict "999,999.999" Color ,&mColBlN
      ENDCASE
 ENDIF
 DO CASE
      CASE wnIv$"24"
           @mFI0+15.3,mCO0+22.5 Edit vTAM Font "&mLetAri",9 Style "NQ" Size 1,30,40
           @mFI0+16.8,mCO0+22.5 Get  vPES Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "9999,999.999" Color ,&mColBlN
      CASE wnIv="3"
           @mFI0+18.3,mCO0+22.5 Edit vTAM Font "&mLetAri",9 Style "NQ" Size 1,30,40
           @mFI0+19.8,mCO0+22.5 Get  vPES Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "9999,999.999" Color ,&mColBlN
 ENDCASE
 IF LEN(ALLTRIM(vbAs))<>0
      DO coL_fondo
 ELSE
      DO coLbln
 ENDIF
 @mFI0+23.8,mCO0+18.5 Edit vDBA Font "&mLetAri",9 Style "NQ" Size 1,73.1,70
 DO coL_beige
 @mFI0+09.4,mCO0+29.5 Edit vNUV Font "&mLetAri",9 Style "NQ" Size 1,25,30
 @mFI0+19.3,vCL2+90.5 Edit vNUC Font "&mLetAri",9 Style "NQ" Size 1,20,30 Color ,RGB(0,0,0,220,213,199)
 @mFI0+22.3,vCL2+78.5 Edit vNGR Font "&mLetAri",9 Style "NQ" Size 1,32,30 Color ,RGB(0,0,0,220,213,199)
 DO CASE
      CASE vcSt=1 .AND. vmI1=1
           @mFI0+10.8,vCL2+86.5 Get vMIN Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99" Color ,&mColBlN
           @mFI0+12.3,vCL2+86.5 Get vMAX Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99" Color ,&mColBlN
      CASE vcSt=1 .AND. vmI1=2
           @mFI0+10.8,vCL2+86.5 Get vTIE Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999"    Color ,&mColBlN
           @mFI0+12.3,vCL2+86.5 Get vMAX Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99" Color ,&mColBlN
      CASE vcSt=2 .AND. vmI1=1
           @mFI0+10.8,vCL2+86.5 Get vMIN Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99" Color ,&mCol_Beige
           @mFI0+12.3,vCL2+86.5 Get vMAX Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99" Color ,&mCol_Beige
      CASE vcSt=2 .AND. vmI1=2
           @mFI0+10.8,vCL2+86.5 Get vTIE Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999"    Color ,&mCol_Beige
           @mFI0+12.3,vCL2+86.5 Get vMAX Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99" Color ,&mCol_Beige
 ENDCASE
 DO coLbln
 IF viMp=2
      DO coL_beige
 ENDIF
 IF miMp=1
      @mFI0+16.0,vCL2+86.5 Edit vPRO Font "&mLetAri",9 Style "NQ" Size 1,20,30
      @mFI0+17.5,vCL2+86.5 Edit vMAR Font "&mLetAri",9 Style "NQ" Size 1,20,30
 ENDIF
 DO coLbln
 IF wnIv$"13"
      @mFI0+20.8,vCL2+102.8 Get vVCP Font "&mLetAri",9 Style "NQ" Size 1,15.3 Pict "999,999.999" Color ,&mColBlN
      DO li1_2111a
 ENDIF
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCA0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wnIv$"13"
      DO prEsiona WITH "1", "F9", vfBa, vcBa
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "F3", vfBb, vcBb
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "F9", vfBd, vcBd
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF wnIv="1"
      DO prEsiona WITH "1", "F9", vfBc, vcBc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO boT_2111a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE pnUm, pfIn, pcLl
ENDPROC
*
PROCEDURE Dis_2111a
 DO prE_2111a
 DO prO_2111a
 DO tpO_2111a
 DO csT_2111a
 DO srR_2111a
 DO mi1_2111a
 DO maX_2111a
 DO foT_2111a
 DO nbA_2111a
 DO vtA_2111a
 DO imP_2111a
 DO md1_2111a
 DO md2_2111a
 DO md3_2111a
 DO ntI_2111a WITH "1"
 DO coLbln
 @mFI0+3.0,mCO0+28 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,89 Pict "@S92"
 @mFI0+4.4,mCO0+28 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,89 Pict "@S92"
 IF wnIv$"13"
      @mFI0+20.8,vCL2+102.6 Say vVCP Font "&mLetAri",9 Style "NQ" Size 1,15.9 Pict "999,999.999"
      DO liS_2111a
 ENDIF
 DO coLbln
 IF wnIv$"12"
      @mFI0+20.0,mCO0+08.5 Say vLA1 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999"
      @mFI0+21.5,mCO0+08.5 Say vLA2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999"
      @mFI0+20.0,mCO0+30.0 Say vAN1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"
      @mFI0+20.0,mCO0+63.2 Say vESP Font "&mLetAri",9 Style "NQ" Size 1,8.9 Pict "999.99"
      @mFI0+21.5,mCO0+30.0 Say vAN2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999"
      IF wnIv="1"
           DO CASE
                CASE vpE1=1
                     @mFI0+21.5,mCO0+63.2 Say vTAM Font "&mLetAri",9 Style "NQ" Size 1,14   Pict "@S40"
                CASE vpE1=2
                     @mFI0+21.5,mCO0+63.2 Say vPES Font "&mLetAri",9 Style "NQ" Size 1,13.6 Pict "999,999.999"
           ENDCASE
      ENDIF
 ENDIF
 DO coLbln
 DO CASE
      CASE wnIv$"24"
           @mFI0+15.3,mCO0+22.5 Say vTAM Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S40"
           @mFI0+16.8,mCO0+22.5 Say vPES Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.999"
      CASE wnIv="3"
           @mFI0+18.3,mCO0+22.5 Say vTAM Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S40"
           @mFI0+19.8,mCO0+22.5 Say vPES Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999,999.999"
 ENDCASE
 IF miMp=1
      DO im1_2111a
 ENDIF
 DO coL_beige
 @mFI0+09.4,mCO0+29.5 Say vNUV Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S27"
 DO coLbln
 @mFI0+19.3,vCL2+90.5 Say vNUC Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22" Color RGB(0,0,0,220,213,199)
 @mFI0+22.3,vCL2+78.5 Say vNGR Font "&mLetAri",9 Style "NQ" Size 1,32 Pict "@S30" Color RGB(0,0,0,220,213,199)
 READ TIMEOUT 0.01
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Md1_2111a
 IF vvTa=2 .OR. wnIv$"24"
      @mFI0+10.8,mCO0+29 Get vMD1 Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vMD1 Color ,,,,,,,,,RGB(120,120,120,255,217,179) Disable
 ELSE
      @mFI0+10.8,mCO0+29 Get vMD1 Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vMD1
 ENDIF
ENDPROC
*
PROCEDURE Md2_2111a
 IF vvTa=2 .OR. wnIv$"24"
      @mFI0+12.3,mCO0+29 Get vMD2 Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vMD2 Color ,,,,,,,,,RGB(120,120,120,255,217,179) Disable
 ELSE
      @mFI0+12.3,mCO0+29 Get vMD2 Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vMD2
 ENDIF
ENDPROC
*
PROCEDURE Md3_2111a
 IF vvTa=2 .OR. wnIv$"24"
      @mFI0+13.8,mCO0+29 Get vMD3 Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vMD3 Color ,,,,,,,,,RGB(120,120,120,255,217,179) Disable
 ELSE
      @mFI0+13.8,mCO0+29 Get vMD3 Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vMD3
 ENDIF
ENDPROC
*
PROCEDURE Vta_2111a
 IF wnIv$"24"
      @mFI0+7.8,mCO0+29 Get vVTA Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vVTA Color ,,,,,,,,,RGB(120,120,120,255,217,179) Disable
 ELSE
      @mFI0+7.8,mCO0+29 Get vVTA Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vVTA
 ENDIF
ENDPROC
*
PROCEDURE Cst_2111a
 IF wnIv$"24"
      @mFI0+7.8,vCL2+86 Get vCST Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vCST Color ,,,,,,,,,RGB(120,120,120,255,217,179) Disable
 ELSE
      @mFI0+7.8,vCL2+86 Get vCST Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vCST
 ENDIF
ENDPROC
*
PROCEDURE Srr_2111a
 IF wnIv$"24"
      @mFI0+9.3,vCL2+86 Get vSRR Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vSRR Color ,,,,,,,,,RGB(120,120,120,255,217,179) Disable
 ELSE
      @mFI0+9.3,vCL2+86 Get vSRR Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vSRR
 ENDIF
ENDPROC
*
PROCEDURE Imp_2111a
 IF miMp=1
      IF wnIv$"24"
           @mFI0+14.5,vCL2+86 Get vIMP Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vIMP Color ,,,,,,,,,RGB(120,120,120,255,217,179) Disable
      ELSE
           @mFI0+14.5,vCL2+86 Get vIMP Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vIMP
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Im1_2111a
 IF viMp=1
      DO coLbln
 ELSE
      DO coL_beige
 ENDIF
 @mFI0+16.0,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
 @mFI0+16.0,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
 @mFI0+17.5,vCL2+086.4 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.1
 @mFI0+17.5,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,00.3
 @mFI0+16.0,vCL2+086.5 Say vPRO Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22"
 @mFI0+17.5,vCL2+086.5 Say vMAR Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22"
ENDPROC
*
PROCEDURE Tpo_2111a
 @vFB2-1.5,vCL1-2 Get vTPO Font "&mLetAri",12 Style "BQ" Function "*RHT Producto;Servicio;Activo Fijo" Default vTPO Color ,,,,,,,,1
ENDPROC
*
PROCEDURE NTi_2111a
 PARAMETER ptPp
 DO coL_beige
 DO CASE
      CASE ptPp="1"
           @vFB2+0.15,vCL1 Say  vNTI Font "&mLetAri",10 Style "BQ" Size 1,46 Pict "@S48"
      CASE ptPp="2"
           @vFB2+0.15,vCL1 Edit vNTI Font "&mLetAri",10 Style "BQ" Size 1,46,50
 ENDCASE
ENDPROC
*
PROCEDURE Med_2111a
 IF wnIv>"2"
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,128,141,136,122)
 @mFI0+20.0,mCO0+41 Say "mt."                  Font "&mLetAri",8 Style "BQ"
 @mFI0+21.5,mCO0+41 Say "Pulg"                 Font "&mLetAri",8 Style "BQ"
 DO CASE
      CASE vtPp=3
           @mFI0+20,mCO0+74 Say "Pulg"           Font "&mLetAri",8 Style "BQ" Size 1,5.8
      OTHERWISE
           @mFI0+20,mCO0+74 Say "mm."            Font "&mLetAri",8 Style "BQ" Size 1,5.8
 ENDCASE
 DO CASE
      CASE vpE1=1 .AND. wnIv="1"
           @mFI0+21.5,mCO0+47 Say "Tam/Tall/Color" Font "&mLetAri",9 Style "BQ" Size 1,13 Color Scheme 4
      CASE vpE1=2 .AND. wnIv="1"
           @mFI0+21.5,mCO0+47 Say "Peso"           Font "&mLetAri",9 Style "BQ" Size 1,13 Color Scheme 4
      CASE vpE1=3 .AND. wnIv="1"
           @mFI0+21.5,mCO0+47 Say "% Detracción"   Font "&mLetAri",9 Style "BQ" Size 1,13 Color Scheme 4
 ENDCASE
ENDPROC
*
PROCEDURE Min_2111a
 DO coL_beige
 DO CASE
      CASE vmI1=1
           @mFI0+10.8,vCL2+66 Say "Stock Mínimo " Font "&mLetAri",9 Style "BQ" Size 1,15.7
      CASE vmI1=2
           @mFI0+10.8,vCL2+66 Say "Tiempo St.Mín" Font "&mLetAri",9 Style "BQ" Size 1,15.7
 ENDCASE
ENDPROC
*
PROCEDURE Mi1_2111a
 DO coL_beige
 @mFI0+10.8,vCL2+086.0 Say Space(01) Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @mFI0+10.8,vCL2+100.5 Say Space(01) Font "&mLetAri",9 Style "NQ" Size 1,0.4
 IF vcSt<>2
      DO coLbln
 ENDIF
 DO CASE
      CASE vmI1=1
           @mFI0+10.8,vCL2+86.5 Say vMIN Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
      CASE vmI1=2
           @mFI0+10.8,vCL2+86.5 Say vTIE Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999"
 ENDCASE
ENDPROC
*
PROCEDURE Max_2111a
 DO coL_beige
 @mFI0+12.3,vCL2+086.0 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @mFI0+12.3,vCL2+100.5 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,0.4
 IF vcSt<>2
      DO coLbln
 ENDIF
 @mFI0+12.3,vCL2+086.5 Say vMAX Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
ENDPROC
*
PROCEDURE Fot_2111a
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO cfOt
 ELSE
      STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO cfOt
 ENDIF
 If !File("&cFOT")
      IF LEN(ALLTRIM(muNi))=0
           STORE mpTh+"DIB\"+ALLTRIM(vfOt)+".JPG" TO cfOt
      ELSE
           STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(vfOt)+".JPG" TO cfOt
      ENDIF
 ENDIF
 If !File("&cFOT")
      STORE SPACE(40) TO cfOt
 ENDIF
 If Len(AllTrim(cFOT)) <> 0 .and. File("&cFOT")
      @mFI0+10.3,vCL3+0.6 Say "&cFOT" BitMap Style "Q" Size 15.1,63.1 Stretch
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO coLbln
      @ mfI0+10.2, vcL3 TO mfI0+25.4, vcL3+64.1 PATTERN 1 PEN 1
 ENDIF
 DO coLsc1
 @ mfI0+25.7, vcL3 TO mfI0+27.2, vcL3+64.1 PATTERN 1 PEN 1
 @mFI0+25.8,vCL3+15 Say "Medidas: 315 x 215 Pixeles" Font "&mLetRom",12 Style "BQ"
 IF LEN(ALLTRIM(vfOt))=0
      DO prEsiona WITH "3", "DESCAR", mfI0+6.7, vcL3+34.4
 ELSE
      DO prEsiona WITH "1", "DESCAR", mfI0+6.7, vcL3+34.4
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @mFI0+8.6,vCL3+26.1 Say vFOT Font "&mLetAri",11 Style "BQ" Size 1,15 Pict "@S8"
ENDPROC
*
PROCEDURE Bot_2111a
 DO CASE
      CASE viTe=1
           DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB3, vcB3
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "DESCAR", vfB5, vcB5
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB6, vcB6
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB7, vcB7
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "BUSCAR", vfB8, vcB8
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "DESCAR", vfB9, vcB9
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF miMp=1
                DO prEsiona WITH "3", "FLECH1", mfI0+15, vcL2+109
           ENDIF
      CASE viTe<>1
           DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vvTa=2 .OR. wnIv$"24"
                DO prEsiona WITH "3", "CONSUL", vfB3, vcB3
           ELSE
                DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF LEN(ALLTRIM(vcUc))=0
                DO prEsiona WITH "3", "DESCAR", vfB5, vcB5
           ELSE
                DO prEsiona WITH "1", "DESCAR", vfB5, vcB5
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "BUSCAR", vfB8, vcB8
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF LEN(ALLTRIM(vbAs))=0
                DO prEsiona WITH "3", "DESCAR", vfB9, vcB9
           ELSE
                DO prEsiona WITH "1", "DESCAR", vfB9, vcB9
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF miMp=1
                IF viMp=1
                     DO prEsiona WITH "1", "FLECH1", mfI0+15, vcL2+109
                ELSE
                     DO prEsiona WITH "3", "FLECH1", mfI0+15, vcL2+109
                ENDIF
           ENDIF
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Mli_2111a
 DO CASE
      CASE vlIs=1
           STORE vvV1 TO cvV1
           STORE vvV2 TO cvV2
           STORE vmV1 TO cmV1
           STORE vmV2 TO cmV2
           STORE vuTi TO cuTi
      CASE vlIs=2
           STORE vvV3 TO cvV1
           STORE vvV4 TO cvV2
           STORE vmV3 TO cmV1
           STORE vmV4 TO cmV2
           STORE vuT2 TO cuTi
      CASE vlIs=3
           STORE vvV5 TO cvV1
           STORE vvV6 TO cvV2
           STORE vmV5 TO cmV1
           STORE vmV6 TO cmV2
           STORE vuT3 TO cuTi
      CASE vlIs=4
           STORE vvV7 TO cvV1
           STORE vvV8 TO cvV2
           STORE vmV7 TO cmV1
           STORE vmV8 TO cmV2
           STORE vuT4 TO cuTi
      CASE vlIs=5
           STORE vvV9 TO cvV1
           STORE vvV0 TO cvV2
           STORE vmV9 TO cmV1
           STORE vmV0 TO cmV2
           STORE vuT5 TO cuTi
      CASE vlIs=6
           STORE vvVa TO cvV1
           STORE vvVb TO cvV2
           STORE vmVa TO cmV1
           STORE vmVb TO cmV2
           STORE vuT6 TO cuTi
      CASE vlIs=7
           STORE vvVc TO cvV1
           STORE vvVd TO cvV2
           STORE vmVc TO cmV1
           STORE vmVd TO cmV2
           STORE vuT7 TO cuTi
      CASE vlIs=8
           STORE vvVe TO cvV1
           STORE vvVf TO cvV2
           STORE vmVe TO cmV1
           STORE vmVf TO cmV2
           STORE vuT8 TO cuTi
      CASE vlIs=9
           STORE vvVg TO cvV1
           STORE vvVh TO cvV2
           STORE vmVg TO cmV1
           STORE vmVh TO cmV2
           STORE vuT9 TO cuTi
      CASE vlIs=10
           STORE vvVi TO cvV1
           STORE vvVj TO cvV2
           STORE vmVi TO cmV1
           STORE vmVj TO cmV2
           STORE vuT0 TO cuTi
 ENDCASE
ENDPROC
*
PROCEDURE Ml1_2111a
 DO CASE
      CASE vlIs=1
           STORE cvV1 TO vvV1
           STORE cvV2 TO vvV2
           STORE cmV1 TO vmV1
           STORE cmV2 TO vmV2
           STORE cuTi TO vuTi
      CASE vlIs=2
           STORE cvV1 TO vvV3
           STORE cvV2 TO vvV4
           STORE cmV1 TO vmV3
           STORE cmV2 TO vmV4
           STORE cuTi TO vuT2
      CASE vlIs=3
           STORE cvV1 TO vvV5
           STORE cvV2 TO vvV6
           STORE cmV1 TO vmV5
           STORE cmV2 TO vmV6
           STORE cuTi TO vuT3
      CASE vlIs=4
           STORE cvV1 TO vvV7
           STORE cvV2 TO vvV8
           STORE cmV1 TO vmV7
           STORE cmV2 TO vmV8
           STORE cuTi TO vuT4
      CASE vlIs=5
           STORE cvV1 TO vvV9
           STORE cvV2 TO vvV0
           STORE cmV1 TO vmV9
           STORE cmV2 TO vmV0
           STORE cuTi TO vuT5
      CASE vlIs=6
           STORE cvV1 TO vvVa
           STORE cvV2 TO vvVb
           STORE cmV1 TO vmVa
           STORE cmV2 TO vmVb
           STORE cuTi TO vuT6
      CASE vlIs=7
           STORE cvV1 TO vvVc
           STORE cvV2 TO vvVd
           STORE cmV1 TO vmVc
           STORE cmV2 TO vmVd
           STORE cuTi TO vuT7
      CASE vlIs=8
           STORE cvV1 TO vvVe
           STORE cvV2 TO vvVf
           STORE cmV1 TO vmVe
           STORE cmV2 TO vmVf
           STORE cuTi TO vuT8
      CASE vlIs=9
           STORE cvV1 TO vvVg
           STORE cvV2 TO vvVh
           STORE cmV1 TO vmVg
           STORE cmV2 TO vmVh
           STORE cuTi TO vuT9
      CASE vlIs=10
           STORE cvV1 TO vvVi
           STORE cvV2 TO vvVj
           STORE cmV1 TO vmVi
           STORE cmV2 TO vmVj
           STORE cuTi TO vuT0
 ENDCASE
ENDPROC
*
PROCEDURE Lis_2111a
 IF wnIv$"24"
      RETURN
 ENDIF
 IF vvTa=2
      DO coL_beige
 ELSE
      DO coLbln
 ENDIF
 DO mlI_2111a
 @mFI0+15.3,mCO0+22.5 Say cVV1      Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @mFI0+16.8,mCO0+22.5 Say cVV2      Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 @mFI0+16.8,mCO0+45.5 Say cMV2      Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 IF vsW1=1
      @mFI0+15.3,mCO0+45.5 Say cMV1   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 ELSE
      @mFI0+15.3,mCO0+49.9 Say cUTI   Font "&mLetAri",9 Style "NQ" Size 1,12.3 Pict "999.9999"
 ENDIF
ENDPROC
*
PROCEDURE Li1_2111a
 DO CASE
      CASE wnIv$"13"
           DO coL_beige
      CASE wnIv$"24"
           DO coL_beipl
 ENDCASE
 IF vsW1=1
      @mFI0+15.3,mCO0+41 Say "Min"     Font "&mLetAri",9  Style "BQ" Size 1,3.5
 ELSE
      @mFI0+15.2,mCO0+45 Say Space(10) Font "&mLetAri",11 Style "BQ" Size 1,12
      @mFI0+15.3,mCO0+41 Say "%Utilid" Font "&mLetAri",9  Style "BQ"
 ENDIF
 DO mlI_2111a
 DO CASE
      CASE vvTa=1
           @mFI0+15.3,mCO0+22.5    Get cVV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mColBlN
           @mFI0+16.8,mCO0+22.5    Get cVV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mColBlN
           @mFI0+16.8,mCO0+45.5    Get cMV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mColBlN
           IF vsW1=1
                @mFI0+15.3,mCO0+45.5 Get cMV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mColBlN
           ELSE
                @mFI0+15.3,mCO0+49.9 Get cUTI Font "&mLetAri",9 Style "NQ" Size 1,12.3 Pict "999.9999"     Color ,&mColBlN
           ENDIF
      OTHERWISE
           @mFI0+15.3,mCO0+22.5    Get cVV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mCol_Beige
           @mFI0+16.8,mCO0+22.5    Get cVV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mCol_Beige
           @mFI0+16.8,mCO0+45.5    Get cMV2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mCol_Beige
           IF vsW1=1
                @mFI0+15.3,mCO0+45.5 Get cMV1 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999" Color ,&mCol_Beige
           ELSE
                @mFI0+15.3,mCO0+49.9 Get cUTI Font "&mLetAri",9 Style "NQ" Size 1,12.3 Pict "999.9999"     Color ,&mCol_Beige
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Tip_2111a
 = INKEY(0.01)
 SELECT tiP_prod
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnTi))
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9211tip TO vtIp
      STORE f9211nti TO vnTi
      STORE f9211tpo TO vtPp
      STORE f9211det TO vdEt
      IF vdEt=1
           STORE mpDt TO vpDt
      ENDIF
      DO ntI_2111a WITH "1"
      DO meD_2111a
      IF vtPp<4 .OR. vtPp=10 .OR. vtPp=11
           STORE 2 TO vsRr
           STORE 99 TO mkEy
           DO srR_2111a
           READ TIMEOUT 0.01
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Unv_2111a
 = INKEY(0.01)
 SELECT unIdad
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9213", "U", "F9213DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnUv))
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "9213", "U", "F9213UNI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      DO coL_beige
      STORE f9213uni TO vcUv
      STORE f9213des TO vnUv
      @mFI0+9.4,mCO0+29.5 Say vNUV Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S27"
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Unc_2111a
 = INKEY(0.01)
 SELECT unIdad
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9213", "U", "F9213DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnUc))
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "9213", "U", "F9213UNI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9213uni TO vcUc
      STORE f9213des TO vnUc
      @mFI0+19.3,vCL2+90.5 Say vNUC Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22" Color RGB(0,0,0,220,213,199)
      DO prEsiona WITH "1", "DESCAR", vfB5, vcB5
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Gru_2111a
 = INKEY(0.01)
 SELECT grUpos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "9216", "U", "F9216DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnGr))
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB4 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "9216", "U", "F9216COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      STORE f9216cod TO vgRu
      STORE f9216des TO vnGr
      @mFI0+22.3,vCL2+78.5 Say vNGR Font "&mLetAri",9 Style "NQ" Size 1,32 Pict "@S30" Color RGB(0,0,0,220,213,199)
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bas_2111a
 PARAMETER ptPo
 = INKEY(0.01)
 SELECT prOductos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO CASE
      CASE ptPo="1"
           STORE 2 TO vsWw
           STORE 1 TO vsWr
           DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
      CASE ptPo="2"
           STORE 2 TO vsWw
           STORE 2 TO vsWr
           DO prEsiona WITH "2", "BUSCAR", vfB8, vcB8
      CASE ptPo="3"
           STORE 1 TO vsWw
           STORE 1 TO vsWr
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vcOd TO ccOd
 STORE vdBa TO vcOd
 SAVE SCREEN TO vpAn_11
 DO paC2111w WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 SELECT prOductos
 SET FILTER TO
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ccOd TO vcOd
 IF mkEy=k_Enter
      SEEK ALLTRIM(vcDg)+"*"
      STORE f2111cod TO vbAs
      STORE f2111des TO vdBa
      DO nbA_2111a
      DO prEsiona WITH "1", "DESCAR", vfB9, vcB9
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF ptPo="1"
      DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
 ELSE
      DO prEsiona WITH "1", "BUSCAR", vfB8, vcB8
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Nba_2111a
 IF LEN(ALLTRIM(vbAs))<>0
      DO coL_fondo
 ELSE
      DO coLbln
 ENDIF
 @mFI0+23.8,mCO0+18.5 Say AllTrim(vBAS)+"-"+vDBA Font "&mLetAri",9 Style "NQ" Size 1,73.1 Pict "@S75"
ENDPROC
*
PROCEDURE Pre_2111a
 IF wnIv$"24"
      RETURN
 ENDIF
 DO CASE
      CASE wnIv$"13" .AND. vlIs<=2
           DO coL_beige
      CASE wnIv$"13" .AND. vlIs<=4
           DO coL_beiro
      CASE wnIv$"13" .AND. vlIs<=6
           DO coL_beiaz
      CASE wnIv$"13" .AND. vlIs<=8
           DO coL_beive
      CASE wnIv$"13" .AND. vlIs<=10
           DO coL_beifu
 ENDCASE
 DO CASE
      CASE vlIs=1
           @mFI0+15.3,mCO0+01 Say "Prec-1 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-1 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=2
           @mFI0+15.3,mCO0+01 Say "Prec-2 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-2 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=3
           @mFI0+15.3,mCO0+01 Say "Prec-3 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-3 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=4
           @mFI0+15.3,mCO0+01 Say "Prec-4 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-4 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=5
           @mFI0+15.3,mCO0+01 Say "Prec-5 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-5 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=6
           @mFI0+15.3,mCO0+01 Say "Prec-6 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-6 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=7
           @mFI0+15.3,mCO0+01 Say "Prec-7 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-7 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=8
           @mFI0+15.3,mCO0+01 Say "Prec-8 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-8 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=9
           @mFI0+15.3,mCO0+01 Say "Prec-9 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec-9 Lista US$" Font "&mLetAri",9 Style "BQ"
      CASE vlIs=10
           @mFI0+15.3,mCO0+01 Say "Prec10 Lista S/." Font "&mLetAri",9 Style "BQ"
           @mFI0+16.8,mCO0+01 Say "Prec10 Lista US$" Font "&mLetAri",9 Style "BQ"
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2111a
 = INKEY(0.01)
 STORE 00 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+2.6 .AND.  ;
           mcCc<=mmC1+17.6 .AND. viTe>01
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+17.6 .AND.  ;
           mcCc<=mmC1+33.3 .AND. viTe>01
           STORE 2 TO vsWg
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+33.3 .AND.  ;
           mcCc<=mmC1+41.8
           STORE k_F5 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.4
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.6
           STORE k_F7 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mfI0+7.5 .AND. mfIl<=mfI0+09.14 .AND. mcCc>=vcL2+104.4  ;
           .AND. mcCc<=vcL2+117.6 .AND. viTe>01
           STORE k_Alt_del TO mkEy
      CASE mfIl>=mfI0+6.714 .AND. mfIl<=mfI0+7.928 .AND. mcCc>=vcL3+30.4  ;
           .AND. mcCc<=vcL3+34.2 .AND. viTe>1
           STORE SYS(5)+SYS(2003) TO vdIr
           IF LEN(ALLTRIM(muNi))=0
                STORE mpTh+"DIB\" TO mdBf
           ELSE
                STORE muNi+":"+mpTh+"DIB\" TO mdBf
           ENDIF
           STORE ALLTRIM(mdBf) TO mdBf
           If .not.Directory("&mDBF")
                STORE "No hay Carpeta de Graficos" TO mmSj
                STORE 99 TO mkEy
                DO poNmsj
                = INKEY(0)
                RETURN
           ENDIF
           Set Defa to &mDBF
           cfOt = GETFILE('???', 'Mostrar Gráficos .BMP,.JPG:',  ;
                  'Examinar', 1, 'Mostrar')
           Set Defa to &vDIR
           IF LEN(ALLTRIM(cfOt))<>0
                STORE SUBSTR(cfOt, RAT("\", cfOt)+1, RAT(".", cfOt)- ;
                      (RAT("\", cfOt)+1)) TO vfOt
                DO foT_2111a
           ENDIF
      CASE mfIl>=mfI0+6.714 .AND. mfIl<=mfI0+7.928 .AND. mcCc>=vcL3+34.2  ;
           .AND. mcCc<=vcL3+38.2 .AND. viTe>1 .AND. LEN(ALLTRIM(vfOt))<>0
           STORE SPACE(40) TO vfOt
           DO foT_2111a
           STORE 99 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1+mfG1 .AND. mfIl<=vfB1+mfG2 .AND. mcCc>=vcB1+mcG1  ;
           .AND. mcCc<=vcB1+mcG2
           STORE 01 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2 .AND. viTe>1
           DO tiP_2111a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT prOductos
           STORE 99 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. vvTa=1 .AND. mcCc>= ;
           vcB3+mcO1 .AND. mcCc<=vcB3+mcO2 .AND. viTe>1 .AND. wnIv$"13"
           DO unV_2111a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT prOductos
           STORE 99 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. viTe>1
           DO unC_2111a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT prOductos
           STORE 99 TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. LEN(ALLTRIM(vcUc))<> ;
           0 .AND. mcCc>=vcB5+mcO1 .AND. mcCc<=vcB5+mcO2 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(02) TO vcUc
           STORE SPACE(30) TO vnUc
           @mFI0+19.3,vCL2+90.5 Say vNUC Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22" Color RGB(0,0,0,220,213,199)
           DO prEsiona WITH "3", "DESCAR", vfB5, vcB5
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2 .AND. viTe>1
           DO grU_2111a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT prOductos
           STORE 99 TO mkEy
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2 .AND. viTe>1
           DO baS_2111a WITH "1"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT prOductos
           STORE 99 TO mkEy
      CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2 .AND. LEN(ALLTRIM(vdBa))<> ;
           0 .AND. mcCc>=vcB8+mcO1 .AND. mcCc<=vcB8+mcO2 .AND. viTe>1
           DO baS_2111a WITH "2"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT prOductos
           STORE 99 TO mkEy
      CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2 .AND. LEN(ALLTRIM(vbAs))<> ;
           0 .AND. mcCc>=vcB9+mcO1 .AND. mcCc<=vcB9+mcO2 .AND. viTe>1
           STORE 99 TO mkEy
           STORE SPACE(20) TO vbAs
           STORE SPACE(80) TO vdBa
           DO nbA_2111a
           DO prEsiona WITH "3", "DESCAR", vfB9, vcB9
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfB2-1.5 .AND. mfIl<=vfB2-0.5 .AND. vtPo<>1 .AND. mcCc>= ;
           vcL1-2.8 .AND. mcCc<=vcL1+16.4 .AND. viTe>1
           STORE 99 TO mkEy
           STORE 01 TO vtPo
           DO tpO_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=vfB2-1.5 .AND. mfIl<=vfB2-0.5 .AND. vtPo<>2 .AND. mcCc>= ;
           vcL1+16.4 .AND. mcCc<=vcL1+34.2 .AND. viTe>1
           STORE 99 TO mkEy
           STORE 02 TO vtPo
           DO tpO_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=vfB2-1.5 .AND. mfIl<=vfB2-0.5 .AND. vtPo<>3 .AND. mcCc>= ;
           vcL1+34.2 .AND. mcCc<=vcL1+55 .AND. viTe>1
           STORE 99 TO mkEy
           STORE 03 TO vtPo
           DO tpO_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.75 .AND. mfIl<=mfI0+8.821 .AND. viTe>1 .AND. mcCc>= ;
           mcO0+28.4 .AND. mcCc<=mcO0+34.8 .AND. vvTa<>1 .AND. wnIv$"13"
           STORE 1 TO vvTa
           STORE 99 TO mkEy
           DO liS_2111a
           DO vtA_2111a
           DO md1_2111a
           DO md2_2111a
           DO md3_2111a
           READ TIMEOUT 0.01
           DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
      CASE mfIl>=mfI0+7.75 .AND. mfIl<=mfI0+8.821 .AND. viTe>1 .AND. mcCc>= ;
           mcO0+34.8 .AND. mcCc<=mcO0+42.20 .AND. vvTa<>2 .AND. wnIv$"13"
           STORE 99 TO mkEy
           STORE 01 TO vmD3
           STORE 02 TO vvTa, vmD1, vmD2
           STORE 00 TO vvV1, vvV2, vvV3, vvV4, vvV5, vvV6, vvV7, vvV8,  ;
                 vvV9, vvV0, vvVa, vvVb, vvVc, vvVd, vvVe, vvVf, vvVg,  ;
                 vvVh, vvVi, vvVj
           STORE 00 TO vmV1, vmV2, vmV3, vmV4, vmV5, vmV6, vmV7, vmV8,  ;
                 vmV9, vmV0, vmVa, vmVb, vmVc, vmVd, vmVe, vmVf, vmVg,  ;
                 vmVh, vmVi, vmVj
           DO liS_2111a
           DO vtA_2111a
           DO md1_2111a
           DO md2_2111a
           DO md3_2111a
           READ TIMEOUT 0.01
           DO prEsiona WITH "3", "CONSUL", vfB3, vcB3
      CASE mfIl>=mfI0+10.821 .AND. mfIl<=mfI0+11.892 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+28.4 .AND. mcCc<=mcO0+34.80 .AND.  ;
           vmD1<>1 .AND. vvTa=1
           STORE 1 TO vmD1
           STORE 99 TO mkEy
           DO md1_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+10.821 .AND. mfIl<=mfI0+11.892 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+34.8 .AND. mcCc<=mcO0+42.20 .AND.  ;
           vmD1<>2 .AND. vvTa=1
           STORE 2 TO vmD1
           STORE 99 TO mkEy
           DO md1_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+12.321 .AND. mfIl<=mfI0+13.392 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+28.4 .AND. mcCc<=mcO0+34.80 .AND.  ;
           vmD2<>1 .AND. vvTa=1
           STORE 1 TO vmD2
           STORE 99 TO mkEy
           DO md2_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+12.321 .AND. mfIl<=mfI0+13.392 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+34.8 .AND. mcCc<=mcO0+42.20 .AND.  ;
           vmD2<>2 .AND. vvTa=1
           STORE 2 TO vmD2
           STORE 99 TO mkEy
           DO md2_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+13.821 .AND. mfIl<=mfI0+14.75 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+28.4 .AND. mcCc<=mcO0+34.80 .AND.  ;
           vmD3<>1 .AND. vvTa=1
           STORE 1 TO vmD3
           STORE 99 TO mkEy
           DO md3_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+13.821 .AND. mfIl<=mfI0+14.75 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+34.8 .AND. mcCc<=mcO0+42.20 .AND.  ;
           vmD3<>2 .AND. vvTa=1 .AND. mfEl<>"2"
           STORE "No puede haber productos invisibles en Facturación Electrónica"  ;
                 TO mmSj
      CASE mfIl>=mfI0+13.821 .AND. mfIl<=mfI0+14.75 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+34.8 .AND. mcCc<=mcO0+42.20 .AND.  ;
           vmD3<>2 .AND. vvTa=1
           STORE 2 TO vmD3
           STORE 99 TO mkEy
           DO md3_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.75 .AND. mfIl<=mfI0+8.821 .AND. viTe>1 .AND. mcCc>= ;
           vcL2+85.8 .AND. mcCc<=vcL2+92.20 .AND. vcSt<>1 .AND. wnIv$"13"
           STORE 1 TO vcSt
           STORE 99 TO mkEy
           DO mi1_2111a
           DO maX_2111a
           DO csT_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+7.75 .AND. mfIl<=mfI0+8.821 .AND. viTe>1 .AND. mcCc>= ;
           vcL2+92.2 .AND. mcCc<=vcL2+99.40 .AND. vcSt<>2 .AND. wnIv$"13"
           STORE 99 TO mkEy
           STORE 02 TO vcSt, vsRr
           STORE 00 TO vmIn, vmAx
           DO mi1_2111a
           DO maX_2111a
           DO srR_2111a
           DO csT_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.25 .AND. mfIl<=mfI0+10.321 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=vcL2+85.8 .AND. mcCc<=vcL2+92.20 .AND.  ;
           vsRr<>1 .AND. (vtPp<4 .OR. vtPp=10 .OR. vtPp=11)
           STORE 1 TO vsRr
           STORE 99 TO mkEy
           DO srR_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+9.25 .AND. mfIl<=mfI0+10.321 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=vcL2+92.2 .AND. mcCc<=vcL2+99.40 .AND.  ;
           vsRr<>2 .AND. (vtPp<4 .OR. vtPp=10 .OR. vtPp=11)
           STORE 2 TO vsRr
           STORE 99 TO mkEy
           DO srR_2111a
           READ TIMEOUT 0.01
      CASE mfIl>=mfI0+14.392 .AND. mfIl<=mfI0+15.607 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=vcL2+85.8 .AND. mcCc<=vcL2+92.20 .AND.  ;
           viMp<>1 .AND. miMp=1
           STORE 1 TO viMp
           STORE 99 TO mkEy
           DO im1_2111a
           DO imP_2111a
           READ TIMEOUT 0.01
           DO prEsiona WITH "1", "FLECH1", mfI0+15, vcL2+109
      CASE mfIl>=mfI0+14.392 .AND. mfIl<=mfI0+15.607 .AND. viTe>1 .AND.  ;
           wnIv$"13" .AND. mcCc>=vcL2+92.2 .AND. mcCc<=vcL2+99.40 .AND.  ;
           viMp<>2 .AND. miMp=1
           STORE 02 TO viMp
           STORE 99 TO mkEy
           STORE SPACE(30) TO vpRo, vmAr
           DO im1_2111a
           DO imP_2111a
           READ TIMEOUT 0.01
           DO prEsiona WITH "3", "FLECH1", mfI0+15, vcL2+109
      CASE mfIl>=mfI0+15.036 .AND. mfIl<=mfI0+17.893 .AND. miMp=1 .AND.  ;
           viMp=1 .AND. mcCc>=vcL2+109 .AND. mcCc<=vcL2+114.8 .AND. viTe<>1
           STORE k_F4 TO mkEy
      CASE mfIl>=mfI0-1.15 .AND. mfIl<=mfI0+0.421 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+62.4 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.921 .AND. mfIl<=mfI0+4.135 .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+117 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+4.35 .AND. mfIl<=mfI0+5.564 .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+88 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+15.135 .AND. mfIl<=mfI0+16.492 .AND. vvTa=1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+0.8 .AND. mcCc<=mcO0+39.60 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+15.135 .AND. mfIl<=mfI0+16.492 .AND. vvTa=1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+41 .AND. mcCc<=mcO0+62.60 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+16.778 .AND. mfIl<=mfI0+17.992 .AND. vvTa=1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+0.8 .AND. mcCc<=mcO0+39.60 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+16.778 .AND. mfIl<=mfI0+17.992 .AND. vvTa=1 .AND.  ;
           wnIv$"13" .AND. mcCc>=mcO0+41 .AND. mcCc<=mcO0+62.60 .AND. viTe<>7
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+19.893 .AND. mfIl<=mfI0+21.214 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+19 .AND. ((wnIv="1" .AND. viTe<>8) .OR. (wnIv= ;
           "2" .AND. viTe<>6))
           IF wnIv="1"
                STORE 8 TO ciTx
           ELSE
                STORE 6 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+19.893 .AND. mfIl<=mfI0+21.214 .AND. mcCc>=mcO0+ ;
           21.4 .AND. mcCc<=mcO0+46.4 .AND. ((wnIv="1" .AND. viTe<>9)  ;
           .OR. (wnIv="2" .AND. viTe<>7))
           IF wnIv="1"
                STORE 9 TO ciTx
           ELSE
                STORE 7 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+19.893 .AND. mfIl<=mfI0+21.214 .AND. mcCc>=mcO0+ ;
           46.6 .AND. mcCc<=mcO0+79 .AND. ((wnIv="1" .AND. viTe<>10) .OR.  ;
           (wnIv="2" .AND. viTe<>8))
           IF wnIv="1"
                STORE 10 TO ciTx
           ELSE
                STORE 8 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+21.500 .AND. mfIl<=mfI0+22.642 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+19 .AND. ((wnIv="1" .AND. viTe<>11) .OR.  ;
           (wnIv="2" .AND. viTe<>9))
           IF wnIv="1"
                STORE 11 TO ciTx
           ELSE
                STORE 9 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+21.5 .AND. mfIl<=mfI0+22.642 .AND. mcCc>=mcO0+21.4  ;
           .AND. mcCc<=mcO0+46.4 .AND. ((wnIv="1" .AND. viTe<>12) .OR.  ;
           (wnIv="2" .AND. viTe<>10))
           IF wnIv="1"
                STORE 12 TO ciTx
           ELSE
                STORE 10 TO ciTx
           ENDIF
      CASE mfIl>=mfI0+21.5 .AND. mfIl<=mfI0+22.642 .AND. wnIv="1" .AND.  ;
           mcCc>=mcO0+46.6 .AND. mcCc<=mcO0+79.0 .AND. viTe<>13
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+23.642 .AND. mfIl<=mfI0+25 .AND. mcCc>=mcO0+0.2  ;
           .AND. mcCc<=mcO0+91.8 .AND. ((wnIv="1" .AND. viTe<>14) .OR.  ;
           (wnIv="2" .AND. viTe<>11) .OR. (wnIv="3" .AND. viTe<>10) .OR.  ;
           (wnIv="4" .AND. viTe<>06))
           DO CASE
                CASE wnIv="1"
                     STORE 14 TO ciTx
                CASE wnIv="2"
                     STORE 11 TO ciTx
                CASE wnIv="3"
                     STORE 10 TO ciTx
                CASE wnIv="4"
                     STORE 06 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+10.635 .AND. mfIl<=mfI0+12 .AND. vcSt=1 .AND. mcCc>= ;
           vcL2+66 .AND. mcCc<=vcL2+101.2 .AND. ((wnIv="1" .AND. viTe<> ;
           15) .OR. (wnIv="2" .AND. viTe<>12) .OR. (wnIv="3" .AND. viTe<> ;
           11) .OR. (wnIv="4" .AND. viTe<>07))
           DO CASE
                CASE wnIv="1"
                     STORE 15 TO ciTx
                CASE wnIv="2"
                     STORE 12 TO ciTx
                CASE wnIv="3"
                     STORE 11 TO ciTx
                CASE wnIv="4"
                     STORE 07 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+12.207 .AND. mfIl<=mfI0+13.421 .AND. vcSt=1 .AND.  ;
           mcCc>=vcL2+66 .AND. mcCc<=vcL2+101.2 .AND. ((wnIv="1" .AND.  ;
           viTe<>16) .OR. (wnIv="2" .AND. viTe<>13) .OR. (wnIv="3" .AND.  ;
           viTe<>12) .OR. (wnIv="4" .AND. viTe<>08))
           DO CASE
                CASE wnIv="1"
                     STORE 16 TO ciTx
                CASE wnIv="2"
                     STORE 13 TO ciTx
                CASE wnIv="3"
                     STORE 12 TO ciTx
                CASE wnIv="4"
                     STORE 08 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+15.921 .AND. mfIl<=mfI0+17.135 .AND. viMp=1 .AND.  ;
           mcCc>=vcL2+66.2 .AND. mcCc<=vcL2+101.2 .AND. ((wnIv="1" .AND.  ;
           viTe<>17) .OR. (wnIv="2" .AND. viTe<>14) .OR. (wnIv="3" .AND.  ;
           viTe<>13) .OR. (wnIv="4" .AND. viTe<>09))
           DO CASE
                CASE wnIv="1"
                     STORE 17 TO ciTx
                CASE wnIv="2"
                     STORE 14 TO ciTx
                CASE wnIv="3"
                     STORE 13 TO ciTx
                CASE wnIv="4"
                     STORE 09 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+17.492 .AND. mfIl<=mfI0+18.635 .AND. viMp=1 .AND.  ;
           mcCc>=vcL2+66.2 .AND. mcCc<=vcL2+101.2 .AND. ((wnIv="1" .AND.  ;
           viTe<>18) .OR. (wnIv="2" .AND. viTe<>15) .OR. (wnIv="3" .AND.  ;
           viTe<>14) .OR. (wnIv="4" .AND. viTe<>10))
           DO CASE
                CASE wnIv="1"
                     STORE 18 TO ciTx
                CASE wnIv="2"
                     STORE 15 TO ciTx
                CASE wnIv="3"
                     STORE 14 TO ciTx
                CASE wnIv="4"
                     STORE 10 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+20.707 .AND. mfIl<=mfI0+21.921 .AND. mcCc>=vcL2+ ;
           66.2 .AND. mcCc<=vcL2+118.8 .AND. ((wnIv="1" .AND. viTe<>19)  ;
           .OR. (wnIv="3" .AND. viTe<>15))
           DO CASE
                CASE wnIv="1"
                     STORE 19 TO ciTx
                CASE wnIv="3"
                     STORE 15 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+15.285 .AND. mfIl<=mfI0+16.428 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+52.8 .AND. wnIv$"24" .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+16.785 .AND. mfIl<=mfI0+17.928 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+38.2 .AND. wnIv$"24" .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+18.285 .AND. mfIl<=mfI0+19.428 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+52.8 .AND. wnIv="3" .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+19.785 .AND. mfIl<=mfI0+20.928 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+38.2 .AND. wnIv="3" .AND. viTe<>9
           STORE 9 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_2111a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mkEy<>99
           STORE ciTx TO viTe
           STORE 99 TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Hl1_2111a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wnIv$"13"
           @ pfIl+0, 1 SAY  ;
             "Este Mantenimiento es un programa, en donde se pueden crear, modificar,   "
           @ pfIl+1, 1 SAY  ;
             "anular y/o eliminar los Productos, Servicios o Activos Fijos que figurarán en"
           @ pfIl+2, 1 SAY "el Sistema."
      CASE wnIv$"24"
           @ pfIl+0, 1 SAY  ;
             "Este Mantenimiento es un programa limitado, en donde se pueden crear y"
           @ pfIl+1, 1 SAY  ;
             "modificar los Productos, Servicios o Activos Fijos que figurarán en el Sis-"
           @ pfIl+2, 1 SAY "tema."
 ENDCASE
 STORE pfIl+4 TO pfIl
 @ pfIl, 1 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "ESC" STYLE "BT"
 @ pfIl+1, 06 SAY "F10" STYLE "BT"
 @ pfIl+2, 06 SAY "F1" STYLE "BT"
 @ pfIl+0, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 26 SAY "Ayuda del Programa"
 IF viTe=1
      @ pfIl+1, 26 SAY "Regresar al Menú Principal"
 ELSE
      @ pfIl+1, 26 SAY "Regresar al primer campo"
 ENDIF
 STORE pfIl+3 TO pfIl
 IF viTe=1 .OR. wnIv$"13"
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "F2" STYLE "BT"
      IF viTe=1
           @ pfIl, 26 SAY "Consulta alfabética de Productos/Servicios"
      ELSE
           @ pfIl, 26 SAY "Poner Foto en Producto"
      ENDIF
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 24 SAY ":" STYLE "BT"
 @ pfIl, 06 SAY "F3" STYLE "BT"
 IF viTe=1
      @ pfIl, 26 SAY "Buscar palabra o frase en Descripción"
 ELSE
      @ pfIl, 26 SAY "Ver % de Utilidad/Viceversa"
 ENDIF
 STORE pfIl+1 TO pfIl
 IF viTe=1 .OR. (miMp=1 .AND. viMp=1) .OR. ((wnIv="1" .AND. viTe=14) .OR.  ;
    (wnIv="2" .AND. viTe=11) .OR. (wnIv="3" .AND. viTe=10) .OR. (wnIv="4"  ;
    .AND. viTe=06))
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "F4" STYLE "BT"
      DO CASE
           CASE viTe=1
                @ pfIl, 26 SAY "Consulta x Códigos de Productos/Servicios"
           CASE (wnIv="1" .AND. viTe=14) .OR. (wnIv="2" .AND. viTe=11)  ;
                .OR. (wnIv="3" .AND. viTe=10) .OR. (wnIv="4" .AND. viTe=06)
                @ pfIl, 26 SAY "Consulta x Códigos de Productos Base"
           OTHERWISE
                @ pfIl, 26 SAY "Ver más datos de Importación"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+3, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "F5" STYLE "BT"
 @ pfIl+1, 06 SAY "F6" STYLE "BT"
 @ pfIl+2, 06 SAY "F7" STYLE "BT"
 @ pfIl+3, 06 SAY "F8" STYLE "BT"
 @ pfIl+0, 26 SAY "Inicio del Archivo"
 @ pfIl+1, 26 SAY "Final del Archivo"
 @ pfIl+2, 26 SAY "Registro siguiente"
 @ pfIl+3, 26 SAY "Registro anterior"
 STORE pfIl+4 TO pfIl
 IF viTe<>1
      DO CASE
           CASE viTe=13 .AND. wnIv$"12"
                @ pfIl, 24 SAY ":" STYLE "BT"
                @ pfIl, 06 SAY "F9" STYLE "BT"
                @ pfIl, 26 SAY  ;
                  "Cambiar entre Tamaño/Talla o Peso o %Detracción"
                STORE pfIl+1 TO pfIl
           CASE viTe=15 .AND. wnIv$"13"
                @ pfIl, 24 SAY ":" STYLE "BT"
                @ pfIl, 06 SAY "F9" STYLE "BT"
                @ pfIl, 26 SAY "Cambiar a Tiempo de Stock Mínimo/Viceversa"
                STORE pfIl+1 TO pfIl
           OTHERWISE
                @ pfIl, 24 SAY ":" STYLE "BT"
                @ pfIl, 06 SAY "F9" STYLE "BT"
                @ pfIl, 26 SAY "Cambiar de Lista de Precios"
                STORE pfIl+1 TO pfIl
      ENDCASE
 ENDIF
 @ pfIl, 24 SAY ":" STYLE "BT"
 @ pfIl, 06 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl, 26 SAY "Ir al campo inferior, llegando al final se graba"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 26 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "CTRL ->" STYLE "BT"
 @ pfIl+1, 06 SAY "<- CTRL" STYLE "BT"
 @ pfIl+0, 26 SAY "Ir al campo derecho, llegando al final se graba"
 @ pfIl+1, 26 SAY "Ir al campo izquierdo"
 STORE pfIl+2 TO pfIl
 IF wnIv$"13" .AND. viTe>1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 26 SAY "Borrar registro"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "CTRL HOME" STYLE "BT"
      @ pfIl, 26 SAY "Ir al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 06 SAY "CTRL END" STYLE "BT"
 @ pfIl+1, 06 SAY "ENTER" STYLE "BT"
 @ pfIl+0, 26 SAY "Ir al último campo"
 @ pfIl+1, 26 SAY "Ir al siguiente campo, llegando al final se graba"
 STORE pfIl+2 TO pfIl
 IF viTe=1
      @ pfIl+0, 24 SAY ":" STYLE "BT"
      @ pfIl+1, 24 SAY ":" STYLE "BT"
      @ pfIl+0, 06 SAY "ALT C" STYLE "BT"
      @ pfIl+1, 06 SAY "ALT S" STYLE "BT"
      @ pfIl+0, 26 SAY "Codificación Nemotécnica"
      @ pfIl+1, 26 SAY "Pone siguiente código nuevo del actual"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF wnIv$"13"
      @ pfIl+0, 24 SAY ":" STYLE "BT"
      @ pfIl+1, 24 SAY ":" STYLE "BT"
      @ pfIl+0, 06 SAY "ALT DEL" STYLE "BT"
      @ pfIl+1, 06 SAY "ALT Z" STYLE "BT"
      @ pfIl+0, 26 SAY "Activar/Anular código"
      @ pfIl+1, 26 SAY "Poner codigo CUBSO"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 06 SAY "TAB" STYLE "BT"
      @ pfIl, 26 SAY "Grabar, Recalcular y regresar al primer campo"
      @ pfIl+1, 26 SAY "La Grabación x Carita Feliz RECALCULA Stocks"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_File1
 DO q1_0000a
 CLOSE INDEXES
 CLOSE DATABASES
 SET READBORDER OFF
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 STORE 99 TO mkEy
 RELEASE viTe, ciTe, viT1, ciT1, ciTx, vfFr, ifFr, ufFr, ffFr, cfFr, vfFt,  ;
         ifFt, ufFt
 RELEASE ffFt, cfFt, vfFu, ifFu, ufFu, ffFu, cfFu, vfFv, ifFv, ufFv, ffFv,  ;
         cfFv, vfFw
 RELEASE ifFw, ufFw, ffFw, cfFw, vfFx, ifFx, ufFx, ffFx, cfFx, vfFy, ifFy,  ;
         ufFy, ffFy
 RELEASE cfFy, vfFz, ifFz, ufFz, ffFz, cfFz, vcOd, ccOd, vtPo, itPo, utPo,  ;
         xtPo, ctPo
 RELEASE vnTp, inTp, unTp, cnTp, voP1, ioP1, uoP1, voP2, ioP2, uoP2, voP3,  ;
         ioP3, uoP3
 RELEASE voP4, ioP4, uoP4, voP5, ioP5, uoP5, voP6, ioP6, uoP6, voP7, ioP7,  ;
         uoP7, vtI1
 RELEASE vtI2, vtI3, vtI4, vtI5, vtI6, vtIp, vnTi, vtPp, ctPp, vtP1, viMp,  ;
         vdEs, cdEs
 RELEASE vdCr, vcUv, vcUc, vcUx, vnUv, vnUc, vnUx, vmD1, vmD2, vmD3, vvV1,  ;
         vvV2, vvV3
 RELEASE vvV4, vvV5, vvV6, vvV7, vvV8, vvV9, vvV0, vvVa, vvVb, vvVc, vvVd,  ;
         vvVe, vvVf
 RELEASE vvVg, vvVh, vvVi, vvVj, cvV1, cvV2, vmV1, vmV2, vmV3, vmV4, vmV5,  ;
         vmV6, vmV7
 RELEASE vmV8, vmV9, vmV0, vmVa, vmVb, vmVc, vmVd, vmVe, vmVf, vmVg, vmVh,  ;
         vmVi, vmVj
 RELEASE cmV1, cmV2, vvTa, vcSt, vsRr, vmIn, vmAx, vvCp, vcPs, vpRo, vmAr,  ;
         vlA1, vlA2
 RELEASE vlA3, vaN1, vaN2, vaN3, veSp, vgRu, vnGr, veSt, vfBi, vcBi, vfB1,  ;
         vcB1, vfB2
 RELEASE vcB2, vfB3, vcB3, vfB4, vcB4, vfB5, vcB5, vfB6, vcB6, vfB7, vcB7,  ;
         vfB8, vcB8
 RELEASE vfB9, vcB9, vfB0, vcB0, vfBa, vcBa, vfBb, vcBb, vfBc, vcBc, vfBd,  ;
         vcBd, vtB1
 RELEASE vtB2, vtB3, vtB4, vtB5, vuTi, cuTi, vuT2, vuT3, vuT4, vuT5, vuT6,  ;
         vuT7, vuT8
 RELEASE vuT9, vuT0, vdTt, vdT2, vdT3, vdT4, vdT5, vdT6, vdT7, vdT8, vdT9,  ;
         vdT0, vlIs
 RELEASE vcDg, icDg, ucDg, ccDg, vdCc, idCc, udCc, cdCc, vdC1, idC1, udC1,  ;
         cdC1, vdC2
 RELEASE idC2, udC2, cdC2, vdC3, idC3, udC3, cdC3, vdC4, idC4, udC4, cdC4,  ;
         vdC5, idC5
 RELEASE udC5, cdC5, vdC6, idC6, udC6, cdC6, vdC7, idC7, udC7, cdC7, ckEy,  ;
         vsW1, vsWg
 RELEASE vsWw, csWw, vsWr, vlEt, tcAn, vsTo, vsLc, vtAm, vnEm, vpXc, vcX1,  ;
         vcX2, vbAs
 RELEASE vdBa, vaDv, vpRm, tpRm, cfI0, vfOt, cfOt, vdIn, vcUb, vtIe, vmI1,  ;
         pfIl, pcOl
 RELEASE pfR1, pfR2, pfR3, pfR4, vfEc, tcUn, tvAl, tnEt, tgAs, tdCt, vuLt,  ;
         vcMx, vsLd
 RELEASE vpEs, vpE1, vcL0, vcL1, vcL2, vcL3, vdIr, vfE1, vfE2, vcO1, vcO2,  ;
         vpDt, vdEt
 RELEASE vmNd
 RELEASE vpAn_11, vpAn_let, vpAn_le1, vpAn_le2, vpAn_le3, vpAn_le4, vpAn_le5
 RELEASE vpAn_le6
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
