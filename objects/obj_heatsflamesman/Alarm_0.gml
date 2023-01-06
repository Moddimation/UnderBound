myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "\\\\W* Heh^1.&* I\\'m \\\\RHeats Flamesman\\\\W.&* Remember my name!/%%";
if(room == 187) {
    global.msc= 850;
    if(global.flag[434] == 1) {
        global.msc= 0;
        global.msg[0]= "* I\\'ll always remember that&  you remembered!/%%";
    }
    if(global.flag[434] == 2) {
        global.msc= 0;
        global.msg[0]= "* I\\'ll never forget that you&  forgot!/%%";
    }
}
if(global.flag[7] == 1)
    global.msg[0]= "* What?&* Do you want a rematch?/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
