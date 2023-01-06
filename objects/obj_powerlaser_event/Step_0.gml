if(global.interact == 0 && obj_mainchara.x > 200 && con == 0) {
    global.interact= 1;
    con= 10;
}
if(con == 10) {
    snd_play(snd_phone );
    global.msc= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* M..^1. more lasers.../";
    global.msg[3]= "\\\\E8* Okay^1, I..^1.&* I won\\'t mess around&  this time./";
    global.msg[4]= "\\\\E6* I\\'ll just deactivate&  the lasers and let&  you through./";
    global.msg[5]= "\\\\E3* .../";
    global.msg[6]= "\\\\E3* They\\'re..^1.&* They\\'re not turning&  off.../";
    global.msg[7]= "\\\\E8* I can\\'t turn them&  off^1, I.../";
    global.msg[8]= "\\\\E6* I-i-it\\'s okay^1!&* I have this under&  control!/";
    global.msg[9]= "* I\\'m going to turn&  off the p-power for&  that whole node./";
    global.msg[10]= "* Then you can walk&  across./";
    global.msg[11]= "\\\\E3* .../";
    global.msg[12]= "\\\\E6* Okay^1, go!/";
    global.msg[13]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[14]= "* Click.../%%";
    if(global.flag[417] == 0) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* H..^1. huh?&* I..^1. I guess this&  was the right way./";
        global.msg[3]= "* M..^1. more lasers.../";
        global.msg[4]= "\\\\E8* Okay^1, I..^1.&* I won\\'t mess around&  this time./";
        global.msg[5]= "\\\\E6* I\\'ll just deactivate&  the lasers and let&  you through./";
        global.msg[6]= "\\\\E3* .../";
        global.msg[7]= "\\\\E3* They\\'re..^1.&* They\\'re not turning&  off.../";
        global.msg[8]= "\\\\E8* I can\\'t turn them&  off^1, I.../";
        global.msg[9]= "\\\\E6* I-i-it\\'s okay^1!&* I have this under&  control!/";
        global.msg[10]= "* I\\'m going to turn&  off the p-power for&  that whole node./";
        global.msg[11]= "* Then you can walk&  across./";
        global.msg[12]= "\\\\E3* .../";
        global.msg[13]= "\\\\E6* Okay^1, go!/";
        global.msg[14]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[15]= "* Click.../%%";
    }
    scr_regulartext();
    con= 11;
}
if(con == 11 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 12 && powered == 0)
    event_user(1);
if(con == 11 && !instance_exists(OBJ_WRITER )) {
    ff= instance_create(20, 80, obj_kitchenforcefield );
    ff.image_yscale= 5;
    con= 12;
    global.interact= 0;
}
if(con == 12 && obj_mainchara.x > 580 && global.interact == 0) {
    global.interact= 1;
    con= 13;
}
if(con == 13) {
    snd_play(snd_phone );
    global.msc= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* W-WAIT^1!&* STOP!/%%";
    scr_regulartext();
    con= 14;
}
if(con == 14 && !instance_exists(OBJ_WRITER )) {
    event_user(2);
    con= 15;
    alarm[4]= 45;
}
if(con == 16) {
    global.msc= 0;
    global.msg[0]= "\\\\E8* Th-the power..^1.&* It\\'s turning itself&  back on./";
    global.msg[1]= "\\\\E9* D-damn it..^1.&* Th-this isn\\'t supposed&  to.../";
    global.msg[2]= "* I.../";
    global.msg[3]= "\\\\E3* I\\'m gonna turn&  it off again./";
    global.msg[4]= "* When it turns off^1,&  move a little^1, and&  then STOP./";
    global.msg[5]= "\\\\E8* OK^1?&* Y-you won\\'t get&  h-h-hurt./";
    global.msg[6]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[7]= "* Click.../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 17;
}
if(con == 17 && !instance_exists(OBJ_WRITER )) {
    remhp= global.hp;
    global.interact= 0;
    flasher= 0;
    event_user(1);
    con= 18;
    alarm[3]= 37;
    backuptimer= 10;
}
if(con == 18) {
    if(alarm[3] == -1) backuptimer--;
    else  backuptimer= 8;
    if(backuptimer < 0) alarm[3]= 37;
}
if(con == 18 && global.hp < remhp && hptalk == 0) {
    snd_play(snd_phone );
    global.msc= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* Oh my god^1, are&  you okay!?/";
    global.msg[3]= "\\\\E8* I-I c-couldn\\'t keep&  the power off&  long enough.../";
    global.msg[4]= "\\\\E6* No^1, no^1, we\\'ve&  got this^1, it\\'s just&  a little further!/";
    global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[6]= "* Click.../%%";
    con= 19;
    hptalk= 1;
    scr_regulartext();
    global.interact= 1;
}
if(con == 19 && hptalk == 1) global.interact= 1;
if(con == 19 && !instance_exists(OBJ_WRITER ) && hptalk == 1) {
    hptalk= 2;
    global.interact= 0;
    con= 18;
}
if(con == 18 && obj_mainchara.x > 1040) {
    global.interact= 1;
    con= 22;
}
if(con == 22) {
    snd_play(snd_phone );
    global.msc= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
    global.msg[2]= "* S-see^1?&* I\\'ve got everything&  under control./";
    global.msg[3]= "* Everything\\'s under&  control!/";
    global.msg[4]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[5]= "* Click.../%%";
    con= 23;
    hptalk= 1;
    scr_regulartext();
    alarm[3]= -1;
    powered= 0;
    drawblack= 0;
    obj_bluelaser_o.active= 2;
    // obj_kitchenforcefield
    with(1183) instance_destroy();
    instance_create(60, 120, obj_stalkerflowey );
    global.plot= 184;
}
if(con == 23 && !instance_exists(OBJ_WRITER )) {
    global.interact= 0;
    con= 24;
    instance_destroy();
}

/* */
/*  */
