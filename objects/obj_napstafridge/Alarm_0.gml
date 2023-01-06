myinteract= 3;
global.msc= 612;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(room == 120) {
    if(scr_murderlv() >= 10 || !instance_exists(obj_napstablook_actor )) {
        global.msc= 0;
        global.msg[0]= "* (It\\'s merely a fridge.)/%%";
    }
    if(global.flag[93] >= 2) mydialoguer= instance_create(0, 0, obj_dialoguer );
    else  {
        if(instance_exists(obj_napstablookdate ) && obj_napstablookdate.con < 11)
            obj_napstablookdate.con= 11;
    }
}
if(room == 141) {
    global.msc= 258;
    if(global.plot < 126 && scr_murderlv() < 12) {
        global.msc= 0;
        global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
}
object_index.talkedto++;

/* */
/*  */
