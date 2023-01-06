myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (It\\'s a tough-looking branch.)&* (It\\'s too heavy to pick up.)/%%";
if(broken == 1)
    global.msg[0]= "* (It\\'s been smashed like it&  was nothing...)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
