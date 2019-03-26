 = INKEY(0.01)
 STORE "S" TO moPc
 STORE 99 TO mkEy
 STORE 00 TO mvIs
 DO prE_docum WITH "¿Está seguro de Imprimir Letra "+vsEr+"-"+vdOc+"?"
 IF moPc$"Nn"
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO esT_3110z
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 SAVE SCREEN TO mpAn_prn
 DO ipR_0001a WITH "LE"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SELECT leTras
 DO coLbln
 DO inI_1300z IN FAC0000A WITH "LE"
 DO CASE
      CASE mcIa="MO"
           DO leT_3110z IN FACMOBLA
      CASE mcIa="PU"
           DO leT_3110z IN FACVIPUN
      CASE mcIa="P2"
           DO leT_3110z IN FACVIPU2
      CASE mcIa="SR"
           DO leT_3110z IN FACVIROM
      CASE mcIa="S2"
           DO leT_3110z IN FACVIRO2
      CASE mcIa="LI"
           DO leT_3110z IN FACLIMAT
      CASE mcIa="MA"
           DO leT_3110z IN FACMARCE
      CASE mcIa="AL" .OR. mcIa="A1"
           DO leT_3110z IN FACALEJO
      CASE mcIa="MB"
           DO leT_3110z IN FACMABER
      CASE mcIa="DI"
           DO leT_3110z IN FACDIBUV
      CASE mcIa="VV"
           DO leT_3110z IN FACVILLA
      CASE mcIa="RO"
           DO leT_3110z IN FACSTARO
      CASE mcIa="MV"
           DO leT_3110z IN FACMAVIC
      CASE mcIa="LR"
           DO leT_3110z IN FACVILRO
      CASE mcIa="LE"
           DO leT_3110z IN FACVILEO
      CASE mcIa="UN"
           DO leT_3110z IN FACUNIVE
      CASE mcIa="U2"
           DO leT_3110z IN FACUNIV2
      CASE mcIa="RU"
           DO leT_3110z IN FACRUDOR
      CASE mcIa="FL"
           DO leT_3110z IN FACFLEOS
      CASE mcIa="CG"
           DO leT_3110z IN FACVICGM
      CASE mcIa="DS"
           DO leT_3110z IN FACMABER
      CASE mcIa="LA"
           DO leT_3110z IN FACLANDA
      CASE mcIa="BE"
           DO leT_3110z IN FACBERMU
      CASE mcIa="AN"
           DO leT_3110z IN FACANGEL
      CASE mcIa="AG"
           DO leT_3110z IN FACAGUIL
      CASE mcIa="24"
           DO leT_3110z IN FAC24JUN
      CASE mcIa="CH"
           DO leT_3110z IN FACCHAYN
      CASE mcIa="IM" .OR. mcIa="AC" .OR. mcIa="LC" .OR. mcIa="LT"
           DO leT_3110z IN FACCATER
      CASE mcIa="KO"
           DO leT_3110z IN FACKOLKE
      CASE mcIa="RA" .OR. mcIa="RJ"
           DO leT_3110z IN FACRAGUS
      CASE mcIa="OL" .OR. mcIa="CR"
           DO leT_3110z IN FACOLIVO
      CASE mcIa="CA"
           DO leT_3110z IN FACCARPI
      CASE mcIa="VI"
           DO leT_3110z IN FACVISAC
      CASE mcIa="SI"
           DO leT_3110z IN FACISIDR
      CASE mcIa="CL"
           DO leT_3110z IN FACCALDE
      CASE mcIa="L1"
           DO leT_3110z IN FACVLEOS
      CASE mcIa="ME"
           DO leT_3110z IN FACMELAT
      CASE mcIa="KA"
           DO leT_3110z IN FACKOALA
      CASE mcIa="CP"
           DO leT_3110z IN FACCOOPI
      CASE mcIa="28"
           DO leT_3110z IN FAC28DEJ
      CASE mcIa="JA"
           DO leT_3110z IN FACJANET
      CASE mcIa="EC"
           DO leT_3110z IN FACLAECO
      CASE mcIa="SA"
           DO leT_3110z IN FACSABIN
      CASE mcIa="DY"
           DO leT_3110z IN FACSABIN
      CASE mcIa="PA"
           DO leT_3110z IN FACPARAD
      CASE mcIa="CS"
           DO leT_3110z IN FACCSCOR
      CASE mcIa="GE"
           DO leT_3110z IN FACGENER
      CASE mcIa="C1"
           DO leT_3110z IN FACCHAY1
      CASE mcIa="IG"
           DO leT_3110z IN FACIGLES
      CASE mcIa="SU"
           DO leT_3110z IN FACVISUR
      OTHERWISE
           DO leT_3110z
 ENDCASE
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Est_3110z
 SELECT leTras
 STORE 99 TO mkEy
 SEEK vsEr+vdOc
 IF  .NOT. RLOCK()
      DO reG_lock WITH vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 DO muE_3110z
 SELECT leTras
 IF f3110est="1"
      REPLACE f3110est WITH "2"
      UNLOCK
 ENDIF
 UNLOCK ALL
ENDPROC
*
PROCEDURE Mue_3110z
 SELECT leTras
 STORE f3110mon TO vmOn
 STORE f3110tit TO vtIt
 STORE f3110cli TO vcLi
 STORE f3110suc TO vsUc
 STORE f3110nom TO vnOm
 STORE f3110pig TO vpIg
 STORE f3110tot TO ttOt
 STORE f3110fem TO vfEm
 STORE f3110fve TO vfVe
 STORE f3110ruc TO vrUc
 STORE f3110ven TO vvEn
 STORE f3110nve TO vnVe
 STORE f3110le1 TO vlE1
 SELECT clIentes
 SEEK vtIt
 IF EOF()
      STORE SPACE(70) TO vnTi
      STORE SPACE(02) TO vtCl
 ELSE
      STORE f1101nom TO vnTi
      STORE f1101tip TO vtCl
 ENDIF
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      STORE 1 TO vtCa
 ELSE
      STORE f9111tc3 TO vtCa
 ENDIF
 DO leE_1300z IN FAC0000A
 IF vmOn=1
      STORE "S/" TO vsIg
      STORE vfRa+" Soles" TO vfRa
 ELSE
      STORE "US$" TO vsIg
      STORE vfRa+" Dolares Americanos" TO vfRa
 ENDIF
ENDPROC
*
PROCEDURE Let_3110z
 @0,0 Say Space(01)                                           Font "&mLetAri",9 Style "NQ"
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,1,15)                   Font "&mLetAri",8 Style "NQ"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,mCLN+33 Say F3110LET                                   Font "&mLetAri",9 Style "NQ"
 IF LEN(ALLTRIM(f3110ref))<=14
      @vLIN,mCLN+48 Say F3110REF                                Font "&mLetAri",9 Style "NQ"
 ENDIF
 @vLIN,mCLN+75  Say "LIMA"                                    Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+136 Say vSIG                                      Font "&mLetAri",9 Style "NQ" Size 1,5.1
 @vLIN,mCLN+152 Say F3110TOT                                  Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "99,999.99"
 STORE vlIn+0.3 TO vlIn
 IF LEN(ALLTRIM(f3110ref))>14
      @vLIN,mCLN+48 Say Substr(F3110REF,16,15)                  Font "&mLetAri",8 Style "NQ"
 ENDIF
 @vLIN,mCLN+97    Say F3110FEM                                Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118.5 Say F3110FVE                                Font "&mLetAri",9 Style "NQ"
 STORE vlIn+3.3 TO vlIn
 @vLIN,mCLN+30  Say "Rosa Natividad Carmen Yanehtt Caceres Ojeda" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+30 Say "*** "+vFRA+" "+Replicate("*",80)          Font "&mLetAri",9 Style "NQ" Size 1,82 Pict "@S84"
 STORE vlIn+4.0 TO vlIn
 IF LEN(ALLTRIM(f3110nom))<=46
      @vLIN,mCLN+39 Say F3110NOM                                Font "&mLetAri",9 Style "NQ" Size 1,48 Pict "@S50"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110nom))>46
      @vLIN,mCLN+27 Say F3110NOM                                Font "&mLetAri",8 Style "NQ" Size 1,62 Pict "@S62"
 ENDIF
 STORE vlIn+1.15 TO vlIn
 IF LEN(ALLTRIM(f3110dir))+LEN(ALLTRIM(f3110dis))>46
      @vLIN,mCLN+39 Say AllTrim(F3110DIR)+" "+AllTrim(F3110DIS) Font "&mLetAri",8 Style "NQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+39 Say AllTrim(F3110DIR)+" "+AllTrim(F3110DIS) Font "&mLetAri",9 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(f3110ruc))=11
      @vLIN,mCLN+38 Say F3110RUC                                Font "&mLetAri",9 Style "NQ"
 ELSE
      @vLIN,mCLN+38 Say F3110ELE                                Font "&mLetAri",9 Style "NQ"
 ENDIF
 @vLIN,mCLN+74  Say F3110TEL                                  Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+122 Say F3110AVA                                  Font "&mLetAri",7 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 IF LEN(ALLTRIM(f3110ano))>46
      @vLIN,mCLN+33 Say F3110ANO                                Font "&mLetAri",8 Style "NQ" Size 1,58 Pict "@S58"
 ELSE
      @vLIN,mCLN+33 Say F3110ANO                                Font "&mLetAri",9 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+2.3 TO vlIn
 IF LEN(ALLTRIM(f3110adi))+LEN(ALLTRIM(f3110ads))>46
      @vLIN,mCLN+35 Say AllTrim(F3110ADI)+" "+AllTrim(F3110ADS) Font "&mLetAri",8 Style "NQ" Size 1,56 Pict "@S56"
 ELSE
      @vLIN,mCLN+35 Say AllTrim(F3110ADI)+" "+AllTrim(F3110ADS) Font "&mLetAri",9 Style "NQ" Size 1,48 Pict "@S48"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF LEN(ALLTRIM(f3110aru))<>0
      @vLIN,mCLN+35 Say F3110ARU                                Font "&mLetAri",9 Style "NQ"
 ELSE
      @vLIN,mCLN+35 Say F3110AEL                                Font "&mLetAri",9 Style "NQ"
 ENDIF
 @vLIN,mCLN+79 Say F3110ATL                                   Font "&mLetAri",9 Style "NQ"
ENDPROC
*
