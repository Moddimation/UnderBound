if(global.flag[483] == 1) mode= 2;
if(global.flag[483] >= 2) mode= 2;
if(mode == 0) {
    dist= caster_load("music/sfx_disturbing.ogg");
    caster_pause(global.currentsong);
    caster_loop(dist, 0.7, 0.7);
    pit= 1;
}

