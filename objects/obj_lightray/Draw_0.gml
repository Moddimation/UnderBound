siner++;
ac= sin(siner / 60) * 0.12;
s= 0;
while(s < 40) {
    draw_set_color(16777215);
    ac= sin((s + siner) / 35) * 0.17;
    draw_set_alpha(0.7 + ac - s / 40);
    draw_rectangle(x, y + s * 4, x + 30, y + 4 + s * 4, 0);
    s++;
}

