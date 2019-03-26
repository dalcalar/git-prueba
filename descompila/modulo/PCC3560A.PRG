 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DO tm1_3560a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm2_3560a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_3560a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_3560a
 SET READBORDER ON
 DO p00_3560a WITH "0", "1"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3560a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3560a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_3560a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3560a
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
                     DO leE_3560a
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
                DO suM_3560a
                DO toT_3560a
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
                DO pcC3560b
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
PROCEDURE Get_3560a
 @iFIL-5.2,mCO0+12.5 Get dFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
 @iFIL-5.2,mCO0+33.5 Get hFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
ENDPROC
*
PROCEDURE P00_3560a
 PARAMETER ptPo, ppRg
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-10) TO muFi
 STORE INT(mwCo-4) TO muCo
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-00.6 TO vcO0
 STORE muCo+1 TO vuCo
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+2.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+1 TO ifFs, ufFs, vfFs
 STORE ifFs+(INT(muFi)-5) TO ffFs
 DO CASE
      CASE mrEs="3" .AND. ppRg="1"
           STORE vcO0+142.4 TO vcO1
           STORE 3 TO vuLt
      CASE mrEs="3" .AND. ppRg="2"
           STORE vcO0+118.5 TO vcO1
           STORE 6 TO vuLt
      CASE mrEs="4" .AND. ppRg="1"
           STORE vcO0+194.4 TO vcO1
           STORE 3 TO vuLt
      CASE mrEs="4" .AND. ppRg="2"
           STORE vcO0+170.5 TO vcO1
           STORE 4 TO vuLt
      CASE ppRg="1"
           STORE 2 TO vuLt
           STORE vcO0+211.4 TO vcO1
      CASE ppRg="2"
           STORE 4 TO vuLt
           STORE vcO0+187.3 TO vcO1
 ENDCASE
 IF ppRg="1"
      DO tiT_0000a WITH "Comisiones x Pagos a Cuenta"
 ELSE
      DO tiT_0000a WITH "Comisiones x Doc.Cancelados y x Doc.Emitidos"
 ENDIF
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_beige
 @ ifIl-2.4, mcO0-0.5 TO ifIl-0.1, mcO0+muCo+0.3 PATTERN 1
 DO coLplp
 @ ffIl+1.1, mcO0-0.5 TO ffIl+1.1, mcO0+muCo+0.3
 DO prEsiona WITH "1", "OPCION", mfI0-3.5, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @iFIL-5.2,mCO0+00.8 Say "Desde:" Font "&mLetRom",13 Style "BT"
 @iFIL-5.2,mCO0+28.0 Say "al"     Font "&mLetRom",13 Style "BT"
 DO li1_3560a IN PCC3560A WITH ifIl-0.1, ffIl+1.1
 DO li2_3560a IN PCC3560A WITH ifIl-2.3, ffIl+1.1
 DO coLbln
 @iFIL-1.3,mCO0 Say "Vendedor" Font "&mLetAri",9 Style "BT"
 DO coL_beige
 DO CASE
      CASE mrEs="3"
           @ ffIl+1.1, mcO0+077.7 TO ffIl+2.6, mcO0+muCo+0.2 PATTERN 1
           DO coLplp
           @ ffIl+1.1, mcO0+077.7 TO ffIl+2.6, mcO0+muCo+0.2
           @ ffIl+1.1, mcO0+098.2 TO ffIl+2.6, mcO0+118.7
           @ ffIl+1.1, mcO0+139.0 TO ffIl+2.6, mcO0+159.6
           @ ffIl+1.1, mcO0+179.7 TO ffIl+2.6, mcO0+179.7
      CASE mrEs="4"
           @ ffIl+1.1, mcO0+088.8 TO ffIl+2.6, mcO0+muCo+0.2 PATTERN 1
           DO coLplp
           @ ffIl+1.1, mcO0+088.8 TO ffIl+2.6, mcO0+muCo+0.2
           @ ffIl+1.1, mcO0+109.2 TO ffIl+2.6, mcO0+129.8
           @ ffIl+1.1, mcO0+150.0 TO ffIl+2.6, mcO0+170.5
           @ ffIl+1.1, mcO0+190.7 TO ffIl+2.6, mcO0+211.4
           @ ffIl+1.1, mcO0+231.5 TO ffIl+2.6, mcO0+231.5
      OTHERWISE
           @ ffIl+1.1, mcO0+065.1 TO ffIl+2.6, mcO0+muCo+0.2 PATTERN 1
           DO coLplp
           @ ffIl+1.1, mcO0+065.1 TO ffIl+2.6, mcO0+muCo+0.2
           @ ffIl+1.1, mcO0+085.4 TO ffIl+2.6, mcO0+106.1
           @ ffIl+1.1, mcO0+126.3 TO ffIl+2.6, mcO0+146.9
           @ ffIl+1.1, mcO0+167.2 TO ffIl+2.6, mcO0+187.7
           @ ffIl+1.1, mcO0+207.8 TO ffIl+2.6, mcO0+228.4
           @ ffIl+1.1, mcO0+248.7 TO ffIl+2.6, mcO0+248.7
 ENDCASE
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_3560a IN PCC3560A
 IF ppRg="1"
      DO tiT_3560a IN PCC3560A
      DO toT_3560a IN PCC3560A
 ELSE
      DO tiT_3561a IN PCC3561A
      DO toT_3561a IN PCC3561A
 ENDIF
 DO geT_3560a IN PCC3560A
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Bot_3560a
 IF vuLt<=1
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BOTON", ifIl-4.7, mcO0+muCo-7.8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLblr
 @iFIL-4.5,mCO0+mUCO-5.8 Say Str(vSW0,1,0)+"/"+Str(vULT,1,0) Font "&mLetRom",9 Style "BT"
ENDPROC
*
PROCEDURE Tit_3560a
 DO coL_beige
 DO CASE
      CASE mrEs="3" .AND. vsW0=1
           @iFIL-2.3,mCO0+085.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+106.1 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+126.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+146.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+167.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+187.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+078.1 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+098.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+118.9 Say "Comis.x Pago A/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+139.4 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+159.8 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+180.1 Say "Comis.x Pago A/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="3" .AND. vsW0=2
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
      CASE mrEs="3" .AND. vsW0=3
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
      CASE mrEs="4" .AND. vsW0=1
           @iFIL-2.3,mCO0+097.0 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+116.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+137.8 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+157.4 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+177.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+198.2 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+218.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+238.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+089.2 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+109.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+130.0 Say "   Comisión Total " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+150.4 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+170.8 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+191.2 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+211.6 Say "   Comisión Total " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+231.9 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="4" .AND. vsW0=2
           @iFIL-2.3,mCO0+097.0 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+116.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+137.8 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+157.4 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+177.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+198.2 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+218.4 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+238.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+089.2 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+109.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+130.0 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+150.4 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+170.8 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+191.2 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+211.6 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+231.9 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE mrEs="4" .AND. vsW0=3
           @iFIL-2.3,mCO0+097.0 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+116.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+137.8 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+157.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+177.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+198.2 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+218.4 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+238.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+089.2 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+109.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+130.0 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+150.4 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+170.8 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+191.2 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+211.6 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+231.9 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE vsW0=1
           @iFIL-2.3,mCO0+073.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+093.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+114.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+134.8 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+155.2 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+174.5 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+194.9 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+215.3 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+235.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+256.1 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+065.6 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+085.9 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+106.3 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+126.8 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+147.2 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+167.5 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+187.9 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+208.3 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+228.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+249.1 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
      CASE vsW0=2
           @iFIL-2.3,mCO0+073.6 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+093.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+114.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+134.8 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+155.2 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+174.5 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+194.9 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+215.3 Say "US$  "              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+235.6 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-2.3,mCO0+256.1 Say "  S/."              Font "&mLetAri",9 Style "BQ" Size 1,04.3
           @iFIL-1.3,mCO0+065.6 Say "    Total incl.IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+085.9 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+106.3 Say "Comision-Facturas " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+126.8 Say "Comision-Boletas  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+147.2 Say "    Comision NP   " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+167.5 Say "    Comision N/C  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+187.9 Say " Comision Letras  " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+208.3 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+228.6 Say "     Total sin IGV" Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
           @iFIL-1.3,mCO0+249.1 Say "   Total Comision " Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "@S18"
 ENDCASE
ENDPROC
*
PROCEDURE Tot_3560a
 DO coL_beige
 DO CASE
      CASE mrEs="3" .AND. vsW0=1
           @fFIL+1.4,mCO0+078.1 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+118.9 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+159.8 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW0=2
           @fFIL+1.4,mCO0+078.1 Say tFA1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tBO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+118.9 Say tNC1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tLE1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+159.8 Say tNP1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="3" .AND. vsW0=3
           @fFIL+1.4,mCO0+078.1 Say tFA2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+098.6 Say tBO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+118.9 Say tNC2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+139.4 Say tLE2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+159.8 Say tNP2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+180.1 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW0=1
           @fFIL+1.4,mCO0+089.2 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+109.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+130.0 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+150.4 Say tFA1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+170.8 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+191.2 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+211.6 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+231.9 Say tFA2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW0=2
           @fFIL+1.4,mCO0+089.2 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+109.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+130.0 Say tFA1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+150.4 Say tBO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+170.8 Say tNP1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+191.2 Say tNC1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+211.6 Say tLE1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+231.9 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE mrEs="4" .AND. vsW0=3
           @fFIL+1.4,mCO0+089.2 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+109.6 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+130.0 Say tFA2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+150.4 Say tBO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+170.8 Say tNP2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+191.2 Say tNC2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+211.6 Say tLE2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+231.9 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE vsW0=1
           @fFIL+1.4,mCO0+065.6 Say tSOT Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+085.9 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+106.3 Say tFA1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+126.8 Say tBO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+147.2 Say tNP1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+167.5 Say tNC1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+187.9 Say tLE1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+208.3 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+228.6 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+249.1 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
      CASE vsW0=2
           @fFIL+1.4,mCO0+065.6 Say tUST Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+085.9 Say tUSD Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+106.3 Say tFA2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+126.8 Say tBO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+147.2 Say tNP2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+167.5 Say tNC2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+187.9 Say tLE2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+208.3 Say tCO2 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+228.6 Say tSOL Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
           @fFIL+1.4,mCO0+249.1 Say tCO1 Font "&mLetAri",9 Style "BQ" Size 1,16.5 Pict "999,999,999.99"
 ENDCASE
ENDPROC
*
PROCEDURE Li1_3560a
 PARAMETER piN1, pfI1
 DO coLplp
 @ piN1, mcO0+4.2 TO pfI1, mcO0+4.2
ENDPROC
*
PROCEDURE Li2_3560a
 PARAMETER piN2, pfI2
 DO coLplp
 DO CASE
      CASE mrEs="3"
           @ piN2, mcO0+077.7 TO pfI2, mcO0+077.7
           @ piN2, mcO0+098.2 TO pfI2, mcO0+098.2
           @ piN2, mcO0+118.5 TO pfI2, mcO0+118.5
           @ piN2, mcO0+139.0 TO pfI2, mcO0+139.0
           @ piN2, mcO0+159.4 TO pfI2, mcO0+159.4
           @ piN2, mcO0+179.7 TO pfI2, mcO0+179.7
      CASE mrEs="4"
           @ piN2, mcO0+088.8 TO pfI2, mcO0+088.8
           @ piN2, mcO0+109.2 TO pfI2, mcO0+109.2
           @ piN2, mcO0+129.6 TO pfI2, mcO0+129.6
           @ piN2, mcO0+150.0 TO pfI2, mcO0+150.0
           @ piN2, mcO0+170.3 TO pfI2, mcO0+170.3
           @ piN2, mcO0+190.7 TO pfI2, mcO0+190.7
           @ piN2, mcO0+211.2 TO pfI2, mcO0+211.2
           @ piN2, mcO0+231.5 TO pfI2, mcO0+231.5
      OTHERWISE
           @ piN2, mcO0+065.1 TO pfI2, mcO0+065.1
           @ piN2, mcO0+085.4 TO pfI2, mcO0+085.4
           @ piN2, mcO0+105.9 TO pfI2, mcO0+105.9
           @ piN2, mcO0+126.3 TO pfI2, mcO0+126.3
           @ piN2, mcO0+146.7 TO pfI2, mcO0+146.7
           @ piN2, mcO0+167.2 TO pfI2, mcO0+167.2
           @ piN2, mcO0+187.5 TO pfI2, mcO0+187.5
           @ piN2, mcO0+207.8 TO pfI2, mcO0+207.8
           @ piN2, mcO0+228.2 TO pfI2, mcO0+228.2
           @ piN2, mcO0+248.7 TO pfI2, mcO0+248.7
 ENDCASE
ENDPROC
*
PROCEDURE Res_3560a
 DO p00_3560a WITH "1", "1"
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
      DO paN_3560b IN PCC3560B
      STORE cfIl TO vfIl
      DO muE_3560b IN PCC3560B WITH "c", "v"
      DO seE_3560b IN PCC3560B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Tm1_3560a
 DIMENSION afIl[28, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PCO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SOL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1BO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LE1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NC1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NP1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1UST"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1USD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1BO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LE2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NP2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SOE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1EF1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1EB1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1EM1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1USE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1EF2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1EB2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1EM2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE k_Esc TO mkEy
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM1ven TAG ftM1ven
 INDEX ON UPPER(ftM1nve)+ftM1ven TAG ftM1nve
 CLOSE DATABASES
 CLOSE INDEXES
ENDPROC
*
PROCEDURE Tm2_3560a
 DIMENSION afIl[15, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2FCA"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NET"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PCO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CM1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PC2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PTO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2EMI"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
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
 INDEX ON ftM2ven+ftM2tdo+ftM2ser+ftM2doc TAG ftM2ven
 CLOSE DATABASES
 CLOSE INDEXES
ENDPROC
*
PROCEDURE Abr_3560a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Pend_Vtas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3511NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3530", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ing_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3530NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3531NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Facturas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedores
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM2VEN
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Var_3560a
 PUBLIC vlIn, vpAg, vxLs, vsW0, vsW1, vsW2, vuLt, vfIl, ifIl, ufIl, ffIl,  ;
        cfIl, vfFs
 PUBLIC ifFs, ufFs, ffFs, cfFs, vcO0, vcO1, vuCo, viT1, dfEm, hfEm, vfEm,  ;
        cdFe, chFe
 PUBLIC vvEn, ivEn, uvEn, cvEn, vnVe, inVe, unVe, cnVe, vtDo, itDo, utDo,  ;
        ctDo, vsEr
 PUBLIC isEr, usEr, csEr, vdOc, idOc, udOc, cdOc, vcLi, vfCa, vmOn, vmNd,  ;
        vtCa, vcM1
 PUBLIC vtOt, vnEt, vpIg, vpCo, vpC2, vpTo, veMi, vcAn, vaNo, vmEs, vdIa,  ;
        vsR1, vnUm
 PUBLIC vfA1, vfA2, vpGo, tsOt, tsOl, tuSt, tuSd, tfA1, tfA2, tbO1, tbO2,  ;
        tlE1, tlE2
 PUBLIC tnC1, tnC2, tnP1, tnP2, tcO1, tcO2, tsOe, tuSe, teF1, teF2, teB1,  ;
        teB2, teM1
 PUBLIC teM2, tvT1, tvT2, tvN1, tvN2, tvC1, tvC2, tvE1, tvE2
 PUBLIC vpAn_11, vpAn_99
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 01 TO vsW0
 STORE SPACE(02) TO ivEn
 STORE DATE() TO dfEm, hfEm
 STORE 00 TO tsOt, tsOl, tuSd, tuSt, tfA1, tfA2, tbO1, tbO2
 STORE 00 TO tlE1, tlE2, tnC1, tnC2, tnP1, tnP2, tcO1, tcO2
 STORE 00 TO tsOe, tuSe, teF1, teF2, teB1, teB2, teM1, teM2, vlIn
 STORE CTOD("  /  /    ") TO cdFe, chFe
ENDPROC
*
PROCEDURE Bor_3560a
 RELEASE vlIn, vpAg, vxLs, vsW0, vsW1, vsW2, vuLt, vfIl, ifIl, ufIl, ffIl,  ;
         cfIl, vfFs
 RELEASE ifFs, ufFs, ffFs, cfFs, vcO0, vcO1, vuCo, viT1, dfEm, hfEm, vfEm,  ;
         cdFe, chFe
 RELEASE vvEn, ivEn, uvEn, cvEn, vnVe, inVe, unVe, cnVe, vtDo, itDo, utDo,  ;
         ctDo, vsEr
 RELEASE isEr, usEr, csEr, vdOc, idOc, udOc, cdOc, vcLi, vfCa, vmOn, vmNd,  ;
         vtCa, vcM1
 RELEASE vtOt, vnEt, vpIg, vpCo, vpC2, vpTo, veMi, vcAn, vaNo, vmEs, vdIa,  ;
         vsR1, vnUm
 RELEASE vfA1, vfA2, vpGo, tsOt, tsOl, tuSt, tuSd, tfA1, tfA2, tbO1, tbO2,  ;
         tlE1, tlE2
 RELEASE tnC1, tnC2, tnP1, tnP2, tcO1, tcO2, tsOe, tuSe, teF1, teF2, teB1,  ;
         teB2, teM1
 RELEASE teM2, tvT1, tvT2, tvN1, tvN2, tvC1, tvC2, tvE1, tvE2
 RELEASE vpAn_11, vpAn_99
ENDPROC
*
PROCEDURE Lee_3560a
 SELECT peNd_vtas
 DO orD_0000a WITH "3500", "C", "F3500DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_caja
 DO orD_0000a WITH "3510", "C", "F3510FEM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_bancos
 DO orD_0000a WITH "3530", "C", "F3530FEM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_caja
 GOTO TOP
 SET NEAR ON
 SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm),  ;
      1, 2)
 SET NEAR OFF
 STORE 00 TO tsOt, tsOl, tuSd, tuSt, tfA1, tfA2, tbO1, tbO2
 STORE 00 TO tlE1, tlE2, tnC1, tnC2, tnP1, tnP2, tcO1, tcO2
 DO WHILE  .NOT. EOF() .AND. CTOD(f3510dia+"/"+f3510mes+"/"+f3510ano)<=hfEm
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           SELECT teMporal
           ZAP
           REINDEX
           WAIT CLEAR
           RETURN
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+f3510dia+"/"+f3510mes+ ;
           "/"+f3510ano+"..."+CHR(13)+CHR(13)+"Presionar ESC para Salir..."
      STORE f3510ano TO vaNo
      STORE f3510mes TO vmEs
      STORE f3510dia TO vdIa
      STORE f3510ser TO vsEr
      STORE f3510num TO vnUm
      STORE f3510mon TO vmNd
      STORE f3510tca TO vtCa
      SELECT deT_ing_caja
      SEEK vaNo+vmEs+vsEr+vnUm
      DO WHILE  .NOT. EOF() .AND. f3511ano+f3511mes+f3511ser+f3511num= ;
         vaNo+vmEs+vsEr+vnUm
           IF f3511tdo<>"FA" .AND. f3511tdo<>"FE" .AND. f3511tdo<>"FC"  ;
              .AND. f3511tdo<>"BO" .AND. f3511tdo<>"BE" .AND. f3511tdo<> ;
              "BC" .AND. f3511tdo<>"NC" .AND. f3511tdo<>"N1" .AND.  ;
              f3511tdo<>"N3" .AND. f3511tdo<>"NP" .AND. f3511tdo<>"LE"
                SKIP
                IF EOF()
                     EXIT
                ENDIF
                LOOP
           ENDIF
           STORE f3511tdo TO vtDo
           STORE f3511ser TO vsR1
           STORE f3511doc TO vdOc
           STORE f3511pag TO vpGo, vnEt
           SELECT peNd_vtas
           SEEK vtDo+vsR1+vdOc
           STORE f3500fem TO vfEm
           STORE f3500nom TO vcLi
           STORE f3500mon TO vmOn
           STORE f3500pig TO vpIg
           STORE f3500ven TO vvEn
           IF vtDo<>"NP"
                STORE ROUND(vpGo/(1+(vpIg/100)), 2) TO vnEt
           ENDIF
           IF vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3"
                STORE vnEt*-1 TO vnEt
           ENDIF
           DO CASE
                CASE vmOn=1 .AND. vmOn<>vmNd
                     STORE ROUND(vpGo*vtCa, 2) TO vpGo
                     STORE ROUND(vnEt*vtCa, 2) TO vnEt
                CASE vmOn=2 .AND. vmOn<>vmNd
                     STORE ROUND(vpGo/vtCa, 2) TO vpGo
                     STORE ROUND(vnEt/vtCa, 2) TO vnEt
           ENDCASE
           SELECT veNdedores
           SEEK vvEn
           IF EOF()
                STORE "No registrado..." TO vnVe
                STORE 0 TO vpCo
           ELSE
                STORE f9113nom TO vnVe
                STORE f9113com TO vpCo
           ENDIF
           SELECT caB_facturas
           SEEK vtDo+vsR1+vdOc
           IF  .NOT. EOF()
                STORE f1300com TO vpCo
           ENDIF
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
                REPLACE ftM1pc2 WITH 0
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
                     REPLACE ftM1sot WITH ftM1sot+vpGo
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
                     ENDCASE
                CASE vmOn=2
                     REPLACE ftM1ust WITH ftM1ust+vpGo
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
           REPLACE ftM2fca WITH CTOD(vdIa+"/"+vmEs+"/"+vaNo)
           REPLACE ftM2mon WITH vmOn
           REPLACE ftM2tot WITH vpGo
           REPLACE ftM2net WITH vnEt
           REPLACE ftM2pco WITH vpCo
           REPLACE ftM2cm1 WITH vcM1
           REPLACE ftM2pc2 WITH 0
           REPLACE ftM2pto WITH 0
           REPLACE ftM2emi WITH 0
           SELECT deT_ing_caja
           SKIP
      ENDDO
      SELECT caB_ing_caja
      SKIP
 ENDDO
 SELECT caB_ing_bancos
 GOTO TOP
 SET NEAR ON
 SEEK SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm),  ;
      1, 2)
 SET NEAR OFF
 STORE 00 TO tsOt, tsOl, tuSd, tuSt, tfA1, tfA2, tbO1, tbO2
 STORE 00 TO tlE1, tlE2, tnC1, tnC2, tnP1, tnP2, tcO1, tcO2
 DO WHILE  .NOT. EOF() .AND. CTOD(f3530dia+"/"+f3530mes+"/"+f3530ano)<=hfEm
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           SELECT teMporal
           ZAP
           REINDEX
           WAIT CLEAR
           RETURN
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "L E Y E N D O "+f3530dia+"/"+f3530mes+ ;
           "/"+f3530ano+"..."+CHR(13)+CHR(13)+"Presionar ESC para Salir..."
      STORE f3530ano TO vaNo
      STORE f3530mes TO vmEs
      STORE f3530dia TO vdIa
      STORE f3530ser TO vsEr
      STORE f3530num TO vnUm
      STORE f3530mon TO vmNd
      STORE f3530tca TO vtCa
      SELECT deT_ing_bancos
      SEEK vaNo+vmEs+vsEr+vnUm
      DO WHILE  .NOT. EOF() .AND. f3531ano+f3531mes+f3531ser+f3531num= ;
         vaNo+vmEs+vsEr+vnUm
           IF f3531tdo<>"FA" .AND. f3531tdo<>"FE" .AND. f3531tdo<>"FC"  ;
              .AND. f3531tdo<>"BO" .AND. f3531tdo<>"BE" .AND. f3531tdo<> ;
              "BC" .AND. f3531tdo<>"NC" .AND. f3531tdo<>"N1" .AND.  ;
              f3531tdo<>"N3" .AND. f3531tdo<>"NP" .AND. f3531tdo<>"LE"
                SKIP
                IF EOF()
                     EXIT
                ENDIF
                LOOP
           ENDIF
           STORE f3531tdo TO vtDo
           STORE f3531ser TO vsR1
           STORE f3531doc TO vdOc
           STORE f3531pag TO vpGo, vnEt
           SELECT peNd_vtas
           SEEK vtDo+vsR1+vdOc
           STORE f3500fem TO vfEm
           STORE f3500nom TO vcLi
           STORE f3500mon TO vmOn
           STORE f3500pig TO vpIg
           STORE f3500ven TO vvEn
           IF vtDo<>"NP"
                STORE ROUND(vpGo/(1+(vpIg/100)), 2) TO vnEt
           ENDIF
           IF vtDo="NC" .OR. vtDo="N1" .OR. vtDo="N3"
                STORE vnEt*-1 TO vnEt
           ENDIF
           DO CASE
                CASE vmOn=1 .AND. vmOn<>vmNd
                     STORE ROUND(vpGo*vtCa, 2) TO vpGo
                     STORE ROUND(vnEt*vtCa, 2) TO vnEt
                CASE vmOn=2 .AND. vmOn<>vmNd
                     STORE ROUND(vpGo/vtCa, 2) TO vpGo
                     STORE ROUND(vnEt/vtCa, 2) TO vnEt
           ENDCASE
           SELECT veNdedores
           SEEK vvEn
           IF EOF()
                STORE "No registrado..." TO vnVe
                STORE 0 TO vpCo
           ELSE
                STORE f9113nom TO vnVe
                STORE f9113com TO vpCo
           ENDIF
           SELECT caB_facturas
           SEEK vtDo+vsR1+vdOc
           IF  .NOT. EOF()
                STORE f1300com TO vpCo
           ENDIF
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
                REPLACE ftM1pc2 WITH 0
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
                     REPLACE ftM1sot WITH ftM1sot+vpGo
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
                     ENDCASE
                CASE vmOn=2
                     REPLACE ftM1ust WITH ftM1ust+vpGo
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
           REPLACE ftM2fca WITH CTOD(vdIa+"/"+vmEs+"/"+vaNo)
           REPLACE ftM2mon WITH vmOn
           REPLACE ftM2tot WITH vpGo
           REPLACE ftM2net WITH vnEt
           REPLACE ftM2pco WITH vpCo
           REPLACE ftM2cm1 WITH vcM1
           REPLACE ftM2pc2 WITH 0
           REPLACE ftM2pto WITH 0
           REPLACE ftM2emi WITH 0
           SELECT deT_ing_bancos
           SKIP
      ENDDO
      SELECT caB_ing_bancos
      SKIP
 ENDDO
 SELECT peNd_vtas
 SET ORDER TO
 SELECT caB_ing_caja
 DO orD_0000a WITH "3510", "C", "F3510NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_bancos
 DO orD_0000a WITH "3530", "C", "F3530NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Sum_3560a
 SUM ftM1sot TO tsOt ALL
 SUM ftM1sol TO tsOl ALL
 SUM ftM1ust TO tuSt ALL
 SUM ftM1usd TO tuSd ALL
 SUM ftM1fa1 TO tfA1 ALL
 SUM ftM1fa2 TO tfA2 ALL
 SUM ftM1bo1 TO tbO1 ALL
 SUM ftM1bo2 TO tbO2 ALL
 SUM ftM1le1 TO tlE1 ALL
 SUM ftM1le2 TO tlE2 ALL
 SUM ftM1nc1 TO tnC1 ALL
 SUM ftM1nc2 TO tnC2 ALL
 SUM ftM1np1 TO tnP1 ALL
 SUM ftM1np2 TO tnP2 ALL
 SUM ftM1co1 TO tcO1 ALL
 SUM ftM1co2 TO tcO2 ALL
 SUM ftM1soe TO tsOe ALL
 SUM ftM1use TO tuSe ALL
 SUM ftM1ef1 TO teF1 ALL
 SUM ftM1ef2 TO teF2 ALL
 SUM ftM1eb1 TO teB1 ALL
 SUM ftM1eb2 TO teB2 ALL
 SUM ftM1em1 TO teM1 ALL
 SUM ftM1em2 TO teM2 ALL
ENDPROC
*
PROCEDURE Clp_3560a
 = INKEY(0.01)
 DO CASE
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3560a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta opción es para mostrar las Comisiones x Pagos a cuenta o cancela-"
 @ pfIl+01, 02 SAY "ciones en caja y bancos."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 18 SAY ":" STYLE "BT"
 @ pfIl+06, 18 SAY ":" STYLE "BT"
 @ pfIl+07, 18 SAY ":" STYLE "BT"
 @ pfIl+08, 18 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+09, 02 SAY "CTRL ->," STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 20 SAY "Regresar al Menú Principal"
 @ pfIl+06, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 20 SAY "Ayuda del Programa"
 @ pfIl+08, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+09, 20 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1 IN PCC3560A
 SET READBORDER OFF
 DO boR_3560a IN PCC3560A
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
