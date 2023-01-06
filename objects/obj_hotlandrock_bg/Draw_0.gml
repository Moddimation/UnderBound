siner++;
draw_set_color(0);
maximum= room_height / 40;
draw_set_alpha(0.3 + sin(siner / 15) * 0.1);
draw_rectangle(-10, -10, room_width + 10, room_height + 10, 0);
i= 0;
while(i < maximum) {
    draw_set_alpha(i / maximum);
    draw_rectangle(-10, i * 40, room_width + 10, i * 40 + 40, 0);
    i++;
}
draw_set_alpha(1);

