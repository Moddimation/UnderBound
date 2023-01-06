if(inwater == 0)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);
if(inwater == 1) {
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, sprite_height - 5, x, y + 5, 1, 1, 16777215, image_alpha);
    if(obj_mainchara.image_index == 1 || obj_mainchara.image_index == 3) {
        snd_play(snd_splash );
        mp= 0;
    }
    draw_sprite(spr_waterripple , 0, x, y);
}
if(room == 108)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, 0, image_alpha);


/*  */
