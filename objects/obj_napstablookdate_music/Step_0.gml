if(fadeout == 1) {
    curvol-= 0.02;
    if(songplaying == 2) curvol+= 0.015;
    if(curvol <= 0) curvol= 0;
    if(songplaying == 1)
        caster_set_volume(global.currentsong, curvol);
    if(songplaying == 2)
        caster_set_volume(napstachords, curvol);
    if(songplaying == 3) caster_set_volume(spoopy, curvol);
    if(songplaying == 4) caster_set_volume(spoopywave, curvol);
    if(songplaying == 5)
        caster_set_volume(spoopyholiday, curvol);
    if(curvol == 0) {
        if(songplaying == 1) caster_stop(global.currentsong);
        if(songplaying == 2) caster_stop(napstachords);
        if(songplaying == 3) caster_stop(spoopy);
        if(songplaying == 4) caster_stop(spoopywave);
        if(songplaying == 5) caster_stop(spoopyholiday);
        songplaying= 0;
        fadeout= 0;
    }
}
if(fadeout == 2) {
    curvol+= 0.02;
    if(songplaying == 2) curvol-= 0.015;
    if(curvol >= 1) curvol= 1;
    if(songplaying == 1)
        caster_set_volume(global.currentsong, curvol);
    if(songplaying == 2)
        caster_set_volume(napstachords, curvol);
    if(songplaying == 3) caster_set_volume(spoopy, curvol);
    if(songplaying == 4) caster_set_volume(spoopywave, curvol);
    if(songplaying == 5)
        caster_set_volume(spoopyholiday, curvol);
    if(curvol == 1) fadeout= 0;
}
if(con == 1) {
    global.flag[94]= 1;
    if(songplaying == 1) caster_stop(global.currentsong);
    if(songplaying == 2) caster_stop(napstachords);
    if(songplaying == 3) caster_stop(spoopy);
    if(songplaying == 4) caster_stop(spoopywave);
    if(songplaying == 5) caster_stop(spoopyholiday);
    caster_loop(spoopy, 1, 1);
    songplaying= 3;
    curvol= 1;
    con= 0;
}
if(con == 2) {
    global.flag[94]= 0;
    if(songplaying == 1) caster_stop(global.currentsong);
    if(songplaying == 2) caster_stop(napstachords);
    if(songplaying == 3) caster_stop(spoopy);
    if(songplaying == 4) caster_stop(spoopywave);
    if(songplaying == 5) caster_stop(spoopyholiday);
    caster_loop(global.currentsong, 1, 1);
    songplaying= 1;
    curvol= 1;
    con= 0;
}
if(con == 3) {
    global.flag[94]= 2;
    if(songplaying == 1) caster_stop(global.currentsong);
    if(songplaying == 2) caster_stop(napstachords);
    if(songplaying == 3) caster_stop(spoopy);
    if(songplaying == 4) caster_stop(spoopywave);
    if(songplaying == 5) caster_stop(spoopyholiday);
    caster_loop(spoopywave, 1, 1);
    songplaying= 4;
    curvol= 1;
    con= 0;
}
if(con == 4) {
    global.flag[94]= 3;
    if(songplaying == 1) caster_stop(global.currentsong);
    if(songplaying == 2) caster_stop(napstachords);
    if(songplaying == 3) caster_stop(spoopy);
    if(songplaying == 4) caster_stop(spoopywave);
    if(songplaying == 5) caster_stop(spoopyholiday);
    caster_loop(spoopyholiday, 1, 1);
    songplaying= 5;
    curvol= 1;
    con= 0;
}

