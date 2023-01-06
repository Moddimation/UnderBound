if(global.phasing == 0 && global.interact == 0) {
    global.interact= 4;
    global.phasing= 1;
    alarm[0]= 10;
    ns= 1;
    instance_create(other.x, other.y + 20, obj_cosmetichole );
    if(instance_number(921) > 10 && room == 16) {
        ns= 0;
        snd_play(snd_hero );
        // obj_cosmetichole
        with(921) destroyme= 1;
        global.interact= 0;
        global.phasing= 0;
        instance_destroy();
    }
    if(instance_number(921) >= 1000) {
        // obj_cosmetichole
        with(921) destroyme= 1;
        instance_create(other.x, other.y + 20, obj_cosmetichole );
    }
    if(ns == 1) snd_play(snd_noise );
}


/*  */
