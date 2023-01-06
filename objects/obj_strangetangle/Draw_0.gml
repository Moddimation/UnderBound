if(active == 1) {
    draw_set_alpha(image_alpha);
    oo= 0;
    i= 0;
    while(i < 30) {
        if(oo == 0) draw_set_color(16777215);
        draw_rectangle(x1[i], y1[i], x1[i] + 16, y1[i] + 16, 0);
        if(oo == 0) oo= 1;
        else  oo= 0;
        i++;
    }
    draw_set_alpha(1);
}
siner++;
w+= sin(siner / 5) * 2;
h+= sin(siner / 5) * 2;

