if(__view_get( e__VW.XView, 0 ) >= 0)
    __background_set( e__BG.X, 0, floor(__view_get( e__VW.XView, 0 ) - __view_get( e__VW.XView, 0 ) * scrollspeed) );
gg= room_width - __view_get( e__VW.WView, 0 );
if(__view_get( e__VW.XView, 0 ) >= gg)
    __background_set( e__BG.X, 0, floor(gg - gg * scrollspeed) );

