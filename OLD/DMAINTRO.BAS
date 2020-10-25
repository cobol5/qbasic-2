'..........................Dumb Mall Adventure Intro............

SCREEN 0
CLS : WIDTH 40
D1 = 1'..............How may charachters down the dumb goes
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
GOTO TobyChad

TobyChad:
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
FadeInWord$ = "Writen": C2 = 14: D2 = 5: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Desiened": C2 = 14: D2 = 6: O2 = 15: GOSUB FadeIn
FadeInWord$ = "&": D2 = 7: C2 = 14: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Programed": C2 = 14: D2 = 8: O2 = 15: GOSUB FadeIn
FadeInWord$ = "By": D2 = 9: C2 = 14: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Chad Lofttis": C2 = 14: D2 = 10: O2 = 15: GOSUB FadeIn
FadeInWord$ = "&": C2 = 14: D2 = 11: O2 = 15: GOSUB FadeIn
FadeInWord$ = "Toby Toland": C2 = 14: D2 = 12: O2 = 15: GOSUB FadeIn
PL = 5000: GOSUB Pause

DumbControl:
DO
D1 = D1 + 1
GOSUB Dumb
LOOP UNTIL D1 = 12
IF Bounce = 12 THEN GOTO ChadToby
DO
D1 = D1 - 1
GOSUB Dumb
LOOP UNTIL D1 = Bounce
Bounce = Bounce + 1
GOTO DumbControl

ChadToby:
FadeInWord$ = "THE": C2 = 4: D2 = 10: O2 = 19: GOSUB FadeIn
FadeInWord$ = "MALL ADVENTURE": C2 = 9: D2 = 19: O2 = 14: GOSUB FadeIn
END

Dumb:
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
LOOP UNTIL P = PL
P = 0
RETURN




