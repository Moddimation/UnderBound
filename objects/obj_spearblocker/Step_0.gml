ender= 0;
buffer++;
if(refuse != 2) {
    if(global.turntimer < 1) {
        global.turntimer= -1;
        ender= 1;
    }
    if(obj_heart.sprite_index != 39) ender= 1;
    if(buffer > 30 && !instance_exists(obj_blockbullet ) && !instance_exists(obj_blockbullet2 ) && instance_exists(obj_greenspeargen ) && obj_greenspeargen.done == 1)
        ender= 1;
}
if(ender == 1) {
    // obj_blockbullet
    with(265) instance_destroy();
    // obj_blockbullet2
    with(266) instance_destroy();
    if(refuse == 0) global.mnfight= 4;
    if(refuse == 1) {
        if(lesson == 6 || lesson == 11 || lesson == 20) {
            // obj_undyneboss
            with(272) darkify= 3;
            // obj_undyneboss
            with(272) event_user(1);
        }
        if(lesson == -7 || lesson == -10 || lesson == -14) {
            // obj_undyne_ex
            with(282) {
                darkify= 3;
                event_user(1);
            }
        }
    }
    instance_destroy();
}

/* */
/*  */
