if(type == 0) {
    if(instance_exists(obj_asgore_lastcutscene ))
        obj_asgore_lastcutscene.con= 45;
    obj_asgore_lastcutscene.hearts= 0;
    snd_play(snd_select );
    obj_heart.x= -999;
    // obj_fakeheart
    with(748) instance_destroy();
    // obj_anybt
    with(756) instance_destroy();
}
if(type == 1) {
    if(instance_exists(obj_asgore_lastcutscene ))
        obj_asgore_lastcutscene.con= 15;
    obj_asgore_lastcutscene.hearts= 1;
    snd_play(snd_select );
    obj_heart.x= -999;
    // obj_fakeheart
    with(748) instance_destroy();
    // obj_anybt
    with(756) instance_destroy();
}
if(type == 2) {
    snd_play(snd_select );
    caster_stop(-3);
    snd_play(snd_laz );
    strike= scr_marker(obj_flowey_wilt.x + 25, obj_flowey_wilt.y - 20, 757);
    strike.image_xscale= 1;
    strike.image_yscale= 1;
    strike.image_speed= 0.25;
    obj_flowey_wilt.alarm[8]= 22;
    obj_flowey_wilt.alarm[7]= 60;
    // obj_anybt
    with(756) instance_destroy();
    // obj_fakeheart
    with(748) instance_destroy();
}
if(type == 3) {
    snd_play(snd_select );
    // obj_flowey_wilt
    with(522) event_user(1);
    // obj_anybt
    with(756) instance_destroy();
    // obj_fakeheart
    with(748) instance_destroy();
}


/*  */
