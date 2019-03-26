 PARAMETER pkAr
 = INKEY(0.01)
 STORE 01 TO vsW4
 STORE 03 TO vsW6
 STORE 99 TO mkEy
 STORE 00 TO vsW8, vsW9
 STORE " " TO ytDo, ysEr, ydOc, ztDo, zsEr, zdOc
 WAIT WINDOW NOWAIT "Organizando entrada..."
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT kaRdex
 DO orD_0000a WITH "2990", "A", "F2990SLD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Leyendo Saldo Inicial..."
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 SEEK ALLTRIM(vcOd)+"*"
 STORE f2990sld TO vsLd
 WAIT WINDOW NOWAIT "Leyendo Orden..."
 DO orD_2112d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Leyendo Saldo Final..."
 SET NEAR ON
 SEEK ALLTRIM(vcOd)+"*Z"
 SET NEAR OFF
 IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
      IF EOF()
           GOTO BOTTOM
      ELSE
           SKIP -1
      ENDIF
 ENDIF
 IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO" .AND.  ;
    (LEN(ALLTRIM(f2990td1))=0 .OR. LEN(ALLTRIM(f2990srf))=0 .OR.  ;
    LEN(ALLTRIM(f2990fac))=0)))
      DO WHILE .T.
           SKIP -1
           IF BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                STORE "No hay Movimientos en el Kardex..." TO mmSj
                DO poNmsj
                RETURN
           ENDIF
           IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO" .AND.  ;
              (LEN(ALLTRIM(f2990td1))=0 .OR. LEN(ALLTRIM(f2990srf))=0  ;
              .OR. LEN(ALLTRIM(f2990fac))=0)))
                LOOP
           ENDIF
           EXIT
      ENDDO
 ENDIF
 STORE CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano) TO ufEm
 IF DATE()>ufEm
      IF SUBSTR(DTOC(DATE()), 7, 4)<>f2990ano .OR. SUBSTR(DTOC(DATE()), 4,  ;
         2)<>f2990mes
           DO CASE
                CASE f2990mes="01" .OR. f2990mes="03" .OR. f2990mes="05"  ;
                     .OR. f2990mes="07" .OR. f2990mes="08" .OR. f2990mes= ;
                     "10" .OR. f2990mes="12"
                     STORE CTOD("31/"+f2990mes+"/"+f2990ano) TO ufEm
                CASE f2990mes="04" .OR. f2990mes="06" .OR. f2990mes="09"  ;
                     .OR. f2990mes="11"
                     STORE CTOD("30/"+f2990mes+"/"+f2990ano) TO ufEm
                CASE f2990mes="02" .AND. VAL(f2990ano)/4=INT(VAL(f2990ano)/4)
                     STORE CTOD("29/"+f2990mes+"/"+f2990ano) TO ufEm
                CASE f2990mes="02"
                     STORE CTOD("28/"+f2990mes+"/"+f2990ano) TO ufEm
           ENDCASE
      ELSE
           STORE CTOD(SUBSTR(DTOC(DATE()), 1, 2)+"/"+f2990mes+"/"+ ;
                 f2990ano) TO ufEm
      ENDIF
 ENDIF
 WAIT WINDOW NOWAIT "Calculando Saldos..."
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 SEEK ALLTRIM(vcOd)+"*"
 STORE 0 TO vtSl, vtSa
 STORE CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano) TO dfEm
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
      IF f2990tpo="2"
           STORE vtSa+f2990can TO vtSa
      ENDIF
      STORE f2990sld TO vtSl
      STORE CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano) TO hfEm
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Leyendo Movimientos..."
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 SEEK ALLTRIM(vcOd)+"*"
 IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO" .AND.  ;
    (LEN(ALLTRIM(f2990td1))=0 .OR. LEN(ALLTRIM(f2990srf))=0 .OR.  ;
    LEN(ALLTRIM(f2990fac))=0)))
      DO WHILE .T.
           SKIP
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                STORE "No hay Movimientos en el Kardex..." TO mmSj
                DO poNmsj
                RETURN
           ENDIF
           IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO" .AND.  ;
              (LEN(ALLTRIM(f2990td1))=0 .OR. LEN(ALLTRIM(f2990srf))=0  ;
              .OR. LEN(ALLTRIM(f2990fac))=0)))
                LOOP
           ENDIF
           EXIT
      ENDDO
 ENDIF
 STORE CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano) TO ifEm
 IF f2990dia<>"01"
      STORE CTOD("01/"+f2990mes+"/"+f2990ano) TO ifEm
 ENDIF
 WAIT CLEAR
 DO p00_2112d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2112d
 STORE ifFs TO vfFs
 DO muE_2112d WITH "i", "v"
 DO seE_2112d WITH "v"
 DO diS_2112d WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2112d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2112d
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2112d WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO seE_2112d WITH "v"
      IF EOF()
           STORE "Se ha eliminado este Movimiento..." TO mmSj
           DO poNmsj
           mkEy = INKEY(0.05)
           STORE 99 TO mkEy
           EXIT
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2112d WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_2112d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2112d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mcAj=1 .AND. vsRr=1 .AND. (mkEy=k_Left .OR. mkEy=k_Right)
                DO CASE
                     CASE vsW4=2
                          STORE 1 TO vsW4
                     OTHERWISE
                          STORE 2 TO vsW4
                ENDCASE
                DO caM_2112d WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE mkEy=k_Ctrl_right .AND. vsW6=3
                          STORE 1 TO vsW6
                     CASE mkEy=k_Ctrl_right
                          STORE vsW6+1 TO vsW6
                     CASE mkEy=k_Ctrl_left .AND. vsW6=1
                          STORE 3 TO vsW6
                     CASE mkEy=k_Ctrl_left
                          STORE vsW6-1 TO vsW6
                ENDCASE
                DO caM_2112d WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Tab .AND. vsW6<>3 .AND. wtPo="3"
                STORE "En este orden no se puede pasar a Excel..." TO mmSj
           CASE mkEy=k_Tab .AND. vsW8=1 .AND. vsW9=1 .AND. wtPo="3" .AND.  ;
                ydOc=" "
                STORE "Inicio no esta marcado..." TO mmSj
           CASE mkEy=k_Tab .AND. vsW8=1 .AND. vsW9=1 .AND. wtPo="3" .AND.  ;
                zdOc=" "
                STORE "Final no esta marcado..." TO mmSj
           CASE mkEy=k_Tab .AND. vsW8=1 .AND. vsW9=1 .AND. wtPo="3"
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                SELECT tmP_hoja
                SET ORDER TO FTM4COD
                SELECT kaRdex
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                DO CASE
                     CASE yaNo+ymEs+ydIa+ytPo+ytPp+ytDo+ysEr+ydOc<zaNo+ ;
                          zmEs+zdIa+ztPo+ztPp+ztDo+zsEr+zdOc
                          DO seE_2112d WITH "y"
                     OTHERWISE
                          DO seE_2112d WITH "z"
                ENDCASE
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                   ALLTRIM(vcOd)+"*"
                     DO CASE
                          CASE yaNo+ymEs+ydIa+ytPo+ytPp+ytDo+ysEr+ydOc< ;
                               zaNo+zmEs+zdIa+ztPo+ztPp+ztDo+zsEr+zdOc  ;
                               .AND. f2990ano+f2990mes+f2990dia+f2990tpo+ ;
                               f2990tpp+f2990tdo+f2990ser+f2990doc>zaNo+ ;
                               zmEs+zdIa+ztPo+ztPp+ztDo+zsEr+zdOc
                               EXIT
                          CASE zaNo+zmEs+zdIa+ztPo+ztPp+ztDo+zsEr+zdOc< ;
                               yaNo+ymEs+ydIa+ytPo+ytPp+ytDo+ysEr+ydOc  ;
                               .AND. f2990ano+f2990mes+f2990dia+f2990tpo+ ;
                               f2990tpp+f2990tdo+f2990ser+f2990doc>yaNo+ ;
                               ymEs+ydIa+ytPo+ytPp+ytDo+ysEr+ydOc
                               EXIT
                          CASE yaNo+ymEs+ydIa+ytPo+ytPp+ytDo+ysEr+ydOc< ;
                               zaNo+zmEs+zdIa+ztPo+ztPp+ztDo+zsEr+zdOc  ;
                               .AND. f2990ano+f2990mes+f2990dia+f2990tpo+ ;
                               f2990tpp+f2990tdo+f2990ser+f2990doc<yaNo+ ;
                               ymEs+ydIa+ytPo+ytPp+ytDo+ysEr+ydOc
                               SKIP
                               LOOP
                          CASE zaNo+zmEs+zdIa+ztPo+ztPp+ztDo+zsEr+zdOc< ;
                               yaNo+ymEs+ydIa+ytPo+ytPp+ytDo+ysEr+ydOc  ;
                               .AND. f2990ano+f2990mes+f2990dia+f2990tpo+ ;
                               f2990tpp+f2990tdo+f2990ser+f2990doc<zaNo+ ;
                               zmEs+zdIa+ztPo+ztPp+ztDo+zsEr+zdOc
                               SKIP
                               LOOP
                     ENDCASE
                     STORE f2990tdo TO ctDo
                     STORE f2990ser TO csEr
                     STORE f2990doc TO cdOc
                     STORE f2990can TO ccAn
                     STORE CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano) TO cfCc
                     SELECT tmP_hoja
                     SEEK ALLTRIM(vcOd)+"*"+ctDo+csEr+cdOc
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM4cod WITH vcOd
                          REPLACE ftM4tdo WITH ctDo
                          REPLACE ftM4ser WITH csEr
                          REPLACE ftM4doc WITH cdOc
                          REPLACE ftM4can WITH 0
                          REPLACE ftM4fem WITH cfCc
                     ENDIF
                     REPLACE ftM4can WITH ftM4can+ccAn
                     SELECT kaRdex
                     SKIP
                ENDDO
                SELECT tmP_hoja
                SET ORDER TO
                WAIT CLEAR
                SELECT kaRdex
                STORE 0 TO vsW8, vsW9, cfFs
                STORE " " TO ytDo, ysEr, ydOc, ztDo, zsEr, zdOc
                DO muE_2112d WITH "v", "x"
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                DO seE_2112d WITH "i"
                DO pa1_2112d
                IF cfFs=0
                     STORE ifFs TO vfFs
                     DO muE_2112d WITH "i", "v"
                ELSE
                     STORE cfFs TO vfFs
                     DO muE_2112d WITH "x", "v"
                ENDIF
                DO seE_2112d WITH "v"
                DO diS_2112d WITH "R"
           CASE mkEy=k_Alt_z .AND. wtPo="3"
                DO CASE
                     CASE vsW8=1 .AND. vtDo+vsEr+vdOc=ytDo+ysEr+ydOc
                          STORE 0 TO vsW8
                          STORE " " TO ytDo, ysEr, ydOc
                     CASE vsW9=1 .AND. vtDo+vsEr+vdOc=ztDo+zsEr+zdOc
                          STORE 0 TO vsW9
                          STORE " " TO ztDo, zsEr, zdOc
                     CASE vsW8=0 .AND. vtDo+vsEr+vdOc=ztDo+zsEr+zdOc
                          STORE "Este Documento ya esta marcado1..." TO mmSj
                     CASE vsW8=0
                          STORE 1 TO vsW8
                          DO muE_2112d WITH "v", "y"
                     CASE vsW9=0 .AND. vtDo+vsEr+vdOc=ytDo+ysEr+ydOc
                          STORE "Este Documento ya esta marcado2..." TO mmSj
                     CASE vsW9=0
                          STORE 1 TO vsW9
                          DO muE_2112d WITH "v", "z"
                     CASE vsW8=1 .AND. vsW9=1
                          STORE "Ya esta marcado principio y fin..." TO mmSj
                ENDCASE
                DO diS_2112d WITH "R"
           CASE mkEy=k_F2
                DO diS_2112d WITH "N"
                SKIP
                IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                     STORE "Ya no hay más datos en el Kardex de este producto..."  ;
                           TO mmSj
                ELSE
                     STORE 0 TO vsW5
                     DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                        ALLTRIM(vcOd)+"*"
                          IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo= ;
                             "CO" .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                             LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                             LEN(ALLTRIM(f2990fac))=0)))
                               SKIP
                               LOOP
                          ENDIF
                          IF (pkAr="1" .AND. f2990sls<0) .OR. (pkAr="2"  ;
                             .AND. f2990sld<0)
                               STORE f2990tdo TO ctDo
                               STORE f2990ser TO csEr
                               STORE f2990doc TO cdOc
                               STORE f2990tpo TO ctPo
                               STORE f2990tpp TO ctPp
                               STORE f2990ano TO caNo
                               STORE f2990mes TO cmEs
                               STORE f2990dia TO cdIa
                               STORE 1 TO vsW5
                               EXIT
                          ENDIF
                          SKIP
                     ENDDO
                     DO CASE
                          CASE vsW5=0
                               STORE "No hay Negativos a partir de la Fecha buscada..."  ;
                                     TO mmSj
                          OTHERWISE
                               DO CASE
                                    CASE vsW6=1
                                         STORE ctDo+csEr+cdOc+caNo+cmEs+ ;
                                          cdIa+ctPo+ctPp TO ccDd
                                         STORE itDo+isEr+idOc+iaNo+imEs+ ;
                                          idIa+itPo+itPp TO icDd
                                         STORE utDo+usEr+udOc+uaNo+umEs+ ;
                                          udIa+utPo+utPp TO ucDd
                                    CASE vsW6=2
                                         STORE ctDo+caNo+cmEs+cdIa+csEr+ ;
                                          cdOc+ctPo+ctPp TO ccDd
                                         STORE itDo+iaNo+imEs+idIa+isEr+ ;
                                          idOc+itPo+itPp TO icDd
                                         STORE utDo+uaNo+umEs+udIa+usEr+ ;
                                          udOc+utPo+utPp TO ucDd
                                    CASE vsW6=3
                                         STORE caNo+cmEs+cdIa+ctPo+ctPp+ ;
                                          ctDo+csEr+cdOc TO ccDd
                                         STORE iaNo+imEs+idIa+itPo+itPp+ ;
                                          itDo+isEr+idOc TO icDd
                                         STORE uaNo+umEs+udIa+utPo+utPp+ ;
                                          utDo+usEr+udOc TO ucDd
                               ENDCASE
                               DO CASE
                                    CASE vsW6>=1 .AND. ccDd>=icDd .AND.  ;
                                     ccDd<=ucDd
                                         SEEK ALLTRIM(vcOd)+"*"+icDd
                                         STORE ifFs TO cfFs
                                         DO WHILE  .NOT. EOF() .AND.  ;
                                          ALLTRIM(f2990cod)+"*"= ;
                                          ALLTRIM(vcOd)+"*" .AND. cfFs<ffFs+1
                                              IF pkAr="1" .AND. (f2990tdo= ;
                                               "NP" .OR. (f2990tdo="CO"  ;
                                               .AND.  ;
                                               (LEN(ALLTRIM(f2990td1))=0  ;
                                               .OR.  ;
                                               LEN(ALLTRIM(f2990srf))=0  ;
                                               .OR. LEN(ALLTRIM(f2990fac))=0)))
                                                   SKIP
                                                   LOOP
                                              ENDIF
                                              DO CASE
                                                   CASE vsW6=1
                                                        STORE f2990tdo+ ;
                                                         f2990ser+ ;
                                                         f2990doc+ ;
                                                         f2990ano+ ;
                                                         f2990mes+ ;
                                                         f2990dia+ ;
                                                         f2990tpo+ ;
                                                         f2990tpp TO vcDd
                                                   CASE vsW6=2
                                                        STORE f2990tdo+ ;
                                                         f2990ano+ ;
                                                         f2990mes+ ;
                                                         f2990dia+ ;
                                                         f2990ser+ ;
                                                         f2990doc+ ;
                                                         f2990tpo+ ;
                                                         f2990tpp TO vcDd
                                                   CASE vsW6=3
                                                        STORE f2990ano+ ;
                                                         f2990mes+ ;
                                                         f2990dia+ ;
                                                         f2990tpo+ ;
                                                         f2990tpp+ ;
                                                         f2990tdo+ ;
                                                         f2990ser+ ;
                                                         f2990doc TO vcDd
                                              ENDCASE
                                              IF vcDd=ccDd
                                                   DO muE_2112d WITH "F", "v"
                                                   STORE cfFs TO vfFs
                                                   EXIT
                                              ENDIF
                                              STORE cfFs+1 TO cfFs
                                              SKIP
                                         ENDDO
                                    OTHERWISE
                                         SEEK ALLTRIM(vcOd)+"*"+ccDd
                                         DO paN_2112d
                                         STORE ifFs TO vfFs
                                         DO muE_2112d WITH "i", "v"
                               ENDCASE
                     ENDCASE
                ENDIF
                DO seE_2112d WITH "v"
                DO diS_2112d WITH "R"
           CASE mkEy=k_F5 .AND. wtPo="3"
                STORE f2990tdo TO xtDo
                STORE f2990ser TO xsEr
                STORE f2990doc TO xdOc
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE CTOD(cdIa+"/"+cmEs+"/"+caNo) TO xfDe
                DO p1_0000a
                STORE k_Enter TO mkEy
                SET CONFIRM ON
                SET CURSOR ON
                SET READBORDER OFF
                @vFFS,mCO0+19.3 Get xFDE Font "&mLetAri",9 Style "BQ" Size 1,10.2 Color ,4/3
                READ
                SET CURSOR OFF
                SET CONFIRM OFF
                SET READBORDER ON
                DO q1_0000a
                IF mkEy=k_Tab
                     WAIT WINDOW NOCLEAR NOWAIT "Orden de Kardex..."
                     SELECT kaRdex
                     DO orD_0000a WITH "2990", "A", "F2990COD", "A"
                     IF mkEy=k_Esc
                          UNLOCK ALL
                          WAIT CLEAR
                          = INKEY(0.01)
                          RETURN
                     ENDIF
                     WAIT WINDOW NOCLEAR NOWAIT  ;
                          "Leyendo registro actual del Kardex..."
                     DO seE_2112d WITH "v"
                     STORE vtDo TO xtDo
                     STORE vsEr TO xsEr
                     STORE vdOc TO xdOc
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+vaNo+vmEs+ ;
                             vdIa+vtPo+vtPp+vtDo+vsEr+vdOc
                          IF mkEy=k_Esc
                               UNLOCK ALL
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     REPLACE f2990dia WITH SUBSTR(DTOC(xfDe), 1, 2)
                     REPLACE f2990mes WITH SUBSTR(DTOC(xfDe), 4, 2)
                     REPLACE f2990ano WITH SUBSTR(DTOC(xfDe), 7, 4)
                     UNLOCK
                     WAIT WINDOW NOCLEAR NOWAIT "Cambiando Documento..."
                     DO CASE
                          CASE vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"  ;
                               .OR. vtDo="BO" .OR. vtDo="BE" .OR. vtDo= ;
                               "BC" .OR. vtDo="NP"
                               SELECT deT_fact
                               SET ORDER TO F1301COD
                               GOTO TOP
                               SEEK ALLTRIM(vcOd)+"*"+xtDo+xsEr+xdOc
                               IF  .NOT. EOF()
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH ALLTRIM(vcOd)+ ;
                                          "*"+xtDo+xsEr+xdOc
                                         IF mkEy=k_Esc
                                              UNLOCK ALL
                                              WAIT CLEAR
                                              = INKEY(0.01)
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    REPLACE f1301fde WITH xfDe
                                    UNLOCK
                               ELSE
                                    SELECT coN_fact
                                    SET ORDER TO F1304CDG
                                    GOTO TOP
                                    SEEK ALLTRIM(vcOd)+"*"+xtDo+xsEr+xdOc
                                    IF  .NOT. EOF()
                                         STORE f1304cod TO vcDg
                                         SELECT deT_fact
                                         SEEK ALLTRIM(vcDg)+"*"+xtDo+xsEr+xdOc
                                         IF  .NOT. EOF()
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcDg)+"*"+ ;
                                                    xtDo+xsEr+xdOc
                                                   IF mkEy=k_Esc
                                                        UNLOCK ALL
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                         ENDIF
                                         REPLACE f1301fde WITH xfDe
                                         UNLOCK
                                    ENDIF
                                    SELECT coN_fact
                                    SET ORDER TO F1304DOC
                               ENDIF
                               SELECT deT_fact
                               SET ORDER TO F1301DOC
                          CASE vtDo="CO" .OR. vtDo="IM"
                               SELECT caB_cpra
                               SEEK xtDo+xsEr+xdOc
                               IF  .NOT. RLOCK()
                                    DO reG_lock WITH xtDo+xsEr+xdOc
                                    IF mkEy=k_Esc
                                         UNLOCK ALL
                                         WAIT CLEAR
                                         = INKEY(0.01)
                                         RETURN
                                    ENDIF
                               ELSE
                                    RLOCK()
                               ENDIF
                               REPLACE f2400fin WITH xfDe
                               UNLOCK
                          CASE vtDo="GI"
                               SELECT caB_ingr
                               SEEK xtDo+xsEr+xdOc
                               IF  .NOT. RLOCK()
                                    DO reG_lock WITH xtDo+xsEr+xdOc
                                    IF mkEy=k_Esc
                                         UNLOCK ALL
                                         WAIT CLEAR
                                         = INKEY(0.01)
                                         RETURN
                                    ENDIF
                               ELSE
                                    RLOCK()
                               ENDIF
                               REPLACE f2700fem WITH xfDe
                               UNLOCK
                               SELECT deT_ingr
                               SEEK xtDo+xsEr+xdOc
                               IF  .NOT. EOF() .AND. LEN(ALLTRIM(f2701cdg))<>0
                                    STORE f2701cdg TO vcDg
                                    STORE f2701sgs TO vsGs
                                    STORE f2701ngs TO vnGs
                                    SELECT caB_sali
                                    SEEK "GS"+vsGs+vnGs
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH "GS"+vsGs+vnGs
                                         IF mkEy=k_Esc
                                              UNLOCK ALL
                                              WAIT CLEAR
                                              = INKEY(0.01)
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    STORE SUBSTR(DTOC(f2800fem), 7, 4) TO caN1
                                    STORE SUBSTR(DTOC(f2800fem), 4, 2) TO cmE1
                                    STORE SUBSTR(DTOC(f2800fem), 1, 2) TO cdI1
                                    REPLACE f2800fem WITH xfDe
                                    UNLOCK
                                    SELECT kaRdex
                                    SEEK ALLTRIM(vcDg)+"*"+caN1+cmE1+cdI1+ ;
                                     "21"+"GS"+vsGs+vnGs
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH ALLTRIM(vcDg)+ ;
                                          "*"+caN1+cmE1+cdI1+"21"+"GS"+ ;
                                          vsGs+vnGs
                                         IF mkEy=k_Esc
                                              UNLOCK ALL
                                              WAIT CLEAR
                                              = INKEY(0.01)
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    SET ORDER TO
                                    REPLACE f2990ano WITH  ;
                                     SUBSTR(DTOC(xfDe), 7, 4)
                                    REPLACE f2990mes WITH  ;
                                     SUBSTR(DTOC(xfDe), 4, 2)
                                    REPLACE f2990dia WITH  ;
                                     SUBSTR(DTOC(xfDe), 1, 2)
                                    UNLOCK
                                    FLUSH
                                    DO orD_0000a WITH "2990", "A",  ;
                                       "F2990COD", "A"
                                    IF mkEy=k_Esc
                                         UNLOCK ALL
                                         WAIT CLEAR
                                         = INKEY(0.01)
                                         RETURN
                                    ENDIF
                                    WAIT WINDOW NOCLEAR NOWAIT  ;
                                     "Recalculando Kardex de GS..."
                                    SELECT kaRdex
                                    SEEK ALLTRIM(vcDg)+"*"
                                    STORE 0 TO tpRm, vsTo, vsLc, vsTs,  ;
                                     vsCs, vpRm
                                    DO WHILE  .NOT. EOF() .AND.  ;
                                       ALLTRIM(f2990cod)+"*"=ALLTRIM(vcDg)+"*"
                                         STORE f2990ano TO vaNo
                                         STORE f2990mes TO vmEs
                                         STORE f2990dia TO vdIa
                                         STORE f2990tpo TO vtPo
                                         STORE f2990tpp TO vtPp
                                         STORE f2990tdo TO vtDo
                                         STORE f2990ser TO vsEr
                                         STORE f2990doc TO vdOc
                                         SEEK ALLTRIM(vcDg)+"*"+vaNo+vmEs+ ;
                                          vdIa+vtPo+vtPp+vtDo+vsEr+vdOc
                                         IF  .NOT. RLOCK()
                                              DO reG_lock WITH  ;
                                               ALLTRIM(vcDg)+"*"+vaNo+ ;
                                               vmEs+vdIa+vtPo+vtPp+vtDo+ ;
                                               vsEr+vdOc
                                              IF mkEy=k_Esc
                                                   UNLOCK ALL
                                                   WAIT CLEAR
                                                   = INKEY(0.01)
                                                   RETURN
                                              ENDIF
                                         ELSE
                                              RLOCK()
                                         ENDIF
                                         DO CASE
                                              CASE f2990tpo="1" .AND.  ;
                                               f2990tpp="0" .AND.  ;
                                               f2990td1<>"NC"
                                                   STORE f2990can TO vsTo
                                                   STORE f2990caj TO vsLc
                                              CASE f2990tpo="1" .AND.  ;
                                               f2990tpp="0"
                                                   STORE f2990can*-1 TO vsTo
                                                   STORE f2990caj*-1 TO vsLc
                                              CASE f2990tpo="1" .AND.  ;
                                               f2990td1<>"NC" .AND. (vsTo+ ;
                                               f2990can<=0 .OR. vsTo<=0)
                                                   STORE vsTo+f2990can TO vsTo
                                                   STORE vsLc+f2990caj TO vsLc
                                              CASE f2990tpo="1" .AND.  ;
                                               f2990td1<>"NC"
                                                   STORE vsTo+f2990can TO vsTo
                                                   STORE vsLc+f2990caj TO vsLc
                                              CASE f2990tpo$"12"
                                                   STORE vsTo-f2990can TO vsTo
                                                   STORE vsLc-f2990caj TO vsLc
                                         ENDCASE
                                         IF f2990tdo="NP" .OR. (f2990tdo= ;
                                          "CO" .AND.  ;
                                          (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990fac))=0))
                                         ELSE
                                              DO CASE
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990tpp="0"  ;
                                                    .AND. f2990td1<>"NC"
                                                        STORE f2990can TO vsTs
                                                        STORE f2990caj TO vsCs
                                                        STORE f2990cos+ ;
                                                         f2990gas- ;
                                                         f2990dct TO vpRm
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990tpp="0"
                                                        STORE f2990can*-1  ;
                                                         TO vsTs
                                                        STORE f2990caj*-1  ;
                                                         TO vsCs
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990td1<>"NC"  ;
                                                    .AND. (vsTs+f2990can<= ;
                                                    0 .OR. vsTs<=0)
                                                        STORE vsTs+ ;
                                                         f2990can TO vsTs
                                                        STORE vsCs+ ;
                                                         f2990caj TO vsCs
                                                        STORE f2990cos+ ;
                                                         f2990gas- ;
                                                         f2990dct TO vpRm
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990td1<>"NC"
                                                        STORE vsTs+ ;
                                                         f2990can TO vsTs
                                                        STORE vsCs+ ;
                                                         f2990caj TO vsCs
                                                        STORE f2990cos+ ;
                                                         f2990gas- ;
                                                         f2990dct TO pcOs
                                                        STORE pcOs* ;
                                                         f2990can TO pcOs
                                                        STORE tpRm+pcOs TO tpRm
                                                        STORE ROUND(tpRm/ ;
                                                         vsTs, 4) TO vpRm
                                                   CASE f2990tpo$"12"
                                                        STORE vsTs- ;
                                                         f2990can TO vsTs
                                                        STORE vsCs- ;
                                                         f2990caj TO vsCs
                                              ENDCASE
                                         ENDIF
                                         REPLACE f2990sld WITH vsTo
                                         REPLACE f2990slc WITH vsLc
                                         REPLACE f2990sls WITH vsTs
                                         REPLACE f2990scs WITH vsCs
                                         REPLACE f2990prm WITH vpRm
                                         UNLOCK
                                         STORE f2990sls*f2990prm TO tpRm
                                         SKIP
                                    ENDDO
                               ENDIF
                          CASE vtDo="GS"
                               SELECT caB_sali
                               SEEK xtDo+xsEr+xdOc
                               IF  .NOT. RLOCK()
                                    DO reG_lock WITH xtDo+xsEr+xdOc
                                    IF mkEy=k_Esc
                                         UNLOCK ALL
                                         WAIT CLEAR
                                         = INKEY(0.01)
                                         RETURN
                                    ENDIF
                               ELSE
                                    RLOCK()
                               ENDIF
                               REPLACE f2800fem WITH xfDe
                               UNLOCK
                               SELECT deT_sali
                               SEEK xtDo+xsEr+xdOc
                               IF  .NOT. EOF() .AND. LEN(ALLTRIM(f2801cdg))<>0
                                    STORE f2801cdg TO vcDg
                                    STORE f2801sgi TO vsGs
                                    STORE f2801ngi TO vnGs
                                    SELECT caB_ingr
                                    SEEK "GI"+vsGs+vnGs
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH "GI"+vsGs+vnGs
                                         IF mkEy=k_Esc
                                              UNLOCK ALL
                                              WAIT CLEAR
                                              = INKEY(0.01)
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    STORE SUBSTR(DTOC(f2700fem), 7, 4) TO caN1
                                    STORE SUBSTR(DTOC(f2700fem), 4, 2) TO cmE1
                                    STORE SUBSTR(DTOC(f2700fem), 1, 2) TO cdI1
                                    REPLACE f2700fem WITH xfDe
                                    UNLOCK
                                    SELECT kaRdex
                                    SEEK ALLTRIM(vcDg)+"*"+caN1+cmE1+cdI1+ ;
                                     "11"+"GI"+vsGs+vnGs
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH ALLTRIM(vcDg)+ ;
                                          "*"+caN1+cmE1+cdI1+"11"+"GI"+ ;
                                          vsGs+vnGs
                                         IF mkEy=k_Esc
                                              UNLOCK ALL
                                              WAIT CLEAR
                                              = INKEY(0.01)
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    SET ORDER TO
                                    REPLACE f2990ano WITH  ;
                                     SUBSTR(DTOC(xfDe), 7, 4)
                                    REPLACE f2990mes WITH  ;
                                     SUBSTR(DTOC(xfDe), 4, 2)
                                    REPLACE f2990dia WITH  ;
                                     SUBSTR(DTOC(xfDe), 1, 2)
                                    UNLOCK
                                    FLUSH
                                    DO orD_0000a WITH "2990", "A",  ;
                                       "F2990COD", "A"
                                    IF mkEy=k_Esc
                                         UNLOCK ALL
                                         WAIT CLEAR
                                         = INKEY(0.01)
                                         RETURN
                                    ENDIF
                                    WAIT WINDOW NOCLEAR NOWAIT  ;
                                     "Recalculando Kardex de GI..."
                                    SELECT kaRdex
                                    SEEK ALLTRIM(vcDg)+"*"
                                    STORE 0 TO tpRm, vsTo, vsLc, vsTs,  ;
                                     vsCs, vpRm
                                    DO WHILE  .NOT. EOF() .AND.  ;
                                       ALLTRIM(f2990cod)+"*"=ALLTRIM(vcDg)+"*"
                                         STORE f2990ano TO vaNo
                                         STORE f2990mes TO vmEs
                                         STORE f2990dia TO vdIa
                                         STORE f2990tpo TO vtPo
                                         STORE f2990tpp TO vtPp
                                         STORE f2990tdo TO vtDo
                                         STORE f2990ser TO vsEr
                                         STORE f2990doc TO vdOc
                                         SEEK ALLTRIM(vcDg)+"*"+vaNo+vmEs+ ;
                                          vdIa+vtPo+vtPp+vtDo+vsEr+vdOc
                                         IF  .NOT. RLOCK()
                                              DO reG_lock WITH  ;
                                               ALLTRIM(vcDg)+"*"+vaNo+ ;
                                               vmEs+vdIa+vtPo+vtPp+vtDo+ ;
                                               vsEr+vdOc
                                              IF mkEy=k_Esc
                                                   UNLOCK ALL
                                                   WAIT CLEAR
                                                   = INKEY(0.01)
                                                   RETURN
                                              ENDIF
                                         ELSE
                                              RLOCK()
                                         ENDIF
                                         DO CASE
                                              CASE f2990tpo="1" .AND.  ;
                                               f2990tpp="0" .AND.  ;
                                               f2990td1<>"NC"
                                                   STORE f2990can TO vsTo
                                                   STORE f2990caj TO vsLc
                                              CASE f2990tpo="1" .AND.  ;
                                               f2990tpp="0"
                                                   STORE f2990can*-1 TO vsTo
                                                   STORE f2990caj*-1 TO vsLc
                                              CASE f2990tpo="1" .AND.  ;
                                               f2990td1<>"NC" .AND. (vsTo+ ;
                                               f2990can<=0 .OR. vsTo<=0)
                                                   STORE vsTo+f2990can TO vsTo
                                                   STORE vsLc+f2990caj TO vsLc
                                              CASE f2990tpo="1" .AND.  ;
                                               f2990td1<>"NC"
                                                   STORE vsTo+f2990can TO vsTo
                                                   STORE vsLc+f2990caj TO vsLc
                                              CASE f2990tpo$"12"
                                                   STORE vsTo-f2990can TO vsTo
                                                   STORE vsLc-f2990caj TO vsLc
                                         ENDCASE
                                         IF f2990tdo="NP" .OR. (f2990tdo= ;
                                          "CO" .AND.  ;
                                          (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990fac))=0))
                                         ELSE
                                              DO CASE
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990tpp="0"  ;
                                                    .AND. f2990td1<>"NC"
                                                        STORE f2990can TO vsTs
                                                        STORE f2990caj TO vsCs
                                                        STORE f2990cos+ ;
                                                         f2990gas- ;
                                                         f2990dct TO vpRm
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990tpp="0"
                                                        STORE f2990can*-1  ;
                                                         TO vsTs
                                                        STORE f2990caj*-1  ;
                                                         TO vsCs
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990td1<>"NC"  ;
                                                    .AND. (vsTs+f2990can<= ;
                                                    0 .OR. vsTs<=0)
                                                        STORE vsTs+ ;
                                                         f2990can TO vsTs
                                                        STORE vsCs+ ;
                                                         f2990caj TO vsCs
                                                        STORE f2990cos+ ;
                                                         f2990gas- ;
                                                         f2990dct TO vpRm
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990td1<>"NC"
                                                        STORE vsTs+ ;
                                                         f2990can TO vsTs
                                                        STORE vsCs+ ;
                                                         f2990caj TO vsCs
                                                        STORE f2990cos+ ;
                                                         f2990gas- ;
                                                         f2990dct TO pcOs
                                                        STORE pcOs* ;
                                                         f2990can TO pcOs
                                                        STORE tpRm+pcOs TO tpRm
                                                        STORE ROUND(tpRm/ ;
                                                         vsTs, 4) TO vpRm
                                                   CASE f2990tpo$"12"
                                                        STORE vsTs- ;
                                                         f2990can TO vsTs
                                                        STORE vsCs- ;
                                                         f2990caj TO vsCs
                                              ENDCASE
                                         ENDIF
                                         REPLACE f2990sld WITH vsTo
                                         REPLACE f2990slc WITH vsLc
                                         REPLACE f2990sls WITH vsTs
                                         REPLACE f2990scs WITH vsCs
                                         REPLACE f2990prm WITH vpRm
                                         UNLOCK
                                         STORE f2990sls*f2990prm TO tpRm
                                         SKIP
                                    ENDDO
                               ENDIF
                     ENDCASE
                     UNLOCK ALL
                     FLUSH
                     WAIT WINDOW NOCLEAR NOWAIT  ;
                          "Recalculando Kardex del Código actual..."
                     UNLOCK ALL
                     SELECT kaRdex
                     GOTO TOP
                     SEEK ALLTRIM(vcOd)+"*"
                     STORE 0 TO tpRm, vsTo, vsLc, vsTs, vsCs, vpRm
                     DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                        ALLTRIM(vcOd)+"*"
                          STORE f2990ano TO vaNo
                          STORE f2990mes TO vmEs
                          STORE f2990dia TO vdIa
                          STORE f2990tpo TO vtPo
                          STORE f2990tpp TO vtPp
                          STORE f2990tdo TO vtDo
                          STORE f2990ser TO vsEr
                          STORE f2990doc TO vdOc
                          DO seE_2112d WITH "v"
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH ALLTRIM(vcOd)+"*"+vaNo+ ;
                                  vmEs+vdIa+vtPo+vtPp+vtDo+vsEr+vdOc
                               IF mkEy=k_Esc
                                    UNLOCK ALL
                                    WAIT CLEAR
                                    = INKEY(0.01)
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          DO CASE
                               CASE f2990tpo="1" .AND. f2990tpp="0" .AND.  ;
                                    f2990td1<>"NC"
                                    STORE f2990can TO vsTo
                                    STORE f2990caj TO vsLc
                               CASE f2990tpo="1" .AND. f2990tpp="0"
                                    STORE f2990can*-1 TO vsTo
                                    STORE f2990caj*-1 TO vsLc
                               CASE f2990tpo="1" .AND. f2990td1<>"NC"  ;
                                    .AND. (vsTo+f2990can<=0 .OR. vsTo<=0)
                                    STORE vsTo+f2990can TO vsTo
                                    STORE vsLc+f2990caj TO vsLc
                               CASE f2990tpo="1" .AND. f2990td1<>"NC"
                                    STORE vsTo+f2990can TO vsTo
                                    STORE vsLc+f2990caj TO vsLc
                               CASE f2990tpo$"12"
                                    STORE vsTo-f2990can TO vsTo
                                    STORE vsLc-f2990caj TO vsLc
                          ENDCASE
                          IF f2990tdo="NP" .OR. (f2990tdo="CO" .AND.  ;
                             (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                             LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                             LEN(ALLTRIM(f2990fac))=0))
                          ELSE
                               DO CASE
                                    CASE f2990tpo="1" .AND. f2990tpp="0"  ;
                                     .AND. f2990td1<>"NC"
                                         STORE f2990can TO vsTs
                                         STORE f2990caj TO vsCs
                                         STORE f2990cos+f2990gas-f2990dct  ;
                                          TO vpRm
                                    CASE f2990tpo="1" .AND. f2990tpp="0"
                                         STORE f2990can*-1 TO vsTs
                                         STORE f2990caj*-1 TO vsCs
                                    CASE f2990tpo="1" .AND. f2990td1<> ;
                                     "NC" .AND. (vsTs+f2990can<=0 .OR. vsTs<=0)
                                         STORE vsTs+f2990can TO vsTs
                                         STORE vsCs+f2990caj TO vsCs
                                         STORE f2990cos+f2990gas-f2990dct  ;
                                          TO vpRm
                                    CASE f2990tpo="1" .AND. f2990td1<>"NC"
                                         STORE vsTs+f2990can TO vsTs
                                         STORE vsCs+f2990caj TO vsCs
                                         STORE f2990cos+f2990gas-f2990dct  ;
                                          TO pcOs
                                         STORE pcOs*f2990can TO pcOs
                                         STORE tpRm+pcOs TO tpRm
                                         STORE ROUND(tpRm/vsTs, 4) TO vpRm
                                    CASE f2990tpo$"12"
                                         STORE vsTs-f2990can TO vsTs
                                         STORE vsCs-f2990caj TO vsCs
                               ENDCASE
                          ENDIF
                          REPLACE f2990sld WITH vsTo
                          REPLACE f2990slc WITH vsLc
                          REPLACE f2990sls WITH vsTs
                          REPLACE f2990scs WITH vsCs
                          REPLACE f2990prm WITH vpRm
                          UNLOCK
                          STORE f2990sls*f2990prm TO tpRm
                          SKIP
                     ENDDO
                     UNLOCK ALL
                     FLUSH
                     WAIT WINDOW NOCLEAR NOWAIT "Recalculando Inicio..."
                     DO orD_2112d
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SET NEAR ON
                     DO seE_2112d WITH "i"
                     SET NEAR OFF
                     IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                     DO muE_2112d WITH "F", "i"
                     DO muE_2112d WITH "F", "v"
                     DO paN_2112d
                     DO muE_2112d WITH "i", "v"
                     STORE ifFs TO vfFs
                     WAIT CLEAR
                ENDIF
                DO seE_2112d WITH "v"
                DO diS_2112d WITH "R"
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. wtPo="3" .AND. vtDo="GI" .AND. vsW6=3
                STORE f2990tdo TO ytDo
                STORE f2990ser TO ysEr
                STORE f2990doc TO ydOc
                STORE f2990tpp TO ytPp
                STORE f2990can TO ycAn, vcAn
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                @ ifFs+0.8, vcB3+2 TO ifFs+03.2, vcB3+77.1 PATTERN 1 PEN 1
                @ ifFs+0.0, vcB3+1 TO ifFs+04.7, vcB3+76.0 PATTERN 1 PEN 3
                @iFFS+1.0,vCB3+9 Say "Cantidad:" Font "&mLetAri",9 Style "NQ"
                DO WHILE .T.
                     DO p1_0000a
                     DO p2_0000a
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS+1,vCB3+26 Get yCAN Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9999999.9999" Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO q1_0000a
                     DO q2_0000a
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. ycAn=0 .AND. ytPp<>"0"
                               STORE "Cantidad no puede ser ceros..." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. ycAn=vcAn
                               STORE "Cantidad es igual a la anterior..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               SELECT prOductos
                               SEEK ALLTRIM(vcOd)+"*"
                               IF EOF()
                                    STORE  ;
                                     "Código no está registrado en el maestro de Productos..."  ;
                                     TO mmSj
                                    DO poNmsj
                               ELSE
                                    @ 1, 1 SAY "Grabando Guia" STYLE "BQ"  ;
                                      SIZE 1, 20
                                    SELECT deT_ingr
                                    SET ORDER TO F2701COD
                                    GOTO TOP
                                    SEEK ALLTRIM(vcOd)+"*"+ytDo+ysEr+ydOc
                                    REPLACE f2701can WITH ycAn
                                    UNLOCK
                                    SET ORDER TO F2701DOC
                                    DO grA_2112d
                                    RETURN
                               ENDIF
                     ENDCASE
                ENDDO
           CASE mkEy=k_F7 .AND. wtPo="3" .AND. vtDo="GS" .AND. vsW6=3
                STORE f2990tdo TO ytDo
                STORE f2990ser TO ysEr
                STORE f2990doc TO ydOc
                STORE f2990can TO ycAn, vcAn
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                @ ifFs+0.8, vcB3+2 TO ifFs+03.2, vcB3+77.1 PATTERN 1 PEN 1
                @ ifFs+0.0, vcB3+1 TO ifFs+04.7, vcB3+76.0 PATTERN 1 PEN 3
                @iFFS+1.0,vCB3+9 Say "Cantidad:" Font "&mLetAri",9 Style "NQ"
                DO WHILE .T.
                     DO p1_0000a
                     DO p2_0000a
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS+1,vCB3+26 Get yCAN Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9999999.9999" Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO q1_0000a
                     DO q2_0000a
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. ycAn=0
                               STORE "Cantidad no puede ser ceros..." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. ycAn=vcAn
                               STORE "Cantidad es igual a la anterior..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               SELECT prOductos
                               SEEK ALLTRIM(vcOd)+"*"
                               IF EOF()
                                    STORE  ;
                                     "Código no está registrado en el maestro de Productos..."  ;
                                     TO mmSj
                                    DO poNmsj
                               ELSE
                                    @ 1, 1 SAY "Grabando Guia" STYLE "BQ"  ;
                                      SIZE 1, 20
                                    SELECT deT_sali
                                    SET ORDER TO F2801COD
                                    GOTO TOP
                                    SEEK ALLTRIM(vcOd)+"*"+ytDo+ysEr+ydOc
                                    REPLACE f2801can WITH ycAn
                                    UNLOCK
                                    SET ORDER TO F2801DOC
                                    DO grA_2112d
                                    RETURN
                               ENDIF
                     ENDCASE
                ENDDO
           CASE mkEy=k_F7 .AND. wtPo="3" .AND. vtDo="GR" .AND. vsW6=3
                STORE f2990tdo TO ytDo
                STORE f2990ser TO ysEr
                STORE f2990doc TO ydOc
                STORE f2990can TO ycAn, vcAn
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                @ ifFs+0.8, vcB3+2 TO ifFs+03.2, vcB3+77.1 PATTERN 1 PEN 1
                @ ifFs+0.0, vcB3+1 TO ifFs+04.7, vcB3+76.0 PATTERN 1 PEN 3
                @iFFS+1.0,vCB3+9 Say "Cantidad:" Font "&mLetAri",9 Style "NQ"
                DO WHILE .T.
                     DO p1_0000a
                     DO p2_0000a
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS+1,vCB3+26 Get yCAN Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9999999.9999" Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO q1_0000a
                     DO q2_0000a
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. ycAn=0
                               STORE "Cantidad no puede ser ceros..." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. ycAn=vcAn
                               STORE "Cantidad es igual a la anterior..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               SELECT prOductos
                               SEEK ALLTRIM(vcOd)+"*"
                               IF EOF()
                                    STORE  ;
                                     "Código no está registrado en el maestro de Productos..."  ;
                                     TO mmSj
                                    DO poNmsj
                               ELSE
                                    @ 1, 1 SAY "Grabando Guia" STYLE "BQ"  ;
                                      SIZE 1, 20
                                    SELECT deT_remi
                                    SET ORDER TO F2601COD
                                    GOTO TOP
                                    SEEK ALLTRIM(vcOd)+"*"+ytDo+ysEr+ydOc
                                    REPLACE f2601can WITH ycAn
                                    UNLOCK
                                    SET ORDER TO F2601DOC
                                    DO grA_2112d
                                    RETURN
                               ENDIF
                     ENDCASE
                ENDDO
           CASE mkEy=k_F7 .AND. wtPo="3" .AND. (vtDo="FA" .OR. vtDo="FE"  ;
                .OR. vtDo="FC" .OR. vtDo="BO" .OR. vtDo="BE" .OR. vtDo= ;
                "BC") .AND. vsW6=3
                STORE f2990tdo TO ytDo
                STORE f2990ser TO ysEr
                STORE f2990doc TO ydOc
                STORE f2990can TO ycAn, vcAn
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                @ ifFs+0.8, vcB3+2 TO ifFs+03.2, vcB3+77.1 PATTERN 1 PEN 1
                @ ifFs+0.0, vcB3+1 TO ifFs+04.7, vcB3+76.0 PATTERN 1 PEN 3
                @iFFS+1.0,vCB3+9 Say "Cantidad:" Font "&mLetAri",9 Style "NQ"
                DO WHILE .T.
                     DO p1_0000a
                     DO p2_0000a
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS+1,vCB3+26 Get yCAN Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999999.9999"     Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO q1_0000a
                     DO q2_0000a
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. ycAn=0
                               STORE "Cantidad no puede ser ceros..." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. ycAn=vcAn
                               STORE "Cantidad es igual a la anterior..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               SELECT prOductos
                               SEEK ALLTRIM(vcOd)+"*"
                               IF EOF()
                                    STORE  ;
                                     "Código no está registrado en el maestro de Productos..."  ;
                                     TO mmSj
                                    DO poNmsj
                               ELSE
                                    @ 1, 1 SAY "Grabando Vta" STYLE "BQ"  ;
                                      SIZE 1, 20
                                    SELECT deT_fact
                                    SET ORDER TO F1301COD
                                    GOTO TOP
                                    SEEK ALLTRIM(vcOd)+"*"+ytDo+ysEr+ydOc
                                    REPLACE f1301can WITH ycAn
                                    UNLOCK
                                    SET ORDER TO F1301DOC
                                    DO grA_2112d
                                    RETURN
                               ENDIF
                     ENDCASE
                ENDDO
           CASE mkEy=k_F7 .AND. wtPo="3" .AND. f2990tdo="CO" .AND. vsW6=3
                STORE f2990tdo TO ytDo
                STORE f2990ser TO ysEr
                STORE f2990doc TO ydOc
                STORE SPACE(15) TO ynUe
                STORE 0 TO ycAn
                SET READBORDER ON
                SAVE SCREEN TO vpAn_12
                @ ifFs+0.8, vcB3+2 TO ifFs+05.2, vcB3+77.1 PATTERN 1 PEN 1
                @ ifFs+0.0, vcB3+1 TO ifFs+04.7, vcB3+76.0 PATTERN 1 PEN 3
                @iFFS+1.0,vCB3+9 Say "Código:"   Font "&mLetAri",9 Style "NQ"
                @iFFS+3.0,vCB3+9 Say "Cantidad:" Font "&mLetAri",9 Style "NQ"
                DO WHILE .T.
                     DO p1_0000a
                     DO p2_0000a
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS+1,vCB3+26 Get yNUE Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "!!!!!!!!!!!!!!!" Color ,&mColBlN
                     @iFFS+3,vCB3+26 Get yCAN Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "999999.9999"     Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO q1_0000a
                     DO q2_0000a
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(ynUe))=0
                               STORE "Código nuevo no puede estar vacio..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. ALLTRIM(ynUe)+"*"= ;
                               ALLTRIM(vcOd)+"*"
                               STORE "Código nuevo no puede ser igual al código actual..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. ycAn=0
                               STORE "Cantidad no puede ser ceros..." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               SELECT prOductos
                               SEEK ALLTRIM(ynUe)+"*"
                               IF EOF()
                                    STORE  ;
                                     "Código no está registrado en el maestro de Productos..."  ;
                                     TO mmSj
                                    DO poNmsj
                               ELSE
                                    WAIT WINDOW NOCLEAR NOWAIT  ;
                                     "1. LEYENDO CÓDIGO ANTIGUO..."
                                    STORE f2111des TO ydEs
                                    STORE f2111dcr TO ydCr
                                    STORE f2111cuv TO ycUv
                                    STORE f2111nuv TO ynUv
                                    STORE f2111cuc TO ycUc
                                    STORE f2111nuc TO ynUc
                                    STORE f2111la1 TO ylA1
                                    STORE f2111la2 TO ylA2
                                    STORE f2111an1 TO yaN1
                                    STORE f2111an2 TO yaN2
                                    STORE f2111esp TO yeSp
                                    STORE 0 TO ysW0
                                    SELECT deT_cpra
                                    GOTO TOP
                                    SEEK ytDo+ysEr+ydOc
                                    DO WHILE  .NOT. EOF() .AND. f2401tdo+ ;
                                       f2401ser+f2401doc=ytDo+ysEr+ydOc
                                         WAIT WINDOW NOCLEAR NOWAIT  ;
                                          "2. VERIFICANDO..."
                                         IF ALLTRIM(f2401cod)+"*"= ;
                                          ALLTRIM(ynUe)+"*"
                                              STORE 1 TO ysW0
                                              STORE  ;
                                               "Código nuevo YA se encuentra en COMPRA..."  ;
                                               TO mmSj
                                              DO poNmsj
                                              EXIT
                                         ENDIF
                                         IF ALLTRIM(f2401cod)+"*"= ;
                                          ALLTRIM(vcOd)+"*" .AND. ycAn>f2401can
                                              STORE 1 TO ysW0
                                              STORE  ;
                                               "Cantidad Mayor a la permitida..."  ;
                                               TO mmSj
                                              DO poNmsj
                                              EXIT
                                         ENDIF
                                         SKIP
                                    ENDDO
                                    IF ysW0=0
                                         WAIT WINDOW NOCLEAR NOWAIT  ;
                                          "3. LEYENDO ULTIMO ITEM..."
                                         STORE 0 TO yuLt
                                         SELECT deT_cpra
                                         GOTO TOP
                                         SEEK ytDo+ysEr+ydOc
                                         DO WHILE  .NOT. EOF() .AND.  ;
                                          f2401tdo+f2401ser+f2401doc=ytDo+ ;
                                          ysEr+ydOc
                                              STORE f2401ite TO yuLt
                                              SKIP
                                         ENDDO
                                         WAIT WINDOW NOCLEAR NOWAIT  ;
                                          "4. LEYENDO CABECERA..."
                                         SELECT caB_cpra
                                         SEEK ytDo+ysEr+ydOc
                                         STORE 0 TO ysW0
                                         STORE f2400fem TO yfEm
                                         STORE f2400prv TO ypRv
                                         STORE f2400nom TO ynOm
                                         STORE f2400pig TO ypIg
                                         STORE f2400mon TO ymOn
                                         STORE f2400td1 TO ytD1
                                         STORE f2400sr1 TO ysR1
                                         STORE f2400fac TO yfAc
                                         STORE SUBSTR(DTOC(f2400fin), 1,  ;
                                          2) TO ydIa
                                         STORE SUBSTR(DTOC(f2400fin), 4,  ;
                                          2) TO ymEs
                                         STORE SUBSTR(DTOC(f2400fin), 7,  ;
                                          4) TO yaNo
                                         SELECT deT_cpra
                                         SEEK ytDo+ysEr+ydOc
                                         DO WHILE  .NOT. EOF() .AND.  ;
                                          f2401tdo+f2401ser+f2401doc=ytDo+ ;
                                          ysEr+ydOc
                                              WAIT WINDOW NOCLEAR NOWAIT  ;
                                               "5. GRABANDO DETALLE ANTERIOR..."
                                              IF ALLTRIM(f2401cod)+"*"= ;
                                               ALLTRIM(vcOd)+"*"
                                                   STORE f2401ite TO yiTe
                                                   SEEK ytDo+ysEr+ydOc+ ;
                                                    STR(yiTe, 2, 0)
                                                   IF  .NOT. RLOCK()
                                                        DO reG_lock WITH  ;
                                                         ytDo+ysEr+ydOc+ ;
                                                         STR(yiTe, 2, 0)
                                                        IF mkEy=k_Esc
                                                             UNLOCK ALL
                                                             WAIT CLEAR
                                                             = INKEY(0.01)
                                                             RETURN
                                                        ENDIF
                                                   ELSE
                                                        RLOCK()
                                                   ENDIF
                                                   REPLACE f2401can WITH  ;
                                                    f2401can-ycAn
                                                   IF f2401can=0
                                                        SET ORDER TO 0
                                                        REPLACE f2401cod  ;
                                                         WITH ynUe
                                                        REPLACE f2401des  ;
                                                         WITH ydEs
                                                        REPLACE f2401dcr  ;
                                                         WITH ydCr
                                                        REPLACE f2401cuv  ;
                                                         WITH ycUv
                                                        REPLACE f2401nuv  ;
                                                         WITH ynUv
                                                        REPLACE f2401cuc  ;
                                                         WITH ycUc
                                                        REPLACE f2401nuc  ;
                                                         WITH ynUc
                                                        REPLACE f2401la1  ;
                                                         WITH ylA1
                                                        REPLACE f2401la2  ;
                                                         WITH ylA2
                                                        REPLACE f2401an1  ;
                                                         WITH yaN1
                                                        REPLACE f2401an2  ;
                                                         WITH yaN2
                                                        REPLACE f2401esp  ;
                                                         WITH yeSp
                                                        REPLACE f2401can  ;
                                                         WITH ycAn
                                                        UNLOCK
                                                        SELECT kaRdex
                                                        SEEK  ;
                                                         ALLTRIM(vcOd)+ ;
                                                         "*"+yaNo+ymEs+ ;
                                                         ydIa+"11"+ytDo+ ;
                                                         ysEr+ydOc
                                                        IF  .NOT. RLOCK()
                                                             DO reG_lock  ;
                                                              WITH  ;
                                                              ALLTRIM(vcOd)+ ;
                                                              "*"+yaNo+ ;
                                                              ymEs+ydIa+ ;
                                                              "11"+ytDo+ ;
                                                              ysEr+ydOc
                                                             IF mkEy=k_Esc
                                                                  UNLOCK ALL
                                                                  WAIT CLEAR
                                                                  = INKEY(0.01)
                                                                  RETURN
                                                             ENDIF
                                                        ELSE
                                                             RLOCK()
                                                        ENDIF
                                                        SET ORDER TO 0
                                                        REPLACE f2990cod  ;
                                                         WITH ynUe
                                                        UNLOCK
                                                        SET ORDER TO F2990COD
                                                        FLUSH
                                                        STORE 99 TO mkEy
                                                        SELECT deT_cpra
                                                        DO orD_0000a WITH  ;
                                                         "2401", "A",  ;
                                                         "F2401DOC", "A"
                                                        EXIT
                                                   ELSE
                                                        STORE 01 TO ysW0
                                                        STORE f2401med TO ymEd
                                                        STORE f2401caj TO ycAj
                                                        STORE f2401pre TO ypRe
                                                        STORE f2401co1 TO ycO1
                                                        STORE f2401co2 TO ycO2
                                                        STORE f2401pie TO ypIe
                                                        STORE f2401tpo TO ytPo
                                                        UNLOCK
                                                        SELECT kaRdex
                                                        SEEK  ;
                                                         ALLTRIM(vcOd)+ ;
                                                         "*"+yaNo+ymEs+ ;
                                                         ydIa+"11"+ytDo+ ;
                                                         ysEr+ydOc
                                                        IF  .NOT. RLOCK()
                                                             DO reG_lock  ;
                                                              WITH  ;
                                                              ALLTRIM(vcOd)+ ;
                                                              "*"+yaNo+ ;
                                                              ymEs+ydIa+ ;
                                                              "11"+ytDo+ ;
                                                              ysEr+ydOc
                                                             IF mkEy=k_Esc
                                                                  UNLOCK ALL
                                                                  WAIT CLEAR
                                                                  = INKEY(0.01)
                                                                  RETURN
                                                             ENDIF
                                                        ELSE
                                                             RLOCK()
                                                        ENDIF
                                                        REPLACE f2990can  ;
                                                         WITH f2990can-ycAn
                                                        UNLOCK
                                                        FLUSH
                                                        EXIT
                                                   ENDIF
                                              ENDIF
                                              SKIP
                                         ENDDO
                                         IF ysW0=1
                                              WAIT WINDOW NOCLEAR NOWAIT  ;
                                               "6. GRABANDO DETALLE NUEVO..."
                                              SELECT deT_cpra
                                              DO nuEvo_rg
                                              REPLACE f2401tdo WITH ytDo
                                              REPLACE f2401ser WITH ysEr
                                              REPLACE f2401doc WITH ydOc
                                              REPLACE f2401ite WITH yuLt+1
                                              REPLACE f2401cod WITH ynUe
                                              REPLACE f2401des WITH ydEs
                                              REPLACE f2401dcr WITH ydCr
                                              REPLACE f2401cuv WITH ycUv
                                              REPLACE f2401nuv WITH ynUv
                                              REPLACE f2401cuc WITH ycUc
                                              REPLACE f2401nuc WITH ynUc
                                              REPLACE f2401la1 WITH ylA1
                                              REPLACE f2401la2 WITH ylA2
                                              REPLACE f2401an1 WITH yaN1
                                              REPLACE f2401an2 WITH yaN2
                                              REPLACE f2401esp WITH yeSp
                                              REPLACE f2401can WITH ycAn
                                              REPLACE f2401med WITH ymEd
                                              REPLACE f2401caj WITH ycAj
                                              REPLACE f2401pre WITH ypRe
                                              REPLACE f2401co1 WITH ycO1
                                              REPLACE f2401co2 WITH ycO2
                                              REPLACE f2401pie WITH ypIe
                                              REPLACE f2401tpo WITH ytPo
                                              UNLOCK
                                              SELECT kaRdex
                                              DO nuEvo_rg
                                              REPLACE f2990cod WITH ynUe
                                              REPLACE f2990ano WITH yaNo
                                              REPLACE f2990mes WITH ymEs
                                              REPLACE f2990dia WITH ydIa
                                              REPLACE f2990tpo WITH "1"
                                              REPLACE f2990tpp WITH "1"
                                              REPLACE f2990tra WITH "1"
                                              REPLACE f2990can WITH ycAn
                                              REPLACE f2990caj WITH 0
                                              REPLACE f2990sld WITH 0
                                              REPLACE f2990slc WITH 0
                                              REPLACE f2990sls WITH 0
                                              REPLACE f2990scs WITH 0
                                              REPLACE f2990cos WITH 0
                                              REPLACE f2990dct WITH 0
                                              REPLACE f2990gas WITH 0
                                              REPLACE f2990prm WITH 0
                                              REPLACE f2990tdo WITH ytDo
                                              REPLACE f2990ser WITH ysEr
                                              REPLACE f2990doc WITH ydOc
                                              REPLACE f2990sr1 WITH SPACE(03)
                                              REPLACE f2990rem WITH SPACE(07)
                                              REPLACE f2990td1 WITH ytD1
                                              REPLACE f2990srf WITH ysR1
                                              REPLACE f2990fac WITH yfAc
                                              REPLACE f2990ped WITH SPACE(07)
                                              REPLACE f2990sor WITH SPACE(03)
                                              REPLACE f2990ord WITH SPACE(07)
                                              REPLACE f2990emi WITH yfEm
                                              REPLACE f2990fem WITH  ;
                                               CTOD(ydIa+"/"+ymEs+"/"+yaNo)
                                              REPLACE f2990tit WITH SPACE(04)
                                              REPLACE f2990cli WITH ypRv
                                              REPLACE f2990nom WITH ynOm
                                              REPLACE f2990pig WITH ypIg
                                              REPLACE f2990mon WITH ymOn
                                              REPLACE f2990tne WITH 0
                                              REPLACE f2990tig WITH 0
                                              REPLACE f2990tfa WITH 0
                                              REPLACE f2990ten WITH SPACE(02)
                                         ENDIF
                                         WAIT WINDOW NOCLEAR NOWAIT  ;
                                          "7. GRABANDO KARDEX ANTERIOR..."
                                         SELECT kaRdex
                                         SET DELETED OFF
                                         GOTO TOP
                                         SET DELETED ON
                                         SEEK ALLTRIM(vcOd)+"*"
                                         STORE 0 TO tpRm, vsTo, vsLc,  ;
                                          vsTs, vsCs, vpRm
                                         DO WHILE  .NOT. EOF() .AND.  ;
                                          ALLTRIM(f2990cod)+"*"= ;
                                          ALLTRIM(vcOd)+"*"
                                              STORE f2990ano TO vaNo
                                              STORE f2990mes TO vmEs
                                              STORE f2990dia TO vdIa
                                              STORE f2990tpo TO vtPo
                                              STORE f2990tpp TO vtPp
                                              STORE f2990tdo TO vtDo
                                              STORE f2990ser TO vsEr
                                              STORE f2990doc TO vdOc
                                              DO seE_2112d WITH "v"
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(vcOd)+"*"+ ;
                                                    vaNo+vmEs+vdIa+vtPo+ ;
                                                    vtPp+vtDo+vsEr+vdOc
                                                   IF mkEy=k_Esc
                                                        UNLOCK ALL
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                              DO CASE
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990tpp="0"  ;
                                                    .AND. f2990td1<>"NC"
                                                        STORE f2990can TO vsTo
                                                        STORE f2990caj TO vsLc
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990tpp="0"
                                                        STORE f2990can*-1  ;
                                                         TO vsTo
                                                        STORE f2990caj*-1  ;
                                                         TO vsLc
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990td1<>"NC"  ;
                                                    .AND. (vsTo+f2990can<= ;
                                                    0 .OR. vsTo<=0)
                                                        STORE vsTo+ ;
                                                         f2990can TO vsTo
                                                        STORE vsLc+ ;
                                                         f2990caj TO vsLc
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990td1<>"NC"
                                                        STORE vsTo+ ;
                                                         f2990can TO vsTo
                                                        STORE vsLc+ ;
                                                         f2990caj TO vsLc
                                                   CASE f2990tpo$"12"
                                                        STORE vsTo- ;
                                                         f2990can TO vsTo
                                                        STORE vsLc- ;
                                                         f2990caj TO vsLc
                                              ENDCASE
                                              IF f2990tdo="NP" .OR.  ;
                                               (f2990tdo="CO" .AND.  ;
                                               (LEN(ALLTRIM(f2990td1))=0  ;
                                               .OR.  ;
                                               LEN(ALLTRIM(f2990srf))=0  ;
                                               .OR. LEN(ALLTRIM(f2990fac))=0))
                                              ELSE
                                                   DO CASE
                                                        CASE f2990tpo="1"  ;
                                                         .AND. f2990tpp= ;
                                                         "0" .AND.  ;
                                                         f2990td1<>"NC"
                                                             STORE  ;
                                                              f2990can TO vsTs
                                                             STORE  ;
                                                              f2990caj TO vsCs
                                                             STORE  ;
                                                              f2990cos+ ;
                                                              f2990gas- ;
                                                              f2990dct TO vpRm
                                                        CASE f2990tpo="1"  ;
                                                         .AND. f2990tpp="0"
                                                             STORE  ;
                                                              f2990can*-1  ;
                                                              TO vsTs
                                                             STORE  ;
                                                              f2990caj*-1  ;
                                                              TO vsCs
                                                        CASE f2990tpo="1"  ;
                                                         .AND. f2990td1<> ;
                                                         "NC" .AND. (vsTs+ ;
                                                         f2990can<=0 .OR.  ;
                                                         vsTs<=0)
                                                             STORE vsTs+ ;
                                                              f2990can TO vsTs
                                                             STORE vsCs+ ;
                                                              f2990caj TO vsCs
                                                             STORE  ;
                                                              f2990cos+ ;
                                                              f2990gas- ;
                                                              f2990dct TO vpRm
                                                        CASE f2990tpo="1"  ;
                                                         .AND. f2990td1<>"NC"
                                                             STORE vsTs+ ;
                                                              f2990can TO vsTs
                                                             STORE vsCs+ ;
                                                              f2990caj TO vsCs
                                                             STORE  ;
                                                              f2990cos+ ;
                                                              f2990gas- ;
                                                              f2990dct TO pcOs
                                                             STORE pcOs* ;
                                                              f2990can TO pcOs
                                                             STORE tpRm+ ;
                                                              pcOs TO tpRm
                                                             STORE  ;
                                                              ROUND(tpRm/ ;
                                                              vsTs, 4) TO vpRm
                                                        CASE f2990tpo$"12"
                                                             STORE vsTs- ;
                                                              f2990can TO vsTs
                                                             STORE vsCs- ;
                                                              f2990caj TO vsCs
                                                   ENDCASE
                                              ENDIF
                                              REPLACE f2990sld WITH vsTo
                                              REPLACE f2990slc WITH vsLc
                                              REPLACE f2990sls WITH vsTs
                                              REPLACE f2990scs WITH vsCs
                                              REPLACE f2990prm WITH vpRm
                                              UNLOCK
                                              STORE f2990sls*f2990prm TO tpRm
                                              SKIP
                                         ENDDO
                                         SELECT prOductos
                                         SEEK ALLTRIM(vcOd)+"*"
                                         IF  .NOT. RLOCK()
                                              DO reG_lock WITH  ;
                                               ALLTRIM(vcOd)+"*"
                                              IF mkEy=k_Esc
                                                   UNLOCK ALL
                                                   WAIT CLEAR
                                                   = INKEY(0.01)
                                                   RETURN
                                              ENDIF
                                         ELSE
                                              RLOCK()
                                         ENDIF
                                         REPLACE f2111sto WITH vsTo
                                         UNLOCK
                                         SELECT prO_tot
                                         SEEK ALLTRIM(vcOd)+"*"
                                         IF  .NOT. RLOCK()
                                              DO reG_lock WITH  ;
                                               ALLTRIM(vcOd)+"*"
                                              IF mkEy=k_Esc
                                                   UNLOCK ALL
                                                   WAIT CLEAR
                                                   = INKEY(0.01)
                                                   RETURN
                                              ENDIF
                                         ELSE
                                              RLOCK()
                                         ENDIF
                                         REPLACE f2118sto WITH vsTo
                                         UNLOCK
                                         FLUSH
                                         WAIT WINDOW NOCLEAR NOWAIT  ;
                                          "8. GRABANDO KARDEX NUEVO..."
                                         SELECT kaRdex
                                         SET DELETED OFF
                                         GOTO TOP
                                         SET DELETED ON
                                         SEEK ALLTRIM(ynUe)+"*"
                                         STORE 0 TO tpRm, vsTo, vsLc,  ;
                                          vsTs, vsCs, vpRm
                                         DO WHILE  .NOT. EOF() .AND.  ;
                                          ALLTRIM(f2990cod)+"*"= ;
                                          ALLTRIM(ynUe)+"*"
                                              STORE f2990ano TO vaNo
                                              STORE f2990mes TO vmEs
                                              STORE f2990dia TO vdIa
                                              STORE f2990tpo TO vtPo
                                              STORE f2990tpp TO vtPp
                                              STORE f2990tdo TO vtDo
                                              STORE f2990ser TO vsEr
                                              STORE f2990doc TO vdOc
                                              SEEK ALLTRIM(ynUe)+"*"+vaNo+ ;
                                               vmEs+vdIa+vtPo+vtPp+vtDo+ ;
                                               vsEr+vdOc
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH  ;
                                                    ALLTRIM(ynUe)+"*"+ ;
                                                    vaNo+vmEs+vdIa+vtPo+ ;
                                                    vtPp+vtDo+vsEr+vdOc
                                                   IF mkEy=k_Esc
                                                        UNLOCK ALL
                                                        WAIT CLEAR
                                                        = INKEY(0.01)
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                              DO CASE
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990tpp="0"  ;
                                                    .AND. f2990td1<>"NC"
                                                        STORE f2990can TO vsTo
                                                        STORE f2990caj TO vsLc
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990tpp="0"
                                                        STORE f2990can*-1  ;
                                                         TO vsTo
                                                        STORE f2990caj*-1  ;
                                                         TO vsLc
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990td1<>"NC"  ;
                                                    .AND. (vsTo+f2990can<= ;
                                                    0 .OR. vsTo<=0)
                                                        STORE vsTo+ ;
                                                         f2990can TO vsTo
                                                        STORE vsLc+ ;
                                                         f2990caj TO vsLc
                                                   CASE f2990tpo="1"  ;
                                                    .AND. f2990td1<>"NC"
                                                        STORE vsTo+ ;
                                                         f2990can TO vsTo
                                                        STORE vsLc+ ;
                                                         f2990caj TO vsLc
                                                   CASE f2990tpo$"12"
                                                        STORE vsTo- ;
                                                         f2990can TO vsTo
                                                        STORE vsLc- ;
                                                         f2990caj TO vsLc
                                              ENDCASE
                                              IF f2990tdo="NP" .OR.  ;
                                               (f2990tdo="CO" .AND.  ;
                                               (LEN(ALLTRIM(f2990td1))=0  ;
                                               .OR.  ;
                                               LEN(ALLTRIM(f2990srf))=0  ;
                                               .OR. LEN(ALLTRIM(f2990fac))=0))
                                              ELSE
                                                   DO CASE
                                                        CASE f2990tpo="1"  ;
                                                         .AND. f2990tpp= ;
                                                         "0" .AND.  ;
                                                         f2990td1<>"NC"
                                                             STORE  ;
                                                              f2990can TO vsTs
                                                             STORE  ;
                                                              f2990caj TO vsCs
                                                             STORE  ;
                                                              f2990cos+ ;
                                                              f2990gas- ;
                                                              f2990dct TO vpRm
                                                        CASE f2990tpo="1"  ;
                                                         .AND. f2990tpp="0"
                                                             STORE  ;
                                                              f2990can*-1  ;
                                                              TO vsTs
                                                             STORE  ;
                                                              f2990caj*-1  ;
                                                              TO vsCs
                                                        CASE f2990tpo="1"  ;
                                                         .AND. f2990td1<> ;
                                                         "NC" .AND. (vsTs+ ;
                                                         f2990can<=0 .OR.  ;
                                                         vsTs<=0)
                                                             STORE vsTs+ ;
                                                              f2990can TO vsTs
                                                             STORE vsCs+ ;
                                                              f2990caj TO vsCs
                                                             STORE  ;
                                                              f2990cos+ ;
                                                              f2990gas- ;
                                                              f2990dct TO vpRm
                                                        CASE f2990tpo="1"  ;
                                                         .AND. f2990td1<>"NC"
                                                             STORE vsTs+ ;
                                                              f2990can TO vsTs
                                                             STORE vsCs+ ;
                                                              f2990caj TO vsCs
                                                             STORE  ;
                                                              f2990cos+ ;
                                                              f2990gas- ;
                                                              f2990dct TO pcOs
                                                             STORE pcOs* ;
                                                              f2990can TO pcOs
                                                             STORE tpRm+ ;
                                                              pcOs TO tpRm
                                                             STORE  ;
                                                              ROUND(tpRm/ ;
                                                              vsTs, 4) TO vpRm
                                                        CASE f2990tpo$"12"
                                                             STORE vsTs- ;
                                                              f2990can TO vsTs
                                                             STORE vsCs- ;
                                                              f2990caj TO vsCs
                                                   ENDCASE
                                              ENDIF
                                              REPLACE f2990sld WITH vsTo
                                              REPLACE f2990slc WITH vsLc
                                              REPLACE f2990sls WITH vsTs
                                              REPLACE f2990scs WITH vsCs
                                              REPLACE f2990prm WITH vpRm
                                              UNLOCK
                                              STORE f2990sls*f2990prm TO tpRm
                                              SKIP
                                         ENDDO
                                         SELECT prOductos
                                         SEEK ALLTRIM(ynUe)+"*"
                                         IF  .NOT. RLOCK()
                                              DO reG_lock WITH  ;
                                               ALLTRIM(ynUe)+"*"
                                              IF mkEy=k_Esc
                                                   UNLOCK ALL
                                                   WAIT CLEAR
                                                   = INKEY(0.01)
                                                   RETURN
                                              ENDIF
                                         ELSE
                                              RLOCK()
                                         ENDIF
                                         REPLACE f2111sto WITH vsTo
                                         UNLOCK
                                         SELECT prO_tot
                                         SEEK ALLTRIM(ynUe)+"*"
                                         IF  .NOT. RLOCK()
                                              DO reG_lock WITH  ;
                                               ALLTRIM(ynUe)+"*"
                                              IF mkEy=k_Esc
                                                   UNLOCK ALL
                                                   WAIT CLEAR
                                                   = INKEY(0.01)
                                                   RETURN
                                              ENDIF
                                         ELSE
                                              RLOCK()
                                         ENDIF
                                         REPLACE f2118sto WITH vsTo
                                         UNLOCK
                                         FLUSH
                                         RETURN
                                    ENDIF
                               ENDIF
                     ENDCASE
                ENDDO
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                DO CASE
                     CASE wtPo="1" .AND. pkAr="1"
                          STORE 15 TO viT2
                     CASE wtPo="1"
                          STORE 17 TO viT2
                     OTHERWISE
                          STORE 11 TO viT2
                ENDCASE
                DO CASE
                     CASE wtPo="1" .AND. pkAr="1"
                          DO xl0_0000a WITH "Kardex Valorizado S/.",  ;
                             "Stocks", viT2
                     CASE wtPo="1"
                          DO xl0_0000a WITH "Kardex Valorizado", "Stocks", viT2
                     OTHERWISE
                          DO xl0_0000a WITH "Kardex", "Stocks", viT2
                ENDCASE
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Fecha"
                pxLs.ceLls(3, 02).vaLue = "Emisión"
                pxLs.ceLls(3, 03).vaLue = "Documento"
                pxLs.ceLls(3, 06).vaLue = "G.Remisión"
                pxLs.ceLls(3, 08).vaLue = "Cliente/Proveedor/Comentario"
                pxLs.ceLls(3, 09).vaLue = "Entradas"
                pxLs.ceLls(3, 10).vaLue = "Salidas"
                pxLs.ceLls(3, 11).vaLue = "Saldo"
                pxLs.raNge(pxLs.ceLls(3,03), pxLs.ceLls(3,05)).meRge
                pxLs.raNge(pxLs.ceLls(3,06), pxLs.ceLls(3,07)).meRge
                IF wtPo="1"
                     IF pkAr="1"
                          pxLs.ceLls(3, 12).vaLue = "Costo Unitario"
                          pxLs.ceLls(3, 13).vaLue = "Entradas"
                          pxLs.ceLls(3, 14).vaLue = "Salidas"
                          pxLs.ceLls(3, 15).vaLue = "Saldo"
                     ELSE
                          pxLs.ceLls(3, 12).vaLue = "Moneda"
                          pxLs.ceLls(3, 13).vaLue = "Costo Bruto"
                          pxLs.ceLls(3, 14).vaLue = "Descuento"
                          pxLs.ceLls(3, 15).vaLue = "Costo Neto"
                          pxLs.ceLls(3, 16).vaLue = "Moneda"
                          pxLs.ceLls(3, 17).vaLue = "Gasto"
                     ENDIF
                ENDIF
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(4,viT2)).inSert
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,10)).meRge
                pxLs.raNge(pxLs.ceLls(4,1), pxLs.ceLls(4,10)).meRge
                pxLs.ceLls(3, 01).vaLue = vcOd+": "+vdEs
                pxLs.ceLls(3, 01).foNt.naMe = "Times New Roman"
                pxLs.ceLls(3, 01).foNt.siZe = 12
                pxLs.ceLls(3, 01).foNt.boLd = .T.
                pxLs.ceLls(4, 01).vaLue = "Del "+DTOC(ifEm)+" al "+DTOC(ufEm)
                pxLs.ceLls(4, 01).foNt.siZe = 11
                pxLs.ceLls(4, 01).foNt.boLd = .T.
                SELECT kaRdex
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                SEEK ALLTRIM(vcOd)+"*"
                STORE 6 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                   ALLTRIM(vcOd)+"*"
                     IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO"  ;
                        .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                        LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                        LEN(ALLTRIM(f2990fac))=0)))
                          SKIP
                          LOOP
                     ENDIF
                     pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1, ;
                               viT2)).seLect
                     pxLs.ceLls(viT1, 04).nuMberformat = "000"
                     pxLs.ceLls(viT1, 05).nuMberformat = "0000000"
                     pxLs.ceLls(viT1, 06).nuMberformat = "000"
                     pxLs.ceLls(viT1, 07).nuMberformat = "0000000"
                     pxLs.ceLls(viT1, 01).vaLue = f2990dia+"/"+f2990mes+ ;
                               "/"+f2990ano
                     pxLs.ceLls(viT1, 02).vaLue = DTOC(f2990emi)
                     IF f2990tdo="CO"
                          pxLs.ceLls(viT1, 03).vaLue = f2990td1
                          pxLs.ceLls(viT1, 04).vaLue = f2990srf
                          pxLs.ceLls(viT1, 05).vaLue = f2990fac
                     ELSE
                          pxLs.ceLls(viT1, 03).vaLue = f2990tdo
                          pxLs.ceLls(viT1, 04).vaLue = f2990ser
                          pxLs.ceLls(viT1, 05).vaLue = f2990doc
                     ENDIF
                     pxLs.ceLls(viT1, 06).vaLue = f2990sr1
                     pxLs.ceLls(viT1, 07).vaLue = f2990rem
                     pxLs.ceLls(viT1, 08).vaLue = f2990nom
                     IF f2990tpo="1" .OR. f2990tpo="3"
                          pxLs.ceLls(viT1, 09).vaLue = f2990can
                          pxLs.ceLls(viT1, 10).vaLue = " "
                     ELSE
                          pxLs.ceLls(viT1, 09).vaLue = " "
                          pxLs.ceLls(viT1, 10).vaLue = f2990can
                     ENDIF
                     DO CASE
                          CASE pkAr="1"
                               pxLs.ceLls(viT1, 11).vaLue = f2990sls
                          OTHERWISE
                               pxLs.ceLls(viT1, 11).vaLue = f2990sld
                     ENDCASE
                     IF wtPo="1"
                          DO CASE
                               CASE pkAr="1"
                                    pxLs.ceLls(viT1, 12).vaLue = f2990prm
                                    IF f2990tpo="1" .OR. f2990tpo="3"
                                         pxLs.ceLls(viT1, 13).vaLue =  ;
                                          f2990prm*f2990can
                                         pxLs.ceLls(viT1, 14).vaLue = " "
                                    ELSE
                                         pxLs.ceLls(viT1, 13).vaLue = " "
                                         pxLs.ceLls(viT1, 14).vaLue =  ;
                                          f2990prm*f2990can
                                    ENDIF
                                    pxLs.ceLls(viT1, 15).vaLue = f2990prm* ;
                                     f2990sls
                               OTHERWISE
                                    IF f2990mon=1
                                         pxLs.ceLls(viT1, 12).vaLue = "S/."
                                    ELSE
                                         pxLs.ceLls(viT1, 12).vaLue = "US$"
                                    ENDIF
                                    pxLs.ceLls(viT1, 13).vaLue = f2990cos
                                    pxLs.ceLls(viT1, 14).vaLue = f2990dct
                                    pxLs.ceLls(viT1, 15).vaLue = f2990cos- ;
                                     f2990dct
                                    pxLs.ceLls(viT1, 16).vaLue = "S/."
                                    pxLs.ceLls(viT1, 17).vaLue = f2990gas
                          ENDCASE
                     ENDIF
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SELECT kaRdex
                     SKIP
                ENDDO
                pxLs.raNge(pxLs.coLumns(01),  ;
                          pxLs.coLumns(08)).hoRizontalalignment = 2
                pxLs.raNge(pxLs.coLumns(09),  ;
                          pxLs.coLumns(11)).nuMberformat = "#,###,##0.0000"
                IF wtPo="1"
                     DO CASE
                          CASE pkAr="1"
                               pxLs.raNge(pxLs.coLumns(12),  ;
                                pxLs.coLumns(15)).nuMberformat =  ;
                                "#,###,##0.0000"
                          OTHERWISE
                               pxLs.raNge(pxLs.coLumns(13),  ;
                                pxLs.coLumns(15)).nuMberformat =  ;
                                "#,###,##0.0000"
                               pxLs.coLumns(17).nuMberformat = "#,###,##0.0000"
                     ENDCASE
                ENDIF
                DO xl1_0000a WITH 1
                WAIT CLEAR
                SELECT kaRdex
                DO seE_2112d WITH "v"
           CASE mkEy=k_F9
                STORE DATE() TO dfE1
                DO diS_2112d WITH "N"
                SAVE SCREEN TO vpAn_12
                DO coL_fondo
                @ ifFs+0.8, vcB3+2 TO ifFs+04.2, vcB3+77.1 PATTERN 1 PEN 1
                @ ifFs+0.0, vcB3+1 TO ifFs+03.7, vcB3+76.0 PATTERN 1 PEN 3
                @iFFS+1.0,vCB3+9 Say "Digitar Fecha a buscar en el Kardex:" Font "&mLetAri",9 Style "NQ"
                DO WHILE .T.
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS+1,vCB3+52 Get dFE1 Font "&mLetAri",9 Style "NQ" Size 1,12.7 Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. AT(" ", DTOC(dfE1))<>0
                               STORE "Fecha no puede tener espacios vacíos..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               SET NEAR ON
                               SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfE1),  ;
                                    7, 4)+SUBSTR(DTOC(dfE1), 4, 2)+ ;
                                    SUBSTR(DTOC(dfE1), 1, 2)
                               SET NEAR OFF
                               IF EOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                                  ALLTRIM(vcOd)+"*"
                                    IF EOF()
                                         GOTO BOTTOM
                                    ELSE
                                         SKIP -1
                                    ENDIF
                               ENDIF
                               STORE 0 TO vsWw
                               DO WHILE  .NOT. EOF() .AND.  ;
                                  ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                                    IF pkAr="1" .AND. (f2990tdo="NP" .OR.  ;
                                       (f2990tdo="CO" .AND.  ;
                                       (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                       LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                       LEN(ALLTRIM(f2990fac))=0)))
                                         SKIP
                                         LOOP
                                    ENDIF
                                    STORE 1 TO vsWw
                                    DO muE_2112d WITH "F", "v"
                                    EXIT
                               ENDDO
                               IF vsWw=0
                                    STORE  ;
                                     "Fecha no puede tener espacios vacios..."  ;
                                     TO mmSj
                                    DO poNmsj
                               ELSE
                                    RESTORE SCREEN FROM vpAn_12
                                    DO seE_2112d WITH "i"
                                    STORE 00 TO vsWw
                                    STORE ifFs TO vfFs
                                    DO WHILE  .NOT. EOF() .AND.  ;
                                       ALLTRIM(f2990cod)+"*"= ;
                                       ALLTRIM(vcOd)+"*" .AND. vfFs<ffFs+1
                                         IF pkAr="1" .AND. (f2990tdo="NP"  ;
                                          .OR. (f2990tdo="CO" .AND.  ;
                                          (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990fac))=0)))
                                              SKIP
                                              LOOP
                                         ENDIF
                                         IF f2990tdo+f2990ser+f2990doc= ;
                                          vtDo+vsEr+vdOc
                                              STORE 1 TO vsWw
                                              EXIT
                                         ENDIF
                                         STORE vfFs+1 TO vfFs
                                         SKIP
                                    ENDDO
                                    IF vsWw=0
                                         DO seE_2112d WITH "v"
                                         DO paN_2112d
                                         DO muE_2112d WITH "i", "v"
                                         STORE ifFs TO vfFs
                                    ENDIF
                                    EXIT
                               ENDIF
                     ENDCASE
                ENDDO
                SELECT kaRdex
                DO seE_2112d WITH "v"
                DO diS_2112d WITH "R"
           CASE mkEy=k_Home
                SET DELETED OFF
                GOTO TOP
                SET DELETED ON
                SEEK ALLTRIM(vcOd)+"*"
                IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO"  ;
                   .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                   LEN(ALLTRIM(f2990srf))=0 .OR. LEN(ALLTRIM(f2990fac))=0)))
                     DO WHILE .T.
                          SKIP
                          IF EOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                             ALLTRIM(vcOd)+"*"
                               EXIT
                          ENDIF
                          IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo= ;
                             "CO" .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                             LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                             LEN(ALLTRIM(f2990fac))=0)))
                               LOOP
                          ENDIF
                          EXIT
                     ENDDO
                ENDIF
                DO CASE
                     CASE f2990tdo+f2990ser+f2990doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_2112d
                               OTHERWISE
                                    DO seE_2112d WITH "v"
                                    DO diS_2112d WITH "N"
                          ENDCASE
                          DO muE_2112d WITH "i", "v"
                          STORE ifFs TO vfFs
                          DO seE_2112d WITH "v"
                          DO diS_2112d WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*ZZZZZZ"
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
                IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO"  ;
                   .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                   LEN(ALLTRIM(f2990srf))=0 .OR. LEN(ALLTRIM(f2990fac))=0)))
                     DO WHILE .T.
                          SKIP -1
                          IF BOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                             ALLTRIM(vcOd)+"*"
                               EXIT
                          ENDIF
                          IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo= ;
                             "CO" .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                             LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                             LEN(ALLTRIM(f2990fac))=0)))
                               LOOP
                          ENDIF
                          EXIT
                     ENDDO
                ENDIF
                DO CASE
                     CASE f2990tdo+f2990ser+f2990doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    STORE INT(ffFs-ifFs) TO vsWw
                                    STORE 1 TO csWw
                                    DO WHILE .T.
                                         SKIP -1
                                         IF BOF() .OR. ALLTRIM(f2990cod)+ ;
                                          "*"<>ALLTRIM(vcOd)+"*"
                                              SEEK ALLTRIM(vcOd)+"*"
                                              EXIT
                                         ENDIF
                                         IF pkAr="1" .AND. (f2990tdo="NP"  ;
                                          .OR. (f2990tdo="CO" .AND.  ;
                                          (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990fac))=0)))
                                              LOOP
                                         ENDIF
                                         STORE csWw+1 TO csWw
                                         IF csWw>vsWw
                                              EXIT
                                         ENDIF
                                    ENDDO
                                    DO paN_2112d
                               OTHERWISE
                                    DO seE_2112d WITH "v"
                                    DO diS_2112d WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_2112d WITH "u", "v"
                          DO seE_2112d WITH "v"
                          DO diS_2112d WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                DO WHILE .T.
                     SKIP
                     IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          EXIT
                     ENDIF
                     IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO"  ;
                        .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                        LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                        LEN(ALLTRIM(f2990fac))=0)))
                          LOOP
                     ENDIF
                     EXIT
                ENDDO
                DO CASE
                     CASE EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112d WITH "v"
                          DO diS_2112d WITH "N"
                          DO WHILE .T.
                               SKIP
                               IF EOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                                  ALLTRIM(vcOd)+"*"
                                    EXIT
                               ENDIF
                               IF pkAr="1" .AND. (f2990tdo="NP" .OR.  ;
                                  (f2990tdo="CO" .AND.  ;
                                  (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                  LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                  LEN(ALLTRIM(f2990fac))=0)))
                                    LOOP
                               ENDIF
                               EXIT
                          ENDDO
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc3
                               DO suBe WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2112d WITH ffFs, ffFs+1
                               DO li1_2112d WITH ffFs, ffFs+1
                               DO muE_2112d WITH "F", "v"
                               DO muE_2112d WITH "F", "u"
                               STORE ufFs TO vfFs
                               STORE 1 TO csWw
                               STORE INT(ffFs-ifFs) TO vsWw
                               DO WHILE .T.
                                    SKIP -1
                                    IF BOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                                       ALLTRIM(vcOd)+"*"
                                         EXIT
                                    ENDIF
                                    IF pkAr="1" .AND. (f2990tdo="NP" .OR.  ;
                                       (f2990tdo="CO" .AND.  ;
                                       (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                       LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                       LEN(ALLTRIM(f2990fac))=0)))
                                         LOOP
                                    ENDIF
                                    DO muE_2112d WITH "F", "i"
                                    STORE csWw+1 TO csWw
                                    IF csWw>vsWw
                                         EXIT
                                    ENDIF
                               ENDDO
                          ELSE
                               DO muE_2112d WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_2112d WITH "v"
                          DO diS_2112d WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                DO WHILE .T.
                     SKIP -1
                     IF BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          EXIT
                     ENDIF
                     IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO"  ;
                        .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                        LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                        LEN(ALLTRIM(f2990fac))=0)))
                          LOOP
                     ENDIF
                     EXIT
                ENDDO
                DO CASE
                     CASE BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112d WITH "v"
                          DO diS_2112d WITH "N"
                          DO WHILE .T.
                               SKIP -1
                               IF BOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                                  ALLTRIM(vcOd)+"*"
                                    SEEK ALLTRIM(vcOd)+"*"
                                    EXIT
                               ENDIF
                               IF pkAr="1" .AND. (f2990tdo="NP" .OR.  ;
                                  (f2990tdo="CO" .AND.  ;
                                  (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                  LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                  LEN(ALLTRIM(f2990fac))=0)))
                                    LOOP
                               ENDIF
                               EXIT
                          ENDDO
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc3
                               DO baJa WITH ifFs, mcO0, ffFs, mcO0+muCo, 1
                               DO liN_2112d WITH ifFs, ifFs+1
                               DO li1_2112d WITH ifFs, ifFs+1
                               DO muE_2112d WITH "F", "v"
                               DO muE_2112d WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    STORE 1 TO csWw
                                    STORE INT(ffFs-ifFs) TO vsWw
                                    DO WHILE .T.
                                         SKIP
                                         IF EOF() .OR. ALLTRIM(f2990cod)+ ;
                                          "*"<>ALLTRIM(vcOd)+"*"
                                              EXIT
                                         ENDIF
                                         IF pkAr="1" .AND. (f2990tdo="NP"  ;
                                          .OR. (f2990tdo="CO" .AND.  ;
                                          (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                          LEN(ALLTRIM(f2990fac))=0)))
                                              LOOP
                                         ENDIF
                                         STORE csWw+1 TO csWw
                                         DO muE_2112d WITH "F", "u"
                                         IF csWw>vsWw
                                              EXIT
                                         ENDIF
                                    ENDDO
                               ENDIF
                          ELSE
                               DO muE_2112d WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_2112d WITH "v"
                          DO diS_2112d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2112d WITH "u"
                DO WHILE .T.
                     SKIP
                     IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          EXIT
                     ENDIF
                     IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO"  ;
                        .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                        LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                        LEN(ALLTRIM(f2990fac))=0)))
                          LOOP
                     ENDIF
                     EXIT
                ENDDO
                DO CASE
                     CASE EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2112d
                          DO muE_2112d WITH "i", "v"
                          STORE ifFs TO vfFs
                          DO seE_2112d WITH "v"
                          DO diS_2112d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2112d WITH "i"
                DO WHILE .T.
                     SKIP -1
                     IF BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          EXIT
                     ENDIF
                     IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO"  ;
                        .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                        LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                        LEN(ALLTRIM(f2990fac))=0)))
                          LOOP
                     ENDIF
                     EXIT
                ENDDO
                DO CASE
                     CASE BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          STORE 1 TO csWw
                          STORE INT(ffFs-ifFs) TO vsWw
                          DO WHILE .T.
                               SKIP -1
                               IF BOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                                  ALLTRIM(vcOd)+"*"
                                    EXIT
                               ENDIF
                               IF pkAr="1" .AND. (f2990tdo="NP" .OR.  ;
                                  (f2990tdo="CO" .AND.  ;
                                  (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                  LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                  LEN(ALLTRIM(f2990fac))=0)))
                                    LOOP
                               ENDIF
                               STORE csWw+1 TO csWw
                               IF csWw>vsWw
                                    EXIT
                               ENDIF
                          ENDDO
                          IF BOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                             ALLTRIM(vcOd)+"*"
                               SET DELETED OFF
                               GOTO TOP
                               SET DELETED ON
                               SEEK ALLTRIM(vcOd)+"*"
                               DO WHILE .T.
                                    SKIP
                                    IF EOF() .OR. ALLTRIM(f2990cod)+"*"<> ;
                                       ALLTRIM(vcOd)+"*"
                                         EXIT
                                    ENDIF
                                    IF pkAr="1" .AND. (f2990tdo="NP" .OR.  ;
                                       (f2990tdo="CO" .AND.  ;
                                       (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                                       LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                                       LEN(ALLTRIM(f2990fac))=0)))
                                         LOOP
                                    ENDIF
                                    EXIT
                               ENDDO
                          ENDIF
                          DO paN_2112d
                          STORE ifFs TO vfFs
                          DO muE_2112d WITH "i", "v"
                          DO seE_2112d WITH "v"
                          DO diS_2112d WITH "R"
                ENDCASE
           CASE mkEy=k_Ctrl_p
                SELECT kaRdex
                STORE 99 TO mkEy
                DO orD_0000a WITH "2990", "A", "F2990COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                DO reP_2112d
                DO p1_0000a
                = INKEY(0.01)
                DO orD_2112d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT kaRdex
                DO seE_2112d WITH "v"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2112d WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2112d
 DO pn1_2112d WITH "1"
ENDPROC
*
PROCEDURE Pa1_2112d
 DO pn1_2112d WITH "2"
ENDPROC
*
PROCEDURE Pn1_2112d
 PARAMETER ptPo
 STORE ifFs TO vfFs, ufFs
 DO muE_2112d WITH "F", "i"
 DO muE_2112d WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"  ;
    .AND. vfFs<ffFs+1
      IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO" .AND.  ;
         (LEN(ALLTRIM(f2990td1))=0 .OR. LEN(ALLTRIM(f2990srf))=0 .OR.  ;
         LEN(ALLTRIM(f2990fac))=0)))
           SKIP
           LOOP
      ENDIF
      DO CASE
           CASE ptPo="2" .AND. f2990ano+f2990mes+f2990dia+f2990tpo+ ;
                f2990tpp+f2990tdo+f2990ser+f2990doc=xaNo+xmEs+xdIa+xtPo+ ;
                xtPp+xtDo+xsEr+xdOc
                STORE vfFs TO cfFs
           OTHERWISE
                DO diS_2112d WITH "N"
      ENDCASE
      DO muE_2112d WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufFs+1<=ffFs
      DO coLsc3
      @ ufFs+1, mcO0 CLEAR TO ffFs+1, mcO0+muCo
      DO liN_2112d WITH ufFs+1, ffFs+1
      DO li1_2112d WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2112d
 PARAMETER ptIp
 PUBLIC psEr, pfAc, ptEn, pnTi, ptM1, psIg, pcL1, ppIc
 DO daT_2112d
 DO di1_2112d WITH ptIp
 STORE SPACE(03) TO psIg
 DO CASE
      CASE f2990td1="NC" .AND. f2990tpo="2"
           @vFFS,mCO0 Say F2990TD1+":"+pFAC                  Font "&mLetAri",9 Style "BQ" Size 1,15.5
      CASE (f2990tdo="CO" .OR. f2990tdo="PE") .AND. f2990tpo="1"
           @vFFS,mCO0 Say F2990TD1+":"+pFAC                  Font "&mLetAri",9 Style "BQ" Size 1,15.5
           IF f2990mon=1
                STORE "S/." TO psIg
           ELSE
                STORE "US$" TO psIg
           ENDIF
      OTHERWISE
           @vFFS,mCO0 Say F2990TDO+":"+F2990SER+"-"+F2990DOC Font "&mLetAri",9 Style "NQ" Size 1,18.5
           IF f2990tdo="FA" .OR. f2990tdo="FE" .OR. f2990tdo="FC" .OR.  ;
              f2990tdo="BO" .OR. f2990tdo="BE" .OR. f2990tdo="BC" .OR.  ;
              f2990tdo="NP"
                IF f2990mon=1
                     STORE "S/." TO psIg
                ELSE
                     STORE "US$" TO psIg
                ENDIF
           ENDIF
 ENDCASE
 DO di2_2112d
 @vFFS,mCO0+19.2 Say F2990DIA+"/"+F2990MES+"/"+F2990ANO Font "&mLetAri",9 Style "NQ" Size 1,12.7
 @vFFS,mCO0+32.6 Say F2990SR1+"-"+F2990REM Font "&mLetAri",9 Style "NQ" Size 1,15.5
 DO CASE
      CASE mrEs="3"
           IF f2990tpp="0" .OR. f2990tdo="GI" .OR. f2990tdo="GS"
                @vFFS,mCO0+48.8 Say pNTI+F2990NOM Font "&mLetAri",9 Style "BQ" Size 1,69.3 Pict "@S72"
           ELSE
                @vFFS,mCO0+48.8 Say pNTI+F2990NOM Font "&mLetAri",9 Style "NQ" Size 1,83.1 Pict "@S84"
           ENDIF
      OTHERWISE
           IF f2990tpp="0" .OR. f2990tdo="GI" .OR. f2990tdo="GS"
                @vFFS,mCO0+48.8 Say pNTI+F2990NOM Font "&mLetAri",9 Style "BQ" Size 1,69.3 Pict "@S72"
           ELSE
                @vFFS,mCO0+48.8 Say pNTI+F2990NOM Font "&mLetAri",9 Style "NQ" Size 1,83.1 Pict "@S84"
           ENDIF
 ENDCASE
 DO di3_2112d
 DO CASE
      CASE f2990tpo="1" .AND. vsW4=1
           @vFFS,mCO0+vCLL      Say F2990CAN  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "&vPIC"
           @vFFS,mCO0+vCLL+17.4 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,16.8
      CASE f2990tpo="1" .AND. vsW4=2
           @vFFS,mCO0+vCLL      Say F2990CAJ  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "999,999,999"
           @vFFS,mCO0+vCLL+17.4 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,16.8
      CASE f2990tpo="2" .AND. vsW4=1
           @vFFS,mCO0+vCLL      Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,16.8
           @vFFS,mCO0+vCLL+17.4 Say F2990CAN  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "&vPIC"
      CASE f2990tpo="2" .AND. vsW4=2
           @vFFS,mCO0+vCLL      Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,16.8
           @vFFS,mCO0+vCLL+17.4 Say F2990CAJ  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "999,999,999"
 ENDCASE
 IF mrEs="3"
      STORE 0 TO pcL1
 ELSE
      STORE 0.2 TO pcL1
 ENDIF
 IF f2990tdo<>"CO" .AND. f2990tdo<>"GA"
      @vFFS,mCO0+vCLL+52.1+pCL1 Say Space(07)             Font "&mLetAri",9 Style "NQ" Size 1,15
 ELSE
      @vFFS,mCO0+vCLL+52.1+pCL1 Say F2990SER+"-"+F2990DOC Font "&mLetAri",9 Style "NQ" Size 1,15
 ENDIF
 IF mrEs>"3"
      @vFFS,mCO0+vCLL+067.8      Say F2990EMI Font "&mLetAri",9 Style "NQ" Size 1,12.7
      @vFFS,mCO0+vCLL+081.1+pCL1 Say F2990PED Font "&mLetAri",9 Style "NQ" Size 1,09.8
      @vFFS,mCO0+vCLL+091.5+pCL1 Say F2990SOR Font "&mLetAri",9 Style "NQ" Size 1,04.6
      @vFFS,mCO0+vCLL+096.8+pCL1 Say F2990ORD Font "&mLetAri",9 Style "NQ" Size 1,09.8
      @vFFS,mCO0+vCLL+107.5      Say " "+pSIG Font "&mLetAri",9 Style "NQ" Size 1,06.1
      IF f2990tdo="GI"
           @vFFS,mCO0+vCLL+113.7 Say F2990PRM Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.99"
      ELSE
           IF LEN(ALLTRIM(psIg))=0
                @vFFS,mCO0+vCLL+113.7 Say " "      Font "&mLetAri",9 Style "NQ" Size 1,22.5
           ELSE
                @vFFS,mCO0+vCLL+113.7 Say F2990TFA Font "&mLetAri",9 Style "NQ" Size 1,22.5 Pict "999,999.99"
           ENDIF
      ENDIF
 ENDIF
 DO di4_2112d
 DO CASE
      CASE pkAr="1" .AND. vsW4=1
           @vFFS,mCO0+vCLL+34.8 Say F2990SLS Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "&pPIC"
      CASE pkAr="2" .AND. vsW4=1
           @vFFS,mCO0+vCLL+34.8 Say F2990SLD Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "&pPIC"
      CASE pkAr="1" .AND. vsW4=2
           @vFFS,mCO0+vCLL+34.8 Say F2990SCS Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "999,999,999"
      CASE pkAr="2" .AND. vsW4=2
           @vFFS,mCO0+vCLL+34.8 Say F2990SLC Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "999,999,999"
 ENDCASE
 IF f2990sld=vsLd .AND. pkAr="2" .AND. vsW4=1
      @vFFS,mCO0+vCLL+34.8 Say "*" Font "&mLetAri",9 Style "NQ" Size 1,1
 ENDIF
 SELECT tmP_hoja
 GOTO BOTTOM
 DO coLsc3
 @fFFS+1.7,mCO0+13 Say Recno() Font "&mLetRom",10 Style "BQ" Size 1,5 Pict "9999"
 SELECT kaRdex
 RELEASE psEr, pfAc, ptEn, pnTi, ptM1, psIg, pcL1
ENDPROC
*
PROCEDURE Lin_2112d
 PARAMETER piNi, pfIn
 PRIVATE pcLl, pcL1, pcL2, pcL3
 DO coLsc3
 STORE 0 TO pcL1, pcL2, pcL3
 IF mrEs>"3"
      STORE -0.1 TO pcL1
      STORE 0.1 TO pcL2
      STORE 0.2 TO pcL3
 ENDIF
 @ piNi, mcO0+18.7 TO pfIn, mcO0+18.7
 @ piNi, mcO0+32.2+pcL1 TO pfIn, mcO0+32.2+pcL1
 @ piNi, mcO0+48.4 TO pfIn, mcO0+48.4
 @ piNi, mcO0+vcLl-00.4 TO pfIn, mcO0+vcLl-00.4
 @ piNi, mcO0+vcLl+17.0 TO pfIn, mcO0+vcLl+17.0
 @ piNi, mcO0+vcLl+34.4+pcL2 TO pfIn, mcO0+vcLl+34.4+pcL2
 @ piNi, mcO0+vcLl+51.7+pcL3 TO pfIn, mcO0+vcLl+51.7+pcL3
 IF mrEs>"3"
      @ piNi, mcO0+vcLl+067.4 TO pfIn, mcO0+vcLl+067.4
      @ piNi, mcO0+vcLl+080.7+pcL3 TO pfIn, mcO0+vcLl+080.7+pcL3
      @ piNi, mcO0+vcLl+091.2 TO pfIn, mcO0+vcLl+091.2
      @ piNi, mcO0+vcLl+106.7+pcL3+pcL3 TO pfIn, mcO0+vcLl+106.7+pcL3+pcL3
 ENDIF
 RELEASE pcLl, pcL1, pcL2, pcL3
ENDPROC
*
PROCEDURE Li1_2112d
 PARAMETER piNi, pfIn
 DO coLsc3
 IF mrEs>"3"
      @ piNi, mcO0+vcLl+96.4 TO pfIn, mcO0+vcLl+96.4
 ENDIF
ENDPROC
*
PROCEDURE Cam_2112d
 PARAMETER ptPo
 STORE 00 TO cfFs
 DO muE_2112d WITH "v", "x"
 IF ptPo="1"
      DO orD_2112d
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 DO seE_2112d WITH "i"
 DO pa1_2112d
 IF cfFs=0
      STORE ifFs TO vfFs
      DO muE_2112d WITH "i", "v"
 ELSE
      STORE cfFs TO vfFs
      DO muE_2112d WITH "x", "v"
 ENDIF
 DO seE_2112d WITH "v"
 DO boT_2112d
 DO diS_2112d WITH "R"
ENDPROC
*
PROCEDURE P00_2112d
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 DO cuAdro WITH ifFs-3.1, mcO0, ffFs+2.75, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifFs-1.6, mcO0-00.2 TO ifFs-0.3, mcO0+muCo PATTERN 1 COLOR SCHEME 4
 @ ffFs+1.4, mcO0-00.2 TO ffFs+1.4, mcO0+muCo+0.2
 @ ffFs+1.4, mcO0+12.5 TO ffFs+2.9, mcO0+12.5
 @ ffFs+1.4, mcO0+19.2 TO ffFs+2.9, mcO0+19.2
 @ ffFs+1.4, mcO0+vcLl-00.4 TO ffFs+2.9, mcO0+vcLl-00.4
 @ ffFs+1.4, mcO0+vcLl+17.0 TO ffFs+2.9, mcO0+vcLl+17.0
 @ ffFs+1.4, mcO0+vcLl+34.4 TO ffFs+2.9, mcO0+vcLl+34.4
 @fFFS+1.7,mCO0           Say "KARDEX"                 Font "&mLetAri",9 Style "BT" Color 1
 @iFFS-3.1,mCO0           Say AllTrim(vCOD)+" : "+vDES Font "&mLetAri",9 Style "BQ" Size 1,103 Pict "@S106"
 @iFFS-1.5,mCO0+003.0     Say "Documento"              Font "&mLetAri",9 Style "NT"
 @iFFS-1.5,mCO0+022.2     Say "Fecha"                  Font "&mLetAri",9 Style "NT"
 @iFFS-1.5,mCO0+033.6     Say "G.Remisión"             Font "&mLetAri",9 Style "NT"
 @iFFS-1.5,mCO0+048.8     Say "Cliente/Proveed/Tipo"   Font "&mLetAri",9 Style "NT"
 @iFFS-1.5,mCO0+vCLL+03.2 Say "Ingresos"               Font "&mLetAri",9 Style "NT"
 @iFFS-1.5,mCO0+vCLL+20.9 Say "Salidas"                Font "&mLetAri",9 Style "NT"
 @iFFS-1.5,mCO0+vCLL+38.8 Say "Saldos"                 Font "&mLetAri",9 Style "NT"
 @ ffFs+1.4, mcO0+vcLl+51.7 TO ffFs+2.9, mcO0+vcLl+51.7
 @iFFS-1.5,mCO0+vCLL+53.1 Say "Doc.Interno"            Font "&mLetAri",9 Style "NT"
 IF mrEs>"3"
      @iFFS-1.5,mCO0+vCLL+069.1 Say "Emisión"              Font "&mLetAri",9 Style "NT"
      @iFFS-1.5,mCO0+vCLL+082.1 Say "Pedido"               Font "&mLetAri",9 Style "NT"
      @iFFS-1.5,mCO0+vCLL+091.5 Say "Orden-Compr"          Font "&mLetAri",9 Style "NT"
      @iFFS-1.5,mCO0+vCLL+110.0 Say "Prec.Unit.Vtas/Cpras" Font "&mLetAri",9 Style "NT"
 ENDIF
 DO liN_2112d WITH ifFs-1.5, ffFs+1.4
 DO li1_2112d WITH ifFs-0.3, ffFs+1.4
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_2112d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 @fFFS+1.6,mCO0+vCLL      Say vTSL+vTSA Font "&mLetRom",10 Style "BQ" Size 1,14 Pict "9,999,999.99"
 @fFFS+1.6,mCO0+vCLL+17.4 Say vTSA      Font "&mLetRom",10 Style "BQ" Size 1,14 Pict "9,999,999.99"
 @fFFS+1.6,mCO0+vCLL+34.8 Say vTSL      Font "&mLetRom",10 Style "BQ" Size 1,14 Pict "9,999,999.99"
ENDPROC
*
PROCEDURE Ord_2112d
 SELECT kaRdex
 STORE 99 TO mkEy
 DO CASE
      CASE vsW6=01
           DO orD_0000a WITH "2990", "A", "F2990DOC", "A"
      CASE vsW6=02
           DO orD_0000a WITH "2990", "A", "F2990TD1", "A"
      CASE vsW6=03
           DO orD_0000a WITH "2990", "A", "F2990COD", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Bot_2112d
 DO prEsiona WITH "3", "CONSU3", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB9, vcB9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW6=1
           DO prEsiona WITH "1", "CONSU3", vfB7, vcB7
      CASE vsW6=2
           DO prEsiona WITH "1", "CONSU3", vfB8, vcB8
      CASE vsW6=3
           DO prEsiona WITH "1", "CONSU3", vfB9, vcB9
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dat_2112d
 STORE "" TO pnTi
 STORE f2990ten TO ptEn
 DO CASE
      CASE f2990tdo="GI" .AND. LEN(ALLTRIM(ptEn))<>0
           SELECT tiPos_ing
           SEEK ptEn
           IF  .NOT. EOF()
                STORE ALLTRIM(f9217nti)+"-" TO pnTi
           ENDIF
      CASE f2990tdo="GS" .AND. LEN(ALLTRIM(ptEn))<>0
           SELECT tiPos_sal
           SEEK ptEn
           IF  .NOT. EOF()
                STORE ALLTRIM(f9218nti)+"-" TO pnTi
           ENDIF
      CASE ptEn="CJ"
           STORE "CJ - " TO pnTi
      CASE f2990tdo="GR"
           DO CASE
                CASE ptEn="01"
                     STORE "Venta - " TO pnTi
                CASE ptEn="02"
                     STORE "Salida x Traslado - " TO pnTi
                CASE ptEn="03"
                     STORE "Ingreso x Traslado - " TO pnTi
                CASE ptEn="04"
                     STORE "Salida x Devolucion - " TO pnTi
                CASE ptEn="05"
                     STORE "Salida x Consumo - " TO pnTi
                CASE ptEn="06"
                     STORE "Ingreso x Compra - " TO pnTi
                CASE ptEn="07"
                     STORE "Sal.x Vta.suj.Conf - " TO pnTi
                CASE ptEn="08"
                     STORE "Sal.x Transformac - " TO pnTi
                CASE ptEn="09"
                     STORE "Sal.x Emis.Itiner - " TO pnTi
                CASE ptEn="10"
                     STORE "Sal.x Trasl.Zona Prim - " TO pnTi
                CASE ptEn="11"
                     STORE "Sal.x Consignacion - " TO pnTi
                CASE ptEn="12"
                     STORE "Ing.x Rec.bienes Transf - " TO pnTi
                CASE ptEn="13"
                     STORE "Salida x Otros - " TO pnTi
                CASE ptEn="14"
                     STORE "Vta.c/entreg.a terc - " TO pnTi
           ENDCASE
 ENDCASE
 SELECT kaRdex
 IF f2990sld<vsLd
      STORE f2990sld TO vsLd
 ENDIF
 IF f2990srf="000" .OR. LEN(ALLTRIM(f2990srf))=0
      STORE "" TO psEr
 ELSE
      STORE ALLTRIM(f2990srf)+"-" TO psEr
 ENDIF
 STORE ALLTRIM(f2990fac) TO pfAc
 DO WHILE .T.
      IF SUBSTR(pfAc, 1, 1)="0"
           STORE SUBSTR(pfAc, 2, 20) TO pfAc
      ELSE
           EXIT
      ENDIF
 ENDDO
 STORE psEr+pfAc TO pfAc
ENDPROC
*
PROCEDURE Di1_2112d
 PARAMETER ptIp
 DO CASE
      CASE ptIp$"NR" .AND. vsW8=1 .AND. f2990tdo+f2990ser+f2990doc=ytDo+ ;
           ysEr+ydOc
           SET COLOR TO RGB(154,162,170,180,80,28)
      CASE ptIp$"NR" .AND. vsW9=1 .AND. f2990tdo+f2990ser+f2990doc=ztDo+ ;
           zsEr+zdOc
           SET COLOR TO RGB(154,162,170,180,80,28)
      CASE ptIp="N" .AND. f2990tpp="0"
           SET COLOR TO RGB(180,80,28,154,162,170)
      CASE ptIp="N" .AND. (f2990tdo="BO" .OR. (f2990td1="NC" .AND.  ;
           f2990tpo="2"))
           SET COLOR TO RGB(155,0,0,154,162,170)
      CASE ptIp="N" .AND. (f2990tdo="BE" .OR. (f2990td1="NC" .AND.  ;
           f2990tpo="2"))
           SET COLOR TO RGB(155,0,0,154,162,170)
      CASE ptIp="N" .AND. (f2990tdo="BC" .OR. (f2990td1="NC" .AND.  ;
           f2990tpo="2"))
           SET COLOR TO RGB(155,0,0,154,162,170)
      CASE ptIp="N" .AND. f2990tdo="GR"
           SET COLOR TO RGB(0,0,128,154,162,170)
      CASE ptIp="N" .AND. f2990tdo="GS"
           SET COLOR TO RGB(0,128,0,154,162,170)
      CASE ptIp="N" .AND. f2990tdo="GI"
           SET COLOR TO RGB(100,100,0,154,162,170)
      CASE ptIp="N" .AND. f2990tdo="CO"
           SET COLOR TO RGB(0,0,190,154,162,170)
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R" .AND. (f2990tpp="0" .OR. f2990tdo="GR" .OR. f2990tdo="CO")
           DO coLblz
      CASE ptIp="R" .AND. (f2990tdo="BO" .OR. (f2990td1="NC" .AND.  ;
           f2990tpo="2"))
           DO coLblr
      CASE ptIp="R" .AND. (f2990tdo="BE" .OR. (f2990td1="NC" .AND.  ;
           f2990tpo="2"))
           DO coLblr
      CASE ptIp="R" .AND. (f2990tdo="BC" .OR. (f2990td1="NC" .AND.  ;
           f2990tpo="2"))
           DO coLblr
      CASE ptIp="R" .AND. f2990tdo="GS"
           DO coLblv
      CASE ptIp="R" .AND. f2990tdo="GI"
           SET COLOR TO RGB(100,100,0,255,255,255)
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Di2_2112d
 DO CASE
      CASE ptIp="N" .AND. f2990tpp<>"0" .AND. (f2990tdo="FA" .OR.  ;
           f2990tdo="FE" .OR. f2990tdo="FC" .OR. f2990tdo="BO" .OR.  ;
           f2990tdo="BE" .OR. f2990tdo="BC" .OR. f2990tdo="NP" .OR.  ;
           (f2990td1="NC" .AND. f2990tpo="2") .OR. f2990tdo="CO")
           DO coLsc3
      CASE ptIp="R" .AND. f2990tpp<>"0" .AND. (f2990tdo="FA" .OR.  ;
           f2990tdo="FE" .OR. f2990tdo="FC" .OR. f2990tdo="BO" .OR.  ;
           f2990tdo="BE" .OR. f2990tdo="BC" .OR. f2990tdo="NP" .OR.  ;
           (f2990td1="NC" .AND. f2990tpo="2") .OR. f2990tdo="CO")
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Di3_2112d
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mdEc=4 .AND. f2990can>999999
           STORE "9999,999.999" TO ppIc
      CASE mdEc=4 .AND. f2990can>9999999
           STORE "99999999.999" TO ppIc
      OTHERWISE
           STORE vpIc TO ppIc
 ENDCASE
ENDPROC
*
PROCEDURE Di4_2112d
 DO CASE
      CASE ptIp="N" .AND. pkAr="1" .AND. (f2990sls<0 .OR. f2990scs<0)
           SET COLOR TO RGB(155,0,0,154,162,170)
      CASE ptIp="R" .AND. pkAr="1" .AND. (f2990sls<0 .OR. f2990scs<0)
           DO coLblr
      CASE ptIp="N" .AND. pkAr="2" .AND. (f2990sld<0 .OR. f2990slc<0)
           SET COLOR TO RGB(155,0,0,154,162,170)
      CASE ptIp="R" .AND. pkAr="2" .AND. (f2990sld<0 .OR. f2990slc<0)
           DO coLblr
 ENDCASE
 DO CASE
      CASE mdEc=4 .AND. f2990sls>999999
           STORE "9999,999.999" TO ppIc
      CASE mdEc=4 .AND. f2990sls>9999999
           STORE "99999999.999" TO ppIc
      OTHERWISE
           STORE vpIc TO ppIc
 ENDCASE
ENDPROC
*
PROCEDURE Res_2112d
 STORE vtDo TO ctDo
 STORE vsEr TO csEr
 STORE vdOc TO cdOc
 STORE vtPo TO ctPo
 STORE vtPp TO ctPp
 STORE vaNo TO caNo
 STORE vmEs TO cmEs
 STORE vdIa TO cdIa
 DO rs1_2112b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ctDo TO vtDo
 STORE csEr TO vsEr
 STORE cdOc TO vdOc
 STORE ctPo TO vtPo
 STORE ctPp TO vtPp
 STORE caNo TO vaNo
 STORE cmEs TO vmEs
 STORE cdIa TO vdIa
 SAVE SCREEN TO vpAn_11
 SET READBORDER ON
 SELECT kaRdex
 DO p00_2112d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 SET DELETED OFF
 GOTO TOP
 SET DELETED ON
 DO seE_2112d WITH "i"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"  ;
    .AND. vfFs<ffFs+1
      IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO" .AND.  ;
         (LEN(ALLTRIM(f2990td1))=0 .OR. LEN(ALLTRIM(f2990srf))=0 .OR.  ;
         LEN(ALLTRIM(f2990fac))=0)))
           SKIP
           LOOP
      ENDIF
      IF f2990ano+f2990mes+f2990dia+f2990tpo+f2990tpp+f2990tdo+f2990ser+ ;
         f2990doc=vaNo+vmEs+vdIa+vtPo+vtPp+vtDo+vsEr+vdOc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE vtDo TO itDo, ctDo
      STORE vsEr TO isEr, csEr
      STORE vdOc TO idOc, cdOc
      STORE vtPo TO itPo, ctPo
      STORE vtPp TO itPp, ctPp
      STORE vaNo TO iaNo, caNo
      STORE vmEs TO imEs, cmEs
      STORE vdIa TO idIa, cdIa
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_2112d WITH "i"
 DO paN_2112d
 STORE cfFs TO vfFs
 DO muE_2112d WITH "c", "v"
 DO seE_2112d WITH "v"
 DO diS_2112d WITH "R"
ENDPROC
*
PROCEDURE See_2112d
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW6=1
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc+vaNo+vmEs+vdIa+ ;
                          vtPo+vtPp
                CASE vsW6=2
                     SEEK ALLTRIM(vcOd)+"*"+vtDo+vaNo+vmEs+vdIa+vsEr+vdOc+ ;
                          vtPo+vtPp
                CASE vsW6=3
                     SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtPo+vtPp+vtDo+ ;
                          vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW6=1
                     SEEK ALLTRIM(vcOd)+"*"+itDo+isEr+idOc+iaNo+imEs+idIa+ ;
                          itPo+itPp
                CASE vsW6=2
                     SEEK ALLTRIM(vcOd)+"*"+itDo+iaNo+imEs+idIa+isEr+idOc+ ;
                          itPo+itPp
                CASE vsW6=3
                     SEEK ALLTRIM(vcOd)+"*"+iaNo+imEs+idIa+itPo+itPp+itDo+ ;
                          isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW6=1
                     SEEK ALLTRIM(vcOd)+"*"+utDo+usEr+udOc+uaNo+umEs+udIa+ ;
                          utPo+utPp
                CASE vsW6=2
                     SEEK ALLTRIM(vcOd)+"*"+utDo+uaNo+umEs+udIa+usEr+udOc+ ;
                          utPo+utPp
                CASE vsW6=3
                     SEEK ALLTRIM(vcOd)+"*"+uaNo+umEs+udIa+utPo+utPp+utDo+ ;
                          usEr+udOc
           ENDCASE
      CASE psEe="y"
           DO CASE
                CASE vsW6=1
                     SEEK ALLTRIM(vcOd)+"*"+ytDo+ysEr+ydOc+yaNo+ymEs+ydIa+ ;
                          ytPo+ytPp
                CASE vsW6=2
                     SEEK ALLTRIM(vcOd)+"*"+ytDo+yaNo+ymEs+ydIa+ysEr+ydOc+ ;
                          ytPo+ytPp
                CASE vsW6=3
                     SEEK ALLTRIM(vcOd)+"*"+yaNo+ymEs+ydIa+ytPo+ytPp+ytDo+ ;
                          ysEr+ydOc
           ENDCASE
      CASE psEe="z"
           DO CASE
                CASE vsW6=1
                     SEEK ALLTRIM(vcOd)+"*"+ztDo+zsEr+zdOc+zaNo+zmEs+zdIa+ ;
                          ztPo+ztPp
                CASE vsW6=2
                     SEEK ALLTRIM(vcOd)+"*"+ztDo+zaNo+zmEs+zdIa+zsEr+zdOc+ ;
                          ztPo+ztPp
                CASE vsW6=3
                     SEEK ALLTRIM(vcOd)+"*"+zaNo+zmEs+zdIa+ztPo+ztPp+ztDo+ ;
                          zsEr+zdOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2112d
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xtPo TO vtPo
           STORE xtPp TO vtPp
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vtPo TO xtPo
           STORE vtPp TO xtPp
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
      CASE pmU1="v" .AND. pmU2="y"
           STORE vtDo TO ytDo
           STORE vsEr TO ysEr
           STORE vdOc TO ydOc
           STORE vtPo TO ytPo
           STORE vtPp TO ytPp
           STORE vaNo TO yaNo
           STORE vmEs TO ymEs
           STORE vdIa TO ydIa
      CASE pmU1="v" .AND. pmU2="z"
           STORE vtDo TO ztDo
           STORE vsEr TO zsEr
           STORE vdOc TO zdOc
           STORE vtPo TO ztPo
           STORE vtPp TO ztPp
           STORE vaNo TO zaNo
           STORE vmEs TO zmEs
           STORE vdIa TO zdIa
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE ctPo TO vtPo
           STORE ctPp TO vtPp
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE itPo TO vtPo
           STORE itPp TO vtPp
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE utPo TO vtPo
           STORE utPp TO vtPp
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2990tdo TO vtDo
           STORE f2990ser TO vsEr
           STORE f2990doc TO vdOc
           STORE f2990tpo TO vtPo
           STORE f2990tpp TO vtPp
           STORE f2990ano TO vaNo
           STORE f2990mes TO vmEs
           STORE f2990dia TO vdIa
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2990tdo TO utDo
           STORE f2990ser TO usEr
           STORE f2990doc TO udOc
           STORE f2990tpo TO utPo
           STORE f2990tpp TO utPp
           STORE f2990ano TO uaNo
           STORE f2990mes TO umEs
           STORE f2990dia TO udIa
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2990tdo TO itDo
           STORE f2990ser TO isEr
           STORE f2990doc TO idOc
           STORE f2990tpo TO itPo
           STORE f2990tpp TO itPp
           STORE f2990ano TO iaNo
           STORE f2990mes TO imEs
           STORE f2990dia TO idIa
 ENDCASE
ENDPROC
*
PROCEDURE Gra_2112d
 @ 1, 1 SAY "Grabando Kardex" STYLE "BQ" SIZE 1, 20
 SELECT kaRdex
 GOTO TOP
 SET DELETED ON
 SEEK ALLTRIM(vcOd)+"*"
 STORE 0 TO tpRm, vsTo, vsLc, vsTs, vsCs, vpRm
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
      STORE f2990ano TO vaNo
      STORE f2990mes TO vmEs
      STORE f2990dia TO vdIa
      STORE f2990tpo TO vtPo
      STORE f2990tpp TO vtPp
      STORE f2990tdo TO vtDo
      STORE f2990ser TO vsEr
      STORE f2990doc TO vdOc
      DO seE_2112d WITH "v"
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtPo+vtPp+ ;
              vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                UNLOCK ALL
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      IF vtDo+vsEr+vdOc=ytDo+ysEr+ydOc
           REPLACE f2990can WITH ycAn
      ENDIF
      DO CASE
           CASE f2990tpo="1" .AND. f2990tpp="0" .AND. f2990td1<>"NC"
                STORE f2990can TO vsTo
                STORE f2990caj TO vsLc
           CASE f2990tpo="1" .AND. f2990tpp="0"
                STORE f2990can*-1 TO vsTo
                STORE f2990caj*-1 TO vsLc
           CASE f2990tpo="1" .AND. f2990td1<>"NC" .AND. (vsTo+f2990can<=0  ;
                .OR. vsTo<=0)
                STORE vsTo+f2990can TO vsTo
                STORE vsLc+f2990caj TO vsLc
           CASE f2990tpo="1" .AND. f2990td1<>"NC"
                STORE vsTo+f2990can TO vsTo
                STORE vsLc+f2990caj TO vsLc
           CASE f2990tpo$"12"
                STORE vsTo-f2990can TO vsTo
                STORE vsLc-f2990caj TO vsLc
      ENDCASE
      IF f2990tdo="NP" .OR. (f2990tdo="CO" .AND. (LEN(ALLTRIM(f2990td1))= ;
         0 .OR. LEN(ALLTRIM(f2990srf))=0 .OR. LEN(ALLTRIM(f2990fac))=0))
      ELSE
           DO CASE
                CASE f2990tpo="1" .AND. f2990tpp="0" .AND. f2990td1<>"NC"
                     STORE f2990can TO vsTs
                     STORE f2990caj TO vsCs
                     STORE f2990cos+f2990gas-f2990dct TO vpRm
                CASE f2990tpo="1" .AND. f2990tpp="0"
                     STORE f2990can*-1 TO vsTs
                     STORE f2990caj*-1 TO vsCs
                CASE f2990tpo="1" .AND. f2990td1<>"NC" .AND. (vsTs+ ;
                     f2990can<=0 .OR. vsTs<=0)
                     STORE vsTs+f2990can TO vsTs
                     STORE vsCs+f2990caj TO vsCs
                     STORE f2990cos+f2990gas-f2990dct TO vpRm
                CASE f2990tpo="1" .AND. f2990td1<>"NC"
                     STORE vsTs+f2990can TO vsTs
                     STORE vsCs+f2990caj TO vsCs
                     STORE f2990cos+f2990gas-f2990dct TO pcOs
                     STORE pcOs*f2990can TO pcOs
                     STORE tpRm+pcOs TO tpRm
                     STORE ROUND(tpRm/vsTs, 4) TO vpRm
                CASE f2990tpo$"12"
                     STORE vsTs-f2990can TO vsTs
                     STORE vsCs-f2990caj TO vsCs
           ENDCASE
      ENDIF
      REPLACE f2990sld WITH vsTo
      REPLACE f2990slc WITH vsLc
      REPLACE f2990sls WITH vsTs
      REPLACE f2990scs WITH vsCs
      REPLACE f2990prm WITH vpRm
      UNLOCK
      STORE f2990sls*f2990prm TO tpRm
      SKIP
 ENDDO
 @ 1, 1 SAY "Grabando Productos" STYLE "BQ" SIZE 1, 20
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. RLOCK()
      DO reG_lock WITH ALLTRIM(vcOd)+"*"
      IF mkEy=k_Esc
           UNLOCK ALL
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f2111sto WITH vsTo
 UNLOCK
 @ 1, 1 SAY "Grabando Saldos" STYLE "BQ" SIZE 1, 20
 SELECT prO_tot
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. RLOCK()
      DO reG_lock WITH ALLTRIM(vcOd)+"*"
      IF mkEy=k_Esc
           UNLOCK ALL
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f2118sto WITH vsTo
 UNLOCK
 FLUSH
ENDPROC
*
PROCEDURE Rep_2112d
 STORE 0 TO mvIs, tpAg
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina2 IN PAC2112B
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO taM_2112z IN PAC2112Z
 SELECT kaRdex
 SET ORDER TO F2990COD
 DO reP_2112z IN PAC2112Z
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Clp_2112d
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0-26  ;
           .AND. mcCc<=mcO0+166.3
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0-26  ;
           .AND. mcCc<=mcO0+166.3
           DO diS_2112d WITH "N"
           STORE INT(mfIl-ifFs) TO vsWw
           STORE ifFs+vsWw TO vfFs
           STORE 1 TO csWw
           DO seE_2112d WITH "i"
           IF vsWw>0
                DO WHILE .T.
                     SKIP
                     IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                          SEEK ALLTRIM(vcOd)+"*"
                          EXIT
                     ENDIF
                     IF pkAr="1" .AND. (f2990tdo="NP" .OR. (f2990tdo="CO"  ;
                        .AND. (LEN(ALLTRIM(f2990td1))=0 .OR.  ;
                        LEN(ALLTRIM(f2990srf))=0 .OR.  ;
                        LEN(ALLTRIM(f2990fac))=0)))
                          LOOP
                     ENDIF
                     STORE csWw+1 TO csWw
                     IF csWw>vsWw
                          EXIT
                     ENDIF
                ENDDO
           ENDIF
           STORE 99 TO mkEy
           DO muE_2112d WITH "F", "v"
           DO diS_2112d WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2112d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran el Kardex del producto escogi-"
 @ pfIl+1, 02 SAY "do."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 26 SAY ":" STYLE "BT"
 @ pfIl+6, 26 SAY ":" STYLE "BT"
 @ pfIl+7, 26 SAY ":" STYLE "BT"
 @ pfIl+8, 26 SAY ":" STYLE "BT"
 @ pfIl+5, 08 SAY "ESC" STYLE "BT"
 @ pfIl+6, 08 SAY "F10" STYLE "BT"
 @ pfIl+7, 08 SAY "F1" STYLE "BT"
 @ pfIl+8, 08 SAY "F2" STYLE "BT"
 @ pfIl+5, 28 SAY "Regresar a pantalla anterior"
 @ pfIl+6, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 28 SAY "Ayuda del Programa"
 @ pfIl+8, 28 SAY "Si hay Negativo ir a ese ítem"
 STORE pfIl+9 TO pfIl
 IF wtPo="3"
      @ pfIl+0, 26 SAY ":" STYLE "BT"
      @ pfIl+1, 26 SAY ":" STYLE "BT"
      @ pfIl+0, 08 SAY "F5" STYLE "BT"
      @ pfIl+1, 08 SAY "F7" STYLE "BT"
      @ pfIl+0, 28 SAY "Cambiar Fecha de Despacho"
      @ pfIl+1, 28 SAY "Aumentar Codigo y Cantidad en Compra disminu-"
      @ pfIl+2, 28 SAY "yendo la cantidad en el codigo actual"
      STORE pfIl+3 TO pfIl
 ENDIF
 @ pfIl+0, 26 SAY ":" STYLE "BT"
 @ pfIl+1, 26 SAY ":" STYLE "BT"
 @ pfIl+2, 26 SAY ":" STYLE "BT"
 @ pfIl+3, 26 SAY ":" STYLE "BT"
 @ pfIl+4, 26 SAY ":" STYLE "BT"
 @ pfIl+5, 26 SAY ":" STYLE "BT"
 @ pfIl+6, 26 SAY ":" STYLE "BT"
 @ pfIl+7, 26 SAY ":" STYLE "BT"
 @ pfIl+0, 08 SAY "F8" STYLE "BT"
 @ pfIl+1, 08 SAY "F9" STYLE "BT"
 @ pfIl+2, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+3, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+4, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+5, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+6, 08 SAY "HOME" STYLE "BT"
 @ pfIl+7, 08 SAY "END" STYLE "BT"
 @ pfIl+0, 28 SAY "Pasar datos a Excel"
 @ pfIl+1, 28 SAY "Buscar Fecha x Rango"
 @ pfIl+2, 28 SAY "Línea inferior"
 @ pfIl+3, 28 SAY "Línea superior"
 @ pfIl+4, 28 SAY "Página siguiente"
 @ pfIl+5, 28 SAY "Página anterior"
 @ pfIl+6, 28 SAY "Primera línea"
 @ pfIl+7, 28 SAY "Última línea"
 STORE pfIl+8 TO pfIl
 IF mcAj=1 .AND. vsRr=1
      @ pfIl+0, 26 SAY ":" STYLE "BT"
      @ pfIl+1, 26 SAY ":" STYLE "BT"
      @ pfIl+0, 08 SAY "FLECHA -->" STYLE "BT"
      @ pfIl+1, 08 SAY "FLECHA <--" STYLE "BT"
      @ pfIl+0, 28 SAY "Ver Kardex x Cajas/Unidades"
      @ pfIl+1, 28 SAY "Ver Kardex x Cajas/Unidades"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 26 SAY ":" STYLE "BT"
 @ pfIl+1, 26 SAY ":" STYLE "BT"
 @ pfIl+2, 26 SAY ":" STYLE "BT"
 @ pfIl+0, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+1, 08 SAY "CTRL -->" STYLE "BT"
 @ pfIl+2, 08 SAY "CTRL <--" STYLE "BT"
 @ pfIl+0, 28 SAY "Imprimir Kardex"
 @ pfIl+1, 28 SAY "Cambiar de Orden de Consulta"
 @ pfIl+2, 28 SAY "Cambiar de Orden de Consulta"
 STORE pfIl+3 TO pfIl
 IF wtPo="3"
      @ pfIl+0, 26 SAY ":" STYLE "BT"
      @ pfIl+1, 26 SAY ":" STYLE "BT"
      @ pfIl+0, 08 SAY "ALT + Z" STYLE "BT"
      @ pfIl+1, 08 SAY "TAB" STYLE "BT"
      @ pfIl+0, 28 SAY "Marcar Inicio y Fin de Negativos para arreglar"
      @ pfIl+1, 28 SAY "Pasar a Tmp-Excel las marcas de Negativos"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+1, 02 SAY  ;
   "Los Documentos aparecen en diferentes colores. Cuando un producto"
 @ pfIl+2, 02 SAY "es parte de un Conjunto aparece una C."
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
