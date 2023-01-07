function scr_shake(argument0, argument1, argument2) {
	instance_create(0, 0, obj_shaker );
	obj_shaker.hshake= argument0;
	obj_shaker.vshake= argument1;
	obj_shaker.shakespeed= argument2;



}
