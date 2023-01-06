anim+= 3;
i= 0;
while(i < 20) {
    draw_sprite_ext(sprite_index, 0, x, -210 + y + i * 30 + anim, 2, 2, 0, 16777215, 0.2);
    i++;
}
if(anim > 180) anim-= 180;
myview= 0;
if(__view_get( e__VW.XView, 0 ) > 0 && __view_get( e__VW.XView, 0 ) < room_width - __view_get( e__VW.WView, 0 ))
    myview= __view_get( e__VW.XView, 0 );
if(__view_get( e__VW.XView, 0 ) >= room_width - __view_get( e__VW.WView, 0 ))
    myview= room_width - __view_get( e__VW.WView, 0 );
x= xstart - myview * 0.5;

