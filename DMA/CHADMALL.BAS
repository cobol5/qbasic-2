SCREEN 0
WIDTH 40
Envelope$ = "Have not"
GeekBook$ = "Have not"
Tapping$ = "Have not"
Quest$ = "Have not"
Robodork$ = "Have not"
Money = 20
GOTO MallCentral

endgame:
CLS : PRINT
PRINT "  Thank You for playing The Dumb Mall."
PRINT "Adventure. You lost (AH HA HA HA HAAAAA)"
PRINT "Too bad you didn't get to try a"
PRINT "Roadkill burger. Oh well."
COLOR 12
PRINT : PRINT "1 Try Again"
PRINT : PRINT "2 Quit"
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO MallCentral
CASE "2"
PRINT : PRINT "So sad to see you go. NOT!"
PRINT : A$ = "": INPUT "Press Enter:", A$
END
END SELECT
GOTO endgame

ComputerMan:
CLS : PRINT
PRINT "Salesman: BUY BUY BUY OUR STUFF!!!!"
PRINT "Oh yeah, and BUY ROADKILL COMBO!!!!!"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc

Inventory:
CLS : PRINT "You have:"
IF Envelope$ = "Have" THEN PRINT "An Envelope": PRINT Money; "Dollars": PRINT "A Credit card"
IF GeekBook$ = "Have" THEN PRINT "A Book for Geeks"
IF Tapping$ = "Have" THEN PRINT " Tapping druglord computer game"
IF Quest$ = "Have" THEN PRINT " Another Stinking Quest game"
IF Robodork$ = "Have" THEN PRINT "RoboDork game"
IF Goats$ = "Have" THEN PRINT "Goat book"
IF Bigbook$ = "Have" THEN PRINT "Computer words book"
IF Tshirt$ = "Have" THEN PRINT "Geeks R Us T-shirt"
IF Jacket$ = "Have" THEN PRINT "Mighty Ducks Jacket"
IF Hstick$ = "Have" THEN PRINT "A Hockey Stick"
IF Penny$ = "Have" THEN PRINT "A squashed penny"
PRINT : A$ = "": INPUT "Press Enter:", A$
RETURN

Envelope:
CLS : PRINT
PRINT "You pick up the envelope and"
PRINT "find 20 dollars and a credit card"
PRINT "inside. You put it all in your pocket."
Envelope$ = "Have"
PRINT : A$ = "": INPUT "Press Enter:", A$
RETURN

CreditCard:
CLS : PRINT
PRINT "Which would you like to use?"
PRINT : PRINT "1 Credit card"
PRINT : PRINT "2 Cash"
PRINT : B$ = "": INPUT "", B$
IF B$ = "1" THEN
GOTO CC
END IF
RETURN

Buygame:
CLS : PRINT
IF Money = 0 THEN
PRINT "Your out of cash (Ya Bum)"
GOTO SoftwareEtc
END IF
Money = Money - 10
SELECT CASE A$
CASE "1"
Tapping$ = "Have"
CASE "2"
Quest$ = "Have"
CASE "3"
Robodork$ = "Have"
END SELECT
PRINT "You now own this game"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc

Buybook:
CLS : PRINT
IF Money = 0 THEN
PRINT "Your out of cash (Ya Bum)"
GOTO SoftwareEtc
END IF
Money = Money - 10
SELECT CASE A$
CASE "1"
GeekBook$ = "Have"
CASE "2"
Bigbook$ = "Have"
CASE "3"
Goats$ = "Have"
END SELECT
PRINT "You now own this book "
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc

Extracash:
Money = Money + 20
GOTO SoftwareEtc

Tshirt:
CLS : PRINT
Tshirt$ = "Have"
GOTO GeeksRUs

CC:
CLS : PRINT
PRINT "It's not a real good idea to use"
PRINT "somebody else's credit card without "
PRINT "their signature! "
PRINT "The police come in an instant and"
PRINT "arrest you. To the slammer with ya'."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO endgame

GiveToGeek:
CLS : PRINT
PRINT "You ask the Geek if he can read, then"
PRINT "Give him the book. He screams with"
PRINT "excitement and throws a T-shirt in your"
PRINT "face. You decide to keep it."
GeekBook$ = ""
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO Tshirt
RETURN

Goatbook:
CLS : PRINT
COLOR 15
PRINT "       MOUNTAIN GOATS"
PRINT "             IN"
PRINT "       THE HYMALAYAS"
PRINT : A$ = "": INPUT "(Press Enter:)", A$
CLS : PRINT
PRINT "MAAAAAAHHH MAAAAAAAAAHHH MAAAAAHH!"
PRINT : A$ = "": INPUT "(Press Enter:)", A$
CLS : PRINT
PRINT "Thankyou For Reading"
PRINT : A$ = "": INPUT "(Press Enter:)", A$
GOTO MallCentral

MallCentral:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT "  You stand in the center of the mall."
PRINT "There are four major stores you can "
PRINT "visit: KayBee Toys, Software etc,"
PRINT "RoadKill Cafe, and Geeks R Us."
COLOR 5
PRINT : PRINT "1 Kay Bee Toys"
PRINT : PRINT "2 Software ect"
PRINT : PRINT "3 RoadKill Cafe"
PRINT : PRINT "4 Geeks R Us"
PRINT : PRINT "5 Inventory"
IF Goats$ = "Have" THEN
PRINT : PRINT "A: Read Goatbook Book"
END IF
IF Bigbook$ = "Have" THEN
PRINT : PRINT "B: Read Big word book"
END IF
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO KaybeeToys
CASE "2"
GOTO SoftwareEtc
CASE "3"
GOTO RoadkillCafe
CASE "4"
GOTO GeeksRUs
CASE "5"
GOSUB Inventory
CASE "A"
IF Goats$ = "Have" THEN
GOTO Goatbook
END IF
CASE "B"
IF Bigbook$ = "Have" THEN
GOTO big
END IF
'CASE "7"
'IF Robodork$ = "Have" THEN
'GOTO Robot
END SELECT
GOTO MallCentral

KaybeeToys:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT "  You are in Kay Bee Toys. The front"
PRINT "counter is empty and the guy who is"
PRINT "supposed to be there is no where in"
PRINT "sight. There are toys every where but"
PRINT "you notice only one.It is a teddy bear"
PRINT "with "
PRINT "a sign under it that reads DO NOT TOUCH."
PRINT "There is a door in the back of the store"
IF Envelope$ = "Have not" THEN
PRINT "You see an envelope on the floor."
END IF
COLOR 5
PRINT : PRINT "1 Get the Bear"
PRINT : PRINT "2 Leave the store"
PRINT : PRINT "3 Inventory"
PRINT : PRINT "4 Check out door"
IF Envelope$ = "Have not" THEN
PRINT : PRINT "5 Pick up Envelope"
END IF
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO GetBear
CASE "2"
GOTO MallCentral
CASE "3"
GOSUB Inventory
CASE "4"
IF Jacket$ = "Have" THEN
GOTO Empty
ELSE
GOTO Druglordbase
END IF
CASE "5"
IF Envelope$ = "Have not" THEN
GOSUB Envelope
END IF
CASE "The Mighty Lori's"
GOTO Penny
END SELECT
GOTO KaybeeToys

SoftwareEtc:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT "  You are standing in Software etc."
PRINT "There are computer books and games all"
PRINT "around. An oily haired salesman sits at"
PRINT "the front desk."
COLOR 5
PRINT : A$ = "": INPUT "", A$
PRINT : PRINT "1 Talk to salesman"
PRINT : PRINT "2 Check out games"
PRINT : PRINT "3 Check out Books"
PRINT : PRINT "4 Leave store"
PRINT : PRINT "5 Inventory"
IF Penny$ = "Have" THEN
PRINT : PRINT "6 Throw penny at salesman"
END IF
COLOR 12
PRINT : A$ = "": INPUT "", A$
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
CASE "MKs Are Cool"
GOTO Extracash
CASE "6"
IF Penny$ = "Have" THEN
GOTO Throwpen
END IF
END SELECT
GOTO SoftwareEtc

RoadkillCafe:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT "  A hideous stench enters your nose as"
PRINT "you approach the Roadkill Cafe. There is"
PRINT "a waiter polishing the counter, and"
PRINT "strange banging sounds are coming from"
PRINT "the kitchen. A dirty sign reads:"
PRINT "Roadkill combo (Roadkill Burger,"
PRINT "Roadkill Choke a cola, Roadkill French"
PRINT "Flies) $2000, BUY IT NOW!!"
COLOR 5
PRINT : PRINT "1 Talk to waiter"
PRINT : PRINT "2 Ask for Chef"
PRINT : PRINT "3 Buy Combo"
PRINT : PRINT "4 Leave"
PRINT : PRINT "5 Inventory"
IF Jacket$ = "Have" THEN
PRINT : PRINT "6 Give Jacket to Chef"
END IF
IF Tshirt$ = "Have" THEN
PRINT : PRINT "7 Give T-shirt to Waiter"
END IF
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO Waiter
CASE "2"
GOTO Chef
CASE "3"
GOTO Combo
CASE "4"
GOTO MallCentral
CASE "5"
GOSUB Inventory
CASE "6"
IF Jacket$ = "Have" THEN
GOTO Givejack
END IF
CASE "7"
IF Tshirt$ = "Have" THEN
GOTO Wshirt
END IF
END SELECT
GOTO RoadkillCafe

GeeksRUs:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT " Welcome to Geeks R Us!! As you look"
PRINT "around you see that the walls, ceiling,"
PRINT "windows, and floor are covered with"
PRINT "shirts that say I AM A GEEK. There is a"
PRINT "Geek salesman standing here looking like"
PRINT "....a geek."
COLOR 5
PRINT : PRINT "1 Talk to Geek"
PRINT : PRINT "2 Pick your nose"
PRINT : PRINT "3 Leave store"
PRINT : PRINT "4 Inventory"
IF GeekBook$ = "Have" THEN
PRINT : PRINT "5 Give Geek book to Geek"
END IF
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
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

big:
CLS : PRINT
PRINT "             BIG"
PRINT "           COMPUTER  "
PRINT "            WORDS"
PRINT : PRINT : A$ = "": INPUT "Press Enter", A$
CLS : PRINT
PRINT "ALOGORY,FALOMANTRA,FIDDLYSNOOT,THORG,"
PRINT "FILDROMICROPROCESSING MALGOMATION."
PRINT : A$ = "": INPUT "Press Enter:", A$
CLS : PRINT
PRINT "           THE END"
PRINT : PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO MallCentral

Penny:
CLS : PRINT
PRINT "You now have a squashed penny"
PRINT "from the Milwaukee museum!"
Penny$ = "Have"
PRINT : A$ = "": INPUT "Press Enter", A$
GOTO KaybeeToys

Throwpen:
CLS : PRINT
PRINT "You hurl the penny into the salesman's"
PRINT "face! "
PRINT "WHY ?"
PRINT "He gives you the big computer word"
PRINT "book and begs you to leave him alone"
Penny$ = "Have not"
Bigbook$ = "Have"
PRINT : A$ = "": INPUT "Press Enter", A$
GOTO SoftwareEtc

Picknose:
PRINT "You fit right in here at Geeks R Us,"
PRINT "you sicko!"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO GeeksRUs

Empty:
CLS : PRINT
PRINT "There's nothing here."
PRINT : A$ = "": INPUT "Press Enter", A$
GOTO KaybeeToys

GetBear:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT "You reach out and grab the cute cuddly"
PRINT "bear.          BOOOOOOM!!!!"
PRINT
PRINT "The Bear appears to have been a bomb."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO endgame

Givejack:
CLS : PRINT
Jacket$ = ""
PRINT "Chef Chad: Oh, thankyou sooooo"
PRINT "much for finding it. Take "
PRINT "this hockey stick."
PRINT : A$ = "": INPUT "Press Enter", A$
GOTO Hstick

Hstick:
Hstick$ = "Have"
GOTO RoadkillCafe

Wshirt:
IF Hstick$ = "Have" THEN
CLS : PRINT
PRINT "Waiter Toby: Just what I always "
PRINT "wanted! Take a roadkill combo on the "
PRINT "house."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO Wingame
END IF
GOTO RoadkillCafe
IF Hstick$ = "Have not" THEN
CLS : PRINT
PRINT "BOOOOOOOOOOMMMMMMMMM"
PRINT "The mall has exploded due"
PRINT "to an evil druglord's"
PRINT "plot to get rid of Roadkill"
PRINT "Cafe!"
PRINT : A$ = "": INPUT "Press Enter", A$
GOTO endgame
END IF
GOTO RoadkillCafe

Combo:
CLS : PRINT
PRINT "You have no where near enough money"
PRINT "to buy a combo. DUH!"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO RoadkillCafe

Druglordbase:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT " You open the door and walk through."
PRINT "Suddenly finding yourself in a druglords"
PRINT "secret base, you:"
COLOR 5
PRINT : PRINT "1 Explore"
PRINT : PRINT "2 Quit game for reasons of stupidity"
PRINT : PRINT "3 Run for your life"
PRINT : PRINT "4 Inventory"
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO gang
CASE "2"
GOTO endgame
CASE "3"
GOTO Runlife
CASE "4"
GOSUB Inventory
END SELECT
GOTO Druglordbase

Runlife:
CLS : PRINT
PRINT "Smart move but not very brave."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO KaybeeToys

Wingame:
CLS : PRINT
PRINT "Congradulations! You got"
PRINT "a roadkill combo!"
PRINT : PRINT "As you sit and munch on"
PRINT "the succulent burger, you think"
PRINT "to yourself: I'm going to be sick."
PRINT : PRINT "After that's over with you leave"
PRINT "the mall and walk away asking yourself"
PRINT "why you bothered to play this"
PRINT "game."
PRINT : PRINT "                THE END"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO Credits

Geek:
CLS : COLOR 10: PRINT
PRINT "Geek Salesman: Duh, what's up (duh)? The"
PRINT "ceiling, right? Anyway, (duh) you"
PRINT "really ought to buy a"
PRINT "Roadkill Cafe burger (duh) combo."
PRINT "I would, but I'm saving up for a (duh)"
PRINT "computer book for geeks.Oh yeah,"
PRINT "my name's Justin."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO GeeksRUs

Credits:
CLS : PRINT
PRINT : PRINT "Written By: Toby Toland"
PRINT "         And    "
PRINT "     Chad Loftis"
PRINT : PRINT "Programmed By: Chad Loftis"
PRINT "         And"
PRINT "     Toby Toland"
PRINT : PRINT "Featuring: Justin Toland"
PRINT "           Joylee Loftis"
PRINT "            Anna Gebert"
PRINT "            Lori Toland"
PRINT "            Todd Loftis"
PRINT "            Toby Toland"
PRINT "            Chad Loftis"
PRINT : PRINT "Critiqued By: Todd Loftis"
PRINT "              Lori Toland"
PRINT : A$ = "": INPUT "Press Enter:", A$
END

Waiter:
CLS : PRINT
PRINT "Waiter Toby: To be or not to be, that is the question."
PRINT "Anyway, all I want is a Geeks R Us"
PRINT "T-shirt."
PRINT "(You: Yeah.......sure.)  "
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO RoadkillCafe

Chef:
CLS : PRINT
PRINT "Waiter Toby: CHEF CHAAAAAD.Someone to"
PRINT "see you."
PRINT "Chef Chad: Howyall'doin'? I make the"
PRINT "best burgers this side o' the highway."
PRINT "What I really want is my "
PRINT "Mighty Ducks jacket. Somebody stole it."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO RoadkillCafe

gang:
CLS : PRINT
PRINT "This is a small room with a computer"
PRINT "sitting in the corner. There are"
PRINT "three big mugs standing behind a"
PRINT "short little man in a big chair."
PRINT "The first has blond hair and is"
PRINT "wearing a purple Mighty Ducks"
PRINT "jacket. The second is wearing a"
PRINT "beret and the third has brown"
PRINT "hair."
COLOR 5
PRINT : PRINT "1 Talk to mug #1"
PRINT : PRINT "2 Talk to mug #2"
PRINT : PRINT "3 Talk to mug #3"
PRINT : PRINT "4 Talk to short guy"
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO Mug1
CASE "2"
GOTO Mug2
CASE "3"
GOTO mug3
CASE "4"
GOTO Smallguy
END SELECT
GOTO gang

Mug1:
CLS : PRINT
PRINT "Mug Lori: DON'T TOUCH MY JACKET!"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO gang

Mug2:
CLS : PRINT
PRINT "Mug Joylee: We're going to blow"
PRINT "up the mall!"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO gang

mug3:
CLS : PRINT
PRINT "Mug Anna: I will smash you!"
PRINT : PRINT "Small Guy: Stop! You dork!"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO gang

Smallguy:
CLS : PRINT
PRINT "Drug lord Christopher: You will"
PRINT "never tap our computer and stop the"
PRINT "bomb that's going to blow up the mall."
PRINT "AAAH HAA HAA HAAAAAAAA!"
PRINT "(Puff,Puff)"
PRINT "I'll let you go to be blown up,"
PRINT "or you can foolishly try to"
PRINT "stop us."
COLOR 5
PRINT : PRINT "1 Leave "
PRINT : PRINT "2 Try to stop bomb"
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO leave
CASE "2"
GOTO Stopbomb
END SELECT
GOTO Smallguy

leave:
CLS : PRINT
PRINT "Druglord Christopher: FOOL! YOU CAN'T"
PRINT "TRUST A DRUGLORD! AAAAHH HA HA"
PRINT "HAAAAAAAAAAA!"
PRINT : PRINT "               BANG!"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO endgame

Stopbomb:
CLS : PRINT
PRINT "Drug lord Christopher: FOOL!"
PRINT : PRINT "They lock you in and walk out."
PRINT "The computer in the corner is ticking"
PRINT "steadily and flashing: STOP ME!"
COLOR 5
PRINT : PRINT "1 Hit the computer"
PRINT : PRINT "2 Scream"
PRINT : PRINT "3 Try to escape"
IF Tapping$ = "Have" THEN
PRINT : PRINT "4 Use tapping game"
END IF
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO 1
CASE "2"
GOTO 2
CASE "3"
GOTO 3
CASE "4"
GOTO tap
END SELECT
GOTO Stopbomb

1 :
CLS : PRINT
PRINT "BOOOOOOOOOMMMMMMMMM"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO endgame

2 :
CLS : PRINT
PRINT "WHAAAAAAAAAAAAAAAAAAHH!"
PRINT "BOOOOOOOOOOOOOOOOMMM!"
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO endgame

3 :
CLS : PRINT
PRINT "You frantically try to open"
PRINT "the door but to no avail."
PRINT "Tick, Tick, Tick,"
PRINT "BOOOOOOOOOOOOOOOOMMMMMMMMMMMMM"
PRINT : A$ = "": INPUT "Press Enter", A$
GOTO endgame

tap:
CLS : PRINT
PRINT "You slide the game into the disk"
PRINT "drive and wait."
PRINT "Computer: Correct code needed"
PRINT "choose a code:"
COLOR 5
PRINT : PRINT "1 Diddly"
PRINT : PRINT "2 Doomsnoot"
PRINT : PRINT "3 Ampidextrous (and other big"
PRINT "words)"
PRINT : PRINT "4 THE RIGHT CODE"
PRINT : PRINT "5 Flibb"
PRINT : PRINT "6 Todd (i.e. Dork)"
PRINT : PRINT "7 Wow!"
Tapping$ = ""
COLOR 12
PRINT : A$ = "": INPUT "", A$
SELECT CASE A$
CASE "1"
GOTO Thing
CASE "2"
GOTO Thing
CASE "3"
GOTO Thing
CASE "4"
GOTO TRC
CASE "5"
GOTO Thing
CASE "6"
GOTO Thing
CASE "7"
GOTO Thing
END SELECT
GOTO tap

Thing:
CLS : PRINT
PRINT "BOOOOOOOOOOOOOOMMMMMMMMM"
PRINT : A$ = "": INPUT "Press Enter", A$
GOTO endgame

TRC:
CLS : PRINT
PRINT "Tick...Tick....Tick"
PRINT : PRINT "You breath a sigh of relief"
PRINT "as the computer shuts down."
PRINT "Good job! You saved the mall from"
PRINT "sure destruction!"
PRINT "You even get a bonus!"
PRINT "The blond mug seems to have left"
PRINT "her jacket."
PRINT : A$ = "": INPUT "Press Enter", A$
GOTO MDJ

MDJ:
Jacket$ = "Have"
GOTO KaybeeToys

Games:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT "What game would you like to buy?"
PRINT : PRINT "1 Tapping a druglords computer in the"
PRINT " back of a toy store"
PRINT : PRINT "2 Another Stinking Quest"
PRINT : PRINT "3 Revenge of the RoboDork"
COLOR 12
PRINT : A$ = "": INPUT "", A$
IF Envelope$ = "Have" THEN
SELECT CASE A$
CASE "1"
GOTO game1
CASE "2"
GOTO game2
CASE "3"
GOTO game3
END SELECT
GOTO Games
ELSE
CLS : PRINT "You have nothing to buy it with (Ya bum)"
PRINT : A$ = "": INPUT "Press Enter:", A$
END IF
GOTO SoftwareEtc

Books:
CLS : COLOR 10: PRINT
'...........sentence length.....................
PRINT "What Book would you like to buy?"
PRINT : PRINT "1 Computers For Geeks"
PRINT : PRINT "2 Big Computer Words"
PRINT : PRINT "3 Mountain Goats in the Hymylaias"
COLOR 12
PRINT : A$ = "": INPUT "", A$
IF Envelope$ = "Have" THEN
SELECT CASE A$
CASE "1"
GOTO book1
CASE "2"
GOTO book2
CASE "3"
GOTO book3
END SELECT
GOTO Books
ELSE
CLS : PRINT "You have nothing to buy it with (Ya bum)"
PRINT : A$ = "": INPUT "Press Enter:", A$
END IF
GOTO SoftwareEtc

book1:
IF GeekBook$ = "Have" THEN
CLS : PRINT "You already have that."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buybook
END IF
GOTO SoftwareEtc

book2:
IF BigCWordBook$ = "Have" THEN
CLS : PRINT "You already have that."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buybook
END IF
GOTO SoftwareEtc

book3:
IF Goatbook$ = "Have" THEN
CLS : PRINT "You already have that."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buybook
END IF
GOTO SoftwareEtc

game1:
IF Tapping$ = "Have" THEN
CLS : PRINT "You already have that."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buygame
END IF
GOTO SoftwareEtc

game2:
IF Quest$ = "Have" THEN
CLS : PRINT "You already have that."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buygame
END IF
GOTO SoftwareEtc

game3:
IF Robodork$ = "Have" THEN
CLS : PRINT "You already have that."
PRINT : A$ = "": INPUT "Press Enter:", A$
GOTO SoftwareEtc
ELSE
GOSUB CreditCard
GOTO Buygame
END IF
GOTO SoftwareEtc


