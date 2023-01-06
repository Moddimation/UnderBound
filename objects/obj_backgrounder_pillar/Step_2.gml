if(__view_get( e__VW.XView, 0 ) >= 0)
    x= 200 + floor(__view_get( e__VW.XView, 0 ) - __view_get( e__VW.XView, 0 ) * scrollspeed);
gg= room_width - __view_get( e__VW.WView, 0 );
if(__view_get( e__VW.XView, 0 ) >= gg)
    x= 200 + floor(gg - gg * scrollspeed);

