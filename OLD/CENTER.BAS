5 SCREEN 12
A$ = "Toby"
D = 15
GOSUB Center
A$ = "Hi"
D = 16
GOSUB Center
A$ = "this is a test to see if my program will center this stuff"
D = 17
GOSUB Center
A$ = "Yo YO YO YO"
D = 18
GOSUB Center
A$ = "last test thing 1231231231 testing"
D = 19
GOSUB Center
END


Center:
LOCATE D, 40 - LEN(A$) \ 2: PRINT A$
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

