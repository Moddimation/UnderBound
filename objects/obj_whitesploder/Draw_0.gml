splode++;
draw_set_color(16777215);
i= 0;
while(i < 16) {
    alp= splode / 12 - 0.06 * i;
    if(alp < 0) alp= 0;
    if(alp > 1) alp= 1;
    draw_set_alpha(alp);
    draw_rectangle(0, room_height / 2 - 8 * (i + 1), room_width, room_height / 2 - 8 * i, 0);
    draw_rectangle(0, room_height / 2 + 8 * (i + 1), room_width, room_height / 2 + 8 * i, 0);
    i++;
}
draw_set_alpha(1);

