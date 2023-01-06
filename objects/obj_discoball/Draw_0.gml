if(on == 1) {
    if(amt <= 1) amt+= 0.05;
    if(y < 0) y++;
    else  on= 0;
}
if(on == 2) {
    if(amt > 0) amt-= 0.05;
    if(y > ystart) y--;
    else  instance_destroy();
}
if(reverse == 0) siner++;
else  siner--;
draw_set_color(16777215);
draw_set_circle_precision(8);
draw_set_alpha(0.5 * amt);
i= 0;
while(i < 12) {
    draw_set_color(make_color_hsv(i * 20 + siner, 255, 255));
    draw_circle(x + sin((i * 10 + siner) / 20) * 40, y + cos((i * 10 + siner) / 20) * 20 + 140, 3, 0);
    i++;
}
draw_set_alpha(0.4 * amt);
i= 0;
while(i < 24) {
    draw_set_color(make_color_hsv(i * 20 + siner, 255, 255));
    draw_circle(x + sin((i * 10 + siner) / 20) * 80, y + cos((i * 5 + siner) / 20) * 60 + 140, 6, 0);
    i++;
}
draw_set_alpha(1);
draw_sprite(sprite_index, image_index, x, y);

