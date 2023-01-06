ac= 1.5 + sin(siner / 20);
siner++;
draw_set_alpha(1);
i= 0;
while(i < 10) {
    draw_set_alpha((0.8 - i / 16) * amt);
    draw_set_color(8388736);
    draw_rectangle(-10, room_height - i * i * ac, room_width + 10, room_height - (i + 1) * (i + 1) * ac, 0);
    i++;
}
draw_set_alpha(1);
if(fade == 1) {
    amt-= 0.03;
    if(amt < 0.05) instance_destroy();
}

