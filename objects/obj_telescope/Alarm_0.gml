myinteract= 3;
global.msc= 549;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Come on! What are you doing!/%%";
if(room == 95) {
    global.msc= 0;
    global.msg[0]= "* (It\\'s an odd-looking&  telescope.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
