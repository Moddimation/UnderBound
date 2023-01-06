myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (The trashcan is full&  of broken spears.)/%%";
if(room == 119) {
    global.msg[0]= "* (The trashcan is empty.)/%%";
    if(global.flag[92] < 3) {
        global.flag[92]= 3;
        global.msg[0]= "* (You found a trashcan.)/";
        global.msg[1]= "* (Inside the trashcan&  was a key^1, barely visible&  to the naked eye...)/";
        global.msg[2]= "* (You take it.)/%%";
        if(instance_exists(obj_stable ) && obj_stable.open == 0)
            obj_stable.open= 1;
    }
}
if(room == 141) {
    global.msg[0]= "* (A garbage can.^1)&* (But it\\'s pretty cute.)/%%";
    if(global.plot < 126 && scr_murderlv() < 12)
        global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
    if(global.flag[493] >= 10) {
        global.msg[0]= "* (There\\'s a message crumpled&  up in the trash can.)/";
        global.msg[1]= "* (It\\'s in a strange kind&  of handwriting.)/";
        global.msg[2]= "* (It says...)/";
        global.msg[3]= "* (I KNOW WHAT YOU DID.)/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
object_index.talkedto++;

/* */
/*  */
