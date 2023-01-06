i= 0;
while(i < 4) {
    xx= __view_get( e__VW.XView, 0 );
    yy= __view_get( e__VW.YView, 0 );
    draw_sprite_ext(spr_noise , floor(n_index / 2), xx - 10 + i * 200, -10 + yy, 2, 2, 0, 16777215, n_alpha);
    draw_sprite_ext(spr_noise , floor(n_index / 2), xx - 10 + i * 200, 190 + yy, 2, 2, 0, 16777215, n_alpha);
    draw_sprite_ext(spr_noise , floor(n_index / 2), xx - 10 + i * 200, 390 + yy, 2, 2, 0, 16777215, n_alpha);
    i++;
}


/*  */
