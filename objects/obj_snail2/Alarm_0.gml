myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (Someone has meticulously&  cleaned all the slime off of&  this snail.)/%%";
if(global.flag[7] == 1)
    global.msg[0]= "* (The snail has covered&  itself in slime again...^1)&* (Happy ending...)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
