myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (It\\'s a half-empty bag&  of dog food.)/%%";
if(global.kills == 0)
    global.msg[0]= "* (It\\'s a bag of dog food.^1)&* (It\\'s half-full.)/%%";
if(global.kills > 20 && global.flag[52] == 1 && global.flag[53] == 1 && global.flag[54] == 1 && global.flag[55] == 1) {
    global.msg[0]= "* (It\\'s a half-empty bag&  of dog food.)/";
    global.msg[1]= "* (...)/";
    global.msg[1]= "* (You just remembered&  something funny.)/%%";
}
if(global.plot < 126 && scr_murderlv() < 12)
    global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
