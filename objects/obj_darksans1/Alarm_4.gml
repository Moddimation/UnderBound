global.faceemotion= 0;
global.facechoice= 3;
global.typer= 17;
obj_mainchara.visible= 1;
sprite_index= spr_sans_r ;
image_index= 0;
obj_mainchara.facing= 3;
global.facing= 3;
caster_loop(global.currentsong, 1, 1);
global.msg[0]= "* heheh... the old whoopee&  cushion in the hand&  trick./";
global.msg[1]= "* it\\'s ALWAYS funny./";
global.msg[2]= "* anyways^1,&  you\\'re a human, right?/";
global.msg[3]= "\\\\E1* that\\'s hilarious./";
if(M1 > 0) {
    global.msg[0]= "* heh^1, the old whoopee&  cushion in the hand&  trick.../";
    global.msg[1]= "\\\\E1* wait a sec..^1.&* have you heard it before&  or something?/";
    global.msg[2]= "\\\\E1* you turned around before&  i said to..^1.&* ... weird./";
    global.msg[3]= "* ... whatever^1.&* you\\'re a human^1, right?/";
}
global.msg[4]= "\\\\E0* i\\'m sans^1.&* sans the skeleton./";
global.msg[5]= "* im actually supposed to&  be on watch for&  humans right now./";
global.msg[6]= "* but..^1. y\\'know.../";
global.msg[7]= "\\\\E1* i dont really care about&  capturing anybody./";
global.msg[8]= "\\\\E0* now my brother^1,&  papyrus.../";
global.msg[9]= "* he\\'s a human-hunting&  FANATIC./";
global.msg[10]= "\\\\E1* hey^1, actually^1, I think&  that\\'s him over there./";
global.msg[11]= "\\\\E0* i have an idea^1.&* go through this gate&  thingy./";
global.msg[12]= "* yeah, go right through^1.&* my bro made the bars&  too wide to stop anyone./%%";
if(scr_murderlv() >= 2) {
    global.msg[0]= "* heheh... the old whoopee&  cushion in the hand&  trick./";
    global.msg[1]= "* it\\'s ALWAYS funny./";
    global.msg[2]= "* .../";
    global.msg[3]= "\\\\E1* that\\'s^1, uh^1.&* your cue to laugh./";
    global.msg[4]= "\\\\E2* or^1, uh^1, to emote&  at all...?/";
    global.msg[5]= "\\\\E0* .../";
    global.msg[6]= "\\\\E1* (gee^1, lady^1, you really&  know how to pick&  \\'em, huh...?)/";
    global.msg[7]= "\\\\E2* OK^1, that\\'s fine^1.&* everyone\\'s got their&  own sense of humor./";
    global.msg[8]= "\\\\E0* i\\'m sans^1.&* sans the skeleton./";
    global.msg[9]= "* im actually supposed to&  be on watch for&  humans right now./";
    global.msg[10]= "* but..^1. y\\'know.../";
    global.msg[11]= "\\\\E1* i dont really care about&  capturing anybody./";
    global.msg[12]= "\\\\E0* now my brother^1,&  papyrus.../";
    global.msg[13]= "* he\\'s a human-hunting&  FANATIC./";
    global.msg[14]= "\\\\E1* hey^1, actually^1, I think&  that\\'s him over there./";
    global.msg[15]= "\\\\E0* i have an idea^1.&* go through this gate&  thingy./";
    global.msg[16]= "* yeah, go right through^1.&* my bro made the bars&  too wide to stop anyone./%%";
}
instance_create(0, 0, obj_dialoguer );
conversation= 6;


/*  */
