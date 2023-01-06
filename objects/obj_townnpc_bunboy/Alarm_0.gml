myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* That lady over there.../";
global.msg[1]= "* Something about her disturbs&  me./%%";
if(talkedto > 0)
    global.msg[0]= "* I think I\\'ve figured it out^1.&* ... no^1, nevermind./%%";
if(global.plot >= 122) {
    global.msg[0]= "* That lady over there\\'s&  been going for a walk&  for a while now./";
    global.msg[1]= "* ... but she hasn\\'t moved&  an inch from where she\\'s&  standing./";
    global.msg[2]= "* W-well^1, I haven\\'t either^1,&  but I don\\'t want her to&  notice me over here.../%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Uhhh.../";
    global.msg[1]= "* Is anyone else weirded out&  by those giant shambling&  amalgamates^1, or...?/%%";
    if(talkedto > 0) global.msg[0]= "* ....../%%";
}
if(scr_deaddog() || global.flag[67] == 1) {
    global.msg[0]= "* That lady over there&  seems happy today./";
    global.msg[1]= "* Don\\'t know why^1, but it\\'s&  sending shivers down my&  spine.../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
