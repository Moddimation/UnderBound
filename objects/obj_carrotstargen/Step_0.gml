if(x > xstart - 40 && keyboard_check(37))
    x-= 4;
if(x < xstart + 40 && keyboard_check(39))
    x+= 4;
if(keyboard_check(38)) y-= 4;
if(keyboard_check(40)) y+= 4;
if(global.mnfight != 2) instance_destroy();


/*  */
