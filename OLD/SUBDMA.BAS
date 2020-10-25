SCREEN 12
D = 1'.......................How far down put text
R = 1'........................How far right put text
O = 1'........................Option number
C1 = 15'........Color of tiles
C2 = 14'........Color of text
C3 = 9'.........Color of boxes and all charachters that user can press
Location$ = ""'...........Title displayed in top of main text box
MainText$ = ""'............Line of text for MainText routine
MainText1$ = ""'..........Page one of the main text
MainText2$ = ""'...........Page two of the main text
MainText3$ = ""'............Page three of the main text
MainText = 1' ..........used for counting lines of the main text
MainTextPg = 1'.........Current main text page
OptionText$ = ""
OptionText1$ = ""
OptionText2$ = ""
OptionText3$ = ""
OptionText = 1
OptionPg = 1



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

DarkRoom:
Location$ = "Hallway"
'........Description...........................
MainText$ = " You are in a dark room. The only": GOSUB MainText
MainText$ = "light in the room comes from a,,,": GOSUB MainText
MainText$ = "computer monitor. It shines      ": GOSUB MainText
MainText$ = "in the corner of the room.       ": GOSUB MainText
MainText$ = " You are in a dark room. The only": GOSUB MainText
MainText$ = "light in the room comes from a   ": GOSUB MainText
MainText$ = "computer monitor. It shines      ": GOSUB MainText
MainText$ = "in the corner of the room.       ": GOSUB MainText
MainText$ = " You are in a dark room. The only": GOSUB MainText
MainText$ = "light in the room comes from a   ": GOSUB MainText
MainText$ = "computer monitor. It shines      ": GOSUB MainText
MainText$ = "in the corner of the room.       ": GOSUB MainText
MainText$ = " You are in a dark room. The only": GOSUB MainText
MainText$ = "bight in the room comes from a   ": GOSUB MainText
MainText$ = "light in the room comes from a   ": GOSUB MainText
MainText$ = "light in the room comes from a   ": GOSUB MainText
MainText$ = " You are in a dark room. The only": GOSUB MainText
MainText$ = "light in the room comes from a,,,": GOSUB MainText
MainText$ = "computer monitor. It shines      ": GOSUB MainText
MainText$ = "in the corner of the room.       ": GOSUB MainText
MainText$ = " You are in a dark room. The only": GOSUB MainText
MainText$ = "light in the room comes from a   ": GOSUB MainText
MainText$ = "computer monitor. It shines      ": GOSUB MainText
MainText$ = "in the corner of the room.       ": GOSUB MainText
MainText$ = " You are in a dark room. The only": GOSUB MainText
MainText$ = "light in the room comes from a   ": GOSUB MainText
MainText$ = "computer monitor. It shines      ": GOSUB MainText
MainText$ = "in the corner of the room.       ": GOSUB MainText
MainText$ = " You are in a dark room. The only": GOSUB MainText
MainText$ = "bight in the room comes from a   ": GOSUB MainText
MainText$ = "light in the room comes from a   ": GOSUB MainText
MainText$ = "light in the room comes from a   ": GOSUB MainText
'..............Options............................
OptionText$ = "one...............................": GOSUB OptionText
OptionText$ = "two.....................          ": GOSUB OptionText
OptionText$ = "three...................          ": GOSUB OptionText
OptionText$ = "four.......................       ": GOSUB OptionText
OptionText$ = "five.......................       ": GOSUB OptionText
OptionText$ = "six...................            ": GOSUB OptionText
OptionText$ = "seven...................          ": GOSUB OptionText
OptionText$ = "eight..................           ": GOSUB OptionText
OptionText$ = "nine...................           ": GOSUB OptionText
OptionText$ = "ten...................            ": GOSUB OptionText
OptionText$ = "eleven...................         ": GOSUB OptionText
OptionText$ = "thirteen...................       ": GOSUB OptionText
OptionText$ = "fourteen...................       ": GOSUB OptionText
OptionText$ = "fifteen...................        ": GOSUB OptionText
OptionText$ = "sixteen...................        ": GOSUB OptionText
OptionText$ = "seventeen...................      ": GOSUB OptionText
GOSUB PrintMainText
GOSUB PrintOptions
DO
LOOP



PrintMainText:
LINE (8, 32)-(295, 287), 0, BF
D = 3: R = 19 - LEN(Location$) / 2
COLOR C1: LOCATE D, R: PRINT Location$
IF MainTextPg = 1 THEN MainText$ = MainText1$
IF MainTextPg = 2 THEN MainText$ = MainText2$
IF MainTextPg = 3 THEN MainText$ = MainText3$
D = 4: R = 3
FOR N = 1 TO 463 STEP 33
LOCATE D, R: COLOR C2: PRINT MID$(MainText$, N, 33): D = D + 1
NEXT N
RETURN

MainText:
IF MainText >= 1 AND MainText <= 14 THEN MainText1$ = MainText1$ + MainText$
IF MainText >= 15 AND MainText <= 28 THEN MainText2$ = MainText2$ + MainText$
IF MainText >= 28 AND MainText <= 42 THEN MainText3$ = MainText3$ + MainText$
MainText = MainText + 1
RETURN

OptionText:
IF OptionText >= 1 AND OptionText <= 8 THEN
OptionText1$ = OptionText1$ + OptionText$
END IF
IF OptionText >= 9 AND OptionText <= 17 THEN
OptionText2$ = OptionText2$ + OptionText$
END IF
IF OptionText >= 18 AND OptionText <= 25 THEN
OptionText3$ = OptionText3$ + OptionText$
END IF
OptionText = OptionText + 1
RETURN

PrintOptions:
LINE (8, 320)-(607, 447), 0, BF
O = 1: D = 21: R = 2
IF OptionPg = 1 THEN OptionText$ = OptionText1$
IF OptionPg = 2 THEN OptionText$ = OptionText2$
IF OptionPg = 3 THEN OptionText$ = OptionText3$
FOR N = 1 TO 239 STEP 34
IF O = 5 THEN D = 21: R = 39
LOCATE D, R: COLOR C3: PRINT O; : COLOR C2: PRINT MID$(OptionText$, N, 34)
D = D + 2: O = O + 1
NEXT N
RETURN






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

