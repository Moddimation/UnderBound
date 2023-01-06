myinteract= 3;
global.msc= 0;
global.typer= 17;
global.facechoice= 3;
global.faceemotion= 0;
global.msg[0]= "* grievous error/%%";
if(global.flag[89] == 0) global.msc= 567;
if(global.flag[89] == 2)
    global.msg[0]= "* let\\'s hang out again&  sometime./%%";
if(scr_murderlv() >= 7) {
    global.faceemotion= 3;
    global.msc= 0;
    global.msg[0]= "\\\\E3* hey^1, i really&  respect what you did&  back there./";
    global.msg[1]= "\\\\E2* thanks./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
