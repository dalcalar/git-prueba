 PARAMETER ptPo
 = INKEY(0.01)
 STORE 99 TO mkEy
 SELECT caB_remi
 SEEK vtDo+vsEr+vdOc
 STORE f2600mot TO vmOt
 STORE f2600alm TO vaLm
 SELECT alMacen
 SEEK vaLm
 IF  .NOT. EOF()
      STORE f9214dir TO vaDi, vpDi
      DO CASE
           CASE UPPER(ALLTRIM(f9214dpt))="LIMA"
                STORE f9214dis TO vpDs
                STORE "Lima" TO vpPr
                STORE f9214dpt TO vpDp
           OTHERWISE
                STORE SPACE(25) TO vpDs
                STORE f9214dis TO vpPr
                STORE f9214dpt TO vpDp
      ENDCASE
      STORE ALLTRIM(vpDs)+","+ALLTRIM(vpPr)+","+vpDp TO vaDs
 ELSE
      STORE SPACE(70) TO vaDi, vpDi
      STORE SPACE(25) TO vaDs, vpDs, vpPr, vpDp
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea Imprimir Guía de Remisión: "+vsEr+"-"+vdOc+" ?"
 IF moPc$"Nn"
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SELECT caB_remi
 IF f2600est="1" .AND. ptPo="1"
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      REPLACE f2600est WITH "2"
      UNLOCK ALL
 ENDIF
 DO CASE
      CASE mcIa="NV"
      CASE mcIa="NM"
      CASE mcIa="NP"
      CASE mcIa="MO"
      CASE mcIa="PU"
      CASE mcIa="P2"
      CASE mcIa="SR"
      CASE mcIa="S2"
      CASE mcIa="LI"
      CASE mcIa="MA"
      CASE mcIa="AL"
      CASE mcIa="A1"
      CASE mcIa="MB"
      CASE mcIa="DS"
      CASE mcIa="DI"
      CASE mcIa="VV"
      CASE mcIa="RO"
      CASE mcIa="MV"
      CASE mcIa="PE"
      CASE mcIa="LR"
      CASE mcIa="LE"
      CASE mcIa="UN"
      CASE mcIa="U2"
      CASE mcIa="RU"
      CASE mcIa="FL"
      CASE mcIa="CG"
      CASE mcIa="LA"
      CASE mcIa="BE"
      CASE mcIa="AN"
      CASE mcIa="A2"
      CASE mcIa="AG"
      CASE mcIa="24"
      CASE mcIa="KO"
      CASE mcIa="CH"
      CASE mcIa="IM"
      CASE mcIa="AC"
      CASE mcIa="LC"
      CASE mcIa="LT"
      CASE mcIa="KO"
      CASE mcIa="RA" .OR. mcIa="RJ"
      CASE mcIa="OL"
      CASE mcIa="CR"
      CASE mcIa="CA"
      CASE mcIa="VI"
      CASE mcIa="SI"
      CASE mcIa="L1"
      CASE mcIa="KA"
      CASE mcIa="CP"
      CASE mcIa="28"
      CASE mcIa="JA"
      CASE mcIa="EC"
      CASE mcIa="SA"
      CASE mcIa="DY"
      CASE mcIa="PA"
      CASE mcIa="CS"
      CASE mcIa="GE"
      CASE mcIa="C1"
      CASE mcIa="TI"
      CASE mcIa="RE"
      CASE mcIa="GR"
      CASE mcIa="IN"
      CASE mcIa="IG"
      CASE mcIa="EL" .OR. mcIa="E2" .OR. mcIa="E3" .OR. mcIa="E4" .OR.  ;
           mcIa="E5" .OR. mcIa="E6" .OR. mcIa="E7" .OR. mcIa="E8"
      OTHERWISE
           STORE 99 TO mkEy
           RETURN
 ENDCASE
 SAVE SCREEN TO mpAn_prn
 STORE 0 TO mvIs
 DO ipR_0001a WITH "RE"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 SELECT caB_remi
 DO inI_1300z IN FAC0000A WITH "RE"
 DO CASE
      CASE mcIa="MO"
           DO reM_2600z IN FACMOBLA
      CASE mcIa="PU"
           DO reM_2600z IN FACVIPUN
      CASE mcIa="P2"
           DO reM_2600z IN FACVIPU2
      CASE mcIa="SR"
           DO reM_2600z IN FACVIROM
      CASE mcIa="S2"
           DO reM_2600z IN FACVIRO2
      CASE mcIa="LI"
           DO reM_2600z IN FACLIMAT
      CASE mcIa="MA"
           DO reM_2600z IN FACMARCE
      CASE mcIa="AL" .OR. mcIa="A1"
           DO reM_2600z IN FACALEJO
      CASE mcIa="MB"
           DO reM_2600z IN FACMABER
      CASE mcIa="DI"
           DO reM_2600z IN FACDIBUV
      CASE mcIa="VV"
           DO reM_2600z IN FACVILLA
      CASE mcIa="RO"
           DO reM_2600z IN FACSTARO
      CASE mcIa="MV"
           DO reM_2600z IN FACMAVIC
      CASE mcIa="LR"
           DO reM_2600z IN FACVILRO
      CASE mcIa="LE"
           DO reM_2600z IN FACVILEO
      CASE mcIa="UN"
           DO reM_2600z IN FACUNIVE
      CASE mcIa="U2"
           DO reM_2600z IN FACUNIV2
      CASE mcIa="RU"
           DO reM_2600z IN FACRUDOR
      CASE mcIa="FL"
           DO reM_2600z IN FACFLEOS
      CASE mcIa="CG"
           DO reM_2600z IN FACVICGM
      CASE mcIa="DS"
           DO reM_2600z IN FACMABER
      CASE mcIa="LA"
           DO reM_2600z IN FACLANDA
      CASE mcIa="BE"
           DO reM_2600z IN FACBERMU
      CASE mcIa="AN" .OR. mcIa="A2"
           DO reM_2600z IN FACANGEL
      CASE mcIa="AG"
           DO reM_2600z IN FACAGUIL
      CASE mcIa="24"
           DO reM_2600z IN FAC24JUN
      CASE mcIa="CH"
           DO reM_2600z IN FACCHAYN
      CASE mcIa="IM" .OR. mcIa="AC" .OR. mcIa="LC" .OR. mcIa="LT"
           DO reM_2600z IN FACCATER
      CASE mcIa="KO"
           DO reM_2600z IN FACKOLKE
      CASE mcIa="RA" .OR. mcIa="RJ"
           DO reM_2600z IN FACRAGUS
      CASE mcIa="OL" .OR. mcIa="CR"
           DO reM_2600z IN FACOLIVO
      CASE mcIa="CA"
           DO reM_2600z IN FACCARPI
      CASE mcIa="VI"
           DO reM_2600z IN FACVISAC
      CASE mcIa="SI"
           DO reM_2600z IN FACISIDR
      CASE mcIa="CL"
           DO reM_2600z IN FACCALDE
      CASE mcIa="L1"
           DO reM_2600z IN FACVLEOS
      CASE mcIa="ME"
           DO reM_2600z IN FACMELAT
      CASE mcIa="KA"
           DO reM_2600z IN FACKOALA
      CASE mcIa="CP"
           DO reM_2600z IN FACCOOPI
      CASE mcIa="28"
           DO reM_2600z IN FAC28DEJ
      CASE mcIa="JA"
           DO reM_2600z IN FACJANET
      CASE mcIa="EC"
           DO reM_2600z IN FACLAECO
      CASE mcIa="SA"
           DO reM_2600z IN FACSABIN
      CASE mcIa="DY"
           DO reM_2600z IN FACDAYAN
      CASE mcIa="PA"
           DO reM_2600z IN FACPARAD
      CASE mcIa="CS"
           DO reM_2600z IN FACCSCOR
      CASE mcIa="GE"
           DO reM_2600z IN FACGENER
      CASE mcIa="C1"
           DO reM_2600z IN FACCHAY1
      CASE mcIa="TI"
           DO reM_2600z IN FACTICON
      CASE mcIa="RE"
           DO reM_2600z IN FACRELUM
      CASE mcIa="GR"
           DO reM_2600z IN FACGRACI
      CASE mcIa="IN"
           DO reM_2600z IN FACINDUS
      CASE mcIa="IG"
           DO reM_2600z IN FACIGLES
      CASE mcIa="EL" .OR. mcIa="E2" .OR. mcIa="E3" .OR. mcIa="E4" .OR.  ;
           mcIa="E5" .OR. mcIa="E6" .OR. mcIa="E7" .OR. mcIa="E8"
           PRIVATE pcIa
           DO CASE
                CASE mcIa="EL"
                     STORE "1" TO pcIa
                CASE mcIa="E2"
                     STORE "2" TO pcIa
                CASE mcIa="E3"
                     STORE "3" TO pcIa
                CASE mcIa="E4"
                     STORE "4" TO pcIa
                CASE mcIa="E5"
                     STORE "5" TO pcIa
                CASE mcIa="E6"
                     STORE "6" TO pcIa
                CASE mcIa="E7"
                     STORE "7" TO pcIa
                CASE mcIa="E8"
                     STORE "8" TO pcIa
           ENDCASE
           DO reM_2600z IN FACELEGR WITH pcIa
           RELEASE pcIa
 ENDCASE
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
