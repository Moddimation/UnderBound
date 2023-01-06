myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Ah^1, to be young again^1.&* The world sure felt boundless./%%";
if(global.plot >= 122)
    global.msg[0]= "* You like to wander^1.&* You must be young./%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Seems like this is the&  beginning of a brand-new^1,&  boundless world.../";
    global.msg[1]= "* Wah-ha^1!&* This adventurous spirit^1!&* I\\'m like a kid again!/";
    global.msg[2]= "* And my children are like..^1.&* Double-children./%%";
}
if(scr_deaddog() == 1 || global.flag[67] == 1) {
    global.msg[0]= "* I\\'ve sent the kids inside./";
    global.msg[1]= "* It feels unsafe here today./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
