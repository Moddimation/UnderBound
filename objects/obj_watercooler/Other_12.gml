if(global.flag[353] > 0) {
    if(madepud == 0) {
        pud= instance_create(170, 63, obj_readable_room5 );
        pudspr= scr_marker(170, 60, 1869);
        pudspr.depth= 900000;
        madepud= 1;
    }
    if(global.flag[353] > 0) {
        if(global.flag[353] > 7) pudspr.image_index= 1;
        if(global.flag[353] > 15) pudspr.image_index= 2;
        if(global.flag[353] > 15 && global.flag[7] == 1)
            pudspr.image_index= 3;
    }
}

/* */
/*  */
