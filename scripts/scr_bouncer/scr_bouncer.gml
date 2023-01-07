function scr_bouncer(argument0, argument1, argument2) {
	bouncer= instance_create(x, y, obj_bouncer );
	bouncer.myobject= argument0;
	bouncer.bounceamt= argument1;
	bouncer.grav= argument2;



}
