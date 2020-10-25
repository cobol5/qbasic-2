


'                               Light Speed

'                                   by

'                               Toby Toland

'                               Version 1.2                      

'......version 1.2...October 2002
'......added speed adjuster
'......NewGame Sub and QuitGame sub
'......added intro screen

SCREEN 12
DIM ScreenCut(1 TO 1000)
PName1$ = "Max"
PName2$ = "Zak"
PName1$ = UCASE$(PName1$)
PName2$ = UCASE$(PName2$)
C1 = 9'..........Color of Player one
C2 = 14'..........Color of Palyer two
PL = 0
R = 1
PS1 = 0
PS2 = 0


'.....................Speed Adjuster 2.0.................

ST = 0 ' .........start time
ET = 0 '..........end time
XT = 0 '..........X cordinate simulator (like you have any idea)

PRINT "Adjusting speed for your computer..."

DO
XT = 0
ST = 0
ET = 0
ST = TIMER
DO
XT = XT + 1
FOR P = 1 TO PL: NEXT P
LOOP UNTIL XT = 641
ET = TIMER
'CLS
'LOCATE 12, 1: PRINT ET - ST
'LOCATE 13, 1: PRINT PL
IF (ET - ST) < .25 THEN PL = PL + 10
LOOP UNTIL (ET - ST) > .26
'A$ = INPUT$(1)
PL = PL * 50




StartGame:

CLS
COLOR 15
PRINT
PRINT "   Light Speed 1.2"
PRINT "        by Toby Toland "
PRINT
PRINT


COLOR C1
PRINT "         To control MAX use:"
PRINT "          UP arrow key"
PRINT "          Down arrow key"
PRINT "          Left arrow key"
PRINT "          Right arrow key"
PRINT

COLOR C2
PRINT "                    To control ZAK use:"
PRINT "                     W for UP"
PRINT "                     S for Down"
PRINT "                     A for Left"
PRINT "                     D for Right"
PRINT

COLOR 2
PRINT "                           While in the game you can press:"
PRINT "                            N to start a new game"
PRINT "                            M to quit"
PRINT
PRINT


COLOR 15
PRINT "                                 PRESS ENTER TO START ROUND"; R
DO
LOOP UNTIL INKEY$ = CHR$(13)
GOTO MainGame







'..................................Main Game...................................
MainGame:
X2 = 3
Y2 = 18
X1 = 636
Y1 = 476
XCH2 = 1
YCH2 = 0
XCH1 = -1
YCH1 = 0

CLS
COLOR C1
LOCATE 1, 75 - LEN(PName1$): PRINT PName1$ + ""; PS1
COLOR C2
LOCATE 1, 1: PRINT PName2$ + ""; PS2
LINE (0, 15)-(639, 479), 15, B


DO
SELECT CASE UCASE$(INKEY$)
CASE CHR$(0) + "H"
IF NOT YCH1 = 1 THEN XCH1 = 0: YCH1 = -1
CASE CHR$(0) + "P"
IF NOT YCH1 = -1 THEN XCH1 = 0: YCH1 = 1
CASE CHR$(0) + "M"
IF NOT XCH1 = -1 THEN XCH1 = 1: YCH1 = 0
CASE CHR$(0) + "K"
IF NOT XCH1 = 1 THEN XCH1 = -1: YCH1 = 0

CASE "W"
IF NOT YCH2 = 1 THEN XCH2 = 0: YCH2 = -1
CASE "S"
IF NOT YCH2 = -1 THEN XCH2 = 0: YCH2 = 1
CASE "D"
IF NOT XCH2 = -1 THEN XCH2 = 1: YCH2 = 0
CASE "A"
IF NOT XCH2 = 1 THEN XCH2 = -1: YCH2 = 0
CASE "N"
GOSUB NewGame
CASE "M"
GOSUB QuitGame
END SELECT

IF NOT POINT(X1, Y1) = 0 AND NOT POINT(X2, Y2) = 0 GOTO BothLose
IF NOT POINT(X1, Y1) = 0 GOTO P2Wins
IF NOT POINT(X2, Y2) = 0 GOTO P1Wins
PSET (X1, Y1), C1: X1 = X1 + XCH1: Y1 = Y1 + YCH1
IF X1 = X2 AND Y1 = Y2 THEN GOTO BothLose
PSET (X2, Y2), C2: X2 = X2 + XCH2: Y2 = Y2 + YCH2

FOR P = 0 TO PL: NEXT P
LOOP

P2Wins:
CLS : COLOR 15
PRINT PName2$; " TAKES ROUND"; R
PS2 = PS2 + 1
GOTO NextRound

P1Wins:
CLS : COLOR 15
PRINT PName1$; " TAKES ROUND"; R
PS1 = PS1 + 1
GOTO NextRound

BothLose:
CLS : COLOR 15
PRINT "IT'S A DRAW"
'PS2 = PS2 + 1: PS1 = PS1 + 1
GOTO NextRound


NextRound:
R = R + 1
PRINT "PRESS ENTER TO START ROUND"; R
DO
LOOP UNTIL INKEY$ = CHR$(13)
GOTO MainGame


NewGame:
GET (150, 205)-(500, 225), ScreenCut
COLOR 15
LOCATE 14, 20
PRINT "   Do you wish to start a new game (Y\N)?"
A$ = INPUT$(1, 0)

IF UCASE$(A$) = "Y" THEN
 R = 1
 PS1 = 0
 PS2 = 0
 RETURN StartGame
END IF

PUT (150, 205), ScreenCut, PSET
RETURN




QuitGame:
GET (150, 205)-(500, 225), ScreenCut
COLOR 15
LOCATE 14, 20
PRINT "      Do you wish to quit (Y\N)?"
A$ = INPUT$(1, 0)
IF UCASE$(A$) = "Y" THEN END
PUT (150, 205), ScreenCut, PSET
RETURN




