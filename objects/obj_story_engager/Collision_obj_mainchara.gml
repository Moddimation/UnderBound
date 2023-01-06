if(global.flag[7] == 1) {
    instance_destroy();
    exit;
} else  {
    if(threshold == 17 && global.flag[492] >= 12) global.flag[450]= 17;
    if(global.flag[450] >= threshold || global.flag[493] >= 12)
        instance_destroy();
    else  {
        global.flag[450]= threshold;
        global.border= 3;
        global.flag[15]= 1;
        global.flag[16]= 1;
        SCR_BORDERSETUP();
        instance_create(0, 0, obj_battlerstory );
    }
    exit;
}

/* */
/*  */
