if(instance_exists(obj_mainchara )) {
    if((obj_mainchara.x < 440 || obj_mainchara.x > 460) && obj_mainchara.y > 526)
        obj_mainchara.y= 526;
    if(obj_mainchara.x > 170 && obj_mainchara.y > 130 && obj_mainchara.x < room_width - 170 && obj_mainchara.y < room_height - 160 && lock == 0) {
        tone= caster_load("music/creepy_ambience.ogg");
        tone1= caster_loop(385, 0, 1.1);
        tone2= caster_loop(385, 0, 1);
        tone3= caster_loop(385, 0, 0.9);
        tonevol= 0;
        lock= 1;
    } else  {
        if(obj_mainchara.x < 180) obj_mainchara.x= 180;
        if(obj_mainchara.x > room_width - 180)
            obj_mainchara.x= room_width - 180;
        if(obj_mainchara.y < 170) obj_mainchara.y= 170;
    }
    if(lock == 1) {
        if(locktime >= 250) {
            tonevol= (locktime - 250) / 250;
            caster_set_volume(385, tonevol);
        }
        obj_mainchara.x= room_width / 2;
        obj_mainchara.y= room_height / 2;
        if(obj_mainchara.moving == 1) locktime++;
        if(locktime >= 550) {
            caster_free(tone);
            snd_play(snd_noise );
            obj_mainchara.visible= 0;
            global.interact= 1;
            alarm[4]= 90;
            lock= 2;
        }
    }
}


/*  */
