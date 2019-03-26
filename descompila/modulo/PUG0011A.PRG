 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vbLa, vaNo, vmEs, vdIa, vnUm, vtPo, vtIp, vnTi, vmOn, vtCa,  ;
        vtOt, vgLo
 PUBLIC veSt, vuSu, vdAt, vtIm, vtD1, vsR1, vdOc, vpAg, vbAn, vnBa, vcTa,  ;
        vnCt, vcHe
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0011a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0011a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0011a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0011a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0011a
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
PROCEDURE Det_0011a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3540", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3541", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share Alias Detalle
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3541NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"CTA\FC014140.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Cabecera_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F4140NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"CTA\FC014141.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Detalle_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F4141NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caBecera_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f4140ano TO vaNo
      STORE f4140mes TO vmEs
      STORE f4140dia TO vdIa
      STORE f4140num TO vnUm
      STORE VAL(f4140tpo) TO vtPo
      STORE f4140tip TO vtIp
      STORE f4140nti TO vnTi
      STORE VAL(f4140mon) TO vmOn
      STORE f4140tca TO vtCa
      STORE f4140tot TO vtOt
      STORE f4140glo TO vgLo
      STORE f4140ban TO vbAn
      STORE f4140nba TO vnBa
      STORE f4140cta TO vcTa
      STORE f4140nct TO vnCt
      STORE f4140che TO vcHe
      STORE f4140est TO veSt
      STORE f4140usu TO vuSu
      STORE f4140dat TO vdAt
      STORE f4140tim TO vtIm
      @mFI0+12,mCO0+5 Say "["+vANO+":"+vMES+"-"+vNUM+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      SELECT caBecera
      SEEK vaNo+vmEs+"001"+"0"+vnUm
      IF EOF()
           APPEND BLANK
           REPLACE f3540ano WITH vaNo
           REPLACE f3540mes WITH vmEs
           REPLACE f3540dia WITH vdIa
           REPLACE f3540ser WITH "001"
           REPLACE f3540num WITH "0"+vnUm
           REPLACE f3540tpo WITH vtPo
           REPLACE f3540tpp WITH 1
           REPLACE f3540tip WITH vtIp
           REPLACE f3540nti WITH vnTi
           REPLACE f3540tca WITH vtCa
           REPLACE f3540mon WITH vmOn
           REPLACE f3540tot WITH vtOt
           REPLACE f3540glo WITH vgLo
           REPLACE f3540ban WITH vbAn
           REPLACE f3540cta WITH vcTa
           REPLACE f3540nct WITH vnCt
           REPLACE f3540nba WITH vnBa
           REPLACE f3540che WITH vcHe
           REPLACE f3540cco WITH SPACE(02)
           REPLACE f3540ncc WITH SPACE(50)
           REPLACE f3540rcb WITH SPACE(07)
           REPLACE f3540ven WITH SPACE(02)
           REPLACE f3540est WITH veSt
           REPLACE f3540usu WITH vuSu
           REPLACE f3540dat WITH vdAt
           REPLACE f3540tim WITH vtIm
           REPLACE f3540maq WITH SPACE(30)
           IF veSt<>"9"
                STORE 1 TO viTe
                SELECT deTalle_control
                SEEK vaNo+vmEs+vnUm
                DO WHILE  .NOT. EOF() .AND. f4141ano+f4141mes+f4141num= ;
                   vaNo+vmEs+vnUm
                     STORE f4141tdo TO vtDo
                     STORE f4141ser TO vsR1
                     STORE f4141doc TO vdOc
                     STORE f4141tot TO vpAg
                     SELECT deTalle
                     APPEND BLANK
                     REPLACE f3541ano WITH vaNo
                     REPLACE f3541mes WITH vmEs
                     REPLACE f3541ser WITH "001"
                     REPLACE f3541num WITH "0"+vnUm
                     REPLACE f3541tdo WITH vtDo
                     REPLACE f3541sr1 WITH vsR1
                     REPLACE f3541doc WITH "0"+vdOc
                     REPLACE f3541pag WITH vpAg
                     REPLACE f3541rcb WITH SPACE(07)
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
PROCEDURE P00_0011a
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
 DO tiT_0000a WITH "Pasa Salidas de Bancos de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa los Archivos de Salidas de Bancos de CONTROL" Font "&mLetRom",13 Style "BQ"
 @mFI0+04,mCO0+10 Say "a SAM. Grabando nuevos y actualizando anteriores."            Font "&mLetRom",13 Style "BQ"
 @mFI0+10,mCO0+05 Say "Path:"                                                        Font "&mLetRom",13 Style "BQ"
 DO coLblr
 @mFI0+07,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..."     Font "&mLetRom",14 Style "BTI"
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
PROCEDURE Clp_0011a
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
PROCEDURE Hl1_0011a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de los Salidas de Bancos"
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
 RELEASE vpAt, vbLa, vaNo, vmEs, vdIa, vnUm, vtPo, vtIp, vnTi, vmOn, vtCa,  ;
         vtOt, vgLo
 RELEASE veSt, vuSu, vdAt, vtIm, vtD1, vsR1, vdOc, vpAg, vbAn, vnBa, vcTa,  ;
         vnCt, vcHe
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
