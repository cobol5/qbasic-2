'                                 THE
'                                 DUMB
'                                 MALL
'                               ADVENTURE
'                                  BY
'                              CHAD LOFTIS
'                                  AND
'                              TOBY TOLAND
'                              VERSION 1.2
'
'
'.......this is my final version (1.2) most likely
'.......added speed adjuster to fix the intro - april 29, 2002


SCREEN 0
WIDTH 80
COLOR 15
CLS


'.............Speed  Adjuster.....
PRINT "Version 1.2"
PRINT "Adjusting speed of game for your computer"
TakenTime$ = TIME$: DO
LOOP WHILE TakenTime$ = TIME$
TakenTime$ = TIME$: DO
LoopTime = LoopTime + 1
LOOP WHILE TakenTime$ = TIME$
TimeUnit = CINT(LoopTime / 2000)
PRINT TimeUnit
A$ = INPUT$(1)
CLS


'.................................Varieble Definitions For Game...............
Music$ = ""
D1 = 1'..............How many charachters down the dumb goes
O1 = 11'................How many charachters over the dumb gose
Bounce = 7'.................Keeps the dumb bouncen
C1 = 14'..................Color of the dumb
C2 = 14'..................Fade in color
D2 = 0'...............Tells how many charachters to go down when placing words
O2 = 0'.................Same as above only across
Toby = 1'...............Tells were the Toby shoulde be placed in TobyChad
Chad = 35'................Same as above only with Chad
BounceOut = 24'................Tells how many charachters to go out before returning
TimeAround = 0'.................Counts times around in TobyChad
TobyC = 9'..................Tells color of the Toby in TobyChad
ChadC = 4'..................Tells color of the Chad in TobyChad
FadeInWord$ = ""'.................Word to be faded in FadeWord
'............................Varieble Definition For Main Game................
C3 = 14
C4 = 9
C5 = 4

COLOR 4
PRINT "NOTE:Press enter a bunch to skip dumb questions"
COLOR 15

PRINT "Do you want to customize the colors(Y\N)?"
A$ = INPUT$(1, 0)
IF A$ = "Y" OR A$ = "y" THEN
INPUT "Enter color of descriptions, (number, 1-15): ", C3
INPUT "Enter color of options, (number, 1-15): ", C4
INPUT "Enter misilanious colors, (number, 1-15): ", C5
END IF
PRINT "Do you want big letters, (Y\N)?"
A$ = INPUT$(1, 0)
IF A$ = "N" OR A$ = "n" THEN WIDTH 80 ELSE WIDTH 40
PRINT "Do you wish to watch the intro, (Y\N)?"
A$ = INPUT$(1, 0)
IF A$ = "N" OR A$ = "n" THEN GOTO MainGame


'..........................Dumb Mall Adventure Intro............
TobyChad:
PRINT "Woulde You like some cheap music, (Y/N)?"
A$ = INPUT$(1, 0)
IF A$ = "Y" OR A$ = "y" THEN Music$ = "ON"

CLS
FadeInWord$ = "Produced": C2 = 14: D2 = 7: O2 = 16: GOSUB FadeIn
FadeInWord$ = "By": C2 = 14: D2 = 8: O2 = 19: GOSUB FadeIn

VIEW PRINT 10 TO 11
DO
DO UNTIL Chad = 20
CLS
LOCATE 10, Toby: COLOR TobyC: PRINT "TOBY"
LOCATE 10, Chad: COLOR ChadC: PRINT "CHAD"
Toby = Toby + 1: Chad = Chad - 1: GOSUB Pause
LOOP
SELECT CASE TimeAround
CASE 0
TobyC = 4: ChadC = 9
CASE 1
TobyC = 4: ChadC = 4
CASE 2
TobyC = 9: ChadC = 9
CASE 3
TobyC = 14: ChadC = 14
END SELECT
TimeAround = TimeAround + 1
DO
CLS
LOCATE 10, Toby: COLOR TobyC: PRINT "TOBY"
LOCATE 10, Chad: COLOR ChadC: PRINT "CHAD"
Toby = Toby - 1: Chad = Chad + 1: GOSUB Pause
LOOP UNTIL Chad = BounceOut
BounceOut = BounceOut - 1
LOOP UNTIL BounceOut = 20
VIEW PRINT
FadeInWord$ = "Productions": D2 = 12: O2 = 15: GOSUB FadeIn
PL = 10000: GOSUB Pause
CLS
FadeInWord$ = "Written": C2 = 14: D2 = 5: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Designed": C2 = 14: D2 = 6: O2 = 15: GOSUB FadeIn
FadeInWord$ = "&": D2 = 7: C2 = 14: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Programed": C2 = 14: D2 = 8: O2 = 15: GOSUB FadeIn
FadeInWord$ = "By": D2 = 9: C2 = 14: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Chad Loftis": C2 = 9: D2 = 10: O2 = 15: GOSUB FadeIn
FadeInWord$ = "&": C2 = 14: D2 = 11: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Toby Toland": C2 = 4: D2 = 12: O2 = 15: GOSUB FadeIn
PL = 5000: GOSUB Pause
CLS
FadeInWord$ = "CHAD": C2 = 4: D2 = 6: O2 = 20: GOSUB FadeIn
FadeInWord$ = "Toby": C2 = 9: D2 = 6: O2 = 16: GOSUB FadeIn
FadeInWord$ = "Productions": C2 = 14: D2 = 7: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Is sorta, kinda proud": C2 = 9: D2 = 8: O2 = 10: GOSUB FadeIn
FadeInWord$ = "To": C2 = 14: D2 = 9: O2 = 19: GOSUB FadeIn
FadeInWord$ = "Present": C2 = 4: D2 = 10: O2 = 17: GOSUB FadeIn
IF Music$ = "ON" THEN
PLAY "mb o3 e e c c e e c c d d d d c e g p1 e e c c e e c c d d e d c e c"
ELSE
PL = 5000: GOSUB Pause
END IF

DumbControl:
DO
D1 = D1 + 1
GOSUB DUMB
LOOP UNTIL D1 = 12
IF Bounce = 12 THEN GOTO ChadToby
DO
D1 = D1 - 1
GOSUB DUMB
LOOP UNTIL D1 = Bounce
Bounce = Bounce + 1
GOTO DumbControl

ChadToby:
FadeInWord$ = "THE": C2 = 4: D2 = 10: O2 = 19: GOSUB FadeIn
FadeInWord$ = "MALL ADVENTURE": C2 = 9: D2 = 19: O2 = 14: GOSUB FadeIn
PL = 15000: GOSUB Pause
GOTO MainGame

DUMB:
CLS : COLOR C1
LOCATE D1 + 0, O1: PRINT "DDD  U  U M   M BBB"
LOCATE D1 + 1, O1: PRINT "D  D U  U MM MM B  B"
LOCATE D1 + 2, O1: PRINT "D  D U  U M M M BBB"
LOCATE D1 + 3, O1: PRINT "D  D U  U M   M B  B"
LOCATE D1 + 4, O1: PRINT "D  D U  U M   M B  B"
LOCATE D1 + 5, O1: PRINT "DDD   UU  M   M BBB"
PL = 1000: GOSUB Pause
RETURN

FadeIn:
PL = 1500
COLOR 8: LOCATE D2, O2
PRINT FadeInWord$: GOSUB Pause
COLOR 7: LOCATE D2, O2
PRINT FadeInWord$: GOSUB Pause
COLOR C2: LOCATE D2, O2
PRINT FadeInWord$: GOSUB Pause
RETURN

Pause:
DO
P = P + 1
LOOP UNTIL P = PL * TimeUnit
P = 0
RETURN

'......................................Win Game...............................
WinGame:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  Congradulations! You got a roadkill"
PRINT "combo! As you sit and munch on the"
PRINT "succulent burger, you think to yourself,"
PRINT "I'm going to be sick. After that's over"
PRINT "with you leave the mall and walk away"
PRINT "asking yourself why you bothered to play"
PRINT "this game."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
CLS
FadeInWord$ = "You": C2 = 15: D2 = 9: O2 = 19: GOSUB FadeIn
DO
L = L + 1
C1 = 9
GOSUB Win
C1 = 4
GOSUB Win
C1 = 14
GOSUB Win
LOOP UNTIL L = 3
FadeInWord$ = "Is this a cheap ending, or what?": C2 = 15: D2 = 18: O2 = 5: GOSUB FadeIn
PL = 15000: GOSUB Pause
CLS
FadeInWord$ = "Written by": C2 = 15: D2 = 2: O2 = 1: GOSUB FadeIn
FadeInWord$ = "Toby Toland": C2 = 4: D2 = 3: O2 = 2: GOSUB FadeIn
FadeInWord$ = "and": C2 = 15: D2 = 4: O2 = 3: GOSUB FadeIn
FadeInWord$ = "Chad Loftis": C2 = 9: D2 = 5: O2 = 4: GOSUB FadeIn
PL = 15000: GOSUB Pause
CLS
FadeInWord$ = "Programed By": C2 = 15: D2 = 6: O2 = 5: GOSUB FadeIn
FadeInWord$ = "Chad Loftis": C2 = 9: D2 = 7: O2 = 6: GOSUB FadeIn
FadeInWord$ = "and": C2 = 15: D2 = 8: O2 = 7: GOSUB FadeIn
FadeInWord$ = "Toby Toland": C2 = 4: D2 = 9: O2 = 8: GOSUB FadeIn
PL = 15000: GOSUB Pause
CLS
FadeInWord$ = "Featuring": C2 = 15: D2 = 10: O2 = 9: GOSUB FadeIn
FadeInWord$ = "Justin Toland": C2 = 9: D2 = 11: O2 = 10: GOSUB FadeIn
FadeInWord$ = "Anna Gebert": C2 = 4: D2 = 12: O2 = 11: GOSUB FadeIn
FadeInWord$ = "Lori Toland": C2 = 14: D2 = 13: O2 = 12: GOSUB FadeIn
FadeInWord$ = "Todd Loftis": C2 = 9: D2 = 14: O2 = 13: GOSUB FadeIn
FadeInWord$ = "Toby Toland": C2 = 4: D2 = 15: O2 = 14: GOSUB FadeIn
FadeInWord$ = "Chad Loftis": C2 = 14: D2 = 16: O2 = 15: GOSUB FadeIn
PL = 15000: GOSUB Pause
CLS
FadeInWord$ = "Critiqued by": C2 = 15: D2 = 17: O2 = 16: GOSUB FadeIn
FadeInWord$ = "Todd Loftis": C2 = 9: D2 = 18: O2 = 17: GOSUB FadeIn
FadeInWord$ = "and": C2 = 15: D2 = 19: O2 = 18: GOSUB FadeIn
FadeInWord$ = "Lori Toland": C2 = 14: D2 = 20: O2 = 19: GOSUB FadeIn
PL = 15000: GOSUB Pause
CLS
FadeInWord$ = "Cheap music by": C2 = 15: D2 = 21: O2 = 20: GOSUB FadeIn
FadeInWord$ = "Lori Toland": C2 = 9: D2 = 22: O2 = 21: GOSUB FadeIn
PL = 15000: GOSUB Pause
CLS
FadeInWord$ = "The End": C2 = 15: D2 = 10: O2 = 17: GOSUB FadeIn
A$ = INPUT$(1, 0)
END
Win:
COLOR C1
LOCATE 11, 1
COLOR C1
PRINT "        W     W  IIIII  N    N  !!"
PRINT "        W     W    I    NN   N  !!"
PRINT "        W  W  W    I    N N  N  !!"
PRINT "        W W W W    I    N  N N  !!"
PRINT "        WW   WW    I    N   NN"
PRINT "        W     W  IIIII  N    N  !!"
PL = 8000: GOSUB Pause
RETURN
END

'...................................Side Stuff The Game Does.........

'.................Misilaneous Subs
Inventory:
CLS : COLOR C3: PRINT "You have:"
IF Envelope$ = "Have" THEN PRINT " An Envelope": PRINT money; "Dollars": PRINT " A Credit card"
IF GeekBook$ = "Have" THEN PRINT " A Book for Geeks"
IF Tapping$ = "Have" THEN PRINT " Tapping druglord computer game"
IF Quest$ = "Have" THEN PRINT " Another Stinking Quest game"
IF RoboDork$ = "Have" THEN PRINT " RoboDork game"
IF Goats$ = "Have" THEN PRINT " Goat book"
IF BigBook$ = "Have" THEN PRINT " Computer words book"
IF Tshirt$ = "Have" THEN PRINT " Geeks R Us T-shirt"
IF Jacket$ = "Have" THEN PRINT " Mighty Ducks Jacket"
IF HStick$ = "Have" THEN PRINT " A Hockey Stick"
IF Penny$ = "Have" THEN PRINT " A squashed penny"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
RETURN

EndGame:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  Thank You for playing The Dumb Mall."
PRINT "Adventure. You lost (AH HA HA HA HAAAAA)"
PRINT "Too bad you didn't get to try a Roadkill"
PRINT "burger. Oh well."
PRINT
PRINT "Woulde you like to try again, (Y\N)?"
A$ = INPUT$(1, 0)
IF A$ = "N" OR A$ = "n" THEN
CLS : COLOR C3: PRINT
PRINT "So sad to see you go, (NOT!)."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
END
END IF
GOTO MainGame


'........................................MAIN GAME...........................
MainGame:

'...................................Inventory Variebles.......................
Envelope$ = "Have not"
GeekBook$ = "Have not"
BigBook$ = "Have not"
Goats$ = "Have not"
Tapping$ = "Have not"
Quest$ = "Have not"
RoboDork$ = "Have not"
Penny$ = "Have not"
Jacket$ = "Have not"
HStick$ = "Have not"
Tshirt$ = "Have not"
money = 21

'.......................................Mall Central.........................
MallCentral:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You stand in the center of the mall."
PRINT "There are four major stores you can "
PRINT "visit: KayBee Toys, Software etc,"
PRINT "RoadKill Cafe, and Geeks R Us."
COLOR C4
PRINT : PRINT "1 Kay Bee Toys"
PRINT : PRINT "2 Software ect"
PRINT : PRINT "3 RoadKill Cafe"
PRINT : PRINT "4 Geeks R Us"
PRINT : PRINT "5 Inventory"
IF GeekBook$ = "Have" OR BigBook$ = "Have" OR Goats$ = "Have" THEN
PRINT : PRINT "6 Read a book"
END IF
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOTO KaybeeToys
CASE "2"
GOTO SoftwareEtc
CASE "3"
IF Jacket$ = "Have" AND Tshirt$ = "Have not" THEN
'...........sentence length.....................
CLS : COLOR C3: PRINT
PRINT "                 BANG!"
PRINT "  That drug lord and his mugs hunted you"
PRINT "down, and finished you."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame
END IF
GOTO RoadkillCafe
CASE "4"
GOTO GeeksRUs
CASE "5"
GOSUB Inventory
CASE "6"
IF GeekBook$ = "Have" OR BigBook$ = "Have" OR Goats$ = "Have" THEN
GOTO ReadBook
END IF
END SELECT
GOTO MallCentral

ReadBook:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "What book would you like to read?"
COLOR C4
PRINT : PRINT "1 Geek book"
PRINT : PRINT "2 Goat book"
PRINT : PRINT "3 Big Word book"
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
IF GeekBook$ = "Have not" OR GeekBook$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "  If you had that book you could really"
PRINT "geek out!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO MallCentral
END IF
GOTO GeekBook
CASE "2"
IF Goats$ = "Have not" OR Goats$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "  OWNED goes to READABLE as UNOWNED goes"
PRINT "to UNREADABLE."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO MallCentral
END IF
GOTO GoatBook
CASE "3"
IF BigBook$ = "Have not" OR BigBook$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "Sorry pal, you don't have that one."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO MallCentral
END IF
GOTO BigBook
END SELECT

GeekBook:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  After reading the geek book you now"
PRINT "know many useful things. For exampe how"
PRINT "eat ice cream with your nose, 110 ways"
PRINT "to make yourself pass out, and many"
PRINT "other things."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO MallCentral

GoatBook:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "           MOUNTAIN GOATS"
PRINT "                IN"
PRINT "           THE HYMALAYAS"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
CLS : COLOR C3: PRINT
PRINT "MAAAAAAHHH MAAAAAAAAAHHH MAAAAAHH!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
CLS : COLOR C3: PRINT
PRINT "Thankyou For Reading."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO MallCentral

BigBook:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "               BIG"
PRINT "             COMPUTER"
PRINT "              WORDS"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
CLS : COLOR C3: PRINT
PRINT "  ALOGORY,FALOMANTRA,FIDDLYSNOOT,THORG,"
PRINT "FILDROMICROPROCESSING MALGOMATION."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
CLS : COLOR C3: PRINT
PRINT "              THE END"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO MallCentral

'....................................Kaybee Toys..............................
KaybeeToys:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You are in Kay Bee Toys. The front"
PRINT "counter is empty and the guy who is"
PRINT "supposed to be there is no where in"
PRINT "sight. There are toys every where but"
PRINT "you notice only one.It is a teddy bear"
PRINT "with a sign under it that reads"
PRINT "           DO NOT TOUCH"
PRINT "There is a door in the back of the store"
IF Envelope$ = "Have not" THEN
PRINT "You see an envelope on the floor."
END IF
COLOR C4
PRINT : PRINT "1 Get the Bear"
PRINT : PRINT "2 Leave the store"
PRINT : PRINT "3 Inventory"
PRINT : PRINT "4 Check out door"
IF Envelope$ = "Have not" THEN
PRINT : PRINT "5 Pick up Envelope"
END IF
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOTO GetBear
CASE "2"
GOTO MallCentral
CASE "3"
GOSUB Inventory
CASE "4"
IF Jacket$ = "Have" OR Jacket$ = "" THEN
GOTO Empty
ELSE
GOTO DrugLordBase
END IF
CASE "5"
IF Envelope$ = "Have not" THEN
GOSUB Envelope
END IF
CASE "c"
CLS : COLOR C5
PRINT : INPUT "CODE: ", A$
IF A$ = "The Mighty Lori's" THEN
GOTO Penny
END IF
END SELECT
GOTO KaybeeToys

Penny:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You now have a squashed penny from the"
PRINT "Milwaukee museum!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
Penny$ = "Have"
GOTO KaybeeToys

Empty:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You already saved the mall, there is"
PRINT "nothing left to do here."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO KaybeeToys

GetBear:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You reach out and grab the cute cuddly"
PRINT "bear."
PRINT "            BOOOOOOM!!!!"
PRINT "The Bear appears to have been a bomb."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame

Envelope:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You pick up the envelope and find 21"
PRINT "dollars and a credit card inside. You"
PRINT "put it all in your pocket."
Envelope$ = "Have"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
RETURN


'......................................Software Ect...........................
SoftwareEtc:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You are standing in Software etc."
PRINT "There are computer books and games all"
PRINT "around. An oily haired salesman sits at"
PRINT "the front desk."
COLOR C4
PRINT : PRINT "1 Talk to salesman"
PRINT : PRINT "2 Check out games"
PRINT : PRINT "3 Check out Books"
PRINT : PRINT "4 Leave store"
PRINT : PRINT "5 Inventory"
IF Penny$ = "Have" THEN
PRINT : PRINT "6 Throw penny at salesman"
END IF
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOSUB ComputerMan
CASE "2"
GOTO Games
CASE "3"
GOTO Books
CASE "4"
GOTO MallCentral
CASE "5"
GOSUB Inventory
CASE "c"
CLS : COLOR C5
PRINT : INPUT "CODE: ", A$
IF A$ = "MKs Are Cool" THEN
money = money + 20
END IF
CASE "6"
IF Penny$ = "Have" THEN
GOTO Throwpen
END IF
END SELECT
GOTO SoftwareEtc

ComputerMan:
'...........sentence length.....................
CLS : COLOR C3: PRINT
PRINT "Salesman:"
PRINT "  BUY BUY BUY OUR STUFF!!!!"
PRINT "Oh yeah, and BUY ROADKILL COMBO!!!!!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc

Buygame:
CLS : COLOR C3: PRINT
IF money = 1 THEN
PRINT "Your out of cash, (Ya Bum)."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc
END IF
money = money - 10
SELECT CASE A$
CASE "1"
Tapping$ = "Have"
CASE "2"
Quest$ = "Have"
CASE "3"
RoboDork$ = "Have"
END SELECT
PRINT "You now own this game."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc

Buybook:
CLS : COLOR C3: PRINT
IF money = 1 THEN
PRINT "Your out of cash, (Ya Bum)."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc
END IF
money = money - 10
SELECT CASE A$
CASE "1"
GeekBook$ = "Have"
CASE "2"
BigBook$ = "Have"
CASE "3"
Goats$ = "Have"
END SELECT
PRINT "You now own this book."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc

Throwpen:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You hurl the penny into the salesman's"
PRINT "face! He gives you a big computer word"
PRINT "book and begs you to leave him alone."
Penny$ = "Have not"
BigBook$ = "Have"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc

CreditCard:
CLS : COLOR C3: PRINT
PRINT "Which would you like to use?"
PRINT : PRINT "1 Credit card"
PRINT : PRINT "2 Cash"
PRINT : B$ = INPUT$(1, 0)
IF B$ = "1" THEN
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  It's not a real good idea to use"
PRINT "somebody else's credit card without "
PRINT "their signature! "
PRINT "  The police come in an instant and"
PRINT "arrest you. To the slammer with ya'."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame
END IF
RETURN

Games:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "What game would you like to buy?"
PRINT : PRINT "1 Tapping a druglords computer in the"
PRINT " back of a toy store"
PRINT : PRINT "2 Another Stinking Quest"
PRINT : PRINT "3 Revenge of the RoboDork"
A$ = INPUT$(1, 0)
IF Envelope$ = "Have" THEN
SELECT CASE A$
CASE "1"
GOTO Game1
CASE "2"
GOTO Game2
CASE "3"
GOTO Game3
END SELECT
GOTO Games
ELSE
CLS : COLOR C3: PRINT "You have no money, (ya bum)."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
END IF
GOTO SoftwareEtc

Books:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "What Book would you like to buy?"
PRINT : PRINT "1 Computers For Geeks"
PRINT : PRINT "2 Big Computer Words"
PRINT : PRINT "3 Mountain Goats in the Hymylaias"
A$ = INPUT$(1, 0)
IF Envelope$ = "Have" THEN
SELECT CASE A$
CASE "1"
GOTO Book1
CASE "2"
GOTO Book2
CASE "3"
GOTO Book3
END SELECT
GOTO Books
ELSE
CLS : COLOR C3: PRINT "You have no money, (Ya bum)."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
END IF
GOTO SoftwareEtc

Book1:
IF GeekBook$ = "Have" OR GeekBook$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "  You already spent to much money on"
PRINT "geek books. Buy somthing else."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buybook
END IF
GOTO SoftwareEtc

Book2:
IF BigBook$ = "Have" THEN
CLS : COLOR C3: PRINT "You already have that."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buybook
END IF
GOTO SoftwareEtc

Book3:
IF Goats$ = "Have" THEN
CLS : COLOR C3: PRINT "You already have that."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buybook
END IF
GOTO SoftwareEtc

Game1:
IF Tapping$ = "Have" THEN
CLS : COLOR C3: PRINT "You already have that."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buygame
END IF
GOTO SoftwareEtc

Game2:
IF Quest$ = "Have" THEN
CLS : COLOR C3: PRINT "You already have that."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buygame
END IF
GOTO SoftwareEtc

Game3:
IF RoboDork$ = "Have" THEN
CLS : COLOR C3: PRINT "You already have that."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buygame
END IF
GOTO SoftwareEtc


'...................................Roadkill Cafe.............................
RoadkillCafe:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  A hideous stench enters your nose as"
PRINT "you approach the Roadkill Cafe. There is"
PRINT "a waiter polishing the counter, and"
PRINT "strange banging sounds are coming from"
PRINT "the kitchen. A dirty sign reads:"
PRINT "Roadkill combo (Roadkill Burger,"
PRINT "Roadkill Choke a cola, Roadkill French"
PRINT "Flies) $2000, BUY IT NOW!!"
COLOR C4
PRINT : PRINT "1 Talk to waiter"
PRINT : PRINT "2 Ask for Chef"
PRINT : PRINT "3 Buy Combo"
PRINT : PRINT "4 Leave"
PRINT : PRINT "5 Inventory"
IF Tshirt$ = "Have" THEN
PRINT : PRINT "6 Give T-shirt to Waiter"
END IF
IF Jacket$ = "Have" THEN
PRINT : PRINT "7 Give Jacket to Chef"
END IF
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOTO Waiter
CASE "2"
GOTO CHEF
CASE "3"
GOTO Combo
CASE "4"
GOTO MallCentral
CASE "5"
GOSUB Inventory
CASE "6"
IF Tshirt$ = "Have" THEN
GOTO WShirt
END IF
CASE "7"
IF Jacket$ = "Have" THEN
GOTO GiveJack
END IF
END SELECT
GOTO RoadkillCafe

GiveJack:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "Chef Chad:"
PRINT "  Oh, thankyou sooooo much for finding"
PRINT "it. Take this hockey stick."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
Jacket$ = ""
HStick$ = "Have"
GOTO RoadkillCafe

WShirt:
IF Jacket$ = "Have" THEN
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  Sudenly that nice blond mug from the"
PRINT "toy store walks up."
PRINT
PRINT "Mug Lori:"
PRINT "  There you are you dope! How dare you"
PRINT "ruin are plans to blow up the mall!"
PRINT "Thanks to the bright colors in MY jacket"
PRINT ",you have there, we were able to find"
PRINT "you!"
PRINT "                 BANG!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame
END IF
IF Jacket$ = "" THEN
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "Waiter Toby:"
PRINT "  Just what I always wanted! Take a"
PRINT "roadkill combo on the house."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO WinGame
END IF
IF Jacket$ = "Have not" THEN
CLS : COLOR C3: PRINT
PRINT "       BOOOOOOOOOOMMMMMMMMM!!!"
PRINT "  The mall has exploded due to an evil"
PRINT "druglord's plot to get rid of the"
PRINT "Roadkill Cafe!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame
END IF
GOTO RoadkillCafe

Combo:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You have no where near enough money to"
PRINT "buy a Roadkill combo. DUH!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO RoadkillCafe

Waiter:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "Waiter Toby:"
PRINT "  Toby or not toby, that is the question"
PRINT "Anyway, all I want is a Geeks R Us"
PRINT "T-shirt."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO RoadkillCafe

CHEF:
CLS : COLOR C3: PRINT
IF Jacket$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "  You already gave the chef his jacket."
PRINT "Get on with the game!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO RoadkillCafe
END IF
'...........sentence length.....................
PRINT "Waiter Toby:"
PRINT "  CHEF CHAAAAAD! Someone to see you!"
PRINT
PRINT "Chef Chad:"
PRINT "  Howyall'doin'? I make the best burgers"
PRINT "this side o' the highway. What I really"
PRINT "want is my Mighty Ducks jacket. Sombody"
PRINT "stole it."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO RoadkillCafe


'..................................Geeks R Us..................................
GeeksRUs:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  Welcome to Geeks R Us!! As you look"
PRINT "around you see that the walls, ceiling,"
PRINT "windows, and floor are covered with"
PRINT "shirts that say I AM A GEEK. There is a"
PRINT "Geek salesman standing here looking like"
PRINT "....a geek."
COLOR C4
PRINT : PRINT "1 Talk to Geek"
PRINT : PRINT "2 Pick your nose"
PRINT : PRINT "3 Leave store"
PRINT : PRINT "4 Inventory"
IF GeekBook$ = "Have" THEN
PRINT : PRINT "5 Give Geek book to Geek"
END IF
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
IF GeekBook$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "  You've hung around here long enough."
PRINT "you better go before you hurt your rep."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO GeeksRUs
END IF
GOTO Geek
CASE "2"
GOTO Picknose
CASE "3"
GOTO MallCentral
CASE "4"
GOSUB Inventory
CASE "5"
IF GeekBook$ = "Have" THEN
GOSUB GiveToGeek
END IF
END SELECT
GOTO GeeksRUs

Picknose:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You fit right in here at Geeks R Us,"
PRINT "you sicko!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO GeeksRUs

GiveToGeek:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You ask the Geek if he can read, then"
PRINT "give him the book. He screams with"
PRINT "excitement and throws a T-shirt in your"
PRINT "face. You decide to keep it."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GeekBook$ = ""
Tshirt$ = "Have"
GOTO GeeksRUs

Geek:
'...........sentence length.....................
CLS : COLOR C3: PRINT
PRINT "Geek Salesman:"
PRINT "  Duh, what's up (duh)? The ceiling,"
PRINT "right? Anyway, (duh) you really ought to"
PRINT "buy a Roadkill Cafe burgur (duh) combo."
PRINT "I would but I'm saving up for a (duh)"
PRINT "computers for geeks book. Oh yeah, my my"
PRINT "name's Justin."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO GeeksRUs


'.............................Drug Lord Base..................................
DrugLordBase:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You open the door and walk through."
PRINT "Suddenly finding yourself in a druglords"
PRINT "secret base, you:"
COLOR C4
PRINT : PRINT "1 Explore"
PRINT : PRINT "2 Quit game for reasons of stupidity"
PRINT : PRINT "3 Run for your life"
PRINT : PRINT "4 Inventory"
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOTO Gang
CASE "2"
GOTO EndGame
CASE "3"
CLS : COLOR C3: PRINT
PRINT "That was smart, but not very brave."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO KaybeeToys
CASE "4"
GOSUB Inventory
END SELECT
GOTO DrugLordBase


'......................................Gang....................................
Gang:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  This is a small room with a computer"
PRINT "sitting in the corner. There are three"
PRINT "big mugs standing behind a short little"
PRINT "man in a big chair. The first has blond"
PRINT "hair, and is wearing a purple Mighty"
PRINT "Ducks jacket. The second is wearing a"
PRINT "beret, and the third has brown hair"
COLOR C4
PRINT : PRINT "1 Talk to mug #1"
PRINT : PRINT "2 Talk to mug #2"
PRINT : PRINT "3 Talk to mug #3"
PRINT : PRINT "4 Talk to short guy"
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOTO Mug1
CASE "2"
GOTO Mug2
CASE "3"
GOTO Mug3
CASE "4"
GOTO SmallGuy
END SELECT
GOTO Gang

Mug1:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "Mug Lori:"
PRINT "  DON'T TOUCH MY JACKET!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO Gang

Mug2:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "Mug Joylee:"
PRINT "  We're going to blow up the mall!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO Gang

Mug3:
CLS : COLOR C3: PRINT
PRINT "Mug Anna:"
PRINT "I will smash you!"
PRINT
PRINT "Small Guy:"
PRINT "  Stop! You dork!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO Gang

'...................................Small Guy Talks...........................
SmallGuy:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "Drug lord Christopher, (small guy):"
PRINT "  You will never tap our computer, and"
PRINT "stop the bomb, that's going to blow up"
PRINT "the mall. AAH HA HA HA! (Puff,puff),"
PRINT "I'll let you go to be blown up, or you"
PRINT "foolishly try to stop us."
COLOR C4
PRINT : PRINT "1 Leave "
PRINT : PRINT "2 Try to stop bomb"
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOTO Leave
CASE "2"
GOTO StopBomb
END SELECT
GOTO SmallGuy

Leave:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "Druglord Christopher:"
PRINT "  FOOL! You can't trust a DRUGLORD! AAAH"
PRINT "HA HA HA HAAAAAAA!"
PRINT
PRINT "               BANG!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame

'.......................................Stop Bomb.............................
StopBomb:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "Drug lord Christopher:"
PRINT "  FOOL!"
PRINT
PRINT "  They lock you in and walk out. The"
PRINT "computer in the corner is ticking"
PRINT "steadily and flashing"
PRINT "            STOP ME!"
COLOR C4
PRINT : PRINT "1 Hit the computer"
PRINT : PRINT "2 Scream"
PRINT : PRINT "3 Try to escape"
IF Tapping$ = "Have" OR Quest$ = "Have" OR RoboDork$ = "Have" THEN
PRINT : PRINT "4 Play a game"
END IF
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOTO HitComputer
CASE "2"
GOTO Scream
CASE "3"
GOTO Escape
CASE "4"
IF Tapping$ = "Have" OR Quest$ = "Have" OR RoboDork$ = "Have" THEN
GOTO PlayGame
END IF
END SELECT
GOTO StopBomb

PlayGame:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "What game do you wish to play?"
COLOR C4
PRINT : PRINT "1 Another Stinking Quest"
PRINT : PRINT "2 Tapping a Druglords Computer"
PRINT : PRINT "3 Revenge of the RoboDork"
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
IF Quest$ = "Have not" OR Quest$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "  You search throw your things for the"
PRINT "game. Wait a minute, you never bought"
PRINT "that game!"
PRINT "             KABOOOOOM!!!!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame
END IF
GOTO Quest
CASE "2"
IF Tapping$ = "Have not" OR Tapping$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "  Since you don't have that game you"
PRINT "can't tap the computer, and that means.."
PRINT "         KAAAAAAABOOOOOOOOMMMM!!!!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame
END IF
GOTO Tap
CASE "3"
IF RoboDork$ = "Have not" OR RoboDork$ = "" THEN
CLS : COLOR C3: PRINT
PRINT "  You really would like to see Robodork"
PRINT "get his revenge, but unfortionatly you"
PRINT "don't have that game."
PRINT "           KAAAAAABOOOOOOOOOOM!!!"
PRINT "Better luck next time, (NOT!)."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame
END IF
GOTO RoboDork
END SELECT

Quest:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "        Another Stinking Quest"
PRINT
PRINT "  Your name is prince Dumbo of"
PRINT "Dumbville. Your kingdom is in trouble."
PRINT "They lost there magic RoadKill burger."
PRINT "Find it and save the kingdom."
PRINT "            BOOM!!!!"
PRINT "To bad, it looks like the bomb blew up"
PRINT "before you could save the kingdom."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame

RoboDork:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "     The Revenge of Robodork"
PRINT
PRINT "  Robodork is back and ready to get"
PRINT "revenge on his enemy Robocool. Play 5000"
PRINT "great levels and two zillion types of"
PRINT "bad guys, and when your done with that"
PRINT "buy more Robodork games."
PRINT "           BOOOOOOM!!!!!"
PRINT "Next time maybe you shoulde play you"
PRINT "games on a computer that dosen't have a"
PRINT "bomb conected to it."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame

HitComputer:
CLS : COLOR C3: PRINT
PRINT "BOOOOOOOOOMMMMMMMMM!!!!!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame

Scream:
CLS : COLOR C3: PRINT
PRINT "WHAAAAAAAAAAAAAAAAAAHH!"
PRINT "BOOOOOOOOOOOOOOOOMMM!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame

Escape:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You frantically try to open the door"
PRINT "but to no avail."
PRINT "Tick, Tick, Tick,"
PRINT "        KAAABOOOOOOOMMM!!!"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
GOTO EndGame

'.......................................Tap Computer..........................
Tap:
CLS : COLOR C3: PRINT
'...........sentence length.....................
PRINT "  You slide the game into the disk"
PRINT "drive and wait."
PRINT
PRINT "Computer:"
PRINT "  Correct code needed please choose."
COLOR C4
PRINT : PRINT "1 Diddly"
PRINT : PRINT "2 Doomsnoot"
PRINT : PRINT "3 Ampidextrous (and other big"
PRINT "words)"
PRINT : PRINT "4 THE RIGHT CODE"
PRINT : PRINT "5 Flibb"
PRINT : PRINT "6 Todd (i.e. Dork)"
PRINT : PRINT "7 Wow!"
Tapping$ = ""
A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "4"
GOTO TheRCode
CASE ELSE
CLS : COLOR C3: PRINT
PRINT "BOOOOOOOOOOOOOOMMMMMMMMM"
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
END SELECT
GOTO EndGame

TheRCode:
'...........sentence length.....................
CLS : COLOR C3: PRINT
PRINT "Tick...Tick....Tick"
PRINT
PRINT "  You breath a sigh of relief as the"
PRINT "computer shuts down. Good job! You saved"
PRINT "the mall from From sure destruction! You"
PRINT "even get a bonus, the blond mug seems to"
PRINT "have left her jacket. You take the"
PRINT "jacket, and finding the door has"
PRINT "unlocked itself leave."
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
Jacket$ = "Have"
GOTO KaybeeToys







