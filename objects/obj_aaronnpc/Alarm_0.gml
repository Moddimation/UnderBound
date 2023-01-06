myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Since you flexed at me^1,&  I\\'ve been thinking of a&  lot of things ; )/";
global.msg[1]= "* Like..^1.&* Flexing ; )/%%";
if(talkedto > 0) global.msg[0]= "* And flexing ; )/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* You came all this way to&  see me flex ; )/";
    global.msg[1]= "* This really says something&  about you ; )/%%";
}
if(global.flag[95] == 1) {
    global.msg[0]= "* I..^1. I\\'m sc-scared... ; )/";
    global.msg[1]= "* Ghosts aren\\'t real^1, right?&* ; )/";
    global.msg[2]= "* What^1? They are real^1?&* Oh nooooooo ; )/%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* First ghosts^1, are real^1, now&  anime\\'s real ; )&* All my nightmares are true ; )/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
