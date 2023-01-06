if(move == 1) {
    if(keyboard_check(37) && x > 0 && (obj_flowey_master.darkmode != 0 || x > 108))
        x-= 4;
    if(keyboard_check(39) && x < room_width - sprite_width && (obj_flowey_master.darkmode != 0 || x < 512))
        x+= 4;
    if(keyboard_check(38) && y > 0 && (obj_flowey_master.darkmode != 0 || y > 268))
        y-= 4;
    if(keyboard_check(40) && y < room_height - sprite_height)
        y+= 4;
}
global.my_inv--;
if(global.my_inv > 0) image_speed= 0.5;
else  {
    image_index= 0;
    image_speed= 0;
}
if(global.my_hp <= 0 && special == 0)
    instance_create(x, y, obj_vsflowey_heartdefeated );

/* */
/*  */
