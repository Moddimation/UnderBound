if(trick == 0) event_inherited();
if(trick == 1) {
    snd_play(snd_heal_c );
    global.my_hp= 50;
    obj_flowey_master.dcon= 40;
    with(object_index) instance_destroy();
}
if(trick == 2) {
    // obj_spinbullet_final_gen
    with(1647) event_user(1);
}

/* */
/*  */
