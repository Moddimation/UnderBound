if(con == 1) {
    global.interact= 1;
    dm1= instance_create(120, 100, obj_darkman_actor );
    dm2= instance_create(180, 100, obj_darkman_actor );
    con= 6;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    con= 7;
    snd_play(snd_break2 );
    alarm[4]= 60;
}
if(con == 7) global.interact= 1;
if(con == 8) {
    global.mercy= 1;
    global.flag[15]= 1;
    global.battlegroup= 60;
    instance_create(0, 0, obj_battler );
    con= 9;
    alarm[4]= 32;
}
if(con == 10) {
    // obj_darkman_actor
    with(1260) instance_destroy();
    global.interact= 1;
    global.mercy= 0;
    con= 11;
    alarm[4]= 20;
}
if(con == 11) global.interact= 1;
if(con == 12) {
    snd_play(snd_phone );
    global.typer= 5;
    global.facechoice= 0;
    global.msc= 0;
    global.faceemotion= 8;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* Sorry^1, I..^1. I.../";
    global.msg[3]= "* I thought that.../";
    global.msg[4]= "\\\\E8* Let\\'s try the&  right path instead./";
    global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[6]= "* (Click...)/%%";
    if(global.flag[416] == 0) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* A-are you okay?/";
        global.msg[3]= "* Why didn\\'t you&  head to the&  right...?/";
        global.msg[4]= "\\\\E4* C-C\\'mon..^1.&* Y-you trust me^1,&  d-don\\'t you?/";
        global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[6]= "* (Click...)/%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 13;
}
if(con == 13 && !instance_exists(OBJ_WRITER )) {
    con= 14;
    global.flag[417]= 1;
    global.interact= 0;
    instance_destroy();
}


/*  */
