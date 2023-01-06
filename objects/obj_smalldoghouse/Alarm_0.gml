myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (What a tiny doghouse!)/%%";
if(global.plot >= 64)
    global.msg[0]= "* (It must be bigger on the&  inside.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
