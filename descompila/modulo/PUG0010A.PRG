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
 DO p00_0010a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0010a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0010a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0010a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0010a
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
PROCEDURE Det_0010a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3530", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3530NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share Alias Detalle
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3531NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"CTA\FC014130.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Cabecera_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F4130NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"CTA\FC014131.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Detalle_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F4131NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caBecera_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f4130ano TO vaNo
      STORE f4130mes TO vmEs
      STORE f4130dia TO vdIa
      STORE f4130num TO vnUm
      STORE VAL(f4130tpo) TO vtPo
      STORE f4130tip TO vtIp
      STORE f4130nti TO vnTi
      STORE VAL(f4130mon) TO vmOn
      STORE f4130tca TO vtCa
      STORE f4130tot TO vtOt
      STORE f4130glo TO vgLo
      STORE f4130ban TO vbAn
      STORE f4130nba TO vnBa
      STORE f4130cta TO vcTa
      STORE f4130nct TO vnCt
      STORE f4130che TO vcHe
      STORE f4130est TO veSt
      STORE f4130usu TO vuSu
      STORE f4130dat TO vdAt
      STORE f4130tim TO vtIm
      @mFI0+12,mCO0+5 Say "["+vANO+":"+vMES+"-"+vNUM+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      SELECT caBecera
      SEEK vaNo+vmEs+"001"+"0"+vnUm
      IF EOF()
           APPEND BLANK
           REPLACE f3530ano WITH vaNo
           REPLACE f3530mes WITH vmEs
           REPLACE f3530dia WITH vdIa
           REPLACE f3530ser WITH "001"
           REPLACE f3530num WITH "0"+vnUm
           REPLACE f3530tpo WITH vtPo
           REPLACE f3530tpp WITH 1
           REPLACE f3530tip WITH vtIp
           REPLACE f3530nti WITH vnTi
           REPLACE f3530tca WITH vtCa
           REPLACE f3530mon WITH vmOn
           REPLACE f3530tot WITH vtOt
           REPLACE f3530glo WITH vgLo
           REPLACE f3530rcb WITH SPACE(07)
           REPLACE f3530ban WITH vbAn
           REPLACE f3530nba WITH vnBa
           REPLACE f3530cta WITH vcTa
           REPLACE f3530nct WITH vnCt
           REPLACE f3530che WITH vcHe
           REPLACE f3530est WITH veSt
           REPLACE f3530usu WITH vuSu
           REPLACE f3530dat WITH vdAt
           REPLACE f3530tim WITH vtIm
           REPLACE f3530maq WITH SPACE(30)
           IF veSt<>"9"
                STORE 1 TO viTe
                SELECT deTalle_control
                SEEK vaNo+vmEs+vnUm
                DO WHILE  .NOT. EOF() .AND. f4131ano+f4131mes+f4131num= ;
                   vaNo+vmEs+vnUm
                     STORE f4131tdo TO vtDo
                     STORE f4131ser TO vsR1
                     STORE f4131doc TO vdOc
                     STORE f4131tot TO vpAg
                     SELECT deTalle
                     APPEND BLANK
                     REPLACE f3531ano WITH vaNo
                     REPLACE f3531mes WITH vmEs
                     REPLACE f3531ser WITH "001"
                     REPLACE f3531num WITH "0"+vnUm
                     REPLACE f3531tdo WITH vtDo
                     REPLACE f3531sr1 WITH vsR1
                     REPLACE f3531doc WITH "0"+vdOc
                     REPLACE f3531pag WITH vpAg
                     REPLACE f3531rcb WITH SPACE(07)
                     REPLACE f3531mpa WITH 0
                     REPLACE f3531mps WITH 0
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
PROCEDURE P00_0010a
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
 DO tiT_0000a WITH "Pasa Ingresos a Bancos de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa los Archivos de Ingresos a Bancos de CONTROL" Font "&mLetRom",13 Style "BQ"
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
PROCEDURE Clp_0010a
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
PROCEDURE Hl1_0010a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de los Ingresos a Bancos"
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
