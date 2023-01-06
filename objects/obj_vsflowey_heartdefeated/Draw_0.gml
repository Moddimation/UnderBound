if(drawbb == 1) draw_sprite(bb, 0, 0, 0);
else 
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, 16777215, image_alpha);
if(con == 6) {
    // obj_gameoverbg
    with(180) image_alpha-= 0.05;
    draw_set_color(16777215);
    draw_set_font(10);
    draw_text_transformed(60, y + 480, string_hash_to_newline(str), 3, 3, 0);
    vspeed= -28;
    str+= "#HAHAHAHAHAHAHAHAHAHAHAHAHA";
}

