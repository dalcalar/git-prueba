 USE f:\tramite\paso ALIAS paSo IN 0
 SELECT paSo
 GOTO TOP
 DO WHILE  .NOT. EOF()
      SELECT paSo
      xpAso = ""
      xpAso = poNclave(ALLTRIM(paSo.t_Clav))
      REPLACE t_Clav WITH xpAso
      SKIP
 ENDDO
ENDPROC
*
FUNCTION PONCLAVE
 PARAMETER mcLave
 PRIVATE xiNi, xmEd, xmEd1, xmEd2, xfIn
 xiNi = ""
 xmEd = ""
 xmEd1 = ""
 xmEd2 = ""
 xfIn = ""
 xiNi = mcLave
 IF EMPTY(xiNi)
      RETURN xfIn
 ENDIF
 FOR i = 1 TO LEN(xiNi)
      xmEd = xmEd+SUBSTR(xiNi, LEN(xiNi)-i+1, 1)
 ENDFOR
 FOR j = 1 TO LEN(xiNi)
      xmEd1 = xmEd1+CHR(ASC(SUBSTR(xmEd, j, 1))+(LEN(xiNi)+(34+ ;
              ROUND((LEN(xmEd1)/3), 0))))
 ENDFOR
 FOR k = 1 TO (8-ROUND((LEN(xiNi)/2), 0))
      xmEd2 = xmEd2+CHR(ASC(SUBSTR(xiNi, k, 1))+LEN(xiNi)+(34- ;
              ROUND((LEN(xiNi)/3), 0)))
 ENDFOR
 FOR n = 1 TO LEN(xmEd2)
      xcHar = ""
      xcHar = SUBSTR(xmEd2, n, 1)
      DO WHILE  .NOT. BETWEEN(ASC(xcHar), 33, 93)
           DO CASE
                CASE ASC(xcHar)<33
                     xcHar = CHR(ASC(xcHar)+5)
                CASE ASC(xcHar)>93
                     xcHar = CHR(ASC(xcHar)-5)
           ENDCASE
      ENDDO
      xfIn = xfIn+xcHar
 ENDFOR
 RETURN xfIn
ENDFUNC
*
