draw_set_color(255);
draw_set_font(2);
if(instance_exists(obj_mainchara )) {
    draw_text(20, 60, string_hash_to_newline(obj_mainchara.x));
    draw_text(20, 80, string_hash_to_newline(obj_mainchara.y));
}

/* */
/*  */
