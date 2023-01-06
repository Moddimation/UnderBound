scr_depth(0, 0, 0, 0, 0);
if(!instance_exists(obj_dialoguer ) && conversation == 1) {
    path_start(path_goofyrock , 1, 0, path_action_stop );
    alarm[1]= 11;
    global.interact= 1;
    conversation++;
    if(obj_mainchara.x > x + 15) obj_mainchara.hspeed= 1;
}
if(!instance_exists(obj_dialoguer ) && conversation == 4) {
    path_speed= 1;
    alarm[1]= 11;
    global.interact= 1;
    conversation++;
    if(obj_mainchara.depth > depth) obj_mainchara.vspeed= -1;
}
if(!instance_exists(obj_dialoguer ) && conversation == 7) {
    path_speed= 1;
    alarm[1]= 61;
    global.interact= 1;
    conversation++;
    if(obj_mainchara.depth < depth) obj_mainchara.vspeed= 1;
    alarm[2]= 11;
}
if(!instance_exists(obj_dialoguer ) && conversation == 10.5) {
    // obj_spikes_room
    with(1350) image_index= 0;
    path_speed= 2;
    alarm[1]= 11;
    conversation+= 0.5;
}
if(!instance_exists(obj_dialoguer ) && conversation == 13) {
    path_speed= 1;
    alarm[1]= 21;
    global.interact= 1;
    conversation++;
    if(obj_mainchara.x > x + 15) obj_mainchara.hspeed= 1;
}
if(conversation == 15) x= 280;


/*  */
