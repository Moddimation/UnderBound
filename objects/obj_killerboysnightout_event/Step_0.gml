if(con == 1) {
    caster_pause(global.currentsong);
    bunny.sprite_index= spr_royalguard_rabbit_d ;
    dragon.sprite_index= spr_royalguard_dragon_d ;
    con= 0.1;
    alarm[4]= 40;
}
if(con == 1.1) {
    global.msc= 0;
    global.msg[0]= "* ... you\\'re here./";
    global.msg[1]= "* So that means Undyne..^1.&* She\\'s.../";
    global.msg[2]= "* Like^1, Undyne^1!&* We\\'ll avenge you!/%%";
    scr_regulartext();
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    global.battlegroup= 49;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    con= 3;
    alarm[4]= 33;
}
if(con == 4) {
    global.mercy= 0;
    global.interact= 0;
    caster_resume(global.currentsong);
    if(global.flag[12] == 1) global.flag[402]= 1;
    con= 17;
    global.plot= 164;
    // obj_npc_marker
    with(1363) instance_destroy();
    instance_destroy();
}


/*  */
