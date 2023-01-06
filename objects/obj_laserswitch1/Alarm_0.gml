myinteract= 3;
global.msc= 682;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Hi./%%";
if(global.plot > 184) {
    global.msc= 0;
    global.msg[0]= "* (Didn\\'t work.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
