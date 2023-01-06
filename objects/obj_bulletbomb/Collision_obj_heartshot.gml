if(visible == 1 && shot == 0) {
    playdo= 1;
    myloop= audio_play_sound(127, 40, 1);
    // other
    with(-2) instance_destroy();
    shot= 1;
    nowx= x;
    nowy= y;
}
if(instance_exists(obj_ratingsmaster ))
    global.ratings+= 15;


/*  */
