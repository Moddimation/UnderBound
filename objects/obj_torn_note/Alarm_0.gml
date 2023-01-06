myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= " error/%%";
if(room == 246) {
    global.msg[0]= "* (There\\'s a note on the&  ground...^1)&* (You can\\'t make it all out.)/";
    global.msg[1]= "* " + chr(ord("\"")) + "elevator..^1. lost power..^1." + chr(ord("\"")) + "&* " + chr(ord("\"")) + "enter the center door..." + chr(ord("\"")) + "/";
    global.msg[2]= "* (That\\'s all you could read.)/%%";
}
if(room == 249) {
    global.msg[0]= "* (There\\'s a note on the&  ground...^1)&* (You can\\'t make it all out.)/";
    global.msg[1]= "* " + chr(ord("\"")) + "drain..^1. dropped it..." + chr(ord("\"")) + "/";
    global.msg[2]= "* (That\\'s all you could read.)/%%";
}
if(room == 253) {
    global.msg[0]= "* (There\\'s a note on the&  ground...^1)&* (You can\\'t make it all out.)/";
    global.msg[1]= "* " + chr(ord("\"")) + "cold..." + chr(ord("\"")) + "/";
    global.msg[2]= "* (That\\'s all you could read.)/%%";
}
if(room == 259) {
    global.msg[0]= "* (There\\'s a note on the&  ground...^1)&* (You can\\'t make it all out.)/";
    global.msg[1]= "* " + chr(ord("\"")) + "curtain..." + chr(ord("\"")) + "/";
    global.msg[2]= "* (That\\'s all you could read.)/%%";
}
if(room == 257) {
    global.msg[0]= "* (There\\'s a note on the&  ground...^1)&* (You can\\'t make it all out.)/";
    global.msg[1]= "* " + chr(ord("\"")) + "under..^1. sheets..." + chr(ord("\"")) + "/";
    global.msg[2]= "* (That\\'s all you could read.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
