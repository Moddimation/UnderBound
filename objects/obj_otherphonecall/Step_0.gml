if(con == 1) {
    con= 0.1;
    alarm[4]= 30;
    snd_play(snd_phone );
}
if(con == 1.1) {
    global.facechoice= 0;
    caster_pause(global.currentsong);
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.msg[0]= "* (Ring... ring...)/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    if(type == 1) {
        global.typer= 17;
        global.msc= 900;
    }
    if(type == 2) {
        global.typer= 47;
        global.msg[0]= "* U-uhhh..^1.&* (Oh my god^1, help...)/";
        global.msg[1]= "* I\\'d like to order a..^1.&* Um..^1.&* A pizza...?/";
        global.msg[2]= "* With^1, uhh..^1.&* The toppings are^1, uh.../";
        global.msg[3]= "* I have them copied^1, I\\'ll&  just paste them to you./";
        global.msg[4]= "\\\\T0 %";
        global.msg[5]= "* (Your phone is too old to&  receive texts...)/";
        global.msg[6]= "* (It reads out loud^1, character-&  by-character^1, an ASCII art&  of an anime catgirl.)/";
        global.msg[7]= "\\\\TA* .../%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 3;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    global.msc= 0;
    global.typer= 5;
    global.msg[0]= "* (Click...)/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 4;
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    caster_resume(global.currentsong);
    con= 5;
    global.flag[277]= 1;
    global.interact= 0;
    instance_destroy();
}

/* */
/*  */
