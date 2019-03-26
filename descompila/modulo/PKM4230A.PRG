 PARAMETER wnIv
 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "4230", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Marcaciones
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4230COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "4200", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Trabajadores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200CLA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "4220", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Hor_Area
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4220COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "4221", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Hor_Trabajador
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4221COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "4999", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Claves
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4999CLA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vfB1, vfB2, vfB3, vfB4, vcB1, vcB2, vcB3, vcB4, vtRa, vnOm, vcDa,  ;
        vaRe, vcAr
 PUBLIC veSt, vfOt, vfEm, vdIa, vmEs, vaNo, vdDd, viNi, vcLa, vcL1, voPc, vtIm
 STORE DATE() TO vfEm
 STORE 99 TO mkEy
 IF wnIv$"12"
      STORE 1 TO voPc
 ELSE
      STORE 3 TO voPc
 ENDIF
 DO diA_4230a
 SELECT trAbajadores
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      IF f4200est="9"
           SKIP
           LOOP
      ENDIF
      STORE "I" TO veSt
      STORE f4200cod TO vtRa
      STORE f4200are TO vcDa
      STORE f4200nar TO vaRe
      STORE f4200nca TO vcAr
      STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ALLTRIM(f4200nom)  ;
            TO vnOm
      STORE SPACE(01) TO viNi
      SELECT hoR_trabajador
      SEEK vtRa
      DO veR_lock
      IF  .NOT. EOF()
           DO CASE
                CASE vdDd="L"
                     STORE f4221in1 TO viNi
                CASE vdDd="M"
                     STORE f4221in2 TO viNi
                CASE vdDd="I"
                     STORE f4221in3 TO viNi
                CASE vdDd="J"
                     STORE f4221in4 TO viNi
                CASE vdDd="V"
                     STORE f4221in5 TO viNi
                CASE vdDd="S"
                     STORE f4221in6 TO viNi
                CASE vdDd="D"
                     STORE f4221in7 TO viNi
           ENDCASE
      ELSE
           SELECT hoR_area
           SEEK vcDa
           DO veR_lock
           IF  .NOT. EOF()
                DO CASE
                     CASE vdDd="L"
                          STORE f4220in1 TO viNi
                     CASE vdDd="M"
                          STORE f4220in2 TO viNi
                     CASE vdDd="I"
                          STORE f4220in3 TO viNi
                     CASE vdDd="J"
                          STORE f4220in4 TO viNi
                     CASE vdDd="V"
                          STORE f4220in5 TO viNi
                     CASE vdDd="S"
                          STORE f4220in6 TO viNi
                     CASE vdDd="D"
                          STORE f4220in7 TO viNi
                ENDCASE
           ENDIF
      ENDIF
      IF vdDd$"LMIJVSD" .AND. (ALLTRIM(viNi)=":" .OR. LEN(ALLTRIM(viNi))=0)
           STORE SPACE(01) TO veSt
      ELSE
           STORE "I" TO veSt
      ENDIF
      SELECT maRcaciones
      SEEK vtRa+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
           SUBSTR(DTOC(vfEm), 1, 2)
      IF EOF()
           DO nuEvo_rg
           REPLACE f4230cod WITH vtRa
           REPLACE f4230fem WITH vfEm
           REPLACE f4230ent WITH "  :  "
           REPLACE f4230sal WITH "  :  "
           REPLACE f4230rin WITH "  :  "
           REPLACE f4230rfi WITH "  :  "
           REPLACE f4230est WITH veSt
      ENDIF
      SELECT trAbajadores
      SKIP
      DO veR_lock
 ENDDO
 DO boR_4230a
 SET READBORDER ON
 DO p00_4230a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO diS_4230a
 DO p1_0000a
 DO WHILE .T.
      DO coL_fonro
      STORE k_Enter TO mkEy
      STORE TIME() TO vtIm
      @mFI0+15.5,mCO0+22 Say Date()           Font "&mLetRom",12 Style "BQ" Size 1,15,15
      @mFI0+15.5,mCO0+76 Say Substr(vTIM,1,5) Font "&mLetRom",12 Style "BQ" Size 1,15,15
      DO coLbln
      SET READBORDER OFF
      DO CASE
           CASE mnPs=6
                @mFI0+1.7,mCO0+65 Get vCLA Font "&mLetRom",12 Style "NQ" Size 1,18.4 Pict "999999"   Color ,&mColBlB
           CASE mnPs=8
                @mFI0+1.7,mCO0+65 Get vCLA Font "&mLetRom",12 Style "NQ" Size 1,18.4 Pict "99999999" Color ,&mColBlB
      ENDCASE
      READ TIMEOUT 40
      SET READBORDER ON
      DO coL_fonro
      @mFI0+19.0,mCO0+22 Say Space(50) Font "&mLetRom",16 Style "BQ" Size 1,45
      DO coLbln
      @mFI0+01.7,mCO0+65 Say vCL1      Font "&mLetRom",12 Style "NQ" Size 1,18.4
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4230a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4230a
           CASE mkEy=k_F10
                DO reTorna IN MARCADOR
           CASE mkEy=k_F12
                SET READBORDER ON
                DO p00_4230a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vcLa))<>0
                SELECT clAves
                SEEK ALLTRIM(vcLa)+"*"
                DO veR_lock
                IF  .NOT. EOF()
                     STORE VAL(f4999tra) TO voPc
                     DO caM_4230a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     LOOP
                ENDIF
                SELECT trAbajadores
                SEEK ALLTRIM(vcLa)+"*"
                DO veR_lock
                IF EOF()
                     DO coL_fonro
                     @mFI0+19,mCO0+22 Say "Clave: "+vCLA+" no registrada" Font "&mLetRom",16 Style "BQ" Size 1,40
                ELSE
                     DO grA_4230a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                DO boR_4230a
                SELECT trAbajadores
                STORE 99 TO mkEy
                STORE SPACE(08) TO vcLa, vcL1
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_right
                DO CASE
                     CASE voPc=4 .AND. wnIv="1"
                          STORE 1 TO voPc
                     CASE voPc=2 .AND. wnIv="2"
                          STORE 1 TO voPc
                     CASE voPc=4 .AND. wnIv="3"
                          STORE 3 TO voPc
                     OTHERWISE
                          STORE voPc+1 TO voPc
                ENDCASE
                DO caM_4230a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE voPc=1 .AND. wnIv="1"
                          STORE 4 TO voPc
                     CASE voPc=1 .AND. wnIv="2"
                          STORE 2 TO voPc
                     CASE voPc=3 .AND. wnIv="3"
                          STORE 4 TO voPc
                     OTHERWISE
                          STORE voPc-1 TO voPc
                ENDCASE
                DO caM_4230a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Dia_4230a
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
 DO CASE
      CASE vdIa+vmEs="0101" .OR. vdIa+vmEs="0105" .OR. vdIa+vmEs="2906"  ;
           .OR. vdIa+vmEs="2807" .OR. vdIa+vmEs="2907" .OR. vdIa+vmEs= ;
           "0810" .OR. vdIa+vmEs="2512"
           STORE "F" TO vdDd
      CASE CDOW(vfEm)="Lunes"
           STORE "L" TO vdDd
      CASE CDOW(vfEm)="Martes"
           STORE "M" TO vdDd
      CASE CDOW(vfEm)="Miércoles"
           STORE "I" TO vdDd
      CASE CDOW(vfEm)="Jueves"
           STORE "J" TO vdDd
      CASE CDOW(vfEm)="Viernes"
           STORE "V" TO vdDd
      CASE CDOW(vfEm)="Sábado"
           STORE "S" TO vdDd
      CASE CDOW(vfEm)="Domingo"
           STORE "D" TO vdDd
 ENDCASE
ENDPROC
*
PROCEDURE Bor_4230a
 STORE SPACE(04) TO vtRa
 STORE SPACE(70) TO vnOm
 STORE SPACE(25) TO vaRe, vcAr
 STORE SPACE(08) TO vcLa, vcL1, vfOt
ENDPROC
*
PROCEDURE P00_4230a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 20 TO muFi
 STORE 124 TO muCo
 STORE ((mwFi-muFi)/2)+1.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0-03.2 TO vfB1, vfB2, vfB3, vfB4
 STORE mcO0 TO vcB1
 STORE vcB1+25 TO vcB2
 STORE vcB2+25 TO vcB3
 STORE vcB3+25 TO vcB4
 DO CASE
      CASE wnIv="1"
           DO tiT_0000a WITH "Marcación de Asistencia"
      CASE wnIv="2"
           DO tiT_0000a WITH "Marcación de Asistencia (Ingresos/Salidas)"
      CASE wnIv="3"
           DO tiT_0000a WITH "Marcación de Asistencia (Refrigerios)"
 ENDCASE
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "4", "R_CONS22", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 @ mfI0+0.9, mcO0+28 TO mfI0+4.0, mcO0+muCo-30 PATTERN 1
 @ mfI0+0.9, mcO0+28 TO mfI0+0.9, mcO0+muCo-30 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.9, mcO0+28 TO mfI0+4.0, mcO0+28 COLOR RGB(128,128,128,0,0,0)
 DO coL_fondo
 @mFI0+01.7,mCO0+35 Say "Digitar la Clave:" Font "&mLetRom",14 Style "BT"
 @mFI0+11.1,mCO0+04 Say "Trabajador:"       Font "&mLetRom",13 Style "BT"
 @mFI0+13.1,mCO0+04 Say "Cargo:"            Font "&mLetRom",13 Style "BT"
 @mFI0+13.1,mCO0+66 Say "Area:"             Font "&mLetRom",13 Style "BT"
 @mFI0+15.5,mCO0+04 Say "Fecha:"            Font "&mLetRom",13 Style "BT"
 @mFI0+15.5,mCO0+66 Say "Hora:"             Font "&mLetRom",13 Style "BT"
 @mFI0+11.1,mCO0+23 Edit vNOM               Font "&mLetRom",12 Style "NQ" Size 1,78,78
 @mFI0+13.1,mCO0+23 Edit vCAR               Font "&mLetRom",12 Style "NQ" Size 1,34,34
 @mFI0+13.1,mCO0+76 Edit vARE               Font "&mLetRom",12 Style "NQ" Size 1,34,34
 READ TIMEOUT 0.01
 @mFI0+01.7,mCO0+65 Say vCL1                Font "&mLetRom",12 Style "NQ" Size 1,18.4 Color &mColBlN
 DO caM_4230a
ENDPROC
*
PROCEDURE Dis_4230a
 DO coLbln
 @mFI0+11.1,mCO0+23 Say vNOM Font "&mLetRom",12 Style "NQ" Size 1,78 Pict "@S78"
 @mFI0+13.1,mCO0+23 Say vCAR Font "&mLetRom",12 Style "NQ" Size 1,34 Pict "@S34"
 @mFI0+13.1,mCO0+76 Say vARE Font "&mLetRom",12 Style "NQ" Size 1,34 Pict "@S34"
 @mFI0+01.7,mCO0+65 Say vCL1 Font "&mLetRom",12 Style "NQ" Size 1,18.4
 IF LEN(ALLTRIM(vfOt))<>0
      IF LEN(ALLTRIM(muNi))=0
           STORE mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO mdBf
      ELSE
           STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(vfOt)+".BMP" TO mdBf
      ENDIF
      DO coLbln
      @ mfI0-3.5, mcO0+muCo-28.5 TO mfI0+9.4, mcO0+muCo+0.5 PATTERN 1 PEN 3
      If File("&mDBF")
           @mFI0-3.2,mCO0+mUCO-27.6 Say "&mDBF" BitMap Size 12.4,27.3 Stretch Style "B"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
 ELSE
      DO coLbln
      @ mfI0-3.5, mcO0+muCo-28.5 TO mfI0+9.4, mcO0+muCo+0.5 PATTERN 1 PEN 3
 ENDIF
ENDPROC
*
PROCEDURE Cam_4230a
 DO prEsiona WITH "1", "CUADRO", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CUADRO", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CUADRO", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CUADRO", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE voPc=1
           DO prEsiona WITH "2", "CUADRO", vfB1, vcB1
      CASE voPc=2
           DO prEsiona WITH "2", "CUADRO", vfB2, vcB2
      CASE voPc=3
           DO prEsiona WITH "2", "CUADRO", vfB3, vcB3
      CASE voPc=4
           DO prEsiona WITH "2", "CUADRO", vfB4, vcB4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fonaz
 @vFB1,vCB1+1.1 Say "Entrada" Font "&mLetRom",13 Style "BT"
 @vFB2,vCB2+2.2 Say "Salida"  Font "&mLetRom",13 Style "BT"
 IF wnIv="2"
      DO coLplp
 ENDIF
 @vFB3,vCB3+1.6 Say "Sal.Ref" Font "&mLetRom",13 Style "BT"
 @vFB4,vCB4+1.6 Say "Ing.Ref" Font "&mLetRom",13 Style "BT"
 DO coL_fonro
 DO CASE
      CASE voPc=1
           @vFB1,vCB1+1.1 Say "Entrada" Font "&mLetRom",13 Style "BT"
      CASE voPc=2
           @vFB2,vCB2+2.2 Say "Salida"  Font "&mLetRom",13 Style "BT"
      CASE voPc=3
           @vFB3,vCB3+1.6 Say "Sal.Ref" Font "&mLetRom",13 Style "BT"
      CASE voPc=4
           @vFB4,vCB4+1.6 Say "Ing.Ref" Font "&mLetRom",13 Style "BT"
 ENDCASE
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Gra_4230a
 SELECT trAbajadores
 STORE f4200cod TO vtRa
 STORE f4200nar TO vaRe
 STORE f4200nca TO vcAr
 STORE f4200fot TO vfOt
 STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ALLTRIM(f4200nom) TO vnOm
 DO coLbln
 DO diS_4230a
 SELECT maRcaciones
 SEEK vtRa+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
      SUBSTR(DTOC(vfEm), 1, 2)
 IF  .NOT. EOF()
      DO CASE
           CASE voPc=1 .AND. (LEN(ALLTRIM(f4230ent))=0 .OR.  ;
                ALLTRIM(f4230ent)=":" .OR. f4230ent="00:00")
           CASE voPc=2 .AND. (LEN(ALLTRIM(f4230sal))=0 .OR.  ;
                ALLTRIM(f4230sal)=":" .OR. f4230sal="00:00")
           CASE voPc=3 .AND. (LEN(ALLTRIM(f4230rin))=0 .OR.  ;
                ALLTRIM(f4230rin)=":" .OR. f4230rin="00:00")
           CASE voPc=4 .AND. (LEN(ALLTRIM(f4230rfi))=0 .OR.  ;
                ALLTRIM(f4230rfi)=":" .OR. f4230rfi="00:00")
           OTHERWISE
                DO coL_fonve
                @mFI0+19,mCO0+22 Say "Marcación ya registrada..." Font "&mLetRom",16 Style "BQ" Size 1,45
                RETURN
      ENDCASE
 ENDIF
 DO coL_fonaz
 @mFI0+19,mCO0+22 Say "Marcación realizada con Exito..."+vTIM Font "&mLetRom",16 Style "BQ" Size 1,45
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT maRcaciones
 SEEK vtRa+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
      SUBSTR(DTOC(vfEm), 1, 2)
 IF EOF()
      DO nuEvo_rg
      REPLACE f4230cod WITH vtRa
      REPLACE f4230fem WITH vfEm
      REPLACE f4230ent WITH "  :  "
      REPLACE f4230sal WITH "  :  "
      REPLACE f4230rin WITH "  :  "
      REPLACE f4230rfi WITH "  :  "
      REPLACE f4230est WITH SPACE(01)
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtRa+SUBSTR(DTOC(vfEm), 7, 4)+ ;
              SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 DO CASE
      CASE voPc=1
           REPLACE f4230ent WITH vtIm
      CASE voPc=2
           REPLACE f4230sal WITH vtIm
      CASE voPc=3
           REPLACE f4230rin WITH vtIm
      CASE voPc=4
           REPLACE f4230rfi WITH vtIm
 ENDCASE
 REPLACE f4230est WITH SPACE(01)
 UNLOCK
 FLUSH
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Clp_4230a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=vfB1 .AND. mfIl<=vfB1+1.45 .AND. wnIv$"12" .AND. mcCc>= ;
           vcB1 .AND. mcCc<=vcB1+14.2 .AND. voPc<>1
           STORE 1 TO voPc
           DO caM_4230a
      CASE mfIl>=vfB2 .AND. mfIl<=vfB2+1.45 .AND. wnIv$"12" .AND. mcCc>= ;
           vcB2 .AND. mcCc<=vcB2+14.2 .AND. voPc<>2
           STORE 2 TO voPc
           DO caM_4230a
      CASE mfIl>=vfB3 .AND. mfIl<=vfB3+1.45 .AND. wnIv$"13" .AND. mcCc>= ;
           vcB3 .AND. mcCc<=vcB3+14.2 .AND. voPc<>3
           STORE 3 TO voPc
           DO caM_4230a
      CASE mfIl>=vfB4 .AND. mfIl<=vfB4+1.45 .AND. wnIv$"13" .AND. mcCc>= ;
           vcB4 .AND. mcCc<=vcB4+14.2 .AND. voPc<>4
           STORE 4 TO voPc
           DO caM_4230a
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
PROCEDURE Hl1_4230a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "En este programa, se digita la clave que se le ha grabado al Trabajador"
 @ pfIl+01, 02 SAY  ;
   "y este graba la Hora de Ingreso o Salida según horario del computador."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 25 SAY ":" STYLE "BT"
 @ pfIl+06, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+05, 14 SAY "F10" STYLE "BT"
 @ pfIl+06, 14 SAY "ESC" STYLE "BT"
 @ pfIl+07, 14 SAY "F1" STYLE "BT"
 @ pfIl+08, 14 SAY "CTRL -> <-" STYLE "BT"
 @ pfIl+05, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+06, 27 SAY "Regresar al Menú Principal"
 @ pfIl+07, 27 SAY "Ayuda del Programa"
 @ pfIl+08, 27 SAY "Cambio de Nivel de Marcación"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vfB1, vfB2, vfB3, vfB4, vcB1, vcB2, vcB3, vcB4, vtRa, vnOm, vcDa,  ;
         vaRe, vcAr
 RELEASE veSt, vfOt, vfEm, vdIa, vmEs, vaNo, vdDd, viNi, vcLa, vcL1, voPc, vtIm
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
