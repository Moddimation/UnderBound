function scr_marker(argument0, argument1, argument2) {
	thismarker= instance_create(argument0, argument1, obj_npc_marker );
	thismarker.visible= 1;
	thismarker.image_speed= 0;
	thismarker.sprite_index= argument2;
	return thismarker;



}
