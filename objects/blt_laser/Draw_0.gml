draw_set_color(255);
twdsXspeed+= owngravity * gravityincrement;
if(collision_line(x, y, twdsX, twdsY, 743, 0, 1))
    draw_set_color(32768);
if(collision_line(x, y, twdsX + twdsXspeed, twdsY + twdsYspeed, 743, 0, 1))
    draw_set_color(32768);
draw_triangle(x, y, twdsX, twdsY, twdsX + twdsXspeed, twdsY + twdsYspeed, 0);
twdsX+= twdsXspeed;
twdsY+= twdsYspeed;

