if(global.turntimer < 4) {
    if(instance_exists(obj_undyne_ex ) && obj_undyne_ex.orderb == 4) {
        global.turntimer= 30;
        // obj_undyne_ex
        with(282) alarm[11]= 40;
        if(obj_undyne_ex.order == 11) obj_undyne_ex.lesson= -11;
        // obj_undyne_ex
        with(282) event_user(1);
    }
    // obj_rotspeargen
    with(277) instance_destroy();
    // obj_rotspear
    with(278) {
        deactivate= 1;
        fade= 1;
    }
    instance_destroy();
}

/* */
/*  */
