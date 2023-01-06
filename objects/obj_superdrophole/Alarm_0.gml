global.interact= 4;
global.phasing= 1;
if(room == 24) global.flag[51]++;
alarm[1]= 1;
alarm[2]= 2;
if(sd_noise == 0) {
    snd_play(snd_fall2 );
    // obj_superdrophole
    with(978) sd_noise= 1;
}

/* */
/*  */
