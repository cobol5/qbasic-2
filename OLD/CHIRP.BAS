3000 ' ------------------------------------------------------------------
3010 ' -- Subroutine: PARAKEET  (stepped loop technique)
3020 ' -- Requires: (nothing)         Returns: (nothing)
3030 FOR K = 1 TO 2                     ' -- Chirp twice
3040   FOR J = 1 TO 2
3050     FOR I = 2600 TO 2200 STEP -50
3060       SOUND I, .15
3070     NEXT 'I
3080   NEXT 'J
3090   DELAYLENGTH = 300  :  GOSUB 3190 ' -- Separate chirps with delay
3100 NEXT 'K
3110 DELAYLENGTH = 400  :  GOSUB 3190   ' -- Separate chirps from warble
3120 FOR J = 1 TO 4                     ' -- Warble 4 times
3130   FOR I = 2200 TO 2900 STEP 50
3140     SOUND I, .1
3150  NEXT 'I
3160 NEXT 'J
3170 RETURN
3190 ' ------------------------------------------------------------------
3200 ' -- Subroutine: LOOP DELAY
3210 ' -- Requires: (nothing)         Returns: (nothing)
3220 FOR DELAY = 1 TO DELAYLENGTH
3230 NEXT 'DELAY
3240 RETURN
