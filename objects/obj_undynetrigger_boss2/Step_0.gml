if(con == 1) {
    undyne= scr_marker(150, __view_get( e__VW.YView, 0 ) - 230, 1422);
    undyne.image_speed= 0.334;
    global.typer= 37;
    global.msc= 0;
    global.facechoice= 5;
    global.faceemotion= 0;
    global.msg[0]= "* That\\'s it^1, then...!/";
    global.msg[1]= "* No more running away!/%%";
    if(global.flag[352] == 1)
        global.msg[0]= "* I KNEW you would&  come back here!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    global.currentsong= caster_load("music/undynefast.ogg");
    alarm[4]= 30;
    undyne.vspeed= 8;
    global.faceemotion= 1;
    global.msg[0]= "* HERE I COME!!!!!!!";
    instance_create(0, 0, obj_dialoguer );
    con= 3;
}
if(con == 4) {
    // obj_savepoint
    with(1351) instance_destroy();
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_dialoguer
    with(779) instance_destroy();
    con= 5;
    global.border= 12;
    global.battlegroup= 47;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    talkedto= 0;
    alarm[4]= 2;
}
if(con == 6) {
    with(undyne) instance_destroy();
    if(global.flag[350] == 0) {
        u= instance_create(160, 620, obj_undynea_chaser );
        alarm[4]= 30;
        con= 7;
    } else  {
        global.flag[17]= 0;
        global.plot= 122;
    }
}
if(con == 8) {
    if(global.flag[350] == 0) caster_loop(global.currentsong, 1, 1);
    else  audio_stop_all();
    global.flag[352]= 1;
    instance_destroy();
}

/* */
/*  */
