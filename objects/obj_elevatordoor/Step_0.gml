buffer--;
if(myinteract == 1 && buffer > 0) myinteract= 0;
if(myinteract == 1 && global.interact == 0 && con == 0) {
    global.interact= 1;
    con= 1;
    snd_play(snd_elecdoor_open );
    event_user(0);
}
if(con == 1) {
    side+= 2;
    if(side >= 20) {
        con= 2;
        global.interact= 0;
        with(s1) instance_destroy();
        with(s2) instance_destroy();
        if(instance_exists(obj_alphys_npc ) && room == 212) {
            obj_alphysfollow_event.con= 50;
            global.interact= 1;
            m= instance_create(0, 0, obj_musfadeout );
        }
    }
}
if(myinteract == 1 && global.interact == 0 && con == 40) {
    global.interact= 1;
    con= 41;
}
if(con == 41) {
    global.interact= 1;
    global.msc= 0;
    global.msg[0]= "* (The elevator isn\\'t working.)/";
    global.msg[1]= "* Ring.../";
    global.msg[2]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[3]= "* What^1?&* The elevator should&  be working.../";
    global.msg[4]= "* .../";
    global.msg[5]= "\\\\E6* W-well then^1!&* Go to the right&  and keep heading up!/%%";
    global.msg[6]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[7]= "* Click.../%%";
    if(global.flag[415] == 1) {
        global.msg[5]= "\\\\E6* W-well then^1!&* Let\\'s go to the&  left!/%%";
        global.msg[6]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[7]= "* Click.../%%";
    }
    global.flag[414]= 1;
    if(scr_murderlv() >= 12)
        global.msg[0]= "* (The elevator isn\\'t working.)/%%";
    scr_regulartext();
    con= 42;
}
if(con == 42 && !instance_exists(OBJ_WRITER )) {
    buffer= 4;
    con= 43;
    myinteract= 0;
    global.interact= 0;
}
if(con == 43 && myinteract == 1 && global.interact == 0) {
    global.interact= 1;
    global.msg[0]= "* (The elevator isn\\'t working.)/%%";
    scr_regulartext();
    con= 42;
}
if(con == 50 && myinteract == 1 && global.interact == 0) {
    global.interact= 1;
    global.msg[0]= "* (The elevator is in use.)/%%";
    scr_regulartext();
    con= 42;
}


/*  */
