function scr_rotategen(argument0, argument1, argument2, argument3, argument4) {
	global.bulletvariable[0]= argument0;
	global.bulletvariable[1]= argument1;
	global.bulletvariable[2]= argument2;
	gen= instance_create(argument3, argument4, obj_rotategen );



}
