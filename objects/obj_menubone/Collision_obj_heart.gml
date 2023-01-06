if(obj_sansb_body.damageturn == 0) {
    if(global.hp >= 60) global.km++;
    // obj_sansb_body
    with(517) event_user(2);
    if(global.hp < 1) global.hp= 1;
}

