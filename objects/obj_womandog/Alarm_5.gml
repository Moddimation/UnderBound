with(blconwd) instance_destroy();
with(blcon) instance_destroy();
talked= 0;
whatiheard= -1;
global.mnfight= 2;
global.border= 8;
if(instance_exists(obj_mandog ) && obj_mandog.mycommand <= 50)
    global.border= 9;

/* */
/*  */
