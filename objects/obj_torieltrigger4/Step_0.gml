if(conversation == 3 && instance_exists(obj_toroverworld4 ) && obj_toroverworld4.path_position == 1) {
    global.currentsong= caster_load("music/toriel.ogg");
    caster_loop(global.currentsong, 0.7, 0.86);
    with(tor) path_end();
    with(tor) direction= 180;
    with(tor) facing= 3;
    with(tor) sprite_index= spr_toriel_lt ;
    global.msc= 220;
    global.typer= 4;
    global.facechoice= 1;
    instance_create(0, 0, obj_dialoguer );
    conversation= 4;
    global.phone[0]= 201;
    global.phone[1]= 203;
    global.phone[2]= 204;
    global.phone[3]= 205;
    global.menuchoice[2]= 1;
    instance_create(160, 100, obj_stalkerflowey );
}
if(conversation == 4 && !instance_exists(obj_dialoguer )) {
    instance_create(0, 0, obj_tordogcall );
    with(tor) path_start(path_walkright , 3, 0, path_action_stop );
    script_execute(scr_tempsave );
    global.interact= 0;
    instance_destroy();
}

/* */
/*  */
