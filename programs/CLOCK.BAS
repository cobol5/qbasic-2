WIDTH 40: COLOR 14
T$ = ""
SetTime$ = "None"

DO
CLS
T$ = TIME$
PRINT T$
IF T$ = SetTime$ THEN GOTO Alarm
DO: LOOP WHILE TIME$ = T$
LOOP

Alarm:
BEEP
GOTO Alarm

