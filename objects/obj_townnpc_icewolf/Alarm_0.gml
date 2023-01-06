myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Ice Wolf no longer has to&  throw Ice./";
global.msg[1]= "* Ice Wolf can take a break to&  buy some pants now./%%";
if(talkedto > 0)
    global.msg[0]= "* Ice Wolf thinking of changing&  their name to Jimmy Hotpants./%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
