draw_set_alpha(0.5);
siner= x / 2;
full= sin(siner / 4) * 127 + 127;
ofull= cos(siner / 4) * 127 + 127;
col1= make_color_rgb(full, full, full);
col2= make_color_rgb(ofull, ofull, ofull);
draw_line_color(x + firstx, 0, x + secondx, 159, col1, col2);
draw_set_alpha(1);

