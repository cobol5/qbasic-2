SCREEN 12
PName1$ = "Max"
PName2$ = "Zak"
PName1$ = UCASE$(PName1$)
PName2$ = UCASE$(PName2$)
C1 = 9'..........Color of Player one
C2 = 14'..........Color of Palyer two
PL = 100
R = 1
PS1 = 0
PS2 = 0


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
END SELECT

IF NOT POINT(X1, Y1) = 0 AND NOT POINT(X2, Y2) = 0 GOTO BothLose
IF NOT POINT(X1, Y1) = 0 GOTO P2Wins
IF NOT POINT(X2, Y2) = 0 GOTO P1Wins
PSET (X1, Y1), C1: X1 = X1 + XCH1: Y1 = Y1 + YCH1
IF X1 = X2 AND Y1 = Y2 THEN GOTO BothLose
PSET (X2, Y2), C2: X2 = X2 + XCH2: Y2 = Y2 + YCH2

FOR P = 1 TO PL: NEXT P
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
PS2 = PS2 + 1: PS1 = PS1 + 1
GOTO NextRound


NextRound:
R = R + 1
PRINT "PRESS ENTER TO START ROUND"; R
DO
LOOP UNTIL INKEY$ = CHR$(13)
GOTO MainGame


