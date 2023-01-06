myinteract= 3;
global.msc= 0;
global.typer= 47;
global.facechoice= 6;
global.faceemotion= 0;
global.faceemotion= 8;
global.msg[0]= "* Th-that last&  question.../";
global.msg[1]= "\\\\E4* He wasn\\'t s-supposed&  to ask that one.../%%";
if(global.plot > 126 && room == 141) {
    global.facechoice= 0;
    global.typer= 5;
    global.msg[0]= "* (Yellow feet are tapping&  just behind the door.)/%%";
}
if(room == 211) {
    global.flag[430]= 1;
    global.facechoice= 6;
    global.faceemotion= 5;
    global.msg[0]= "* I..^1. I just need&  a moment./%%";
}
if(room == 212) {
    global.flag[430]= 1;
    global.facechoice= 6;
    global.faceemotion= 5;
    global.msg[0]= "* .../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
