if(con == 1) {
    caster_pause(global.currentsong);
    snd_play(snd_phone );
    alarm[4]= 40;
    con= 2;
}
if(con == 3) {
    global.msc= 0;
    global.facechoice= 0;
    global.typer= 5;
    global.msg[0]= "* Ring.../";
    scr_undface(1, 0);
    global.msg[2]= "\\\\E0* Hey...^1!&* Uh^1, this is&  Undyne.../";
    global.msg[3]= "\\\\E2* (Shut up^1, Papyrus^1!)&* (This was YOUR idea!)/";
    global.msg[4]= "\\\\E1* HUMAN^1!&* You have to deliver&  something for me!/";
    global.msg[5]= "\\\\E9* Uh^1, please?/";
    global.msg[6]= "\\\\E0* I\\'m at Snowdin&  in front of&  Papyrus\\'s./";
    global.msg[7]= "\\\\E6* See ya^1, punk!/";
    global.msg[8]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[9]= "* Click.../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 6;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    global.flag[8]= 1;
    caster_resume(global.currentsong);
    if(global.flag[493] < 8) global.flag[493]= 8;
    global.interact= 0;
    con= 7;
}

/* */
/*  */
