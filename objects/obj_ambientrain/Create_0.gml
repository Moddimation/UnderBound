event_user(0);
if(global.flag[7] == 1) {
    instance_destroy();
    exit;
} else  {
    played= 0;
    ok= 0;
    if(room == 104 || room == 105 || room == 106 || room == 107 || room == 108 || room == 109 || room == 110)
        ok= 1;
    if(global.flag[360] == 0 && ok == 1) {
        global.flag[361]= 0.5;
        global.flag[362]= 0;
        if(room == 104 || room == 110) {
            global.flag[361]= 0;
            global.flag[362]= 0.5;
        }
        global.flag[363]= caster_load("music/rain.ogg");
        global.flag[364]= caster_load("music/rain_deep.ogg");
        global.currentsong= -999;
        caster_loop(global.flag[363], global.flag[361], 0.9);
        caster_loop(global.flag[364], global.flag[362], 0.9);
        global.flag[360]= 1;
    }
    exit;
}

