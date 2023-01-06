global.interact= 1;
if(obj_time.left == 1) x-= 4;
if(obj_time.right == 1) x+= 4;
if(obj_time.up == 1) y-= 4;
if(obj_time.down == 1) y+= 4;
if(bbox_left < xbound) x= xprevious;
if(bbox_right > xbound2) x= xprevious;
if(bbox_bottom > ybound2) y= yprevious;
if(bbox_top < ybound) y= yprevious;
if(buffer == 1 && (keyboard_multicheck_pressed(0) == 1 || keyboard_multicheck_pressed(1) == 1))
    dest= 1;
if(dest == 1) dest_timer++;
if(dest_timer >= 2) instance_destroy();

/* */
/*  */
