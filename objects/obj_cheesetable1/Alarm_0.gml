myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* This cheese has been here&  quite a long time./";
global.msg[1]= "* It\\'s stuck to the table.../%%";
if(global.flag[7] == 1)
    global.msg[0]= "* (Looks like cheese has a&  nibble taken out of it.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
