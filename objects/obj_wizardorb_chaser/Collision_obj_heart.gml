if(active == 1 && heal == 0) scr_damagestandard(0, 3, 0, 0, 0);
if(heal == 1) {
    snd_play(snd_power );
    if(global.hp < global.maxhp) {
        global.hp+= 6;
        if(global.hp > global.maxhp) global.hp= global.maxhp;
    }
    if(global.flag[393] != 0) {
        caster_free(global.flag[393]);
        global.flag[393]= 0;
    }
    caster_resume(-3);
    global.turntimer= -1;
    global.mnfight= 3;
    global.myfight= -1;
    with(object_index) instance_destroy();
}

/* */
/*  */
