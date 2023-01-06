siner++;
i= 0;
while(i < image_yscale) {
    if(i == 0)
        draw_sprite_ext(spr_hotland_rededge_top , image_index, x, y + i * 40, 1, 1, 0, 16777215, abs(sin(siner / 16)));
    if(i > 0)
        draw_sprite_ext(sprite_index, image_index, x, y + i * 40, 1, 1, 0, 16777215, abs(sin(siner / 16)));
    i++;
}


/*  */
