draw_set_color(0);
draw_rectangle(x - 12, y - 12, x + 493, y + 52, 0);
if(inactive == 0)
    draw_sprite_part_ext(1864, image_index, 0 - xaround, 0, 60, 5, x, y, 8, 8, 255, 1);
if(inactive == 1)
    draw_sprite_part_ext(1864, image_index, 0 - xaround, 0, 60, 5, x, y, 8, 8, 255, 0.5);
i= 0;
while(i < 60) {
    g= 0;
    repeat(5)  {
        draw_sprite(spr_hotlandcover , 0, x + i * 8, y + g * 8);
        g++;
    }
    i++;
}
draw_set_color(32768);
if(greenbright == 1) draw_set_color(65280);
draw_roundrect(x - 10, y - 10, x + 490, y + 50, 1);
draw_set_color(32768);
if(greenbright == 3) draw_set_color(65280);
draw_roundrect(x - 11, y - 11, x + 491, y + 51, 1);
draw_set_color(32768);
if(greenbright == 5) draw_set_color(65280);
draw_roundrect(x - 12, y - 12, x + 492, y + 52, 1);


/*  */
