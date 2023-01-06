if(ended == 0 && global.flag[420] == 0) {
    timer++;
    if(timer > 1800 && global.interact == 0) {
        with(ff) {
            with(solid1) instance_destroy();
        }
        ended= 5;
        snd_play(snd_impact );
        global.flag[420]= 1;
    }
}
if(ended == 5) {
    with(ff) image_alpha-= 0.1;
    if(ff.image_alpha < 0.1) {
        with(ff) instance_destroy();
        ended= 6;
    }
}

/* */
/*  */
