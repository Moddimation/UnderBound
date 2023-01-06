myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(instance_exists(obj_papyrusparent )) {
    if(global.flag[82] == 0) {
        scr_papface(0, 0);
        conversation= 1;
        global.msg[1]= "IMPRESSED^1?&I INCREASED THE&HEIGHT OF MY SINK./";
        global.msg[2]= "NOW I CAN FIT MORE&BONES UNDER IT^1!&TAKE A LOOKSY!/%%";
    } else  {
        scr_papface(0, 3);
        global.msg[1]= "FORGET IT./%%";
    }
} else  {
    global.msg[0]= "* (This sink is so tall^1, you&  can\\'t even wash your&  hands...)/%%";
    conversation= 0;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
