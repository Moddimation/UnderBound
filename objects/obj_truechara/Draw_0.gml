if(flashred == 1) {
    redsiner++;
    draw_set_alpha(abs(sin(redsiner / 2)));
    draw_set_color(255);
    draw_rectangle(-20, -20, 999, 999, 0);
    draw_set_alpha(1);
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, 16777215, 1);
if(choicer == 1) {
    buffer++;
    draw_set_font(1);
    draw_set_color(16777215);
    if(choice == 0) {
        draw_set_color(65535);
        draw_sprite(spr_heart , 0, 75, 357);
    }
    draw_text(100, 350, string_hash_to_newline("ERASE"));
    draw_set_color(16777215);
    if(choice == 1) {
        draw_set_color(65535);
        draw_sprite(spr_heart , 0, 455, 357);
    }
    draw_text(480, 350, string_hash_to_newline("DO NOT"));
    if(keyboard_check_pressed(39) && choice == 0)
        choice= 1;
    if(keyboard_check_pressed(37) && choice == 1)
        choice= 0;
    if(keyboard_multicheck_pressed(0) && buffer >= 12) {
        snd_play(snd_select );
        choicer= 0;
        caster_stop(-3);
        if(choice == 0) con= 19;
        if(choice == 1) con= 29;
        alarm[4]= 30;
    }
}

/* */
/*  */
