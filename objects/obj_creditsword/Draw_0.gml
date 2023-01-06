if(active == 1) {
    if(fader == 0 && alpha < 1) alpha+= 0.05;
    draw_set_alpha(alpha);
    draw_set_color(16777215);
    draw_set_font(2);
    draw_text_transformed(x, y, string_hash_to_newline(text), size * 2, size * 2, 0);
    draw_set_color(65535);
    draw_text_transformed(x, y + height + 4 * size, string_hash_to_newline(text2), size, size, 0);
    draw_set_alpha(1);
    if(fader == 1) alpha-= 0.05;
    if(alpha < 0) instance_destroy();
}

