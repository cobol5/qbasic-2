SCREEN 12
CLS
Location$ = "ParkLot"

SELECT CASE Location$
CASE "ParkLot"
TextLA$ = "  Your in the parking lot. It's a beutiful Sunny day"
TextLB$ = "You can see your favorite mall of in the distance."
TextLC$ = "A large flying soucer has landed on aboute fifty cars"
TextLD$ = "Greatfully it missed yours. "
TextLE$ = "  I have to fill up this area for the game. I'm not"
TextLF$ = "If this will work or not. I guess I'll find out. This"
TextLG$ = "part of the game is boring to program. I'm almost done"
TextLH$ = "with this text. I don't know how we'll get this much"
TextLI$ = "stuff in the game. Well, see ya later dude!"
GOTO TextG
END SELECT


DO
PRINT "hi"
LOOP

TextG:
LOCATE 1, 1
PRINT TextLA$
LOCATE 2, 1
PRINT TextLB$
LOCATE 3, 1
PRINT TextLC$
LOCATE 4, 1
PRINT TextLD$
LOCATE 5, 1
PRINT TextLE$
LOCATE 6, 1
PRINT TextLF$
LOCATE 7, 1
PRINT TextLG$
LOCATE 8, 1
PRINT TextLH$
LOCATE 9, 1
PRINT TextLI$



'A$ = "Toby"
'D = 15
'GOSUB Center:
'DO
'LOOP

'END


'Center:
'LOCATE D, 40 - LEN(A$) \ 2: PRINT A$
'RETURN

'Pause:
'DO
'P = P + 1
'LOOP UNTIL P = PL
'P = 0
'RETURN

'FadeIn:
'PL = 1500
'COLOR 8: LOCATE D2, O2
'PRINT FadeInWord$: GOSUB Pause
'COLOR 7: LOCATE D2, O2
'PRINT FadeInWord$: GOSUB Pause
'COLOR C2: LOCATE D2, O2
'PRINT FadeInWord$: GOSUB Pause
'RETURN

'MallCentral:
'CLS : COLOR C3: PRINT
'...........sentence length.....................
'PRINT "  You stand in the center of the mall."
'PRINT "There are four major stores you can "
'PRINT "visit: KayBee Toys, Software etc,"
'PRINT "RoadKill Cafe, and Geeks R Us."
'COLOR C4
'PRINT : PRINT "1 Kay Bee Toys"
'PRINT : PRINT "2 Software ect"
'PRINT : PRINT "3 RoadKill Cafe"
'PRINT : PRINT "4 Geeks R Us"
'PRINT : PRINT "5 Inventory"
'IF GeekBook$ = "Have" OR BigBook$ = "Have" OR Goats$ = "Have" THEN
'PRINT : PRINT "6 Read a book"
'END IF
'A$ = INPUT$(1, 0)
'SELECT CASE A$
'CASE "1"
'GOTO KaybeeToys
'CASE "2"
'GOTO SoftwareEtc
'CASE "3"
'IF Jacket$ = "Have" AND Tshirt$ = "Have not" THEN
'...........sentence length.....................
'CLS : COLOR C3: PRINT
'PRINT "                 BANG!"
'PRINT "  That drug lord and his mugs hunted you"
'PRINT "down, and finished you."
'COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
'GOTO EndGame
'END IF
'GOTO RoadkillCafe
'CASE "4"
'GOTO GeeksRUs
'CASE "5"
'GOSUB Inventory
'CASE "6"
'IF GeekBook$ = "Have" OR BigBook$ = "Have" OR Goats$ = "Have" THEN
'GOTO ReadBook
'END IF
'END SELECT
'GOTO MallCentral

