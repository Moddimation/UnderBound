draw_self_custom(0, 9999, 0, ystart + 40);
if(yoff > 1) y--;
yoff--;
if(x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) instance_destroy();
if(x < __view_get( e__VW.XView, 0 ) - 10) instance_destroy();
if(y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 30)
    instance_destroy();
if(y < __view_get( e__VW.YView, 0 )) instance_destroy();

