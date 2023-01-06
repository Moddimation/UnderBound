if(con == 1) {
    dm1= instance_create(120, 100, obj_darkman_actor );
    dm2= instance_create(180, 100, obj_darkman_actor );
    con= 2;
}
if(con == 2) {
    global.msc= 0;
    global.facechoice= 0;
    global.typer= 5;
    if(global.flag[414] == 0) {
        snd_play(snd_phone );
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
        global.msg[2]= "* H-hey^1, why don\\'t&  you try to use&  the elevator first?/";
        global.msg[3]= "* .../%%";
    }
    if(global.flag[414] == 1 && global.flag[415] == 0) {
        snd_play(snd_phone );
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
        global.msg[2]= "* H-hey^1, why don\\'t&  you try to go&  to the right first?/";
        global.msg[3]= "* .../%%";
    }
    if(global.flag[415] == 1 && global.flag[414] == 1) {
        snd_play(snd_phone );
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
        global.msg[2]= "* Okay^1, you should&  be able to make&  it through here.../";
        global.msg[3]= "* .../%%";
    }
    if(global.flag[367] == 1) donotcall= 1;
    con= 3;
    scr_regulartext();
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    obj_darkman_actor.vspeed= 3;
    con= 4;
    alarm[4]= 40;
}
if(con == 5) {
    global.faceemotion= 3;
    global.msg[0]= "* W-watch out!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 6;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    con= 7;
    snd_play(snd_break2 );
    alarm[4]= 30;
}
if(con == 8) {
    global.mercy= 1;
    global.flag[15]= 1;
    global.battlegroup= 59;
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
    global.typer= 47;
    global.facechoice= 6;
    global.msc= 0;
    global.faceemotion= 8;
    global.msg[0]= "* Th-that was close.../";
    global.msg[1]= "* Wh..^1. why are there&  so many monsters&  here?/";
    global.msg[2]= "\\\\E6* I mean..^1.&* It\\'s no problem^1,&  r-r-right?/";
    global.msg[3]= "* W-w-we\\'ve just got&  to keep heading&  forward!/";
    global.msg[4]= "\\\\E9* .../";
    global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[6]= "* (Click...)/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 13;
}
if(con == 13 && !instance_exists(OBJ_WRITER )) {
    con= 14;
    global.plot= 179;
    global.interact= 0;
    instance_destroy();
}
if(con > 3 && instance_exists(obj_darkman_actor ) && obj_darkman_actor.y > obj_mainchara.y - 60)
    obj_darkman_actor.vspeed= 0;


/*  */
