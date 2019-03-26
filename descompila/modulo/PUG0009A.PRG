 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vbLa, vaNo, vmEs, vdIa, vnUm, vtPo, vtIp, vnTi, vmOn, vtCa,  ;
        vtOt, vgLo
 PUBLIC veSt, vuSu, vdAt, vtIm, vtD1, vsR1, vdOc, vpAg
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0009a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0009a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0009a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0009a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0009a
                EXIT
      ENDCASE
      DO coLbln
      @mFI0+10,mCO0+14 Edit vPAT Font "&mLetRom",12 Style "BQ" Size 1,73.5,80
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Det_0009a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "3520", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3520NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "3521", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share Alias Detalle
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3521NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"CTA\FC014120.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Cabecera_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F4120NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"CTA\FC014121.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Detalle_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F4121NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caBecera_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f4120ano TO vaNo
      STORE f4120mes TO vmEs
      STORE f4120dia TO vdIa
      STORE f4120num TO vnUm
      STORE VAL(f4120tpo) TO vtPo
      STORE f4120tip TO vtIp
      STORE f4120nti TO vnTi
      STORE VAL(f4120mon) TO vmOn
      STORE f4120tca TO vtCa
      STORE f4120tot TO vtOt
      STORE f4120glo TO vgLo
      STORE f4120est TO veSt
      STORE f4120usu TO vuSu
      STORE f4120dat TO vdAt
      STORE f4120tim TO vtIm
      @mFI0+12,mCO0+5 Say "["+vANO+":"+vMES+"-"+vNUM+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      SELECT caBecera
      SEEK vaNo+vmEs+"001"+"0"+vnUm
      IF EOF()
           APPEND BLANK
           REPLACE f3520ano WITH vaNo
           REPLACE f3520mes WITH vmEs
           REPLACE f3520dia WITH vdIa
           REPLACE f3520ser WITH "001"
           REPLACE f3520num WITH "0"+vnUm
           REPLACE f3520tpo WITH vtPo
           REPLACE f3520tpp WITH 1
           REPLACE f3520caj WITH 1
           REPLACE f3520tip WITH vtIp
           REPLACE f3520nti WITH vnTi
           REPLACE f3520tca WITH vtCa
           REPLACE f3520mon WITH vmOn
           REPLACE f3520tot WITH vtOt
           REPLACE f3520glo WITH vgLo
           REPLACE f3520srl WITH SPACE(03)
           REPLACE f3520let WITH SPACE(07)
           REPLACE f3520dnc WITH 2
           REPLACE f3520cco WITH SPACE(02)
           REPLACE f3520ncc WITH SPACE(50)
           REPLACE f3520rcb WITH SPACE(07)
           REPLACE f3520ven WITH SPACE(02)
           REPLACE f3520est WITH veSt
           REPLACE f3520usu WITH vuSu
           REPLACE f3520dat WITH vdAt
           REPLACE f3520tim WITH vtIm
           REPLACE f3520maq WITH SPACE(30)
           IF veSt<>"9"
                STORE 1 TO viTe
                SELECT deTalle_control
                SEEK vaNo+vmEs+vnUm
                DO WHILE  .NOT. EOF() .AND. f4121ano+f4121mes+f4121num= ;
                   vaNo+vmEs+vnUm
                     STORE f4121tdo TO vtDo
                     STORE f4121ser TO vsR1
                     STORE f4121doc TO vdOc
                     STORE f4121tot TO vpAg
                     SELECT deTalle
                     APPEND BLANK
                     REPLACE f3521ano WITH vaNo
                     REPLACE f3521mes WITH vmEs
                     REPLACE f3521ser WITH "001"
                     REPLACE f3521num WITH "0"+vnUm
                     REPLACE f3521tdo WITH vtDo
                     REPLACE f3521sr1 WITH vsR1
                     REPLACE f3521doc WITH "0"+vdOc
                     REPLACE f3521pag WITH vpAg
                     REPLACE f3521rcb WITH SPACE(07)
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
PROCEDURE P00_0009a
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
 DO tiT_0000a WITH "Pasa Salidas de Caja de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa los Archivos de Salidas de Caja de CONTROL" Font "&mLetRom",13 Style "BQ"
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
PROCEDURE Clp_0009a
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
PROCEDURE Hl1_0009a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de los Salidas de Caja"
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
 RELEASE veSt, vuSu, vdAt, vtIm, vtD1, vsR1, vdOc, vpAg
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
