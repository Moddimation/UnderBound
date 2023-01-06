if(room == 152) {
    idealammo= 2;
    if(active == 1) alarm[5]= 1;
    gridl= 120;
    gridr= 180;
    gridu= 60;
    gridd= 120;
    instance_create(140, 60, obj_blackbox_o );
    instance_create(140, 100, obj_blackbox_o );
}
if(room == 150) {
    idealammo= 2;
    if(active == 1) alarm[5]= 1;
    gridl= 120;
    gridr= 200;
    gridu= 40;
    gridd= 120;
    instance_create(120, 60, obj_blackbox_o );
    instance_create(140, 60, obj_blackbox_o );
    instance_create(140, 100, obj_blackbox_o );
    instance_create(160, 60, obj_blackbox_o );
    instance_create(160, 80, obj_blackbox_o );
    instance_create(160, 100, obj_blackbox_o );
}
if(room == 173) {
    idealammo= 1;
    if(active == 1) alarm[5]= 1;
    gridl= 120;
    gridr= 220;
    gridu= 40;
    gridd= 120;
    instance_create(180, 40, obj_blackbox_o );
    instance_create(180, 60, obj_blackbox_o );
    instance_create(180, 80, obj_blackbox_o );
    instance_create(180, 100, obj_blackbox_o );
}
if(room == 175) {
    idealammo= 1;
    if(active == 1) alarm[5]= 1;
    gridl= 120;
    gridr= 220;
    gridu= 20;
    gridd= 120;
    instance_create(180, 20, obj_blackbox_o );
    instance_create(140, 40, obj_blackbox_o );
    instance_create(160, 60, obj_blackbox_o );
    instance_create(200, 60, obj_blackbox_o );
    instance_create(140, 80, obj_blackbox_o );
    instance_create(180, 80, obj_blackbox_o );
}
if(room == 205) {
    idealammo= 2;
    if(active == 1) alarm[5]= 1;
    gridl= 120;
    gridr= 220;
    gridu= 20;
    gridd= 120;
    instance_create(160, 40, obj_blackbox_o );
    instance_create(160, 80, obj_blackbox_o );
    instance_create(140, 60, obj_blackbox_o );
    instance_create(160, 60, obj_blackbox_o );
    instance_create(180, 60, obj_blackbox_o );
    instance_create(200, 60, obj_blackbox_o );
}
if(win > 0) {
    // obj_blackbox_o
    with(1242) instance_destroy();
    // obj_targetguy
    with(1239) instance_destroy();
}

/* */
/*  */
