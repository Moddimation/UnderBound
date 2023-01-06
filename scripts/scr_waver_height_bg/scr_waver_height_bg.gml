function scr_waver_height_bg(argument0, argument1) {
	b= argument0;
	c= argument1;
	a++;
	i= __background_get( e__BG.Height, 0 );
	while(i > 0) {
	    a++;
	    if(c > 0) c-= 0.1;
	    if(c < 0) c-= 0.1;
	    draw_background_part_ext(__background_get( e__BG.Index, 0 ), 0, i, __background_get( e__BG.Width, 0 ), 1, x + sin(a / b) * c, y + i, 1, 1, 16777215, image_alpha);
	    i--;
	}



}
