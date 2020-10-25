'                               The Rotater
'                                   by
'                               Toby Toland
'                                    &
'                               Justin Harms
'                               Version 1.1

'.......version 1.1 OCT 2002
'.......added speed adjuster
'.......added quit option



'NOTE: You can put your own picture in here. Just place draw commands in the
'      P$ variable below. Then press enter when you start the program.
P$ = ""

SCREEN 12


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



Choice:
S = 1
SCH = 1
D = 0
CLS
PRINT "The Rotator 1.1"
PRINT "by Justin Harms"
PRINT "and Toby Toland"
PRINT
PRINT "Choose Piture:"
PRINT "1 Mr. Smile"
PRINT "2 The Sword"
PRINT "3 Miss. Sleepy Flower"
PRINT "Q Quit"
A$ = INPUT$(1)

SELECT CASE UCASE$(A$)
CASE "1"
P$ = "C14 BU20 R20 F40 D40 G40 L40 H40 U40 E40 R20"'...Head
P$ = P$ + "C15 BD29 BL7 L20 D20 R20 U20"'.....Left Eye
P$ = P$ + "BR14 R20 D20 L20 U20"'.....Right Eye
P$ = P$ + "C15 BR20 BD50 G10 L30 H10"'.....Mouth
CASE "2"
P$ = "U70 E7 H7 G7 F7 H7 D77 R14 NU77 R15 G7 L28 H7 NR13 F7 R6 D25 R14 U25"
CASE "3"
P$ = "c14 d20 r20 u20 l20"
P$ = P$ + "c13 u15 r20 d15"
P$ = P$ + "c13 r15 d20 l15"
P$ = P$ + "c13 d15 l20 u15"
P$ = P$ + "c13 l15 u20 r15"
P$ = P$ + "bd35 br10 BD1 c10 d55"
P$ = P$ + "bu25 e10 f10g10h10"
P$ = P$ + "bu15 h10g10 f10 e10"
P$ = P$ + "bu45bl2 l1"
P$ = P$ + "br5 r1"
P$ = P$ + "bl3bd9 r3 l6"
CASE "Q"
END
END SELECT


DO
CLS
DRAW "TA" + STR$(D) + "S" + STR$(S) + " C9"
DRAW P$
D = D + 2
S = S + SCH
IF D = 360 THEN D = 0
IF S = 50 THEN SCH = -1
IF S = 1 THEN SCH = 1
FOR P = 1 TO PL * 50
NEXT P
LOOP WHILE INKEY$ = ""
GOTO Choice




