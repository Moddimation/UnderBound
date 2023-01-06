siner++;
alp= 0;
go= abs(sin(siner / 30));
draw_set_color(255);
cw= 0;
w= 0;
i= 0;
while(i < 10) {
    alp= (go - i / 10) / 1.2;
    if(xmode == 1) alp/= 1.8;
    if(alp < 0) alp= 0;
    draw_set_alpha(alp);
    w= (10 - i) * go * 1.4;
    if(xmode == 1) w/= 1.2;
    draw_rectangle(__view_get( e__VW.XView, 0 ) - 10, room_height - cw, __view_get( e__VW.XView, 0 ) + 330, room_height - cw - w + 1, 0);
    cw+= w;
    i++;
}
draw_set_alpha(1);

