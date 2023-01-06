caster_free(-3);
global.currentsong= caster_load("music/snowy.ogg");
myinteract= 3;
global.msc= 0;
global.typer= 17;
global.facechoice= 3;
global.faceemotion= 0;
global.interact= 1;
global.msg[0]= "* actually^1, hey..^1.&* hate to bother ya^1, but&  can you do me a favor?/";
global.msg[1]= "* i was thinking..^1.&* my brother\\'s been&  kind of down lately.../";
global.msg[2]= "* he\\'s never seen a human&  before^1. and seeing you&  might just make his day./";
global.msg[3]= "* don\\'t worry^1, he\\'s not&  dangerous./";
global.msg[4]= "\\\\E1* even if he tries to be./";
global.msg[5]= "\\\\E0* thanks a million^1.&* i\\'ll be up ahead./%%";
if(scr_murderlv() >= 2) {
    global.msg[0]= "\\\\E0* well^1, i\\'ll be straight-&  forward with you./";
    global.msg[1]= "\\\\E1* my brother\\'d really&  like to see a human.../";
    global.msg[2]= "\\\\E2* so^1, y\\'know^1, it\\'d&  really help me out.../";
    global.msg[3]= "\\\\E1* if you kept pretending&  to be one./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
conversation= 2;

/* */
/*  */
