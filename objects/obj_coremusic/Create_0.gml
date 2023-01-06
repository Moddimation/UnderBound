global.flag[15]= 1;
event_user(0);
if(caster_is_playing(global.currentsong) != 1) {
    global.flag[15]= 1;
    if(global.flag[224] == 0) {
        global.currentsong= caster_load("music/core.ogg");
        caster_loop(global.currentsong, 0.85, 1);
        if(scr_murderlv() >= 12 && global.flag[27] == 0)
            caster_set_pitch(global.currentsong, 0.5);
    } else  {
        if(global.flag[27] == 0) {
            global.currentsong= caster_load("music/toomuch.ogg");
            caster_loop(global.currentsong, 1, 1);
        } else  {
            global.currentsong= caster_load("music/core.ogg");
            caster_loop(global.currentsong, 0.85, 1);
        }
    }
}

