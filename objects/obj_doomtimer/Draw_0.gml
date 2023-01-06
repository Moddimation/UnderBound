dx= floor(doomtime / 30);
dx2= floor(doomtime / 180);
if(global.inbattle == 1) {
    draw_set_font(1);
    draw_set_color(65535);
    if(dx >= 120) truezero= 1;
    if(truezero == 0) draw_text(500, 20, string_hash_to_newline("TIME:" + string(120 - dx)));
    else  {
        draw_set_color(255);
        draw_text(500, 20, string_hash_to_newline("TIME:0"));
    }
}

