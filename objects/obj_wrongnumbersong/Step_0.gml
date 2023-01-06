if(con == 1) {
    con= 0.1;
    alarm[4]= 30;
    snd_play(snd_phone );
}
if(con == 1.1) {
    global.facechoice= 0;
    global.faceemotion= 0;
    caster_pause(global.currentsong);
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.msg[0]= "* (Ring... ring...)/";
    global.msg[1]= "* Hello^1!&* Can I speak to G.../";
    global.msg[2]= "* ...&* Wait a second./";
    global.msg[3]= "* Is this the wrong number?/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    wrns= caster_loop(413, 0.8, 1);
    global.msg[0]= "* Oh it\\'s the wrong number^1!&* The wrong number song!/";
    global.msg[1]= "* We\\'re very very sorry that&  we got it wrong!/";
    global.msg[2]= "* Oh it\\'s the wrong number^1!&* The wrong number song!/";
    global.msg[3]= "* We\\'re very very sorry that&  we got it wrong!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 3;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    caster_stop(wrns);
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
