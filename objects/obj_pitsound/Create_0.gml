siner= 0;
global.flag[15]= 0;
event_user(0);
if(global.flag[7] == 1) exit;
else  {
    if(caster_is_playing(global.currentsong) != 1) {
        global.currentsong= 336;
        caster_loop(global.currentsong, 1, 1);
    }
    exit;
}

