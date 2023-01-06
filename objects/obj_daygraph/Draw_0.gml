draw_sprite_ext(sprite_index, image_index, x + 24, y + 24, 2, 2, rot, 16777215, 1);
draw_set_font(1);
draw_set_color(16777215);
draw_text(x + 60, y + 10, string_hash_to_newline(day));
rot+= 0.34;

