if(!instance_exists(blconwriter)) {
    if(global.flag[6] == 0) alarm[10]= 2;
    else  {
        destroyed= -1;
        with(blcon) instance_destroy();
        tr= instance_create(x, y, obj_torboss_2ndtime );
        visible= 0;
        conversation= -20;
    }
} else  alarm[9]= 2;

/* */
/*  */
