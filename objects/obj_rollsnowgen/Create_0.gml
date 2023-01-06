murder= 0;
if(global.flag[203] >= 16) murder= 1;
if(murder == 1) {
    instance_destroy();
    exit;
} else  {
    instance_create(x, y, obj_rollsnow );
    exit;
}

/* */
/*  */
