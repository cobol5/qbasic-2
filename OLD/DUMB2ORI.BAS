SCREEN 12
D = 1'.......................How far down put text
R = 1'........................How far right put text
O = 1'........................Option number
C1 = 15
C2 = 14
C3 = 9
TrueO = 0
Page$ = "1"
Thing$ = "Have Not"
TimeAround = 0
StartNumO = 1
StartNumD = 1

LINE (0, 16)-(640, 17), 9, B
LINE (7, 31)-(296, 288), 9, B
LINE (6, 30)-(297, 289), 9, B
LINE (319, 31)-(608, 208), 9, B
LINE (318, 30)-(609, 209), 9, B
LINE (7, 303)-(608, 448), 9, B
LINE (6, 302)-(609, 449), 9, B
LOCATE 1, 28: PRINT "THE DUMB MALL ADVENTURE 2"
LOCATE 3, 53: PRINT "Inventory"
LOCATE 20, 33: PRINT "Options"

Darkroom:
LINE (8, 32)-(295, 287), 0, BF
COLOR C1: LOCATE 3, 15: PRINT "Dark Room"
D = 4: R = 3: TimeAround = 0
'........Description.......................
Text$ = " You are in a dark room. The only": GOSUB PrintD
Text$ = "light in the room comes from a": GOSUB PrintD
Text$ = "computer monitor. It shines": : GOSUB PrintD
Text$ = "in the corner of the room.": : GOSUB PrintD
Text$ = " You are in a dark room. The only": GOSUB PrintD
Text$ = "light in the room comes from a": GOSUB PrintD
Text$ = "computer monitor. It shines": : GOSUB PrintD
Text$ = "in the corner of the room.": : GOSUB PrintD
Text$ = " You are in a dark room. The only": GOSUB PrintD
Text$ = "light in the room comes from a": GOSUB PrintD
Text$ = "computer monitor. It shines": : GOSUB PrintD
Text$ = "in the corner of the room.": : GOSUB PrintD
Text$ = " You are in a dark room. The only": GOSUB PrintD
Text$ = "light in the room comes from a": GOSUB PrintD
Text$ = "light in the room comes from a": GOSUB PrintD
Text$ = "light in the room comes from a": GOSUB PrintD
DarkroomO:
LINE (8, 320)-(607, 447), 0, BF
O = 1: D = 21: R = 2: TimeAround = 0
'........Options.......................
Text$ = "one...................": GOSUB PrintO
Text$ = "two...................": GOSUB PrintO
Text$ = "three...................": GOSUB PrintO
Text$ = "four.......................": GOSUB PrintO
Text$ = "five.......................": GOSUB PrintO
Text$ = "six...................": GOSUB PrintO
Text$ = "seven...................": GOSUB PrintO
Text$ = "eight..................": GOSUB PrintO
Text$ = "nine...................": GOSUB PrintO
Text$ = "ten...................": GOSUB PrintO
Text$ = "eleven...................": GOSUB PrintO
IF Thing$ = "Have Not" THEN
Text$ = "thing...................": GOSUB PrintO
END IF
Text$ = "thirteen...................": GOSUB PrintO
Text$ = "fourteen...................": GOSUB PrintO
Text$ = "fifteen...................": GOSUB PrintO
Text$ = "sixteen...................": GOSUB PrintO
Text$ = "seventeen...................": GOSUB PrintO
Text$ = "odd man": GOSUB PrintO
DarkRoomI:
A$ = INPUT$(1)
SELECT CASE A$
CASE "p"
IF TimeAround > StartNumD + 14 THEN
StartNumO = StartNumD + 13
GOTO Darkroom
END IF
CASE "m"
IF TimeAround > StartNumO + 7 THEN
StartNumO = StartNumO + 8
GOTO DarkroomO
END IF
END SELECT
GOTO DarkRoomI



DO
LOOP

'..................Print description text
PrintD:
TimeAround = TimeAround + 1
IF TimeAround < StartNumD OR TimeAround > StartNumD + 14 THEN RETURN
LOCATE D, R: COLOR C2: PRINT Text$: D = D + 1
RETURN

'....................Print option text
PrintO:
TimeAround = TimeAround + 1
IF TimeAround < StartNumO OR TimeAround > StartNumO + 7 THEN RETURN
IF O = 5 THEN D = 21: R = 39
LOCATE D, R: COLOR C3: PRINT O; : COLOR C2: PRINT Text$
D = D + 2: O = O + 1
RETURN


'...................Print extra option text
PrintEO:
LOCATE D - 1, R: PRINT Text$: D = D + 1
RETURN





LOCATE D, R
'PRINT "Location"

D = 3: R = 2
FOR D = 3 TO 17
LOCATE D, R
PRINT "Description........................."
NEXT D


D = 3: R = 41
FOR D = 3 TO 13
LOCATE D, R
PRINT "Inventory..........................."
NEXT D

D = 20: R = 2
FOR D = 20 TO 28
LOCATE D, R
PRINT "Options............................."
NEXT D

D = 20: R = 41
FOR D = 20 TO 28
LOCATE D, R
PRINT "Options............................."
NEXT D


DO
LOOP

