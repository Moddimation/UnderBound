draw_set_color(0);
if(dmg < 20 || dmg == 11 || dmg == 21 || dmg == 31 || dmg == 41 || dmg == 51 || dmg == 61 || dmg == 71 || dmg == 81 || dmg == 91)
    draw_rectangle(x, y - 24, x + 48, y, 0);
else  draw_rectangle(x, y - 24, x + 64, y, 0);
draw_set_font(6);
if(i == 0 || i == 1) draw_set_color(255);
if(dmg > 0) {
    draw_text(x, y - 24, string_hash_to_newline(dmg));
    draw_set_color(4210752);
    draw_rectangle(x, ystart + 8, x + global.monstermaxhp[global.mytarget] * stretchfactor, ystart + 20, 0);
    draw_set_color(65280);
    draw_rectangle(x, ystart + 8, x + apparenthp * stretchfactor, ystart + 20, 0);
} else  {
    draw_set_color(16777215);
    draw_text(x, y - 24, string_hash_to_newline("MISS"));
}
if(y > ystart) {
    y= ystart;
    vspeed= 0;
    gravity= 0;
}

