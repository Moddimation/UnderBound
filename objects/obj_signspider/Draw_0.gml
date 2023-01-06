draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, 16777215, 1);
if(con == 1) {
    image_index= 1;
    image_speed= 0;
    draw_sprite_ext(spr_tinyspider_sign , signimg, x, y, 2, 2, 0, 16777215, 1);
    if(signimg >= 4) {
        draw_set_color(16777215);
        draw_set_font(2);
        draw_text(x - 20, y - 100, string_hash_to_newline("Up Next"));
        if(signno == 0 || signno == 1 || signno == 6 || signno == 10)
            draw_sprite(spr_spiderbullet1 , 0, x, y - 70);
        if(signno == 8) draw_sprite(spr_croissantl , 0, x, y - 70);
        if(signno == 12) {
            draw_sprite(spr_croissantl , 0, x - 15, y - 70);
            draw_sprite(spr_croissantl , 0, x + 5, y - 70);
        }
        if(signno == 2 || signno == 13) {
            draw_sprite(spr_spiderbullet1 , 0, x - 15, y - 70);
            draw_sprite(spr_spiderbullet1 , 0, x + 15, y - 70);
        }
        if(signno == 11) {
            draw_sprite(spr_donutbullet , 0, x - 15, y - 70);
            draw_sprite(spr_donutbullet , 0, x + 15, y - 70);
        }
        if(signno == 3 || signno == 5 || signno == 7) {
            draw_sprite(spr_spiderbullet1 , 0, x - 15, y - 70);
            draw_sprite(spr_donutbullet , 0, x + 5, y - 70);
        }
        if(signno == 4 || signno == 9 || signno == 15)
            draw_sprite(spr_cupcakebullet , 0, x, y - 70);
        if(signno == 14) {
            draw_sprite(spr_spiderbullet1 , 0, x - 25, y - 70);
            draw_sprite(spr_donutbullet , 0, x, y - 70);
            draw_sprite(spr_croissantl , 0, x + 25, y - 70);
        }
    }
    if(signimg < 4) signimg+= 0.5;
}
buffer--;
if((global.myfight > 0 || global.mnfight > 0) && con < 2 && buffer < 1)
    con= 2;
if(con == 2) {
    signimg-= 0.5;
    draw_sprite_ext(spr_tinyspider_sign , signimg, x, y, 2, 2, 0, 16777215, 1);
    if(signimg < 1) con= 3;
}
if(con == 3) {
    image_speed= 0.5;
    if(hspeed < 10) hspeed++;
    if(x > 650) instance_destroy();
}

/* */
/*  */
