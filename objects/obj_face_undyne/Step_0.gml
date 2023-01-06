sprite_index= u[global.faceemotion];
if(global.faceemotion == 1 && global.flag[390] == 2)
    sprite_index= spr_face_undyne1_3 ;
if(global.faceemotion == 2 && global.flag[20] == 9)
    sprite_index= spr_face_undyne2_2 ;
if(global.faceemotion == 9 && global.flag[390] == 1)
    sprite_index= spr_face_undyne9_2 ;
if(global.faceemotion == 9 && global.flag[390] == 2)
    sprite_index= spr_face_undyne9_3 ;
if(instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.halt != 0) {
        image_speed= 0;
        image_index= 0;
    } else  image_speed= 0.25;
}
if(global.facechoice == 0) instance_destroy();


/*  */
