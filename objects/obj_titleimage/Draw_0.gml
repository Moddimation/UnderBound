draw_sprite(sprite_index, 0, x, y);
if(d == 1) {
    draw_set_color(8421504);
    draw_set_font(3);
    draw_text(120, 180, string_hash_to_newline("[PRESS Z OR ENTER]"));
}
if(keyboard_multicheck_pressed(0)) {
    caster_free(intronoise);
    room_goto_next();
}
if(ballamount == 3 && keyboard_check_pressed(76)) {
    ballamount= 4;
    snd_play(snd_ballchime );
}
if(ballamount == 2 && keyboard_check_pressed(76))
    ballamount= 3;
if(ballamount == 1 && keyboard_check_pressed(65))
    ballamount= 2;
if(ballamount == 0 && keyboard_check_pressed(66))
    ballamount= 1;
if(keyboard_multicheck_pressed(1)) {
    special_x++;
    if(special_x >= 5) {
        alarm[0]= 1800;
        alarm[1]= -1;
        d= 0;
        drawpw= 1;
    }
}
if(drawpw == 1) {
    d= 0;
    alarm[0]= 999;
    draw_set_color(16777215);
    draw_set_font(2);
    if(pw1 == 0 && pw2 == 0 && pw3 == 0)
        draw_text(20, 180, string_hash_to_newline("No Information"));
    if(pw1 == 1) draw_text(20, 170, string_hash_to_newline("Activity Level A"));
    if(pw2 == 1) draw_text(20, 190, string_hash_to_newline("Activity Level B"));
    if(pw3 == 1) draw_text(20, 210, string_hash_to_newline("Activity Level C"));
}

/* */
/*  */
