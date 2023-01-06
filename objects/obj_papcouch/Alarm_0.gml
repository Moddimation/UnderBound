myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(global.flag[83] == 0) {
    global.msg[0]= "* (You touch the couch.^1)&* (It makes a jangling sound.)/";
    global.msg[1]= "* (You find a bunch of loose&  coins inside the couch...)/";
    global.msg[2]= "* (You got 20G.)/%%";
    global.gold+= 20;
    global.flag[83]= 1;
} else  global.msg[0]= "* (It\\'s a saggy old couch.)/%%";
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
