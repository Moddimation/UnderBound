if(songplaying == 2) {
    fadeout= 1;
    curvol= 1;
}
if(songplaying != 2 && fadeout == 0) {
    songplaying= 2;
    curvol= 0;
    fadeout= 2;
    if(caster_is_playing(napstachords) == 0)
        caster_loop(napstachords, 0, 0.4);
}

