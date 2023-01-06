if(green == 0) scr_damagestandard_x();
if(green == 1) {
    instance_destroy();
    snd_play(snd_heal_c );
    if(global.hp < global.maxhp) global.hp++;
    // obj_vegetoid
    with(208) {
        if(eat == 1) {
            ate= 1;
            mercymod= 90;
        }
    }
    // obj_parsnik
    with(597) {
        if(eat == 1) {
            ate= 1;
            mercymod= 90;
        }
    }
}


/*  */
