event_user(0);
if(global.flag[7] == 0) {
    caster_free(global.currentsong);
    global.currentsong= caster_load("music/intronoise.ogg");
    caster_loop(global.currentsong, 0.4, 0.3);
}

