function scr_hplat(argument0, argument1, argument2, argument3) {
	bone= instance_create(900, 900, obj_boneplat );
	bone.y= global.idealborder[3] - argument0;
	bone.hspeed= argument1;
	bone.x= 320 - argument2 * argument1;
	bone.len= argument3;



}
