myinteract= 3;
global.msc= 680;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Come on! What are you doing!/%%";
if(global.flag[85] == 1) {
    global.msc= 0;
    global.msg[0]= "* Ahhh..^1.&* No umbrellas allowed!/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
