SCREEN 0
GOSUB StartVars
GOTO Intro

StartVars:
C1 = 3
C2 = 3
NLight$ = "On"
Trok$ = "Your Room"
Bat$ = "Have Not"
Program$ = "Not Written"
RETURN


GameOver:
COLOR C2: CLS : PRINT
PRINT "Wanna give it another shot (Y/N)?"
A$ = INPUT$(1)
IF UCASE$(A$) = "N" THEN END
GOSUB StartVars
GOTO Escape

Intro:
COLOR C1: CLS : PRINT
'...............................................
PRINT "  It's a cool summer night and your fami";
PRINT "ly is holding a party. Your parents,"
PRINT "knowing that you would be board let you ";
PRINT "invite your two friends Ryan and Eric"
PRINT "over to spend the night. Because trafic ";
PRINT "is bad tonight, and your friends live on"
PRINT "the other side of town neither of them";
PRINT " have arived yet."
PRINT "  To pass the time away you go up stairs";
PRINT " and turn on your computer, load up"
PRINT "qbasic and start writing a dumb little p";
PRINT "rogram that prints your name all over"
PRINT "the screen."
PRINT "  As you sit in your room programing on ";
PRINT "your computer you think of all the"
PRINT "places you've been and the many people y";
PRINT "ou've met in the last fifteen, almost"
PRINT "sixteen short years of your life. As the";
PRINT "se warm thoughts flow through your mind "
PRINT "you realize how much life and joy you ha";
PRINT "ve coming in the years ahead, and in"
PRINT "this beutiful moment of emotion you feel";
PRINT " a tear roll down your face."
PRINT "  Then suddenly you here lowd machine-gu";
PRINT "nfire from downstairs, and the voices of"
PRINT "people screaming! Then silence..."
PRINT "  You quickly run over to the door and p";
PRINT "ress your ear against it's wooden"
PRINT "surface. Listening intensly you can here";
PRINT " rough voices shouting orders."
PRINT "  "; CHR$(34); "Yo Trok, go check up stairs. If you f";
PRINT "ind any one just shoot em, we got enough"
PRINT "hostages."; CHR$(34)
PRINT "To your horror you here someone walking ";
PRINT "up the stairs twoard your room!"
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)

Escape:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  Pressed against your door, you can her";
PRINT "e clearly the sound of someone ascending"
PRINT "your stairs! Soon a ruthless killer will";
PRINT " be in your room! You must think fast."
COLOR C2: PRINT
PRINT "1 hide under bed"
PRINT "2 hide in closet"
PRINT "3 hide under desk"
PRINT "4 climb out window"
PRINT "5 grab your baseball bat and prepare to defend yourself"
PRINT "6 walk out and try to negotiate with ruthless killer"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
GOTO UnderBed
CASE "2"
GOTO Closet
CASE "3"
GOTO UnderDesk
CASE "4"
GOTO ToRoof
CASE "5"
GOTO Defend
CASE "6"
GOTO PeaceMan
END SELECT
'...............................................
COLOR C1: CLS : PRINT
PRINT "  Whatever you just tried to do, it was ";
PRINT "not one of the available options. The"
PRINT "ruthless killer kicks open your door and";
PRINT " blows you away. Sorry man."
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)
GOTO GameOver

UnderBed:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  You crawl under your bed, and lay froz";
PRINT "en waiting for something to happen. The"
PRINT "door creeks open. From under the bed you";
PRINT "can see black boots. They walk over to"
PRINT "the closet. You can here the sound of ha";
PRINT "ands searching through it, and you"
PRINT "breathe sigh of realief remembering how ";
PRINT "close you came to hiding in the closet"
PRINT "  Just then you inhale some dust from un";
PRINT "der the bed! Before you can hold it you"
PRINT " sneeze lowdly, reavealing your hiding p";
PRINT "lace and ending in your termination!"
PRINT "You'r dead meat under the bed dude."
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)
GOTO GameOver



Closet:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  You quickly slide open your closet doo";
PRINT "r jump inside and slide it close just as"
PRINT "you here the door knob raddle, click and";
PRINT " the sound of the door to your room"
PRINT "swining open. "
PRINT "  The footsteps come closer as swet runs";
PRINT " down your face. The closet door sligtly"
PRINT "squeeks as it slides open! You duck behi";
PRINT "nd the hanging clothes, and hide deep"
PRINT "within the dark part of the closet!"
PRINT "  It's no use! A hand reaches in and gra";
PRINT "you! Soon you feel the cold sensation of"
PRINT "a metal gunbarrel pressed against your h";
PRINT "ead! The End!"
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)
GOTO GameOver


UnderDesk:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  You squeez yourself under your desk, a";
PRINT "nd wait. The routhless killer enters the"
PRINT "room. You can hear him checking the clos";
PRINT "et. You here him kick your bed. Then You"
PRINT "can here him leaving and you breath a si";
PRINT "gh of rleiefe."
PRINT "  Then he comes back in, tips over the d";
PRINT "esk and shoots you. You here a mean"
PRINT "laugh as your vision fades to black."
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)
GOTO GameOver


ToRoof:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  You quickly slide open your window and";
PRINT " jump out onto your roof. You slide the"
PRINT "window closed again and duck out of view";
PRINT " just as you see, throgh the window,"
PRINT "your bedroom door swing open."
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)
GOTO Roof

Defend:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  Taking your alumanin bat in your hand ";
PRINT "you prepare to wack anyone who enters"
PRINT "the room."
PRINT "  As the door swings open, you stand rea";
PRINT "dy, bat in hand. But before you can hit"
PRINT "any thing the routhless killer senses yo";
PRINT "ur precensce and shoots through the"
PRINT "door! You die holding your bat tightly i";
PRINT "n your hand."
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)
GOTO GameOver


PeaceMan:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  You gather your courage and quickly pr";
PRINT "epair a diplomatic speech. Then you step"
PRINT "out into the hall and get promtly shot i";
PRINT "n the head. It's a cruel world."
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)
GOTO GameOver

Roof:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  You are standing on your roof, next to";
PRINT " your window were you can't see in but"
PRINT "can't be seen from inside either. Not fa";
PRINT "r off is the window to your parents"
PRINT "room. From up here you can see into your";
PRINT " back yard and into your neighbors yard"
PRINT "also."
IF NLight$ = "On" THEN
PRINT "  You notice a light on in your neibors ";
PRINT "house. Perhaps they heard the machine"
PRINT "guns and called the police. Maybe they c";
PRINT "an help you."
END IF
IF Trok$ = "Your Room" THEN
PRINT "  You can here someone in your room."
END IF
COLOR C2: PRINT
PRINT "1 climb through window into your room"
PRINT "2 go to parents window"
PRINT "3 jump off roof"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
IF Trok$ = "Your Room" THEN GOTO BadMove
GOTO YourRoom
CASE "2"
GOTO PWindow
CASE "3"
GOTO Jump
END SELECT
GOTO Roof

BadMove:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  Opening your window you hop back into ";
PRINT "your room. Bad move man. Youn now have a"
PRINT "bullet permanitly inbeded in your brain."
COLOR C2: PRINT : PRINT "                                <PRESS ANY KEY>"
A$ = INPUT$(1)
GOTO GameOver

YourRoom:
'...............................................
COLOR C1: CLS : PRINT
PRINT "  This is your room, and at the moment i";
PRINT "t seems pretty safe. It's a medium size"
PRINT "room with a closet and small bed. On the";
PRINT " wall you have a few posters but nothing"
PRINT "special. In the corner on your desk sets";
PRINT " your computer still on from when you"
PRINT "were using it before."
IF Bat$ = "Have Not" THEN
PRINT "  You notice your baseball bat leaning a";
PRINT "gainst the wall."
END IF
COLOR C2: PRINT
PRINT "1 climb out window"
PRINT "2 exit room to hall"
PRINT "3 search closet"
PRINT "4 use computer"
IF Bat$ = "Have Not" THEN
PRINT "5 get baseball bat"
END IF
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
CASE "2"
CASE "3"
CASE "4"
CASE "5"
END SELECT
GOTO YourRoom

PWindow:
'...............................................
COLOR C1: CLS : PRINT
IF Trok$ = "Your Room" THEN Trok$ = "Gone"
PRINT "  Your at your parent's window. Piring t";
PRINT "hrough into their room you can't see"
PRINT "much. Close by you can see your window, ";
PRINT "and the light still coming from your"
PRINT "room."
PRINT " A drain pipe falls off the roof from he";
PRINT "re and it looks sturdy enough to hold"
PRINT "your weight."
IF PWindow$ = "Smashed" THEN
PRINT "  Oh yhea, you also notice your parents ";
PRINT "window is smashed out."
END IF
COLOR C2: PRINT
PRINT "1 Open parents window"
PRINT "2 Go back to your window"
PRINT "3 Climb down drain pipe"
IF Bat$ = "Have" THEN
PRINT "4 Use bat on window"
END IF
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
CASE "2"
GOTO Roof
CASE "3"
CASE "4"
END SELECT


Jump:
'...............................................
COLOR C1: CLS : PRINT








