if(global.debug == 1) {
    draw_set_color(65535);
    draw_set_font(2);
    draw_text(obj_mainchara.x, obj_mainchara.y - 30, string_hash_to_newline(alarm[4]));
    draw_text(obj_mainchara.x, obj_mainchara.y - 10, string_hash_to_newline(unbuffer));
}

