draw_sprite_ext(sprite_index, floor(image_index), x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);
if(con == 11 || con == 12) {
    whited+= 0.01;
    if(whited >= 1 && con == 11) {
        con= 12;
        __view_set( e__VW.XView, 0, 0 );
        __view_set( e__VW.YView, 0, 0 );
    }
    draw_set_alpha(whited);
    draw_set_color(16777215);
    draw_rectangle(-10, -10, 999, 999, 0);
    draw_set_alpha(1);
    if(whited >= 2) {
        instance_create(0, 0, obj_barriercut );
        con= 13;
        // obj_mhd
        with(1683) instance_destroy();
        alarm[5]= -1;
    }
}


/*  */
