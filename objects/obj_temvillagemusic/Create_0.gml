event_user(0);
if(global.flag[7] == 1) {
    instance_destroy();
    exit;
} else  {
    played= 0;
    if(caster_is_playing(global.currentsong) != 1 && global.flag[94] == 0) {
        if(global.flag[223] == 0) {
            global.currentsong= caster_load("music/temvillage.ogg");
            caster_loop(global.currentsong, 1, 1);
            if(scr_murderlv() >= 10 && global.flag[27] == 0)
                caster_set_pitch(global.currentsong, 0.5);
        } else  {
            if(global.flag[27] == 0) {
                global.currentsong= caster_load("music/toomuch.ogg");
                caster_loop(global.currentsong, 1, 1);
            } else  {
                global.currentsong= caster_load("music/temvillage.ogg");
                caster_loop(global.currentsong, 1, 1);
            }
        }
    }
    exit;
}

