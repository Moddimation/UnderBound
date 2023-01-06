draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, 16777215, image_alpha);
draw_set_color(32768);
draw_text(0, 0, string_hash_to_newline(myscore));
if(myscore > 400) {
    draw_set_color(65535);
    draw_text(0, 100, string_hash_to_newline("critical  hit!"));
}
if(myscore > 430) {
    draw_set_color(255);
    draw_text(200, 200, string_hash_to_newline("CRITICAL HIT!!!"));
}

