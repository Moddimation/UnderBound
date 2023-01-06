if(con == 0) {
    obj_asriel_body.image_alpha-= 0.1;
    draw_set_color(0);
    draw_rectangle(xx, yy, xx2, yy2, 0);
}
if(con == 2) {
    draw_set_color(16777215);
    draw_set_alpha(scr);
    draw_rectangle(xx, yy, xx2, yy2, 0);
    scr-= 0.1;
    draw_set_alpha(1);
    if(scr <= 0) instance_destroy();
}
if(xx > -100) xx-= 10;
if(yy > -100) yy-= 10;
if(xx2 < 800) xx2+= 10;
if(yy2 < 800) yy2+= 10;
draw_set_color(16777215);
i= 0;
while(i < 4) {
    draw_rectangle(xx + i, yy + i, xx2 + i, yy2 + i, 1);
    i++;
}

