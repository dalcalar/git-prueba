 SET CENTURY ON
 STORE 01 TO meRr
 PUBLIC pcDx
 SELECT 1
 STORE mpTh+"RRR1\R1UC.DLL" TO mdBf
 STORE mpTh+"RRR1\R1UC.SSL" TO pcDx
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+mdBf TO mdBf
      STORE muNi+":"+pcDx TO pcDx
 ENDIF
 Use &mDBF Share Alias Ruc_1
 Set Index to &pCDX
 RELEASE pnUm, psW0
 SELECT 2
 STORE mpTh+"RRR1\R2UC1_1.DLL" TO mdBf
 STORE mpTh+"RRR1\R2UC1_1.SSL" TO pcDx
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+mdBf TO mdBf
      STORE muNi+":"+pcDx TO pcDx
 ENDIF
 Use &mDBF Share Alias Ruc_1_1
 Set Index to &pCDX
 SELECT 3
 STORE mpTh+"RRR1\R2UC1_2.DLL" TO mdBf
 STORE mpTh+"RRR1\R2UC1_2.SSL" TO pcDx
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+mdBf TO mdBf
      STORE muNi+":"+pcDx TO pcDx
 ENDIF
 Use &mDBF Share Alias Ruc_1_2
 Set Index to &pCDX
 SELECT 4
 STORE mpTh+"RRR1\R2UC2.DLL" TO mdBf
 STORE mpTh+"RRR1\R2UC2.SSL" TO pcDx
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+mdBf TO mdBf
      STORE muNi+":"+pcDx TO pcDx
 ENDIF
 Use &mDBF Share Alias Ruc_2
 Set Index to &pCDX
 SELECT 5
 STORE mpTh+"RRR1\R3UC.DLL" TO mdBf
 STORE mpTh+"RRR1\R3UC.SSL" TO pcDx
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+mdBf TO mdBf
      STORE muNi+":"+pcDx TO pcDx
 ENDIF
 Use &mDBF Share Alias Ruc_3
 Set Index to &pCDX
 STORE 99 TO mkEy
 STORE 00 TO meRr
 PUBLIC vtAm, vfEm, viTe, viNi, vfIn, vnNn, vtXt, vvAr, vsWx, vsWy, vsWz,  ;
        vsWw, vsEp
 PUBLIC vnOm, cnOm, vpOs, cpOs, vrUc, crUc, xrUc, vrAz, vdIr, vdEp, vdIs,  ;
        vcOn, vuBi
 PUBLIC veSt, vlEn, vgRa, vsW0
 PUBLIC vpAn_11
 STORE "|" TO vsEp
 STORE 00 TO vpOs
 STORE 00 TO viNi
 STORE 00 TO vfIn
 STORE 00 TO vgRa
 STORE 01 TO vsWx
 STORE 01 TO vsWy
 STORE 01 TO vsWz
 STORE 02 TO vsWw
 STORE 254 TO vtAm
 STORE 00 TO vsW0
 STORE SPACE(11) TO xrUc
 STORE mpTh+"RRR1\PADRON_REDUCIDO_RUC.TXT" TO cnOm
 STORE mpTh+"RRR1\PR.TXT" TO vnOm
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+cnOm TO cnOm
 ENDIF
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+vnOm TO vnOm
 ENDIF
 DO CASE
      Case File("&cNOM") .and. .not.File("&vNOM")
           Rename &cNOM to &vNOM
      Case File("&cNOM") .and. File("&vNOM")
           Delete File &vNOM
           Rename &cNOM to &vNOM
 ENDCASE
 DO p00_8889a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_8889a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_8889a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_8889a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_8889a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F3
                SAVE SCREEN TO vpAn_11
                DO coLsc3
                DO cuAdro WITH mfI0+2, mcO0+2, mfI0+7, mcO0+muCo-2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLblv
                STORE xrUc TO crUc
                @mFI0+3,mCO0+4 Say "RUC a Actualizar:" Font "&mLetRom",14 Style "BT"
                @mFI0+5,mCO0+4 Get cRUC                Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Pict "99999999999" Size 1,16
                SET CURSOR ON
                READ
                SET CURSOR OFF
                IF mkEy=k_Enter
                     STORE ALLTRIM(crUc) TO crUc
                     IF LEN(ALLTRIM(crUc))<11
                          STORE "Archivo no existe..." TO mmSj
                          DO poNmsj
                     ELSE
                          DO coLblz
                          STORE 01 TO vsW0
                          STORE 99 TO mkEy
                          STORE crUc TO xrUc
                          STORE vnOm TO mdBf
                          Store FDate("&mDBF") to vFEM
                          Archivo=fOpen("&mDBF",0)          
                          STORE FSEEK(arChivo, 0, 2) TO vfIn
                          STORE FSEEK(arChivo, 0) TO viNi
                          @ mfI0+27, mcO0+50 SAY vpOs FONT "Courier New",  ;
                            9 STYLE "BQ" SIZE 1, 15 PICTURE "999,999,999,999"
                          @ mfI0+28, mcO0+46 SAY "de" FONT "Courier New",  ;
                            9 STYLE "BQ"
                          @ mfI0+28, mcO0+50 SAY vfIn FONT "Courier New",  ;
                            9 STYLE "BQ" SIZE 1, 15 PICTURE "999,999,999,999"
                          @mFI0+19,mCO0+18 Say "  " Font "&mLetRom",15   Style "BQI" Size 1,60
                          DO ubI_8889a
                          IF vpOs<vfIn
                               DO buS_8889a
                          ELSE
                               @mFI0+19,mCO0+18 Say "No hay RUC: "+vRUC+"... Presionar tecla..." Font "&mLetRom",15 Style "BQI" Size 1,60
                               mkEy = INKEY(0)
                          ENDIF
                          FCLOSE(arChivo)
                          FLUSH
                          STORE 99 TO mkEy
                          DO deL_files
                          QUIT
                     ENDIF
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                STORE 99 TO mkEy
           CASE mkEy=k_F4 .AND. maDm=1
                SAVE SCREEN TO vpAn_11
                DO coLsc3
                DO cuAdro WITH mfI0+2, mcO0+2, mfI0+7, mcO0+muCo-2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLblv
                STORE vnOm TO cnOm
                @mFI0+3,mCO0+4 Say "Ruta y Nombre de TXT:" Font "&mLetRom",14 Style "BT"
                @mFI0+5,mCO0+4 Get cNOM                    Font "&mLetRom",12 Style "BQ" Color ,&mColBlN Size 1,95
                SET CURSOR ON
                READ
                SET CURSOR OFF
                IF mkEy=k_Enter
                     STORE ALLTRIM(cnOm) TO cnOm
                     If .not.File("&cNOM")
                          STORE "Archivo no existe..." TO mmSj
                          DO poNmsj
                     ELSE
                          STORE cnOm TO vnOm
                     ENDIF
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                STORE 99 TO mkEy
           CASE mkEy=k_F5 .AND. maDm=1
                SAVE SCREEN TO vpAn_11
                DO coLsc3
                DO cuAdro WITH mfI0+2, mcO0+2, mfI0+7, mcO0+muCo-2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLblv
                STORE vpOs TO cpOs
                @mFI0+3,mCO0+4 Say "Posicion Inicial, si es diferente de 0 iniciara donde le indiques:" Font "&mLetRom",14 Style "BT"
                @mFI0+5,mCO0+4 Get cPOS Color ,&mColBlN Size 1,20 Pict "999999999999" Font "&mLetRom",12 Style "BQ"
                SET CURSOR ON
                READ
                SET CURSOR OFF
                IF mkEy=k_Enter .AND. cpOs>0
                     STORE cpOs TO vpOs
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                STORE 99 TO mkEy
           CASE mkEy=k_F6 .AND. maDm=1
                IF vsWx=1
                     STORE 2 TO vsWx
                ELSE
                     STORE 1 TO vsWx
                ENDIF
                DO swX_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. maDm=1
                IF vsWy=1
                     STORE 2 TO vsWy
                ELSE
                     STORE 1 TO vsWy
                ENDIF
                DO swY_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_F8 .AND. maDm=1
                IF vsWz=1
                     STORE 2 TO vsWz
                ELSE
                     STORE 1 TO vsWz
                ENDIF
                DO swZ_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_F9 .AND. maDm=1
                IF vsWw=1
                     STORE 2 TO vsWw
                ELSE
                     STORE 1 TO vsWx, vsWy, vsWz, vsWw
                ENDIF
                DO swW_0000a
                DO swZ_0000a
                DO swY_0000a
                DO swZ_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_Enter
                DO coLblz
                STORE 99 TO mkEy
                STORE vnOm TO mdBf
                Store FDate("&mDBF") to vFEM
                Archivo=fOpen("&mDBF",0)          
                STORE FSEEK(arChivo, 0, 2) TO vfIn
                STORE FSEEK(arChivo, 0) TO viNi
                @ mfI0+27, mcO0+50 SAY vpOs FONT "Courier New", 9 STYLE  ;
                  "BQ" SIZE 1, 15 PICTURE "999,999,999,999"
                @ mfI0+28, mcO0+46 SAY "de" FONT "Courier New", 9 STYLE "BQ"
                @ mfI0+28, mcO0+50 SAY vfIn FONT "Courier New", 9 STYLE  ;
                  "BQ" SIZE 1, 15 PICTURE "999,999,999,999"
                @mFI0+19,mCO0+18 Say "  " Font "&mLetRom",15   Style "BQI" Size 1,60
                DO ubI_8889a
                IF vpOs<vfIn
                     DO prO_8889a
                ELSE
                     @mFI0+19,mCO0+18 Say "No hay datos... Presionar tecla..." Font "&mLetRom",15 Style "BQI" Size 1,60
                     mkEy = INKEY(0)
                ENDIF
                FCLOSE(arChivo)
                FLUSH
                STORE 99 TO mkEy
                DO deL_files
                QUIT
      ENDCASE
      mkEy = INKEY(0, "HM")
 ENDDO
 STORE 99 TO mkEy
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE P00_8889a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 32 TO muFi
 STORE 132 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+0.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Actualiza Motores SUNAT"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLbln
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO G/B
 @mFI0+07.0,mCO0+13 Say "Este proceso puede durar horas. Se recomienda correrlo fuera de"     Font "&mLetRom",14 Style "BT"
 @mFI0+08.5,mCO0+13 Say "horas de trabajo. En caso de corte de corriente eléctrica, volver a" Font "&mLetRom",14 Style "BT"
 @mFI0+10.0,mCO0+13 Say "correr este programa."                                               Font "&mLetRom",14 Style "BT"
 SET COLOR TO B/R
 @mFI0+13.0,mCO0+13 Say "Este proceso puede correrse en horas de trabajo. Si el Internet es"  Font "&mLetRom",14 Style "BT"
 @mFI0+14.5,mCO0+13 Say "lento el proceso hara lenta la red y las estaciones."                Font "&mLetRom",14 Style "BT"
 SET COLOR TO R/B
 @mFI0+19.0,mCO0+18 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir"               Font "&mLetRom",15 Style "BT"
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "SUNAT", mfI0+0.2, mcO0+3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLblz
 @ mfI0+21, mcO0+13 SAY "PN-1: " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 @ mfI0+22, mcO0+13 SAY "PN-2: " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 @ mfI0+23, mcO0+13 SAY "PJ  : " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 @ mfI0+24, mcO0+13 SAY "NUEV: " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 @ mfI0+25, mcO0+13 SAY "MAL : " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 @ mfI0+26, mcO0+13 SAY "NO I: " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 @ mfI0+27, mcO0+13 SAY "INI : " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 @ mfI0+28, mcO0+13 SAY "FIN : " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 @ mfI0+29, mcO0+13 SAY "ITEM: " FONT "Courier New", 9 STYLE "BQ" SIZE 1, 10
 DO swX_0000a
 DO swY_0000a
 DO swZ_0000a
 DO swW_0000a
ENDPROC
*
PROCEDURE Ubi_8889a
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mkEy=9000 .OR. vpOs>=vfIn
           EXIT
      ENDIF
      DO seE_8889a
      IF SUBSTR(vvAr, 1, 11)>="00000000000" .AND. LEN(ALLTRIM(vvAr))>11  ;
         .AND. SUBSTR(vvAr, 1, 11)<="99999999999" .AND. AT(vsEp, vvAr, 15)<>0
           EXIT
      ENDIF
      STORE vpOs+1 TO vpOs
 ENDDO
ENDPROC
*
PROCEDURE See_8889a
 vtXt = FSEEK(arChivo, vpOs)
 vvAr = FGETS(arChivo, vtAm)
 IF AT(vsEp, vvAr, 15)<>0
      STORE ALLTRIM(SUBSTR(vvAr, 1, AT(vsEp, vvAr, 15)+1)) TO vvAr
 ELSE
      STORE ALLTRIM(vvAr) TO vvAr
 ENDIF
ENDPROC
*
PROCEDURE Ski_8889a
 IF vpOs+vtAm>vfIn
      STORE vfIn-vtAm TO vpOs
 ENDIF
 DO seE_8889a
 STORE LEN(vvAr)+1 TO vlEn
 STORE vpOs+vlEn TO vpOs
ENDPROC
*
PROCEDURE Pro_8889a
 PRIVATE pmAl, pvNo
 DO coLblz
 SET ESCAPE ON
 ON ESCAPE STORE 9000 TO MKEY
 STORE 0 TO pmAl, pvNo
 IF vpOs=0
      DO skI_8889a
      DO skI_8889a
 ENDIF
 DO WHILE .T.
      IF vpOs>=vfIn .OR. mkEy=9000
           FLUSH
           EXIT
      ENDIF
      @ mfI0+28, mcO0+22 SAY vpOs FONT "Courier New", 9 STYLE "BQ" SIZE 1,  ;
        15 PICTURE "999,999,999,999"
      IF SUBSTR(vvAr, 1, 1)<>"1" .AND. SUBSTR(vvAr, 1, 1)<>"2"
           STORE vpOs+1 TO vpOs
           STORE pmAl+1 TO pmAl
           @ mfI0+25, mcO0+22 SAY pmAl FONT "Courier New", 9 STYLE "BQ"  ;
             SIZE 1, 15 PICTURE "999,999,999,999"
           DO seE_8889a
           STORE LEN(vvAr)+1 TO vlEn
           LOOP
      ENDIF
      STORE SUBSTR(vvAr, 1, 11) TO vrUc
      DO CASE
           CASE vsWx=1 .AND. SUBSTR(vrUc, 1, 3)<="102"
                SELECT ruC_1_1
           CASE vsWy=1 .AND. SUBSTR(vrUc, 1, 1)="1"
                SELECT ruC_1_2
           CASE vsWz=1 .AND. SUBSTR(vrUc, 1, 1)="2"
                SELECT ruC_2
           OTHERWISE
                STORE pvNo+1 TO pvNo
                @ mfI0+26, mcO0+22 SAY pvNo FONT "Courier New", 9 STYLE  ;
                  "BQ" SIZE 1, 15 PICTURE "999,999,999,999"
                DO skI_8889a
                LOOP
      ENDCASE
      SEEK ALLTRIM(vrUc)+"*"
      IF  .NOT. EOF() .AND. vsWw=1
           STORE pvNo+1 TO pvNo
           @ mfI0+26, mcO0+22 SAY pvNo FONT "Courier New", 9 STYLE "BQ"  ;
             SIZE 1, 15 PICTURE "999,999,999,999"
           DO skI_8889a
           LOOP
      ENDIF
      DO poN_8889a
      DO grA_8889a
      DO skI_8889a
 ENDDO
 ON ESCAPE
 SET ESCAPE OFF
 PRIVATE pmAl, pvNo
ENDPROC
*
PROCEDURE Bus_8889a
 PRIVATE pmAl, pvNo
 DO coLblz
 SET ESCAPE ON
 ON ESCAPE STORE 9000 TO MKEY
 STORE 0 TO pmAl, pvNo
 IF vpOs=0
      DO skI_8889a
      DO skI_8889a
 ENDIF
 DO WHILE .T.
      IF vpOs>=vfIn .OR. mkEy=9000
           EXIT
      ENDIF
      @ mfI0+28, mcO0+22 SAY vpOs FONT "Courier New", 9 STYLE "BQ" SIZE 1,  ;
        15 PICTURE "999,999,999,999"
      IF SUBSTR(vvAr, 1, 1)<>"1" .AND. SUBSTR(vvAr, 1, 1)<>"2"
           STORE vpOs+1 TO vpOs
           DO seE_8889a
           STORE LEN(vvAr)+1 TO vlEn
           LOOP
      ENDIF
      STORE SUBSTR(vvAr, 1, 11) TO vrUc
      IF vrUc<>xrUc
           DO skI_8889a
           LOOP
      ENDIF
      DO poN_8889a
      DO grA_8889a
      @ mfI0+17, mcO0+22 SAY xrUc FONT "Courier New", 11 STYLE "BQ"
      @ mfI0+19, mcO0+22 SAY "presionar Tecla para Salir" FONT  ;
        "Courier New", 9 STYLE "BQ"
      mkEy = INKEY(0)
      EXIT
 ENDDO
 FLUSH
 ON ESCAPE
 SET ESCAPE OFF
 PRIVATE pmAl, pvNo
ENDPROC
*
PROCEDURE Gra_8889a
 SELECT ruC_1
 SEEK ALLTRIM(vrUc)+"*"
 IF EOF()
      APPEND BLANK
      REPLACE ruC WITH vrUc
 ENDIF
 IF feCact=vfEm
      RETURN
 ENDIF
 REPLACE esT WITH veSt
 REPLACE coN WITH vcOn
 REPLACE feCact WITH vfEm
 DO CASE
      CASE SUBSTR(vrUc, 1, 3)<="102"
           SELECT ruC_1_1
      CASE SUBSTR(vrUc, 1, 1)="1"
           SELECT ruC_1_2
      CASE SUBSTR(vrUc, 1, 1)="2"
           SELECT ruC_2
 ENDCASE
 SEEK ALLTRIM(vrUc)+"*"
 IF EOF()
      APPEND BLANK
      REPLACE ruC WITH vrUc
      REPLACE raZ WITH vrAz
 ENDIF
 SELECT ruC_3
 SEEK ALLTRIM(vrUc)+"*"
 IF EOF() .AND. LEN(ALLTRIM(vdIr))>0
      APPEND BLANK
      REPLACE ruC WITH vrUc
 ENDIF
 IF LEN(ALLTRIM(vdIr))=0
      STORE vgRa+1 TO vgRa
      @ mfI0+29, mcO0+22 SAY vgRa FONT "Courier New", 9 STYLE "BQ" SIZE 1,  ;
        15 PICTURE "999,999,999,999"
      RETURN
 ENDIF
 IF UPPER(ALLTRIM(diR))+"*"<>UPPER(ALLTRIM(vdIr))+"*"
      REPLACE diR WITH vdIr
 ENDIF
 IF deP<>SUBSTR(vuBi, 1, 2)
      REPLACE deP WITH SUBSTR(vuBi, 1, 2)
 ENDIF
 IF diS<>SUBSTR(vuBi, 3, 4)
      REPLACE diS WITH SUBSTR(vuBi, 3, 4)
 ENDIF
 STORE vgRa+1 TO vgRa
 @ mfI0+29, mcO0+22 SAY vgRa FONT "Courier New", 9 STYLE "BQ" SIZE 1, 15  ;
   PICTURE "999,999,999,999"
 IF maDm=1
      @ mfI0+31, mcO0+1 SAY vvAr FONT "Courier New", 8 STYLE "NQ" SIZE 1,  ;
        92 PICTURE "@S95"
 ENDIF
ENDPROC
*
PROCEDURE Pon_8889a
 PRIVATE pt01, pt02, pt03, pt04, pt05, pt06, pt07, pt08
 PRIVATE pt09, pt10, pt11, pt12, pt13, pt14, pt15, pdIr
 STORE 0 TO vnNn, pt01, pt02, pt03, pt04, pt05, pt06, pt07, pt08, pt09,  ;
       pt10, pt11, pt12, pt13, pt14, pt15
 STORE " " TO vrUc, vrAz, vdIr, vuBi, veSt, vcOn, pdIr
 STORE AT(vsEp, vvAr, 01)-1 TO pt01
 STORE AT(vsEp, vvAr, 02)-1 TO pt02
 STORE AT(vsEp, vvAr, 03)-1 TO pt03
 STORE AT(vsEp, vvAr, 04)-1 TO pt04
 STORE AT(vsEp, vvAr, 05)-1 TO pt05
 STORE AT(vsEp, vvAr, 06)-1 TO pt06
 STORE AT(vsEp, vvAr, 07)-1 TO pt07
 STORE AT(vsEp, vvAr, 08)-1 TO pt08
 STORE AT(vsEp, vvAr, 09)-1 TO pt09
 STORE AT(vsEp, vvAr, 10)-1 TO pt10
 STORE AT(vsEp, vvAr, 11)-1 TO pt11
 STORE AT(vsEp, vvAr, 12)-1 TO pt12
 STORE AT(vsEp, vvAr, 13)-1 TO pt13
 STORE AT(vsEp, vvAr, 14)-1 TO pt14
 STORE AT(vsEp, vvAr, 15)-1 TO pt15
 IF pt01>0
      STORE SUBSTR(vvAr, 1, pt01) TO vrUc
      STORE vnNn+LEN(ALLTRIM(vrUc))+1 TO vnNn
 ENDIF
 IF pt02>0
      STORE SUBSTR(vvAr, pt01+2, pt02-pt01-1) TO vrAz
      STORE vnNn+LEN(ALLTRIM(vrAz))+1 TO vnNn
      DO leN_0000a WITH "4"
 ENDIF
 IF pt03>0
      STORE SUBSTR(vvAr, pt02+2, pt03-pt02-1) TO veSt
      STORE vnNn+LEN(ALLTRIM(veSt))+1 TO vnNn
 ENDIF
 IF pt04>0
      STORE SUBSTR(vvAr, pt03+2, pt04-pt03-1) TO vcOn
      STORE vnNn+LEN(ALLTRIM(vcOn))+1 TO vnNn
 ENDIF
 IF pt05>0
      STORE SUBSTR(vvAr, pt04+2, pt05-pt04-1) TO vuBi
      STORE vnNn+LEN(ALLTRIM(vuBi))+1 TO vnNn
 ENDIF
 IF pt06>0
      STORE SUBSTR(vvAr, pt05+2, pt06-pt05-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt07>0
      STORE SUBSTR(vvAr, pt06+2, pt07-pt06-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt08>0
      STORE SUBSTR(vvAr, pt07+2, pt08-pt07-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt09>0
      STORE SUBSTR(vvAr, pt08+2, pt09-pt08-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt10>0
      STORE SUBSTR(vvAr, pt09+2, pt10-pt09-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt11>0
      STORE SUBSTR(vvAr, pt10+2, pt11-pt10-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt12>0
      STORE SUBSTR(vvAr, pt11+2, pt12-pt11-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt13>0
      STORE SUBSTR(vvAr, pt12+2, pt13-pt12-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt14>0
      STORE SUBSTR(vvAr, pt13+2, pt14-pt13-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
      IF ALLTRIM(pdIr)="-"
           STORE "" TO pdIr
      ENDIF
 ELSE
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 IF pt15>0
      STORE SUBSTR(vvAr, pt14+2, pt15-pt14-1) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
 ELSE
      STORE ALLTRIM(SUBSTR(vvAr, pt14+2, 40)) TO pdIr
      STORE vnNn+LEN(ALLTRIM(pdIr))+1 TO vnNn
 ENDIF
 IF ALLTRIM(pdIr)="-"
      STORE "" TO pdIr
 ENDIF
 STORE ALLTRIM(vdIr)+" "+pdIr TO vdIr
 DO leN_0000a WITH "5"
 RELEASE pt01, pt02, pt03, pt04, pt05, pt06, pt07, pt08
 RELEASE pt09, pt10, pt11, pt12, pt13, pt14, pt15, pdIr
ENDPROC
*
PROCEDURE LeN_0000a
 PARAMETER ptPo
 PRIVATE pnOm, pnO1, pnO2, pnUm, piTe
 IF ptPo="4"
      STORE ALLTRIM(vrAz)+" " TO pnOm
 ELSE
      STORE ALLTRIM(vdIr)+" " TO pnOm
 ENDIF
 STORE SUBSTR(UPPER(pnOm), 1, 1)+SUBSTR(LOWER(pnOm), 2, 100) TO pnOm
 IF ptPo="4"
      DO CASE
           CASE AT(" SA ", UPPER(pnOm))<>0
                STORE AT(" SA ", UPPER(pnOm)) TO pnUm
                STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
                STORE pnO1+" S.A. "+pnO2 TO pnOm
           CASE AT(" SAC ", UPPER(pnOm))<>0
                STORE AT(" SAC ", UPPER(pnOm)) TO pnUm
                STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                STORE SUBSTR(pnOm, pnUm+5, 100) TO pnO2
                STORE pnO1+" S.A.C. "+pnO2 TO pnOm
           CASE AT(" S A C ", UPPER(pnOm))<>0
                STORE AT(" S A C ", UPPER(pnOm)) TO pnUm
                STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                STORE SUBSTR(pnOm, pnUm+7, 100) TO pnO2
                STORE pnO1+" S.A.C. "+pnO2 TO pnOm
           CASE AT(" SRL ", UPPER(pnOm))<>0
                STORE AT(" SRL ", UPPER(pnOm)) TO pnUm
                STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                STORE SUBSTR(pnOm, pnUm+5, 100) TO pnO2
                STORE pnO1+" S.R.L. "+pnO2 TO pnOm
           CASE AT(" EIRL ", UPPER(pnOm))<>0
                STORE AT(" EIRL ", UPPER(pnOm)) TO pnUm
                STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                STORE SUBSTR(pnOm, pnUm+6, 100) TO pnO2
                STORE pnO1+" E.I.R.L. "+pnO2 TO pnOm
           CASE AT(" SOCIEDAD ANONIMA CERRADA ", UPPER(pnOm))<>0
                STORE AT(" SOCIEDAD ANONIMA CERRADA ", UPPER(pnOm)) TO pnUm
                STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                STORE SUBSTR(pnOm, pnUm+26, 100) TO pnO2
                STORE pnO1+" S.A.C. "+pnO2 TO pnOm
           CASE AT(" EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA ",  ;
                UPPER(pnOm))<>0
                STORE AT( ;
                      " EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA ",  ;
                      UPPER(pnOm)) TO pnUm
                STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                STORE SUBSTR(pnOm, pnUm+48, 100) TO pnO2
                STORE pnO1+" E.I.R.L. "+pnO2 TO pnOm
           CASE AT(" EMPRESA DE RESPONSABILIDAD LIMITADA ", UPPER(pnOm))<>0
                STORE AT(" EMPRESA DE RESPONSABILIDAD LIMITADA ",  ;
                      UPPER(pnOm)) TO pnUm
                STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
                STORE SUBSTR(pnOm, pnUm+37, 100) TO pnO2
                STORE pnO1+" E.R.Ltda. "+pnO2 TO pnOm
      ENDCASE
 ENDIF
 STORE ALLTRIM(pnOm) TO pnOm
 STORE 1 TO piTe
 DO WHILE .T.
      STORE AT(" ", pnOm, piTe) TO pnUm
      IF pnUm=0
           EXIT
      ENDIF
      STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
      STORE SUBSTR(pnOm, pnUm+1, 100) TO pnO2
      STORE SUBSTR(UPPER(pnO2), 1, 1)+SUBSTR(pnO2, 2, 100) TO pnO2
      STORE pnO1+" "+pnO2 TO pnOm
      STORE piTe+1 TO piTe
 ENDDO
 STORE 1 TO piTe
 DO WHILE .T.
      STORE AT(".", pnOm, piTe) TO pnUm
      IF pnUm=0
           EXIT
      ENDIF
      STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
      STORE SUBSTR(pnOm, pnUm+1, 100) TO pnO2
      STORE SUBSTR(UPPER(pnO2), 1, 1)+SUBSTR(pnO2, 2, 100) TO pnO2
      STORE pnO1+"."+pnO2 TO pnOm
      STORE piTe+1 TO piTe
 ENDDO
 DO CASE
      CASE AT(" Y ", UPPER(pnOm))<>0
           STORE AT(" Y ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+3, 100) TO pnO2
           STORE pnO1+" y "+pnO2 TO pnOm
      CASE AT(" A ", UPPER(pnOm))<>0
           STORE AT(" A ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+3, 100) TO pnO2
           STORE pnO1+" a "+pnO2 TO pnOm
      CASE AT(" O ", UPPER(pnOm))<>0
           STORE AT(" O ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+3, 100) TO pnO2
           STORE pnO1+" o "+pnO2 TO pnOm
      CASE AT(" DE ", UPPER(pnOm))<>0
           STORE AT(" DE ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" de "+pnO2 TO pnOm
      CASE AT(" EL ", UPPER(pnOm))<>0
           STORE AT(" EL ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" el "+pnO2 TO pnOm
      CASE AT(" LA ", UPPER(pnOm))<>0
           STORE AT(" LA ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" la "+pnO2 TO pnOm
      CASE AT(" EN ", UPPER(pnOm))<>0
           STORE AT(" EN ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" en "+pnO2 TO pnOm
      CASE AT(" CON ", UPPER(pnOm))<>0
           STORE AT(" CON ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+5, 100) TO pnO2
           STORE pnO1+" con "+pnO2 TO pnOm
      CASE AT(" TE ", UPPER(pnOm))<>0
           STORE AT(" TE ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" te "+pnO2 TO pnOm
      CASE AT(" TU ", UPPER(pnOm))<>0
           STORE AT(" TU ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" tu "+pnO2 TO pnOm
 ENDCASE
 DO CASE
      CASE ptPo="4"
           STORE pnOm TO vrAz
      CASE ptPo="5"
           STORE pnOm TO vdIr
 ENDCASE
 RELEASE pnOm, pnO1, pnO2, pnUm, piTe
ENDPROC
*
PROCEDURE Swx_0000a
 DO coLblz
 IF vsWx=1
      @ mfI0+21, mcO0+22 SAY "SI" FONT "Courier New", 9 STYLE "BQ" SIZE 1, 5
 ELSE
      @ mfI0+21, mcO0+22 SAY "NO" FONT "Courier New", 9 STYLE "BQ" SIZE 1, 5
 ENDIF
ENDPROC
*
PROCEDURE Swy_0000a
 DO coLblz
 IF vsWy=1
      @ mfI0+22, mcO0+22 SAY "SI" FONT "Courier New", 9 STYLE "BQ" SIZE 1, 5
 ELSE
      @ mfI0+22, mcO0+22 SAY "NO" FONT "Courier New", 9 STYLE "BQ" SIZE 1, 5
 ENDIF
ENDPROC
*
PROCEDURE Swz_0000a
 DO coLblz
 IF vsWz=1
      @ mfI0+23, mcO0+22 SAY "SI" FONT "Courier New", 9 STYLE "BQ" SIZE 1, 5
 ELSE
      @ mfI0+23, mcO0+22 SAY "NO" FONT "Courier New", 9 STYLE "BQ" SIZE 1, 5
 ENDIF
ENDPROC
*
PROCEDURE Sww_0000a
 DO coLblz
 IF vsWw=1
      @ mfI0+24, mcO0+22 SAY "SI" FONT "Courier New", 9 STYLE "BQ" SIZE 1, 5
 ELSE
      @ mfI0+24, mcO0+22 SAY "NO" FONT "Courier New", 9 STYLE "BQ" SIZE 1, 5
 ENDIF
ENDPROC
*
PROCEDURE Clp_8889a
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
PROCEDURE Hl1_8889a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "Este programa, actualiza los motores de Bases de Datos de la Sunat y los"
 @ pfIl+1, 01 SAY "procedimientos que ellos cambien."
 @ pfIl+2, 01 SAY "Se recomienda correrlo diariamente."
 @ pfIl+4, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 15 SAY "ESC" STYLE "BT"
 @ pfIl+7, 15 SAY "F10" STYLE "BT"
 @ pfIl+8, 15 SAY "F1" STYLE "BT"
 @ pfIl+9, 15 SAY "F3" STYLE "BT"
 @ pfIl+6, 25 SAY ":" STYLE "BT"
 @ pfIl+7, 25 SAY ":" STYLE "BT"
 @ pfIl+8, 25 SAY ":" STYLE "BT"
 @ pfIl+9, 25 SAY ":" STYLE "BT"
 @ pfIl+6, 27 SAY "Regresar al Menú Principal"
 @ pfIl+7, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 27 SAY "Ayuda del Programa"
 @ pfIl+9, 27 SAY "Buscar RUC"
 STORE pfIl+10 TO pfIl
 IF maDm=1
      @ pfIl+0, 15 SAY "F4" STYLE "BT"
      @ pfIl+1, 15 SAY "F5" STYLE "BT"
      @ pfIl+2, 15 SAY "F6" STYLE "BT"
      @ pfIl+3, 15 SAY "F7" STYLE "BT"
      @ pfIl+4, 15 SAY "F8" STYLE "BT"
      @ pfIl+5, 15 SAY "F9" STYLE "BT"
      @ pfIl+0, 25 SAY ":" STYLE "BT"
      @ pfIl+1, 25 SAY ":" STYLE "BT"
      @ pfIl+2, 25 SAY ":" STYLE "BT"
      @ pfIl+3, 25 SAY ":" STYLE "BT"
      @ pfIl+4, 25 SAY ":" STYLE "BT"
      @ pfIl+5, 25 SAY ":" STYLE "BT"
      @ pfIl+0, 27 SAY "Cambiar TXT"
      @ pfIl+1, 27 SAY "Cambiar Inicio"
      @ pfIl+2, 27 SAY "Cambiar Motor RUC P.N.-1"
      @ pfIl+3, 27 SAY "Cambiar Motor RUC P.N.-2"
      @ pfIl+4, 27 SAY "Cambiar Motor RUC P.J."
      @ pfIl+5, 27 SAY "Motor Todos solo nuevos"
      STORE pfIl+6 TO pfIl
 ENDIF
 @ pfIl, 15 SAY "ENTER" STYLE "BT"
 @ pfIl, 25 SAY ":" STYLE "BT"
 @ pfIl, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 FLUSH
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE vtAm, vfEm, viTe, viNi, vfIn, vnNn, vtXt, vvAr, vsWx, vsWy, vsWz,  ;
         vsWw, vsEp
 RELEASE vnOm, cnOm, vpOs, cpOs, vrUc, crUc, xrUc, vrAz, vdIr, vdEp, vdIs,  ;
         vcOn, vuBi
 RELEASE veSt, vlEn, vgRa, vsW0
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
ENDPROC
*
