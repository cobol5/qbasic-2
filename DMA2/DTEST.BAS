DECLARE SUB MallCentral ()
VDECLARE SUB MallCentral ()
DECLARE SUB GetBear ()
DECLARE SUB GetGeekB ()
'.........................Good Version (check options, think there right)
'.........................Divided into subs, so far works fine, first time
'.........................to do this (these are notes to myself)
'.........................This is not a program yet just a major piece of one
DECLARE SUB Inventory ()
DECLARE SUB PrintMain ()
DECLARE SUB PrintOptions ()
DECLARE SUB Norms ()
DECLARE SUB PressAny ()
DECLARE SUB PrintInv ()

'............I have to do this to all variables to make them work in any sub
DIM SHARED D
DIM SHARED R
DIM SHARED OpNum
DIM SHARED L
DIM SHARED O
DIM SHARED C1
DIM SHARED C2
DIM SHARED C3
DIM SHARED Location$
DIM SHARED M$
DIM SHARED O$
DIM SHARED I$
DIM SHARED A$
DIM SHARED GeekBook$
DIM SHARED Bear$

SCREEN 12
D = 1'.......................How far down put text
R = 1'........................How far right put text
OpNum = 1'........................Option number
L = 0'....................Current Line of main text
O = 0'....................Just Like L only for option text
C1 = 15'........Color of titles
C2 = 14'........Color of text
C3 = 9'.........Color of boxes and all charachters that user can press
Location$ = ""'........Users current location
M$ = ""'.........Main text variable
O$ = ""'.........Option text variable
I$ = ""'..........Iventory text variable
A$ = ""'..........Genera purpose user input variable
'......................Inventory Objects...............
GeekBook$ = "Have Not"
Bear$ = "Have Not"

'...................Create DMA2 screen.............
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
CALL Inventory
CALL MallCentral

SUB GetBear
M$ = "": L = 0
'............................................
M$ = M$ + "  You now have a cute cuddly     "
M$ = M$ + "teddy bear!                      "
CALL PrintMain
CALL PressAny
Bear$ = "Have"
CALL Inventory
CALL MallCentral
END SUB

SUB GetGeekB
M$ = "": L = 0
'............................................
M$ = M$ + "  You take the geek book.        "
CALL PrintMain
CALL PressAny
GeekBook$ = "Have"
CALL Inventory
CALL MallCentral
END SUB

SUB Inventory
'............Use when you add new inventory object to update inventory
I$ = "": I = 0
'...........................
IF Bear$ = "Have" THEN
I$ = I$ + "Teddy Bear      "
END IF
IF GeekBook$ = "Have" THEN
I$ = I$ + "Geek Book       "
END IF
CALL PrintInv
END SUB

SUB MallCentral
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
CALL PrintMain
CALL PrintOptions
MallCentralI:
DO: A$ = INKEY$: LOOP WHILE A$ = ""
CALL Norms
IF VAL(A$) = 0 THEN GOTO MallCentralI
SELECT CASE MID$(O$, 35 * (VAL(A$) - 1) + 1, 1)
CASE "A"
GO$ = "GetBear"
CASE "B"
GO$ = " GetGeekB"
CASE ELSE
END SELECT
END SUB

SUB Norms
IF A$ = CHR$(0) + "Q" AND LEN(M$) > 462 THEN CALL PrintMain
IF A$ = CHR$(13) AND LEN(O$) > 280 THEN CALL PrintOptions
IF A$ = " " AND LEN(I$) > 288 THEN CALL PrintInv
END SUB

SUB PressAny
LINE (8, 320)-(607, 447), 0, BF
LOCATE 23, 30: COLOR C1
PRINT "press any key"
A$ = INPUT$(1)
END SUB

SUB PrintInv
'...............Used to print inventory and flip pages of inventory
LINE (325, 49)-(605, 206), 0, BF
D = 4: R = 42
FOR N = 16 * I + 1 TO 16 * I + 144 STEP 16
LOCATE D, R: COLOR C2: PRINT MID$(I$, N, 16): D = D + 1
NEXT N
D = 4: R = 58
I = I + 9
FOR N = 16 * I + 1 TO 16 * I + 144 STEP 16
LOCATE D, R: COLOR C2: PRINT MID$(I$, N, 16): D = D + 1
NEXT N
I = I + 9
IF LEN(I$) / 16 <= I THEN I = 0
IF LEN(I$) > 288 THEN LOCATE 13, 42: COLOR C1: PRINT "press space for more"
END SUB

SUB PrintMain
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
END SUB

SUB PrintOptions
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
END SUB

