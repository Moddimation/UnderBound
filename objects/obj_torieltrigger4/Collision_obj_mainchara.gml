other.x= other.xprevious;
other.y= other.yprevious;
if(conversation == 0) {
    instance_create(0, 0, obj_musfadeout );
    global.plot= 9;
    global.interact= 1;
    tor= instance_create(obj_torinteractable6.x, obj_torinteractable6.y, obj_toroverworld4 );
    // obj_torinteractable6
    with(874) instance_destroy();
    // obj_toroverworld4
    with(862) path_start(path_torielwalk6 , 3, 0, path_action_stop );
    conversation= 3;
}

/* */
/*  */
