if(con == 50) {
    obj_labfan.sprite_index= spr_wallfan_on ;
    snd_play(snd_noise );
    global.interact= 1;
    // obj_labfog
    with(1555) caster_loop(fansfx, 0.5, 3);
    con= 51;
    alarm[4]= 90;
}
if(con == 51) {
    global.interact= 1;
    // obj_labfog
    with(1555) image_alpha-= 0.01;
}
if(con == 52) con= 1;
if(con == 1) {
    tr= caster_load("music/sfx_generate.ogg");
    caster_play(tr, 0.8, 0.8);
    global.interact= 1;
    global.facing= 3;
    drawball= 1;
    alarm[5]= 2;
    alarm[6]= 10;
    con= 2;
}
if(con == 3) {
    con= 4;
    alarm[4]= 30;
}
if(con == 5) {
    y+= 2;
    if(y >= 149) {
        y= 150;
        con= 5.9;
        alarm[4]= 30;
    }
}
if(con == 6.9) {
    caster_play(tr, 0.8, 0.8);
    con= 7;
}
if(con == 7) {
    banim+= 0.334;
    if(banim >= 5) {
        banim= 5;
        con= 8;
        alarm[4]= 30;
    }
}
if(con == 9) {
    yl= caster_load("music/sfx_yowl.ogg");
    global.interact= 0;
    global.flag[17]= 1;
    alarm[7]= 20;
    con= 10;
}
if(con == 10 && x > obj_mainchara.x - 25) con= 11;
if(con == 11) {
    caster_free(tr);
    caster_free(yl);
    global.battlegroup= 86;
    global.mercy= 1;
    global.border= 0;
    global.flag[16]= 0;
    instance_create(0, 0, obj_battler );
    con= 12;
    alarm[4]= 32;
}
if(con == 13) {
    global.flag[17]= 0;
    global.interact= 0;
    // obj_mainchara
    with(1570) uncan= 0;
    global.mercy= 0;
    myinteract= 0;
    global.flag[490]= 1;
    scr_tempsave();
    instance_destroy();
}
if(drawball == 1)
    draw_sprite_ext(sprite_index, floor(banim), x, y, size, size, 0, 16777215, 1);


/*  */
