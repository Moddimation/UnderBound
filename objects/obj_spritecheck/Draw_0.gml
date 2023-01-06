global.awfultest++;
if(sprite_exists(global.awfultest)) {
    ir= 0;
    while(ir < 40) {
        draw_sprite_ext(floor(global.awfultest), ir, ir * 2 + 1, ir * 2 + 1, 2, 2, 0, 16777215, 1);
        ir++;
    }
} else  ricardo= global.awfultest;
draw_set_font(1);
draw_set_color(16754964);
draw_text(100, 400, string_hash_to_newline(ricardo));
draw_sprite(spr_undynex_face_damage , 0, 200, 200);

/* */
/*  */
