gg= room_width - __view_get( e__VW.WView, 0 );
hh= room_height - __view_get( e__VW.HView, 0 );
if(__view_get( e__VW.XView, 0 ) >= 0 && __view_get( e__VW.XView, 0 ) < gg) {
    x= xhome + floor(__view_get( e__VW.XView, 0 ) - __view_get( e__VW.XView, 0 ) * scrollspeed);
    g= x - xprevious;
    tile_layer_shift(1000100, g, 0);
    tile_layer_shift(1000002, g / 2, 0);
}
if(__view_get( e__VW.YView, 0 ) >= 0 && __view_get( e__VW.YView, 0 ) < hh) {
    y= yhome + floor(__view_get( e__VW.YView, 0 ) - __view_get( e__VW.YView, 0 ) * scrollspeed);
    h= y - yprevious;
    tile_layer_shift(1000100, 0, h);
    tile_layer_shift(1000002, 0, h / 2);
}

