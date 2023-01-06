myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (It\\'s a carefully decorated&  tree.)/";
global.msg[1]= "* (Some of the presents are&  addressed from " + chr(ord("\"")) + "Santa" + chr(ord("\"")) + " to&  various locals.)/%%";
if(scr_murderlv() >= 7) global.msg[0]= "* (Nothing for you.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
