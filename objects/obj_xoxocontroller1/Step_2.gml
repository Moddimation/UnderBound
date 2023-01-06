if(vic == instance_number(975)) fvic= 1;
if(fvic == 0) vic= 0;
if(room == 63 && instance_exists(obj_mainchara ) && obj_mainchara.x > 540 && obj_mainchara.x < 560 && !instance_exists(obj_snowhat ))
    instance_create(obj_mainchara.x, obj_mainchara.y, obj_snowhat );

/* */
/*  */
