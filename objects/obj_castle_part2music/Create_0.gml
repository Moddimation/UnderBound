event_user(0);
played= 0;
if(caster_is_playing(global.currentsong) != 1 && global.flag[493] < 12) {
    if(scr_murderlv() < 16) {
        global.currentsong= caster_load("music/endarea_partb.ogg");
        caster_play(global.currentsong, 1, 0.85);
    } else  {
        if(global.flag[450] < 17) {
            global.currentsong= caster_load("music/smallshock.ogg");
            caster_loop(global.currentsong, 1, 0.6);
        } else  {
            global.currentsong= caster_load("music/prebattle1.ogg");
            caster_loop(global.currentsong, 1, 0.2);
        }
    }
}

