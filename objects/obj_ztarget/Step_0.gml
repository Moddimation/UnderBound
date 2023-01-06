if(priority < 0) priority= 0;
if(x < fatalx) {
    image_alpha-= 0.2;
    if(image_alpha < 0.1) {
        image_alpha= 0;
        if(instance_exists(obj_targetparent )) {
            // obj_targetparent
            with(719) priority--;
        }
        instance_destroy();
        priority= 999999;
        exit;
    }
}
if(priority == 0) {
    image_index= 0;
    if(keyboard_multicheck_pressed(0)) {
        image_alpha= 1;
        image_speed= 0.5;
        obj_battlethingparent.check= id;
        // obj_battlethingparent
        with(718) event_user(3);
        keyboard_clear(13);
        keyboard_clear(90);
        // obj_targetparent
        with(719) event_user(1);
    }
}

/* */
/*  */
