SCREEN 12
D = 1'.......................How far down put text
R = 1'........................How far right put text
OpNum = 1'........................Option number
L = 0'....................Current Line of main text
O = 0'....................Just Like L only for option text
C1 = 15'........Color of titles
C2 = 14'........Color of text
C3 = 9'.........Color of boxes and all charachters that user can press

'....................Inventory Objects....................................
GeekBook$ = "Have Not"
Bear$ = "Have Not"

'.......................Creates DMA2 Screen...............................
LINE (0, 16)-(640, 17), C3, B
LINE (7, 31)-(296, 288), C3, B
LINE (6, 30)-(297, 289), C3, B
LINE (319, 31)-(608, 208), C3, B
LINE (318, 30)-(609, 209), C3, B
LINE (7, 303)-(608, 448), C3, B
LINE (6, 302)-(609, 449), C3, B
COLOR C1
LOCATE 1, 28: PRINT "THE DUMB MALL ADVENTURE 2"
LOCATE 3, 53: PRINT "Inventory"
LOCATE 20, 33: PRINT "Options"
GOSUB Inventory




MallCentral:
Location$ = "Mall Central"
M$ = "": L = 0: O$ = "": O = 0: OpNum = 1
'............................................
M$ = M$ + " You stand in the center of the.."
M$ = M$ + "mall There are four major stores."
M$ = M$ + "you can visit: Kaybee toys,      "
M$ = M$ + "Software ect, Roadkill Cafe, and "
M$ = M$ + "Geek's R Us.                     "
IF Bear$ = "Have Not" THEN
M$ = M$ + "There is a bear here.            "
END IF
IF GeekBook$ = "Have Not" THEN
M$ = M$ + "There is a geek book here.       "
END IF
'..............................................
IF Bear$ = "Have Not" THEN
O$ = O$ + "A Get the bear                     "
END IF
IF GeekBook$ = "Have Not" THEN
O$ = O$ + "B Get the geek book                "
END IF
GOSUB PrintMain
GOSUB PrintOptions
MallCentralI:
DO: A$ = INKEY$
LOOP WHILE A$ = ""
GOSUB Norms
IF VAL(A$) = 0 THEN GOTO MallCentralI
SELECT CASE MID$(O$, 35 * (VAL(A$) - 1) + 1, 1)
CASE "A"
GOTO GetBear
CASE "B"
GOTO GetGeekB
END SELECT
GOTO MallCentralI


GetBear:
M$ = "": L = 0
'............................................
M$ = M$ + "  You now have a cute cuddly     "
M$ = M$ + "teddy bear!                      "
GOSUB PrintMain
GOSUB PressAny
Bear$ = "Have"
GOSUB Inventory
GOTO MallCentral

GetGeekB:
M$ = "": L = 0
'............................................
M$ = M$ + "  You take the geek book.        "
GOSUB PrintMain
GOSUB PressAny
GeekBook$ = "Have"
GOSUB Inventory
GOTO MallCentral


'...............................DMA2 System Subs.............................
Norms:
IF A$ = CHR$(0) + "Q" AND LEN(M$) > 462 THEN GOSUB PrintMain
IF A$ = CHR$(13) AND LEN(O$) > 280 THEN GOSUB PrintOptions
IF A$ = " " AND LEN(I$) > 272 THEN GOSUB PrintInv
RETURN

PrintMain:
LINE (8, 32)-(295, 287), 0, BF
D = 3: R = 19 - LEN(Location$) / 2
COLOR C1: LOCATE D, R: PRINT Location$
D = 4: R = 3:
FOR N = 33 * L + 1 TO 33 * L + 462 STEP 33
LOCATE D, R: COLOR C2: PRINT MID$(M$, N, 33): D = D + 1
NEXT N
L = L + 14
IF LEN(M$) / 33 <= L THEN L = 0
IF LEN(M$) > 462 THEN LOCATE 18, 3: COLOR C1: PRINT "press page down for more"
RETURN

PrintOptions:
LINE (8, 320)-(607, 447), 0, BF
D = 21: R = 2: OpNum = 1
FOR N = 35 * O + 1 TO 35 * O + 280 STEP 35
IF OpNum = 5 THEN D = 21: R = 39
IF NOT MID$(O$, N, 35) = "" THEN
LOCATE D, R: COLOR C3: PRINT OpNum; : OpNum = OpNum + 1
COLOR C2: PRINT MID$(O$, N + 2, 33): D = D + 2
END IF
NEXT N
O = O + 8
IF LEN(O$) / 35 <= O THEN O = 0
IF LEN(O$) > 280 THEN LOCATE 28, 3: COLOR C1: PRINT "press enter for more"
RETURN

PressAny:
LINE (8, 320)-(607, 447), 0, BF
LOCATE 23, 30: COLOR C1
PRINT "press any key"
A$ = INPUT$(1)
RETURN

'............Use when you add new inventory object to update inventory
Inventory:
I$ = ""
'...........................
IF Bear$ = "Have" THEN
I$ = I$ + "Teddy Bear      "
END IF
IF GeekBook$ = "Have" THEN
I$ = I$ + "1Geek Book      "
I$ = I$ + "2Geek Book      "
I$ = I$ + "3Geek Book      "
I$ = I$ + "4Geek Book      "
I$ = I$ + "5Geek Book      "
I$ = I$ + "6Geek Book      "
I$ = I$ + "7Geek Book      "
I$ = I$ + "8Geek Book      "
I$ = I$ + "9Geek Book      "
I$ = I$ + "AGeek Book      "
I$ = I$ + "BGeek Book      "
I$ = I$ + "CGeek Book      "
I$ = I$ + "DGeek Book      "
I$ = I$ + "EGeek Book      "
I$ = I$ + "FGeek Book      "
I$ = I$ + "GGeek Book      "
I$ = I$ + "HGeek Book      "
I$ = I$ + "Ieek Book       "
END IF

'...............Used to print inventory and flip pages of inventory
PrintInv:
LINE (325, 49)-(605, 206), 0, BF
D = 4: R = 42
FOR N = 16 * I + 1 TO 16 * I + 144 STEP 16
LOCATE D, R: COLOR C2: PRINT MID$(I$, N, 16): D = D + 1
NEXT N
D = 4: R = 58
I = I + 8
FOR N = 16 * I + 1 TO 16 * I + 144 STEP 16
LOCATE D, R: COLOR C2: PRINT MID$(I$, N, 16): D = D + 1
NEXT N
I = I + 8
IF LEN(I$) / 16 <= I THEN I = 0
IF LEN(I$) > 272 THEN LOCATE 13, 42: COLOR C1: PRINT "press space for more"
RETURN





'.................................JUNK........................................
Location$ = "Mall Central"
'........Description........................
MainL$ = " You stand in the center of the  ": GOSUB MakeMpg
MainL$ = "mall There are four major stores.": GOSUB MakeMpg
MainL$ = "you can visit: Kaybee toys,": GOSUB MakeMpg
MainL$ = "Software ect, Roadkill Cafe, and ": GOSUB MakeMpg
MainL$ = "Geeks R Us.                      ": GOSUB MakeMpg
'.........Options.............................
Option$ = "Kay Bee Toys                      ": GOSUB MakeOptPg
Option$ = "Software ect                      ": GOSUB MakeOptPg
Option$ = "RoadKill Cafe                     ": GOSUB MakeOptPg
Option$ = "Geeks R Us                        ": GOSUB MakeOptPg
IF GeekBook$ = "Have" OR BigBook$ = "Have" OR Goats$ = "Have" THEN
Option$ = "Read a book": GOSUB MakeOptPg
END IF
GOSUB PrintMainTx
GOSUB PrintO
'MallCentralI:
A$ = INPUT$(1)
IF A$ = " " THEN
GOSUB PrintO
END IF
GOTO MallCentralI

'Inventory:
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
IF GeekBook$ = "Have" THEN Thing$ = "Squashed Penny..": GOSUB PutinI
GOSUB PrintI
RETURN

DO
LOOP


'...................................SUBS..................................
Location$ = ""'...........Title displayed in top of main text box
MainL$ = ""'............Line of text for MainTx routine
MainTx1$ = ""'..........Page one of the main text
MainTx2$ = ""'...........Page two of the main text
MainTx3$ = ""'............Page three of the main text
MainTx = 1' ..........used for counting lines of the main text
MainTxPg = 1'.........Current main text page
Option$ = ""
OptionText1$ = ""
OptionText2$ = ""
OptionText3$ = ""
OptionText = 1
OptionPg = 1
GeekBook$ = "Have"
Thing$ = ""
Inventory1$ = ""
Inventory2$ = ""
Inventory3$ = ""
ICounter = 1
IPg = 1

PutinI:
Thing$ = Thing$ + SPACE$(16 - LEN(Thing$))
SELECT CASE ICounter
CASE IS < 19
Inventory1$ = Inventory1$ + Thing$
CASE IS < 37
Inventory2$ = Inventory2$ + Thing$
CASE IS < 51
Inventory3$ = Inventory3$ + Thing$
END SELECT
ICounter = ICounter + 1
RETURN

PrintI:
IF IPg = 1 THEN Thing$ = Inventory1$
IF IPg = 2 THEN Thing$ = Inventory2$
IF IPg = 3 THEN Thing$ = Inventory3$
LINE (320, 32)-(607, 207), C3, B
D = 4: R = 42
FOR N = 1 TO 289 STEP 16
IF N = 145 THEN D = 4: R = 58
LOCATE D, R: COLOR C2: PRINT MID$(Thing$, N, 16): D = D + 1
NEXT N
RETURN

PrintMainTx:
LINE (8, 32)-(295, 287), 0, BF
D = 3: R = 19 - LEN(Location$) / 2
COLOR C1: LOCATE D, R: PRINT Location$
IF MainTxPg = 1 THEN MainL$ = MainTx1$
IF MainTxPg = 2 THEN MainL$ = MainTx2$
IF MainTxPg = 3 THEN MainL$ = MainTx3$
D = 4: R = 3
FOR N = 1 TO 463 STEP 33
LOCATE D, R: COLOR C2: PRINT MID$(MainL$, N, 33): D = D + 1
NEXT N
RETURN

MakeMpg:
MainL$ = MainL$ + SPACE$(33 - LEN(MainL$))
IF MainTx >= 1 AND MainTx <= 14 THEN MainTx1$ = MainTx1$ + MainL$
IF MainTx >= 15 AND MainTx <= 28 THEN MainTx2$ = MainTx2$ + MainL$
IF MainTx >= 28 AND MainTx <= 42 THEN MainTx3$ = MainTx3$ + MainL$
MainTx = MainTx + 1
RETURN

MakeOptPg:
Option$ = Option$ + SPACE$(34 - LEN(Option$))
SELECT CASE OptionText
CASE IS < 9
OptionText1$ = OptionText1$ + Option$
CASE IS < 17
OptionText2$ = OptionText2$ + Option$
CASE IS < 25
OptionText3$ = OptionText3$ + Option$
END SELECT
OptionText = OptionText + 1
RETURN


PrintO:
IF OptionPg = 1 THEN Option$ = OptionText1$
IF OptionPg = 2 THEN Option$ = OptionText2$
IF OptionPg = 3 THEN Option$ = OptionText3$
IF Option$ = "" AND OptionPg = 2 THEN RETURN
IF Option$ = "" OR OptionPg = 4 THEN OptionPg = 1: GOTO PrintO
LINE (8, 320)-(607, 447), 0, BF
O = 1: D = 21: R = 2
FOR N = 1 TO 239 STEP 34
IF MID$(Option$, N, 34) <> "" THEN
IF O = 5 THEN D = 21: R = 39
LOCATE D, R: COLOR C3: PRINT O; : COLOR C2: PRINT MID$(Option$, N, 34)
D = D + 2: O = O + 1
END IF
NEXT N
OptionPg = OptionPg + 1
RETURN





'.................................JUNK...................................

'..................Print description text
PrintD:
TimeAround = TimeAround + 1
IF TimeAround < StartNumD OR TimeAround > StartNumD + 14 THEN RETURN
LOCATE D, R: COLOR C2: PRINT Text$: D = D + 1
RETURN

'....................Print option text
rintO:
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

