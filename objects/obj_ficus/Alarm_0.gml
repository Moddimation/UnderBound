myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (It\\'s a potted plant.)/%%";
if(scr_murderlv() >= 12)
    global.msg[0]= "* (The potted plant is judging&  you for your sins.)/%%";
if(room == 184 && x > 160 && x < 260)
    global.msg[0]= "* (It\\'s a platoon of ficuses.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
