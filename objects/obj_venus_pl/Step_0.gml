if(con == 1) con= 2;
if(con == 2) {
    image_speed= 0.25;
    con= 1.5;
    alarm[4]= 8;
    if(image_index >= 2) con= 3;
}
if(con == 2.5) {
    caster_loop(137, 0.8, 0.8);
    alarm[2]= 1;
    con= 4;
}
if(con == 5 && !instance_exists(obj_floweyfly )) {
    caster_stop(137);
    alarm[4]= 8;
    con= 6;
}
if(con == 7) {
    image_index= 0;
    image_speed= 0;
    instance_destroy();
}

/* */
/*  */
