if(image_index >= 3 && image_index <= 8 && collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 743, 0, 1))
    event_user(6);
if(global.turntimer <= 0) {
    global.turntimer= -1;
    global.mnfight= 3;
    instance_destroy();
}

