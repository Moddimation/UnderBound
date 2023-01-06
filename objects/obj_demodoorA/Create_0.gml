touched= 0;
if(room == 43) {
    if(global.flag[7] == 1) {
        instance_create(x, y, obj_door_s_musfade );
        instance_destroy();
    } else  {
        instance_create(140, 400, obj_solidsmall );
        instance_create(160, 400, obj_solidsmall );
    }
}


/*  */
