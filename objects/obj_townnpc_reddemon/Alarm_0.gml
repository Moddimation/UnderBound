myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* We all know the underground&  has problems^1, but we&  smile anyway./";
global.msg[1]= "* Why?/";
global.msg[2]= "* We can\\'t do anything^1, so&  why be morose about it?/%%";
if(talkedto > 0) global.msg[0]= "* Smile smile./%%";
if(room == 44) {
    global.typer= 27;
    global.msg[0]= "* PATHETIC HUMAN./";
    global.msg[1]= "\\\\W* I AM METTATON^2, BIG TIME&  \\\\RSEXY ROBOT\\\\W LOVER./%%";
}
if(global.plot >= 122) {
    global.msg[0]= "* Maybe I\\'ll try frowning&  for once./";
    global.msg[1]= "* ... no^1.&* I just can\\'t do it./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Oh^1?&* We\\'re free?/";
    global.msg[1]= "* Finally..^1.&* I\\'ll be able to stop&  smiling./%%";
}
if(global.flag[67] == 1) {
    global.msg[0]= "* Just now^1, I felt my smile&  falter for a moment./";
    global.msg[1]= "* What\\'s wrong?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
