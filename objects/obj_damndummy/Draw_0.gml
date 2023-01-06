if(float == 0)
    draw_sprite(sprite_index, image_index, x, y);
if(float == 1) {
    sinadd= 0;
    if(offground < 10) offground+= 2;
    else  float= 2;
}
if(float == 2) {
    sinadd= 4 * sin(siner / 6);
    siner++;
}
if(float == 1 || float == 2) {
    if(sprite_index != 1128)
        draw_sprite_stretched(1177, image_index, x - sinadd / 2, y + 25 + offground, 20 + sinadd, 15);
    else 
        draw_sprite_stretched(1177, image_index, x - sinadd / 2 - 2, y + 25 + offground, 20 + sinadd, 15);
    draw_sprite_ext(sprite_index, image_index, x, y - offground + sinadd, 1, 1, 0, 16777215, image_alpha);
}

