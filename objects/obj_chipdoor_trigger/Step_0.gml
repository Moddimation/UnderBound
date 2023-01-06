if(con == 1) {
    global.interact= 1;
    // obj_chipdoor_l
    with(1278) event_user(1);
}
if(con == 2) {
    caster_loop(131, 1, 1);
    con= 3;
    alarm[4]= 50;
    scr_conshakeinit();
}
if(con == 3) {
    obj_chipdoor_l.x-= 0.4;
    obj_chipdoor_r.x+= 0.4;
    scr_conshake(1);
}
if(con == 4) {
    scr_conshakeend();
    caster_stop(131);
    caster_play(123, 1, 1);
    con= 5;
    alarm[4]= 30;
}
if(con == 6) {
    caster_resume(global.currentsong);
    if(room == 148) global.plot= 133;
    if(room == 171) global.plot= 164;
    global.interact= 0;
    instance_destroy();
}

