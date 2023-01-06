con= 0;
if(global.flag[7] == 1 && global.flag[510] == 2 && caster_is_playing(global.currentsong) != 1 && global.flag[7] == 1) {
    global.currentsong= caster_load("music/reunited.ogg");
    caster_loop(global.currentsong, 1, 1);
    instance_destroy();
    exit;
} else  {
    if(global.flag[510] == 0 || global.flag[510] == 2) {
        instance_destroy();
        exit;
    } else  {
        global.hp= global.maxhp;
        global.currentsong= caster_load("music/reunited.ogg");
        global.flag[7]= 1;
        global.flag[287]= 1;
        global.flag[509]= 0;
        global.plot= 999;
        // obj_toriel_friendc
        with(1311) direction= 0;
        // obj_sans_friendc
        with(1312) direction= 0;
        // obj_asgore_friendc
        with(1316) direction= 180;
        // obj_alphys_friendc
        with(1315) direction= 180;
        global.interact= 1;
        con= 0.1;
        alarm[4]= 140;
        blk= 1;
        d_blk= 1;
        exit;
    }
}

