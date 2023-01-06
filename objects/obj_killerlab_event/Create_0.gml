image_yscale= 10;
if(global.plot > 159) {
    instance_destroy();
    exit;
} else  {
    if(scr_murderlv() < 12) instance_destroy();
    else  {
        con= 0;
        global.flag[20]= 0;
        mett= instance_create(820, 100, obj_mettaton_actor );
        mett.image_speed= 0.125;
    }
    exit;
}


/*  */
