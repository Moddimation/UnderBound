if(conversation == 1 && instance_exists(obj_toroverworld4 )) {
    tor.facing= 0;
    global.msc= 211;
    global.typer= 4;
    global.facechoice= 1;
    instance_create(0, 0, obj_dialoguer );
    conversation= 1.5;
}
if(conversation == 1.5 && !instance_exists(obj_dialoguer )) {
    with(tor) path_start(path_torielwalk4 , 4, 0, path_action_stop );
    global.interact= 0;
    conversation= 2;
}
if(conversation == 2 && instance_exists(obj_toroverworld4 ) && obj_toroverworld4.path_position == 1) {
    tor2= instance_create(tor.x, tor.y, obj_torinteractable4 );
    with(tor2) direction= 270;
    // obj_toroverworld4
    with(862) instance_destroy();
    global.plot= 5.5;
    conversation= 3;
}
if(global.plot == 6 && conversation == 3 && (global.flag[10] == 1 || global.flag[11] == 1 || global.flag[12] == 1 || global.flag[13] == 1)) {
    global.interact= 1;
    alarm[7]= 15;
    conversation= 4;
}
if(conversation == 4) global.interact= 1;
if(conversation == 6 && !instance_exists(obj_dialoguer )) {
    with(tor3) path_start(path_torielwalk4_2 , 3, 0, path_action_stop );
    global.plot= 7;
    conversation= 8;
    global.interact= 0;
    instance_destroy();
}

/* */
/*  */
