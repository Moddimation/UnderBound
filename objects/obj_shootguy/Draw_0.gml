draw_sprite(sprite_index, image_index, x, y);
if(active == 1) {
    i= 0;
    while(i < ammo) {
        draw_sprite(spr_shotguy_indicator , 0, x + 20 + i * 10, y - 2);
        i++;
    }
}
draw_set_color(16777215);
if(win > 0) draw_set_color(65280);
draw_rectangle(gridl - 2, gridu - 2, gridr + 1, gridd + 1, 1);
if(wintimer >= 50)
    draw_sprite(spr_text_congratulations , 0, gridr / 2 + gridl / 2, gridu - 15);
if(restart > 0) {
    if(rstype < 99)
        draw_sprite(spr_text_restart , 0, gridr / 2 + gridl / 2, gridu - 15);
    else  draw_sprite(spr_text_restaurant , 0, gridr / 2 + gridl / 2, gridu - 15);
}
if(active == 0) {
    draw_set_color(0);
    draw_set_alpha(0.4);
    draw_rectangle(-10, -10, 400, 160, 0);
    draw_set_alpha(1);
}

/* */
/*  */
