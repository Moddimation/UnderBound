image_yscale= 999;
conversation= 0;
if(scr_murderlv() >= 4 && global.flag[27] == 0) {
    global.flag[62]= 1;
    instance_destroy();
    exit;
} else  {
    if(global.flag[62] > 0) instance_destroy();
    else  {
        papyrus= instance_create(450, 90, obj_papyrus_actor );
        papyrus.sprite_index= papyrus.rtsprite;
    }
    exit;
}

/* */
/*  */
