myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "%%";
if(room == 36)
    global.msg[0]= "* (A box of kids\\' shoes in&  a disparity of sizes.)/%%";
if(room == 224) {
    global.msg[0]= "* (It\\'s a drawing of a&  golden flower.)/%%";
    if(scr_murderlv() >= 16) global.msg[0]= "\\\\R* My drawing./%%";
}
if(room == 35) {
    global.msg[0]= "* (Definitely bigger than&  a twin-sized bed.)/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* (Earlier^1, you identified&  this as bigger than a&  twin-sized bed.)/";
        global.msg[1]= "* (But now^1, you realize&  it\\'s actually one size&  bigger than a double.)/%%";
    }
}
if(room == 221) global.msg[0]= "* The coals are still warm./%%";
if(room == 223)
    global.msg[0]= "* (Macaroni art of a flower.^1)&* (\\'For King Dad!\\')/%%";
if(room == 34)
    global.msg[0]= "* Inside the drawer are&  flower seeds and some&  broken crayons./%%";
if(room == 37)
    global.msg[0]= "* There is some white fur&  stuck in the drain./%%";
if(room == 225)
    global.msg[0]= "* (There is some white fur&  stuck in the drain.)/%%";
if(room == 74) {
    global.msg[0]= "* Because they are made of&  magic^1, monsters\\' bodies are&  attuned to their SOUL./";
    global.msg[1]= "* If a monster doesn\\'t want&  to fight^1, its defenses will&  weaken./";
    global.msg[2]= "* And the crueller the intentions&  of our enemies^1, the more&  their attacks will hurt us./";
    global.msg[3]= "* Therefore^1, if a being with&  a powerful SOUL struck with&  the desire to kill.../";
    global.msg[4]= "* Um^1, let\\'s end the chapter&  here.../%%";
}
if(room == 45)
    global.msg[0]= "* ...!^1?&* There\\'s a camera behind the&  sentry station./%%";
if(room == 48)
    global.msg[0]= "* ...!^1?&* There is a camera behind the..^1.&  " + chr(ord("\"")) + "sentry station." + chr(ord("\"")) + "/%%";
if(room == 53)
    global.msg[0]= "* ...!^1?&* There\\'s a camera hidden inside&  this lump of snow./%%";
if(room == 57)
    global.msg[0]= "* ...!^1?&* There\\'s a camera hidden inside&  this tree./%%";
if(room == 59)
    global.msg[0]= "* ...!^1?&* There\\'s a camera hidden inside&  this tree./%%";
if(room == 61)
    global.msg[0]= "* ...!^1?&* There\\'s a camera behind the&  sentry station./%%";
if(room == 67)
    global.msg[0]= "* ...!^1?&* There\\'s a camera underneath&  the bridge./%%";
if(room == 68)
    global.msg[0]= "* ...!^1?&* There\\'s a camera hidden in&  the trees here./%%";
if(room == 87)
    global.msg[0]= "* When four Bridge Seeds align&  in the water^1, they will&  sprout./%%";
if(room == 88)
    global.msg[0]= "* If an error is made, the Bell&  Blossom can call Bridge Seeds&  back to where they started./%%";
if(room == 90) global.msg[0]= "* WISHING ROOM/%%";
if(room == 91) {
    global.msg[0]= "* But humans have one weakness.&* Ironically, it is the strength&  of their SOUL./";
    global.msg[1]= "* Its power allows it to persist&  outside the human body, even&  after death./%%";
}
if(room == 101) {
    global.msg[0]= "* There is only one exception./";
    global.msg[1]= "* The SOUL of a special species&  of monster called a&  " + chr(ord("\"")) + "Boss Monster." + chr(ord("\"")) + "/";
    global.msg[2]= "* A Boss Monster\\'s SOUL is&  strong enough to persist&  after death.../";
    global.msg[3]= "* If only for a few moments./";
    global.msg[4]= "* A human could absorb this&  SOUL.&* But this has never happened./";
    global.msg[5]= "* And now it never will./%%";
}
if(room == 126) {
    global.msg[0]= "* But this cursed place has&  no entrances or exits./";
    global.msg[1]= "* There is no way a human&  could come here./";
    global.msg[2]= "* We will remain trapped&  down here forever./%%";
}
if(room == 76) {
    if(instance_exists(obj_papyrusparent )) {
        scr_papface(0, 0);
        global.msg[1]= "A CLASSIC IMAGE./";
        global.msg[2]= "IT ALWAYS REMINDS&ME OF WHAT\\'S&IMPORTANT IN LIFE./%%";
    } else  global.msg[0]= "* (It\\'s a painting of a&  cartoon bone.)/%%";
}
if(room == 117) global.msg[0]= "* (Seems like a nice tree.)/%%";
if(room == 77) global.msc= 561;
if(room == 123)
    global.msg[0]= "* (Whenever the girl moves her&  net^1, this bug scurries straight&  into it.)/%%";
if(room == 141) {
    global.msg[0]= "* (Seems like the notes to&  something^1, but it\\'s all&  written in chicken scratch.)/";
    global.msg[1]= "* (It seems like a walkthrough&  to a game^1, or...?)/%%";
    if(global.plot < 126 && scr_murderlv() < 12)
        global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
}
if(room == 142) {
    global.msg[0]= "* (VHSes and DVDs of various&  cartoons.)/";
    global.msg[1]= "* (They are all labelled " + chr(ord("\"")) + "Human&  History." + chr(ord("\"")) + ")/%%";
}
if(room == 154) {
    global.msg[0]= "* (It\\'s a specifically-regular&  -sized sink.)/%%";
    if(global.plot < 134)
        global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
    if(instance_exists(obj_mettaton_npc )) {
        global.typer= 27;
        global.msg[0]= "* THIS ISN\\'T A SHOW ABOUT&  WASHING YOUR HANDS, DARLING./";
        global.msg[1]= "* THAT\\'S ON WEDNESDAYS!/%%";
        if(global.plot == 134) {
            global.msg[0]= "* THIS ISN\\'T A SHOW ABOUT&  WASHING YOUR HANDS, DARLING./";
            global.msg[1]= "* THAT\\'S ON WEDNESDAYS!/%%";
        }
    }
}
if(room == 118) {
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 0;
    global.msc= 0;
    global.msg[0]= "* One time^1, Alphys\\'s..^1.&* Uh^1, friend??^1?&* Came over here./";
    global.msg[1]= "\\\\E4* All he did was&  lie seductively&  on the piano.../";
    global.msg[2]= "\\\\E5* And fed himself&  grapes./";
    global.msg[3]= "\\\\E4* I don\\'t really&  like that guy./";
    global.msg[4]= "\\\\E3* But I admire&  his lifestyle./%%";
    if(talkedto > 0)
        global.msg[0]= "* What^1?&* I\\'m not gonna&  serenade you./%%";
}
if(room == 245) {
    global.msg[0]= "* ENTRY NUMBER 3/";
    global.msg[1]= "* But extracting a SOUL from&  a living monster would&  require incredible power.../";
    global.msg[2]= "* Besides being impractical^1,&  doing so would instantly&  destroy the SOUL\\'s host./";
    global.msg[3]= "* And^1, unlike the persistent&  SOULs of humans.../";
    global.msg[4]= "* The SOULs of most monsters&  disappear immediately upon&  death./";
    global.msg[5]= "* If only I could make a&  monster\\'s SOUL last.../%%";
    if(global.flag[485] == 1)
        global.msg[0]= "* (It seems to be turned off.)/%%";
}
if(room == 257)
    global.msg[0]= "* (There are a bunch of VHSes.^1)&* (Seems like it\\'s mostly&  cartoons of some kind.)/%%";
if(room == 258) {
    global.msg[0]= "* ENTRY NUMBER 21/";
    global.msg[1]= "* i spend all my time at&  the garbage dump now/";
    global.msg[2]= "* it\\'s my element/%%";
    if(global.flag[485] == 1)
        global.msg[0]= "* (It seems to be turned off.)/%%";
    if(global.flag[490] == 0)
        global.msg[0]= "* (It\\'s too dark to see near&  the walls.)/%%";
}
if(room == 246) global.msc= 829;
if(room == 78)
    global.msg[0]= "* (It\\'s a thank-you letter.^1)&* (It\\'s addressed to Santa.)/%%";
if(room == 80) {
    global.msg[0]= "* (Blueprints.^1)&* (You can\\'t read the symbols&  they\\'re written in...)/";
    global.msg[1]= "* (... or maybe it\\'s just the&  handwriting.)/";
    global.msg[2]= "* (Looks like they relate to&  some kind of strange machine.)/%%";
}
if(room == 120) {
    if(instance_exists(obj_napstablook_actor )) {
        global.msg[0]= "* oh..^1. that\\'s my tv.../";
        global.msg[1]= "* there\\'s a show i like to&  watch on it..^1.&* sometimes.../%%";
    } else  {
        global.msg[0]= "* (It\\'s a spooky old TV.^1)&* (Most of the buttons are&  worn away...)/";
        global.msg[1]= "* (Though the channel changing&  buttons look good as new.)/%%";
    }
}
if(room == 266)
    global.msg[0]= "* (Rope.^1)&* (Looks like this dog does&  all its own stunts.)/%%";
if(room == 184)
    global.msg[0]= "* (It\\'s some kind of TV show&  featuring Mettaton.)/%%";
if(room == 128)
    global.msg[0]= "* (Statue of tem..^1. very famus^1)&* (VERY!!!!!!!!!)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
