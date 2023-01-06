if(instance_exists(obj_time )) {
    if(obj_time.quit > 0)
        draw_sprite_ext(sprite_index, image_index, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), 1, 1, 0, 16777215, image_alpha);
    else  instance_destroy();
} else  instance_destroy();
if(image_alpha < 0.9) image_alpha+= 0.1;

/* */
/*  */
