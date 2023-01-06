myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (It\\'s a box.^1)&* (Presumably to be pushed.)/%%";
if(global.flag[280] == 2) {
    // obj_puzzlehater
    with(1512) spec= 1;
    global.facing= 3;
    global.msg[0]= "* Bah!/%%";
}
if(global.flag[280] == 1) {
    // obj_puzzlehater
    with(1512) spec= 1;
    global.facing= 3;
    global.msg[0]= "* What...^1?&* WHAT are you doing!^1?&* You\\'re pushing it ALL WRONG!/";
    global.msg[1]= "* Bah^1, forget it^1!&* This generation is REALLY&  hopeless!/%%";
    global.flag[280]= 2;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
