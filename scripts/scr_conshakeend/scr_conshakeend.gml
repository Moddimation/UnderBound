function scr_conshakeend() {
	__view_set( e__VW.XView, 0, conshakex );
	__view_set( e__VW.YView, 0, conshakey );
	if(instance_exists(obj_mainchara )) obj_mainchara.cutscene= 0;



}
