function scr_musfaderesume(argument0) {
	if(instance_exists(obj_musfadepause )) {
	    obj_musfadepause.resume= 1;
	    if(argument0 == 0) argument0= 0.05;
	    obj_musfadepause.fadespeed= argument0;
	}



}
