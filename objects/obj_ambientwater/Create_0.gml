event_user(0);
played= 0;
if(caster_is_playing(global.currentsong) != 1) {
    qr= 0;
    if(global.plot > 105 && room == 84) qr= 1;
    if(qr == 0) {
        global.currentsong= caster_load("music/ambientwater.ogg");
        caster_loop(global.currentsong, 0.8, 1);
    } else  {
        if(global.flag[223] == 0) {
            global.currentsong= caster_load("music/waterfall.ogg");
            caster_loop(global.currentsong, 0.8, 1);
            if(scr_murderlv() >= 8 && global.flag[27] == 0)
                caster_set_pitch(global.currentsong, 0.13);
        } else  {
            if(global.flag[27] == 0) {
                global.currentsong= caster_load("music/toomuch.ogg");
                caster_loop(global.currentsong, 1, 1);
            } else  {
                global.currentsong= caster_load("music/waterfall.ogg");
                caster_loop(global.currentsong, 0.8, 1);
            }
        }
    }
}

