if(global.debug == 1) {
    draw_set_color(255);
    draw_text(0, 0, string_hash_to_newline(turns));
    if(keyboard_check_pressed(83)) turns++;
    if(keyboard_check_pressed(65)) turns--;
}


/*  */
