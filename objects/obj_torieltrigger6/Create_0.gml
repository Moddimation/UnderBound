image_xscale= 50;
conversation= 0;
if(global.plot > 17) instance_destroy();
else  {
    global.typer= 4;
    global.interact= 1;
    global.facechoice= 1;
    global.faceemotion= 0;
    global.msc= 0;
    alarm[0]= 1;
    global.msg[0]= "* Do you smell that^1?/";
    global.msg[1]= "* Surprise!/";
    global.msg[2]= "* It is a butterscotch-&  cinnamon pie./";
    global.msg[3]= "* I thought we might&  celebrate your&  arrival./";
    global.msg[4]= "* I want you to have&  a nice time living&  here./";
    global.msg[5]= "* So I will hold off&  on snail pie for&  tonight./";
    global.msg[6]= "* Here^1, I have another&  surprise for you./%%";
    if(global.flag[6] == 1) {
        global.msg[0]= "* Do you smell that^1?/";
        global.msg[1]= "\\\\E1* Er^1, I assume that&  expression means you&  do./";
        global.msg[2]= "\\\\E0* S..^1. surprise!/";
        global.msg[3]= "* I have baked a snail&  pie./";
        global.msg[4]= "* I thought we might&  celebrate your&  arrival./";
        global.msg[5]= "* I want you to have&  a nice time living&  here./";
        global.msg[6]= "\\\\E1* So I.../";
        global.msg[7]= "\\\\E0* Here^1, I have another&  surprise for you./%%";
    }
    instance_create(0, 0, obj_dialoguer );
    conversation= 1;
}
volume= 1;
fademusicout= 0;

/* */
/*  */
