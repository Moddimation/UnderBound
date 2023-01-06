fansfx= caster_load("music/deeploop2.ogg");
if(global.flag[490] == 1) {
    if(room == 260) caster_loop(fansfx, 0.5, 3);
    if(room == 258) caster_loop(fansfx, 0.3, 3);
}
if(room == 260) caster_pause(global.currentsong);

