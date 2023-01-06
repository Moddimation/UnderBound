event_user(0);
played= 0;
if(caster_is_playing(global.currentsong) != 1) {
    if(room == 211) {
        global.currentsong= caster_load("music/drone.ogg");
        caster_loop(global.currentsong, 0.5, 0.5);
        exit;
    } else  {
        if(global.plot > 125 && global.flag[493] < 11) {
            if(scr_murderlv() < 12) {
                global.currentsong= caster_load("music/lab.ogg");
                caster_loop(global.currentsong, 1, 1);
            } else  {
                global.currentsong= caster_load("music/drone.ogg");
                caster_loop(global.currentsong, 0.5, 0.5);
            }
        } else  {
            global.currentsong= caster_load("music/drone.ogg");
            caster_loop(global.currentsong, 0.5, 0.5);
        }
    }
}

