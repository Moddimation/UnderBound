if(frame == 0) {
    // obj_asgore_lastcutscene
    with(493)
        specbullet= instance_create(obj_spinbullet_lastgen.x, obj_spinbullet_lastgen.y, obj_spinbullet_last );
}
if(frame > 0) instance_create(x, y, obj_spinbullet_last );
frame++;
direction-= 10;
snd_play(snd_chug );

/* */
/*  */
