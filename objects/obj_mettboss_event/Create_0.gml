tile_layer_hide(999995);
global.flag[15]= 0;
if(global.plot > 197) {
    instance_destroy();
    exit;
} else  {
    if(global.plot == 193) {
        instance_create(0, 0, obj_mettdestroyed_event );
        instance_destroy();
        exit;
    } else  {
        murder= 0;
        if(scr_murderlv() >= 12) murder= 1;
        global.flag[20]= 6;
        con= 0;
        mett= instance_create(146, 705, obj_mettaton_actor );
        mett.image_speed= 0;
        bl= 0;
        drawblack= 0;
        bly= 0;
        skip= 0;
        sixty= scr_marker(60, 680, 1964);
        sixty.depth= 999995;
        sixty.image_alpha= 0;
        sixtyflash= 0;
        sixtyon= 0;
        s_siner= 0;
        x_maroon= merge_color(0, 128, 0.35);
        exit;
    }
}

/* */
/*  */
