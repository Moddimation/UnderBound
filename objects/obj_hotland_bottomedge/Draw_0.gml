siner++;
if(image_xscale >= 0) {
    i= 0;
    while(i < image_xscale) {
        if(i == 0) draw_sprite(spr_hotland_leftedge , siner / 2, x, y);
        else  {
            if(i == image_xscale - 1)
                draw_sprite(spr_hotland_rightedge , siner / 2, x + i * 20, y);
            else  draw_sprite(spr_hotland_bottomedge , siner / 2, x + i * 20, y);
        }
        i++;
    }
    draw_set_color(0);
    if(room == 171)
        draw_sprite_ext(spr_singleblackpixel , 0, x, y + 19, 20 * image_xscale, 1, 0, 16777215, 1);
} else  {
    draw_sprite(spr_hotland_rightedge , siner / 2, x - 20, y);
    i= 1;
    while(i < -image_xscale) {
        draw_sprite(spr_hotland_bottomedge , siner / 2, x - i * 20 - 20, y);
        i++;
    }
}


/*  */
