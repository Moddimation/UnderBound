if(d == 0) scr_depth();
if(fun == 0) {
    if(instance_exists(obj_face_undyne ))
        image_index= obj_face_undyne.image_index;
    else  {
        myinteract= 0;
        if(speed == 0 && path_speed == 0) {
            image_index= 0;
            image_speed= 0;
        }
        if(speed > 0) image_speed= 0.2;
        if(path_speed > 0) image_speed= 0.2;
        if(path_position == 1) {
            image_index= 0;
            image_speed= 0;
        }
        if(npcdir == 1) scr_npcdir(0);
    }
}
if(global.flag[20] > 0) {
    if(global.flag[20] == 1) sprite_index= spr_undyne_besties ;
    if(global.flag[20] == 2) sprite_index= spr_undyne_youremine ;
    if(global.flag[20] == 3) sprite_index= spr_undyne_polite ;
    if(global.faceemotion == 9) sprite_index= spr_undyne_polite ;
}

/* */
/*  */
