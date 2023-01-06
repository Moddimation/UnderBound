moving= 0;
mr= 0;
ml= 0;
md= 0;
mu= 0;
if(con == 1) {
    global.interact= 1;
    if(instance_exists(obj_mainchara )) obj_mainchara.visible= 0;
}
if(canmove == 1) {
    if(keyboard_check(39)) mr= 1;
    if(keyboard_check(37)) ml= 1;
    if(keyboard_check(40)) md= 1;
    if(keyboard_check(38)) mu= 1;
}
if(x < x1 - 10 && con == 0) {
    caster_stop(beat);
    playing= -1;
    canmove= 0;
    con= 1;
}
if(x > x2 + 10 && con == 0) {
    caster_stop(beat);
    playing= -1;
    canmove= 0;
    con= 5;
}
if(con == 1) {
    ml= 1;
    if(x < x1 - 31) {
        con= 9;
        alarm[4]= 20;
    }
}
if(con == 5) {
    mr= 1;
    if(x > x2 + 30) {
        con= 9;
        alarm[4]= 20;
    }
}
if(con == 10) {
    mclock= 0;
    con= 11;
    alarm[4]= 4;
    mc.vspeed= 4;
}
if(con == 12) {
    snd_play(snd_noise );
    mc.vspeed= 0;
    con= 13;
    alarm[4]= 40;
}
if(con == 14) {
    if(x < room_width / 2) {
        obj_mainchara.x= x1 - 22;
        obj_mainchara.y= mc.y - 8;
    } else  {
        obj_mainchara.x= x2 + sprite_width + 2;
        obj_mainchara.y= mc.y - 8;
    }
    global.interact= 0;
    global.facing= 0;
    obj_mainchara.visible= 1;
    con= 15;
    caster_free(beat);
    with(mc) instance_destroy();
    instance_destroy();
}
if(mr == 1) {
    x++;
    moving= 1;
    if(GR == 0) GR= 1;
}
if(ml == 1) {
    x--;
    moving= 1;
    if(GR == 0) GR= 1;
}
if(md == 1 && y < y2) {
    y++;
    moving= 1;
    if(GR == 0) GR= 1;
}
if(mu == 1 && y > y1) {
    y--;
    moving= 1;
    if(GR == 0) GR= 1;
}
if(moving == 1) {
    if(playing == 0) caster_loop(beat, 0.8, 1);
    if(playing == 1) caster_resume(beat);
    playing= 2;
    GR+= 0.2;
}
if(moving == 0) {
    if(playing == 2) {
        caster_pause(beat);
        playing= 1;
    }
    GR= 0;
}
if(mclock == 1) {
    mc.x= x;
    mc.y= y + 5;
}


/*  */
