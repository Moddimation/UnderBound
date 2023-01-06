if(instance_exists(obj_sansb_body )) {
    reduce= 0;
    if(obj_sansb_body.lac < 4) {
        if(obj_sansb_body.damageturn == 0) {
            global.km+= innate_karma;
            if(innate_karma >= 2) innage_karma= 1;
            if(innate_karma >= 3) innate_karma= 2;
            if(innate_karma >= 5) innate_karma= 3;
            // obj_sansb_body
            with(517) event_user(2);
        }
    } else  {
        if(global.hp >= 60) {
            global.km+= innate_karma;
            if(innate_karma >= 2) innage_karma= 1;
            if(innate_karma >= 3) innate_karma= 2;
            if(innate_karma >= 5) innate_karma= 3;
            // obj_sansb_body
            with(517) event_user(2);
        } else  {
            if(global.hp >= 30) {
                global.km++;
                // obj_sansb_body
                with(517) event_user(2);
            } else  {
                // obj_sansb_body
                with(517) event_user(2);
            }
        }
    }
}

/* */
/*  */
