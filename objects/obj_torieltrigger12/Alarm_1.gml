if(flames == 0)
    instance_create(obj_toroverworld3.x, obj_toroverworld3.y, obj_pbflame );
if(flames > 3) {
    caster_free(-3);
    room_persistent= 1;
    alarm[2]= 34;
    global.battlegroup= 22;
    instance_create(0, 0, obj_battler );
} else  {
    caster_stop(global.currentsong);
    flames++;
    snd_play(snd_noise );
    obj_pbflame.image_alpha+= 0.25;
    alarm[1]= 10;
    if(flames == 4) alarm[1]= 30;
}

/* */
/*  */
