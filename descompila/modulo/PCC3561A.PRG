 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO tm1_3560a IN PCC3560A
 DO tm2_3560a IN PCC3560A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_3560a IN PCC3560A
 IF mkEy=k_Esc
      DO deL_file1 IN PCC3560A
      RETURN
 ENDIF
 SELECT deT_ing_caja
 DO orD_0000a WITH "3511", "C", "F3511DOC", "A"
 IF mkEy=k_Esc
      DO deL_file1 IN PCC3560A
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_3560a IN PCC3560A
 SET READBORDER ON
 DO p00_3560a IN PCC3560A WITH "0", "2"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3561a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3560a IN PCC3560A
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3561a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3561a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                STORE k_Tab TO mkEy
                DO CASE
                     CASE dfEm=CTOD("  /  /    ")
                          STORE "Fecha inicial no puede estar vacía..." TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                          LOOP
                     CASE hfEm=CTOD("  /  /    ")
                          STORE "Fecha final no puede estar vacía..." TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                          LOOP
                     CASE dfEm>hfEm
                          STORE "Fecha inicial es mayor que fecha final..."  ;
                                TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                          LOOP
                ENDCASE
                IF cdFe<>dfEm .OR. chFe<>hfEm
                     SELECT teMporal
                     SET FILTER TO
                     ZAP
                     REINDEX
                     SET ORDER TO FTM1VEN
                     SELECT teMporal_2
                     SET FILTER TO
                     ZAP
                     REINDEX
                     SET ORDER TO FTM2VEN
                     SET ESCAPE ON
                     ON ESCAPE STORE K_ESC TO MKEY
                     STORE k_Tab TO mkEy
                     DO leE_3561a
                     WAIT CLEAR
                     SET ESCAPE OFF
                     ON ESCAPE
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF mkEy<>k_Tab
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                SELECT teMporal
                SET FILTER TO
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                DO suM_3560a IN PCC3560A
                DO toT_3561a
                SET ORDER TO FTM1NVE
                GOTO TOP
                STORE dfEm TO cdFe
                STORE hfEm TO chFe
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
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
                DO pcC3561b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET COLOR TO RGB(0,0,0,224,226,209)
                @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
                STORE 99 TO mkEy
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO geT_3560a IN PCC3560A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Tit_3561a
 DO CASE
      CASE mrEs="3" .AND. vsW0=1
           DO coL_beige
           @iFIL-2.3,mCO0+085.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+106.1 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+078.1 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+098.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beive
           @iFIL-2.3,mCO0+126.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+146.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+118.9 Say "       Comisión   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+139.4 Say "       Comisión   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beiaz
           @iFIL-2.3,mCO0+167.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+187.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+159.8 Say "Com.x Doc.Emitid  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+180.1 Say "Com.x Doc.Emitid  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="3" .AND. vsW0=2
           DO coL_beige
           @iFIL-2.3,mCO0+085.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+106.1 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+078.1 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+098.6 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beive
           @iFIL-2.3,mCO0+126.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+146.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+118.9 Say "       Comisión   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+139.4 Say "       Comisión   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beiaz
           @iFIL-2.3,mCO0+167.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+187.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+159.8 Say "Com.x Doc.Emitid  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+180.1 Say "Com.x Doc.Emitid  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="3" .AND. vsW0=3
           DO coL_beive
           @iFIL-2.3,mCO0+085.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+106.1 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+126.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+146.4 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+167.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+187.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+078.1 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+098.6 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+118.9 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+139.4 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+159.8 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+180.1 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="3" .AND. vsW0=4
           DO coL_beive
           @iFIL-2.3,mCO0+085.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+106.1 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+126.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+146.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+167.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+187.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+078.1 Say " Comision-Factur  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+098.6 Say " Comision-Boletas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+118.9 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+139.4 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+159.8 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+180.1 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="3" .AND. vsW0=5
           DO coL_beiaz
           @iFIL-2.3,mCO0+085.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+106.1 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+126.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+146.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+167.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+187.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+078.1 Say "Comis.x Fact.Emiti" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+098.6 Say "Comis.x Bol.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+118.9 Say "Comis.Total Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+139.4 Say "Comis.x Fact.Emiti" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+159.8 Say "Comis.x Bol.Emiti " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+180.1 Say "Comis.Total Emiti " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="3" .AND. vsW0=6
           DO coL_beiaz
           @iFIL-2.3,mCO0+085.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+106.1 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+126.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+146.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+167.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+187.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+078.1 Say "V.V.Tot.Doc.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+098.6 Say "Comis.x Fact.Emiti" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+118.9 Say "Comis.x Bol.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+139.4 Say "V.V.Tot.Doc.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+159.8 Say "Comis.x Fact.Emiti" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+180.1 Say "Comis.x Bol.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="4" .AND. vsW0=1
           DO coL_beige
           @iFIL-2.3,mCO0+097.0 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+116.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+157.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+177.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+089.2 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+109.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+150.4 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+170.8 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beive
           @iFIL-2.3,mCO0+137.8 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+198.2 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+130.0 Say "   Comisión Total " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+191.2 Say "   Comisión Total " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beiaz
           @iFIL-2.3,mCO0+218.4 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+238.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+211.6 Say "Comis.Doc.Emitid  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+231.9 Say "Comis.Doc.Emitid  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="4" .AND. vsW0=2
           DO coL_beige
           @iFIL-2.3,mCO0+097.0 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+116.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+089.2 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+109.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beive
           @iFIL-2.3,mCO0+137.8 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+157.4 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+177.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+198.2 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+218.4 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+238.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+130.0 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+150.4 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+170.8 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+191.2 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+211.6 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+231.9 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="4" .AND. vsW0=3
           DO coL_beige
           @iFIL-2.3,mCO0+097.0 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+116.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+089.2 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+109.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beive
           @iFIL-2.3,mCO0+137.8 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+157.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+177.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+198.2 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+218.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+238.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+130.0 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+150.4 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+170.8 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+191.2 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+211.6 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+231.9 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="4" .AND. vsW0=4
           DO coL_beiaz
           @iFIL-2.3,mCO0+097.0 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+116.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+137.8 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+157.4 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+177.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+198.2 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+218.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+238.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+089.2 Say "V.V.Tot.Doc.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+109.6 Say "Comis.x Fact.Emiti" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+130.0 Say "Comis.x Bol.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+150.4 Say "Comis.Total Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+170.8 Say "V.V.Tot.Doc.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+191.2 Say "Comis.x Fact.Emiti" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+211.6 Say "Comis.x Bol.Emiti " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+231.9 Say "Comis.Total Emiti " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE vsW0=1
           DO coL_beige
           @iFIL-2.3,mCO0+073.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+093.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+235.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+065.6 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+085.9 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+228.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beive
           @iFIL-2.3,mCO0+114.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+134.8 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+155.2 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+174.5 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+194.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+215.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+256.1 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+106.3 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+126.8 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+147.2 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+167.5 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+187.9 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+208.3 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+249.1 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE vsW0=2
           DO coL_beige
           @iFIL-2.3,mCO0+073.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+093.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+235.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+065.6 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+085.9 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+228.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beive
           @iFIL-2.3,mCO0+114.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+134.8 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+155.2 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+174.5 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+194.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+215.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+256.1 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+106.3 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+126.8 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+147.2 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+167.5 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+187.9 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+208.3 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+249.1 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE vsW0=3
           DO coL_beige
           @iFIL-2.3,mCO0+073.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+093.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+134.8 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+155.2 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+065.6 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+085.9 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+126.8 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+147.2 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beive
           @iFIL-2.3,mCO0+114.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+174.5 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+106.3 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+167.5 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beiaz
           @iFIL-2.3,mCO0+194.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+215.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+235.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+256.1 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+187.9 Say "V.V.Tot.Doc.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+208.3 Say "Comis.Total Emiti " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+228.6 Say "V.V.Tot.Doc.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+249.1 Say "Comis.Total Emiti " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE vsW0=4
           DO coL_beige
           @iFIL-2.3,mCO0+073.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+174.5 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+065.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+167.5 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           DO coL_beiaz
           @iFIL-2.3,mCO0+093.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+114.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+134.8 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+155.2 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+194.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+215.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+235.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+256.1 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+085.9 Say "V.V.Tot.Doc.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+106.3 Say "Comis.x Fact.Emiti" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+126.8 Say "Comis.x Bol.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+147.2 Say "Comis.Total Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+187.9 Say "V.V.Tot.Doc.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+208.3 Say "Comis.x Fact.Emiti" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+228.6 Say "Comis.x Bol.Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+249.1 Say "Comis.Total Emitid" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
 ENDCASE
ENDPROC
*
PROCEDURE Tot_3561a
 DO coL_beige
 DO CASE
      CASE mrEs="3" .AND. vsW0=1
           @fFIL+1.4,mCO0+078.1 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beive
           @fFIL+1.4,mCO0+118.9 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beiaz
           @fFIL+1.4,mCO0+159.8 Say tEM1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tEM2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW0=2
           @fFIL+1.4,mCO0+078.1 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beive
           @fFIL+1.4,mCO0+118.9 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beiaz
           @fFIL+1.4,mCO0+159.8 Say tEM1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tEM2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW0=3
           DO coL_beive
           @fFIL+1.4,mCO0+078.1 Say tFA1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tBO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+118.9 Say tNC1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tLE1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+159.8 Say tNP1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW0=4
           DO coL_beive
           @fFIL+1.4,mCO0+078.1 Say tFA2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tBO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+118.9 Say tNC2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tLE2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+159.8 Say tNP2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW0=5
           DO coL_beiaz
           @fFIL+1.4,mCO0+078.1 Say tEF1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tEB1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+118.9 Say tEM1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tEF2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+159.8 Say tEB2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tEM2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW0=6
           DO coL_beiaz
           @fFIL+1.4,mCO0+078.1 Say tSOE Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tEF1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+118.9 Say tEB1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tUSE Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+159.8 Say tEF2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tEB2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW0=1
           @fFIL+1.4,mCO0+089.2 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+109.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+150.4 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+170.8 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beive
           @fFIL+1.4,mCO0+130.0 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+191.2 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beiaz
           @fFIL+1.4,mCO0+211.6 Say tEM1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+231.9 Say tEM2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW0=2
           @fFIL+1.4,mCO0+089.2 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+109.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beive
           @fFIL+1.4,mCO0+130.0 Say tFA1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+150.4 Say tBO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+170.8 Say tNP1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+191.2 Say tNC1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+211.6 Say tLE1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+231.9 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW0=3
           @fFIL+1.4,mCO0+089.2 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+109.6 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beive
           @fFIL+1.4,mCO0+130.0 Say tFA2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+150.4 Say tBO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+170.8 Say tNP2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+191.2 Say tNC2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+211.6 Say tLE2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+231.9 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW0=4
           DO coL_beiaz
           @fFIL+1.4,mCO0+089.2 Say tSOE Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+109.6 Say tEF1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+130.0 Say tEB1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+150.4 Say tEM1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+170.8 Say tUSE Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+191.2 Say tEF2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+211.6 Say tEB2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+231.9 Say tEM2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE vsW0=1
           @fFIL+1.4,mCO0+065.6 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+085.9 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+228.6 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beive
           @fFIL+1.4,mCO0+106.3 Say tFA1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+126.8 Say tBO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+147.2 Say tNP1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+167.5 Say tNC1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+187.9 Say tLE1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+208.3 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+249.1 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE vsW0=2
           @fFIL+1.4,mCO0+065.6 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+085.9 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+228.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beive
           @fFIL+1.4,mCO0+106.3 Say tFA2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+126.8 Say tBO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+147.2 Say tNP2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+167.5 Say tNC2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+187.9 Say tLE2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+208.3 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+249.1 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE vsW0=3
           @fFIL+1.4,mCO0+065.6 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+085.9 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+126.8 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+147.2 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beive
           @fFIL+1.4,mCO0+106.3 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+167.5 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beiaz
           @fFIL+1.4,mCO0+187.9 Say tSOE Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+208.3 Say tEM1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+228.6 Say tUSE Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+249.1 Say tEM2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE vsW0=4
           @fFIL+1.4,mCO0+065.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+167.5 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           DO coL_beiaz
           @fFIL+1.4,mCO0+085.9 Say tSOE Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+106.3 Say tEF1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+126.8 Say tEB1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+147.2 Say tEM1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+187.9 Say tUSE Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+208.3 Say tEF2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+228.6 Say tEB2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+249.1 Say tEM2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Res_3561a
 DO p00_3560a IN PCC3560A WITH "1", "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(ivEn))<>0
      SELECT teMporal
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_3560b IN PCC3560B WITH "v", "c"
      DO seE_3560b IN PCC3560B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1ven=vvEn
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3560b IN PCC3560B WITH "v", "i"
           DO muE_3560b IN PCC3560B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_3560b IN PCC3560B WITH "i"
      DO paN_3561b IN PCC3561B
      STORE cfIl TO vfIl
      DO muE_3560b IN PCC3560B WITH "c", "v"
      DO seE_3560b IN PCC3560B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Lee_3561a
 SELECT peNd_vtas
 DO orD_0000a WITH "3500", "C", "F3500VFC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 STORE "**" TO vvEn
 STORE 00 TO tsOt, tsOl, tuSt, tuSd, tfA1, tfA2, tbO1, tbO2, tlE1, tlE2,  ;
       tnC1, tnC2
 STORE 00 TO tnP1, tnP2, tcO1, tcO2, tsOe, tuSe, teF1, teF2, teB1, teB2,  ;
       teM1, teM2
 DO WHILE  .NOT. EOF()
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           SELECT teMporal
           ZAP
           REINDEX
           WAIT CLEAR
           RETURN
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+f3500ven+"-"+ ;
           DTOC(f3500fem)+"..."+CHR(13)+CHR(13)+"Presionar ESC para Salir..."
      DO CASE
           CASE f3500fca<dfEm .OR. f3500ven<>vvEn
                STORE f3500ven TO vvEn
                SET NEAR ON
                SEEK vvEn+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4,  ;
                     2)+SUBSTR(DTOC(dfEm), 1, 2)
                SET NEAR OFF
                IF EOF()
                     EXIT
                ENDIF
                LOOP
           CASE f3500fca>hfEm
                SET NEAR ON
                SEEK vvEn+"ZZZZ"
                SET NEAR OFF
                IF EOF()
                     EXIT
                ENDIF
                LOOP
           CASE f3500tdo<>"FA" .AND. f3500tdo<>"FE" .AND. f3500tdo<>"FB"  ;
                .AND. f3500tdo<>"BO" .AND. f3500tdo<>"BE" .AND. f3500tdo<> ;
                "BC" .AND. f3500tdo<>"NC" .AND. f3500tdo<>"N1" .AND.  ;
                f3500tdo<>"N3" .AND. f3500tdo<>"NP"
                SKIP
                IF EOF()
                     EXIT
                ENDIF
                LOOP
      ENDCASE
      STORE f3500tdo TO vtDo
      STORE f3500ser TO vsEr
      STORE f3500doc TO vdOc
      STORE f3500fem TO vfEm
      STORE f3500nom TO vcLi
      STORE f3500mon TO vmOn
      STORE f3500pig TO vpIg
      STORE f3500fca TO vfCa
      STORE f3500tot TO vtOt
      SELECT veNdedores
      SEEK vvEn
      IF EOF()
           STORE "No registrado..." TO vnVe
           STORE 0 TO vpCo, vpTo, vpC2
      ELSE
           STORE f9113nom TO vnVe
           STORE f9113com TO vpCo
           STORE f9113por TO vpTo
           STORE f9113cm2 TO vpC2
      ENDIF
      SELECT caB_facturas
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           STORE f1300com TO vpCo
      ENDIF
      DO CASE
           CASE vtDo="NP"
                STORE vtOt TO vnEt
           OTHERWISE
                STORE ROUND(vtOt/(1+(vpIg/100)), 2) TO vnEt
                IF vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3"
                     STORE vnEt*-1 TO vnEt
                ENDIF
      ENDCASE
      STORE ROUND(vnEt*vpCo/100, 2) TO vcM1
      SELECT teMporal
      SEEK vvEn
      IF EOF()
           APPEND BLANK
           REPLACE ftM1ven WITH vvEn
           REPLACE ftM1nve WITH vnVe
           REPLACE ftM1sot WITH 0
           REPLACE ftM1sol WITH 0
           REPLACE ftM1ust WITH 0
           REPLACE ftM1usd WITH 0
           REPLACE ftM1pco WITH vpCo
           REPLACE ftM1fa1 WITH 0
           REPLACE ftM1fa2 WITH 0
           REPLACE ftM1bo1 WITH 0
           REPLACE ftM1bo2 WITH 0
           REPLACE ftM1le1 WITH 0
           REPLACE ftM1le2 WITH 0
           REPLACE ftM1nc1 WITH 0
           REPLACE ftM1nc2 WITH 0
           REPLACE ftM1co1 WITH 0
           REPLACE ftM1co2 WITH 0
           REPLACE ftM1pc2 WITH vpC2
           REPLACE ftM1soe WITH 0
           REPLACE ftM1use WITH 0
           REPLACE ftM1ef1 WITH 0
           REPLACE ftM1ef2 WITH 0
           REPLACE ftM1eb1 WITH 0
           REPLACE ftM1eb2 WITH 0
           REPLACE ftM1em1 WITH 0
           REPLACE ftM1em2 WITH 0
      ENDIF
      DO CASE
           CASE vmOn=1
                REPLACE ftM1sot WITH ftM1sot+vtOt
                REPLACE ftM1sol WITH ftM1sol+vnEt
                REPLACE ftM1co1 WITH ftM1co1+vcM1
                DO CASE
                     CASE vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"
                          REPLACE ftM1fa1 WITH ftM1fa1+vcM1
                     CASE vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC"
                          REPLACE ftM1bo1 WITH ftM1bo1+vcM1
                     CASE vtDo="LE"
                          REPLACE ftM1le1 WITH ftM1le1+vcM1
                     CASE vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3"
                          REPLACE ftM1nc1 WITH ftM1nc1+vcM1
                     CASE vtDo="NP"
                          REPLACE ftM1np1 WITH ftM1np1+vcM1
                ENDCASE
           CASE vmOn=2
                REPLACE ftM1ust WITH ftM1ust+vtOt
                REPLACE ftM1usd WITH ftM1usd+vnEt
                REPLACE ftM1co2 WITH ftM1co2+vcM1
                DO CASE
                     CASE vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"
                          REPLACE ftM1fa2 WITH ftM1fa2+vcM1
                     CASE vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC"
                          REPLACE ftM1bo2 WITH ftM1bo2+vcM1
                     CASE vtDo="LE"
                          REPLACE ftM1le2 WITH ftM1le2+vcM1
                     CASE vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3"
                          REPLACE ftM1nc2 WITH ftM1nc2+vcM1
                     CASE vtDo="NP"
                          REPLACE ftM1np2 WITH ftM1nc2+vcM1
                ENDCASE
      ENDCASE
      SELECT teMporal_2
      APPEND BLANK
      REPLACE ftM2ven WITH vvEn
      REPLACE ftM2tdo WITH vtDo
      REPLACE ftM2ser WITH vsEr
      REPLACE ftM2doc WITH vdOc
      REPLACE ftM2cli WITH vcLi
      REPLACE ftM2fem WITH vfEm
      REPLACE ftM2fca WITH vfCa
      REPLACE ftM2mon WITH vmOn
      REPLACE ftM2tot WITH vtOt
      REPLACE ftM2net WITH vnEt
      REPLACE ftM2pco WITH vpCo
      REPLACE ftM2cm1 WITH vcM1
      REPLACE ftM2pc2 WITH vpC2
      REPLACE ftM2pto WITH vpTo
      REPLACE ftM2emi WITH 0
      SELECT peNd_vtas
      SKIP
 ENDDO
 SELECT peNd_vtas
 DO orD_0000a WITH "3500", "C", "F3500FEM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm),  ;
      1, 2)
 SET NEAR OFF
 DO WHILE  .NOT. EOF() .AND. f3500fem<=hfEm
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           SELECT teMporal
           ZAP
           REINDEX
           WAIT CLEAR
           RETURN
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+f3500ven+"-"+ ;
           DTOC(f3500fem)+"..."+CHR(13)+CHR(13)+"Presionar ESC para Salir..."
      IF f3500tdo<>"FA" .AND. f3500tdo<>"FE" .AND. f3500tdo<>"FC" .AND.  ;
         f3500tdo<>"BO" .AND. f3500tdo<>"BE" .AND. f3500tdo<>"BC"
           SKIP
           IF EOF()
                EXIT
           ENDIF
           LOOP
      ENDIF
      STORE f3500tdo TO vtDo
      STORE f3500ser TO vsEr
      STORE f3500doc TO vdOc
      STORE f3500fem TO vfEm
      STORE f3500nom TO vcLi
      STORE f3500mon TO vmOn
      STORE f3500pig TO vpIg
      STORE f3500fca TO vfCa
      STORE f3500ven TO vvEn
      STORE f3500tot TO vtOt
      DO CASE
           CASE vtDo="NP"
                STORE vtOt TO vnEt
           OTHERWISE
                STORE ROUND(vtOt/(1+(vpIg/100)), 2) TO vnEt
                IF vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3"
                     STORE vnEt*-1 TO vnEt
                ENDIF
      ENDCASE
      SELECT veNdedores
      SEEK vvEn
      IF EOF()
           STORE "No registrado..." TO vnVe
           STORE 0 TO vpCo, vpC2, vpTo
           SELECT peNd_vtas
           SKIP
           LOOP
      ELSE
           STORE f9113nom TO vnVe
           STORE f9113com TO vpCo
           STORE f9113cm2 TO vpC2
           STORE f9113por TO vpTo
           IF vpTo=0
                SELECT peNd_vtas
                SKIP
                LOOP
           ENDIF
      ENDIF
      STORE ROUND((vnEt*vpTo/100)*vpC2/100, 2) TO veMi
      SELECT teMporal
      SEEK vvEn
      IF EOF()
           APPEND BLANK
           REPLACE ftM1ven WITH vvEn
           REPLACE ftM1nve WITH vnVe
           REPLACE ftM1sot WITH 0
           REPLACE ftM1sol WITH 0
           REPLACE ftM1ust WITH 0
           REPLACE ftM1usd WITH 0
           REPLACE ftM1pco WITH vpCo
           REPLACE ftM1fa1 WITH 0
           REPLACE ftM1fa2 WITH 0
           REPLACE ftM1bo1 WITH 0
           REPLACE ftM1bo2 WITH 0
           REPLACE ftM1le1 WITH 0
           REPLACE ftM1le2 WITH 0
           REPLACE ftM1nc1 WITH 0
           REPLACE ftM1nc2 WITH 0
           REPLACE ftM1co1 WITH 0
           REPLACE ftM1co2 WITH 0
           REPLACE ftM1pc2 WITH vpC2
           REPLACE ftM1soe WITH 0
           REPLACE ftM1use WITH 0
           REPLACE ftM1ef1 WITH 0
           REPLACE ftM1ef2 WITH 0
           REPLACE ftM1eb1 WITH 0
           REPLACE ftM1eb2 WITH 0
           REPLACE ftM1em1 WITH 0
           REPLACE ftM1em2 WITH 0
      ENDIF
      DO CASE
           CASE vmOn=1
                REPLACE ftM1soe WITH ftM1soe+vnEt
                REPLACE ftM1em1 WITH ftM1em1+veMi
                DO CASE
                     CASE vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"
                          REPLACE ftM1ef1 WITH ftM1ef1+veMi
                     CASE vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC"
                          REPLACE ftM1eb1 WITH ftM1eb1+veMi
                ENDCASE
           CASE vmOn=2
                REPLACE ftM1use WITH ftM1use+vnEt
                REPLACE ftM1em2 WITH ftM1em2+veMi
                DO CASE
                     CASE vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"
                          REPLACE ftM1ef2 WITH ftM1ef2+veMi
                     CASE vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC"
                          REPLACE ftM1eb2 WITH ftM1eb2+veMi
                ENDCASE
      ENDCASE
      SELECT teMporal_2
      SEEK vvEn+vtDo+vsEr+vdOc
      IF EOF()
           APPEND BLANK
           REPLACE ftM2ven WITH vvEn
           REPLACE ftM2tdo WITH vtDo
           REPLACE ftM2ser WITH vsEr
           REPLACE ftM2doc WITH vdOc
           REPLACE ftM2cli WITH vcLi
           REPLACE ftM2fem WITH vfEm
           REPLACE ftM2fca WITH vfCa
           REPLACE ftM2mon WITH vmOn
           REPLACE ftM2net WITH vnEt
           REPLACE ftM2pco WITH vpCo
           REPLACE ftM2cm1 WITH 0
      ENDIF
      REPLACE ftM2pc2 WITH vpC2
      REPLACE ftM2emi WITH veMi
      REPLACE ftM2pto WITH vpTo
      SELECT peNd_vtas
      SKIP
 ENDDO
 SELECT peNd_vtas
 SET ORDER TO
ENDPROC
*
PROCEDURE Hl1_3561a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta opción es para mostrar las Comisiones x Documentos emitidos y do-"
 @ pfIl+01, 02 SAY  ;
   "cumentos cancelados. Adicionalmente, crea un cierre correlativo para pa-"
 @ pfIl+02, 02 SAY  ;
   "go de comisiones y se lleva el estado de cuenta del vendedor, segun es-"
 @ pfIl+03, 02 SAY "te cierre."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+09, 18 SAY ":" STYLE "BT"
 @ pfIl+10, 18 SAY ":" STYLE "BT"
 @ pfIl+07, 02 SAY "ESC" STYLE "BT"
 @ pfIl+08, 02 SAY "F10" STYLE "BT"
 @ pfIl+09, 02 SAY "F1" STYLE "BT"
 @ pfIl+10, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+11, 02 SAY "CTRL ->," STYLE "BT"
 @ pfIl+12, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+07, 20 SAY "Regresar al Menú Principal"
 @ pfIl+08, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 20 SAY "Ayuda del Programa"
 @ pfIl+10, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+11, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_files IN PCC3560A
ENDPROC
*
