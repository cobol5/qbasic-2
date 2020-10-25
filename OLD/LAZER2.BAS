                                
'                                 LAZER
'                            Test Version 1996
'                             By Toby Toland
'                         Riped off from game Tron





SCREEN 12
COLOR 15

'.............................Variable Definition.............................
SetVar:
D1$ = "Right"'..........Direction Player one starts; is going
D2$ = "Left"'..........Direction Player two stars; is going
X1 = 3'..........X Cordinates for player one
Y1 = 18'..........Y Cordinates for player one
X2 = 636'..........X Cordinates for player two
Y2 = 476'..........Y Cordinates for player two
PName1$ = "Player1"
PS1 = 0
PName2$ = "Player2"
PS2 = 0
C1 = 14'..........Color of Player one
C2 = 9'..........Color of Palyer two
PRate = 100'..........Pause Rate
INPUT "Do you want options, (Y\N)?", A$
IF A$ = "Y" OR A$ = "y" THEN GOTO SetUp
GOTO MainGame

SetUp:
CLS : COLOR 15
INPUT "Enter name of  player one:", PName1$
INPUT "Enter name of  player two:", PName2$
INPUT "Enter color of player one (1-15):", C1
INPUT "Enter color of player two (1-15):", C2
GOTO MainGame

ResetVar:
D1$ = "Right"'..........Direction Player one starts; is going
D2$ = "Left"'..........Direction Player two stars; is going
X1 = 3'..........X Cordinates for player one
Y1 = 18'..........Y Cordinates for player one
X2 = 636'..........X Cordinates for player two
Y2 = 476'..........Y Cordinates for player two
GOTO MainGame


'..................................Main Game...................................
MainGame:

CLS
COLOR C1
LOCATE 1, 75 - LEN(PName1$): PRINT PName1$ + ":"; PS1
COLOR C2
LOCATE 1, 1: PRINT PName2$ + ":"; PS2
LINE (0, 15)-(639, 479), 15, B
'line (120 -140)- (


DO
SELECT CASE INKEY$
CASE "w"
D1$ = "Up"
CASE "d"
D1$ = "Right"
CASE "a"
D1$ = "Left"
CASE "x"
D1$ = "Down"
CASE "8"
D2$ = "Up"
CASE "6"
D2$ = "Right"
CASE "4"
D2$ = "Left"
CASE "2"
D2$ = "Down"
CASE "s"
PRate = PRate - 200
IF PRate < 100 THEN PRate = 100
END SELECT

SELECT CASE D1$
CASE "Up"
Y1 = Y1 - 1
CASE "Right"
X1 = X1 + 1
CASE "Left"
X1 = X1 - 1
CASE "Down"
Y1 = Y1 + 1
END SELECT

SELECT CASE D2$
CASE "Up"
Y2 = Y2 - 1
CASE "Right"
X2 = X2 + 1
CASE "Left"
X2 = X2 - 1
CASE "Down"
Y2 = Y2 + 1
END SELECT


IF D1$ = "Right" AND POINT(X1 + 1, Y1) > 0 THEN GOTO P2Win
IF D1$ = "Left" AND POINT(X1 - 1, Y1) > 0 THEN GOTO P2Win
IF D1$ = "Up" AND POINT(X1, Y1 - 1) > 0 THEN GOTO P2Win
IF D1$ = "Down" AND POINT(X1, Y1 + 1) > 0 THEN GOTO P2Win

IF D2$ = "Right" AND POINT(X2 + 1, Y2) > 0 THEN GOTO P1Win
IF D2$ = "Left" AND POINT(X2 - 1, Y2) > 0 THEN GOTO P1Win
IF D2$ = "Up" AND POINT(X2, Y2 - 1) > 0 THEN GOTO P1Win
IF D2$ = "Down" AND POINT(X2, Y2 + 1) > 0 THEN GOTO P1Win

PSET (X2, Y2), C2
PSET (X1, Y1), C1
FOR P = 1 TO PRate
NEXT P

LOOP
                        
P1Win:
CLS : LOCATE 10, 1: COLOR 15
PRINT TAB(35); PName1$; " wins"
PRINT
PRINT TAB(35); "Press any key"
A$ = INPUT$(1)
PS1 = PS1 + 1
PSET (X2, Y2), C2: GOTO ResetVar

P2Win:
CLS : LOCATE 10, 1: COLOR 15
PRINT TAB(34); PName2$; " wins"
PRINT
PRINT TAB(34); "Press any key"
A$ = INPUT$(1)
PS2 = PS2 + 1
PSET (X1, Y1), C1: GOTO ResetVar





