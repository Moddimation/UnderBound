function scr_onscreen(argument0, argument1) {
	onscreen= 0;
	if(x > __view_get( e__VW.XView, view_current ) - argument0 && x < __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) + argument0 && y < __view_get( e__VW.HView, view_current ) + __view_get( e__VW.YView, view_current ) + argument1 && y > __view_get( e__VW.YView, view_current ) - argument1)
	    onscreen= 1;



}
