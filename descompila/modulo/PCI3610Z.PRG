 = INKEY(0.01)
 STORE "S" TO moPc
 STORE 99 TO mkEy
 STORE 00 TO mvIs
 DO prE_docum WITH "¿Está seguro de Imprimir Documento?"
 IF moPc$"Nn"
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ctA_3610z
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 SAVE SCREEN TO mpAn_prn
 DO ipR_0001a WITH vtDo
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 SELECT caB_nota
 DO inI_1300z IN FAC0000A WITH vtDo
 DO CASE
      CASE vtDo="ND" .AND. (mcIa="AL" .OR. mcIa="A1")
           DO deB_3610z IN FACALEJO
      CASE vtDo="NC" .AND. (mcIa="AL" .OR. mcIa="A1")
           DO crE_3610z IN FACALEJO
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           (mcIa="AL" .OR. mcIa="A1")
           DO ceL_3610z IN FACALEJO
      CASE vtDo="ND" .AND. mcIa="VV"
           DO deB_3610z IN FACVILLA
      CASE vtDo="NC" .AND. mcIa="VV"
           DO crE_3610z IN FACVILLA
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="VV"
           DO ceL_3610z IN FACVILLA
      CASE vtDo="ND" .AND. mcIa="MA"
           DO deB_3610z IN FACMARCE
      CASE vtDo="NC" .AND. mcIa="MA"
           DO crE_3610z IN FACMARCE
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="MA"
           DO ceL_3610z IN FACMARCE
      CASE vtDo="ND" .AND. mcIa="MV"
           DO deB_3610z IN FACMAVIC
      CASE vtDo="NC" .AND. mcIa="MV"
           DO crE_3610z IN FACMAVIC
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="MV"
           DO ceL_3610z IN FACVICGM
      CASE vtDo="ND" .AND. mcIa="CG"
           DO deB_3610z IN FACVICGM
      CASE vtDo="NC" .AND. mcIa="CG"
           DO crE_3610z IN FACVICGM
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="CG"
           DO ceL_3610z IN FACVICGM
      CASE vtDo="ND" .AND. (mcIa="OL" .OR. mcIa="CR")
           DO deB_3610z IN FACOLIVO
      CASE vtDo="NC" .AND. (mcIa="OL" .OR. mcIa="CR")
           DO crE_3610z IN FACOLIVO
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           (mcIa="OL" .OR. mcIa="CR")
           DO ceL_3610z IN FACOLIVO
      CASE vtDo="ND" .AND. mcIa="28"
           DO deB_3610z IN FAC28DEJ
      CASE vtDo="NC" .AND. mcIa="28"
           DO crE_3610z IN FAC28DEJ
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="28"
           DO ceL_3610z IN FAC28DEJ
      CASE vtDo="ND" .AND. mcIa="CS"
           DO deB_3610z IN FACCSCOR
      CASE vtDo="NC" .AND. mcIa="CS"
           DO crE_3610z IN FACCSCOR
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="CS"
           DO ceL_3610z IN FACCSCOR
      CASE vtDo="ND" .AND. mcIa="JA"
           DO deB_3610z IN FACJANET
      CASE vtDo="NC" .AND. mcIa="JA"
           DO crE_3610z IN FACJANET
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="JA"
           DO ceL_3610z IN FACJANET
      CASE vtDo="ND" .AND. mcIa="RE"
           DO deB_3610z IN FACRELUM
      CASE vtDo="NC" .AND. mcIa="RE"
           DO crE_3610z IN FACRELUM
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="RE"
           DO ceL_3610z IN FACRELUM
      CASE vtDo="ND" .AND. mcIa="MO"
           DO deB_3610z IN FACMOBLA
      CASE vtDo="NC" .AND. mcIa="MO"
           DO crE_3610z IN FACMOBLA
      CASE vtDo="ND" .AND. mcIa="PU"
           DO deB_3610z IN FACVIPUN
      CASE vtDo="NC" .AND. mcIa="PU"
           DO crE_3610z IN FACVIPUN
      CASE vtDo="ND" .AND. mcIa="P2"
           DO deB_3610z IN FACVIPU2
      CASE vtDo="NC" .AND. mcIa="P2"
           DO crE_3610z IN FACVIPU2
      CASE vtDo="ND" .AND. mcIa="SR"
           DO deB_3610z IN FACVIROM
      CASE vtDo="NC" .AND. mcIa="SR"
           DO crE_3610z IN FACVIROM
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="SR"
           DO ceL_3610z IN FACVIROM
      CASE vtDo="ND" .AND. mcIa="S2"
           DO deB_3610z IN FACVIRO2
      CASE vtDo="NC" .AND. mcIa="S2"
           DO crE_3610z IN FACVIRO2
      CASE vtDo="ND" .AND. mcIa="LI"
           DO deB_3610z IN FACLIMAT
      CASE vtDo="NC" .AND. mcIa="LI"
           DO crE_3610z IN FACLIMAT
      CASE vtDo="ND" .AND. mcIa="MB"
           DO deB_3610z IN FACMABER
      CASE vtDo="NC" .AND. mcIa="MB"
           DO crE_3610z IN FACMABER
      CASE vtDo="ND" .AND. mcIa="DI"
           DO deB_3610z IN FACDIBUV
      CASE vtDo="NC" .AND. mcIa="DI"
           DO crE_3610z IN FACDIBUV
      CASE (vtDo="N1" .OR. vtDo="N2" .OR. vtDo="N3" .OR. vtDo="N4") .AND.  ;
           mcIa="DI"
           DO ceL_3610z IN FACDIBUV
      CASE vtDo="ND" .AND. mcIa="RO"
           DO deB_3610z IN FACSTARO
      CASE vtDo="NC" .AND. mcIa="RO"
           DO crE_3610z IN FACSTARO
      CASE vtDo="ND" .AND. mcIa="LR"
           DO deB_3610z IN FACVILRO
      CASE vtDo="NC" .AND. mcIa="LR"
           DO crE_3610z IN FACVILRO
      CASE vtDo="ND" .AND. mcIa="LE"
           DO deB_3610z IN FACVILEO
      CASE vtDo="NC" .AND. mcIa="LE"
           DO crE_3610z IN FACVILEO
      CASE vtDo="ND" .AND. mcIa="UN"
           DO deB_3610z IN FACUNIVE
      CASE vtDo="NC" .AND. mcIa="UN"
           DO crE_3610z IN FACUNIVE
      CASE vtDo="ND" .AND. mcIa="U2"
           DO deB_3610z IN FACUNIV2
      CASE vtDo="NC" .AND. mcIa="U2"
           DO crE_3610z IN FACUNIV2
      CASE vtDo="ND" .AND. mcIa="RU"
           DO deB_3610z IN FACRUDOR
      CASE vtDo="NC" .AND. mcIa="RU"
           DO crE_3610z IN FACRUDOR
      CASE vtDo="ND" .AND. mcIa="FL"
           DO deB_3610z IN FACFLEOS
      CASE vtDo="NC" .AND. mcIa="FL"
           DO crE_3610z IN FACFLEOS
      CASE vtDo="ND" .AND. mcIa="DS"
           DO deB_3610z IN FACMABER
      CASE vtDo="NC" .AND. mcIa="DS"
           DO crE_3610z IN FACMABER
      CASE vtDo="ND" .AND. mcIa="LA"
           DO deB_3610z IN FACLANDA
      CASE vtDo="NC" .AND. mcIa="LA"
           DO crE_3610z IN FACLANDA
      CASE vtDo="ND" .AND. mcIa="BE"
           DO deB_3610z IN FACBERMU
      CASE vtDo="NC" .AND. mcIa="BE"
           DO crE_3610z IN FACBERMU
      CASE vtDo="ND" .AND. (mcIa="AN" .OR. mcIa="A2")
           DO deB_3610z IN FACANGEL
      CASE vtDo="NC" .AND. (mcIa="AN" .OR. mcIa="A2")
           DO crE_3610z IN FACANGEL
      CASE vtDo="ND" .AND. mcIa="AG"
           DO deB_3610z IN FACAGUIL
      CASE vtDo="NC" .AND. mcIa="AG"
           DO crE_3610z IN FACAGUIL
      CASE vtDo="ND" .AND. mcIa="24"
           DO deB_3610z IN FAC24JUN
      CASE vtDo="NC" .AND. mcIa="24"
           DO crE_3610z IN FAC24JUN
      CASE vtDo="ND" .AND. mcIa="CH"
           DO deB_3610z IN FACCHAYN
      CASE vtDo="NC" .AND. mcIa="CH"
           DO crE_3610z IN FACCHAYN
      CASE vtDo="ND" .AND. (mcIa="IM" .OR. mcIa="AC" .OR. mcIa="LC" .OR.  ;
           mcIa="LT")
           DO deB_3610z IN FACCATER
      CASE vtDo="NC" .AND. (mcIa="IM" .OR. mcIa="AC" .OR. mcIa="LC" .OR.  ;
           mcIa="LT")
           DO crE_3610z IN FACCATER
      CASE vtDo="ND" .AND. mcIa="KO"
           DO deB_3610z IN FACKOLKE
      CASE vtDo="NC" .AND. mcIa="KO"
           DO crE_3610z IN FACKOLKE
      CASE vtDo="ND" .AND. (mcIa="RA" .OR. mcIa="RJ")
           DO deB_3610z IN FACRAGUS
      CASE vtDo="NC" .AND. (mcIa="RA" .OR. mcIa="RJ")
           DO crE_3610z IN FACRAGUS
      CASE vtDo="ND" .AND. mcIa="CA"
           DO deB_3610z IN FACCARPI
      CASE vtDo="NC" .AND. mcIa="CA"
           DO crE_3610z IN FACCARPI
      CASE vtDo="ND" .AND. mcIa="VI"
           DO deB_3610z IN FACVISAC
      CASE vtDo="NC" .AND. mcIa="VI"
           DO crE_3610z IN FACVISAC
      CASE vtDo="ND" .AND. mcIa="SI"
           DO deB_3610z IN FACISIDR
      CASE vtDo="NC" .AND. mcIa="SI"
           DO crE_3610z IN FACISIDR
      CASE vtDo="ND" .AND. mcIa="CL"
           DO deB_3610z IN FACCALDE
      CASE vtDo="NC" .AND. mcIa="CL"
           DO crE_3610z IN FACCALDE
      CASE vtDo="ND" .AND. mcIa="L1"
           DO deB_3610z IN FACVLEOS
      CASE vtDo="NC" .AND. mcIa="L1"
           DO crE_3610z IN FACVLEOS
      CASE vtDo="ND" .AND. mcIa="ME"
           DO deB_3610z IN FACMELAT
      CASE vtDo="NC" .AND. mcIa="ME"
           DO crE_3610z IN FACMELAT
      CASE vtDo="ND" .AND. mcIa="KA"
           DO deB_3610z IN FACKOALA
      CASE vtDo="NC" .AND. mcIa="KA"
           DO crE_3610z IN FACKOALA
      CASE vtDo="ND" .AND. mcIa="CP"
           DO deB_3610z IN FACCOOPI
      CASE vtDo="NC" .AND. mcIa="CP"
           DO crE_3610z IN FACCOOPI
      CASE vtDo="ND" .AND. mcIa="EC"
           DO deB_3610z IN FACLAECO
      CASE vtDo="NC" .AND. mcIa="EC"
           DO crE_3610z IN FACLAECO
      CASE vtDo="ND" .AND. mcIa="SA"
           DO deB_3610z IN FACSABIN
      CASE vtDo="NC" .AND. mcIa="SA"
           DO crE_3610z IN FACSABIN
      CASE vtDo="ND" .AND. mcIa="DY"
           DO deB_3610z IN FACDAYAN
      CASE vtDo="NC" .AND. mcIa="DY"
           DO crE_3610z IN FACDAYAN
      CASE vtDo="ND" .AND. mcIa="PA"
           DO deB_3610z IN FACPARAD
      CASE vtDo="NC" .AND. mcIa="PA"
           DO crE_3610z IN FACPARAD
      CASE vtDo="ND" .AND. mcIa="GE"
           DO deB_3610z IN FACGENER
      CASE vtDo="NC" .AND. mcIa="GE"
           DO crE_3610z IN FACGENER
      CASE vtDo="ND" .AND. mcIa="C1"
           DO deB_3610z IN FACCHAY1
      CASE vtDo="NC" .AND. mcIa="C1"
           DO crE_3610z IN FACCHAY1
      CASE vtDo="ND" .AND. mcIa="TI"
           DO deB_3610z IN FACTICON
      CASE vtDo="NC" .AND. mcIa="TI"
           DO crE_3610z IN FACTICON
      CASE vtDo="ND" .AND. mcIa="GR"
           DO deB_3610z IN FACGRACI
      CASE vtDo="NC" .AND. mcIa="GR"
           DO crE_3610z IN FACGRACI
      CASE vtDo="ND" .AND. mcIa="IN"
           DO deB_3610z IN FACINDUS
      CASE vtDo="NC" .AND. mcIa="IN"
           DO crE_3610z IN FACINDUS
      CASE vtDo="ND" .AND. mcIa="IG"
           DO deB_3610z IN FACIGLES
      CASE vtDo="NC" .AND. mcIa="IG"
           DO crE_3610z IN FACIGLES
 ENDCASE
 DO fpR_0001a
 STORE 99 TO mkEy
 IF vtDo="N3" .OR. vtDo="N4"
      DO tiM_1300z IN FAC0000A
 ENDIF
 DO CASE
      CASE (vtDo="N1" .OR. vtDo="N2") .AND. mcIa="CR"
           DO tiM_1300z IN FACOLIVO
      CASE (vtDo="N1" .OR. vtDo="N2") .AND. mcIa="CS"
           SELECT caB_nota
           IF f3610est<>"1"
                STORE "N" TO moPc
                STORE 99 TO mkEy
                DO prE_docum WITH "¿Desea reenviar TXT?"
                IF moPc$"Ss"
                     DO tiM_1300z IN FACCSCOR
                ENDIF
           ELSE
                DO tiM_1300z IN FACCSCOR
           ENDIF
 ENDCASE
 SET DEVICE TO SCREEN
 RETURN
ENDPROC
*
PROCEDURE Cta_3610z
 SELECT caB_nota
 STORE 99 TO mkEy
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
 SELECT ctAs_tot_vtas
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f3502tdo WITH vtDo
      REPLACE f3502ser WITH vsEr
      REPLACE f3502to1 WITH 0
      REPLACE f3502in1 WITH 0
      REPLACE f3502ac1 WITH 0
      REPLACE f3502to2 WITH 0
      REPLACE f3502in2 WITH 0
      REPLACE f3502ac2 WITH 0
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 DO muE_3610z
 SELECT caB_nota
 IF f3610est="1"
      REPLACE f3610est WITH "2"
      UNLOCK
      SELECT ctAs_tot_vtas
      DO CASE
           CASE vmOn=1
                REPLACE f3502to1 WITH f3502to1+ttOt
           CASE vmOn=2
                REPLACE f3502to2 WITH f3502to2+ttOt
      ENDCASE
      SELECT peNd_vtas
      DO nuEvo_rg
      REPLACE f3500tdo WITH vtDo
      REPLACE f3500ser WITH vsEr
      REPLACE f3500doc WITH vdOc
      REPLACE f3500ruc WITH vrUc
      REPLACE f3500ven WITH vvEn
      REPLACE f3500nve WITH vnVe
      REPLACE f3500tit WITH vtIt
      REPLACE f3500nti WITH vnTi
      REPLACE f3500cli WITH vcLi
      REPLACE f3500suc WITH vsUc
      REPLACE f3500nom WITH vnOm
      REPLACE f3500tcl WITH vtCl
      REPLACE f3500ntc WITH vnTc
      REPLACE f3500nfp WITH SPACE(02)
      REPLACE f3500fem WITH vfEm
      REPLACE f3500fve WITH vfEm
      REPLACE f3500mon WITH vmOn
      REPLACE f3500pig WITH vpIg
      REPLACE f3500tot WITH ttOt
      REPLACE f3500acu WITH 0.00
 ENDIF
 UNLOCK ALL
ENDPROC
*
PROCEDURE Mue_3610z
 SELECT caB_nota
 STORE f3610ven TO vvEn
 STORE f3610nve TO vnVe
 STORE f3610tit TO vtIt
 STORE f3610nti TO vnTi
 STORE f3610cli TO vcLi
 STORE f3610suc TO vsUc
 STORE f3610nom TO vnOm
 STORE f3610ruc TO vrUc
 STORE f3610ele TO vdNi
 STORE f3610dir TO vdIr
 STORE f3610dis TO vdIs
 STORE f3610dep TO vdEp
 STORE f3610fem TO vfEm
 STORE f3610mon TO vmOn
 STORE f3610pig TO vpIg
 STORE f3610cm1 TO vcM1, xcM1
 STORE f3610cm2 TO vcM2
 STORE f3610net TO tnEt
 STORE f3610tot TO ttOt
 IF f3610mon=1
      STORE msIg TO vsIg, xsIg
 ELSE
      STORE "US$" TO vsIg, xsIg
 ENDIF
 IF LEN(ALLTRIM(vtIt))=0
      STORE vcLi TO vtIt
 ENDIF
 SELECT clIentes
 SEEK vtIt
 STORE f1101tip TO vtCl
 STORE f1101nom TO vnTi
 SELECT tiPos
 SEEK vtCl
 STORE f9110nti TO vnTc
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      STORE 1 TO vtCa, vtCv
 ELSE
      STORE f9111tc3 TO vtCa, vtCv
 ENDIF
 DO leE_1300z IN FAC0000A
 IF vmOn=1
      STORE vfRa+" Soles" TO vfRa
 ELSE
      STORE vfRa+" Dolares Americanos" TO vfRa
 ENDIF
ENDPROC
*
