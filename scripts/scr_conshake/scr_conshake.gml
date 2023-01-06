function scr_conshake(argument0) {
	consiner++;
	__view_set( e__VW.XView, 0, conshakex + sin(consiner) * argument0 );
	__view_set( e__VW.YView, 0, conshakey + cos(consiner) * argument0 );



}
