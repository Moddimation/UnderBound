myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (This snail is counting dollar&  bills.)/%%";
if(global.flag[7] == 1)
    global.msg[0]= "* (Using its money^1, the&  snail bought a hat.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
