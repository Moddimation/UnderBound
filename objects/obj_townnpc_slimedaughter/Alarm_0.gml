myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* You aren\\'t gonna make me&  be the human again^1, are you?/%%";
if(global.plot >= 122)
    global.msg[0]= "* Can we PLEASE play something&  else...?/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Hmmm..^1.&* When humans play Monsters&  and Humans.../";
    global.msg[1]= "* Do they just call it&  Humans and Humans?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
