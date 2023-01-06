draw_set_color(16777215);
draw_rectangle(x - 2, y - 2, x + sprite_width * 4 + 2, y + sprite_width * 4 + 2, 1);
draw_sprite_ext(sprite_index, 0, x + sprite_width * 2, y + sprite_height * 2, 3.5 + random(0.5), 3.5 + random(0.5), 0, 16777215, 1);
draw_set_font(1);
draw_text(x - 80, y + 40, string_hash_to_newline("CRIME"));

