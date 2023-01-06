if(image_yscale > 1) {
    i= 0;
    while(i < image_yscale) {
        draw_sprite_ext(sprite_index, image_index, x, y + i * 20, 1, 1, 0, 16777215, image_alpha);
        if(image_xscale > 1) {
            j= 0;
            while(j < image_xscale) {
                draw_sprite_ext(sprite_index, image_index, x + j * 20, y + i * 20, 1, 1, 0, 16777215, image_alpha);
                j++;
            }
        }
        i++;
    }
}
if(image_xscale > 1 && image_yscale == 1) {
    j= 0;
    while(j < image_xscale) {
        draw_sprite_ext(sprite_index, image_index, x + j * 20, y + i * 20, 1, 1, 0, 16777215, image_alpha);
        j++;
    }
}
if(image_xscale == 1 && image_yscale == 1)
    draw_sprite(sprite_index, image_index, x, y);

