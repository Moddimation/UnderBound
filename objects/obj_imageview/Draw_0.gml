draw_sprite(sprite_index, image_index, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
if(buffer == 1 && keyboard_multicheck_pressed(1) == 1)
    buffer= 2;
if(buffer == 1 && keyboard_multicheck_pressed(0) == 1)
    buffer= 2;
global.interact= 1;
if(buffer == 2) {
    global.interact= 0;
    instance_destroy();
}


/*  */
