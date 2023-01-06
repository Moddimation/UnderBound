d+= 0.05;
if(keyboard_check(39)) h++;
g= make_color_hsv(h, 100 + sin(d) * 100, 255);
__background_set_colour( g );


/*  */
