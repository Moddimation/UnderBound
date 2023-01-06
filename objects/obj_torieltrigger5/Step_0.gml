if(conversation == 1 && !instance_exists(OBJ_WRITER )) {
    global.interact= 1;
    conversation= 2;
    with(toriel) path_start(path_torielwalk19 , 3, 0, path_action_restart );
    fademusicout= 1;
}
if(instance_exists(obj_toroverworld3 ) && conversation == 2 && obj_toroverworld3.path_position == 1) {
    toriel.sprite_index= spr_toriel_d_phone ;
    toriel.phone= 1;
    snd_play(snd_phone );
    alarm[4]= 30;
    conversation= 3;
}
if(instance_exists(obj_toroverworld3 ) && conversation == 4 && toriel.path_position == 1) {
    with(toriel) path_end();
    conversation= 5;
    caster_pause(global.currentsong);
    torielsong= caster_load("music/toriel.ogg");
    caster_loop(torielsong, 0.7, 0.86);
    global.msg[0]= "* How did you get&  here^1, my child^1?&* Are you hurt?/";
    if(global.hp == global.maxhp)
        global.msg[1]= "* Not a scratch..^1.&*\\\\E0 Impressive^1!&*\\\\E1 But still.../";
    if(global.hp < global.maxhp)
        global.msg[1]= "* There^1, there^1, I will&  heal you./";
    if(global.hp < 4)
        global.msg[1]= "* Who did this to you^2?\\\\E5 &* You will get an apology./";
    global.msg[2]= "\\\\E1* I should not have&  left you alone&  for so long./";
    global.msg[3]= "* It was irresponsible&  to try to surprise&  you like this./";
    global.msg[4]= "\\\\E8* Err.../";
    global.msg[5]= "\\\\E0* Well^1, I suppose I&  cannot hide it&  any longer./";
    global.msg[6]= "* Come^1, small one!/%%";
    global.hp= global.maxhp;
    instance_create(0, 0, obj_dialoguer );
}
if(instance_exists(obj_toroverworld3 ) && conversation == 5 && !instance_exists(OBJ_WRITER )) {
    conversation= 6;
    // obj_toroverworld3
    with(861) path_start(path_torielwalk19_4 , 4, 0, path_action_stop );
    caster_resume(global.currentsong);
    fademusicout= 3;
    global.plot= 17;
    torvolume= 0.8;
}
if(fademusicout == 1) {
    if(volume > 0) volume-= 0.02;
    caster_set_volume(global.currentsong, volume);
    if(volume < 0.02) fademusicout= 2;
}
if(fademusicout == 3) {
    torvolume-= 0.04;
    if(volume < 0.9) volume+= 0.06;
    caster_set_volume(torielsong, torvolume);
    caster_set_volume(global.currentsong, volume);
    if(torvolume < 0.1) {
        caster_free(torielsong);
        global.interact= 0;
        instance_destroy();
    }
}

/* */
/*  */
