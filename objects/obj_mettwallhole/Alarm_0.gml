myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (The space behind the wall&  is only a few feet&  wide.)/%%";
if(scr_murderlv() >= 12)
    global.msg[0]= "* (It\\'s just here to complete&  the look.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
