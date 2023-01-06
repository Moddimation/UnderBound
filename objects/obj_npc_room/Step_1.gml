scr_depth(0, 0, 0, 0, 0);
scr_npc_anim();
if(room == 85 && !instance_exists(OBJ_WRITER ) && global.flag[105] == 1) {
    global.interact= 0;
    instance_destroy();
}
if(room == 98 && !instance_exists(OBJ_WRITER ) && global.flag[106] == 1) {
    global.interact= 0;
    instance_destroy();
}
if(room == 146 && !instance_exists(OBJ_WRITER ) && global.flag[110] == 1) {
    global.interact= 0;
    instance_destroy();
}
if(room == 161 && !instance_exists(OBJ_WRITER ) && global.flag[111] == 1) {
    global.interact= 0;
    instance_destroy();
}
if(room == 224) {
    if(x < -10 + room_width / 2) {
        if(global.flag[114] == 1) image_index= 1;
        else  image_index= 0;
    }
    if(x >= -10 + room_width / 2) {
        if(global.flag[115] == 1) image_index= 1;
        else  image_index= 0;
    }
}
if(sprite_index == 1680) image_speed= 0.2;
if(sprite_index == 1962) image_speed= 0.2;

/* */
/*  */
