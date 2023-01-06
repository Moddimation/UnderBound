event_user(0);
played= 0;
if(caster_is_playing(global.currentsong) != 1) {
    if(global.plot <= 35) {
        global.currentsong= caster_load("music/tone2.ogg");
        caster_loop(global.currentsong, 0.2, 1);
        instance_create(0, 0, obj_musfadein );
    }
    if(global.plot > 35) {
        if(global.flag[222] == 0) {
            global.currentsong= caster_load("music/snowy.ogg");
            caster_loop(global.currentsong, 1, 0.95);
            if(scr_murderlv() >= 2 && global.flag[27] == 0)
                caster_set_pitch(global.currentsong, 0.4);
        } else  {
            if(global.flag[27] == 0) {
                global.currentsong= caster_load("music/toomuch.ogg");
                caster_loop(global.currentsong, 1, 1);
            } else  {
                global.currentsong= caster_load("music/snowy.ogg");
                caster_loop(global.currentsong, 1, 0.95);
            }
        }
    }
}

/* */
/*  */
