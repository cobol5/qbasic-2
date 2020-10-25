'                         How to use the MOUSE in QBasic
'                    note# the reusable button and box code
'              Mouse calls and code stolen from FIDO QuickBasic Sub
'                              John Rodgers
'                             Too Cool Fool
'                           Wizard Productions

DECLARE SUB chkInkey ()
DECLARE SUB typeSub ()
DECLARE SUB eye ()
DECLARE SUB review ()
DECLARE SUB getTime ()
DECLARE SUB winSub ()
DECLARE SUB drawButton (x, y, l$)
DECLARE SUB pushButton (x, y)
DECLARE SUB threeDbox (uRow%, uCol%, lRow%, lCol%)
COMMON SHARED prTime$
COMMON SHARED a$, text$
COMMON SHARED row%, col%, rows%, cols%, outv

'the  following mouse code and calls I stole off FIDO QuickBasic Sub, TCF
DEF SEG = 0
M.seg& = 256& * PEEK(207) + PEEK(206)
M.info% = 256& * PEEK(205) + PEEK(204) + 2

' see if a Mouse Driver is loaded
DEF SEG = M.seg&
IF (M.seg& OR (M.info% - 2)) AND PEEK(M.info% - 2) = 207 THEN
 COLOR 0, 7
 CLS

 SCREEN 11
 LOCATE 12, 30
 PRINT "Mouse Driver Not Found!"
 LOCATE 14, 28
 PRINT " Load the Mouse and re-try"
 
END IF
'CALL absolute(0, 0, 0, 0, M.info%)  'Set Defaults
'CALL absolute(1, 0, 0, 0, M.info%)  'Turn on Pointer
'CALL absolute(2, 0, 0, 0, M.info%)  'Turn off Pointer
'CALL absolute(3, 0, 0, 0, M.info%)  'Status
'CALL absolute(4, 0, col%, row%, M.info%) 'Locate Pointer
' in text mode Mickey reports 640 x 192
' Divide by 8 to use row and col
 
CALL absolute(0, 0, 0, 0, M.info%)  'Set Default
 SCREEN 9
COLOR 8, 7
CLS
 
CALL absolute(1, 0, 0, 0, M.info%)
CALL absolute(4, 0, col% * 8, row% * 8, M.info%)

drawButton 2, 4, "A"
drawButton 2, 10, "B"                    'draw buttons
drawButton 5, 4, "C"
drawButton 5, 10, "L"
drawButton 21, 36, "Q"

threeDbox 1, 2, 8, 16                   'drawboxes
threeDbox 1, 20, 8, 60
threeDbox 5, 61, 8, 79
threeDbox 9, 27, 20, 79
threeDbox 21, 22, 23, 34
threeDbox 21, 1, 23, 19
threeDbox 21, 42, 23, 54
threeDbox 21, 57, 23, 71
  rows% = 10
 DO                                   'main loop
 getTime
threeDbox 1, 2, 8, 16
 CALL absolute(3, mbut%, xpos%, ypos%, M.info%)  'check on mouse
 LOCATE 22, 2
 PRINT " Row"; (ypos% \ 8) + 1; "  "; "Col"; (xpos% \ 8) + 1
 LOCATE 22, 23
 PRINT " Button "; mbut%
  LOCATE 22, 59
 PRINT "           "
                                                'if buttom pressed
    'A                                                                                                               
 IF (ypos% \ 8) + 1 = 5 AND (xpos% / 8) + 1 > 4 AND (xpos% / 8) + 1 < 8 AND mbut% = 0 THEN : LOCATE 22, 61: COLOR 14: PRINT "Message"
 IF (ypos% \ 8) + 1 = 5 AND (xpos% / 8) + 1 > 4 AND (xpos% / 8) + 1 < 8 AND mbut% = 1 THEN
   pushButton 2, 4
  typeSub
 END IF
   
  IF (ypos% \ 8) + 1 = 5 AND (xpos% / 8) + 1 > 4 AND (xpos% / 8) + 1 < 8 AND mbut% = 0 THEN
   drawButton 2, 4, ""
  END IF
    'B
  IF (ypos% \ 8) + 1 = 5 AND (xpos% / 8) + 1 > 10 AND (xpos% / 8) + 1 < 14 AND mbut% = 0 THEN : LOCATE 22, 59: COLOR 14: PRINT "View Window"
  IF (ypos% \ 8) + 1 = 5 AND (xpos% / 8) + 1 > 10 AND (xpos% / 8) + 1 < 14 AND mbut% = 1 THEN
   pushButton 2, 10
   
   winSub
  END IF
  IF (ypos% \ 8) + 1 = 5 AND (xpos% / 8) + 1 > 10 AND (xpos% / 8) + 1 < 14 AND mbut% = 0 THEN
   drawButton 2, 10, ""
  END IF
    'C
    IF (ypos% \ 8) + 1 = 10 AND (xpos% / 8) + 1 > 4 AND (xpos% / 8) + 1 < 8 AND mbut% = 0 THEN : LOCATE 22, 59: COLOR 14: PRINT "Clear Views"
  IF (ypos% \ 8) + 1 = 10 AND (xpos% / 8) + 1 > 4 AND (xpos% / 8) + 1 < 8 AND mbut% = 1 THEN
   pushButton 5, 4
   
  review
  END IF
  IF (ypos% \ 8) + 1 = 10 AND (xpos% / 8) + 1 > 4 AND (xpos% / 8) + 1 < 8 AND mbut% = 0 THEN
   drawButton 5, 4, ""
  
  END IF
    'L
     IF (ypos% \ 8) + 1 = 10 AND (xpos% / 8) + 1 > 10 AND (xpos% / 8) + 1 < 14 AND mbut% = 0 THEN : LOCATE 22, 59: COLOR 14: PRINT "Show Logo"
  IF (ypos% \ 8) + 1 = 10 AND (xpos% / 8) + 1 > 10 AND (xpos% / 8) + 1 < 14 AND mbut% = 1 THEN
   pushButton 5, 10
   eye
  END IF
  IF (ypos% \ 8) + 1 = 10 AND (xpos% / 8) + 1 > 10 AND (xpos% / 8) + 1 < 14 AND mbut% = 0 THEN
   drawButton 5, 10, ""
 
  END IF
    'Q
     IF (ypos% \ 8) + 1 = 38 AND (xpos% / 8) + 1 > 36 AND (xpos% / 8) + 1 < 40 AND mbut% = 0 THEN
     LOCATE 6, 62
     COLOR 14
     PRINT "**** Click Q ****"     'this gets printed if the cursor goes across the "Q" button
     LOCATE 7, 62
    PRINT "**** to QUIT ****"
    END IF
  IF (ypos% \ 8) + 1 = 38 AND (xpos% / 8) + 1 > 36 AND (xpos% / 8) + 1 < 40 AND mbut% = 1 THEN
  outv = 1
  END IF
  IF (ypos% \ 8) + 1 = 10 AND (xpos% / 8) + 1 > 10 AND (xpos% / 8) + 1 < 14 AND mbut% = 0 THEN
   drawButton 5, 10, ""

  END IF
  a$ = INKEY$
   
 ' a$ = "s"
  IF LEN(a$) THEN chkInkey        'keyboard input
' LOCATE 7, 62
' PRINT rows%; " "; cols%
 LOOP UNTIL outv = 1              'exit
LOCATE 12, 2
COLOR 8, 0
                                 'brag
PRINT "    Works. Don't it?   "
FOR T = 1 TO 30000
NEXT
FOR T = 1 TO 30000
NEXT

SYSTEM

SUB chkInkey           'controls user input
 STATIC rows%
 IF rows% = 0 AND rows% < 11 THEN rows% = 10
    SELECT CASE a$                                   'input

   CASE CHR$(8)   'backspace
    IF fields = 4 AND LEN(text$) = 6 THEN
   
      LOCATE rows%, 30 + LEN(text$)
      
      text$ = LEFT$(text$, (LEN(text$) - 1))
     ELSE
     LOCATE rows%, 30 + LEN(text$)                  'black out entire string
     PRINT STRING$(LEN(text$), " ")
    END IF

     a$ = ""                                  'clear a$
     'ON ERROR GOTO eror:
    IF LEN(text$) - 1 >= 0 THEN
      text$ = LEFT$(text$, LEN(text$) - 1)         'reprint shortened text$
     END IF

 
  CASE CHR$(13)   'carrage return

      typeSub
      eye
      winSub

    rows% = rows% + 1
    text$ = ""
    
  CASE CHR$(27)   'escape

     
   outv = 1
END SELECT
text$ = text$ + a$
IF LEN(text$) >= 46 THEN BEEP: text$ = LEFT$(text$, 46)
   cols% = 29
   LOCATE rows%, 29
PRINT text$


END SUB

SUB drawButton (x, y, l$)
                           'draws a button at x and y with a letter l$
COLOR 15
LOCATE x, y
PRINT "ÚÄÄÄ"
LOCATE x + 1, y
PRINT "³"; " "; l$
LOCATE x + 2, y
PRINT "À"
COLOR 8
LOCATE x, y + 4
PRINT "¿"
LOCATE x + 1, y + 4
PRINT "³"
LOCATE x + 2, y + 1
PRINT "ÄÄÄÙ"
END SUB

SUB eye                    'draws my logo

LINE (500, 8)-(605, 35), 8, BF
LINE (499, 7)-(606, 36), 4, B
CIRCLE (550, 20), 32, 14, , , 2 / 9
PAINT STEP(0, 0), 14
CIRCLE STEP(0, -1), 11, 8
PAINT STEP(0, 0), 8, 8
CIRCLE STEP(1, 1), 1, 12
STATIC T
T = T + 1
IF T >= 14 THEN T = 0
COLOR T

LOCATE 4, 62
PRINT "Wizard Productions"
END SUB

SUB getTime

           'convert SYSTEM time and date to prTime$ and prDate$
                        'for program use
T$ = TIME$
Hr = VAL(T$)
IF Hr < 12 THEN Ampm$ = " AM" ELSE Ampm$ = " PM"
IF Hr > 12 THEN Hr = Hr - 12
IF Hr = 0 THEN Hr = 12

 prgTime$ = STR$(Hr) + RIGHT$(T$, 6) + Ampm$


 IF Ampm$ = " AM" THEN                        ' convert prgTime$ to 5 characters

prTime$ = LEFT$(prgTime$, 5) + " AM"                'for AM
 END IF

 IF Ampm$ = " AM" AND VAL(LEFT$(prgTime$, 3)) >= 10 THEN ' convert prgTime$ to 6 characters
 prTime$ = LEFT$(prgTime$, 6) + " AM"                'for PM after 10
 END IF
 IF Ampm$ = " PM" THEN                          ' convert prgTime$ to 5 characters
prTime$ = LEFT$(prgTime$, 5) + " PM"                 'for PM
 END IF

 IF Ampm$ = " PM" AND VAL(LEFT$(prgTime$, 3)) >= 10 THEN ' convert prgTime$ to 6 characters
prTime$ = LEFT$(prgTime$, 6) + " PM"               'for PM after 10
 END IF

COLOR 15, 11
LOCATE 22, 43        '  PRINT prTime$
PRINT LTRIM$(prTime$); " "; RIGHT$(TIME$, 2)
   

  


END SUB

SUB pushButton (x, y)
               'show a double line button at x and y
                'while mouse button is pressed
 COLOR 8
LOCATE x, y
PRINT "ÉÍÍÍ"
LOCATE x + 1, y
PRINT "º "
LOCATE x + 2, y
PRINT "È"
COLOR 15
LOCATE x, y + 4
PRINT "»"
LOCATE x + 1, y + 4
PRINT "º"
LOCATE x + 2, y + 1
PRINT "ÍÍÍ¼"

END SUB

SUB review
VIEW
CLS                     'clears and redraws screen DO NOT DO THIS
                            'very kludgey
threeDbox 1, 2, 8, 16
threeDbox 1, 20, 8, 60
threeDbox 5, 61, 8, 79
threeDbox 9, 27, 20, 79
threeDbox 21, 22, 23, 34
threeDbox 21, 1, 23, 19
threeDbox 21, 42, 23, 54
threeDbox 21, 57, 23, 71
drawButton 2, 4, "A"
drawButton 2, 10, "B"
drawButton 5, 4, "C"
drawButton 5, 10, "L"
drawButton 21, 36, "Q"
 
END SUB

SUB threeDbox (uRow%, uCol%, lRow%, lCol%)
 COLOR 8
   ' Draw top of box.
  LOCATE uRow%, uCol%: PRINT CHR$(218);
   LOCATE , uCol% + 1: PRINT STRING$(lCol% - uCol%, CHR$(196));
   LOCATE , lCol%: PRINT CHR$(191);

   ' Draw body of box.
   FOR i = uRow% + 1 TO lRow% - 1
   COLOR 8
      LOCATE i, uCol%: PRINT CHR$(179);
      COLOR 15
      LOCATE , lCol%: PRINT CHR$(179);
   NEXT i

   ' Draw bottom of box.
            LOCATE lRow%, uCol%: PRINT CHR$(192);
   LOCATE , uCol% + 1: PRINT STRING$(lCol% - uCol%, CHR$(196));
   LOCATE , lCol%: PRINT CHR$(217);


END SUB

SUB typeSub            'types a message to the screen with an annoying noise
STATIC T, e
T = T + 1
IF T >= 14 THEN T = 0
COLOR T
 
a$ = "This is a demonstration of the "        'define strings
b$ = "possibilities of mouse support when"
c$ = " added to programs in MS QBasic"
d$ = "Too Cool Fool"
FOR w = 1 TO LEN(a$)                'print each string one letter at a time
SOUND 200, .1                           'annoying noise
LOCATE 3, 25
PRINT LEFT$(a$, w)
FOR q = 1 TO 500
NEXT q                                  'lousy way to do this but I was
NEXT                                      'havin' fun
FOR w = 1 TO LEN(b$)
SOUND 200, .1
LOCATE 4, 23
PRINT LEFT$(b$, w)
FOR q = 1 TO 500
NEXT q
NEXT
FOR w = 1 TO LEN(c$)
SOUND 200, .1
LOCATE 5, 24
PRINT LEFT$(c$, w)
FOR q = 1 TO 500
NEXT q
NEXT
COLOR 14
SOUND 440, 1
FOR w = 1 TO LEN(d$)
SOUND 240 + w, 1

LOCATE 6, 33
PRINT LEFT$(d$, w)
FOR q = 1 TO 500
NEXT q
NEXT


END SUB

SUB winSub
STATIC a                       'another pointless sub
a = a + 1
IF a >= 16 THEN a = 1
VIEW (10, 130)-(195, 270), a, 9
LOCATE 11, 2
COLOR a, a
 
PRINT " This is a view window  "
winText$ = text$
IF LEN(text$) >= 24 THEN
winText$ = LEFT$(text$, 24) + CHR$(13) + MID$(text$, 25, (LEN(text$) - 24))
END IF
LOCATE 12, 2
PRINT winText$
FOR T = 1 TO 300
NEXT T
END SUB

