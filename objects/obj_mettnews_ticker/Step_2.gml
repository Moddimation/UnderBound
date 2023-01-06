if(!instance_exists(obj_shaker ) && on == 1) {
    __view_set( e__VW.XView, 0, round(obj_mainchara.x - __view_get( e__VW.WView, 0 ) / 2 + 10) );
    __view_set( e__VW.YView, 0, round(obj_mainchara.y - __view_get( e__VW.HView, 0 ) / 2 + 10) );
}
if(on == 1) {
    x= __view_get( e__VW.XView, 0 ) + stayx;
    if(x >= room_width - __view_get( e__VW.WView, 0 ))
        x= room_width - __view_get( e__VW.WView, 0 );
    y= __view_get( e__VW.YView, 0 ) + stayy;
    if(y <= 200) y= 200;
    if(__view_get( e__VW.YView, 0 ) <= 0) __view_set( e__VW.YView, 0, 0 );
}
if(__view_get( e__VW.YView, 0 ) <= 0) __view_set( e__VW.YView, 0, 0 );

/* */
/*  */
