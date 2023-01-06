draw_sprite(sprite_index, image_index, x, y);
if(keyboard_check(39)) x+= 4;
if(keyboard_check(38)) y-= 4;
if(keyboard_check(40)) y+= 4;
if(keyboard_check(37)) x-= 4;
if(x > 624) x= 624;
if(x < 0) x= 0;
if(y > 464) y= 464;
if(y < 0) y= 0;


/*  */
