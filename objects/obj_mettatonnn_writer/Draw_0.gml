maxed= obj_questionasker.mettamt;
maxeda= maxed;
if(maxeda > 13) maxeda= 13;
maxedb= maxed - 13;
if(maxedb > 20) maxedb= 20;
maxedc= maxed - 32;
draw_set_font(1);
i= 0;
while(i < maxeda) {
    draw_set_color(16777215);
    draw_text(431 + random(1) + i * 14, 82 + random(1), string_hash_to_newline("n"));
    i++;
}
if(maxedb > 0) {
    i= 0;
    while(i < maxedb) {
        draw_set_color(16777215);
        draw_text_transformed(room_width - 6 + random(1), 116 + i * 16, string_hash_to_newline("n"), 1, 1, 270);
        i++;
    }
}
if(maxedc > 0) {
    i= 0;
    while(i < maxedc) {
        draw_set_color(16777215);
        draw_text_transformed(room_width - 40 + random(1) - i * 16, room_height - 20, string_hash_to_newline("n"), 1, 1, 180);
        i++;
    }
}

