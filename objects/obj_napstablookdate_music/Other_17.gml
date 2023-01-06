if(songplaying == 1) {
    fadeout= 1;
    curvol= 1;
}
if(songplaying != 1) {
    songplaying= 1;
    curvol= 0.5;
    fadeout= 2;
    caster_loop(global.currentsong, 0.5, 1);
}

