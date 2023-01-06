if(instance_exists(obj_purpleheart )) {
    op= 363;
    if(hspeed > 0 && x > op.xmid + op.xlen * 2)
        instance_destroy();
    if(hspeed < 0 && x < op.xmid - op.xlen * 2)
        instance_destroy();
} else  instance_destroy();

/* */
/*  */
