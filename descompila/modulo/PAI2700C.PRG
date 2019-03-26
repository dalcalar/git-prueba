 PARAMETER ptPo, ppRg
 PRIVATE ptPp, psWw
 = INKEY(0.01)
 STORE "M" TO vuNd
 STORE 1 TO ptPp, vsWx
 STORE 00 TO xeSp, psWw
 STORE SPACE(03) TO vcMm
 STORE SPACE(30) TO vcMp
 DO mv1_2700c WITH "1", "N", vcOd
 IF ptPo$"13" .AND. (ppRg="1200" .OR. ppRg="1300")
      SELECT teMporal_7
      ZAP
      REINDEX
      SELECT prOductos
      DO orD_0000a WITH "2111", "A", "F2111BAS", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK UPPER(ALLTRIM(vcOd))+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2111bas)+"*"=ALLTRIM(vcOd)+"*"
           IF f2111est<>"9" .AND. ALLTRIM(f2111bas)+"*"<> ;
              ALLTRIM(f2111cod)+"*" .AND. ((f2111cst=1 .AND. f2111sto>0)  ;
              .OR. f2111cst=2)
                STORE psWw+1 TO psWw
                STORE f2111cod TO zcOd
                STORE f2111des TO zdEs
                STORE f2111nuv TO znUv
                STORE f2111la1 TO zlA1
                STORE f2111la2 TO zlA2
                STORE f2111an1 TO zaN1
                STORE f2111an2 TO zaN2
                SELECT teMporal_7
                APPEND BLANK
                REPLACE ftM7cod WITH zcOd
                REPLACE ftM7des WITH zdEs
                REPLACE ftM7nuv WITH znUv
                REPLACE ftM7la1 WITH zlA1
                REPLACE ftM7la2 WITH zlA2
                REPLACE ftM7an1 WITH zaN1
                REPLACE ftM7an2 WITH zaN2
                FLUSH
           ENDIF
           SELECT prOductos
           SKIP
      ENDDO
      SELECT prOductos
      DO orD_0000a WITH "2111", "A", "F2111COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK UPPER(ALLTRIM(vcOd))+"*"
      SELECT teMporal_7
      GOTO TOP
 ENDIF
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK UPPER(ALLTRIM(vcOd))+"*"
 IF  .NOT. EOF()
      STORE f2111tpo TO ptPp
 ENDIF
 DO p00_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE ifFs TO vfFs
 DO toT_2700c
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE 00 TO urCc, frCc
           DO liM_2700c
      OTHERWISE
           DO paN_2700c
           IF mkEy=k_Esc
                RETURN
           ENDIF
           GOTO TOP
           DO muE_2700c WITH "C"
 ENDCASE
 STORE 01 TO irCc, vrCc
 STORE ifFs TO vfFs
 DO diS_2700c WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2700c
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2700c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2700c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2700c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_del .AND. viMm=01
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_c
                SAVE SCREEN TO vpAn_12
                DO coL_fondo
                STORE 1 TO vnUm
                SET READBORDER ON
                DO cuAdro WITH ifFs+3, icL1+35.8, ifFs+6, icL1+59.8
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @iFFS+4,iCL1+39 Say "Ítem:" Font "&mLetRom",13 Style "BQ"
                @iFFS+4,iCL1+49 Get vNUM    Font "&mLetRom",13 Style "BQ" Pict "99" Size 1,3
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET READBORDER OFF
                RESTORE SCREEN FROM vpAn_12
                DO CASE
                     CASE mkEy=k_F10
                          DO reTorna
                     CASE mkEy=k_Esc
                          STORE 99 TO mkEy
                     CASE vnUm>frEc
                          STORE "ítem no existe..." TO mmSj
                     CASE vnUm=vrEc
                          STORE "ítem no puede ser el mismo..." TO mmSj
                     OTHERWISE
                          SELECT teMporal
                          GOTO vnUm
                          STORE ftM1cod TO ccOd
                          SELECT prOductos
                          SEEK ALLTRIM(ccOd)+"*"
                          IF EOF()
                               STORE 0 TO xeSp
                          ELSE
                               STORE f2111esp TO xeSp
                          ENDIF
                          DO mv1_2700c WITH "1", "S", ccOd
                          DO toT_2700c
                          SELECT teMporal_3
                          GOTO TOP
                          IF  .NOT. BOF()
                               GOTO irCc
                               DO paN_2700c
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                               STORE irCc TO vrCc
                               STORE ifFs TO vfFs
                               GOTO vrCc
                               DO muE_2700c WITH "C"
                          ENDIF
                ENDCASE
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viMm=1
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frCc=vrCc) .OR. (mkEy=k_Pgdn .AND.  ;
                frCc=urCc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND.  ;
                vrCc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irCc=1
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Tab .AND. vpIe=0
                STORE "No se puede tener cantidad 0 para aceptar en el producto..."  ;
                      TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=1
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. ptPo="3" .AND. voPc="N"
                DO CASE
                     CASE vuN1="M" .AND. vuN2="M" .AND. viTe=1
                          STORE "P" TO vuN1
                     CASE vuN1="M" .AND. vuN2="M" .AND. viTe=2
                          STORE "P" TO vuN2
                     CASE vuN1="M" .AND. vuN2="P" .AND. viTe=1
                          STORE "P" TO vuN1
                     CASE vuN1="M" .AND. vuN2="P" .AND. viTe=2
                          STORE "M" TO vuN2
                     CASE vuN1="M" .AND. vuN2="P" .AND. viTe=3
                          STORE "M" TO vuN2
                          STORE 02 TO viTe
                     CASE vuN1="P" .AND. vuN2="M" .AND. viTe=1
                          STORE "M" TO vuN1
                     CASE vuN1="P" .AND. vuN2="M" .AND. viTe=2
                          STORE "M" TO vuN1
                          STORE 01 TO viTe
                     CASE vuN1="P" .AND. vuN2="M" .AND. viTe=3
                          STORE "P" TO vuN2
                     CASE vuN1="P" .AND. vuN2="P" .AND. viTe=1
                          STORE "M" TO vuN1
                     CASE vuN1="P" .AND. vuN2="P" .AND. viTe=2
                          STORE "M" TO vuN1
                          STORE 01 TO viTe
                     CASE vuN1="P" .AND. vuN2="P" .AND. viTe=3
                          STORE "M" TO vuN2
                     CASE vuN1="P" .AND. vuN2="P" .AND. viTe=4
                          STORE "M" TO vuN2
                          STORE 03 TO viTe
                ENDCASE
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F3 .AND. (ppRg="1200" .OR. ppRg="1300")
                DO coR_2700c
                SELECT teMporal_3
           CASE mkEy=k_F4 .AND. ptPo="3" .AND. voPc="N"
                IF vsWx=1
                     STORE 2 TO vsWx
                ELSE
                     STORE 1 TO vsWx
                ENDIF
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F5 .AND. ptPo="2" .AND. (ppRg="1200" .OR. ppRg= ;
                "1300") .AND. voPc="N"
                PRIVATE ptMp
                DO coLbln
                STORE STR(vpOr, 2, 0) TO ptMp
                @vFFS,iCL1+56.5 Get pTMP Font "&mLetAri",9 Style "NQ" Size 1,2.6 Pict "99" Color ,&mColBlN
                SET CONFIRM ON
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET CONFIRM OFF
                IF mkEy=k_Enter
                     STORE VAL(ptMp) TO vpOr
                ENDIF
                STORE 99 TO mkEy
                RELEASE ptMp
           CASE mkEy=k_F6 .AND. (ppRg="1200" .OR. ppRg="1300") .AND. voPc="N"
                PRIVATE ptMp
                DO coLbln
                STORE vcMm TO ptMp
                @vFFS,iCL1 Edit pTMP Font "&mLetAri",9 Style "NQ" Size 1,5.5,3
                SET CONFIRM ON
                SET CURSOR ON
                READ
                SET CURSOR OFF
                SET CONFIRM OFF
                IF mkEy=k_Enter
                     STORE ptMp TO vcMm
                ENDIF
                STORE 99 TO mkEy
                RELEASE ptMp
           CASE mkEy=k_F8 .AND. ptPo="3" .AND. voPc="N"
                DO CASE
                     CASE vuNd="M"
                          STORE "P" TO vuNd
                     CASE vuNd="P"
                          STORE "M" TO vuNd
                ENDCASE
                IF viMm=1
                     DO liM_2700c
                     DO diS_2700c WITH "R"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
           CASE mkEy=k_F9 .AND. ptPo$"89"
           CASE mkEy=k_F9 .AND. voPc="N"
                DO caL_2700c
                STORE " " TO vcMm, vcMp
                STORE "S" TO voPc
                STORE vtPi*vcTd TO vtPi
                STORE 01 TO vcTd
                STORE "  /  " TO vp12, vp22
                STORE 00 TO vmLa, vmAn, vp11, vp21
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F9 .AND. voPc="S" .AND. viMm=2
                STORE "No se puede volver a medidas, el ítem está grabado..."  ;
                      TO mmSj
           CASE mkEy=k_F9 .AND. voPc="S"
                DO coLsc1
                @ vfFs, icL1 CLEAR TO vfFs+1.1, icL1+39.3
                DO liN_2700c WITH vfFs, vfFs+1.1
                STORE 00 TO vmLa, vmAn, vp11, vp21
                STORE "  /  " TO vp12, vp22
                STORE "N" TO voPc
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. voPc="S"  ;
                .AND. vtPi=0 .AND. ptPo="1"
                STORE "Área no pueden ser 0..." TO mmSj
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. voPc="S"  ;
                .AND. vtPi=0 .AND. ptPo="2"
                STORE "Metros cuadrados no pueden ser 0..." TO mmSj
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. voPc="S"  ;
                .AND. vtPi=0 .AND. ptPo="3"
                STORE "Pies no pueden ser 0..." TO mmSj
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. voPc="S"  ;
                .AND. vtPi=0 .AND. ptPo$"4567"
                STORE "Metros no pueden ser 0..." TO mmSj
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. voPc="N"  ;
                .AND. ptPo$"127"
                DO CASE
                     CASE viTe=1 .AND. vmLa=0
                          STORE "Largo no puede ser 0...   " TO mmSj
                     CASE viTe=2 .AND. vmAn=0
                          STORE "Ancho no puede ser 0...   " TO mmSj
                     CASE viTe=3 .AND. vcTd=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE ptPo$"27" .AND. viTe=3 .AND. vcA1=0 .AND. vcA2= ;
                          0 .AND. vcA3=0 .AND. vcA4=0
                          STORE "No pueden estar todos los campos sin marcar..."  ;
                                TO mmSj
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0
                     DO caL_2700c
                     IF viTe<03
                          STORE viTe+1 TO viTe
                          STORE 99 TO mkEy
                     ENDIF
                ENDIF
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. voPc="N"  ;
                .AND. ptPo="3"
                DO CASE
                     CASE vuN1+vuN2="PM" .AND. viTe=2 .AND. ALLTRIM(vp12)= ;
                          "/" .AND. vp11<>0
                     CASE vuN1+vuN2="PP" .AND. viTe=2 .AND. ALLTRIM(vp12)= ;
                          "/" .AND. vp11<>0
                     CASE vuN1+vuN2="MP" .AND. viTe=3 .AND. ALLTRIM(vp22)= ;
                          "/" .AND. vp21<>0
                     CASE vuN1+vuN2="PP" .AND. viTe=4 .AND. ALLTRIM(vp22)= ;
                          "/" .AND. vp21<>0
                     CASE vuN1+vuN2="MM" .AND. viTe=1 .AND. vmLa=0
                          STORE "Largo no puede ser 0..." TO mmSj
                     CASE vuN1+vuN2="MP" .AND. viTe=1 .AND. vmLa=0
                          STORE "Largo no puede ser 0..." TO mmSj
                     CASE vuN1+vuN2="MM" .AND. viTe=2 .AND. vmAn=0
                          STORE "Ancho no puede ser 0..." TO mmSj
                     CASE vuN1+vuN2="PM" .AND. viTe=3 .AND. vmAn=0
                          STORE "Ancho no puede ser 0..." TO mmSj
                     CASE vuN1+vuN2="MM" .AND. viTe=3 .AND. vcTd=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE vuN1+vuN2="MP" .AND. viTe=4 .AND. vcTd=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE vuN1+vuN2="PM" .AND. viTe=4 .AND. vcTd=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=5 .AND. vcTd=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                     CASE vuN1+vuN2="PM" .AND. viTe=2 .AND. ALLTRIM(vp12)= ;
                          "/" .AND. vp11=0
                          STORE "Entero y fracción no pueden ser 0 o estar vacio..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=2 .AND. ALLTRIM(vp12)= ;
                          "/" .AND. vp11=0
                          STORE "Entero y fracción no pueden ser 0 o estar vacio..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="MP" .AND. viTe=3 .AND. ALLTRIM(vp22)= ;
                          "/" .AND. vp21=0
                          STORE "Entero y fracción no pueden ser 0 o estar vacio..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=4 .AND. ALLTRIM(vp22)= ;
                          "/" .AND. vp21=0
                          STORE "Entero y fracción no pueden ser 0 o estar vacio..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PM" .AND. viTe=2 .AND.  ;
                          LEN(ALLTRIM(SUBSTR(vp12, 1, 2)))=0
                          STORE "Fracción de Pulgadas no puede empezar en blanco..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=2 .AND.  ;
                          LEN(ALLTRIM(SUBSTR(vp12, 1, 2)))=0
                          STORE "Fracción de Pulgadas no puede empezar en blanco..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="MP" .AND. viTe=3 .AND.  ;
                          LEN(ALLTRIM(SUBSTR(vp22, 1, 2)))=0
                          STORE "Fracción de Pulgadas no puede empezar en blanco..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=4 .AND.  ;
                          LEN(ALLTRIM(SUBSTR(vp22, 1, 2)))=0
                          STORE "Fracción de Pulgadas no puede empezar en blanco..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PM" .AND. viTe=2 .AND. (SUBSTR(vp12,  ;
                          1, 2)="00" .OR. ALLTRIM(SUBSTR(vp12, 1, 2))="0")
                          STORE "Fracción de Pulgadas no puede empezar con 0..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=2 .AND. (SUBSTR(vp12,  ;
                          1, 2)="00" .OR. ALLTRIM(SUBSTR(vp12, 1, 2))="0")
                          STORE "Fracción de Pulgadas no puede empezar con 0..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="MP" .AND. viTe=3 .AND. (SUBSTR(vp22,  ;
                          1, 2)="00" .OR. ALLTRIM(SUBSTR(vp22, 1, 2))="0")
                          STORE "Fracción de Pulgadas no puede empezar con 0..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=4 .AND. (SUBSTR(vp22,  ;
                          1, 2)="00" .OR. ALLTRIM(SUBSTR(vp22, 1, 2))="0")
                          STORE "Fracción de Pulgadas no puede empezar con 0..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PM" .AND. viTe=2 .AND. (SUBSTR(vp12,  ;
                          4, 2)="00" .OR. ALLTRIM(SUBSTR(vp12, 4, 2))="0")
                          STORE "Fracción de Pulgadas no puede terminar con 00..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=2 .AND. (SUBSTR(vp12,  ;
                          4, 2)="00" .OR. ALLTRIM(SUBSTR(vp12, 4, 2))="0")
                          STORE "Fracción de Pulgadas no puede terminar con 00..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="MP" .AND. viTe=3 .AND. (SUBSTR(vp22,  ;
                          4, 2)="00" .OR. ALLTRIM(SUBSTR(vp22, 4, 2))="0")
                          STORE "Fracción de Pulgadas no puede terminar con 00..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=4 .AND. (SUBSTR(vp22,  ;
                          4, 2)="00" .OR. ALLTRIM(SUBSTR(vp22, 4, 2))="0")
                          STORE "Fracción de Pulgadas no puede terminar con 00..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PM" .AND. viTe=2 .AND.  ;
                          (ALLTRIM(SUBSTR(vp12, 4, 2))="00" .OR.  ;
                          ALLTRIM(SUBSTR(vp12, 4, 2))="0")
                          STORE "Fracción de Pulgadas no puede terminar con 0..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=2 .AND.  ;
                          (ALLTRIM(SUBSTR(vp12, 4, 2))="00" .OR.  ;
                          ALLTRIM(SUBSTR(vp12, 4, 2))="0")
                          STORE "Fracción de Pulgadas no puede terminar con 0..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="MP" .AND. viTe=3 .AND.  ;
                          (ALLTRIM(SUBSTR(vp22, 4, 2))="00" .OR.  ;
                          ALLTRIM(SUBSTR(vp22, 4, 2))="0")
                          STORE "Fracción de Pulgadas no puede terminar con 0..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=4 .AND.  ;
                          (ALLTRIM(SUBSTR(vp22, 4, 2))="00" .OR.  ;
                          ALLTRIM(SUBSTR(vp22, 4, 2))="0")
                          STORE "Fracción de Pulgadas no puede terminar con 0..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PM" .AND. viTe=2 .AND.  ;
                          LEN(ALLTRIM(SUBSTR(vp12, 4, 2)))=0
                          STORE "Fracción de Pulgadas no puede terminar en blanco..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=2 .AND.  ;
                          LEN(ALLTRIM(SUBSTR(vp12, 4, 2)))=0
                          STORE "Fracción de Pulgadas no puede terminar en blanco..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="MP" .AND. viTe=3 .AND.  ;
                          LEN(ALLTRIM(SUBSTR(vp22, 4, 2)))=0
                          STORE "Fracción de Pulgadas no puede terminar en blanco..."  ;
                                TO mmSj
                     CASE vuN1+vuN2="PP" .AND. viTe=4 .AND.  ;
                          LEN(ALLTRIM(SUBSTR(vp22, 4, 2)))=0
                          STORE "Fracción de Pulgadas no puede terminar en blanco..."  ;
                                TO mmSj
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0
                     DO caL_2700c
                     DO CASE
                          CASE vuN1="M" .AND. vuN2="M" .AND. viTe<3
                               STORE viTe+1 TO viTe
                               STORE 99 TO mkEy
                          CASE vuN1="M" .AND. vuN2="P" .AND. viTe<4
                               STORE viTe+1 TO viTe
                               STORE 99 TO mkEy
                          CASE vuN1="P" .AND. vuN2="M" .AND. viTe<4
                               STORE viTe+1 TO viTe
                               STORE 99 TO mkEy
                          CASE vuN1="P" .AND. vuN2="P" .AND. viTe<5
                               STORE viTe+1 TO viTe
                               STORE 99 TO mkEy
                     ENDCASE
                ENDIF
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. voPc="N"  ;
                .AND. ptPo$"456"
                DO CASE
                     CASE viTe=1 .AND. vmLa=0
                          STORE "Largo no puede ser 0...   " TO mmSj
                     CASE viTe=2 .AND. vcTd=0
                          STORE "Cantidad no puede ser 0..." TO mmSj
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0
                     DO caL_2700c
                     IF viTe<02
                          STORE viTe+1 TO viTe
                          STORE 99 TO mkEy
                     ENDIF
                ENDIF
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. ptPo="8"
                DO CASE
                     CASE viTe=1 .AND. vcA1=0 .AND. vmM1<>0
                          STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. vcA1=0 .AND. vcX1<>0
                          STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=3 .AND. vcA1=0 .AND. vcY1<>0
                          STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=1 .AND. vcA1<>0 .AND. vmM1=0
                          STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. vcA1<>0 .AND. vcX1=0
                          STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=3 .AND. vcA1<>0 .AND. vcY1=0
                          STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=4 .AND. vcA2=0 .AND. vmM2<>0
                          STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=5 .AND. vcA2=0 .AND. vcX2<>0
                          STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=6 .AND. vcA2=0 .AND. vcY2<>0
                          STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=4 .AND. vcA2<>0 .AND. vmM2=0
                          STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=5 .AND. vcA2<>0 .AND. vcX2=0
                          STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=6 .AND. vcA2<>0 .AND. vcY2=0
                          STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=7 .AND. vcA3=0 .AND. vmM3<>0
                          STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=8 .AND. vcA3=0 .AND. vcX3<>0
                          STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=9 .AND. vcA3=0 .AND. vcY3<>0
                          STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=7 .AND. vcA3<>0 .AND. vmM3=0
                          STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=8 .AND. vcA3<>0 .AND. vcX3=0
                          STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=9 .AND. vcA3<>0 .AND. vcY3=0
                          STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=10 .AND. vcA4=0 .AND. vmM4<>0
                          STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=11 .AND. vcA4=0 .AND. vcX4<>0
                          STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=12 .AND. vcA4=0 .AND. vcY4<>0
                          STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=10 .AND. vcA4<>0 .AND. vmM4=0
                          STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=11 .AND. vcA4<>0 .AND. vcX4=0
                          STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=12 .AND. vcA4<>0 .AND. vcY4=0
                          STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                                TO mmSj
                     CASE viTe=12 .AND. vcA1+vcA2+vcA3+vcA4=0
                          STORE "No pueden estar todos los campos sin marcar..."  ;
                                TO mmSj
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0
                     DO caL_2700c
                     IF viTe<12
                          STORE viTe+1 TO viTe
                          STORE 99 TO mkEy
                     ENDIF
                ENDIF
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. ptPo="9"
                DO CASE
                     CASE viTe=1 .AND. vcA1=0 .AND. vmM1<>0
                          STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=1 .AND. vcA1<>0 .AND. vmM1=0
                          STORE "Grado no debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. vcA2=0 .AND. vmM2<>0
                          STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=2 .AND. vcA2<>0 .AND. vmM2=0
                          STORE "Grado no debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=3 .AND. vcA3=0 .AND. vmM3<>0
                          STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=3 .AND. vcA3<>0 .AND. vmM3=0
                          STORE "Grado no debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=4 .AND. vcA4=0 .AND. vmM4<>0
                          STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=4 .AND. vcA4<>0 .AND. vmM4=0
                          STORE "Grado no debe ser 0 ya que este campo no esta marcado..."  ;
                                TO mmSj
                     CASE viTe=4 .AND. vcA1+vcA2+vcA3+vcA4=0
                          STORE "No pueden estar todos los campos sin marcar..."  ;
                                TO mmSj
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0
                     DO caL_2700c
                     IF viTe<4
                          STORE viTe+1 TO viTe
                          STORE 99 TO mkEy
                     ENDIF
                ENDIF
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Alt_del
                = INKEY(0.01)
                DO coLsc1
                DO suBe WITH vfFs, icL1, ffFs, ucL1, 1
                DO liN_2700c WITH ifFs, ffFs+1.1
                IF frCc=urCc
                     STORE frCc-1 TO frCc
                     STORE urCc-1 TO urCc
                     STORE ufFs-1 TO ufFs
                ELSE
                     STORE frCc-1 TO frCc
                     STORE vfFs TO cfFs
                     STORE vrCc TO crCc
                     STORE ffFs TO vfFs
                     STORE urCc+1 TO vrCc
                     GOTO vrCc
                     STORE vrCc-1 TO vrCc
                     DO muE_2700c WITH "C"
                     DO diS_2700c WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfFs TO vfFs
                     STORE crCc TO vrCc
                     GOTO vrCc
                ENDIF
                DELETE
                PACK
                DO toT_2700c
                IF vrCc<=frCc
                     GOTO vrCc
                     DO muE_2700c WITH "C"
                ELSE
                     DO liM_2700c
                     IF vfFs=ufFs
                          STORE ufFs-1 TO ufFs
                     ENDIF
                ENDIF
                DO diS_2700c WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viMm=1 .OR. ftM3mla<>vmLa .OR. ftM3man<> ;
                vmAn .OR. ftM3p11<>vp11 .OR. ftM3p12<>vp12 .OR. ftM3p21<> ;
                vp21 .OR. ftM3p22<>vp22 .OR. ftM3can<>vcTd .OR. ftM3ca1<> ;
                vcA1 .OR. ftM3ca2<>vcA2 .OR. ftM3ca3<>vcA3 .OR. ftM3ca4<> ;
                vcA4 .OR. ftM3mm1<>vmM1 .OR. ftM3mm2<>vmM2 .OR. ftM3mm3<> ;
                vmM3 .OR. ftM3mm4<>vmM4 .OR. ftM3cx1<>vcX1 .OR. ftM3cx2<> ;
                vcX2 .OR. ftM3cx3<>vcX3 .OR. ftM3cx4<>vcX4 .OR. ftM3cy1<> ;
                vcY1 .OR. ftM3cy2<>vcY2 .OR. ftM3cy3<>vcY3 .OR. ftM3cy4<> ;
                vcY4 .OR. ftM3cm1<>vcMm .OR. ftM3cm2<>vcMp .OR. ftM3por<> ;
                vpOr .OR. vcTd<1)
                DO veR_2700c
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viMm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. vcTd<>0 .AND. vtPi<>0
                DO grA_2700c
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab .AND. vpIe>0
                DO mv2_2700c
                STORE vpIe TO vcAn
                STORE k_Tab TO mkEy
                EXIT
           CASE mkEy=k_F7 .AND. (ppRg="1200" .OR. ppRg="1300")
                DO plA_2700c
                DO piQ_0000a
                SELECT teMporal_3
                IF viOm=2
                     GOTO vrCc
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. (viMm=1 .OR. LEN(ALLTRIM(mmSj))<>0)
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)
                DO diS_2700c WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfFs=ffFs
                     DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                     DO liN_2700c WITH ifFs, ffFs+1.1
                     STORE irCc+1 TO irCc
                     IF urCc<frCc
                          STORE urCc+1 TO urCc
                     ENDIF
                ELSE
                     STORE vfFs+1 TO vfFs
                ENDIF
                STORE vrCc+1 TO vrCc
                IF vrCc<=frCc
                     GOTO vrCc
                     DO muE_2700c WITH "C"
                ELSE
                     DO liM_2700c
                     IF vfFs=ufFs
                          STORE ufFs-1 TO ufFs
                     ENDIF
                ENDIF
           CASE mkEy=k_Up .AND. vrCc>1
                IF viMm=01
                     DO blA_2700c
                ELSE
                     DO diS_2700c WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfFs=ifFs
                     DO coLsc1
                     DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                     DO liN_2700c WITH ifFs, ffFs+1.1
                     STORE irCc-1 TO irCc
                     IF ufFs<ffFs
                          STORE ufFs+1 TO ufFs
                     ELSE
                          STORE urCc-1 TO urCc
                     ENDIF
                ELSE
                     STORE vfFs-1 TO vfFs
                ENDIF
                STORE vrCc-1 TO vrCc
                GOTO vrCc
                DO muE_2700c WITH "C"
           CASE mkEy=k_Ctrl_home .AND. vrCc>1
                IF vrCc>frCc
                     DO blA_2700c
                ELSE
                     DO diS_2700c WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irCc=vrCc
                     GOTO TOP
                     DO paN_2700c
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE 01 TO vrCc
                ENDIF
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2700c WITH "C"
           CASE mkEy=k_Ctrl_end .AND. frCc<>vrCc
                DO diS_2700c WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urCc=vrCc
                     GOTO BOTTOM
                     STORE RECNO() TO vrCc
                     SKIP -(ffFs-ifFs)
                     DO paN_2700c
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE urCc TO vrCc
                STORE ufFs TO vfFs
                GOTO vrCc
                DO muE_2700c WITH "C"
           CASE mkEy=k_Pgup .AND. irCc>1
                DO diS_2700c WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO irCc
                SKIP -(ffFs-ifFs+1)
                DO paN_2700c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2700c WITH "C"
           CASE mkEy=k_Pgdn .AND. frCc<>urCc
                DO diS_2700c WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urCc
                SKIP
                DO paN_2700c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irCc TO vrCc
                STORE ifFs TO vfFs
                GOTO vrCc
                DO muE_2700c WITH "C"
      ENDCASE
      DO diS_2700c WITH "R"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE voPc="N" .AND. ptPo$"12"
                DO CASE
                     CASE viTe=1
                          @vFFS,iCL1+06.7 Get vMLA Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=2
                          @vFFS,iCL1+21.9 Get vMAN Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=3
                          @vFFS,iCL1+60.7 Get vCTD Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9999"   Color ,&mColBlN
                ENDCASE
           CASE voPc="N" .AND. ptPo="3"
                DO CASE
                     CASE viTe=1 .AND. vuN1="M"
                          @vFFS,iCL1+08.6 Get vMLA Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE (viTe=2 .AND. vuN1+vuN2="MM") .OR. (viTe=3  ;
                          .AND. vuN1+vuN2="PM")
                          @vFFS,iCL1+27.6 Get vMAN Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=1 .AND. vuN1="P"
                          @vFFS,iCL1+06.7 Get vP11 Font "&mLetAri",9 Style "NQ" Size 1,4.3 Pict "999"    Color ,&mColBlN
                     CASE viTe=2 .AND. vuN1="P" .AND. vsWx=1 .AND.  ;
                          SUBSTR(vp12, 1, 1)<>" "
                          @vFFS,iCL1+12.6 Get vP12 Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "99/9#" Color ,&mColBlN
                     CASE viTe=2 .AND. vuN1="P" .AND. vsWx=1
                          IF SUBSTR(vp12, 3, 1)="/"
                               STORE SUBSTR(vp12, 2, 4) TO vp12
                          ENDIF
                          @vFFS,iCL1+12.6 Get vP12 Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "9/9#"  Color ,&mColBlR
                     CASE viTe=2 .AND. vuN1="P" .AND. vsWx=2
                          @vFFS,iCL1+12.6 Get vP12 Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "99/9#" Color ,&mColBlN
                     CASE (viTe=2 .AND. vuN1+vuN2="MP") .OR. (viTe=3  ;
                          .AND. vuN1+vuN2="PP")
                          @vFFS,iCL1+25.7 Get vP21 Font "&mLetAri",9 Style "NQ" Size 1,4.3 Pict "999"   Color ,&mColBlN
                     CASE ((viTe=3 .AND. vuN1+vuN2="MP") .OR. (viTe=4  ;
                          .AND. vuN1+vuN2="PP")) .AND. vsWx=1 .AND.  ;
                          SUBSTR(vp22, 1, 1)<>" "
                          @vFFS,iCL1+31.6 Get vP22 Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "99/9#" Color ,&mColBlN
                     CASE ((viTe=3 .AND. vuN1+vuN2="MP") .OR. (viTe=4  ;
                          .AND. vuN1+vuN2="PP")) .AND. vsWx=1
                          IF SUBSTR(vp22, 3, 1)="/"
                               STORE SUBSTR(vp22, 2, 4) TO vp22
                          ENDIF
                          @vFFS,iCL1+31.6 Get vP22 Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "9/9#"  Color ,&mColBlR
                     CASE ((viTe=3 .AND. vuN1+vuN2="MP") .OR. (viTe=4  ;
                          .AND. vuN1+vuN2="PP")) .AND. vsWx=2
                          @vFFS,iCL1+31.6 Get vP22 Font "&mLetAri",9 Style "NQ" Size 1,6.0 Pict "99/9#" Color ,&mColBlN
                     CASE (viTe=3 .AND. vuN1+vuN2="MM") .OR. (viTe=4  ;
                          .AND. vuN1+vuN2="MP") .OR. (viTe=4 .AND. vuN1+ ;
                          vuN2="PM") .OR. (viTe=5 .AND. vuN1+vuN2="PP")
                          @vFFS,iCL1+44.7 Get vCTD Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9999"  Color ,&mColBlN
                ENDCASE
           CASE voPc="N" .AND. ptPo$"456"
                DO CASE
                     CASE viTe=1
                          @vFFS,iCL1+06.7 Get vMLA Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=2
                          @vFFS,iCL1+21.9 Get vCTD Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9999"   Color ,&mColBlN
                ENDCASE
           CASE voPc="N" .AND. ptPo="7"
                DO CASE
                     CASE viTe=1
                          @vFFS,iCL1+06.7 Get vMLA Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=2
                          @vFFS,iCL1+21.9 Get vMAN Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=3
                          @vFFS,iCL1+56.3 Get vCTD Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9999"   Color ,&mColBlN
                ENDCASE
           CASE ptPo="8"
                DO CASE
                     CASE viTe=1
                          @vFFS,iCL1+041.6 Get vMM1 Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9999"   Color ,&mColBlN
                     CASE viTe=2
                          @vFFS,iCL1+050.4 Get vCX1 Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=3
                          @vFFS,iCL1+060.4 Get vCY1 Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=4
                          @vFFS,iCL1+074.8 Get vMM2 Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9999"   Color ,&mColBlN
                     CASE viTe=5
                          @vFFS,iCL1+083.6 Get vCX2 Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=6
                          @vFFS,iCL1+093.6 Get vCY2 Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=7
                          @vFFS,iCL1+108.0 Get vMM3 Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9999"   Color ,&mColBlN
                     CASE viTe=8
                          @vFFS,iCL1+116.8 Get vCX3 Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=9
                          @vFFS,iCL1+126.8 Get vCY3 Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=10
                          @vFFS,iCL1+141.1 Get vMM4 Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9999"   Color ,&mColBlN
                     CASE viTe=11
                          @vFFS,iCL1+149.9 Get vCX4 Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                     CASE viTe=12
                          @vFFS,iCL1+159.8 Get vCY4 Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999" Color ,&mColBlN
                ENDCASE
           CASE ptPo="9"
                DO CASE
                     CASE viTe=1
                          @vFFS,iCL1+41.7 Get vMM1 Font "&mLetAri",9 Style "NQ" Size 1,6.8 Pict "9999" Color ,&mColBlN
                     CASE viTe=2
                          @vFFS,iCL1+54.7 Get vMM2 Font "&mLetAri",9 Style "NQ" Size 1,6.8 Pict "9999" Color ,&mColBlN
                     CASE viTe=3
                          @vFFS,iCL1+67.6 Get vMM3 Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9999" Color ,&mColBlN
                     CASE viTe=4
                          @vFFS,iCL1+80.8 Get vMM4 Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "9999" Color ,&mColBlN
                ENDCASE
           CASE voPc="S" .AND. ptPo$"12"
                @vFFS,iCL1+69.5 Get vTPI Font "&mLetAri",9 Style "NQ" Size 1,27.4 Pict "999999999999.9999" Color ,&mColBlZ
           CASE voPc="S" .AND. ptPo="3"
                @vFFS,iCL1+53.6 Get vTPI Font "&mLetAri",9 Style "NQ" Size 1,27.4 Pict "999999999999.9999" Color ,&mColBlZ
           CASE voPc="S" .AND. ptPo$"456"
                @vFFS,iCL1+30.5 Get vTPI Font "&mLetAri",9 Style "NQ" Size 1,27.4 Pict "999999999999.9999" Color ,&mColBlZ
           CASE voPc="S" .AND. ptPo="7"
                @vFFS,iCL1+65.1 Get vTPI Font "&mLetAri",9 Style "NQ" Size 1,27.4 Pict "999999999999.9999" Color ,&mColBlZ
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF ptPo="3"
           DO CASE
                CASE viTe=2 .AND. vuN1="P" .AND. vsWx=1 .AND.  ;
                     LEN(ALLTRIM(vp12))<5
                     STORE " "+vp12 TO vp12
                     @vFFS,iCL1+12.6 Say vP12 Font "&mLetAri",9 Style "NQ" Size 1,6
                CASE ((viTe=3 .AND. vuN1+vuN2="MP") .OR. (viTe=4 .AND.  ;
                     vuN1+vuN2="PP")) .AND. vsWx=1 .AND. LEN(ALLTRIM(vp22))<5
                     STORE " "+vp22 TO vp22
                     @vFFS,iCL1+31.6 Say vP22 Font "&mLetAri",9 Style "NQ" Size 1,6
           ENDCASE
      ENDIF
 ENDDO
 RELEASE ptPp, psWw
 RETURN
ENDPROC
*
PROCEDURE Pan_2700c
 STORE ifFs TO vfFs
 STORE RECNO() TO irCc, urCc
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      STORE RECNO() TO urCc, vrCc
      STORE vfFs TO ufFs
      DO muE_2700c WITH "C"
      DO diS_2700c WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF vfFs-1<ffFs
      DO coLsc1
      @ vfFs, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_2700c WITH vfFs, ffFs+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2700c
 PARAMETER ptIp
 PRIVATE pcOd
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prEsiona WITH "1", "DESCAN", vfFs, ucL1-4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF voPc="N"
      @vFFS,iCL1 Say vCMM Font "&mLetAri",9 Style "NQ" Size 1,5.5 Pict "@S3"
 ELSE
      @vFFS,iCL1 Say " "  Font "&mLetAri",9 Style "NQ" Size 1,5.5
 ENDIF
 DO CASE
      CASE ptPo$"12"
           DO di1_2700c
      CASE ptPo="3"
           DO di3_2700c
      CASE ptPo$"456"
           DO di4_2700c
      CASE ptPo="7"
           DO di7_2700c
      CASE ptPo="8"
           DO di8_2700c
      CASE ptPo="9"
           DO di9_2700c
 ENDCASE
 IF voPc="N"
      DO boT_2700c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF ptPp=1 .AND. psWw>0 .AND. (ppRg="1200" .OR. ppRg="1300")
      DO coLsc7
      SELECT teMporal_7
      @fFFS+4.9,iCL1+0.1 Say FTM7DES Font "&mLetRom",13 Style "BQ" Size 1,089.0 Pict "@S92"
      @fFFS+6.5,iCL1+0.1 Say FTM7COD Font "&mLetRom",13 Style "BQ" Size 1,025.5 Pict "@S25"
      DO CASE
           CASE ftM7la1>0 .AND. ftM7an1>0
                @fFFS+4.9,iCL1+126.4 Say FTM7LA1 Font "&mLetRom",12 Style "BQU" Size 1,8.3 Pict "999.999"
                @fFFS+4.9,iCL1+138.9 Say "x"     Font "&mLetRom",12 Style "BQ"  Size 1,1.6
                @fFFS+4.9,iCL1+142.0 Say FTM7AN1 Font "&mLetRom",12 Style "BQU" Size 1,8.3 Pict "999.999"
           CASE ftM7la2>0 .AND. ftM7an2>0
                @fFFS+4.9,iCL1+126.3 Say FTM7LA2 Font "&mLetRom",12 Style "BQU" Size 1,7.0 Pict "999.99"
                @fFFS+4.9,iCL1+142.0 Say FTM7AN2 Font "&mLetRom",12 Style "BQU" Size 1,7.0 Pict "999.99"
                @fFFS+4.9,iCL1+138.9 Say "x"     Font "&mLetRom",12 Style "BQ"  Size 1,1.6
                @fFFS+4.9,iCL1+126.8 Say '"'     Font "&mLetRom",12 Style "BQ"
                @fFFS+4.9,iCL1+152.1 Say '"'     Font "&mLetRom",12 Style "BQ"
           OTHERWISE
                @fFFS+4.9,iCL1+126.4 Say " "     Font "&mLetRom",12 Style "BQU" Size 1,8.3
                @fFFS+4.9,iCL1+138.9 Say " "     Font "&mLetRom",12 Style "BQ"  Size 1,1.6
                @fFFS+4.9,iCL1+142.0 Say " "     Font "&mLetRom",12 Style "BQU" Size 1,8.3
      ENDCASE
      STORE ftM7cod TO pcOd
      SELECT prOductos
      SEEK UPPER(ALLTRIM(pcOd))+"*"
      IF f2111cst=1
           @fFFS+6.5,iCL1+132.9 Say F2111STO      Font "&mLetRom",12 Style "BQU" Size 1,14.5 Pict "999,999.9999"
      ELSE
           @fFFS+6.5,iCL1+132.9 Say "No controla" Font "&mLetRom",12 Style "BQU" Size 1,14.5
      ENDIF
      SEEK UPPER(ALLTRIM(vcOd))+"*"
      SELECT teMporal_3
 ENDIF
 RELEASE pcOd
ENDPROC
*
PROCEDURE Di1_2700c
 IF voPc="N"
      @vFFS,iCL1+06.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+06.7 Say vMLA             Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
      @vFFS,iCL1+15.3 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.4
      @vFFS,iCL1+16.6 Say "mts"            Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+21.7 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+21.9 Say vMAN             Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
      @vFFS,iCL1+30.4 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.4
      @vFFS,iCL1+31.8 Say "mts"            Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+60.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+60.7 Say vCTD             Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9,999"
      @vFFS,iCL1+67.9 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.3
      IF ptPo="2"
           @vFFS,iCL1+56.1 Say " "           Font "&mLetAri",9 Style "NQ" Size 1,0.3
           @vFFS,iCL1+56.5 Say Str(vPOR,2,0) Font "&mLetAri",9 Style "NQ" Size 1,2.9
           @vFFS,iCL1+59.4 Say " "           Font "&mLetAri",9 Style "NQ" Size 1,0.2
      ELSE
           @vFFS,iCL1+56.1 Say " "           Font "&mLetAri",9 Style "NQ" Size 1,3.4
      ENDIF
 ELSE
      @vFFS,iCL1+06.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,9.0
      @vFFS,iCL1+16.6 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+21.7 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,8.9
      @vFFS,iCL1+31.8 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+56.1 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.4
      @vFFS,iCL1+60.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,7.8
      @vFFS,iCL1+37.0 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.7
      @vFFS,iCL1+41.8 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.7
      @vFFS,iCL1+46.6 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.7
      @vFFS,iCL1+51.4 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.7
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. voPc="S"
           SET COLOR TO RGB(0,0,128,164,162,170)
      CASE ptIp="R" .AND. voPc="S"
           DO coLblz
 ENDCASE
 @vFFS,iCL1+069.4 Say " "                Font "&mLetAri",9 Style "NQ" Size 1,00.2
 @vFFS,iCL1+069.5 Say Round(vTPI*vCTD,4) Font "&mLetAri",9 Style "NQ" Size 1,27.4 Pict "999,999,999,999.9999"
 @vFFS,iCL1+096.9 Say " "                Font "&mLetAri",9 Style "NQ" Size 1,00.3
 @vFFS,iCL1+127.4 Say vCMP               Font "&mLetAri",9 Style "NQ" Size 1,26.7 Pict "@S30"
 IF mpRe=1 .AND. (ppRg="1200" .OR. ppRg="1300")
      @vFFS,iCL1+98.4 Say Round(vTPI*vCTD*vPRE,4) Font "&mLetAri",9 Style "NQ" Size 1,27.9 Pict "999,999,999,999.9999"
 ELSE
      @vFFS,iCL1+98.4 Say Space(10)               Font "&mLetAri",9 Style "NQ" Size 1,27.9
 ENDIF
ENDPROC
*
PROCEDURE Di3_2700c
 IF voPc="N"
      DO CASE
           CASE vuN1="M"
                @vFFS,iCL1+06.5 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,1.9
                @vFFS,iCL1+08.6 Say vMLA  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
                @vFFS,iCL1+17.0 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,2.3
                @vFFS,iCL1+20.4 Say "mts" Font "&mLetAri",9 Style "NQ" Size 1,4.2
           CASE vuN1="P"
                @vFFS,iCL1+06.5 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
                @vFFS,iCL1+06.7 Say vP11  Font "&mLetAri",9 Style "NQ" Size 1,4.3 Pict "999"
                @vFFS,iCL1+11.2 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,2.0
                DO CASE
                     CASE ptIp="N" .AND. vsWx=2
                          DO coLscr
                     CASE ptIp="R" .AND. vsWx=2
                          DO coLblr
                ENDCASE
                @vFFS,iCL1+12.5 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
                @vFFS,iCL1+12.6 Say vP12  Font "&mLetAri",9 Style "NQ" Size 1,6.0
                @vFFS,iCL1+18.6 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.7
                @vFFS,iCL1+20.4 Say "plg" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      ENDCASE
      DO CASE
           CASE ptIp="N"
                DO coLsc1
           CASE ptIp="R"
                DO coLbln
      ENDCASE
      DO CASE
           CASE vuN2="M"
                @vFFS,iCL1+25.5 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,1.9
                @vFFS,iCL1+27.6 Say vMAN  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
                @vFFS,iCL1+36.0 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,2.3
                @vFFS,iCL1+39.4 Say "mts" Font "&mLetAri",9 Style "NQ" Size 1,4.2
           CASE vuN2="P"
                @vFFS,iCL1+25.5 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
                @vFFS,iCL1+25.7 Say vP21  Font "&mLetAri",9 Style "NQ" Size 1,4.3 Pict "999"
                @vFFS,iCL1+30.2 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,2.0
                DO CASE
                     CASE ptIp="N" .AND. vsWx=2
                          DO coLscr
                     CASE ptIp="R" .AND. vsWx=2
                          DO coLblr
                ENDCASE
                @vFFS,iCL1+31.5 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
                @vFFS,iCL1+31.6 Say vP22  Font "&mLetAri",9 Style "NQ" Size 1,6.0
                @vFFS,iCL1+37.6 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.7
                @vFFS,iCL1+39.3 Say "plg" Font "&mLetAri",9 Style "NQ" Size 1,4.2
      ENDCASE
      DO CASE
           CASE ptIp="N"
                DO coLsc1
           CASE ptIp="R"
                DO coLbln
      ENDCASE
      @vFFS,iCL1+44.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+44.7 Say vCTD             Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9,999"
      @vFFS,iCL1+52.0 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.3
 ELSE
      @vFFS,iCL1+06.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,12.5
      @vFFS,iCL1+20.4 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,04.2
      @vFFS,iCL1+25.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,12.5
      @vFFS,iCL1+39.4 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,04.2
      @vFFS,iCL1+44.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,07.8
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. voPc="S"
           SET COLOR TO RGB(0,0,128,164,162,170)
      CASE ptIp="R" .AND. voPc="S"
           DO coLblz
 ENDCASE
 @vFFS,iCL1+053.5 Say " "                Font "&mLetAri",9 Style "NQ" Size 1,00.2
 @vFFS,iCL1+053.6 Say Round(vTPI*vCTD,4) Font "&mLetAri",9 Style "NQ" Size 1,27.4 Pict "999,999,999,999.9999"
 @vFFS,iCL1+081.0 Say " "                Font "&mLetAri",9 Style "NQ" Size 1,00.3
 @vFFS,iCL1+111.4 Say vCMP               Font "&mLetAri",9 Style "NQ" Size 1,42.7 Pict "@S30"
 IF mpRe=1 .AND. (ppRg="1200" .OR. ppRg="1300")
      @vFFS,iCL1+82.5 Say Round(vTPI*vCTD*vPRE,4) Font "&mLetAri",9 Style "NQ" Size 1,27.9 Pict "999,999,999,999.9999"
 ELSE
      @vFFS,iCL1+82.5 Say Space(10)               Font "&mLetAri",9 Style "NQ" Size 1,27.9
 ENDIF
 DO coLsc1
 @fFFS+2.9,iCL1+43.3 Say vMLA Font "&mLetAri",9 Style "BQ" Size 1,8.2 Pict "999.999"
 @fFFS+2.9,iCL1+64.1 Say vMAN Font "&mLetAri",9 Style "BQ" Size 1,8.2 Pict "999.999"
ENDPROC
*
PROCEDURE Di4_2700c
 IF voPc="N"
      @vFFS,iCL1+06.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+06.7 Say vMLA             Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
      @vFFS,iCL1+15.3 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.4
      @vFFS,iCL1+16.6 Say "mts"            Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+21.7 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+21.9 Say vCTD             Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9,999"
      @vFFS,iCL1+29.1 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.3
 ELSE
      @vFFS,iCL1+06.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,9.0
      @vFFS,iCL1+16.6 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+21.7 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,7.4
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. voPc="S"
           SET COLOR TO RGB(0,0,128,164,162,170)
      CASE ptIp="R" .AND. voPc="S"
           DO coLblz
 ENDCASE
 @vFFS,iCL1+30.4 Say " "                 Font "&mLetAri",9 Style "NQ" Size 1,00.2
 @vFFS,iCL1+30.5 Say Round(vTPI*vCTD,4)  Font "&mLetAri",9 Style "NQ" Size 1,27.4 Pict "999,999,999,999.9999"
 @vFFS,iCL1+57.9 Say " "                 Font "&mLetAri",9 Style "NQ" Size 1,00.3
 @vFFS,iCL1+88.4 Say vCMP                Font "&mLetAri",9 Style "NQ" Size 1,26.7 Pict "@S30"
 IF mpRe=1 .AND. (ppRg="1200" .OR. ppRg="1300")
      @vFFS,iCL1+59.4 Say Round(vTPI*vCTD*vPRE,4) Font "&mLetAri",9 Style "NQ" Size 1,27.9 Pict "999,999,999,999.9999"
 ELSE
      @vFFS,iCL1+59.4 Say Space(10)               Font "&mLetAri",9 Style "NQ" Size 1,27.9
 ENDIF
ENDPROC
*
PROCEDURE Di7_2700c
 IF voPc="N"
      @vFFS,iCL1+06.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+06.7 Say vMLA             Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
      @vFFS,iCL1+15.3 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.4
      @vFFS,iCL1+16.6 Say "mts"            Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+21.7 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+21.9 Say vMAN             Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
      @vFFS,iCL1+30.4 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.4
      @vFFS,iCL1+31.8 Say "mts"            Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+56.1 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.1
      @vFFS,iCL1+56.3 Say vCTD             Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9,999"
      @vFFS,iCL1+63.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,0.3
 ELSE
      @vFFS,iCL1+06.5 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,9.0
      @vFFS,iCL1+16.6 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+21.7 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,8.9
      @vFFS,iCL1+31.8 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,4.2
      @vFFS,iCL1+56.1 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,7.7
      @vFFS,iCL1+37.0 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.7
      @vFFS,iCL1+41.8 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.7
      @vFFS,iCL1+46.6 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.7
      @vFFS,iCL1+51.4 Say " "              Font "&mLetAri",9 Style "NQ" Size 1,3.7
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. voPc="S"
           SET COLOR TO RGB(0,0,128,164,162,170)
      CASE ptIp="R" .AND. voPc="S"
           DO coLblz
 ENDCASE
 @vFFS,iCL1+065.0 Say " "                Font "&mLetAri",9 Style "NQ" Size 1,00.2
 @vFFS,iCL1+065.1 Say Round(vTPI*vCTD,4) Font "&mLetAri",9 Style "NQ" Size 1,27.4 Pict "999,999,999,999.9999"
 @vFFS,iCL1+092.5 Say " "                Font "&mLetAri",9 Style "NQ" Size 1,00.3
 @vFFS,iCL1+123.0 Say vCMP               Font "&mLetAri",9 Style "NQ" Size 1,26.7 Pict "@S30"
 IF mpRe=1 .AND. (ppRg="1200" .OR. ppRg="1300")
      @vFFS,iCL1+94 Say Round(vTPI*vCTD*vPRE,4) Font "&mLetAri",9 Style "NQ" Size 1,27.9 Pict "999,999,999,999.9999"
 ELSE
      @vFFS,iCL1+94 Say Space(10)               Font "&mLetAri",9 Style "NQ" Size 1,27.9
 ENDIF
ENDPROC
*
PROCEDURE Di8_2700c
 @vFFS,iCL1+006.6 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+006.7 Say vMLA  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+015.3 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+016.6 Say "mts" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 @vFFS,iCL1+021.7 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+021.9 Say vMAN  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+030.2 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+031.8 Say "mts" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 @vFFS,iCL1+041.4 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+041.6 Say vMM1  Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9,999"
 @vFFS,iCL1+048.8 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.3
 @vFFS,iCL1+050.2 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+050.4 Say vCX1  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+058.7 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+060.2 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+060.4 Say vCY1  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+068.7 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+074.5 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+074.8 Say vMM2  Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9,999"
 @vFFS,iCL1+082.0 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.3
 @vFFS,iCL1+083.4 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+083.6 Say vCX2  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+091.9 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+093.4 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+093.6 Say vCY2  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+101.9 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+107.7 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+108.0 Say vMM3  Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9,999"
 @vFFS,iCL1+115.2 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.3
 @vFFS,iCL1+116.6 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+116.8 Say vCX3  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+125.1 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+126.6 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+126.8 Say vCY3  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+135.1 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+140.9 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+141.1 Say vMM4  Font "&mLetAri",9 Style "NQ" Size 1,7.2 Pict "9,999"
 @vFFS,iCL1+148.3 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.3
 @vFFS,iCL1+149.8 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+149.9 Say vCX4  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+158.2 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+159.7 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+159.8 Say vCY4  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+168.1 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+169.6 Say vCTD  Font "&mLetAri",9 Style "NQ" Size 1,7.2  Pict "9,999"
 @vFFS,iCL1+177.8 Say vCMP  Font "&mLetAri",9 Style "NQ" Size 1,26.7 Pict "@S30"
ENDPROC
*
PROCEDURE Di9_2700c
 @vFFS,iCL1+006.6 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+006.7 Say vMLA  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+015.3 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+016.6 Say "mts" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 @vFFS,iCL1+021.7 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.1
 @vFFS,iCL1+021.9 Say vMAN  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
 @vFFS,iCL1+030.2 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,0.4
 @vFFS,iCL1+031.8 Say "mts" Font "&mLetAri",9 Style "NQ" Size 1,4.2
 @vFFS,iCL1+041.6 Say vMM1  Font "&mLetAri",9 Style "NQ" Size 1,07.4  Pict "9,999"
 @vFFS,iCL1+054.6 Say vMM2  Font "&mLetAri",9 Style "NQ" Size 1,07.4  Pict "9,999"
 @vFFS,iCL1+067.4 Say vMM3  Font "&mLetAri",9 Style "NQ" Size 1,07.8  Pict "9,999"
 @vFFS,iCL1+080.6 Say vMM4  Font "&mLetAri",9 Style "NQ" Size 1,07.8  Pict "9,999"
 @vFFS,iCL1+089.4 Say vCTD  Font "&mLetAri",9 Style "NQ" Size 1,07.2  Pict "9,999"
 @vFFS,iCL1+097.6 Say vCMP  Font "&mLetAri",9 Style "NQ" Size 1,26.7 Pict "@S30"
ENDPROC
*
PROCEDURE Lin_2700c
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, ucL1-5 TO pfIn, ucL1-5
 @ piNi, icL1+6 TO pfIn, icL1+6
 DO CASE
      CASE ptPo$"12"
           DO li1_2700c
      CASE ptPo="3"
           DO li3_2700c
      CASE ptPo$"456"
           DO li4_2700c
      CASE ptPo="7"
           DO li7_2700c
      CASE ptPo="8"
           DO li8_2700c
      CASE ptPo="9"
           DO li9_2700c
 ENDCASE
ENDPROC
*
PROCEDURE Li1_2700c
 @ piNi, icL1+015.9 TO pfIn, icL1+015.9
 @ piNi, icL1+021.3 TO pfIn, icL1+021.3
 @ piNi, icL1+031.2 TO pfIn, icL1+031.2
 @ piNi, icL1+036.4 TO pfIn, icL1+036.4
 @ piNi, icL1+041.2 TO pfIn, icL1+041.2
 @ piNi, icL1+046.0 TO pfIn, icL1+046.0
 @ piNi, icL1+050.8 TO pfIn, icL1+050.8
 @ piNi, icL1+055.5 TO pfIn, icL1+055.5
 @ piNi, icL1+060.0 TO pfIn, icL1+060.0
 @ piNi, icL1+068.8 TO pfIn, icL1+068.8
 @ piNi, icL1+097.7 TO pfIn, icL1+097.7
 @ piNi, icL1+126.7 TO pfIn, icL1+126.7
ENDPROC
*
PROCEDURE Li3_2700c
 @ piNi, icL1+019.8 TO pfIn, icL1+019.8
 @ piNi, icL1+025.0 TO pfIn, icL1+025.0
 @ piNi, icL1+038.8 TO pfIn, icL1+038.8
 @ piNi, icL1+044.0 TO pfIn, icL1+044.0
 @ piNi, icL1+052.8 TO pfIn, icL1+052.8
 @ piNi, icL1+081.8 TO pfIn, icL1+081.8
 @ piNi, icL1+110.8 TO pfIn, icL1+110.8
ENDPROC
*
PROCEDURE Li4_2700c
 @ piNi, icL1+015.9 TO pfIn, icL1+015.9
 @ piNi, icL1+021.3 TO pfIn, icL1+021.3
 @ piNi, icL1+029.8 TO pfIn, icL1+029.8
 @ piNi, icL1+058.8 TO pfIn, icL1+058.8
 @ piNi, icL1+087.7 TO pfIn, icL1+087.7
ENDPROC
*
PROCEDURE Li7_2700c
 @ piNi, icL1+015.9 TO pfIn, icL1+015.9
 @ piNi, icL1+021.3 TO pfIn, icL1+021.3
 @ piNi, icL1+031.2 TO pfIn, icL1+031.2
 @ piNi, icL1+036.4 TO pfIn, icL1+036.4
 @ piNi, icL1+041.2 TO pfIn, icL1+041.2
 @ piNi, icL1+046.0 TO pfIn, icL1+046.0
 @ piNi, icL1+050.8 TO pfIn, icL1+050.8
 @ piNi, icL1+055.5 TO pfIn, icL1+055.5
 @ piNi, icL1+064.4 TO pfIn, icL1+064.4
 @ piNi, icL1+093.4 TO pfIn, icL1+093.4
 @ piNi, icL1+122.4 TO pfIn, icL1+122.4
ENDPROC
*
PROCEDURE Li8_2700c
 @ piNi, icL1+015.9 TO pfIn, icL1+015.9
 @ piNi, icL1+021.3 TO pfIn, icL1+021.3
 @ piNi, icL1+031.2 TO pfIn, icL1+031.2
 @ piNi, icL1+036.4 TO pfIn, icL1+036.4
 @ piNi, icL1+040.8 TO pfIn, icL1+040.8
 @ piNi, icL1+049.5 TO pfIn, icL1+049.5
 @ piNi, icL1+059.6 TO pfIn, icL1+059.6
 @ piNi, icL1+069.5 TO pfIn, icL1+069.5
 @ piNi, icL1+073.9 TO pfIn, icL1+073.9
 @ piNi, icL1+082.7 TO pfIn, icL1+082.7
 @ piNi, icL1+092.7 TO pfIn, icL1+092.7
 @ piNi, icL1+102.7 TO pfIn, icL1+102.7
 @ piNi, icL1+107.1 TO pfIn, icL1+107.1
 @ piNi, icL1+116.0 TO pfIn, icL1+116.0
 @ piNi, icL1+126.0 TO pfIn, icL1+126.0
 @ piNi, icL1+136.0 TO pfIn, icL1+136.0
 @ piNi, icL1+140.4 TO pfIn, icL1+140.4
 @ piNi, icL1+149.1 TO pfIn, icL1+149.1
 @ piNi, icL1+159.0 TO pfIn, icL1+159.0
 @ piNi, icL1+169.0 TO pfIn, icL1+169.0
 @ piNi, icL1+177.2 TO pfIn, icL1+177.2
ENDPROC
*
PROCEDURE Li9_2700c
 @ piNi, icL1+015.9 TO pfIn, icL1+015.9
 @ piNi, icL1+021.3 TO pfIn, icL1+021.3
 @ piNi, icL1+031.2 TO pfIn, icL1+031.2
 @ piNi, icL1+036.4 TO pfIn, icL1+036.4
 @ piNi, icL1+040.8 TO pfIn, icL1+040.8
 @ piNi, icL1+049.5 TO pfIn, icL1+049.5
 @ piNi, icL1+053.9 TO pfIn, icL1+053.9
 @ piNi, icL1+062.4 TO pfIn, icL1+062.4
 @ piNi, icL1+066.7 TO pfIn, icL1+066.7
 @ piNi, icL1+075.5 TO pfIn, icL1+075.5
 @ piNi, icL1+080.0 TO pfIn, icL1+080.0
 @ piNi, icL1+088.7 TO pfIn, icL1+088.7
 @ piNi, icL1+097.0 TO pfIn, icL1+097.0
ENDPROC
*
PROCEDURE Bot_2700c
 IF ptPo<>"2" .AND. ptPo<>"7" .AND. ptPo<>"8" .AND. ptPo<>"9"
      RETURN
 ENDIF
 DO CASE
      CASE ptPo$"27"
           IF vcA1=1
                DO prEsiona WITH "1", "LADO1SI", vfFs+0.1, icL1+37.2
           ELSE
                DO prEsiona WITH "1", "LADO1NO", vfFs+0.1, icL1+37.2
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vcA3=1
                DO prEsiona WITH "1", "LADO3SI", vfFs+0.1, icL1+42.0
           ELSE
                DO prEsiona WITH "1", "LADO3NO", vfFs+0.1, icL1+42.0
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vcA4=1
                DO prEsiona WITH "1", "LADO4SI", vfFs+0.1, icL1+46.8
           ELSE
                DO prEsiona WITH "1", "LADO4NO", vfFs+0.1, icL1+46.8
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vcA2=1
                DO prEsiona WITH "1", "LADO2SI", vfFs+0.1, icL1+51.6
           ELSE
                DO prEsiona WITH "1", "LADO2NO", vfFs+0.1, icL1+51.6
           ENDIF
      CASE ptPo="8"
           IF vcA1=1
                DO prEsiona WITH "1", "PERFORA1", vfFs+0.1, icL1+37.1
           ELSE
                DO prEsiona WITH "1", "PERFORA0", vfFs+0.1, icL1+37.1
           ENDIF
           IF vcA2=1
                DO prEsiona WITH "1", "PERFORA2", vfFs+0.1, icL1+70.3
           ELSE
                DO prEsiona WITH "1", "PERFORA0", vfFs+0.1, icL1+70.3
           ENDIF
           IF vcA3=1
                DO prEsiona WITH "1", "PERFORA3", vfFs+0.1, icL1+103.5
           ELSE
                DO prEsiona WITH "1", "PERFORA0", vfFs+0.1, icL1+103.5
           ENDIF
           IF vcA4=1
                DO prEsiona WITH "1", "PERFORA4", vfFs+0.1, icL1+136.7
           ELSE
                DO prEsiona WITH "1", "PERFORA0", vfFs+0.1, icL1+136.7
           ENDIF
      CASE ptPo="9"
           IF vcA1=1
                DO prEsiona WITH "1", "PTABOLE1", vfFs+0.1, icL1+37.1
           ELSE
                DO prEsiona WITH "1", "PERFORA0", vfFs+0.1, icL1+37.1
           ENDIF
           IF vcA2=1
                DO prEsiona WITH "1", "PTABOLE2", vfFs+0.1, icL1+50.2
           ELSE
                DO prEsiona WITH "1", "PERFORA0", vfFs+0.1, icL1+50.2
           ENDIF
           IF vcA3=1
                DO prEsiona WITH "1", "PTABOLE3", vfFs+0.1, icL1+63.1
           ELSE
                DO prEsiona WITH "1", "PERFORA0", vfFs+0.1, icL1+63.1
           ENDIF
           IF vcA4=1
                DO prEsiona WITH "1", "PTABOLE4", vfFs+0.1, icL1+76.3
           ELSE
                DO prEsiona WITH "1", "PERFORA0", vfFs+0.1, icL1+76.3
           ENDIF
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bla_2700c
 DO coLsc1
 @ vfFs, icL1 CLEAR TO vfFs+1.1, ucL1
 DO liN_2700c WITH vfFs, vfFs+1.1
ENDPROC
*
PROCEDURE Lim_2700c
 STORE 00 TO vmLa, vmAn, vp11, vp21, vcTd, vlAr, vaNc, vmM1, vmM2, vmM3, vmM4
 STORE 00 TO vcX1, vcX2, vcX3, vcX4, vcY1, vcY2, vcY3, vcY4
 STORE 01 TO vcA1, vcA2, vcA3, vcA4, viMm, viTe, vtPi
 STORE " " TO vcMp
 STORE "N" TO voPc
 STORE "  /  " TO vp12, vp22
 STORE vuNd TO vuN1, vuN2
 DO CASE
      CASE xeSp=6 .OR. xeSp=5.5
           STORE 1 TO vpOr
      CASE xeSp=8 .OR. xeSp=10
           STORE 2 TO vpOr
      CASE xeSp=12 .OR. xeSp=15
           STORE 3 TO vpOr
      CASE xeSp=19
           STORE 4 TO vpOr
      OTHERWISE
           STORE 0 TO vpOr
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2700c
 PARAMETER pcAl
 STORE 02 TO viMm
 STORE ftM3opc TO voPc
 STORE ftM3un1 TO vuN1
 STORE ftM3un2 TO vuN2
 STORE ftM3mla TO vmLa
 STORE ftM3man TO vmAn
 STORE ftM3p11 TO vp11
 STORE ftM3p12 TO vp12
 STORE ftM3p21 TO vp21
 STORE ftM3p22 TO vp22
 STORE ftM3can TO vcTd
 STORE ftM3pie TO vtPi
 STORE ftM3ca1 TO vcA1
 STORE ftM3ca2 TO vcA2
 STORE ftM3ca3 TO vcA3
 STORE ftM3ca4 TO vcA4
 STORE ftM3mm1 TO vmM1
 STORE ftM3mm2 TO vmM2
 STORE ftM3mm3 TO vmM3
 STORE ftM3mm4 TO vmM4
 STORE ftM3cx1 TO vcX1
 STORE ftM3cx2 TO vcX2
 STORE ftM3cx3 TO vcX3
 STORE ftM3cx4 TO vcX4
 STORE ftM3cy1 TO vcY1
 STORE ftM3cy2 TO vcY2
 STORE ftM3cy3 TO vcY3
 STORE ftM3cy4 TO vcY4
 STORE ftM3cm1 TO vcMm
 STORE ftM3cm2 TO vcMp
 STORE ftM3por TO vpOr
 DO caL_2700c
 DO CASE
      CASE voPc="S"
           STORE 01 TO viTe
      CASE voPc="N" .AND. viTe<01
           STORE 01 TO viTe
      CASE voPc="N" .AND. ptPo$"12" .AND. viTe>03
           STORE 03 TO viTe
      CASE voPc="N" .AND. ptPo="3" .AND. vuN1+vuN2="MM" .AND. viTe>03
           STORE 03 TO viTe
      CASE voPc="N" .AND. ptPo="3" .AND. vuN1+vuN2="MP" .AND. viTe>04
           STORE 04 TO viTe
      CASE voPc="N" .AND. ptPo="3" .AND. vuN1+vuN2="PM" .AND. viTe>04
           STORE 04 TO viTe
      CASE voPc="N" .AND. ptPo="3" .AND. vuN1+vuN2="PP" .AND. viTe>05
           STORE 05 TO viTe
      CASE voPc="N" .AND. ptPo$"456" .AND. viTe>02
           STORE 02 TO viTe
      CASE voPc="N" .AND. ptPo="7" .AND. viTe>4
           STORE 04 TO viTe
      CASE ptPo="8" .AND. viTe>12
           STORE 12 TO viTe
      CASE ptPo="9" .AND. viTe>4
           STORE 04 TO viTe
 ENDCASE
ENDPROC
*
PROCEDURE Cal_2700c
 IF voPc="S"
      STORE 01 TO vcTd
      STORE 00 TO vmLa, vmAn, vp11, vp21, vlAr, vaNc
      STORE "  /  " TO vp12, vp22
      RETURN
 ENDIF
 DO CASE
      CASE ptPo="1"
           STORE (vmLa*vmAn) TO vtPi
      CASE ptPo="2"
           STORE 0 TO vtPi
           IF vcA1=1
                STORE vtPi+vmLa TO vtPi
           ENDIF
           IF vcA3=1
                STORE vtPi+vmLa TO vtPi
           ENDIF
           IF vcA4=1
                STORE vtPi+vmAn TO vtPi
           ENDIF
           IF vcA2=1
                STORE vtPi+vmAn TO vtPi
           ENDIF
      CASE ptPo="3"
           DO CASE
                CASE vuN1=vuN2 .AND. vuN1="P"
                     DO CASE
                          CASE vp12="  /  "
                               STORE ROUND(vp11*0.0254, 3) TO vmLa
                          CASE SUBSTR(vp12, 5, 1)=" "
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 1))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                          OTHERWISE
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 2))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                     ENDCASE
                     DO CASE
                          CASE vp22="  /  "
                               STORE ROUND(vp21*0.0254, 3) TO vmAn
                          CASE SUBSTR(vp22, 5, 1)=" "
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 1))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                          OTHERWISE
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 2))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                     ENDCASE
                CASE vuN1<>vuN2 .AND. vuN1="P"
                     DO CASE
                          CASE vp12="  /  "
                               STORE ROUND(vp11*0.0254, 3) TO vmLa
                          CASE SUBSTR(vp12, 5, 1)=" "
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 1))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                          OTHERWISE
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 2))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                     ENDCASE
                CASE vuN1<>vuN2 .AND. vuN2="P"
                     DO CASE
                          CASE vp22="  /  "
                               STORE ROUND(vp21*0.0254, 3) TO vmAn
                          CASE SUBSTR(vp22, 5, 1)=" "
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 1))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                          OTHERWISE
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 2))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                     ENDCASE
           ENDCASE
           DO CASE
                CASE vuN1=vuN2 .AND. vuN1="P" .AND. mpIe=1
                     DO cl1_2700c WITH "L", "P"
                     DO cl1_2700c WITH "A", "P"
                     STORE vp11+cp11 TO vlAr
                     STORE vp21+cp21 TO vaNc
                     STORE ROUND(vlAr*vaNc/144, 4) TO vtPi
                CASE vuN1=vuN2 .AND. vuN1="M" .AND. mpIe=1
                     STORE ROUND(vmLa/0.0254, 3) TO vlAr
                     STORE ROUND(vmAn/0.0254, 3) TO vaNc
                     IF INT(vlAr/2)<>vlAr/2
                          STORE INT(vlAr)+1 TO vlAr
                          IF INT(vlAr/2)<>vlAr/2
                               STORE INT(vlAr)+1 TO vlAr
                          ENDIF
                     ENDIF
                     IF INT(vaNc/2)<>vaNc/2
                          STORE INT(vaNc)+1 TO vaNc
                          IF INT(vaNc/2)<>vaNc/2
                               STORE INT(vaNc)+1 TO vaNc
                          ENDIF
                     ENDIF
                     STORE ROUND(vlAr*vaNc/144, 4) TO vtPi
                CASE vuN1<>vuN2 .AND. vuN1="P" .AND. mpIe=1
                     DO cl1_2700c WITH "L", "P"
                     STORE vp11+cp11 TO vlAr
                     STORE ROUND(vmAn/0.0254, 3) TO vaNc
                     IF INT(vaNc/2)<>vaNc/2
                          STORE INT(vaNc)+1 TO vaNc
                          IF INT(vaNc/2)<>vaNc/2
                               STORE INT(vaNc)+1 TO vaNc
                          ENDIF
                     ENDIF
                     STORE ROUND(vlAr*vaNc/144, 4) TO vtPi
                CASE vuN1<>vuN2 .AND. vuN2="P" .AND. mpIe=1
                     DO cl1_2700c WITH "A", "P"
                     STORE vp21+cp21 TO vaNc
                     STORE ROUND(vmLa/0.0254, 3) TO vlAr
                     IF INT(vlAr/2)<>vlAr/2
                          STORE INT(vlAr)+1 TO vlAr
                          IF INT(vlAr/2)<>vlAr/2
                               STORE INT(vlAr)+1 TO vlAr
                          ENDIF
                     ENDIF
                     STORE ROUND(vlAr*vaNc/144, 4) TO vtPi
           ENDCASE
           DO CASE
                CASE vuN1=vuN2 .AND. vuN1="P" .AND. mpIe=2
                     DO cl1_2700c WITH "L", "P"
                     DO cl1_2700c WITH "A", "P"
                     STORE vp11+cp11 TO vlAr
                     STORE vp21+cp21 TO vaNc
                     STORE ROUND(vlAr*vaNc/144, 4) TO vtPi
                CASE vuN1=vuN2 .AND. vuN1="M" .AND. mpIe=2
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc/0.09, 4) TO vtPi
                CASE vuN1<>vuN2 .AND. vuN1="P" .AND. mpIe=2
                     DO CASE
                          CASE vp12="  /  "
                               STORE ROUND(vp11*0.0254, 3) TO vmLa
                          CASE SUBSTR(vp12, 5, 1)=" "
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 1))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                          OTHERWISE
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 2))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                     ENDCASE
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc/0.09, 4) TO vtPi
                CASE vuN1<>vuN2 .AND. vuN2="P" .AND. mpIe=2
                     DO CASE
                          CASE vp22="  /  "
                               STORE ROUND(vp21*0.0254, 3) TO vmAn
                          CASE SUBSTR(vp22, 5, 1)=" "
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 1))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                          OTHERWISE
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 2))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                     ENDCASE
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc/0.09, 4) TO vtPi
           ENDCASE
           DO CASE
                CASE vuN1=vuN2 .AND. vuN1="P" .AND. mpIe=3
                     DO cl1_2700c WITH "L", "P"
                     DO cl1_2700c WITH "A", "P"
                     STORE vp11+cp11 TO vlAr
                     STORE vp21+cp21 TO vaNc
                     STORE ROUND(vlAr*vaNc/144, 4) TO vtPi
                CASE vuN1=vuN2 .AND. vuN1="M" .AND. mpIe=3
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc*10.77, 4) TO vtPi
                CASE vuN1<>vuN2 .AND. vuN1="P" .AND. mpIe=3
                     DO CASE
                          CASE vp12="  /  "
                               STORE ROUND(vp11*0.0254, 3) TO vmLa
                          CASE SUBSTR(vp12, 5, 1)=" "
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 1))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                          OTHERWISE
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 2))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                     ENDCASE
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc*10.77, 4) TO vtPi
                CASE vuN1<>vuN2 .AND. vuN2="P" .AND. mpIe=3
                     DO CASE
                          CASE vp22="  /  "
                               STORE ROUND(vp21*0.0254, 3) TO vmAn
                          CASE SUBSTR(vp22, 5, 1)=" "
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 1))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                          OTHERWISE
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 2))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                     ENDCASE
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc*10.77, 4) TO vtPi
           ENDCASE
           DO CASE
                CASE vuN1=vuN2 .AND. vuN1="P" .AND. mpIe=4
                     DO cl1_2700c WITH "L", "P"
                     DO cl1_2700c WITH "A", "P"
                     STORE vp11+cp11 TO vlAr
                     STORE vp21+cp21 TO vaNc
                     STORE ROUND(vlAr*vaNc/144, 4) TO vtPi
                CASE vuN1=vuN2 .AND. vuN1="M" .AND. mpIe=4
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc/0.09, 4) TO vtPi
                CASE vuN1<>vuN2 .AND. vuN1="P" .AND. mpIe=4
                     DO CASE
                          CASE vp12="  /  "
                               STORE ROUND(vp11*0.0254, 3) TO vmLa
                          CASE SUBSTR(vp12, 5, 1)=" "
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 1))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                          OTHERWISE
                               STORE VAL(SUBSTR(vp12, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp12, 4, 2))) TO vmLa
                               STORE ROUND((vp11+vmLa)*0.0254, 3) TO vmLa
                     ENDCASE
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc/0.09, 4) TO vtPi
                CASE vuN1<>vuN2 .AND. vuN2="P" .AND. mpIe=4
                     DO CASE
                          CASE vp22="  /  "
                               STORE ROUND(vp21*0.0254, 3) TO vmAn
                          CASE SUBSTR(vp22, 5, 1)=" "
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 1))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                          OTHERWISE
                               STORE VAL(SUBSTR(vp22, 1, 2))/ ;
                                     VAL(ALLTRIM(SUBSTR(vp22, 4, 2))) TO vmAn
                               STORE ROUND((vp21+vmAn)*0.0254, 3) TO vmAn
                     ENDCASE
                     DO cl1_2700c WITH "L", "M"
                     DO cl1_2700c WITH "A", "M"
                     STORE vmLa+cmLa TO vlAr
                     STORE vmAn+cmAn TO vaNc
                     STORE ROUND(vlAr*vaNc/0.09, 4) TO vtPi
           ENDCASE
      CASE ptPo$"46"
           STORE vmLa TO vtPi
      CASE ptPo="5"
           STORE ROUND(vmLa*4, 4) TO vtPi
      CASE ptPo="7"
      CASE ptPo$"89"
           STORE 0 TO vcTd
           STORE 1 TO vtPi
           IF vcA1=1
                STORE vcTd+1 TO vcTd
           ENDIF
           IF vcA2=1
                STORE vcTd+1 TO vcTd
           ENDIF
           IF vcA3=1
                STORE vcTd+1 TO vcTd
           ENDIF
           IF vcA4=1
                STORE vcTd+1 TO vcTd
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Cl1_2700c
 PARAMETER ptIp, puNi
 DO CASE
      CASE ptIp="L" .AND. puNi="P"
           DO CASE
                CASE vp12="  /  " .OR. VAL(SUBSTR(vp12, 1, 2))/ ;
                     VAL(ALLTRIM(SUBSTR(vp12, 4, 2)))=1
                     STORE 0 TO cp11
                CASE VAL(SUBSTR(vp12, 1, 2))>VAL(ALLTRIM(SUBSTR(vp12, 4, 2)))
                     STORE 1+INT(VAL(SUBSTR(vp12, 1, 2))/ ;
                           VAL(ALLTRIM(SUBSTR(vp12, 4, 2)))) TO cp11
                CASE VAL(SUBSTR(vp12, 1, 2))<VAL(ALLTRIM(SUBSTR(vp12, 4, 2)))
                     STORE 1 TO cp11
           ENDCASE
           IF INT((vp11+cp11)/2)<>(vp11+cp11)/2 .AND. mpIe<>3
                STORE cp11+1 TO cp11
           ENDIF
      CASE ptIp="A" .AND. puNi="P"
           DO CASE
                CASE vp22="  /  " .OR. VAL(SUBSTR(vp22, 1, 2))/ ;
                     VAL(ALLTRIM(SUBSTR(vp22, 4, 2)))=1
                     STORE 0 TO cp21
                CASE VAL(SUBSTR(vp22, 1, 2))>VAL(ALLTRIM(SUBSTR(vp22, 4, 2)))
                     STORE 1+INT(VAL(SUBSTR(vp22, 1, 2))/ ;
                           VAL(ALLTRIM(SUBSTR(vp22, 4, 2)))) TO cp21
                CASE VAL(SUBSTR(vp22, 1, 2))<VAL(ALLTRIM(SUBSTR(vp22, 4, 2)))
                     STORE 1 TO cp21
           ENDCASE
           IF INT((vp21+cp21)/2)<>(vp21+cp21)/2 .AND. mpIe<>3
                STORE cp21+1 TO cp21
           ENDIF
      CASE mpIe=2 .AND. ptIp="L" .AND. puNi="M"
           DO CASE
                CASE INT(vmLa)=vmLa .OR. INT(vmLa*10)/10=vmLa
                     STORE 0 TO cmLa
                OTHERWISE
                     cmLa = vmLa-INT(vmLa)
                     cmLa = cmLa*10
                     DO CASE
                          CASE cmLa-INT(cmLa)<=0.50
                               STORE 0.5-(cmLa-INT(cmLa)) TO cmLa
                          CASE cmLa-INT(cmLa)<=1
                               STORE 01-(cmLa-INT(cmLa)) TO cmLa
                     ENDCASE
                     cmLa = cmLa/10
           ENDCASE
      CASE mpIe=2 .AND. ptIp="A" .AND. puNi="M"
           DO CASE
                CASE INT(vmAn)=vmAn .OR. INT(vmAn*10)/10=vmAn
                     STORE 0 TO cmAn
                OTHERWISE
                     cmAn = vmAn-INT(vmAn)
                     cmAn = cmAn*10
                     DO CASE
                          CASE cmAn-INT(cmAn)<=0.50
                               STORE 0.5-(cmAn-INT(cmAn)) TO cmAn
                          CASE cmAn-INT(cmAn)<=1
                               STORE 01-(cmAn-INT(cmAn)) TO cmAn
                     ENDCASE
                     cmAn = cmAn/10
           ENDCASE
      CASE mpIe=3 .AND. ptIp$"AL" .AND. puNi="M"
           STORE 0 TO cmLa, cmAn
      CASE mpIe=4 .AND. ptIp="L" .AND. puNi="M"
           STORE 0 TO cmLa
      CASE mpIe=4 .AND. ptIp="A" .AND. puNi="M"
           STORE 0 TO cmAn
 ENDCASE
ENDPROC
*
PROCEDURE Pla_2700c
 PRIVATE prCc, pvAr, plAr, paNc, pcMm, pcMp, ppOr, ptXt, pdEs, pmEd, pmD1, pmD2
 PRIVATE pmM1, pmM2, pmM3, pmM4, pcX1, pcX2, pcX3, pcX4, pcY1, pcY2, pcY3, pcY4
 PRIVATE pcAn, pcA1, pcA2, pcA3, pcA4
 SELECT teMporal_7
 STORE SUBSTR(ftM7des, 1, 23) TO pdEs
 IF ftM7la1>0 .AND. ftM7an1>0
      STORE ALLTRIM(STR(ftM7la1*1000, 10, 0)) TO plAr
      STORE ALLTRIM(STR(ftM7an1*1000, 10, 0)) TO paNc
 ELSE
      STORE ALLTRIM(STR(ftM7la2, 10, 0)) TO plAr
      STORE ALLTRIM(STR(ftM7an2, 10, 0)) TO paNc
 ENDIF
 ptXt = FCREATE("PLANIQ\MEDIDAS.CSV")
 FSEEK(ptXt, 0, 2)
 STORE "PLQMATRL1.02,,0,default,N" TO pvAr
 FPUTS(ptXt, pvAr)
 FSEEK(ptXt, 0, 2)
 STORE "PLQMSETT1.13,default,0,Y,20,1000,Y,Y,2,N,Y,N,,,0,0,0,N,0,0,0,0,99999,99999,Y,0,0,0,0,N,1,N,0,0,0,0,0,0,0,N,Y,,"  ;
       TO pvAr
 FPUTS(ptXt, pvAr)
 FSEEK(ptXt, 0, 2)
 STORE "PLQCASES1.04,Cortes,0,,"+ALLTRIM(SUBSTR(vnOm, 1, 25))+ ;
       ",,,,,,,,True,0,0,,," TO pvAr
 FPUTS(ptXt, pvAr)
 FSEEK(ptXt, 0, 2)
 STORE "PLQPNLTC1.04,"+pdEs+","+paNc+","+plAr+",120,120,0,N,,1,0" TO pvAr
 FPUTS(ptXt, pvAr)
 FSEEK(ptXt, 0, 2)
 SELECT teMporal_3
 GOTO TOP
 STORE 1 TO prCc
 DO WHILE  .NOT. EOF()
      IF ftM3opc="S"
           SKIP
           LOOP
      ENDIF
      STORE ftM3mla TO plAr
      STORE ftM3man TO paNc
      STORE ftM3can TO pcAn
      STORE ftM3ca1 TO pcA1
      STORE ftM3ca2 TO pcA2
      STORE ftM3ca3 TO pcA3
      STORE ftM3ca4 TO pcA4
      STORE ftM3mm1 TO pmM1
      STORE ftM3mm2 TO pmM2
      STORE ftM3mm3 TO pmM3
      STORE ftM3mm4 TO pmM4
      STORE ftM3cx1 TO pcX1
      STORE ftM3cx2 TO pcX2
      STORE ftM3cx3 TO pcX3
      STORE ftM3cx4 TO pcX4
      STORE ftM3cy1 TO pcY1
      STORE ftM3cy2 TO pcY2
      STORE ftM3cy3 TO pcY3
      STORE ftM3cy4 TO pcY4
      STORE ftM3cm1 TO pcMm
      STORE ftM3cm2 TO pcMp
      STORE ftM3por TO ppOr
      DO CASE
           CASE ftM3un1="P" .OR. ftM3un2="P"
                IF ftM3un1="P"
                     IF ALLTRIM(ftM3p12)="/"
                          STORE ALLTRIM(STR(ftM3p11, 3, 0))+'"' TO pmD1
                     ELSE
                          STORE ALLTRIM(STR(ftM3p11, 3, 0))+'"'+ ;
                                ALLTRIM(ftM3p12) TO pmD1
                     ENDIF
                ELSE
                     STORE ALLTRIM(STR(ftM3mla, 7, 3))+"m" TO pmD1
                ENDIF
                IF ftM3un2="P"
                     IF ALLTRIM(ftM3p22)="/"
                          STORE ALLTRIM(STR(ftM3p21, 3, 0))+'"' TO pmD2
                     ELSE
                          STORE ALLTRIM(STR(ftM3p21, 3, 0))+'"'+ ;
                                ALLTRIM(ftM3p22) TO pmD2
                     ENDIF
                ELSE
                     STORE ALLTRIM(STR(ftM3man, 7, 3))+"m" TO pmD2
                ENDIF
                STORE " "+pmD1+" x "+pmD2 TO pmEd
                STORE "PLQPRTTC1.04,pz."+ALLTRIM(STR(prCc, 6, 0))+":"+ ;
                      pmEd+","+ALLTRIM(STR(plAr*1000, 10, 0))+","+ ;
                      ALLTRIM(STR(paNc*1000, 10, 0))+",Y,"+ ;
                      ALLTRIM(STR(pcAn, 10, 0))+","+ALLTRIM(STR(pcAn, 10,  ;
                      0))+",0,,Y,,1,,,,N,,," TO pvAr
           OTHERWISE
                STORE "PLQPRTTC1.04,pz."+ALLTRIM(STR(prCc, 6, 0))+","+ ;
                      ALLTRIM(STR(plAr*1000, 10, 0))+","+ALLTRIM(STR(paNc* ;
                      1000, 10, 0))+",Y,"+ALLTRIM(STR(pcAn, 10, 0))+","+ ;
                      ALLTRIM(STR(pcAn, 10, 0))+",0,,Y,,1,,,,N,,," TO pvAr
      ENDCASE
      FPUTS(ptXt, pvAr)
      FSEEK(ptXt, 0, 2)
      STORE prCc+1 TO prCc
      SELECT teMporal_3
      SKIP
 ENDDO
 FCLOSE(ptXt)
 RELEASE prCc, pvAr, plAr, paNc, pcMm, pcMp, ppOr, ptXt, pdEs, pmEd, pmD1, pmD2
 RELEASE pmM1, pmM2, pmM3, pmM4, pcX1, pcX2, pcX3, pcX4, pcY1, pcY2, pcY3, pcY4
 RELEASE pcAn, pcA1, pcA2, pcA3, pcA4
ENDPROC
*
PROCEDURE Gra_2700c
 = INKEY(0.01)
 SELECT teMporal_3
 IF viMm=01
      APPEND BLANK
      STORE vfFs TO ufFs
      STORE RECNO() TO vrCc, urCc, frCc
 ELSE
      GOTO vrCc
 ENDIF
 IF voPc="N"
      DO caL_2700c
 ENDIF
 REPLACE ftM3opc WITH voPc
 REPLACE ftM3un1 WITH vuN1
 REPLACE ftM3un2 WITH vuN2
 REPLACE ftM3mla WITH vmLa
 REPLACE ftM3man WITH vmAn
 REPLACE ftM3p11 WITH vp11
 REPLACE ftM3p12 WITH vp12
 REPLACE ftM3p21 WITH vp21
 REPLACE ftM3p22 WITH vp22
 REPLACE ftM3can WITH vcTd
 REPLACE ftM3pie WITH vtPi
 REPLACE ftM3ca1 WITH vcA1
 REPLACE ftM3ca2 WITH vcA2
 REPLACE ftM3ca3 WITH vcA3
 REPLACE ftM3ca4 WITH vcA4
 REPLACE ftM3mm1 WITH vmM1
 REPLACE ftM3mm2 WITH vmM2
 REPLACE ftM3mm3 WITH vmM3
 REPLACE ftM3mm4 WITH vmM4
 REPLACE ftM3cx1 WITH vcX1
 REPLACE ftM3cx2 WITH vcX2
 REPLACE ftM3cx3 WITH vcX3
 REPLACE ftM3cx4 WITH vcX4
 REPLACE ftM3cy1 WITH vcY1
 REPLACE ftM3cy2 WITH vcY2
 REPLACE ftM3cy3 WITH vcY3
 REPLACE ftM3cy4 WITH vcY4
 REPLACE ftM3cm1 WITH vcMm
 REPLACE ftM3cm2 WITH vcMp
 REPLACE ftM3por WITH vpOr
 FLUSH
 DO toT_2700c
 GOTO vrCc
 STORE 2 TO viMm
ENDPROC
*
PROCEDURE Ver_2700c
 STORE SPACE(80) TO mmSj
 DO CASE
      CASE ptPo$"127"
           DO ve1_2700c
      CASE ptPo="3"
           DO ve3_2700c
      CASE ptPo$"456"
           DO ve4_2700c
      CASE ptPo="8"
           DO ve8_2700c
      CASE ptPo="9"
           DO ve9_2700c
 ENDCASE
ENDPROC
*
PROCEDURE Ve1_2700c
 DO CASE
      CASE ptPo$"27" .AND. vcA1=0 .AND. vcA2=0 .AND. vcA3=0 .AND. vcA4=0
           STORE "No pueden estar todos los campos sin marcar..." TO mmSj
      CASE vcTd=0
           STORE "Cantidad no puede ser 0..." TO mmSj
      CASE voPc="S" .AND. vtPi=0
           STORE "Pie no puede ser 0..." TO mmSj
      CASE voPc="N"
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vmAn=0
                     STORE "Ancho no puede ser 0..." TO mmSj
           ENDCASE
           IF LEN(ALLTRIM(mmSj))=0
                DO caL_2700c
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Ve3_2700c
 DO CASE
      CASE vcTd=0
           STORE "Cantidad no puede ser 0..." TO mmSj
      CASE voPc="S" .AND. vtPi=0
           STORE "Pie no puede ser 0..." TO mmSj
      CASE voPc="N"
           DO CASE
                CASE vuN1+vuN2="PM" .AND. ALLTRIM(vp12)="/" .AND. vp11<>0
                CASE vuN1+vuN2="PP" .AND. ALLTRIM(vp12)="/" .AND. vp11<>0
                CASE vuN1+vuN2="MP" .AND. ALLTRIM(vp22)="/" .AND. vp21<>0
                CASE vuN1+vuN2="PP" .AND. ALLTRIM(vp22)="/" .AND. vp21<>0
                CASE vuN1+vuN2="MM" .AND. vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vuN1+vuN2="MP" .AND. vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vuN1+vuN2="MM" .AND. vmAn=0
                     STORE "Ancho no puede ser 0..." TO mmSj
                CASE vuN1+vuN2="PM" .AND. vmAn=0
                     STORE "Ancho no puede ser 0..." TO mmSj
                CASE vuN1+vuN2="MM" .AND. vcTd=0
                     STORE "Cantidad no puede ser 0..." TO mmSj
                CASE vuN1+vuN2="MP" .AND. vcTd=0
                     STORE "Cantidad no puede ser 0..." TO mmSj
                CASE vuN1+vuN2="PM" .AND. vcTd=0
                     STORE "Cantidad no puede ser 0..." TO mmSj
                CASE vuN1+vuN2="PP" .AND. vcTd=0
                     STORE "Cantidad no puede ser 0..." TO mmSj
                CASE vuN1+vuN2="PM" .AND. ALLTRIM(vp12)="/" .AND. vp11=0
                     STORE "Entero y fracción no pueden ser 0 o estar vacio..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. ALLTRIM(vp12)="/" .AND. vp11=0
                     STORE "Entero y fracción no pueden ser 0 o estar vacio..."  ;
                           TO mmSj
                CASE vuN1+vuN2="MP" .AND. ALLTRIM(vp22)="/" .AND. vp21=0
                     STORE "Entero y fracción no pueden ser 0 o estar vacio..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. ALLTRIM(vp22)="/" .AND. vp21=0
                     STORE "Entero y fracción no pueden ser 0 o estar vacio..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PM" .AND. LEN(ALLTRIM(SUBSTR(vp12, 1, 2)))=0
                     STORE "Fracción de Pulgadas no puede empezar en blanco..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. LEN(ALLTRIM(SUBSTR(vp12, 1, 2)))=0
                     STORE "Fracción de Pulgadas no puede empezar en blanco..."  ;
                           TO mmSj
                CASE vuN1+vuN2="MP" .AND. LEN(ALLTRIM(SUBSTR(vp22, 1, 2)))=0
                     STORE "Fracción de Pulgadas no puede empezar en blanco..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. LEN(ALLTRIM(SUBSTR(vp22, 1, 2)))=0
                     STORE "Fracción de Pulgadas no puede empezar en blanco..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PM" .AND. (SUBSTR(vp12, 1, 2)="00" .OR.  ;
                     ALLTRIM(SUBSTR(vp12, 1, 2))="0")
                     STORE "Fracción de Pulgadas no puede empezar con 0..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. (SUBSTR(vp12, 1, 2)="00" .OR.  ;
                     ALLTRIM(SUBSTR(vp12, 1, 2))="0")
                     STORE "Fracción de Pulgadas no puede empezar con 0..."  ;
                           TO mmSj
                CASE vuN1+vuN2="MP" .AND. (SUBSTR(vp22, 1, 2)="00" .OR.  ;
                     ALLTRIM(SUBSTR(vp22, 1, 2))="0")
                     STORE "Fracción de Pulgadas no puede empezar con 0..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. (SUBSTR(vp22, 1, 2)="00" .OR.  ;
                     ALLTRIM(SUBSTR(vp22, 1, 2))="0")
                     STORE "Fracción de Pulgadas no puede empezar con 0..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PM" .AND. (SUBSTR(vp12, 4, 2)="00" .OR.  ;
                     ALLTRIM(SUBSTR(vp12, 4, 2))="0")
                     STORE "Fracción de Pulgadas no puede terminar con 00..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. (SUBSTR(vp12, 4, 2)="00" .OR.  ;
                     ALLTRIM(SUBSTR(vp12, 4, 2))="0")
                     STORE "Fracción de Pulgadas no puede terminar con 00..."  ;
                           TO mmSj
                CASE vuN1+vuN2="MP" .AND. (SUBSTR(vp22, 4, 2)="00" .OR.  ;
                     ALLTRIM(SUBSTR(vp22, 4, 2))="0")
                     STORE "Fracción de Pulgadas no puede terminar con 00..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. (SUBSTR(vp22, 4, 2)="00" .OR.  ;
                     ALLTRIM(SUBSTR(vp22, 4, 2))="0")
                     STORE "Fracción de Pulgadas no puede terminar con 00..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PM" .AND. (ALLTRIM(SUBSTR(vp12, 4, 2))= ;
                     "00" .OR. ALLTRIM(SUBSTR(vp12, 4, 2))="0")
                     STORE "Fracción de Pulgadas no puede terminar con 0..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. (ALLTRIM(SUBSTR(vp12, 4, 2))= ;
                     "00" .OR. ALLTRIM(SUBSTR(vp12, 4, 2))="0")
                     STORE "Fracción de Pulgadas no puede terminar con 0..."  ;
                           TO mmSj
                CASE vuN1+vuN2="MP" .AND. (ALLTRIM(SUBSTR(vp22, 4, 2))= ;
                     "00" .OR. ALLTRIM(SUBSTR(vp22, 4, 2))="0")
                     STORE "Fracción de Pulgadas no puede terminar con 0..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. (ALLTRIM(SUBSTR(vp22, 4, 2))= ;
                     "00" .OR. ALLTRIM(SUBSTR(vp22, 4, 2))="0")
                     STORE "Fracción de Pulgadas no puede terminar con 0..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PM" .AND. LEN(ALLTRIM(SUBSTR(vp12, 4, 2)))=0
                     STORE "Fracción de Pulgadas no puede terminar en blanco..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. LEN(ALLTRIM(SUBSTR(vp12, 4, 2)))=0
                     STORE "Fracción de Pulgadas no puede terminar en blanco..."  ;
                           TO mmSj
                CASE vuN1+vuN2="MP" .AND. LEN(ALLTRIM(SUBSTR(vp22, 4, 2)))=0
                     STORE "Fracción de Pulgadas no puede terminar en blanco..."  ;
                           TO mmSj
                CASE vuN1+vuN2="PP" .AND. LEN(ALLTRIM(SUBSTR(vp22, 4, 2)))=0
                     STORE "Fracción de Pulgadas no puede terminar en blanco..."  ;
                           TO mmSj
           ENDCASE
           IF LEN(ALLTRIM(mmSj))=0
                DO caL_2700c
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Ve4_2700c
 STORE SPACE(80) TO mmSj
 DO CASE
      CASE vcTd=0
           STORE "Cantidad no puede ser 0..." TO mmSj
      CASE voPc="S" .AND. vtPi=0
           STORE "Metros no pueden ser 0..." TO mmSj
      CASE voPc="N"
           DO CASE
                CASE vmLa=0 .AND. ptPo="4"
                     STORE "Largo no puede ser 0...   " TO mmSj
                CASE vmLa=0 .AND. ptPo="5"
                     STORE "Diámetro no puede ser 0..." TO mmSj
                CASE vmLa=0 .AND. ptPo="6"
                     STORE "Lado no puede ser 0..." TO mmSj
           ENDCASE
           IF LEN(ALLTRIM(mmSj))=0
                DO caL_2700c
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Ve8_2700c
 STORE SPACE(80) TO mmSj
 DO CASE
      CASE vcA1=0 .AND. vcA2=0 .AND. vcA3=0 .AND. vcA4=0
           STORE "No pueden estar todos los campos sin marcar..." TO mmSj
      CASE vcA1=0
           DO CASE
                CASE vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
           ENDCASE
      CASE vcA1<>0
           DO CASE
                CASE vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
           ENDCASE
      CASE vcA2=0
           DO CASE
                CASE vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcX2<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcY2<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
           ENDCASE
      CASE vcA2<>0
           DO CASE
                CASE vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcX2=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcY2=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
           ENDCASE
      CASE vcA3=0
           DO CASE
                CASE vmM3<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcX3<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcY3<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
           ENDCASE
      CASE vcA3<>0
           DO CASE
                CASE vmM3=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcX3=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcY3=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
           ENDCASE
      CASE vcA4=0
           DO CASE
                CASE vmM4<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcX4<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcY4<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
           ENDCASE
      CASE vcA4<>0
           DO CASE
                CASE vmM4=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcX4=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcY4=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
           ENDCASE
 ENDCASE
 IF LEN(ALLTRIM(mmSj))=0
      DO caL_2700c
 ENDIF
ENDPROC
*
PROCEDURE Ve9_2700c
 STORE SPACE(80) TO mmSj
 DO CASE
      CASE vcA1=0 .AND. vcA2=0 .AND. vcA3=0 .AND. vcA4=0
           STORE "No pueden estar todos los campos sin marcar..." TO mmSj
      CASE vcA1=0 .AND. vmM1<>0
           STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                 TO mmSj
      CASE vcA1<>0 .AND. vmM1=0
           STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                 TO mmSj
      CASE vcA2=0 .AND. vmM2<>0
           STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                 TO mmSj
      CASE vcA2<>0 .AND. vmM2=0
           STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                 TO mmSj
      CASE vcA3=0 .AND. vmM3<>0
           STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                 TO mmSj
      CASE vcA3<>0 .AND. vmM3=0
           STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                 TO mmSj
      CASE vcA4=0 .AND. vmM4<>0
           STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                 TO mmSj
      CASE vcA4<>0 .AND. vmM4=0
           STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))=0
      DO caL_2700c
 ENDIF
ENDPROC
*
PROCEDURE P00_2700c
 DO CASE
      CASE ptPo$"12"
           STORE vcO0-20 TO icL1
           STORE icL1+159.6 TO ucL1
      CASE ptPo="3"
           STORE vcO0-34 TO icL1
           STORE icL1+159.6 TO ucL1
      CASE ptPo$"456"
           STORE vcO0-20 TO icL1
           STORE icL1+120.6 TO ucL1
      CASE ptPo="7"
           STORE vcO0-20 TO icL1
           STORE icL1+155.2 TO ucL1
      CASE ptPo="8"
           STORE vcO0-58 TO icL1
           STORE icL1+210 TO ucL1
      CASE ptPo="9"
           STORE vcO0-20 TO icL1
           STORE icL1+129.8 TO ucL1
 ENDCASE
 DO prEsiona WITH "4", "R_CONS13", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFs-1.6, icL1, ffFs+4, ucL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifFs-1.7, icL1-0.6 TO ifFs-0.3, ucL1+0.3 PATTERN 1
 @ ffFs+1.1, icL1-0.6 TO ffFs+2.7, ucL1+0.3 PATTERN 1
 @ ifFs-1.7, icL1+6.0 TO ifFs-0.3, icL1+6.0
 @ ifFs-1.7, ucL1-5 TO ffFs+2.7, ucL1-5
 DO liN_2700c WITH ifFs-0.3, ffFs+1.1
 @iFFS-1.5,iCL1+0.3 Say "Com" Font "&mLetAri",9 Style "BT"
 DO CASE
      CASE ptPo$"12"
           DO p01_2700c
      CASE ptPo="3"
           DO p03_2700c
      CASE ptPo$"456"
           DO p04_2700c
      CASE ptPo="7"
           DO p07_2700c
      CASE ptPo="8"
           DO p08_2700c
      CASE ptPo="9"
           DO p09_2700c
 ENDCASE
 IF ptPo$"13"
      @fFFS+2.9,iCL1+00.8 Say "Stock:" Font "&mLetAri",9 Style "BT"
      @fFFS+2.9,iCL1+09.0 Say vSTO     Font "&mLetAri",9 Style "BT" Size 1,16.4 Pict "9,999,999.9999"
      @fFFS+2.9,iCL1+36.0 Say "Largo:" Font "&mLetAri",9 Style "BT"
      @fFFS+2.9,iCL1+56.0 Say "Ancho:" Font "&mLetAri",9 Style "BT"
 ENDIF
 IF ptPo$"13" .AND. (ppRg="1200" .OR. ppRg="1300")
      DO coLsc7
      DO cuAdro WITH ffFs+4.8, icL1-0.4, ffFs+7.8, ucL1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF psWw>0
           @fFFS+6.5,iCL1+124.8 Say "Stock:" Font "&mLetRom",12 Style "BQ"
           IF psWw>1
                DO prEsiona WITH "1", "CONSU1", ffFs+4.9, ucL1-4
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      ELSE
           @fFFS+5.5,iCL1+46.8 Say "No hay productos con Stock" Font "&mLetRom",14 Style "BQ"
      ENDIF
 ENDIF
 DO CASE
      CASE ptPo="1"
           @iFFS-1.5,iCL1+76.5 Say "Total mt2"  Font "&mLetAri",9 Style "BT"
      CASE ptPo="2"
           @iFFS-1.5,iCL1+79.4 Say "Area"       Font "&mLetAri",9 Style "BT"
      CASE ptPo="3"
           @iFFS-1.5,iCL1+61.4 Say "Total Pie2" Font "&mLetAri",9 Style "BT"
      CASE ptPo$"46"
           @iFFS-1.5,iCL1+38.5 Say "Total mts"  Font "&mLetAri",9 Style "BT"
      CASE ptPo="5"
           @iFFS-1.5,iCL1+38.5 Say "Perímetro"  Font "&mLetAri",9 Style "BT"
      CASE ptPo="7"
           @iFFS-1.5,iCL1+75.4 Say "Area"       Font "&mLetAri",9 Style "BT"
 ENDCASE
ENDPROC
*
PROCEDURE P01_2700c
 @ ifFs-1.7, icL1+021.3 TO ifFs-0.3, icL1+021.3
 @ ifFs-1.7, icL1+036.4 TO ifFs-0.3, icL1+036.4
 @ ifFs-1.7, icL1+055.5 TO ifFs-0.3, icL1+055.5
 @ ifFs-1.7, icL1+060.0 TO ffFs-0.3, icL1+060.0
 @ ifFs-1.7, icL1+068.8 TO ffFs+2.7, icL1+068.8
 @ ifFs-1.7, icL1+097.7 TO ffFs+2.7, icL1+097.7
 @ ifFs-1.7, icL1+126.7 TO ffFs+2.7, icL1+126.7
 @ ffFs+1.1, icL1+053.7 TO ffFs+2.7, icL1+053.7
 @iFFS-1.5,iCL1+010.0 Say "Largo"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+025.2 Say "Ancho"          Font "&mLetAri",9 Style "BT"
 IF ptPo="2"
      @iFFS-1.5,iCL1+40.4 Say "Opciones"     Font "&mLetAri",9 Style "BT"
      @iFFS-1.5,iCL1+56.9 Say "M"            Font "&mLetAri",9 Style "BT"
 ENDIF
 @iFFS-1.5,iCL1+061.5 Say "Cant"           Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+131.8 Say "Observaciones"  Font "&mLetAri",9 Style "BT"
 IF ppRg="1200" .OR. ppRg="1300"
      @iFFS-1.5,iCL1+106.5 Say "Total "+vSIG Font "&mLetAri",9 Style "BT"
 ENDIF
ENDPROC
*
PROCEDURE P03_2700c
 @ ifFs-1.7, icL1+025.0 TO ifFs-0.3, icL1+025.0
 @ ifFs-1.7, icL1+044.0 TO ifFs-0.3, icL1+044.0
 @ ifFs-1.7, icL1+052.8 TO ffFs+2.7, icL1+052.8
 @ ifFs-1.7, icL1+081.8 TO ffFs+2.7, icL1+081.8
 @ ifFs-1.7, icL1+110.8 TO ffFs+2.7, icL1+110.8
 @ ffFs+1.1, icL1+037.6 TO ffFs+2.7, icL1+037.6
 @iFFS-1.5,iCL1+012.0 Say "Largo"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+031.2 Say "Ancho"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+045.5 Say "Cant"           Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+124.8 Say "Observaciones"  Font "&mLetAri",9 Style "BT"
 IF ppRg="1200" .OR. ppRg="1300"
      @iFFS-1.5,iCL1+91.4 Say "Total "+vSIG Font "&mLetAri",9 Style "BT"
 ENDIF
ENDPROC
*
PROCEDURE P04_2700c
 @ ifFs-1.7, icL1+021.3 TO ifFs-0.3, icL1+021.3
 @ ifFs-1.7, icL1+029.8 TO ffFs+2.7, icL1+029.8
 @ ifFs-1.7, icL1+058.8 TO ffFs+2.7, icL1+058.8
 @ ifFs-1.7, icL1+087.7 TO ffFs+2.7, icL1+087.7
 @ ffFs+1.1, icL1+016.0 TO ffFs+2.7, icL1+016.0
 IF ptPo$"46"
      @iFFS-1.5,iCL1+09 Say "Medida"         Font "&mLetAri",9 Style "BT"
 ELSE
      @iFFS-1.5,iCL1+10 Say "Diámetro"       Font "&mLetAri",9 Style "BT"
 ENDIF
 @iFFS-1.5,iCL1+023.2 Say "Cant"           Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+092.8 Say "Observaciones"  Font "&mLetAri",9 Style "BT"
 IF ppRg="1200" .OR. ppRg="1300"
      @iFFS-1.5,iCL1+69.4 Say "Total "+vSIG Font "&mLetAri",9 Style "BT"
 ENDIF
ENDPROC
*
PROCEDURE P07_2700c
 @ ifFs-1.7, icL1+021.3 TO ifFs-0.3, icL1+021.3
 @ ifFs-1.7, icL1+036.4 TO ifFs-0.3, icL1+036.4
 @ ifFs-1.7, icL1+055.5 TO ifFs-0.3, icL1+055.5
 @ ifFs-1.7, icL1+064.4 TO ffFs+2.7, icL1+064.4
 @ ifFs-1.7, icL1+093.4 TO ffFs+2.7, icL1+093.4
 @ ifFs-1.7, icL1+122.4 TO ffFs+2.7, icL1+122.4
 @ ffFs+1.1, icL1+053.7 TO ffFs+2.7, icL1+053.7
 @iFFS-1.5,iCL1+010.0 Say "Largo"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+025.2 Say "Ancho"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+057.4 Say "Cant"           Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+127.8 Say "Observaciones"  Font "&mLetAri",9 Style "BT"
 IF ppRg="1200" .OR. ppRg="1300"
      @iFFS-1.5,iCL1+103.5 Say "Total "+vSIG Font "&mLetAri",9 Style "BT"
 ENDIF
ENDPROC
*
PROCEDURE P08_2700c
 @ ifFs-1.7, icL1+021.3 TO ifFs-0.3, icL1+021.3
 @ ifFs-1.7, icL1+036.4 TO ifFs-0.3, icL1+036.4
 @ ifFs-1.3, icL1+040.8 TO ifFs-0.3, icL1+040.8
 @ ifFs-1.3, icL1+049.5 TO ifFs-0.3, icL1+049.5
 @ ifFs-1.3, icL1+059.6 TO ifFs-0.3, icL1+059.6
 @ ifFs-1.7, icL1+069.5 TO ifFs-0.3, icL1+069.5
 @ ifFs-1.3, icL1+073.9 TO ifFs-0.3, icL1+073.9
 @ ifFs-1.3, icL1+082.7 TO ifFs-0.3, icL1+082.7
 @ ifFs-1.3, icL1+092.7 TO ifFs-0.3, icL1+092.7
 @ ifFs-1.7, icL1+102.7 TO ifFs-0.3, icL1+102.7
 @ ifFs-1.3, icL1+107.1 TO ifFs-0.3, icL1+107.1
 @ ifFs-1.3, icL1+116.0 TO ifFs-0.3, icL1+116.0
 @ ifFs-1.3, icL1+126.0 TO ifFs-0.3, icL1+126.0
 @ ifFs-1.3, icL1+140.4 TO ifFs-0.3, icL1+140.4
 @ ifFs-1.7, icL1+169.0 TO ifFs-0.3, icL1+169.0
 @iFFS-1.5,iCL1+010.0 Say "Largo"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+025.2 Say "Ancho"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+041.6 Say "Espes"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+051.4 Say "X mts"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+061.4 Say "Y mts"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+074.8 Say "Espes"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+084.6 Say "X mts"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+094.6 Say "Y mts"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+108.0 Say "Espes"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+117.8 Say "X mts"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+127.8 Say "Y mts"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+141.1 Say "Espes"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+150.9 Say "X mts"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+160.8 Say "Y mts"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+170.6 Say "Cant"           Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+182.8 Say "Observaciones"  Font "&mLetAri",9 Style "BT"
 IF ppRg="1200" .OR. ppRg="1300"
      @ ifFs-1.7, icL1+136.0 TO ffFs+2.7, icL1+136.0
      @ ifFs-1.3, icL1+149.1 TO ffFs+2.7, icL1+149.1
      @ ifFs-1.3, icL1+159.0 TO ffFs+2.7, icL1+159.0
      @ ifFs-1.7, icL1+177.2 TO ffFs+2.7, icL1+177.2
      @fFFS+1.2,iCL1+136.6 Say "Cantidad"    Font "&mLetRom",12 Style "BQ"
      @fFFS+1.2,iCL1+163.0 Say "Total "+vSIG Font "&mLetRom",12 Style "BQ"
 ELSE
      @ ifFs-1.3, icL1+159.0 TO ffFs+2.7, icL1+159.0
      @ ifFs-1.7, icL1+177.2 TO ffFs+2.7, icL1+177.2
      @fFFS+1.2,iCL1+163.0 Say "Cantidad"    Font "&mLetRom",12 Style "BQ"
 ENDIF
ENDPROC
*
PROCEDURE P09_2700c
 @ ifFs-1.7, icL1+021.3 TO ifFs-0.3, icL1+021.3
 @ ifFs-1.7, icL1+036.4 TO ifFs-0.3, icL1+036.4
 @ ifFs-1.7, icL1+049.5 TO ifFs-0.3, icL1+049.5
 @ ifFs-1.7, icL1+062.4 TO ifFs-0.3, icL1+062.4
 @ ifFs-1.7, icL1+075.5 TO ifFs-0.3, icL1+075.5
 @ ifFs-1.7, icL1+088.7 TO ifFs-0.3, icL1+088.7
 @ ifFs-1.7, icL1+097.0 TO ffFs+2.7, icL1+097.0
 @iFFS-1.5,iCL1+010.0 Say "Largo"         Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+024.2 Say "Ancho"         Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+037.3 Say "Grado-Ld1"     Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+050.4 Say "Grado-Ld2"     Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+063.3 Say "Grado-Ld3"     Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+076.4 Say "Grado-Ld4"     Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+090.5 Say "Cant"          Font "&mLetAri",9 Style "BT"
 @iFFS-1.5,iCL1+101.8 Say "Observaciones" Font "&mLetAri",9 Style "BT"
 IF ppRg="1200" .OR. ppRg="1300"
      @ ffFs+1.1, icL1+56.0 TO ffFs+2.7, icL1+56
      @ ffFs+1.1, icL1+69.0 TO ffFs+2.7, icL1+69
      @ ffFs+1.1, icL1+80.0 TO ffFs+2.7, icL1+80
      @fFFS+1.2,iCL1+56.6 Say "Cantidad"    Font "&mLetRom",12 Style "BQ"
      @fFFS+1.2,iCL1+83.0 Say "Total "+vSIG Font "&mLetRom",12 Style "BQ"
 ELSE
      @ ffFs+1.1, icL1+80.0 TO ffFs+2.7, icL1+80
      @fFFS+1.2,iCL1+83.0 Say "Cantidad"    Font "&mLetRom",12 Style "BQ"
 ENDIF
ENDPROC
*
PROCEDURE Res_2700c
 STORE vrCc TO crCc
 STORE vfFs TO cfFs
 DO CASE
      CASE ppRg="2400"
           DO reS_2400b
      CASE ppRg="2600"
           DO reS_2600b
      CASE ppRg="2700"
           DO reS_2700b
      CASE ppRg="2800"
           DO reS_2800b
      CASE ppRg="1200"
           DO reS_1200b
      CASE ppRg="1300"
           DO reS_1300b
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_3
 IF frCc>0 .AND. irCc<=frCc
      GOTO irCc
      DO paN_2700c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE crCc TO vrCc
 STORE cfFs TO vfFs
 IF frCc>0 .AND. vrCc<=frCc
      GOTO vrCc
 ELSE
      STORE 1 TO viMm
      DO liM_2700c
 ENDIF
 DO diS_2700c WITH "R"
ENDPROC
*
PROCEDURE Tot_2700c
 DO coLsc3
 SELECT teMporal_3
 STORE 0 TO vpR1
 SUM ftM3can TO ccAn FOR ftM3opc="N"
 SUM ftM3pie*ftM3can TO vpIe ALL
 DO CASE
      CASE ptPo$"12"
           @fFFS+1.3,iCL1+54.4 Say cCAN Font "&mLetAri",9 Style "BQ" Size 1,11.6 Pict "9,999,999"
           @fFFS+1.3,iCL1+69.4 Say vPIE Font "&mLetAri",9 Style "BQ" Size 1,23.4 Pict "999,999,999,999.9999"
           IF ppRg="1200" .OR. ppRg="1300"
                STORE ROUND(vpRe*vpIe, 4) TO vpR1
                @fFFS+1.3,iCL1+98.4 Say vPR1 Font "&mLetAri",9 Style "BQ" Size 1,23.3 Pict "999,999,999,999.9999"
           ENDIF
      CASE ptPo="3"
           @fFFS+1.3,iCL1+38.2 Say cCAN Font "&mLetAri",9 Style "BQ" Size 1,11.6 Pict "9,999,999"
           @fFFS+1.3,iCL1+53.5 Say vPIE Font "&mLetAri",9 Style "BQ" Size 1,23.4 Pict "999,999,999,999.9999"
           IF ppRg="1200" .OR. ppRg="1300"
                STORE ROUND(vpRe*vpIe, 4) TO vpR1
                @fFFS+1.3,iCL1+82.4 Say vPR1 Font "&mLetAri",9 Style "BQ" Size 1,23.3 Pict "999,999,999,999.9999"
           ENDIF
      CASE ptPo$"456"
           @fFFS+1.3,iCL1+16.5 Say cCAN Font "&mLetAri",9 Style "BQ" Size 1,10.6 Pict "9,999,999"
           @fFFS+1.3,iCL1+30.4 Say vPIE Font "&mLetAri",9 Style "BQ" Size 1,23.4 Pict "999,999,999,999.9999"
           IF ppRg="1200" .OR. ppRg="1300"
                STORE ROUND(vpRe*vpIe, 4) TO vpR1
                @fFFS+1.3,iCL1+59.4 Say vPR1 Font "&mLetAri",9 Style "BQ" Size 1,23.4 Pict "999,999,999,999.9999"
           ENDIF
      CASE ptPo="7"
      CASE ptPo="8"
           IF ppRg="1200" .OR. ppRg="1300"
                STORE ROUND(vpRe*vpIe, 4) TO vpR1
                @fFFS+1.2,iCL1+149.8 Say cCAN Font "&mLetRom",11 Style "BQ" Size 1,7.4 Pict "9,999"
                @fFFS+1.2,iCL1+177.7 Say vPR1 Font "&mLetRom",11 Style "BQ" Size 1,22.2 Pict "999,999,999,999.9999"
           ELSE
                @fFFS+1.2,iCL1+177.7 Say cCAN Font "&mLetRom",11 Style "BQ" Size 1,7.4 Pict "9,999"
           ENDIF
      CASE ptPo="9"
           IF ppRg="1200" .OR. ppRg="1300"
                STORE ROUND(vpRe*vpIe, 4) TO vpR1
                @fFFS+1.2,iCL1+069.8 Say cCAN Font "&mLetRom",11 Style "BQ" Size 1,8.1 Pict "9,999"
                @fFFS+1.2,iCL1+097.7 Say vPR1 Font "&mLetRom",11 Style "BQ" Size 1,22.2 Pict "999,999,999,999.9999"
           ELSE
                @fFFS+1.2,iCL1+097.7 Say cCAN Font "&mLetRom",11 Style "BQ" Size 1,7.4 Pict "9,999"
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Mv1_2700c
 PARAMETER ptIp, pcOp, pcOd
 IF pcOp="N"
      SELECT teMporal_3
      ZAP
 ENDIF
 SELECT teMporal_4
 GOTO TOP
 SEEK ALLTRIM(pcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(pcOd)+"*"=ALLTRIM(ftM4cod)+"*"
      STORE ftM4opc TO voPc
      STORE ftM4un1 TO vuN1
      STORE ftM4un2 TO vuN2
      STORE ftM4mla TO vmLa
      STORE ftM4man TO vmAn
      STORE ftM4p11 TO vp11
      STORE ftM4p12 TO vp12
      STORE ftM4p21 TO vp21
      STORE ftM4p22 TO vp22
      STORE ftM4can TO vcTd
      STORE ftM4pie TO vtPi
      STORE ftM4ca1 TO vcA1
      STORE ftM4ca2 TO vcA2
      STORE ftM4ca3 TO vcA3
      STORE ftM4ca4 TO vcA4
      STORE ftM4mm1 TO vmM1
      STORE ftM4mm2 TO vmM2
      STORE ftM4mm3 TO vmM3
      STORE ftM4mm4 TO vmM4
      STORE ftM4cx1 TO vcX1
      STORE ftM4cx2 TO vcX2
      STORE ftM4cx3 TO vcX3
      STORE ftM4cx4 TO vcX4
      STORE ftM4cy1 TO vcY1
      STORE ftM4cy2 TO vcY2
      STORE ftM4cy3 TO vcY3
      STORE ftM4cy4 TO vcY4
      STORE ftM4cm1 TO vcMm
      STORE ftM4cm2 TO vcMp
      STORE ftM4por TO vpOr
      IF pcOp="S"
           STORE pcOd TO vcMp
      ENDIF
      SELECT teMporal_3
      APPEND BLANK
      IF pcOp="S"
           STORE 1 TO vcA1, vcA2, vcA3, vcA4
           DO CASE
                CASE xeSp=6 .OR. xeSp=5.5
                     STORE 1 TO vpOr
                CASE xeSp=8 .OR. xeSp=10
                     STORE 2 TO vpOr
                CASE xeSp=12 .OR. xeSp=15
                     STORE 3 TO vpOr
                CASE xeSp=19
                     STORE 4 TO vpOr
                OTHERWISE
                     STORE 0 TO vpOr
           ENDCASE
           IF voPc="N"
                DO caL_2700c
           ENDIF
      ENDIF
      REPLACE ftM3opc WITH voPc
      REPLACE ftM3un1 WITH vuN1
      REPLACE ftM3un2 WITH vuN2
      REPLACE ftM3mla WITH vmLa
      REPLACE ftM3man WITH vmAn
      REPLACE ftM3p11 WITH vp11
      REPLACE ftM3p12 WITH vp12
      REPLACE ftM3p21 WITH vp21
      REPLACE ftM3p22 WITH vp22
      REPLACE ftM3can WITH vcTd
      REPLACE ftM3pie WITH vtPi
      REPLACE ftM3ca1 WITH vcA1
      REPLACE ftM3ca2 WITH vcA2
      REPLACE ftM3ca3 WITH vcA3
      REPLACE ftM3ca4 WITH vcA4
      REPLACE ftM3mm1 WITH vmM1
      REPLACE ftM3mm2 WITH vmM2
      REPLACE ftM3mm3 WITH vmM3
      REPLACE ftM3mm4 WITH vmM4
      REPLACE ftM3cx1 WITH vcX1
      REPLACE ftM3cx2 WITH vcX2
      REPLACE ftM3cx3 WITH vcX3
      REPLACE ftM3cx4 WITH vcX4
      REPLACE ftM3cy1 WITH vcY1
      REPLACE ftM3cy2 WITH vcY2
      REPLACE ftM3cy3 WITH vcY3
      REPLACE ftM3cy4 WITH vcY4
      REPLACE ftM3cm1 WITH vcMm
      REPLACE ftM3cm2 WITH vcMp
      REPLACE ftM3por WITH vpOr
      FLUSH
      STORE RECNO() TO frCc
      SELECT teMporal_4
      SKIP
 ENDDO
 SELECT teMporal_3
ENDPROC
*
PROCEDURE Mv2_2700c
 SELECT teMporal_4
 DELETE FOR ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*"
 PACK
 SELECT teMporal_3
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM3opc TO voPc
      STORE ftM3un1 TO vuN1
      STORE ftM3un2 TO vuN2
      STORE ftM3mla TO vmLa
      STORE ftM3man TO vmAn
      STORE ftM3p11 TO vp11
      STORE ftM3p12 TO vp12
      STORE ftM3p21 TO vp21
      STORE ftM3p22 TO vp22
      STORE ftM3can TO vcTd
      STORE ftM3pie TO vtPi
      STORE ftM3ca1 TO vcA1
      STORE ftM3ca2 TO vcA2
      STORE ftM3ca3 TO vcA3
      STORE ftM3ca4 TO vcA4
      STORE ftM3mm1 TO vmM1
      STORE ftM3mm2 TO vmM2
      STORE ftM3mm3 TO vmM3
      STORE ftM3mm4 TO vmM4
      STORE ftM3cx1 TO vcX1
      STORE ftM3cx2 TO vcX2
      STORE ftM3cx3 TO vcX3
      STORE ftM3cx4 TO vcX4
      STORE ftM3cy1 TO vcY1
      STORE ftM3cy2 TO vcY2
      STORE ftM3cy3 TO vcY3
      STORE ftM3cy4 TO vcY4
      STORE ftM3cm1 TO vcMm
      STORE ftM3cm2 TO vcMp
      STORE ftM3por TO vpOr
      STORE RECNO() TO vrCc
      SELECT teMporal_4
      APPEND BLANK
      REPLACE ftM4cod WITH vcOd
      REPLACE ftM4rec WITH vrCc
      REPLACE ftM4opc WITH voPc
      REPLACE ftM4un1 WITH vuN1
      REPLACE ftM4un2 WITH vuN2
      REPLACE ftM4mla WITH vmLa
      REPLACE ftM4man WITH vmAn
      REPLACE ftM4p11 WITH vp11
      REPLACE ftM4p12 WITH vp12
      REPLACE ftM4p21 WITH vp21
      REPLACE ftM4p22 WITH vp22
      REPLACE ftM4can WITH vcTd
      REPLACE ftM4pie WITH vtPi
      REPLACE ftM4ca1 WITH vcA1
      REPLACE ftM4ca2 WITH vcA2
      REPLACE ftM4ca3 WITH vcA3
      REPLACE ftM4ca4 WITH vcA4
      REPLACE ftM4mm1 WITH vmM1
      REPLACE ftM4mm2 WITH vmM2
      REPLACE ftM4mm3 WITH vmM3
      REPLACE ftM4mm4 WITH vmM4
      REPLACE ftM4cx1 WITH vcX1
      REPLACE ftM4cx2 WITH vcX2
      REPLACE ftM4cx3 WITH vcX3
      REPLACE ftM4cx4 WITH vcX4
      REPLACE ftM4cy1 WITH vcY1
      REPLACE ftM4cy2 WITH vcY2
      REPLACE ftM4cy3 WITH vcY3
      REPLACE ftM4cy4 WITH vcY4
      REPLACE ftM4cm1 WITH vcMm
      REPLACE ftM4cm2 WITH vcMp
      REPLACE ftM4por WITH vpOr
      FLUSH
      SELECT teMporal_3
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Clp_2700c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+44.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=ffFs+4.793 .AND. mfIl<=ffFs+6.293 .AND. psWw>1 .AND.  ;
           mcCc>=ucL1-4 .AND. mcCc<=ucL1+0.4 .AND. ptPo$"13" .AND. (ppRg= ;
           "1200" .OR. ppRg="1300")
           SELECT teMporal_7
           SKIP
           IF EOF()
                GOTO TOP
           ENDIF
           SELECT teMporal_3
           DO diS_2700c WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo$"27" .AND. (ppRg= ;
           "1200" .OR. ppRg="1300") .AND. ((mcCc>=icL1+37.2 .AND. mcCc<= ;
           icL1+40.5) .OR. (mcCc>=icL1+42 .AND. mcCc<=icL1+45.3) .OR.  ;
           (mcCc>=icL1+46.8 .AND. mcCc<=icL1+50.1) .OR. (mcCc>=icL1+51.6  ;
           .AND. mcCc<=icL1+54.9))
           DO CASE
                CASE mcCc>=icL1+37.2 .AND. mcCc<=icL1+40.5 .AND. vcA1=1
                     STORE 00 TO vcA1
                CASE mcCc>=icL1+37.2 .AND. mcCc<=icL1+40.5 .AND. vcA1=0
                     STORE 01 TO vcA1
                CASE mcCc>=icL1+42 .AND. mcCc<=icL1+45.3 .AND. vcA3=1
                     STORE 00 TO vcA3
                CASE mcCc>=icL1+42 .AND. mcCc<=icL1+45.3 .AND. vcA3=0
                     STORE 01 TO vcA3
                CASE mcCc>=icL1+46.8 .AND. mcCc<=icL1+50.1 .AND. vcA4=1
                     STORE 00 TO vcA4
                CASE mcCc>=icL1+46.8 .AND. mcCc<=icL1+50.1 .AND. vcA4=0
                     STORE 01 TO vcA4
                CASE mcCc>=icL1+51.6 .AND. mcCc<=icL1+54.9 .AND. vcA2=1
                     STORE 00 TO vcA2
                CASE mcCc>=icL1+51.6 .AND. mcCc<=icL1+54.9 .AND. vcA2=0
                     STORE 01 TO vcA2
           ENDCASE
           DO diS_2700c WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. (ppRg= ;
           "1200" .OR. ppRg="1300") .AND. ((mcCc>=icL1+036.4 .AND. mcCc<= ;
           icL1+040.8) .OR. (mcCc>=icL1+069.6 .AND. mcCc<=icL1+074.0)  ;
           .OR. (mcCc>=icL1+102.8 .AND. mcCc<=icL1+107.2) .OR. (mcCc>= ;
           icL1+136.0 .AND. mcCc<=icL1+140.4))
           DO CASE
                CASE mcCc>=icL1+036.4 .AND. mcCc<=icL1+040.8 .AND. vcA1=1
                     STORE 00 TO vcA1, vmM1, vcX1, vcY1
                CASE mcCc>=icL1+036.4 .AND. mcCc<=icL1+040.8 .AND. vcA1=0
                     STORE 01 TO vcA1
                CASE mcCc>=icL1+069.6 .AND. mcCc<=icL1+074.0 .AND. vcA2=1
                     STORE 00 TO vcA2, vmM2, vcX2, vcY2
                CASE mcCc>=icL1+069.6 .AND. mcCc<=icL1+074.0 .AND. vcA2=0
                     STORE 01 TO vcA2
                CASE mcCc>=icL1+102.8 .AND. mcCc<=icL1+107.2 .AND. vcA3=1
                     STORE 00 TO vcA3, vmM3, vcX3, vcY3
                CASE mcCc>=icL1+102.8 .AND. mcCc<=icL1+107.2 .AND. vcA3=0
                     STORE 01 TO vcA3
                CASE mcCc>=icL1+136.0 .AND. mcCc<=icL1+140.4 .AND. vcA4=1
                     STORE 00 TO vcA4, vmM4, vcX4, vcY4
                CASE mcCc>=icL1+136.0 .AND. mcCc<=icL1+140.4 .AND. vcA4=0
                     STORE 01 TO vcA4
           ENDCASE
           DO diS_2700c WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="9" .AND. (ppRg= ;
           "1200" .OR. ppRg="1300") .AND. ((mcCc>=icL1+36.4 .AND. mcCc<= ;
           icL1+40.8) .OR. (mcCc>=icL1+49.6 .AND. mcCc<=icL1+54.0) .OR.  ;
           (mcCc>=icL1+62.4 .AND. mcCc<=icL1+66.8) .OR. (mcCc>=icL1+75.6  ;
           .AND. mcCc<=icL1+80.0))
           DO CASE
                CASE mcCc>=icL1+36.4 .AND. mcCc<=icL1+40.8 .AND. vcA1=1
                     STORE 00 TO vcA1, vmM1
                CASE mcCc>=icL1+36.4 .AND. mcCc<=icL1+40.8 .AND. vcA1=0
                     STORE 01 TO vcA1
                CASE mcCc>=icL1+49.6 .AND. mcCc<=icL1+54.0 .AND. vcA2=1
                     STORE 00 TO vcA2, vmM2
                CASE mcCc>=icL1+49.6 .AND. mcCc<=icL1+54.0 .AND. vcA2=0
                     STORE 01 TO vcA2
                CASE mcCc>=icL1+62.4 .AND. mcCc<=icL1+66.8 .AND. vcA3=1
                     STORE 00 TO vcA3, vmM3
                CASE mcCc>=icL1+62.4 .AND. mcCc<=icL1+66.8 .AND. vcA3=0
                     STORE 01 TO vcA3
                CASE mcCc>=icL1+75.6 .AND. mcCc<=icL1+80.0 .AND. vcA4=1
                     STORE 00 TO vcA4, vmM4
                CASE mcCc>=icL1+75.6 .AND. mcCc<=icL1+80.0 .AND. vcA4=0
                     STORE 01 TO vcA4
           ENDCASE
           DO diS_2700c WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. mcCc>=ucL1-4.8 .AND. mcCc<= ;
           ucL1+0.2
           STORE 01 TO viTe
           STORE k_Alt_del TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. voPc="N" .AND. mcCc>=icL1+ ;
           6 .AND. mcCc<=icL1+21.2 .AND. ptPo$"12" .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. voPc="N" .AND. mcCc>=icL1+ ;
           21.2 .AND. mcCc<=icL1+36.4 .AND. ptPo$"12" .AND. viTe<>2
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 02 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. voPc="N" .AND. mcCc>=icL1+ ;
           60 .AND. mcCc<=icL1+68.8 .AND. ptPo$"12" .AND. viTe<>3
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vmAn=0
                     STORE "Ancho no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 03 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "MM" .AND. mcCc>=icL1+06 .AND. mcCc<=icL1+25 .AND. viTe<>1  ;
           .AND. voPc="N"
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "MM" .AND. mcCc>=icL1+25 .AND. mcCc<=icL1+44 .AND. viTe<>2  ;
           .AND. voPc="N"
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "MM" .AND. mcCc>=icL1+44 .AND. mcCc<=icL1+52.8 .AND. viTe<>3  ;
           .AND. voPc="N"
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vmAn=0
                     STORE "Ancho no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 3 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "MP" .AND. mcCc>=icL1+06 .AND. mcCc<=icL1+25 .AND. viTe<>1  ;
           .AND. voPc="N"
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "MP" .AND. mcCc>=icL1+25 .AND. mcCc<=icL1+30.8 .AND. viTe<>2  ;
           .AND. voPc="N"
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "MP" .AND. mcCc>=icL1+30.8 .AND. mcCc<=icL1+44 .AND. viTe<>3  ;
           .AND. voPc="N"
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vp21=0
                     STORE "Entero del Ancho no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 3 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "MP" .AND. mcCc>=icL1+44 .AND. mcCc<=icL1+52.8 .AND. viTe<>4  ;
           .AND. voPc="N"
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vp21=0
                     STORE "Entero del Ancho no puede ser 0..." TO mmSj
                CASE ALLTRIM(vp22)="/"
                     STORE "Quebrado del Ancho no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 4 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PM" .AND. mcCc>=icL1+6 .AND. mcCc<=icL1+11.6 .AND. viTe<>1  ;
           .AND. voPc="N"
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PM" .AND. mcCc>=icL1+11.6 .AND. mcCc<=icL1+25 .AND. viTe<>2  ;
           .AND. voPc="N"
           DO CASE
                CASE vp11=0
                     STORE "Entero del Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PM" .AND. mcCc>=icL1+25 .AND. mcCc<=icL1+44 .AND. viTe<>3  ;
           .AND. voPc="N"
           DO CASE
                CASE vp11=0
                     STORE "Entero del Largo no puede ser 0..." TO mmSj
                CASE ALLTRIM(vp12)="/"
                     STORE "Quebrado del Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 3 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PM" .AND. mcCc>=icL1+44 .AND. mcCc<=icL1+52.8 .AND. viTe<>4  ;
           .AND. voPc="N"
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vp11=0
                     STORE "Entero del Largo no puede ser 0..." TO mmSj
                CASE ALLTRIM(vp12)="/"
                     STORE "Quebrado del Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 4 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PP" .AND. mcCc>=icL1+6 .AND. mcCc<=icL1+11.6 .AND. viTe<>1  ;
           .AND. voPc="N"
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PP" .AND. mcCc>=icL1+11.6 .AND. mcCc<=icL1+25 .AND. viTe<>2  ;
           .AND. voPc="N"
           DO CASE
                CASE vp11=0
                     STORE "Entero del Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PP" .AND. mcCc>=icL1+25 .AND. mcCc<=icL1+30.6 .AND. viTe<>3  ;
           .AND. voPc="N"
           DO CASE
                CASE vp11=0
                     STORE "Entero del Largo no puede ser 0..." TO mmSj
                CASE ALLTRIM(vp12)="/"
                     STORE "Quebrado del Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 3 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PP" .AND. mcCc>=icL1+30.6 .AND. mcCc<=icL1+44 .AND. viTe<>4  ;
           .AND. voPc="N"
           DO CASE
                CASE vp11=0
                     STORE "Entero del Largo no puede ser 0..." TO mmSj
                CASE ALLTRIM(vp12)="/"
                     STORE "Quebrado del Largo no puede ser 0..." TO mmSj
                CASE vp21=0
                     STORE "Enteros del Ancho no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 4 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="3" .AND. vuN1+vuN2= ;
           "PM" .AND. mcCc>=icL1+44 .AND. mcCc<=icL1+52.8 .AND. viTe<>5  ;
           .AND. voPc="N"
           DO CASE
                CASE vp11=0
                     STORE "Entero del Largo no puede ser 0..." TO mmSj
                CASE ALLTRIM(vp12)="/"
                     STORE "Quebrado del Largo no puede ser 0..." TO mmSj
                CASE vp21=0
                     STORE "Enteros del Ancho no puede ser 0..." TO mmSj
                CASE ALLTRIM(vp22)="/"
                     STORE "Quebrados del Ancho no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 5 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo$"456" .AND. mcCc>= ;
           icL1+6 .AND. mcCc<=icL1+21.4 .AND. viTe<>1 .AND. voPc="N"
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo$"456" .AND. mcCc>= ;
           icL1+21.4 .AND. mcCc<=icL1+29.8 .AND. viTe<>2 .AND. voPc="N"
           DO CASE
                CASE vmLa=0
                     STORE "Cantidad no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. voPc="N" .AND. mcCc>=icL1+ ;
           6 .AND. mcCc<=icL1+21.2 .AND. ptPo="7" .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. voPc="N" .AND. mcCc>=icL1+ ;
           21.2 .AND. mcCc<=icL1+36.4 .AND. ptPo="7" .AND. viTe<>2
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 02 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. voPc="N" .AND. mcCc>=icL1+ ;
           55.6 .AND. mcCc<=icL1+64.4 .AND. ptPo="7" .AND. viTe<>3
           DO CASE
                CASE vmLa=0
                     STORE "Largo no puede ser 0..." TO mmSj
                CASE vmAn=0
                     STORE "Ancho no puede ser 0..." TO mmSj
                OTHERWISE
                     STORE 03 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           40.8 .AND. mcCc<=icL1+49.6 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           49.6 .AND. mcCc<=icL1+59.6 .AND. viTe<>2
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           59.6 .AND. mcCc<=icL1+69.6 .AND. viTe<>3
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 3 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           74 .AND. mcCc<=icL1+82.8 .AND. viTe<>4
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 4 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           82.8 .AND. mcCc<=icL1+92.8 .AND. viTe<>5
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 5 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           92.8 .AND. mcCc<=icL1+102.8 .AND. viTe<>6
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcX2<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcX2=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 6 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           107.2 .AND. mcCc<=icL1+116 .AND. viTe<>7
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcX2<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcX2=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcY2<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcY2=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 7 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           116 .AND. mcCc<=icL1+126 .AND. viTe<>8
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcX2<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcX2=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcY2<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcY2=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vmM3<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vmM3=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 8 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           126 .AND. mcCc<=icL1+136 .AND. viTe<>9
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcX2<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcX2=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcY2<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcY2=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vmM3<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vmM3=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vcX3<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vcX3=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 9 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           140.4 .AND. mcCc<=icL1+149.2 .AND. viTe<>10
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcX2<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcX2=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcY2<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcY2=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vmM3<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vmM3=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vcX3<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vcX3=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vcY3<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vcY3=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 10 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           149.2 .AND. mcCc<=icL1+159.2 .AND. viTe<>11
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcX2<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcX2=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcY2<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcY2=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vmM3<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vmM3=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vcX3<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vcX3=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vcY3<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vcY3=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA4=0 .AND. vmM4<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA4<>0 .AND. vmM4=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 11 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="8" .AND. mcCc>=icL1+ ;
           159.2 .AND. mcCc<=icL1+169.2 .AND. viTe<>12
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcX1<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcX1=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA1=0 .AND. vcY1<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vcY1=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcX2<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcX2=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vcY2<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vcY2=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vmM3<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vmM3=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vcX3<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vcX3=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vcY3<>0
                     STORE "Coordenada Y debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vcY3=0
                     STORE "Coordenada Y no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA4=0 .AND. vmM4<>0
                     STORE "Espesor debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA4<>0 .AND. vmM4=0
                     STORE "Espesor no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA4=0 .AND. vcX4<>0
                     STORE "Coordenada X debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA4<>0 .AND. vcX4=0
                     STORE "Coordenada X no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 12 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="9" .AND. mcCc>=icL1+ ;
           40.8 .AND. mcCc<=icL1+49.6 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="9" .AND. mcCc>=icL1+ ;
           54 .AND. mcCc<=icL1+62.4 .AND. viTe<>2
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Grado no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 2 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="9" .AND. mcCc>=icL1+ ;
           66.8 .AND. mcCc<=icL1+75.6 .AND. viTe<>3
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Grado no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Grado no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 3 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. ptPo="9" .AND. mcCc>=icL1+ ;
           80 .AND. mcCc<=icL1+88.8 .AND. viTe<>4
           DO CASE
                CASE vcA1=0 .AND. vmM1<>0
                     STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA1<>0 .AND. vmM1=0
                     STORE "Grado no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA2=0 .AND. vmM2<>0
                     STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA2<>0 .AND. vmM2=0
                     STORE "Grado no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                CASE vcA3=0 .AND. vmM3<>0
                     STORE "Grado debe ser 0 ya que este campo no esta marcado..."  ;
                           TO mmSj
                CASE vcA3<>0 .AND. vmM3=0
                     STORE "Grado no debe ser 0 ya que este campo esta marcado..."  ;
                           TO mmSj
                OTHERWISE
                     STORE 4 TO viTe
           ENDCASE
           STORE 99 TO mkEy
      CASE mfIl>=vfFs .AND. mfIl<=vfFs+1 .AND. mcCc>=icL1 .AND. mcCc<=ucL1+0.2
           STORE 99 TO mkEy
      CASE mfIl>=ifFs .AND. mfIl<=ufFs+1 .AND. mcCc>=icL1 .AND. mcCc<=ucL1+0.2
           IF vcTd<>0 .AND. vtPi<>0
                DO grA_2700c
           ENDIF
           IF viMm=01
                DO blA_2700c
           ELSE
                DO diS_2700c WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           GOTO irCc
           SKIP INT(mfIl-ifFs)
           STORE RECNO() TO vrCc
           DO muE_2700c WITH "C"
           DO diS_2700c WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=ucL1-4.8 .AND. mcCc<=ucL1+0.2
                     STORE 01 TO viTe
                     STORE k_Alt_del TO mkEy
                CASE ptPo$"12" .AND. voPc="N" .AND. mcCc>=icL1+6 .AND.  ;
                     mcCc<=icL1+21.2
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo$"12" .AND. voPc="N" .AND. mcCc>=icL1+21.2 .AND.  ;
                     mcCc<=icL1+36.4
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo$"12" .AND. voPc="N" .AND. mcCc>=icL1+60 .AND.  ;
                     mcCc<=icL1+68.8
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="MM" .AND.  ;
                     mcCc>=icL1+06 .AND. mcCc<=icL1+25
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="MM" .AND.  ;
                     mcCc>=icL1+25 .AND. mcCc<=icL1+44
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="MM" .AND.  ;
                     mcCc>=icL1+44 .AND. mcCc<=icL1+52.8
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="MP" .AND.  ;
                     mcCc>=icL1+06 .AND. mcCc<=icL1+25
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="MP" .AND.  ;
                     mcCc>=icL1+25 .AND. mcCc<=icL1+30.8
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="MP" .AND.  ;
                     mcCc>=icL1+30.8 .AND. mcCc<=icL1+44
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="MP" .AND.  ;
                     mcCc>=icL1+44 .AND. mcCc<=icL1+52.8
                     STORE 04 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PM" .AND.  ;
                     mcCc>=icL1+6 .AND. mcCc<=icL1+11.6
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PM" .AND.  ;
                     mcCc>=icL1+11.6 .AND. mcCc<=icL1+25
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PM" .AND.  ;
                     mcCc>=icL1+25 .AND. mcCc<=icL1+44
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PM" .AND.  ;
                     mcCc>=icL1+44 .AND. mcCc<=icL1+52.8
                     STORE 04 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PP" .AND.  ;
                     mcCc>=icL1+6 .AND. mcCc<=icL1+11.6
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PP" .AND.  ;
                     mcCc>=icL1+11.6 .AND. mcCc<=icL1+25
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PP" .AND.  ;
                     mcCc>=icL1+25 .AND. mcCc<=icL1+30.6
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PP" .AND.  ;
                     mcCc>=icL1+30.6 .AND. mcCc<=icL1+44
                     STORE 04 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="3" .AND. voPc="N" .AND. vuN1+vuN2="PP" .AND.  ;
                     mcCc>=icL1+44 .AND. mcCc<=icL1+52.8
                     STORE 05 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo$"456" .AND. voPc="N" .AND. mcCc>=icL1+6 .AND.  ;
                     mcCc<=icL1+21.4
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo$"456" .AND. voPc="N" .AND. mcCc>=icL1+21.4  ;
                     .AND. mcCc<=icL1+29.8
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="7" .AND. voPc="N" .AND. mcCc>=icL1+6 .AND.  ;
                     mcCc<=icL1+21.2
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="7" .AND. voPc="N" .AND. mcCc>=icL1+21.2 .AND.  ;
                     mcCc<=icL1+36.4
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="7" .AND. voPc="N" .AND. mcCc>=icL1+55.6 .AND.  ;
                     mcCc<=icL1+64.4
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+40.8 .AND. mcCc<=icL1+49.6
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+49.6 .AND. mcCc<=icL1+59.6
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+59.6 .AND. mcCc<=icL1+69.6
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+74 .AND. mcCc<=icL1+82.8
                     STORE 04 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+82.8 .AND. mcCc<=icL1+92.8
                     STORE 05 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+92.8 .AND. mcCc<=icL1+102.8
                     STORE 06 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+107.2 .AND. mcCc<=icL1+116
                     STORE 07 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+116 .AND. mcCc<=icL1+126
                     STORE 08 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+126 .AND. mcCc<=icL1+136
                     STORE 09 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+140.4 .AND. mcCc<=icL1+149.2
                     STORE 10 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+149.2 .AND. mcCc<=icL1+159.2
                     STORE 11 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="8" .AND. mcCc>=icL1+159.2 .AND. mcCc<=icL1+169.2
                     STORE 12 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="9" .AND. mcCc>=icL1+40.8 .AND. mcCc<=icL1+49.6
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="9" .AND. mcCc>=icL1+54.0 .AND. mcCc<=icL1+62.4
                     STORE 02 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="9" .AND. mcCc>=icL1+66.8 .AND. mcCc<=icL1+75.6
                     STORE 03 TO viTe
                     STORE 99 TO mkEy
                CASE ptPo="9" .AND. mcCc>=icL1+80 .AND. mcCc<=icL1+88.8
                     STORE 04 TO viTe
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Cor_2700c
 PRIVATE pnOm, plAr, paNc, pcAn, pp11, pp12, pp21, pp22
 SELECT tmP_frase
 ZAP
 SELECT teMporal_3
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      IF ftM3opc="S"
           SKIP
           LOOP
      ENDIF
      STORE STR(ftM3mla, 5, 3) TO plAr
      STORE STR(ftM3man, 5, 3) TO paNc
      STORE STR(ftM3p11, 3, 0) TO pp11
      STORE STR(ftM3p21, 3, 0) TO pp21
      STORE STR(ftM3can, 4, 0) TO pcAn
      STORE " "+ftM3p12 TO pp12
      STORE " "+ftM3p22 TO pp22
      IF LEN(ALLTRIM(pp12))<2
           STORE "" TO pp12
      ENDIF
      IF LEN(ALLTRIM(pp22))<2
           STORE "" TO pp22
      ENDIF
      DO CASE
           CASE ftM3un1="M" .AND. ftM3un2="M"
                SELECT tmP_frase
                APPEND BLANK
                REPLACE frAse WITH plAr+" x "+paNc+" = "+pcAn
           CASE ftM3un1="P" .AND. ftM3un2="P"
                SELECT tmP_frase
                APPEND BLANK
                REPLACE frAse WITH pp11+pp12+" x "+pp21+pp22+" = "+pcAn
           CASE ftM3un1="P" .AND. ftM3un2="M"
                SELECT tmP_frase
                APPEND BLANK
                REPLACE frAse WITH pp11+pp12+" x "+paNc+" = "+pcAn
           CASE ftM3un1="M" .AND. ftM3un2="P"
                SELECT tmP_frase
                APPEND BLANK
                REPLACE frAse WITH plAr+" x "+pp21+pp22+" = "+pcAn
      ENDCASE
      SELECT teMporal_3
      SKIP
 ENDDO
 STORE "PIEZAS.TXT" TO pnOm
 SELECT tmP_frase
 GOTO TOP
 Copy to &pNOM SDF
 RELEASE pnOm, plAr, paNc, pcAn, pp11, pp12, pp21, pp22
ENDPROC
*
PROCEDURE Hl1_2700c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En este detalle se ingresa las medidas expresadas en metros del largo y"
 @ pfIl+1, 2 SAY "ancho."
 STORE pfIl+3 TO pfIl
 DO CASE
      CASE ptPo="2"
           @ pfIl+0, 2 SAY  ;
             "En el caso de que el Servicio requiera indicar lado se puede marcar o des-"
           @ pfIl+1, 2 SAY  ;
             "marcar los gráficos por Item. Por defecto todos están marcados."
           @ pfIl+2, 2 SAY  ;
             "La Letra M significa milímetros que se añaden por lado a la medida en caso"
           @ pfIl+3, 2 SAY  ;
             "de que quieran aumentar estos por lado. Si se copian las medidas de un pro-"
           @ pfIl+4, 2 SAY  ;
             "ducto cuyo mantenimiento tenga milimetros estos se ponen en automático,"
           @ pfIl+5, 2 SAY "pudiéndose cambiar posteriormente."
           STORE pfIl+7 TO pfIl
      CASE ptPo="3" .AND. mpIe=1
           @ pfIl+0, 2 SAY  ;
             "En este detalle se ingresa las medidas que se quieren en metros o pulga-"
           @ pfIl+1, 2 SAY  ;
             "das. Las Pulgadas se redondean a Pulgadas par. Los cm. se convierten a"
           @ pfIl+2, 2 SAY  ;
             "Pulgadas dividiéndose entre 0.0254 y luego se redondean a Pulgadas Par."
           @ pfIl+3, 2 SAY  ;
             "Ambas medidas multiplicadas se dividen entre 144 para convertirlas a"
           @ pfIl+4, 2 SAY "Pie2."
           STORE pfIl+6 TO pfIl
      CASE ptPo="3" .AND. mpIe=2
           @ pfIl+0, 2 SAY  ;
             "En este detalle se ingresa las medidas que se quieren en metros o pulga-"
           @ pfIl+1, 2 SAY  ;
             "das. Si las 2 medidas son Pulgadas se redondean a Pulgadas par. Si una"
           @ pfIl+2, 2 SAY  ;
             "de las medidas es pulgadas se convierte a cm multiplicándose x 0.0254."
           @ pfIl+3, 2 SAY  ;
             "Ya todo en cm. se redondean al quinto cm. siguiente. multiplicándose "
           @ pfIl+4, 2 SAY  ;
             "entre si y dividiéndose entre 0.09 para convertirlas a pie2."
           STORE pfIl+6 TO pfIl
      CASE ptPo="3" .AND. mpIe=3
           @ pfIl+0, 2 SAY  ;
             "En este detalle se ingresa las medidas que se quieren en metros o pulga-"
           @ pfIl+1, 2 SAY  ;
             "das. Las pulgadas se convierten a cm. multiplicándose x 0.0254. Luego,"
           @ pfIl+2, 2 SAY "se multiplican x 10.77 para convertirlas a pie2."
           STORE pfIl+4 TO pfIl
      CASE ptPo="4"
           @ pfIl+0, 2 SAY  ;
             "En este detalle se digita los metros que se quiere ingresar y la cantidad"
           @ pfIl+1, 2 SAY "de cortes por cada medida."
           STORE pfIl+3 TO pfIl
      CASE ptPo="5"
           @ pfIl+0, 2 SAY  ;
             "En este detalle se digita el diámetro x metros que se quiere ingresar y la"
           @ pfIl+1, 2 SAY "cantidad de cortes por cada medida."
           STORE pfIl+3 TO pfIl
      CASE ptPo="6"
           @ pfIl+0, 2 SAY  ;
             "En este detalle se digita los metros por lado y la cantidad de lados que"
           @ pfIl+1, 2 SAY "se quiere calcular."
           STORE pfIl+3 TO pfIl
      CASE ptPo="7"
           @ pfIl+0, 2 SAY  ;
             "Los cuadritos que se presentan son para saber en que lado se va a poner el"
           @ pfIl+1, 2 SAY  ;
             "tapacanto. Y las medidas son las de los cortes de Melamina."
           STORE pfIl+3 TO pfIl
      CASE ptPo="8"
           @ pfIl+0, 2 SAY  ;
             "En este detalle se digita los espesores en mm o pulgada segun corresponda"
           @ pfIl+1, 2 SAY  ;
             "y las coordenadas X e Y en metros, siempre y cuando sus cuadros esten ac-"
           @ pfIl+2, 2 SAY  ;
             "tivos. La coordenada X es la Base horizontal y la Y es la vertical."
           STORE pfIl+4 TO pfIl
      CASE ptPo="9"
           @ pfIl+0, 2 SAY "En este detalle se digita los grados."
           STORE pfIl+2 TO pfIl
 ENDCASE
 @ pfIl+0, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 20 SAY ":" STYLE "BT"
 @ pfIl+1, 20 SAY ":" STYLE "BT"
 @ pfIl+2, 20 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "ESC" STYLE "BT"
 @ pfIl+1, 02 SAY "F10" STYLE "BT"
 @ pfIl+2, 02 SAY "F1" STYLE "BT"
 @ pfIl+0, 22 SAY "Regresar al Detalle sin Aprobar"
 @ pfIl+1, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 22 SAY "Ayuda del Programa"
 STORE pfIl+3 TO pfIl
 IF ptPo="3" .AND. ((vuN1+vuN2="MM" .AND. viTe<3) .OR. (vuN1+vuN2="PP"  ;
    .AND. viTe<7) .OR. (vuN1+vuN2="PM" .AND. viTe<5) .OR. (vuN1+vuN2="MP"  ;
    .AND. viTe<5))
      @ pfIl+0, 20 SAY ":" STYLE "BT"
      @ pfIl+0, 02 SAY "F2" STYLE "BT"
      @ pfIl+0, 22 SAY "Cambia metros a pulgadas y viceversa en el campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF (ppRg="1200" .OR. ppRg="1300")
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F3" STYLE "BT"
      @ pfIl, 22 SAY "Pasar Medidas a PIEZAS.TXT"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF ptPo="3" .AND. ((vuN1="P" .AND. (viTe=2 .OR. viTe=3)) .OR. (vuN1+vuN2= ;
    "PP" .AND. (viTe=5 .OR. viTe=6)) .OR. (vuN1+vuN2="MP" .AND. (viTe=3  ;
    .OR. viTe=4)))
      @ pfIl+0, 20 SAY ":" STYLE "BT"
      @ pfIl+0, 02 SAY "F4" STYLE "BT"
      @ pfIl+0, 22 SAY "Se cambia de 1 a 2 campos y viceversa en el divisor"
      @ pfIl+1, 22 SAY "Cuando esta en Negro tiene 1 campo, cuando esta en "
      @ pfIl+2, 22 SAY "rojo tiene 2 campos."
      STORE pfIl+3 TO pfIl
 ENDIF
 IF ptPo="2" .AND. (ppRg="1200" .OR. ppRg="1300") .AND. voPc="N"
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F5" STYLE "BT"
      @ pfIl, 22 SAY "Cambiar Milímetros"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF (ppRg="1200" .OR. ppRg="1300") .AND. voPc="N"
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F6" STYLE "BT"
      @ pfIl, 22 SAY "Ingresar Comentario de 3 caracteres"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF ptPo="3" .AND. (ppRg="1200" .OR. ppRg="1300")
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F7" STYLE "BT"
      @ pfIl, 22 SAY "Llamar PlanIQ para optimizar"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF ptPo="3"
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F8" STYLE "BT"
      @ pfIl, 22 SAY "Cambia metros a pulgadas y viceversa por defecto"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF ptPo<>"8" .AND. ptPo<>"9"
      @ pfIl, 20 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F9" STYLE "BT"
      DO CASE
           CASE ptPo="1"
                @ pfIl, 22 SAY "Ingresar mt2 para cuadre"
           CASE ptPo$"27"
                @ pfIl, 22 SAY "Ingresar el Area para cuadre"
           CASE ptPo="3"
                @ pfIl, 22 SAY "Ingresar Pie2 para cuadre"
           CASE ptPo$"456"
                @ pfIl, 22 SAY "Ingresar metros para cuadre"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 20 SAY ":" STYLE "BT"
 @ pfIl+01, 20 SAY ":" STYLE "BT"
 @ pfIl+03, 20 SAY ":" STYLE "BT"
 @ pfIl+04, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "ENTER / CTRL ->" STYLE "BT"
 @ pfIl+02, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+03, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+04, 02 SAY "CTRL <-" STYLE "BT"
 @ pfIl+05, 02 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+06, 02 SAY "CTRL END" STYLE "BT"
 @ pfIl+07, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+08, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+09, 02 SAY "ALT DEL" STYLE "BT"
 @ pfIl+10, 02 SAY "ALT C" STYLE "BT"
 @ pfIl+11, 02 SAY "TAB" STYLE "BT"
 @ pfIl+00, 22 SAY "Ir al siguiente campo, llegando al último campo pasa a"
 @ pfIl+01, 22 SAY "la siguiente línea"
 @ pfIl+02, 22 SAY "Ir a la línea siguiente"
 @ pfIl+03, 22 SAY "Ir a la línea anterior"
 @ pfIl+04, 22 SAY "Ir al campo anterior"
 @ pfIl+05, 22 SAY "Primera línea del Detalle"
 @ pfIl+06, 22 SAY "Última línea del Detalle"
 @ pfIl+07, 22 SAY "Página siguiente"
 @ pfIl+08, 22 SAY "Página anterior"
 @ pfIl+09, 22 SAY "Borrar línea"
 @ pfIl+10, 22 SAY "Copiar otro ítem"
 @ pfIl+11, 22 SAY "Aprobar estos datos para el ítem del Detalle principal"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
