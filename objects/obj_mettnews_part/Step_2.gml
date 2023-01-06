if(!instance_exists(obj_shaker ) && on == 1) {
    __view_set( e__VW.XView, 0, round(obj_mainchara.x - __view_get( e__VW.WView, 0 ) / 2 + 10) );
    __view_set( e__VW.YView, 0, round(obj_mainchara.y - __view_get( e__VW.HView, 0 ) / 2 + 10) );
    if(__view_get( e__VW.YView, 0 ) <= 0) __view_set( e__VW.YView, 0, 0 );
}
if(on == 1) {
    x= __view_get( e__VW.XView, 0 ) + stayx;
    y= __view_get( e__VW.YView, 0 ) + stayy;
    if(__view_get( e__VW.YView, 0 ) <= 0) __view_set( e__VW.YView, 0, 0 );
}
if(on == 0) {
    gravity= 0.4;
    image_angle+= ang;
    if(y > room_height) instance_destroy();
}
if(__view_get( e__VW.YView, 0 ) <= 0) __view_set( e__VW.YView, 0, 0 );

/* */
/*  */
