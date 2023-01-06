if(global.facing == 0) sprite_index= dsprite;
if(global.facing == 1) sprite_index= rsprite;
if(global.facing == 2) sprite_index= usprite;
if(global.facing == 3) sprite_index= lsprite;
crumpet= 0;
strumpet= bbox_top;
trumpet= bbox_left;
if(obj_time.left == 1 && movement == 1) {
    turned= 1;
    if(xprevious == x + 3) x-= 2;
    else  x-= 3;
    if(moving != 1) image_index= 1;
    moving= 1;
    image_speed= 0.2;
    if(obj_time.up == 1 && global.facing == 2) turned= 0;
    if(obj_time.down == 1 && global.facing == 0) turned= 0;
    if(turned == 1) global.facing= 3;
}
if(obj_time.up == 1 && movement == 1) {
    turned= 1;
    y-= 3;
    if(moving != 1) image_index= 1;
    moving= 1;
    image_speed= 0.2;
    if(obj_time.right == 1 && global.facing == 1) turned= 0;
    if(obj_time.left == 1 && global.facing == 3) turned= 0;
    if(turned == 1) global.facing= 2;
}
if(obj_time.right == 1 && movement == 1 && keyboard_check(37) == 0) {
    turned= 1;
    if(xprevious == x - 3) x+= 2;
    else  x+= 3;
    moving= 1;
    image_speed= 0.2;
    if(moving != 1) image_index= 1;
    if(obj_time.up == 1 && global.facing == 2) turned= 0;
    if(obj_time.down == 1 && global.facing == 0) turned= 0;
    if(turned == 1) global.facing= 1;
}
if(obj_time.down == 1 && movement == 1 && keyboard_check(38) == 0) {
    turned= 1;
    y+= 3;
    if(moving != 1) image_index= 1;
    moving= 1;
    image_speed= 0.2;
    if(obj_time.right == 1 && global.facing == 1) turned= 0;
    if(obj_time.left == 1 && global.facing == 3) turned= 0;
    if(turned == 1) global.facing= 0;
}
if(keyboard_multicheck_pressed(0)) event_user(0);
if(x < 0) x= 0;
if(x > room_width - sprite_width)
    x= room_width - sprite_width;
if(y < 0) y= 0;
if(y > room_height - sprite_height)
    y= room_height - sprite_height;
depth= 50000 - y * 10;


/*  */
