 = INKEY(0.01)
 STORE "S" TO moPc
 STORE 99 TO mkEy
 STORE 00 TO mvIs
 DO prE_docum WITH "¿Está seguro de Imprimir Boleta de Pago "+vsEr+"-"+vbOl+"?"
 IF moPc$"Nn"
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO esT_4240z
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 SAVE SCREEN TO mpAn_prn
 DO ipR_0001a WITH "BP"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO inI_1300z IN FAC0000A WITH "BP"
 DO CASE
      CASE mcIa="MO"
           DO bpA_4240z IN FACMOBLA
      CASE mcIa="PU"
           DO bpA_4240z IN FACVIPUN
      CASE mcIa="P2"
           DO bpA_4240z IN FACVIPU2
      CASE mcIa="SR"
           DO bpA_4240z IN FACVIROM
      CASE mcIa="S2"
           DO bpA_4240z IN FACVIRO2
      CASE mcIa="LI"
           DO bpA_4240z IN FACLIMAT
      CASE mcIa="MA"
           DO bpA_4240z IN FACMARCE
      CASE mcIa="AL" .OR. mcIa="A1"
           DO bpA_4240z IN FACALEJO
      CASE mcIa="MB"
           DO bpA_4240z IN FACMABER
      CASE mcIa="DI"
           DO bpA_4240z IN FACDIBUV
      CASE mcIa="VV"
           DO bpA_4240z IN FACVILLA
      CASE mcIa="RO"
           DO bpA_4240z IN FACSTARO
      CASE mcIa="MV"
           DO bpA_4240z IN FACMAVIC
      CASE mcIa="LR"
           DO bpA_4240z IN FACVILRO
      CASE mcIa="LE"
           DO bpA_4240z IN FACVILEO
      CASE mcIa="UN"
           DO bpA_4240z IN FACUNIVE
      CASE mcIa="U2"
           DO bpA_4240z IN FACUNIV2
      CASE mcIa="RU"
           DO bpA_4240z IN FACRUDOR
      CASE mcIa="FL"
           DO bpA_4240z IN FACFLEOS
      CASE mcIa="CG"
           DO bpA_4240z IN FACVICGM
      CASE mcIa="DS"
           DO bpA_4240z IN FACMABER
      CASE mcIa="LA"
           DO bpA_4240z IN FACLANDA
      CASE mcIa="BE"
           DO bpA_4240z IN FACBERMU
      CASE mcIa="AN"
           DO bpA_4240z IN FACANGEL
      CASE mcIa="AG"
           DO bpA_4240z IN FACAGUIL
      CASE mcIa="24"
           DO bpA_4240z IN FAC24JUN
      CASE mcIa="CH"
           DO bpA_4240z IN FACCHAYN
      CASE mcIa="IM" .OR. mcIa="AC" .OR. mcIa="LC" .OR. mcIa="LT"
           DO bpA_4240z IN FACCATER
      CASE mcIa="KO"
           DO bpA_4240z IN FACKOLKE
      CASE mcIa="RA" .OR. mcIa="RJ"
           DO bpA_4240z IN FACRAGUS
      CASE mcIa="OL" .OR. mcIa="CR"
           DO bpA_4240z IN FACOLIVO
      CASE mcIa="CA"
           DO bpA_4240z IN FACCARPI
      CASE mcIa="VI"
           DO bpA_4240z IN FACVISAC
      CASE mcIa="SI"
           DO bpA_4240z IN FACISIDR
      CASE mcIa="CL"
           DO bpA_4240z IN FACCALDE
 ENDCASE
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Est_4240z
 SELECT caBecera
 STORE 99 TO mkEy
 SEEK vsEr+vbOl
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vbOl
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 DO muE_4240a IN PKC4240A
 IF f4240est="1"
      REPLACE f4240est WITH "2"
      UNLOCK
 ENDIF
 UNLOCK ALL
ENDPROC
*
