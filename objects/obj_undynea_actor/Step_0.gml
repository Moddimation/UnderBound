if(d == 0) scr_depth();
if(fun == 0) {
    myinteract= 0;
    if(speed == 0) {
        image_index= 0;
        image_speed= 0;
    }
    if(speed > 0) {
        image_speed= 0.2;
        if(image_index == 1 || image_index == 3) snd_play(snd_undynestep );
    }
}
if(fun == 3 && (image_index == 1 || image_index == 3))
    snd_play(snd_undynestep );
if(global.flag[20] == 5) sprite_index= spr_undynea_starku ;
if(global.flag[20] == 6) sprite_index= spr_undynea_starkl ;

/* */
/*  */
