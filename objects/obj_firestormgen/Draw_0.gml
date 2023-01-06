if(dr < 0.5) dr+= 0.1;
if(global.turntimer < 6) dr-= 0.2;
draw_set_alpha(dr);
draw_set_color(0);
draw_rectangle(-10, -10, 999, 999, 0);
draw_set_alpha(1);
if(global.turntimer <= 0) instance_destroy();

