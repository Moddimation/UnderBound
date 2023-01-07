function keyboard_multicheck_pressed(argument0) {
	if((argument0 == 0 || argument0 == 13) && (keyboard_check_pressed(ENTER ) || keyboard_check_pressed(90)))
	    return 1;
	else  {
	    if((argument0 == 1 || argument0 == 16) && (keyboard_check_pressed(SHIFT ) || keyboard_check_pressed(88)))
	        return 1;
	    else  {
	        if((argument0 == 2 || argument0 == 17) && (keyboard_check_pressed(CTRL ) || keyboard_check_pressed(67)))
	            return 1;
	        else  exit;
	    }
	}



}
