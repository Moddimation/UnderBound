x= __view_get( e__VW.XView, 0 ) + 210;
y= __view_get( e__VW.YView, 0 ) - 40;
vspeed= 8;
friction= 0.3;
con= 0;
if(instance_exists(obj_multitileevent ))
    time= obj_multitileevent.cooltimer;
else  time= 900;
finished= 0;
orange= -1;

/* */
/*  */
