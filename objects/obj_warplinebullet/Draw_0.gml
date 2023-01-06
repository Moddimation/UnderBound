draw_set_color(0);
rot+= rotspeed;
xpart= lengthdir_x(r, rot);
ypart= lengthdir_y(r, rot);
draw_set_color(0);
draw_line_width(x + xpart * 1.1, y + ypart * 1.1, x - xpart * 1.1, y - ypart * 1.1, 8);
draw_set_color(16777215);
draw_line_width(x + xpart, y + ypart, x - xpart, y - ypart, 6);
if(collision_line(x + xpart * 0.8, y + ypart * 0.8, x - xpart * 0.8, y - ypart * 0.8, 743, 0, 1))
    event_user(1);
if(y > 800 || y < -200) instance_destroy();
if(global.turntimer < 0) instance_destroy();

