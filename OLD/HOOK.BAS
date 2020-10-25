Chad:
SCREEN 0
CLS
COLOR 5
smovea = 2
smoveb = 2
smovec = 1
smoved = 2
health = 10
badguy = 10
PRINT "Would you like to be Hook or Rufio:"
INPUT "", choose$
SELECT CASE choose$
CASE "Hook"
GOTO weap
CASE "Rufio"
GOTO weap
END SELECT
GOTO Chad

weap:
COLOR 9
CLS
PRINT "Select a weapon:"
PRINT "1: Sword"
PRINT "2: Knife"
INPUT "", a$
SELECT CASE a$
CASE "1"
sword$ = "use"
GOTO fight
CASE "2"
knife$ = "use"
GOTO fight
END SELECT

fight:
CLS
COLOR 10
PRINT "You have": PRINT health: PRINT "hitpoints"
PRINT "Your opponent has": PRINT badguy: PRINT "hitpoints"
PRINT : PRINT "The battle begins"
IF choose$ = "Hook" THEN
PRINT "Rufio lunges toward you"
INPUT "", a$
GOTO bat
END IF
PRINT "Hook lunges toward you"
INPUT "", a$
GOTO bat

bat:
CLS
COLOR 8
IF knife$ = "use" THEN
PRINT "You are using the knife"
PRINT : PRINT "1 Thrust"
PRINT "2 Fancy move"
INPUT "", a$
SELECT CASE a$
CASE "1"
GOTO attack
CASE "2"
GOTO spec
END SELECT
END IF
CLS
PRINT "You are using the sword"
PRINT : PRINT "1 Thrust"
PRINT "2 Slash"
PRINT "3 Extremely fancy move"
INPUT "", set$
SELECT CASE set$
CASE "1"
GOTO thrust
CASE "2"
GOTO slash
CASE "3"
GOTO special
END SELECT
GOTO bat

thrust:
CLS
IF choose$ = "Hook" THEN PRINT "You thrust at Rufio"
INPUT "", a$
GOSUB bdgy
PRINT "You thrust at Hook"
INPUT "", a$
GOSUB bdgy

slash:
CLS
IF choose$ = "Hook" THEN PRINT "You slash at Rufio"
INPUT "", a$
GOSUB bdgy
PRINT "You slash at Hook"
INPUT "", a$
GOSUB bdgy

special:
CLS
COLOR 4
PRINT "Which special move do you want?"
PRINT : PRINT "1 Spin and slash"
PRINT : PRINT "2 Flip, spin and hack"
INPUT "", a$
SELECT CASE a$
CASE "1"
IF smovea = 0 THEN
GOSUB cant
END IF
GOTO sns
CASE "2"
IF smoveb = 0 THEN
GOSUB cant
END IF
GOTO fth
END SELECT
GOTO bat

cant:
COLOR 6
PRINT "You can't use that special move anymore."
PRINT : a$ = "": INPUT "Press Enter", a$
GOTO bat

fth:
smoveb = smoveb - 1
CLS
COLOR 7
PRINT "You flip over your opponent and hack at him."
RANDOMIZE TIMER
a% = INT(RND * 5) + 0
badguy = badguy - a%
INPUT "", a$
GOTO guy

sns:
smovea = smovea - 1
CLS
COLOR 7
PRINT "You spin around your opponent and slash at him."
RANDOMIZE TIMER
a% = INT(RND * 5) + 0
badguy = badguy - a%
INPUT "", a$
GOTO guy

spec:
CLS
COLOR 4
PRINT "Which special move do you want?"
PRINT : PRINT "1 Throw"
PRINT : PRINT "2 Twirl and stab"
INPUT "", a$
SELECT CASE a$
CASE "1"
IF smovec = 0 THEN
GOSUB cant
END IF
GOTO throw
CASE "2"
IF smoved = 0 THEN
GOSUB cant
END IF
GOTO TAS
END SELECT
GOTO spec

throw:
smovec = smovec - 1
CLS
PRINT "You throw your knife at your opponent"
RANDOMIZE TIMER
a% = INT(RND * 4) + 0
badguy = badguy - a%
INPUT "", a$
GOTO guy

TAS:
smoved = smoved - 1
CLS
PRINT "You twirl around your opponent and stab at him"
RANDOMIZE TIMER
a% = INT(RND * 4) + 0
badguy = badguy - a%
INPUT "", a$
GOTO guy

attack:
CLS
RANDOMIZE TIMER
a% = INT(RND * 2) + 0
badguy = badguy - a%
INPUT "", a$
GOTO guy

bdgy:
CLS
RANDOMIZE TIMER
a% = INT(RND * 3) + 0
badguy = badguy - a%
GOTO guy

guy:
CLS
RANDOMIZE TIMER
t% = INT(RND * 3) + 1
IF t% = 1 THEN badguy$ = "slash"
IF t% = 2 THEN badguy$ = "thrust"
IF t% = 3 THEN badguy$ = "special move"
CLS
COLOR 9
PRINT "Your hit has reduced your opponent to": PRINT badguy: PRINT "hit points"
IF badguy = 0 THEN
INPUT "", a$
GOTO win
END IF
IF choose$ = "Hook" THEN PRINT "Rufio responds with a": PRINT badguy$
IF choose$ = "Rufio" THEN PRINT "Hook responds with a": PRINT badguy$
INPUT "", a$
GOTO what

what:
CLS
COLOR 4
PRINT "Do you want to deflect (1) or try to dodge(2)?"
INPUT "", a$
SELECT CASE a$
CASE "1"
IF badguy$ = "special move" THEN
GOTO bgsmd
END IF
GOTO bghitsd
CASE "2"
IF badguy$ = "special move" THEN
GOTO bgsmg
END IF
GOTO bghitsg
END SELECT
GOTO what

win:
CLS
COLOR 3
IF choose$ = "Hook" THEN
PRINT "HOOK! NOOOOOO!"
PRINT : PRINT "You killed Rufio! Happy now?"
INPUT "", a$
GOTO flib
END IF
PRINT "You have killed Hook. Guess Peter won't have to do it."
INPUT "", a$
END

flib:
CLS
END

bghitsg:
CLS
RANDOMIZE TIMER
h% = INT(RND * 4) + 0
health = health - h%
GOTO florb

bgsmg:
CLS
RANDOMIZE TIMER
h% = INT(RND * 5) + 0
health = health - h%
GOTO florb

bgsmd:
CLS
RANDOMIZE TIMER
h% = INT(RND * 3) + 1
health = health - h%
GOTO florb

bghitsd:
CLS
RANDOMIZE TIMER
h% = INT(RND * 2) + 1
health = health - h%
GOTO florb

florb:
IF health = 0 THEN
GOTO lose
END IF
IF health = -1 THEN
GOTO lose
END IF
IF health = -2 THEN
GOTO lose
END IF
IF health = -3 THEN
GOTO lose
END IF
IF health = -4 THEN
GOTO lose
END IF
IF health = -5 THEN
GOTO lose
END IF
GOTO ph
END

ph:
CLS
COLOR 9
PRINT "Your opponent's hit has reduced you to": PRINT health: PRINT "hit points"
INPUT "", a$
GOTO bat

lose:
CLS
COLOR 1
PRINT "You have been killed by your enemy"
PRINT "So sad!"
PRINT : PRINT "                        THE END"
INPUT "", a$
END

