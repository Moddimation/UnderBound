y= 0;
if(__view_get( e__VW.XView, 0 ) >= 0)
    x= floor(__view_get( e__VW.XView, 0 ) - __view_get( e__VW.XView, 0 ) * scrollspeed) + 150;
gg= room_width - __view_get( e__VW.WView, 0 );
if(__view_get( e__VW.XView, 0 ) >= gg)
    x= floor(gg - gg * scrollspeed) + 150;

