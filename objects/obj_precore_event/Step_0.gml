if(con == 1) {
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    con= 2;
    remy= __view_get( e__VW.YView, 0 );
}
if(con == 2) {
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (3) );
    if(__view_get( e__VW.YView, 0 ) <= 122) {
        __view_set( e__VW.YView, 0, 120 );
        con= 3;
    }
}
if(con == 3) {
    con= 4;
    alarm[4]= 20;
}
if(con == 5) {
    // obj_darkman_actor
    with(1260) mov= 1;
    snd_play(snd_phone );
    global.plot= 176;
    global.msc= 0;
    global.facechoice= 0;
    global.typer= 5;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* Huh^1?&* Who are they?/";
    global.msg[3]= "* N-nobody else is&  s-supposed to be&  here.../";
    global.msg[4]= "\\\\E6* Oh well^1!&* We can\\'t worry&  about that now!/";
    global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[6]= "* Click.../%%";
    ge= instance_create(0, 0, obj_dialoguer );
    ge.side= 1;
    con= 6;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) con= 7;
if(con == 7) {
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (5) );
    if(__view_get( e__VW.YView, 0 ) >= remy - 2) {
        __view_set( e__VW.YView, 0, remy );
        con= 8;
    }
}
if(con == 8) {
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    global.interact= 0;
    con= 9;
    instance_destroy();
}

/* */
/*  */
