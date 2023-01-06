if(con == 1) {
    global.msc= 0;
    global.msg[0]= "* Hey^1! You^1!&* Stop!/%%";
    con= 1.1;
    scr_regulartext();
}
if(con == 1.1 && !instance_exists(OBJ_WRITER )) {
    global.facing= 1;
    dragon= scr_marker(545, 310, 1838);
    rabbit= scr_marker(530, 290, 1836);
    with(dragon) scr_depth();
    with(rabbit) scr_depth();
    with(dragon) image_speed= 0.25;
    with(rabbit) image_speed= 0.25;
    dragon.hspeed= -3;
    rabbit.hspeed= -3;
    con= 2;
}
if(con == 2 && dragon.x < obj_mainchara.x + 70 && rabbit.x < obj_mainchara.x + 70) {
    obj_npc_marker.hspeed= 0;
    obj_npc_marker.image_speed= 0;
    obj_npc_marker.image_index= 0;
    con= 3;
}
if(con == 3) {
    global.msg[0]= "* We\\'ve^1, like^1, received an&  anonymous tip about a human&  wearing a striped shirt./";
    global.msg[1]= "* They told us they were&  wandering around Hotland&  right now.../";
    global.msg[2]= "* I know^1, sounds scary^1, huh?/";
    global.msg[3]= "* Well^1, just stay chill^1.&* We\\'ll bring you someplace&  safe^1, OK?/%%";
    scr_regulartext();
    con= 4;
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    with(dragon) sprite_index= spr_royalguard_dragon_r ;
    with(rabbit) sprite_index= spr_royalguard_rabbit_r ;
    obj_npc_marker.hspeed= 3;
    obj_mainchara.hspeed= 3;
    obj_npc_marker.image_speed= 0.25;
    obj_mainchara.image_speed= 0.25;
    con= 5;
    alarm[4]= 30;
}
if(con == 6) {
    obj_npc_marker.hspeed= 0;
    obj_npc_marker.image_speed= 0;
    obj_npc_marker.image_index= 0;
    con= 7;
    alarm[4]= 3;
}
if(con == 8) {
    obj_mainchara.hspeed= 0;
    obj_mainchara.image_speed= 0;
    obj_mainchara.image_index= 0;
    con= 9;
    alarm[4]= 20;
}
if(con == 10) {
    with(rabbit) sprite_index= spr_royalguard_rabbit_d ;
    global.msg[0]= "* ... Huh^1?&* What is it, bro?/";
    global.msg[1]= "* The shirt they\\'re wearing?/";
    global.msg[2]= "* ... like^1, what about it?/%%";
    scr_regulartext();
    con= 11;
}
if(con == 11 && !instance_exists(OBJ_WRITER )) {
}
if(con == 11 && !instance_exists(OBJ_WRITER )) {
    with(rabbit) sprite_index= spr_royalguard_rabbit_l ;
    with(dragon) sprite_index= spr_royalguard_dragon_l ;
    con= 12;
    alarm[4]= 90;
}
if(con == 13) {
    with(rabbit) sprite_index= spr_royalguard_rabbit_d ;
    global.msg[0]= "* Bro.../";
    global.msg[1]= "* Are you thinkin..^1.&* What I\\'m thinkin?/";
    global.msg[2]= "* Bummer^1.&* This is^1, like..^1.&* Mega embarrassing./";
    global.msg[3]= "* We^1, like^1, actually&  totally have to kill&  you and stuff./%%";
    con= 14;
    scr_regulartext();
}
if(con == 14 && !instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 2) {
        with(rabbit) sprite_index= spr_royalguard_rabbit_r ;
    }
    if(OBJ_WRITER.stringno == 3) {
        with(rabbit) sprite_index= spr_royalguard_rabbit_l ;
    }
}
if(con == 14 && !instance_exists(OBJ_WRITER )) {
    global.battlegroup= 49;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    con= 15;
    alarm[4]= 33;
}
if(con == 16) {
    global.mercy= 0;
    global.interact= 0;
    caster_resume(global.currentsong);
    if(global.flag[12] == 1) global.flag[402]= 1;
    con= 17;
    global.plot= 146;
    // obj_npc_marker
    with(1363) instance_destroy();
}


/*  */
