'                                Fade In
'                                   By
'                               Toby Toland
'                               Version 1.00
'                                  1996

SCREEN 0
WIDTH 80
WIDTH 40
CLS
C1 = 14'..............Color of fade in word
D = 1'................How many spaces down to put the fade in word
O = 1'................How many spaces over to put the fade in word
P = 0'.................Variable for counting in the Pause routine
PL = 0'................Pause lingth



INPUT "Please enter your name: ", A$
CLS
FadeInWord$ = A$: C1 = 14: D = 9: O = 20: GOSUB FadeIn
FadeInWord$ = "is": C1 = 9: D = 10: O = 20: GOSUB FadeIn
FadeInWord$ = "a": C1 = 10: D = 11: O = 20: GOSUB FadeIn
FadeInWord$ = "cool": C1 = 4: D = 12: O = 20: GOSUB FadeIn
FadeInWord$ = "name": C1 = 15: D = 13: O = 20: GOSUB FadeIn
FadeInWord$ = "Yo, Eric": C1 = 5: D = 14: O = 19: GOSUB FadeIn
END

FadeIn:
PL = 1500
COLOR 8: LOCATE D, O
PRINT FadeInWord$: GOSUB Pause
COLOR 7: LOCATE D, O
PRINT FadeInWord$: GOSUB Pause
COLOR C1: LOCATE D, O
PRINT FadeInWord$: GOSUB Pause
RETURN

Pause:
DO
P = P + 1
LOOP UNTIL P = PL
P = 0
RETURN

