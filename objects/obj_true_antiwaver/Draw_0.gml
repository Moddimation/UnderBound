siner++;
i= 0;
while(i < 8) {
    draw_set_alpha((sin(siner / 12) * 0.5 + 0.5) * (1 - i / 8));
    draw_set_color(0);
    draw_rectangle(x, y + 16 - i * 5, x + 20 * image_xscale, y + 20 - i * 5, 0);
    draw_set_alpha(1);
    i++;
}

