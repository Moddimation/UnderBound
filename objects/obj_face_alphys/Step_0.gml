if(global.flag[430] == 0) sprite_index= u[global.faceemotion];
if(instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.halt != 0) {
        image_speed= 0;
        image_index= 0;
    } else  image_speed= 0.25;
}
if(global.flag[430] == 1)
    sprite_index= u[global.faceemotion + 10];
if(global.flag[430] == 2)
    sprite_index= u[global.faceemotion + 15];
if(global.flag[430] == 3) {
    sprite_index= u[global.faceemotion];
    if(global.faceemotion == 7) sprite_index= u[24];
    if(global.faceemotion == 0) sprite_index= u[25];
}
if(global.flag[7] == 1) {
    sprite_index= u[global.faceemotion];
    if(global.faceemotion == 1) sprite_index= spr_alphysface_laugh ;
    if(global.faceemotion == 2) sprite_index= spr_alphysface_smarmy ;
    if(global.faceemotion == 8) sprite_index= spr_alphysface_2 ;
    if(global.faceemotion == 9) sprite_index= u[24];
}
if(global.flag[430] == 4) {
    image_index= global.faceemotion;
    sprite_index= spr_alphysface_new ;
}


/*  */
