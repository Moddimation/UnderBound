instance_create(240, 70, obj_toroverworld3 );
if(global.plot < 19) {
    // obj_toroverworld3
    with(861) path_start(path_torielwalkhouse2 , 4, 0, path_action_stop );
}
if(global.plot > 18) {
    // obj_toroverworld3
    with(861) path_start(path_torielwalkhouse3 , 4, 0, path_action_stop );
}
global.flag[45]= 0;

/* */
/*  */
