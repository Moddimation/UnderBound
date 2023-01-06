if(edge == 0) edge= 0.1;
if(part == 0) part= 1;
wp= w0 / part;
hp= h0 / part;
lside= __view_get( e__VW.XView, 0 );
rside= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 );
side= 0;
curx= 0;
size= 1;
col++;
color= make_color_hsv(col, 233, 200);
if(col > 254) col= 0;
i= 0;
while(i < part) {
    draw_sprite_part_ext(image, image_index, wp * i + x, 0, wp * i, 999, room_width / 2 + wp * i - 6, 0 - wp * i / 2, i, i, color, image_alpha);
    draw_sprite_part_ext(image, image_index, wp * i + x, 0, wp * i, 999, room_width / 2 - wp * i + 6, 0 - wp * i / 2, -i, i, color, image_alpha);
    i++;
}
x+= rotspeed;
if(x > 800) x-= 800;
if(x < 0) x+= 800;
ftimer++;
if(ftimer > 630 && ftimer < 671) {
    falpha+= 0.025;
    draw_set_alpha(falpha);
    draw_set_color(16777215);
    draw_rectangle(-10, -10, 999, 999, 0);
}
if(ftimer >= 671 && ftimer < 685) {
    image_alpha= 0.5;
    falpha-= 0.1;
    draw_set_alpha(falpha);
    draw_set_color(16777215);
    draw_rectangle(-10, -10, 999, 999, 0);
}
if(ftimer == 671) {
    // obj_asriel_body
    with(569) {
        aligncon= 4;
        specialnormal= 0;
    }
    global.turntimer= -2;
    if(global.mnfight == 2)
        global.msg[0]= "* " + chr(ord("\"")) + "The true final battle" + chr(ord("\"")) + " was&  finally beginning.";
}
draw_set_alpha(1);

