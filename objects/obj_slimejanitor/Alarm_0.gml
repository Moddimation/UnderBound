myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (Seems busy.)/%%";
if(global.flag[7] == 1)
    global.msg[0]= "* (Trying to finish up work.)/%%";
if(global.flag[425] == 1) global.msg[0]= "* (Futility setting in.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
