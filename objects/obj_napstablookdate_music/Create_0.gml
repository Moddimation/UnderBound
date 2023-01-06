if(global.flag[7] == 1) {
    instance_destroy();
    exit;
} else  {
    if(instance_number(object_index) < 2) {
        spoopy= caster_load("music/spoopy.ogg");
        spoopywave= caster_load("music/spoopy_wave.ogg");
        spoopyholiday= caster_load("music/spoopy_holiday.ogg");
        napstachords= caster_load("music/napstachords.ogg");
    } else  instance_destroy();
    songplaying= 0;
    fadeout= 0;
    curvol= 0;
    con= 0;
    exit;
}

