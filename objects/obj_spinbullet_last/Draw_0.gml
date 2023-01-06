draw_sprite(sprite_index, image_index, x, y);
if(secrettrick == 1) {
    depth= -1;
    wht+= 0.01;
    draw_set_alpha(wht);
    draw_set_color(16777215);
    draw_rectangle(-10, -10, 999, 999, 0);
    draw_set_alpha(1);
}

