SCREEN 0
WIDTH 40

'.................................Varieble Definitions For Demo...............
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

CLS
FadeInWord$ = "You": C2 = 15: D2 = 9: O2 = 20: GOSUB FadeIn
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
PL = 5000: GOSUB Pause
CLS
FadeInWord$ = "Written by": C2 = 15: D2 = 2: O2 = 1: GOSUB FadeIn
FadeInWord$ = "Toby Toland": C2 = 4: D2 = 3: O2 = 2: GOSUB FadeIn
FadeInWord$ = "and": C2 = 15: D2 = 4: O2 = 3: GOSUB FadeIn
FadeInWord$ = "Chad Loftis": C2 = 9: D2 = 5: O2 = 4: GOSUB FadeIn
PL = 5000: GOSUB Pause
CLS
FadeInWord$ = "Programed By": C2 = 15: D2 = 6: O2 = 5: GOSUB FadeIn
FadeInWord$ = "Chad Loftis": C2 = 9: D2 = 7: O2 = 6: GOSUB FadeIn
FadeInWord$ = "and": C2 = 15: D2 = 8: O2 = 7: GOSUB FadeIn
FadeInWord$ = "Toby Toland": C2 = 4: D2 = 9: O2 = 8: GOSUB FadeIn
PL = 5000: GOSUB Pause
CLS
FadeInWord$ = "Featuring": C2 = 15: D2 = 10: O2 = 9: GOSUB FadeIn
FadeInWord$ = "Justin Toland": C2 = 9: D2 = 11: O2 = 10: GOSUB FadeIn
FadeInWord$ = "Anna Gebert": C2 = 4: D2 = 12: O2 = 11: GOSUB FadeIn
FadeInWord$ = "Lori Toland": C2 = 14: D2 = 13: O2 = 12: GOSUB FadeIn
FadeInWord$ = "Todd Loftis": C2 = 9: D2 = 14: O2 = 13: GOSUB FadeIn
FadeInWord$ = "Toby Toland": C2 = 4: D2 = 15: O2 = 14: GOSUB FadeIn
FadeInWord$ = "Chad Loftis": C2 = 14: D2 = 16: O2 = 15: GOSUB FadeIn
PL = 5000: GOSUB Pause
CLS
FadeInWord$ = "Critiqued by": C2 = 15: D2 = 17: O2 = 16: GOSUB FadeIn
FadeInWord$ = "Todd Loftis": C2 = 9: D2 = 18: O2 = 17: GOSUB FadeIn
FadeInWord$ = "and": C2 = 15: D2 = 19: O2 = 18: GOSUB FadeIn
FadeInWord$ = "Lori Toland": C2 = 14: D2 = 20: O2 = 19: GOSUB FadeIn
PL = 5000: GOSUB Pause
CLS
FadeInWord$ = "The End": C2 = 15: D2 = 10: O2 = 18: GOSUB FadeIn
PL = 10000: GOSUB Pause
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
PL = 5000: GOSUB Pause
RETURN
END


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

