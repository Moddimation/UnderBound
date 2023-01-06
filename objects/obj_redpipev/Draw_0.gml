sn++;
draw_sprite(spr_redpipe_top , floor(sn / 4), x, y);
draw_sprite(spr_redpipe_bottom , floor(sn / 4), x, y + 16 + (image_yscale - 1) * 19);
i= 0;
while(i < image_yscale) {
    draw_sprite(spr_redpipe_middle , floor(sn / 4), x, y + 1 + i * 19);
    i++;
}

/* */
/*  */
