if(obj_mainchara.x > 220 && global.flag[421] == 0 && con == 0 && global.interact == 0) {
    global.interact= 1;
    global.flag[421]= 1;
    con= 5;
}
if(obj_mainchara.x > 360 && global.flag[421] == 1 && con == 0 && global.interact == 0) {
    global.interact= 1;
    global.flag[421]= 2;
    con= 5;
}
if(obj_mainchara.x > 480 && global.flag[421] == 2 && con == 0 && global.interact == 0) {
    global.interact= 1;
    global.flag[421]= 3;
    con= 5;
}
if(con == 5) {
    snd_play(snd_hurtloox );
    dm= instance_create(obj_mainchara.x + 40, 220, obj_darkman_actor );
    dm.vspeed= -3;
    con= 6;
}
if(con == 6 && dm.y < 130) {
    dm.vspeed= 0;
    con= 7;
    alarm[4]= 30;
    snd_play(snd_break2 );
}
if(con == 8) {
    global.mercy= 1;
    if(global.flag[421] == 1) global.battlegroup= 64;
    if(global.flag[421] == 2) global.battlegroup= 68;
    if(global.flag[421] == 3) global.battlegroup= 67;
    con= 9;
    global.flag[15]= 1;
    instance_create(0, 0, obj_battler );
    alarm[4]= 34;
}
if(con == 10) {
    global.mercy= 0;
    global.interact= 0;
    // obj_darkman_actor
    with(1260) instance_destroy();
    con= 0;
}

/* */
/*  */
