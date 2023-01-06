if(conversation == 1 && !instance_exists(obj_dialoguer )) {
    conversation= 2;
    // obj_toroverworld3
    with(861) x-= 10;
    obj_toroverworld3.rsprite= 1114;
    obj_toroverworld3.usprite= 1117;
    obj_toroverworld3.sprite_index= spr_toriel_handhold_r ;
    obj_mainchara.visible= 0;
    // obj_toroverworld3
    with(861) path_start(path_torielwalk20_2 , 2, 0, path_action_stop );
    // obj_mainchara
    with(1570) path_start(path_torielwalk20_2 , 2, 0, path_action_stop );
}
if(instance_exists(obj_toroverworld3 ) && conversation == 2 && obj_toroverworld3.path_position == 1) {
    obj_toroverworld3.usprite= 1112;
    obj_toroverworld3.rsprite= 1107;
    obj_mainchara.x+= 33;
    alarm[2]= 1;
    obj_toroverworld3.y--;
    obj_toroverworld3.facing= 2;
    obj_toroverworld3.direction= 90;
    global.facing= 2;
    obj_mainchara.y-= 3;
    global.msg[0]= "* A room of your own.&* I hope you like it!/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 3;
}
if(conversation == 3 && !instance_exists(obj_dialoguer )) {
    alarm[5]= 90;
    // obj_toroverworld3
    with(861) visible= 0;
    ruff= scr_marker(obj_toroverworld3.x, obj_toroverworld3.y, 1101);
    ruff.image_speed= 0.1;
    obj_mainchara.visible= 0;
    alarm[1]= 10;
    conversation= 4;
}
if(conversation == 5 && !instance_exists(obj_dialoguer )) {
    obj_toroverworld3.usprite= 1112;
    global.interact= 0;
    conversation= 2;
    // obj_toroverworld3
    with(861) path_start(path_torielwalk20 , 6, 0, path_action_stop );
    global.plot= 19;
    instance_destroy();
}

/* */
/*  */
