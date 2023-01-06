siner++;
if(global.turntimer <= 0) {
    // obj_mettb_body
    with(408) bodyopen= 0;
    if(global.attacktype == 48) {
        // obj_mettb_body
        with(408) event_user(3);
    }
    global.turntimer= -1;
    if(last == 0) global.mnfight= 3;
    instance_destroy();
}
if(specialtimer == 1 && !instance_exists(obj_mettfodder ) && global.turntimer > 9)
    global.turntimer= 9;
if(specialtimer == 2 && !instance_exists(obj_plusbomb ) && global.turntimer > 9)
    global.turntimer= 9;

/* */
/*  */
