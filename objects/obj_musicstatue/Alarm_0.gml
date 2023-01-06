myinteract= 3;
global.msc= 585;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* NO!/%%";
if(global.flag[7] == 1 && global.flag[85] == 1 && global.flag[86] == 0) {
    global.msc= 0;
    global.msg[0]= "* (No point in giving it an&  umbrella now.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
