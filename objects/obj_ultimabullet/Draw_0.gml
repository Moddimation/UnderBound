hh= (obj_ultimatarget.x - x) / 20;
if(hh > 1) hh= 1;
if(hh < -1) hh= -1;
if(side == 0 && hh < 0) hh= 0;
if(side == 1 && hh > 0) hh= 0;
vv= (obj_ultimatarget.y - y) / 20;
if(vv > 1) vv= 1;
if(vv < -1) vv= -1;
if(vv > 0) vv= 0;
hspeed+= hh;
vspeed+= vv;
if(speed > 22) speed= 22;
image_angle= direction;
xxxx= xxx;
yyyy= yyy;
xxx= xx;
yyy= yy;
xx= xprevious;
yy= yprevious;
i= 18;
while(i > 0) {
    xprev[i]= xprev[i - 1];
    yprev[i]= yprev[i - 1];
    i--;
}
xprev[0]= x;
yprev[0]= y;
huer+= 20;
image_blend= make_color_hsv(huer, 60, 255);
draw_set_color(image_blend);
draw_line_width(xprev[10], yprev[10], xprev[12], yprev[12], 2);
draw_line_width(xprev[8], yprev[8], xprev[10], yprev[10], 4);
draw_line_width(xprev[4], yprev[4], xprev[8], yprev[8], 6);
draw_line_width(x, y, xprev[4], yprev[4], 8);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, direction, image_blend, image_alpha);

