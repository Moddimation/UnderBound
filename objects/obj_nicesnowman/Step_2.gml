if(dt == 1 && !instance_exists(OBJ_WRITER )) {
    dt= 0;
    global.flag[253]++;
}
if(global.flag[253] == 1) {
    sprite_index= spr_sadsnowman_d1 ;
    image_index= 0;
}
if(global.flag[253] == 2) {
    sprite_index= spr_sadsnowman_d1 ;
    image_index= 1;
}
if(global.flag[253] >= 3) {
    sprite_index= spr_sadsnowman_d1 ;
    image_index= 2;
}

/* */
/*  */
