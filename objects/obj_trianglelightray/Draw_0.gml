siner++;
ac= sin(siner / 60) * 0.12;
s= 0;
while(s < 50) {
    draw_set_color(16777215);
    ac= sin((s + siner) / 35) * 0.15;
    draw_set_alpha(0.5 + ac - s / 40);
    draw_rectangle(x + s * 2, y + s * 2, x + s * 2 + 2, y + 100, 0);
    s++;
}

