if(image_index >= 5 && image_index < 6) {
    if(cutsdone == 0) {
        cutsfxN++;
        cutsfxA[cutsfxN]= cutsfx;
        cutsfxA[cutsfxN - 1]= cutsfx;
        if(cutsfxN > 1) caster_stop(cutsfxA[cutsfxN - 1]);
        caster_play(cutsfxA[cutsfxN], 0.8, 1);
        cutsdone= 1;
    }
    if(type[curamt] == 1 && hitted == 0) {
        hit= 1;
        if(abs(obj_heart.x - obj_heart.xprevious) < 0.1) hit= 0;
        if(!keyboard_check(37) && !keyboard_check(39) && !keyboard_check(38) && !keyboard_check(40))
            hit= 0;
        if(hit == 1) {
            event_user(0);
            hitted= 1;
        }
    }
    if(type[curamt] == 2 && hitted == 0) {
        hit= 1;
        if(abs(obj_heart.x - obj_heart.xprevious) > 0.1) hit= 0;
        if(keyboard_check_pressed(37) || keyboard_check_pressed(39) || keyboard_check_pressed(38) || keyboard_check_pressed(40))
            hit= 0;
        if(hit == 1) {
            event_user(0);
            hitted= 1;
        }
    }
    hitted= 2;
} else  cutsdone= 0;


/*  */
