myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* As a slime^1, I\\'m outraged./%%";
if(global.flag[7] == 1)
    global.msg[0]= "* As a slime^1, I\\'m overjoyed./%%";
if(global.flag[425] == 1)
    global.msg[0]= "* As a slime^1, I\\'m saddened./%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
