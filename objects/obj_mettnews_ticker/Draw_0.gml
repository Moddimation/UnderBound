draw_set_color(0);
draw_rectangle(x, y - 1 + voff, x + 330, y + 242 + voff, 0);
if(write == 1) {
    draw_set_color(65535);
    tx++;
    if(doom == 1) tx+= 4;
    draw_set_font(2);
    if(doom == 0)
        draw_text(x + 320 - tx, y + 10 + voff, string_hash_to_newline(stringer));
    if(doom == 1)
        draw_text_transformed(x + 320 - tx, y + 10 + voff, string_hash_to_newline(stringer), 2, 1, 0);
}
draw_sprite(spr_tickerlogo , 0, x, y);
if(doom == 1) {
    doomtimer++;
    if(doomtimer > 150) event_user(1);
}
if(voff > 0) voff-= 4;
if(voff <= 0) voff= 0;
if(y > room_height) instance_destroy();

/* */
/*  */
