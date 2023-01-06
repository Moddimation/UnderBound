i= 0;
while(i < 9) {
    draw_sprite(sprite_index, image_index, x + 230 * i, 0);
    if(i == 5)
        draw_sprite(sprite_index, image_index, x + 230 * i + 110, 0);
    i++;
}

