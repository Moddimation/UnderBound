myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (The door is locked.)/%%";
if(global.flag[497] >= 1) {
    global.msg[0]= "* (You unlock the door and&  enter...)/%%";
    con= 4;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
