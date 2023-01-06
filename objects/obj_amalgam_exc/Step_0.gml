if(con == -1 && obj_mainchara.x > x && global.interact == 0) {
    global.facing= 2;
    caster_pause(global.currentsong);
    global.interact= 1;
    visible= 1;
    snd_play(snd_b );
    x= obj_mainchara.x + 6;
    y= obj_mainchara.y - 16;
    con= 0;
}
if(con == 0) {
    global.facing= 2;
    tr= caster_load("music/sfx_generate.ogg");
    con= 0.9;
    alarm[4]= 55;
}
if(con == 0.9) global.facing= 2;
if(con == 1.9) {
    caster_play(tr, 0.8, 1.2);
    con= 2;
}
if(con == 2) {
    image_speed= 0.25;
    if(image_index >= 3) {
        image_speed= 0;
        con= 2.9;
        alarm[4]= 40;
    }
}
if(con == 3.9) {
    caster_play(tr, 0.9, 0.7);
    con= 4;
}
if(con == 4) {
    image_speed= 0.5;
    if(image_index >= 11) {
        image_speed= 0;
        con= 5;
        alarm[4]= 50;
    }
}
if(con == 6) {
    caster_free(tr);
    global.battlegroup= 83;
    global.mercy= 1;
    global.border= 0;
    global.flag[16]= 0;
    instance_create(0, 0, obj_battler );
    con= 7;
    alarm[4]= 32;
}
if(con == 8) {
    global.interact= 0;
    global.mercy= 0;
    caster_resume(global.currentsong);
    myinteract= 0;
    global.flag[488]= 1;
    scr_tempsave();
    instance_destroy();
}


/*  */
