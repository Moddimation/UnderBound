if(keyboard_check(37) == 0 && keyboard_check(39) == 0 && keyboard_check(40) == 0 && keyboard_check(38) == 0)
    moving= 0;
if(global.interact > 0) {
    moving= 0;
    movement= 0;
} else  movement= 1;
if(xprevious != x || yprevious != y) moving= 1;
if(moving == 0) {
    image_speed= 0;
    image_index= 0;
}
if(cutscene == 0 && !instance_exists(obj_vsflowey_shaker )) {
    __view_set( e__VW.XView, 0, round(x - __view_get( e__VW.WView, 0 ) / 2 + 10) );
    __view_set( e__VW.YView, 0, round(y - __view_get( e__VW.HView, 0 ) / 2 + 10) );
}


/*  */
