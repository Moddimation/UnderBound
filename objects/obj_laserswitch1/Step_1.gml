if(global.flag[370] == 2 && global.hp == 1 && global.flag[372] == 0 && con == 0 && global.interact == 0 && global.flag[367] == 0 && global.plot < 184) {
    global.msc= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "\\\\E3* H-hey^1, watch out^1!&* You\\'re going to get&  really hurt!/";
    global.msg[3]= "\\\\E8* I can\\'t watch this^1.&* I\\'m disabling the&  lasers./%%";
    scr_regulartext();
    snd_play(snd_phone );
    global.interact= 1;
    con= 0.5;
}
if(con == 0.5 && !instance_exists(OBJ_WRITER ) && instance_exists(obj_bluelaser_o )) {
    obj_bluelaser_o.active= 0;
    obj_bluelaser_o.alarm[0]= 30;
}
if(con == 0.5 && !instance_exists(OBJ_WRITER )) {
    sc= instance_create(0, 0, obj_soundcombo );
    with(sc) {
        sound1= 132;
        sound2= 13;
        alarm[1]= 8;
    }
    event_user(0);
    con= 0.6;
    timer= 0;
}
if(con == 0.6) {
    timer++;
    if(timer > 30) {
        con= 1;
        global.faceemotion= 0;
        global.msg[0]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[1]= "\\\\E6* Th..^1. there./";
        global.msg[2]= "\\\\E3* Be careful^1, okay?/";
        global.msg[3]= "\\\\E8* .../";
        global.msg[4]= "\\\\E8* I-I\\'m sorry^1, it\\'s&  m-my fault you&  got hurt./";
        global.msg[5]= "\\\\E8* I didn\\'t explain the&  lasers well enough^1,&  and../";
        global.msg[6]= "\\\\E8* If I hadn\\'t..^1.&* If I hadn\\'t..^1./";
        global.msg[7]= "\\\\E4* Um^1, delayed using&  my hacking skills^1,&  I mean.../";
        global.msg[8]= "\\\\E8* ... sorry./";
        global.msg[9]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[10]= "* Click.../%%";
        if(room == 166) {
            global.msg[1]= "\\\\E8* I-I\\'m sorry^1, it\\'s&  m-my fault you&  got hurt./";
            global.msg[2]= "\\\\E8* I didn\\'t explain the&  lasers well enough^1,&  and.../";
            global.msg[3]= "\\\\E3* O-oh^1, there\\'s no&  time for this now!/";
            global.msg[4]= "\\\\E8* Sorry./";
            global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[6]= "* Click.../%%";
        }
        scr_regulartext();
    }
}
if(con == 1 && !instance_exists(OBJ_WRITER )) {
    sc= instance_create(0, 0, obj_soundcombo );
    with(sc) {
        sound1= 132;
        sound2= 13;
        alarm[1]= 8;
    }
    global.flag[372]= 1;
    global.interact= 0;
    event_user(0);
    con= 2;
}


/*  */
