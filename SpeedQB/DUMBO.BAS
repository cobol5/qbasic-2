'                             Dumbo
'                              by
'                          Toby Toland
'                              &
'                          Justin Harms
'                          Version 1.01

'.....1.01 added speed adjuster
'.....added program escape





'.....................Speed Adjuster 2.0.................

SCREEN 12
PRINT "Adjusting speed for your computer..."

PL = 0
ST = 0 ' .........start time
ET = 0 '..........end time
XT = 0 '..........X cordinate simulator (like you have any idea)

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
IF (ET - ST) < .25 THEN PL = PL + 10
LOOP UNTIL (ET - ST) > .26






SCREEN 12
X1 = 270
Y1 = 160
XCH1 = 1

CLS
DRAW "R100 U125 L100 D125"'...........Head
DRAW "BR45 BU25"'.........To Mouth
DRAW "U10 R10 D10 L10"'.......Mouth
DRAW "BU60 L15 U15 R15 D15"'.....Left Eye
DRAW "BR10 U15 R15 D15 L15"'...... Right Eye
DRAW "BR45 R10 U20 L10"' Right Ear
DRAW "BL100"'.....To Left Ear
DRAW "L10 D20 R10"'......Left Ear

VIEW (200, 100)-(309, 300)

COLOR 9
LOCATE 20, 10
PRINT "Dumbo 1.01"

COLOR 15
LOCATE 21, 15
PRINT "by Toby Toland"

LOCATE 22, 20
PRINT "and Justin Harms."

LOCATE 25, 30
PRINT "press Q to quit"

DO
CLS
DRAW "BM" + STR$(X1) + "," + STR$(Y1)
DRAW "L20 U20 R20 D20"'.......Hand
DRAW "U7 R15 E3 H3 L15 BL20 L7 D6 R7"'......Pencil
DRAW "D7 R3 NM253,250"
DRAW "R14 M267,250"
X1 = X1 + XCH1
IF X1 = 300 OR X1 = 250 THEN XCH1 = XCH1 * -1
FOR P = 1 TO PL * 30
NEXT P
LOOP UNTIL UCASE$(INKEY$) = "Q"






